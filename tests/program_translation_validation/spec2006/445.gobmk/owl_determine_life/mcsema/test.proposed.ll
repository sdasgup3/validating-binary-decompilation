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

declare %struct.Memory* @sub_445190.clear_owl_move_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_441720.owl_find_lunches(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43ea00.owl_make_domains(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43e310.find_half_and_false_eyes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4393a0.set_eyevalue(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43b2b0.compute_eyes_pessimistic(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43b1a0.eye_move_urgency(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43b010.max_eyes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43baf0.min_eyes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43bb10.eyevalue_to_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4453f0.modify_stupid_eye_vital_point(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_444230.owl_add_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_443e90.liberty_of_goal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f200.is_ko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_46bc30.safe_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_445640.sniff_lunch(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4137f0.countstones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_445aa0.improve_lunch_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43cc10.add_eyevalues(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_445bf0.improve_lunch_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43cbf0.max_eye_threat(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x7ae438_type = type <{ [4 x i8] }>
@G_0x7ae438= global %G_0x7ae438_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xa0e41__rip__type = type <{ [4 x i8] }>
@G_0xa0e41__rip_= global %G_0xa0e41__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0f24_type = type <{ [4 x i8] }>
@G_0xab0f24= global %G_0xab0f24_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0f28_type = type <{ [1 x i8] }>
@G_0xab0f28= global %G_0xab0f28_type <{ [1 x i8] c"\00" }>
%G__0x57dd2e_type = type <{ [8 x i8] }>
@G__0x57dd2e= global %G__0x57dd2e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57e1e9_type = type <{ [8 x i8] }>
@G__0x57e1e9= global %G__0x57e1e9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57e1f4_type = type <{ [8 x i8] }>
@G__0x57e1f4= global %G__0x57e1f4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57e207_type = type <{ [8 x i8] }>
@G__0x57e207= global %G__0x57e207_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57e247_type = type <{ [8 x i8] }>
@G__0x57e247= global %G__0x57e247_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57e273_type = type <{ [8 x i8] }>
@G__0x57e273= global %G__0x57e273_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57e28d_type = type <{ [8 x i8] }>
@G__0x57e28d= global %G__0x57e28d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57e2b3_type = type <{ [8 x i8] }>
@G__0x57e2b3= global %G__0x57e2b3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57e2be_type = type <{ [8 x i8] }>
@G__0x57e2be= global %G__0x57e2be_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57e2e3_type = type <{ [8 x i8] }>
@G__0x57e2e3= global %G__0x57e2e3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58898d_type = type <{ [8 x i8] }>
@G__0x58898d= global %G__0x58898d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @owl_determine_life(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .owl_determine_life:	 RIP: 441ef0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 441ef0	 Bytes: 1
  %loadMem_441ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ef0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ef0)
  store %struct.Memory* %call_441ef0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 441ef1	 Bytes: 3
  %loadMem_441ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ef1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ef1)
  store %struct.Memory* %call_441ef1, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 441ef4	 Bytes: 2
  %loadMem_441ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ef4 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ef4)
  store %struct.Memory* %call_441ef4, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 441ef6	 Bytes: 2
  %loadMem_441ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ef6 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ef6)
  store %struct.Memory* %call_441ef6, %struct.Memory** %MEMORY

  ; Code: pushq %r13	 RIP: 441ef8	 Bytes: 2
  %loadMem_441ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ef8 = call %struct.Memory* @routine_pushq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ef8)
  store %struct.Memory* %call_441ef8, %struct.Memory** %MEMORY

  ; Code: pushq %r12	 RIP: 441efa	 Bytes: 2
  %loadMem_441efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441efa = call %struct.Memory* @routine_pushq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441efa)
  store %struct.Memory* %call_441efa, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 441efc	 Bytes: 1
  %loadMem_441efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441efc = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441efc)
  store %struct.Memory* %call_441efc, %struct.Memory** %MEMORY

  ; Code: subq $0x10f8, %rsp	 RIP: 441efd	 Bytes: 7
  %loadMem_441efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441efd = call %struct.Memory* @routine_subq__0x10f8___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441efd)
  store %struct.Memory* %call_441efd, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 441f04	 Bytes: 4
  %loadMem_441f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f04 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f04)
  store %struct.Memory* %call_441f04, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %r10	 RIP: 441f08	 Bytes: 4
  %loadMem_441f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f08 = call %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f08)
  store %struct.Memory* %call_441f08, %struct.Memory** %MEMORY

  ; Code: xorl %r11d, %r11d	 RIP: 441f0c	 Bytes: 3
  %loadMem_441f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f0c = call %struct.Memory* @routine_xorl__r11d___r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f0c)
  store %struct.Memory* %call_441f0c, %struct.Memory** %MEMORY

  ; Code: movl $0x640, %ebx	 RIP: 441f0f	 Bytes: 5
  %loadMem_441f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f0f = call %struct.Memory* @routine_movl__0x640___ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f0f)
  store %struct.Memory* %call_441f0f, %struct.Memory** %MEMORY

  ; Code: movl %ebx, %r14d	 RIP: 441f14	 Bytes: 3
  %loadMem_441f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f14 = call %struct.Memory* @routine_movl__ebx___r14d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f14)
  store %struct.Memory* %call_441f14, %struct.Memory** %MEMORY

  ; Code: leaq -0x9d0(%rbp), %r15	 RIP: 441f17	 Bytes: 7
  %loadMem_441f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f17 = call %struct.Memory* @routine_leaq_MINUS0x9d0__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f17)
  store %struct.Memory* %call_441f17, %struct.Memory** %MEMORY

  ; Code: movl $0x190, %ebx	 RIP: 441f1e	 Bytes: 5
  %loadMem_441f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f1e = call %struct.Memory* @routine_movl__0x190___ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f1e)
  store %struct.Memory* %call_441f1e, %struct.Memory** %MEMORY

  ; Code: movl %ebx, %r12d	 RIP: 441f23	 Bytes: 3
  %loadMem_441f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f23 = call %struct.Memory* @routine_movl__ebx___r12d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f23)
  store %struct.Memory* %call_441f23, %struct.Memory** %MEMORY

  ; Code: leaq -0x390(%rbp), %r13	 RIP: 441f26	 Bytes: 7
  %loadMem_441f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f26 = call %struct.Memory* @routine_leaq_MINUS0x390__rbp____r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f26)
  store %struct.Memory* %call_441f26, %struct.Memory** %MEMORY

  ; Code: leaq -0x200(%rbp), %rbx	 RIP: 441f2d	 Bytes: 7
  %loadMem_441f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f2d = call %struct.Memory* @routine_leaq_MINUS0x200__rbp____rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f2d)
  store %struct.Memory* %call_441f2d, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x30(%rbp)	 RIP: 441f34	 Bytes: 4
  %loadMem_441f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f34 = call %struct.Memory* @routine_movq__rdi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f34)
  store %struct.Memory* %call_441f34, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x38(%rbp)	 RIP: 441f38	 Bytes: 4
  %loadMem_441f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f38 = call %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f38)
  store %struct.Memory* %call_441f38, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3c(%rbp)	 RIP: 441f3c	 Bytes: 3
  %loadMem_441f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f3c = call %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f3c)
  store %struct.Memory* %call_441f3c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x40(%rbp)	 RIP: 441f3f	 Bytes: 3
  %loadMem_441f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f3f = call %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f3f)
  store %struct.Memory* %call_441f3f, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x48(%rbp)	 RIP: 441f42	 Bytes: 4
  %loadMem_441f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f42 = call %struct.Memory* @routine_movq__r8__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f42)
  store %struct.Memory* %call_441f42, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x50(%rbp)	 RIP: 441f46	 Bytes: 4
  %loadMem_441f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f46 = call %struct.Memory* @routine_movq__r9__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f46)
  store %struct.Memory* %call_441f46, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0x58(%rbp)	 RIP: 441f4a	 Bytes: 4
  %loadMem_441f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f4a = call %struct.Memory* @routine_movq__r10__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f4a)
  store %struct.Memory* %call_441f4a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x60(%rbp)	 RIP: 441f4e	 Bytes: 4
  %loadMem_441f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f4e = call %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f4e)
  store %struct.Memory* %call_441f4e, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 441f52	 Bytes: 4
  %loadMem_441f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f52 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f52)
  store %struct.Memory* %call_441f52, %struct.Memory** %MEMORY

  ; Code: movl 0x4b0(%rax), %ecx	 RIP: 441f56	 Bytes: 6
  %loadMem_441f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f56 = call %struct.Memory* @routine_movl_0x4b0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f56)
  store %struct.Memory* %call_441f56, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x64(%rbp)	 RIP: 441f5c	 Bytes: 3
  %loadMem_441f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f5c = call %struct.Memory* @routine_movl__ecx__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f5c)
  store %struct.Memory* %call_441f5c, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 441f5f	 Bytes: 4
  %loadMem_441f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f5f = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f5f)
  store %struct.Memory* %call_441f5f, %struct.Memory** %MEMORY

  ; Code: addq $0x4b4, %rax	 RIP: 441f63	 Bytes: 6
  %loadMem_441f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f63 = call %struct.Memory* @routine_addq__0x4b4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f63)
  store %struct.Memory* %call_441f63, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 441f69	 Bytes: 4
  %loadMem_441f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f69 = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f69)
  store %struct.Memory* %call_441f69, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x9d4(%rbp)	 RIP: 441f6d	 Bytes: 10
  %loadMem_441f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f6d = call %struct.Memory* @routine_movl__0x0__MINUS0x9d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f6d)
  store %struct.Memory* %call_441f6d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x9d8(%rbp)	 RIP: 441f77	 Bytes: 10
  %loadMem_441f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f77 = call %struct.Memory* @routine_movl__0x0__MINUS0x9d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f77)
  store %struct.Memory* %call_441f77, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1044(%rbp)	 RIP: 441f81	 Bytes: 10
  %loadMem_441f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f81 = call %struct.Memory* @routine_movl__0x0__MINUS0x1044__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f81)
  store %struct.Memory* %call_441f81, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1048(%rbp)	 RIP: 441f8b	 Bytes: 10
  %loadMem_441f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f8b = call %struct.Memory* @routine_movl__0x0__MINUS0x1048__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f8b)
  store %struct.Memory* %call_441f8b, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %ecx	 RIP: 441f95	 Bytes: 7
  %loadMem_441f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f95 = call %struct.Memory* @routine_movl_0xab0f24___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f95)
  store %struct.Memory* %call_441f95, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x104c(%rbp)	 RIP: 441f9c	 Bytes: 6
  %loadMem_441f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f9c = call %struct.Memory* @routine_movl__ecx__MINUS0x104c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f9c)
  store %struct.Memory* %call_441f9c, %struct.Memory** %MEMORY

  ; Code: movq %rbx, %rdi	 RIP: 441fa2	 Bytes: 3
  %loadMem_441fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fa2 = call %struct.Memory* @routine_movq__rbx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fa2)
  store %struct.Memory* %call_441fa2, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %esi	 RIP: 441fa5	 Bytes: 3
  %loadMem_441fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fa5 = call %struct.Memory* @routine_movl__r11d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fa5)
  store %struct.Memory* %call_441fa5, %struct.Memory** %MEMORY

  ; Code: movq %r12, %rdx	 RIP: 441fa8	 Bytes: 3
  %loadMem_441fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fa8 = call %struct.Memory* @routine_movq__r12___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fa8)
  store %struct.Memory* %call_441fa8, %struct.Memory** %MEMORY

  ; Code: movq %r13, -0x1098(%rbp)	 RIP: 441fab	 Bytes: 7
  %loadMem_441fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fab = call %struct.Memory* @routine_movq__r13__MINUS0x1098__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fab)
  store %struct.Memory* %call_441fab, %struct.Memory** %MEMORY

  ; Code: movl %r11d, -0x109c(%rbp)	 RIP: 441fb2	 Bytes: 7
  %loadMem_441fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fb2 = call %struct.Memory* @routine_movl__r11d__MINUS0x109c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fb2)
  store %struct.Memory* %call_441fb2, %struct.Memory** %MEMORY

  ; Code: movq %r14, -0x10a8(%rbp)	 RIP: 441fb9	 Bytes: 7
  %loadMem_441fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fb9 = call %struct.Memory* @routine_movq__r14__MINUS0x10a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fb9)
  store %struct.Memory* %call_441fb9, %struct.Memory** %MEMORY

  ; Code: movq %r15, -0x10b0(%rbp)	 RIP: 441fc0	 Bytes: 7
  %loadMem_441fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fc0 = call %struct.Memory* @routine_movq__r15__MINUS0x10b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fc0)
  store %struct.Memory* %call_441fc0, %struct.Memory** %MEMORY

  ; Code: movq %r12, -0x10b8(%rbp)	 RIP: 441fc7	 Bytes: 7
  %loadMem_441fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fc7 = call %struct.Memory* @routine_movq__r12__MINUS0x10b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fc7)
  store %struct.Memory* %call_441fc7, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 441fce	 Bytes: 5
  %loadMem1_441fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_441fce = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_441fce, i64 -266078, i64 5, i64 5)
  store %struct.Memory* %call1_441fce, %struct.Memory** %MEMORY

  %loadMem2_441fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_441fce = load i64, i64* %3
  %call2_441fce = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_441fce, %struct.Memory* %loadMem2_441fce)
  store %struct.Memory* %call2_441fce, %struct.Memory** %MEMORY

  ; Code: movq -0x1098(%rbp), %rdi	 RIP: 441fd3	 Bytes: 7
  %loadMem_441fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fd3 = call %struct.Memory* @routine_movq_MINUS0x1098__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fd3)
  store %struct.Memory* %call_441fd3, %struct.Memory** %MEMORY

  ; Code: movl -0x109c(%rbp), %esi	 RIP: 441fda	 Bytes: 6
  %loadMem_441fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fda = call %struct.Memory* @routine_movl_MINUS0x109c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fda)
  store %struct.Memory* %call_441fda, %struct.Memory** %MEMORY

  ; Code: movq -0x10b8(%rbp), %rdx	 RIP: 441fe0	 Bytes: 7
  %loadMem_441fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fe0 = call %struct.Memory* @routine_movq_MINUS0x10b8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fe0)
  store %struct.Memory* %call_441fe0, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 441fe7	 Bytes: 5
  %loadMem1_441fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_441fe7 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_441fe7, i64 -266103, i64 5, i64 5)
  store %struct.Memory* %call1_441fe7, %struct.Memory** %MEMORY

  %loadMem2_441fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_441fe7 = load i64, i64* %3
  %call2_441fe7 = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_441fe7, %struct.Memory* %loadMem2_441fe7)
  store %struct.Memory* %call2_441fe7, %struct.Memory** %MEMORY

  ; Code: movq -0x10b0(%rbp), %rax	 RIP: 441fec	 Bytes: 7
  %loadMem_441fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fec = call %struct.Memory* @routine_movq_MINUS0x10b0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fec)
  store %struct.Memory* %call_441fec, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 441ff3	 Bytes: 3
  %loadMem_441ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ff3 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ff3)
  store %struct.Memory* %call_441ff3, %struct.Memory** %MEMORY

  ; Code: movl -0x109c(%rbp), %esi	 RIP: 441ff6	 Bytes: 6
  %loadMem_441ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ff6 = call %struct.Memory* @routine_movl_MINUS0x109c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ff6)
  store %struct.Memory* %call_441ff6, %struct.Memory** %MEMORY

  ; Code: movq -0x10a8(%rbp), %rdx	 RIP: 441ffc	 Bytes: 7
  %loadMem_441ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ffc = call %struct.Memory* @routine_movq_MINUS0x10a8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ffc)
  store %struct.Memory* %call_441ffc, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 442003	 Bytes: 5
  %loadMem1_442003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442003 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442003, i64 -266131, i64 5, i64 5)
  store %struct.Memory* %call1_442003, %struct.Memory** %MEMORY

  %loadMem2_442003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442003 = load i64, i64* %3
  %call2_442003 = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_442003, %struct.Memory* %loadMem2_442003)
  store %struct.Memory* %call2_442003, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x58(%rbp)	 RIP: 442008	 Bytes: 5
  %loadMem_442008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442008 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442008)
  store %struct.Memory* %call_442008, %struct.Memory** %MEMORY

  ; Code: jne .L_44201e	 RIP: 44200d	 Bytes: 6
  %loadMem_44200d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44200d = call %struct.Memory* @routine_jne_.L_44201e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44200d, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_44200d, %struct.Memory** %MEMORY

  %loadBr_44200d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44200d = icmp eq i8 %loadBr_44200d, 1
  br i1 %cmpBr_44200d, label %block_.L_44201e, label %block_442013

block_442013:
  ; Code: leaq -0x9d4(%rbp), %rax	 RIP: 442013	 Bytes: 7
  %loadMem_442013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442013 = call %struct.Memory* @routine_leaq_MINUS0x9d4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442013)
  store %struct.Memory* %call_442013, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x58(%rbp)	 RIP: 44201a	 Bytes: 4
  %loadMem_44201a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44201a = call %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44201a)
  store %struct.Memory* %call_44201a, %struct.Memory** %MEMORY

  ; Code: .L_44201e:	 RIP: 44201e	 Bytes: 0
  br label %block_.L_44201e
block_.L_44201e:

  ; Code: cmpq $0x0, -0x60(%rbp)	 RIP: 44201e	 Bytes: 5
  %loadMem_44201e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44201e = call %struct.Memory* @routine_cmpq__0x0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44201e)
  store %struct.Memory* %call_44201e, %struct.Memory** %MEMORY

  ; Code: jne .L_442034	 RIP: 442023	 Bytes: 6
  %loadMem_442023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442023 = call %struct.Memory* @routine_jne_.L_442034(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442023, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_442023, %struct.Memory** %MEMORY

  %loadBr_442023 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442023 = icmp eq i8 %loadBr_442023, 1
  br i1 %cmpBr_442023, label %block_.L_442034, label %block_442029

block_442029:
  ; Code: leaq -0x9d8(%rbp), %rax	 RIP: 442029	 Bytes: 7
  %loadMem_442029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442029 = call %struct.Memory* @routine_leaq_MINUS0x9d8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442029)
  store %struct.Memory* %call_442029, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x60(%rbp)	 RIP: 442030	 Bytes: 4
  %loadMem_442030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442030 = call %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442030)
  store %struct.Memory* %call_442030, %struct.Memory** %MEMORY

  ; Code: .L_442034:	 RIP: 442034	 Bytes: 0
  br label %block_.L_442034
block_.L_442034:

  ; Code: movq -0x58(%rbp), %rax	 RIP: 442034	 Bytes: 4
  %loadMem_442034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442034 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442034)
  store %struct.Memory* %call_442034, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax)	 RIP: 442038	 Bytes: 6
  %loadMem_442038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442038 = call %struct.Memory* @routine_movl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442038)
  store %struct.Memory* %call_442038, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 44203e	 Bytes: 4
  %loadMem_44203e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44203e = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44203e)
  store %struct.Memory* %call_44203e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax)	 RIP: 442042	 Bytes: 6
  %loadMem_442042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442042 = call %struct.Memory* @routine_movl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442042)
  store %struct.Memory* %call_442042, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %ecx	 RIP: 442048	 Bytes: 7
  %loadMem_442048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442048 = call %struct.Memory* @routine_movl_0xab0f24___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442048)
  store %struct.Memory* %call_442048, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %ecx	 RIP: 44204f	 Bytes: 3
  %loadMem_44204f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44204f = call %struct.Memory* @routine_andl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44204f)
  store %struct.Memory* %call_44204f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 442052	 Bytes: 3
  %loadMem_442052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442052 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442052)
  store %struct.Memory* %call_442052, %struct.Memory** %MEMORY

  ; Code: jne .L_44206c	 RIP: 442055	 Bytes: 6
  %loadMem_442055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442055 = call %struct.Memory* @routine_jne_.L_44206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442055, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_442055, %struct.Memory** %MEMORY

  %loadBr_442055 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442055 = icmp eq i8 %loadBr_442055, 1
  br i1 %cmpBr_442055, label %block_.L_44206c, label %block_44205b

block_44205b:
  ; Code: movl 0xab0f24, %eax	 RIP: 44205b	 Bytes: 7
  %loadMem_44205b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44205b = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44205b)
  store %struct.Memory* %call_44205b, %struct.Memory** %MEMORY

  ; Code: andl $0xfffffffd, %eax	 RIP: 442062	 Bytes: 3
  %loadMem_442062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442062 = call %struct.Memory* @routine_andl__0xfffffffd___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442062)
  store %struct.Memory* %call_442062, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xab0f24	 RIP: 442065	 Bytes: 7
  %loadMem_442065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442065 = call %struct.Memory* @routine_movl__eax__0xab0f24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442065)
  store %struct.Memory* %call_442065, %struct.Memory** %MEMORY

  ; Code: .L_44206c:	 RIP: 44206c	 Bytes: 0
  br label %block_.L_44206c
block_.L_44206c:

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 44206c	 Bytes: 4
  %loadMem_44206c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44206c = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44206c)
  store %struct.Memory* %call_44206c, %struct.Memory** %MEMORY

  ; Code: callq .clear_owl_move_data	 RIP: 442070	 Bytes: 5
  %loadMem1_442070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442070 = call %struct.Memory* @routine_callq_.clear_owl_move_data(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442070, i64 12576, i64 5, i64 5)
  store %struct.Memory* %call1_442070, %struct.Memory** %MEMORY

  %loadMem2_442070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442070 = load i64, i64* %3
  %call2_442070 = call %struct.Memory* @sub_445190.clear_owl_move_data(%struct.State* %0, i64  %loadPC_442070, %struct.Memory* %loadMem2_442070)
  store %struct.Memory* %call2_442070, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdi	 RIP: 442075	 Bytes: 4
  %loadMem_442075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442075 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442075)
  store %struct.Memory* %call_442075, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8a4c(%rdi)	 RIP: 442079	 Bytes: 7
  %loadMem_442079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442079 = call %struct.Memory* @routine_cmpl__0x0__0x8a4c__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442079)
  store %struct.Memory* %call_442079, %struct.Memory** %MEMORY

  ; Code: jne .L_44208f	 RIP: 442080	 Bytes: 6
  %loadMem_442080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442080 = call %struct.Memory* @routine_jne_.L_44208f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442080, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_442080, %struct.Memory** %MEMORY

  %loadBr_442080 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442080 = icmp eq i8 %loadBr_442080, 1
  br i1 %cmpBr_442080, label %block_.L_44208f, label %block_442086

block_442086:
  ; Code: movq -0x30(%rbp), %rdi	 RIP: 442086	 Bytes: 4
  %loadMem_442086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442086 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442086)
  store %struct.Memory* %call_442086, %struct.Memory** %MEMORY

  ; Code: callq .owl_find_lunches	 RIP: 44208a	 Bytes: 5
  %loadMem1_44208a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44208a = call %struct.Memory* @routine_callq_.owl_find_lunches(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44208a, i64 -2410, i64 5, i64 5)
  store %struct.Memory* %call1_44208a, %struct.Memory** %MEMORY

  %loadMem2_44208a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44208a = load i64, i64* %3
  %call2_44208a = call %struct.Memory* @sub_441720.owl_find_lunches(%struct.State* %0, i64  %loadPC_44208a, %struct.Memory* %loadMem2_44208a)
  store %struct.Memory* %call2_44208a, %struct.Memory** %MEMORY

  ; Code: .L_44208f:	 RIP: 44208f	 Bytes: 0
  br label %block_.L_44208f
block_.L_44208f:

  ; Code: movq -0x30(%rbp), %rdi	 RIP: 44208f	 Bytes: 4
  %loadMem_44208f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44208f = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44208f)
  store %struct.Memory* %call_44208f, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rsi	 RIP: 442093	 Bytes: 4
  %loadMem_442093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442093 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442093)
  store %struct.Memory* %call_442093, %struct.Memory** %MEMORY

  ; Code: callq .owl_make_domains	 RIP: 442097	 Bytes: 5
  %loadMem1_442097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442097 = call %struct.Memory* @routine_callq_.owl_make_domains(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442097, i64 -13975, i64 5, i64 5)
  store %struct.Memory* %call1_442097, %struct.Memory** %MEMORY

  %loadMem2_442097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442097 = load i64, i64* %3
  %call2_442097 = call %struct.Memory* @sub_43ea00.owl_make_domains(%struct.State* %0, i64  %loadPC_442097, %struct.Memory* %loadMem2_442097)
  store %struct.Memory* %call2_442097, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x64(%rbp)	 RIP: 44209c	 Bytes: 4
  %loadMem_44209c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44209c = call %struct.Memory* @routine_cmpl__0x1__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44209c)
  store %struct.Memory* %call_44209c, %struct.Memory** %MEMORY

  ; Code: jne .L_4420b5	 RIP: 4420a0	 Bytes: 6
  %loadMem_4420a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420a0 = call %struct.Memory* @routine_jne_.L_4420b5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420a0, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4420a0, %struct.Memory** %MEMORY

  %loadBr_4420a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4420a0 = icmp eq i8 %loadBr_4420a0, 1
  br i1 %cmpBr_4420a0, label %block_.L_4420b5, label %block_4420a6

block_4420a6:
  ; Code: movl $0x4, -0x1040(%rbp)	 RIP: 4420a6	 Bytes: 10
  %loadMem_4420a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420a6 = call %struct.Memory* @routine_movl__0x4__MINUS0x1040__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420a6)
  store %struct.Memory* %call_4420a6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4420bf	 RIP: 4420b0	 Bytes: 5
  %loadMem_4420b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420b0 = call %struct.Memory* @routine_jmpq_.L_4420bf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420b0, i64 15, i64 5)
  store %struct.Memory* %call_4420b0, %struct.Memory** %MEMORY

  br label %block_.L_4420bf

  ; Code: .L_4420b5:	 RIP: 4420b5	 Bytes: 0
block_.L_4420b5:

  ; Code: movl $0x5, -0x1040(%rbp)	 RIP: 4420b5	 Bytes: 10
  %loadMem_4420b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420b5 = call %struct.Memory* @routine_movl__0x5__MINUS0x1040__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420b5)
  store %struct.Memory* %call_4420b5, %struct.Memory** %MEMORY

  ; Code: .L_4420bf:	 RIP: 4420bf	 Bytes: 0
  br label %block_.L_4420bf
block_.L_4420bf:

  ; Code: movl $0x0, -0x1030(%rbp)	 RIP: 4420bf	 Bytes: 10
  %loadMem_4420bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420bf = call %struct.Memory* @routine_movl__0x0__MINUS0x1030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420bf)
  store %struct.Memory* %call_4420bf, %struct.Memory** %MEMORY

  ; Code: .L_4420c9:	 RIP: 4420c9	 Bytes: 0
  br label %block_.L_4420c9
block_.L_4420c9:

  ; Code: movl -0x1030(%rbp), %eax	 RIP: 4420c9	 Bytes: 6
  %loadMem_4420c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420c9 = call %struct.Memory* @routine_movl_MINUS0x1030__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420c9)
  store %struct.Memory* %call_4420c9, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 4420cf	 Bytes: 7
  %loadMem_4420cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420cf = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420cf)
  store %struct.Memory* %call_4420cf, %struct.Memory** %MEMORY

  ; Code: jge .L_442285	 RIP: 4420d6	 Bytes: 6
  %loadMem_4420d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420d6 = call %struct.Memory* @routine_jge_.L_442285(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420d6, i8* %BRANCH_TAKEN, i64 431, i64 6, i64 6)
  store %struct.Memory* %call_4420d6, %struct.Memory** %MEMORY

  %loadBr_4420d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4420d6 = icmp eq i8 %loadBr_4420d6, 1
  br i1 %cmpBr_4420d6, label %block_.L_442285, label %block_4420dc

block_4420dc:
  ; Code: movl $0x0, -0x1034(%rbp)	 RIP: 4420dc	 Bytes: 10
  %loadMem_4420dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420dc = call %struct.Memory* @routine_movl__0x0__MINUS0x1034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420dc)
  store %struct.Memory* %call_4420dc, %struct.Memory** %MEMORY

  ; Code: .L_4420e6:	 RIP: 4420e6	 Bytes: 0
  br label %block_.L_4420e6
block_.L_4420e6:

  ; Code: movl -0x1034(%rbp), %eax	 RIP: 4420e6	 Bytes: 6
  %loadMem_4420e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420e6 = call %struct.Memory* @routine_movl_MINUS0x1034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420e6)
  store %struct.Memory* %call_4420e6, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 4420ec	 Bytes: 7
  %loadMem_4420ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420ec = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420ec)
  store %struct.Memory* %call_4420ec, %struct.Memory** %MEMORY

  ; Code: jge .L_44226c	 RIP: 4420f3	 Bytes: 6
  %loadMem_4420f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420f3 = call %struct.Memory* @routine_jge_.L_44226c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420f3, i8* %BRANCH_TAKEN, i64 377, i64 6, i64 6)
  store %struct.Memory* %call_4420f3, %struct.Memory** %MEMORY

  %loadBr_4420f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4420f3 = icmp eq i8 %loadBr_4420f3, 1
  br i1 %cmpBr_4420f3, label %block_.L_44226c, label %block_4420f9

block_4420f9:
  ; Code: imull $0x14, -0x1030(%rbp), %eax	 RIP: 4420f9	 Bytes: 7
  %loadMem_4420f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420f9 = call %struct.Memory* @routine_imull__0x14__MINUS0x1030__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420f9)
  store %struct.Memory* %call_4420f9, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 442100	 Bytes: 3
  %loadMem_442100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442100 = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442100)
  store %struct.Memory* %call_442100, %struct.Memory** %MEMORY

  ; Code: addl -0x1034(%rbp), %eax	 RIP: 442103	 Bytes: 6
  %loadMem_442103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442103 = call %struct.Memory* @routine_addl_MINUS0x1034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442103)
  store %struct.Memory* %call_442103, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1050(%rbp)	 RIP: 442109	 Bytes: 6
  %loadMem_442109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442109 = call %struct.Memory* @routine_movl__eax__MINUS0x1050__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442109)
  store %struct.Memory* %call_442109, %struct.Memory** %MEMORY

  ; Code: movslq -0x1050(%rbp), %rcx	 RIP: 44210f	 Bytes: 7
  %loadMem_44210f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44210f = call %struct.Memory* @routine_movslq_MINUS0x1050__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44210f)
  store %struct.Memory* %call_44210f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 442116	 Bytes: 8
  %loadMem_442116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442116 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442116)
  store %struct.Memory* %call_442116, %struct.Memory** %MEMORY

  ; Code: cmpl -0x64(%rbp), %eax	 RIP: 44211e	 Bytes: 3
  %loadMem_44211e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44211e = call %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44211e)
  store %struct.Memory* %call_44211e, %struct.Memory** %MEMORY

  ; Code: jne .L_442253	 RIP: 442121	 Bytes: 6
  %loadMem_442121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442121 = call %struct.Memory* @routine_jne_.L_442253(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442121, i8* %BRANCH_TAKEN, i64 306, i64 6, i64 6)
  store %struct.Memory* %call_442121, %struct.Memory** %MEMORY

  %loadBr_442121 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442121 = icmp eq i8 %loadBr_442121, 1
  br i1 %cmpBr_442121, label %block_.L_442253, label %block_442127

block_442127:
  ; Code: movl $0x0, -0x1038(%rbp)	 RIP: 442127	 Bytes: 10
  %loadMem_442127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442127 = call %struct.Memory* @routine_movl__0x0__MINUS0x1038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442127)
  store %struct.Memory* %call_442127, %struct.Memory** %MEMORY

  ; Code: .L_442131:	 RIP: 442131	 Bytes: 0
  br label %block_.L_442131
block_.L_442131:

  ; Code: cmpl $0x8, -0x1038(%rbp)	 RIP: 442131	 Bytes: 7
  %loadMem_442131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442131 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x1038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442131)
  store %struct.Memory* %call_442131, %struct.Memory** %MEMORY

  ; Code: jge .L_44224e	 RIP: 442138	 Bytes: 6
  %loadMem_442138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442138 = call %struct.Memory* @routine_jge_.L_44224e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442138, i8* %BRANCH_TAKEN, i64 278, i64 6, i64 6)
  store %struct.Memory* %call_442138, %struct.Memory** %MEMORY

  %loadBr_442138 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442138 = icmp eq i8 %loadBr_442138, 1
  br i1 %cmpBr_442138, label %block_.L_44224e, label %block_44213e

block_44213e:
  ; Code: movl -0x1050(%rbp), %eax	 RIP: 44213e	 Bytes: 6
  %loadMem_44213e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44213e = call %struct.Memory* @routine_movl_MINUS0x1050__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44213e)
  store %struct.Memory* %call_44213e, %struct.Memory** %MEMORY

  ; Code: movslq -0x1038(%rbp), %rcx	 RIP: 442144	 Bytes: 7
  %loadMem_442144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442144 = call %struct.Memory* @routine_movslq_MINUS0x1038__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442144)
  store %struct.Memory* %call_442144, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 44214b	 Bytes: 7
  %loadMem_44214b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44214b = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44214b)
  store %struct.Memory* %call_44214b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1054(%rbp)	 RIP: 442152	 Bytes: 6
  %loadMem_442152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442152 = call %struct.Memory* @routine_movl__eax__MINUS0x1054__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442152)
  store %struct.Memory* %call_442152, %struct.Memory** %MEMORY

  ; Code: movslq -0x1054(%rbp), %rcx	 RIP: 442158	 Bytes: 7
  %loadMem_442158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442158 = call %struct.Memory* @routine_movslq_MINUS0x1054__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442158)
  store %struct.Memory* %call_442158, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 44215f	 Bytes: 8
  %loadMem_44215f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44215f = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44215f)
  store %struct.Memory* %call_44215f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 442167	 Bytes: 3
  %loadMem_442167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442167 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442167)
  store %struct.Memory* %call_442167, %struct.Memory** %MEMORY

  ; Code: je .L_442235	 RIP: 44216a	 Bytes: 6
  %loadMem_44216a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44216a = call %struct.Memory* @routine_je_.L_442235(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44216a, i8* %BRANCH_TAKEN, i64 203, i64 6, i64 6)
  store %struct.Memory* %call_44216a, %struct.Memory** %MEMORY

  %loadBr_44216a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44216a = icmp eq i8 %loadBr_44216a, 1
  br i1 %cmpBr_44216a, label %block_.L_442235, label %block_442170

block_442170:
  ; Code: movq -0x70(%rbp), %rax	 RIP: 442170	 Bytes: 4
  %loadMem_442170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442170 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442170)
  store %struct.Memory* %call_442170, %struct.Memory** %MEMORY

  ; Code: movslq -0x1054(%rbp), %rcx	 RIP: 442174	 Bytes: 7
  %loadMem_442174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442174 = call %struct.Memory* @routine_movslq_MINUS0x1054__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442174)
  store %struct.Memory* %call_442174, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 44217b	 Bytes: 4
  %loadMem_44217b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44217b = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44217b)
  store %struct.Memory* %call_44217b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44217f	 Bytes: 3
  %loadMem_44217f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44217f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44217f)
  store %struct.Memory* %call_44217f, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 442182	 Bytes: 2
  %loadMem_442182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442182 = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442182)
  store %struct.Memory* %call_442182, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1040(%rbp), %edx	 RIP: 442184	 Bytes: 6
  %loadMem_442184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442184 = call %struct.Memory* @routine_cmpl_MINUS0x1040__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442184)
  store %struct.Memory* %call_442184, %struct.Memory** %MEMORY

  ; Code: jne .L_442235	 RIP: 44218a	 Bytes: 6
  %loadMem_44218a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44218a = call %struct.Memory* @routine_jne_.L_442235(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44218a, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_44218a, %struct.Memory** %MEMORY

  %loadBr_44218a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44218a = icmp eq i8 %loadBr_44218a, 1
  br i1 %cmpBr_44218a, label %block_.L_442235, label %block_442190

block_442190:
  ; Code: movq -0x70(%rbp), %rax	 RIP: 442190	 Bytes: 4
  %loadMem_442190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442190 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442190)
  store %struct.Memory* %call_442190, %struct.Memory** %MEMORY

  ; Code: movslq -0x1054(%rbp), %rcx	 RIP: 442194	 Bytes: 7
  %loadMem_442194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442194 = call %struct.Memory* @routine_movslq_MINUS0x1054__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442194)
  store %struct.Memory* %call_442194, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 44219b	 Bytes: 4
  %loadMem_44219b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44219b = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44219b)
  store %struct.Memory* %call_44219b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44219f	 Bytes: 3
  %loadMem_44219f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44219f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44219f)
  store %struct.Memory* %call_44219f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc(%rax)	 RIP: 4421a2	 Bytes: 4
  %loadMem_4421a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421a2 = call %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421a2)
  store %struct.Memory* %call_4421a2, %struct.Memory** %MEMORY

  ; Code: je .L_442235	 RIP: 4421a6	 Bytes: 6
  %loadMem_4421a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421a6 = call %struct.Memory* @routine_je_.L_442235(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421a6, i8* %BRANCH_TAKEN, i64 143, i64 6, i64 6)
  store %struct.Memory* %call_4421a6, %struct.Memory** %MEMORY

  %loadBr_4421a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4421a6 = icmp eq i8 %loadBr_4421a6, 1
  br i1 %cmpBr_4421a6, label %block_.L_442235, label %block_4421ac

block_4421ac:
  ; Code: movq -0x70(%rbp), %rax	 RIP: 4421ac	 Bytes: 4
  %loadMem_4421ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421ac = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421ac)
  store %struct.Memory* %call_4421ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x1054(%rbp), %rcx	 RIP: 4421b0	 Bytes: 7
  %loadMem_4421b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421b0 = call %struct.Memory* @routine_movslq_MINUS0x1054__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421b0)
  store %struct.Memory* %call_4421b0, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 4421b7	 Bytes: 4
  %loadMem_4421b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421b7 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421b7)
  store %struct.Memory* %call_4421b7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4421bb	 Bytes: 3
  %loadMem_4421bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421bb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421bb)
  store %struct.Memory* %call_4421bb, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, 0x1c(%rax)	 RIP: 4421be	 Bytes: 4
  %loadMem_4421be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421be = call %struct.Memory* @routine_cmpb__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421be)
  store %struct.Memory* %call_4421be, %struct.Memory** %MEMORY

  ; Code: jne .L_442235	 RIP: 4421c2	 Bytes: 6
  %loadMem_4421c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421c2 = call %struct.Memory* @routine_jne_.L_442235(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421c2, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_4421c2, %struct.Memory** %MEMORY

  %loadBr_4421c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4421c2 = icmp eq i8 %loadBr_4421c2, 1
  br i1 %cmpBr_4421c2, label %block_.L_442235, label %block_4421c8

block_4421c8:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 4421c8	 Bytes: 4
  %loadMem_4421c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421c8 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421c8)
  store %struct.Memory* %call_4421c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x1050(%rbp), %rcx	 RIP: 4421cc	 Bytes: 7
  %loadMem_4421cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421cc = call %struct.Memory* @routine_movslq_MINUS0x1050__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421cc)
  store %struct.Memory* %call_4421cc, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, (%rax,%rcx,1)	 RIP: 4421d3	 Bytes: 4
  %loadMem_4421d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421d3 = call %struct.Memory* @routine_cmpb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421d3)
  store %struct.Memory* %call_4421d3, %struct.Memory** %MEMORY

  ; Code: je .L_442209	 RIP: 4421d7	 Bytes: 6
  %loadMem_4421d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421d7 = call %struct.Memory* @routine_je_.L_442209(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421d7, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_4421d7, %struct.Memory** %MEMORY

  %loadBr_4421d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4421d7 = icmp eq i8 %loadBr_4421d7, 1
  br i1 %cmpBr_4421d7, label %block_.L_442209, label %block_4421dd

block_4421dd:
  ; Code: movq -0x70(%rbp), %rax	 RIP: 4421dd	 Bytes: 4
  %loadMem_4421dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421dd = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421dd)
  store %struct.Memory* %call_4421dd, %struct.Memory** %MEMORY

  ; Code: movslq -0x1054(%rbp), %rcx	 RIP: 4421e1	 Bytes: 7
  %loadMem_4421e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421e1 = call %struct.Memory* @routine_movslq_MINUS0x1054__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421e1)
  store %struct.Memory* %call_4421e1, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 4421e8	 Bytes: 4
  %loadMem_4421e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421e8 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421e8)
  store %struct.Memory* %call_4421e8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4421ec	 Bytes: 3
  %loadMem_4421ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421ec = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421ec)
  store %struct.Memory* %call_4421ec, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 4421ef	 Bytes: 4
  %loadMem_4421ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421ef = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421ef)
  store %struct.Memory* %call_4421ef, %struct.Memory** %MEMORY

  ; Code: movb -0x200(%rbp,%rax,1), %dl	 RIP: 4421f3	 Bytes: 7
  %loadMem_4421f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421f3 = call %struct.Memory* @routine_movb_MINUS0x200__rbp__rax_1____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421f3)
  store %struct.Memory* %call_4421f3, %struct.Memory** %MEMORY

  ; Code: addb $0x1, %dl	 RIP: 4421fa	 Bytes: 3
  %loadMem_4421fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421fa = call %struct.Memory* @routine_addb__0x1___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421fa)
  store %struct.Memory* %call_4421fa, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x200(%rbp,%rax,1)	 RIP: 4421fd	 Bytes: 7
  %loadMem_4421fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421fd = call %struct.Memory* @routine_movb__dl__MINUS0x200__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421fd)
  store %struct.Memory* %call_4421fd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442230	 RIP: 442204	 Bytes: 5
  %loadMem_442204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442204 = call %struct.Memory* @routine_jmpq_.L_442230(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442204, i64 44, i64 5)
  store %struct.Memory* %call_442204, %struct.Memory** %MEMORY

  br label %block_.L_442230

  ; Code: .L_442209:	 RIP: 442209	 Bytes: 0
block_.L_442209:

  ; Code: movq -0x70(%rbp), %rax	 RIP: 442209	 Bytes: 4
  %loadMem_442209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442209 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442209)
  store %struct.Memory* %call_442209, %struct.Memory** %MEMORY

  ; Code: movslq -0x1054(%rbp), %rcx	 RIP: 44220d	 Bytes: 7
  %loadMem_44220d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44220d = call %struct.Memory* @routine_movslq_MINUS0x1054__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44220d)
  store %struct.Memory* %call_44220d, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 442214	 Bytes: 4
  %loadMem_442214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442214 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442214)
  store %struct.Memory* %call_442214, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 442218	 Bytes: 3
  %loadMem_442218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442218 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442218)
  store %struct.Memory* %call_442218, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 44221b	 Bytes: 4
  %loadMem_44221b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44221b = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44221b)
  store %struct.Memory* %call_44221b, %struct.Memory** %MEMORY

  ; Code: movb -0x390(%rbp,%rax,1), %dl	 RIP: 44221f	 Bytes: 7
  %loadMem_44221f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44221f = call %struct.Memory* @routine_movb_MINUS0x390__rbp__rax_1____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44221f)
  store %struct.Memory* %call_44221f, %struct.Memory** %MEMORY

  ; Code: addb $0x1, %dl	 RIP: 442226	 Bytes: 3
  %loadMem_442226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442226 = call %struct.Memory* @routine_addb__0x1___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442226)
  store %struct.Memory* %call_442226, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x390(%rbp,%rax,1)	 RIP: 442229	 Bytes: 7
  %loadMem_442229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442229 = call %struct.Memory* @routine_movb__dl__MINUS0x390__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442229)
  store %struct.Memory* %call_442229, %struct.Memory** %MEMORY

  ; Code: .L_442230:	 RIP: 442230	 Bytes: 0
  br label %block_.L_442230
block_.L_442230:

  ; Code: jmpq .L_442235	 RIP: 442230	 Bytes: 5
  %loadMem_442230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442230 = call %struct.Memory* @routine_jmpq_.L_442235(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442230, i64 5, i64 5)
  store %struct.Memory* %call_442230, %struct.Memory** %MEMORY

  br label %block_.L_442235

  ; Code: .L_442235:	 RIP: 442235	 Bytes: 0
block_.L_442235:

  ; Code: jmpq .L_44223a	 RIP: 442235	 Bytes: 5
  %loadMem_442235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442235 = call %struct.Memory* @routine_jmpq_.L_44223a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442235, i64 5, i64 5)
  store %struct.Memory* %call_442235, %struct.Memory** %MEMORY

  br label %block_.L_44223a

  ; Code: .L_44223a:	 RIP: 44223a	 Bytes: 0
block_.L_44223a:

  ; Code: movl -0x1038(%rbp), %eax	 RIP: 44223a	 Bytes: 6
  %loadMem_44223a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44223a = call %struct.Memory* @routine_movl_MINUS0x1038__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44223a)
  store %struct.Memory* %call_44223a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 442240	 Bytes: 3
  %loadMem_442240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442240 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442240)
  store %struct.Memory* %call_442240, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1038(%rbp)	 RIP: 442243	 Bytes: 6
  %loadMem_442243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442243 = call %struct.Memory* @routine_movl__eax__MINUS0x1038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442243)
  store %struct.Memory* %call_442243, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442131	 RIP: 442249	 Bytes: 5
  %loadMem_442249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442249 = call %struct.Memory* @routine_jmpq_.L_442131(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442249, i64 -280, i64 5)
  store %struct.Memory* %call_442249, %struct.Memory** %MEMORY

  br label %block_.L_442131

  ; Code: .L_44224e:	 RIP: 44224e	 Bytes: 0
block_.L_44224e:

  ; Code: jmpq .L_442253	 RIP: 44224e	 Bytes: 5
  %loadMem_44224e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44224e = call %struct.Memory* @routine_jmpq_.L_442253(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44224e, i64 5, i64 5)
  store %struct.Memory* %call_44224e, %struct.Memory** %MEMORY

  br label %block_.L_442253

  ; Code: .L_442253:	 RIP: 442253	 Bytes: 0
block_.L_442253:

  ; Code: jmpq .L_442258	 RIP: 442253	 Bytes: 5
  %loadMem_442253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442253 = call %struct.Memory* @routine_jmpq_.L_442258(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442253, i64 5, i64 5)
  store %struct.Memory* %call_442253, %struct.Memory** %MEMORY

  br label %block_.L_442258

  ; Code: .L_442258:	 RIP: 442258	 Bytes: 0
block_.L_442258:

  ; Code: movl -0x1034(%rbp), %eax	 RIP: 442258	 Bytes: 6
  %loadMem_442258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442258 = call %struct.Memory* @routine_movl_MINUS0x1034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442258)
  store %struct.Memory* %call_442258, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44225e	 Bytes: 3
  %loadMem_44225e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44225e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44225e)
  store %struct.Memory* %call_44225e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1034(%rbp)	 RIP: 442261	 Bytes: 6
  %loadMem_442261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442261 = call %struct.Memory* @routine_movl__eax__MINUS0x1034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442261)
  store %struct.Memory* %call_442261, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4420e6	 RIP: 442267	 Bytes: 5
  %loadMem_442267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442267 = call %struct.Memory* @routine_jmpq_.L_4420e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442267, i64 -385, i64 5)
  store %struct.Memory* %call_442267, %struct.Memory** %MEMORY

  br label %block_.L_4420e6

  ; Code: .L_44226c:	 RIP: 44226c	 Bytes: 0
block_.L_44226c:

  ; Code: jmpq .L_442271	 RIP: 44226c	 Bytes: 5
  %loadMem_44226c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44226c = call %struct.Memory* @routine_jmpq_.L_442271(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44226c, i64 5, i64 5)
  store %struct.Memory* %call_44226c, %struct.Memory** %MEMORY

  br label %block_.L_442271

  ; Code: .L_442271:	 RIP: 442271	 Bytes: 0
block_.L_442271:

  ; Code: movl -0x1030(%rbp), %eax	 RIP: 442271	 Bytes: 6
  %loadMem_442271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442271 = call %struct.Memory* @routine_movl_MINUS0x1030__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442271)
  store %struct.Memory* %call_442271, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 442277	 Bytes: 3
  %loadMem_442277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442277 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442277)
  store %struct.Memory* %call_442277, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1030(%rbp)	 RIP: 44227a	 Bytes: 6
  %loadMem_44227a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44227a = call %struct.Memory* @routine_movl__eax__MINUS0x1030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44227a)
  store %struct.Memory* %call_44227a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4420c9	 RIP: 442280	 Bytes: 5
  %loadMem_442280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442280 = call %struct.Memory* @routine_jmpq_.L_4420c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442280, i64 -439, i64 5)
  store %struct.Memory* %call_442280, %struct.Memory** %MEMORY

  br label %block_.L_4420c9

  ; Code: .L_442285:	 RIP: 442285	 Bytes: 0
block_.L_442285:

  ; Code: movl $0x0, -0x1030(%rbp)	 RIP: 442285	 Bytes: 10
  %loadMem_442285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442285 = call %struct.Memory* @routine_movl__0x0__MINUS0x1030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442285)
  store %struct.Memory* %call_442285, %struct.Memory** %MEMORY

  ; Code: .L_44228f:	 RIP: 44228f	 Bytes: 0
  br label %block_.L_44228f
block_.L_44228f:

  ; Code: movl -0x1030(%rbp), %eax	 RIP: 44228f	 Bytes: 6
  %loadMem_44228f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44228f = call %struct.Memory* @routine_movl_MINUS0x1030__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44228f)
  store %struct.Memory* %call_44228f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 442295	 Bytes: 7
  %loadMem_442295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442295 = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442295)
  store %struct.Memory* %call_442295, %struct.Memory** %MEMORY

  ; Code: jge .L_442344	 RIP: 44229c	 Bytes: 6
  %loadMem_44229c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44229c = call %struct.Memory* @routine_jge_.L_442344(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44229c, i8* %BRANCH_TAKEN, i64 168, i64 6, i64 6)
  store %struct.Memory* %call_44229c, %struct.Memory** %MEMORY

  %loadBr_44229c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44229c = icmp eq i8 %loadBr_44229c, 1
  br i1 %cmpBr_44229c, label %block_.L_442344, label %block_4422a2

block_4422a2:
  ; Code: movl $0x0, -0x1034(%rbp)	 RIP: 4422a2	 Bytes: 10
  %loadMem_4422a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422a2 = call %struct.Memory* @routine_movl__0x0__MINUS0x1034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422a2)
  store %struct.Memory* %call_4422a2, %struct.Memory** %MEMORY

  ; Code: .L_4422ac:	 RIP: 4422ac	 Bytes: 0
  br label %block_.L_4422ac
block_.L_4422ac:

  ; Code: movl -0x1034(%rbp), %eax	 RIP: 4422ac	 Bytes: 6
  %loadMem_4422ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422ac = call %struct.Memory* @routine_movl_MINUS0x1034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422ac)
  store %struct.Memory* %call_4422ac, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 4422b2	 Bytes: 7
  %loadMem_4422b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422b2 = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422b2)
  store %struct.Memory* %call_4422b2, %struct.Memory** %MEMORY

  ; Code: jge .L_44232b	 RIP: 4422b9	 Bytes: 6
  %loadMem_4422b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422b9 = call %struct.Memory* @routine_jge_.L_44232b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422b9, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_4422b9, %struct.Memory** %MEMORY

  %loadBr_4422b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4422b9 = icmp eq i8 %loadBr_4422b9, 1
  br i1 %cmpBr_4422b9, label %block_.L_44232b, label %block_4422bf

block_4422bf:
  ; Code: movss 0xa0e41(%rip), %xmm0	 RIP: 4422bf	 Bytes: 8
  %loadMem_4422bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422bf = call %struct.Memory* @routine_movss_0xa0e41__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422bf)
  store %struct.Memory* %call_4422bf, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 4422c7	 Bytes: 4
  %loadMem_4422c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422c7 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422c7)
  store %struct.Memory* %call_4422c7, %struct.Memory** %MEMORY

  ; Code: addq $0x3cf4, %rax	 RIP: 4422cb	 Bytes: 6
  %loadMem_4422cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422cb = call %struct.Memory* @routine_addq__0x3cf4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422cb)
  store %struct.Memory* %call_4422cb, %struct.Memory** %MEMORY

  ; Code: imull $0x14, -0x1030(%rbp), %ecx	 RIP: 4422d1	 Bytes: 7
  %loadMem_4422d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422d1 = call %struct.Memory* @routine_imull__0x14__MINUS0x1030__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422d1)
  store %struct.Memory* %call_4422d1, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %ecx	 RIP: 4422d8	 Bytes: 3
  %loadMem_4422d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422d8 = call %struct.Memory* @routine_addl__0x15___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422d8)
  store %struct.Memory* %call_4422d8, %struct.Memory** %MEMORY

  ; Code: addl -0x1034(%rbp), %ecx	 RIP: 4422db	 Bytes: 6
  %loadMem_4422db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422db = call %struct.Memory* @routine_addl_MINUS0x1034__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422db)
  store %struct.Memory* %call_4422db, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4422e1	 Bytes: 3
  %loadMem_4422e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422e1 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422e1)
  store %struct.Memory* %call_4422e1, %struct.Memory** %MEMORY

  ; Code: imulq $0x30, %rdx, %rdx	 RIP: 4422e4	 Bytes: 4
  %loadMem_4422e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422e4 = call %struct.Memory* @routine_imulq__0x30___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422e4)
  store %struct.Memory* %call_4422e4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4422e8	 Bytes: 3
  %loadMem_4422e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422e8 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422e8)
  store %struct.Memory* %call_4422e8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, 0x4(%rax)	 RIP: 4422eb	 Bytes: 4
  %loadMem_4422eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422eb = call %struct.Memory* @routine_movb__0x0__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422eb)
  store %struct.Memory* %call_4422eb, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 4422ef	 Bytes: 4
  %loadMem_4422ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422ef = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422ef)
  store %struct.Memory* %call_4422ef, %struct.Memory** %MEMORY

  ; Code: addq $0x3cf4, %rax	 RIP: 4422f3	 Bytes: 6
  %loadMem_4422f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422f3 = call %struct.Memory* @routine_addq__0x3cf4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422f3)
  store %struct.Memory* %call_4422f3, %struct.Memory** %MEMORY

  ; Code: imull $0x14, -0x1030(%rbp), %ecx	 RIP: 4422f9	 Bytes: 7
  %loadMem_4422f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422f9 = call %struct.Memory* @routine_imull__0x14__MINUS0x1030__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422f9)
  store %struct.Memory* %call_4422f9, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %ecx	 RIP: 442300	 Bytes: 3
  %loadMem_442300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442300 = call %struct.Memory* @routine_addl__0x15___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442300)
  store %struct.Memory* %call_442300, %struct.Memory** %MEMORY

  ; Code: addl -0x1034(%rbp), %ecx	 RIP: 442303	 Bytes: 6
  %loadMem_442303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442303 = call %struct.Memory* @routine_addl_MINUS0x1034__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442303)
  store %struct.Memory* %call_442303, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 442309	 Bytes: 3
  %loadMem_442309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442309 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442309)
  store %struct.Memory* %call_442309, %struct.Memory** %MEMORY

  ; Code: imulq $0x30, %rdx, %rdx	 RIP: 44230c	 Bytes: 4
  %loadMem_44230c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44230c = call %struct.Memory* @routine_imulq__0x30___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44230c)
  store %struct.Memory* %call_44230c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 442310	 Bytes: 3
  %loadMem_442310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442310 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442310)
  store %struct.Memory* %call_442310, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax)	 RIP: 442313	 Bytes: 4
  %loadMem_442313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442313 = call %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442313)
  store %struct.Memory* %call_442313, %struct.Memory** %MEMORY

  ; Code: movl -0x1034(%rbp), %eax	 RIP: 442317	 Bytes: 6
  %loadMem_442317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442317 = call %struct.Memory* @routine_movl_MINUS0x1034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442317)
  store %struct.Memory* %call_442317, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44231d	 Bytes: 3
  %loadMem_44231d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44231d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44231d)
  store %struct.Memory* %call_44231d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1034(%rbp)	 RIP: 442320	 Bytes: 6
  %loadMem_442320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442320 = call %struct.Memory* @routine_movl__eax__MINUS0x1034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442320)
  store %struct.Memory* %call_442320, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4422ac	 RIP: 442326	 Bytes: 5
  %loadMem_442326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442326 = call %struct.Memory* @routine_jmpq_.L_4422ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442326, i64 -122, i64 5)
  store %struct.Memory* %call_442326, %struct.Memory** %MEMORY

  br label %block_.L_4422ac

  ; Code: .L_44232b:	 RIP: 44232b	 Bytes: 0
block_.L_44232b:

  ; Code: jmpq .L_442330	 RIP: 44232b	 Bytes: 5
  %loadMem_44232b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44232b = call %struct.Memory* @routine_jmpq_.L_442330(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44232b, i64 5, i64 5)
  store %struct.Memory* %call_44232b, %struct.Memory** %MEMORY

  br label %block_.L_442330

  ; Code: .L_442330:	 RIP: 442330	 Bytes: 0
block_.L_442330:

  ; Code: movl -0x1030(%rbp), %eax	 RIP: 442330	 Bytes: 6
  %loadMem_442330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442330 = call %struct.Memory* @routine_movl_MINUS0x1030__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442330)
  store %struct.Memory* %call_442330, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 442336	 Bytes: 3
  %loadMem_442336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442336 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442336)
  store %struct.Memory* %call_442336, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1030(%rbp)	 RIP: 442339	 Bytes: 6
  %loadMem_442339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442339 = call %struct.Memory* @routine_movl__eax__MINUS0x1030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442339)
  store %struct.Memory* %call_442339, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44228f	 RIP: 44233f	 Bytes: 5
  %loadMem_44233f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44233f = call %struct.Memory* @routine_jmpq_.L_44228f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44233f, i64 -176, i64 5)
  store %struct.Memory* %call_44233f, %struct.Memory** %MEMORY

  br label %block_.L_44228f

  ; Code: .L_442344:	 RIP: 442344	 Bytes: 0
block_.L_442344:

  ; Code: leaq -0x200(%rbp), %rcx	 RIP: 442344	 Bytes: 7
  %loadMem_442344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442344 = call %struct.Memory* @routine_leaq_MINUS0x200__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442344)
  store %struct.Memory* %call_442344, %struct.Memory** %MEMORY

  ; Code: movl -0x64(%rbp), %edi	 RIP: 44234b	 Bytes: 3
  %loadMem_44234b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44234b = call %struct.Memory* @routine_movl_MINUS0x64__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44234b)
  store %struct.Memory* %call_44234b, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rsi	 RIP: 44234e	 Bytes: 4
  %loadMem_44234e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44234e = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44234e)
  store %struct.Memory* %call_44234e, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 442352	 Bytes: 4
  %loadMem_442352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442352 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442352)
  store %struct.Memory* %call_442352, %struct.Memory** %MEMORY

  ; Code: addq $0x3cf4, %rax	 RIP: 442356	 Bytes: 6
  %loadMem_442356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442356 = call %struct.Memory* @routine_addq__0x3cf4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442356)
  store %struct.Memory* %call_442356, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 44235c	 Bytes: 3
  %loadMem_44235c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44235c = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44235c)
  store %struct.Memory* %call_44235c, %struct.Memory** %MEMORY

  ; Code: callq .find_half_and_false_eyes	 RIP: 44235f	 Bytes: 5
  %loadMem1_44235f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44235f = call %struct.Memory* @routine_callq_.find_half_and_false_eyes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44235f, i64 -16463, i64 5, i64 5)
  store %struct.Memory* %call1_44235f, %struct.Memory** %MEMORY

  %loadMem2_44235f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44235f = load i64, i64* %3
  %call2_44235f = call %struct.Memory* @sub_43e310.find_half_and_false_eyes(%struct.State* %0, i64  %loadPC_44235f, %struct.Memory* %loadMem2_44235f)
  store %struct.Memory* %call2_44235f, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 442364	 Bytes: 2
  %loadMem_442364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442364 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442364)
  store %struct.Memory* %call_442364, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 442366	 Bytes: 4
  %loadMem_442366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442366 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442366)
  store %struct.Memory* %call_442366, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x10bc(%rbp)	 RIP: 44236a	 Bytes: 6
  %loadMem_44236a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44236a = call %struct.Memory* @routine_movl__edi__MINUS0x10bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44236a)
  store %struct.Memory* %call_44236a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 442370	 Bytes: 3
  %loadMem_442370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442370 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442370)
  store %struct.Memory* %call_442370, %struct.Memory** %MEMORY

  ; Code: movl -0x10bc(%rbp), %esi	 RIP: 442373	 Bytes: 6
  %loadMem_442373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442373 = call %struct.Memory* @routine_movl_MINUS0x10bc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442373)
  store %struct.Memory* %call_442373, %struct.Memory** %MEMORY

  ; Code: movl -0x10bc(%rbp), %edx	 RIP: 442379	 Bytes: 6
  %loadMem_442379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442379 = call %struct.Memory* @routine_movl_MINUS0x10bc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442379)
  store %struct.Memory* %call_442379, %struct.Memory** %MEMORY

  ; Code: movl -0x10bc(%rbp), %ecx	 RIP: 44237f	 Bytes: 6
  %loadMem_44237f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44237f = call %struct.Memory* @routine_movl_MINUS0x10bc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44237f)
  store %struct.Memory* %call_44237f, %struct.Memory** %MEMORY

  ; Code: movl -0x10bc(%rbp), %r8d	 RIP: 442385	 Bytes: 7
  %loadMem_442385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442385 = call %struct.Memory* @routine_movl_MINUS0x10bc__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442385)
  store %struct.Memory* %call_442385, %struct.Memory** %MEMORY

  ; Code: callq .set_eyevalue	 RIP: 44238c	 Bytes: 5
  %loadMem1_44238c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44238c = call %struct.Memory* @routine_callq_.set_eyevalue(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44238c, i64 -36844, i64 5, i64 5)
  store %struct.Memory* %call1_44238c, %struct.Memory** %MEMORY

  %loadMem2_44238c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44238c = load i64, i64* %3
  %call2_44238c = call %struct.Memory* @sub_4393a0.set_eyevalue(%struct.State* %0, i64  %loadPC_44238c, %struct.Memory* %loadMem2_44238c)
  store %struct.Memory* %call2_44238c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1030(%rbp)	 RIP: 442391	 Bytes: 10
  %loadMem_442391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442391 = call %struct.Memory* @routine_movl__0x0__MINUS0x1030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442391)
  store %struct.Memory* %call_442391, %struct.Memory** %MEMORY

  ; Code: .L_44239b:	 RIP: 44239b	 Bytes: 0
  br label %block_.L_44239b
block_.L_44239b:

  ; Code: movl -0x1030(%rbp), %eax	 RIP: 44239b	 Bytes: 6
  %loadMem_44239b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44239b = call %struct.Memory* @routine_movl_MINUS0x1030__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44239b)
  store %struct.Memory* %call_44239b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 4423a1	 Bytes: 7
  %loadMem_4423a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423a1 = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423a1)
  store %struct.Memory* %call_4423a1, %struct.Memory** %MEMORY

  ; Code: jge .L_442c65	 RIP: 4423a8	 Bytes: 6
  %loadMem_4423a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423a8 = call %struct.Memory* @routine_jge_.L_442c65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423a8, i8* %BRANCH_TAKEN, i64 2237, i64 6, i64 6)
  store %struct.Memory* %call_4423a8, %struct.Memory** %MEMORY

  %loadBr_4423a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4423a8 = icmp eq i8 %loadBr_4423a8, 1
  br i1 %cmpBr_4423a8, label %block_.L_442c65, label %block_4423ae

block_4423ae:
  ; Code: movl $0x0, -0x1034(%rbp)	 RIP: 4423ae	 Bytes: 10
  %loadMem_4423ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423ae = call %struct.Memory* @routine_movl__0x0__MINUS0x1034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423ae)
  store %struct.Memory* %call_4423ae, %struct.Memory** %MEMORY

  ; Code: .L_4423b8:	 RIP: 4423b8	 Bytes: 0
  br label %block_.L_4423b8
block_.L_4423b8:

  ; Code: movl -0x1034(%rbp), %eax	 RIP: 4423b8	 Bytes: 6
  %loadMem_4423b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423b8 = call %struct.Memory* @routine_movl_MINUS0x1034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423b8)
  store %struct.Memory* %call_4423b8, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 4423be	 Bytes: 7
  %loadMem_4423be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423be = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423be)
  store %struct.Memory* %call_4423be, %struct.Memory** %MEMORY

  ; Code: jge .L_442c4c	 RIP: 4423c5	 Bytes: 6
  %loadMem_4423c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423c5 = call %struct.Memory* @routine_jge_.L_442c4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423c5, i8* %BRANCH_TAKEN, i64 2183, i64 6, i64 6)
  store %struct.Memory* %call_4423c5, %struct.Memory** %MEMORY

  %loadBr_4423c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4423c5 = icmp eq i8 %loadBr_4423c5, 1
  br i1 %cmpBr_4423c5, label %block_.L_442c4c, label %block_4423cb

block_4423cb:
  ; Code: imull $0x14, -0x1030(%rbp), %eax	 RIP: 4423cb	 Bytes: 7
  %loadMem_4423cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423cb = call %struct.Memory* @routine_imull__0x14__MINUS0x1030__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423cb)
  store %struct.Memory* %call_4423cb, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 4423d2	 Bytes: 3
  %loadMem_4423d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423d2 = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423d2)
  store %struct.Memory* %call_4423d2, %struct.Memory** %MEMORY

  ; Code: addl -0x1034(%rbp), %eax	 RIP: 4423d5	 Bytes: 6
  %loadMem_4423d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423d5 = call %struct.Memory* @routine_addl_MINUS0x1034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423d5)
  store %struct.Memory* %call_4423d5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1058(%rbp)	 RIP: 4423db	 Bytes: 6
  %loadMem_4423db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423db = call %struct.Memory* @routine_movl__eax__MINUS0x1058__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423db)
  store %struct.Memory* %call_4423db, %struct.Memory** %MEMORY

  ; Code: movslq -0x1058(%rbp), %rcx	 RIP: 4423e1	 Bytes: 7
  %loadMem_4423e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423e1 = call %struct.Memory* @routine_movslq_MINUS0x1058__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423e1)
  store %struct.Memory* %call_4423e1, %struct.Memory** %MEMORY

  ; Code: movsbl -0x200(%rbp,%rcx,1), %eax	 RIP: 4423e8	 Bytes: 8
  %loadMem_4423e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423e8 = call %struct.Memory* @routine_movsbl_MINUS0x200__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423e8)
  store %struct.Memory* %call_4423e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 4423f0	 Bytes: 3
  %loadMem_4423f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423f0 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423f0)
  store %struct.Memory* %call_4423f0, %struct.Memory** %MEMORY

  ; Code: jle .L_442c33	 RIP: 4423f3	 Bytes: 6
  %loadMem_4423f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423f3 = call %struct.Memory* @routine_jle_.L_442c33(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423f3, i8* %BRANCH_TAKEN, i64 2112, i64 6, i64 6)
  store %struct.Memory* %call_4423f3, %struct.Memory** %MEMORY

  %loadBr_4423f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4423f3 = icmp eq i8 %loadBr_4423f3, 1
  br i1 %cmpBr_4423f3, label %block_.L_442c33, label %block_4423f9

block_4423f9:
  ; Code: movq -0x70(%rbp), %rax	 RIP: 4423f9	 Bytes: 4
  %loadMem_4423f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423f9 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423f9)
  store %struct.Memory* %call_4423f9, %struct.Memory** %MEMORY

  ; Code: movslq -0x1058(%rbp), %rcx	 RIP: 4423fd	 Bytes: 7
  %loadMem_4423fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423fd = call %struct.Memory* @routine_movslq_MINUS0x1058__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423fd)
  store %struct.Memory* %call_4423fd, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 442404	 Bytes: 4
  %loadMem_442404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442404 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442404)
  store %struct.Memory* %call_442404, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 442408	 Bytes: 3
  %loadMem_442408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442408 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442408)
  store %struct.Memory* %call_442408, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 44240b	 Bytes: 3
  %loadMem_44240b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44240b = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44240b)
  store %struct.Memory* %call_44240b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1058(%rbp), %edx	 RIP: 44240e	 Bytes: 6
  %loadMem_44240e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44240e = call %struct.Memory* @routine_cmpl_MINUS0x1058__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44240e)
  store %struct.Memory* %call_44240e, %struct.Memory** %MEMORY

  ; Code: jne .L_442c33	 RIP: 442414	 Bytes: 6
  %loadMem_442414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442414 = call %struct.Memory* @routine_jne_.L_442c33(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442414, i8* %BRANCH_TAKEN, i64 2079, i64 6, i64 6)
  store %struct.Memory* %call_442414, %struct.Memory** %MEMORY

  %loadBr_442414 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442414 = icmp eq i8 %loadBr_442414, 1
  br i1 %cmpBr_442414, label %block_.L_442c33, label %block_44241a

block_44241a:
  ; Code: leaq -0x9e0(%rbp), %rsi	 RIP: 44241a	 Bytes: 7
  %loadMem_44241a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44241a = call %struct.Memory* @routine_leaq_MINUS0x9e0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44241a)
  store %struct.Memory* %call_44241a, %struct.Memory** %MEMORY

  ; Code: leaq -0x1024(%rbp), %rdx	 RIP: 442421	 Bytes: 7
  %loadMem_442421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442421 = call %struct.Memory* @routine_leaq_MINUS0x1024__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442421)
  store %struct.Memory* %call_442421, %struct.Memory** %MEMORY

  ; Code: leaq -0x1028(%rbp), %rcx	 RIP: 442428	 Bytes: 7
  %loadMem_442428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442428 = call %struct.Memory* @routine_leaq_MINUS0x1028__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442428)
  store %struct.Memory* %call_442428, %struct.Memory** %MEMORY

  ; Code: leaq -0x102c(%rbp), %r8	 RIP: 44242f	 Bytes: 7
  %loadMem_44242f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44242f = call %struct.Memory* @routine_leaq_MINUS0x102c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44242f)
  store %struct.Memory* %call_44242f, %struct.Memory** %MEMORY

  ; Code: movq $0x58898d, %rax	 RIP: 442436	 Bytes: 10
  %loadMem_442436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442436 = call %struct.Memory* @routine_movq__0x58898d___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442436)
  store %struct.Memory* %call_442436, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x105c(%rbp)	 RIP: 442440	 Bytes: 10
  %loadMem_442440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442440 = call %struct.Memory* @routine_movl__0x0__MINUS0x105c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442440)
  store %struct.Memory* %call_442440, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1068(%rbp)	 RIP: 44244a	 Bytes: 7
  %loadMem_44244a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44244a = call %struct.Memory* @routine_movq__rax__MINUS0x1068__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44244a)
  store %struct.Memory* %call_44244a, %struct.Memory** %MEMORY

  ; Code: movl -0x1058(%rbp), %edi	 RIP: 442451	 Bytes: 6
  %loadMem_442451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442451 = call %struct.Memory* @routine_movl_MINUS0x1058__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442451)
  store %struct.Memory* %call_442451, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %r9	 RIP: 442457	 Bytes: 4
  %loadMem_442457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442457 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442457)
  store %struct.Memory* %call_442457, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 44245b	 Bytes: 4
  %loadMem_44245b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44245b = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44245b)
  store %struct.Memory* %call_44245b, %struct.Memory** %MEMORY

  ; Code: addq $0x3cf4, %rax	 RIP: 44245f	 Bytes: 6
  %loadMem_44245f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44245f = call %struct.Memory* @routine_addq__0x3cf4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44245f)
  store %struct.Memory* %call_44245f, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rsp)	 RIP: 442465	 Bytes: 4
  %loadMem_442465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442465 = call %struct.Memory* @routine_movq__rax____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442465)
  store %struct.Memory* %call_442465, %struct.Memory** %MEMORY

  ; Code: callq .compute_eyes_pessimistic	 RIP: 442469	 Bytes: 5
  %loadMem1_442469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442469 = call %struct.Memory* @routine_callq_.compute_eyes_pessimistic(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442469, i64 -29113, i64 5, i64 5)
  store %struct.Memory* %call1_442469, %struct.Memory** %MEMORY

  %loadMem2_442469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442469 = load i64, i64* %3
  %call2_442469 = call %struct.Memory* @sub_43b2b0.compute_eyes_pessimistic(%struct.State* %0, i64  %loadPC_442469, %struct.Memory* %loadMem2_442469)
  store %struct.Memory* %call2_442469, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x106c(%rbp)	 RIP: 44246e	 Bytes: 10
  %loadMem_44246e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44246e = call %struct.Memory* @routine_movl__0x0__MINUS0x106c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44246e)
  store %struct.Memory* %call_44246e, %struct.Memory** %MEMORY

  ; Code: .L_442478:	 RIP: 442478	 Bytes: 0
  br label %block_.L_442478
block_.L_442478:

  ; Code: movl -0x106c(%rbp), %eax	 RIP: 442478	 Bytes: 6
  %loadMem_442478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442478 = call %struct.Memory* @routine_movl_MINUS0x106c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442478)
  store %struct.Memory* %call_442478, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 44247e	 Bytes: 7
  %loadMem_44247e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44247e = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44247e)
  store %struct.Memory* %call_44247e, %struct.Memory** %MEMORY

  ; Code: jge .L_44255d	 RIP: 442485	 Bytes: 6
  %loadMem_442485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442485 = call %struct.Memory* @routine_jge_.L_44255d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442485, i8* %BRANCH_TAKEN, i64 216, i64 6, i64 6)
  store %struct.Memory* %call_442485, %struct.Memory** %MEMORY

  %loadBr_442485 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442485 = icmp eq i8 %loadBr_442485, 1
  br i1 %cmpBr_442485, label %block_.L_44255d, label %block_44248b

block_44248b:
  ; Code: movl $0x0, -0x1070(%rbp)	 RIP: 44248b	 Bytes: 10
  %loadMem_44248b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44248b = call %struct.Memory* @routine_movl__0x0__MINUS0x1070__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44248b)
  store %struct.Memory* %call_44248b, %struct.Memory** %MEMORY

  ; Code: .L_442495:	 RIP: 442495	 Bytes: 0
  br label %block_.L_442495
block_.L_442495:

  ; Code: movl -0x1070(%rbp), %eax	 RIP: 442495	 Bytes: 6
  %loadMem_442495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442495 = call %struct.Memory* @routine_movl_MINUS0x1070__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442495)
  store %struct.Memory* %call_442495, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 44249b	 Bytes: 7
  %loadMem_44249b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44249b = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44249b)
  store %struct.Memory* %call_44249b, %struct.Memory** %MEMORY

  ; Code: jge .L_442544	 RIP: 4424a2	 Bytes: 6
  %loadMem_4424a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424a2 = call %struct.Memory* @routine_jge_.L_442544(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424a2, i8* %BRANCH_TAKEN, i64 162, i64 6, i64 6)
  store %struct.Memory* %call_4424a2, %struct.Memory** %MEMORY

  %loadBr_4424a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4424a2 = icmp eq i8 %loadBr_4424a2, 1
  br i1 %cmpBr_4424a2, label %block_.L_442544, label %block_4424a8

block_4424a8:
  ; Code: imull $0x14, -0x106c(%rbp), %eax	 RIP: 4424a8	 Bytes: 7
  %loadMem_4424a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424a8 = call %struct.Memory* @routine_imull__0x14__MINUS0x106c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424a8)
  store %struct.Memory* %call_4424a8, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 4424af	 Bytes: 3
  %loadMem_4424af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424af = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424af)
  store %struct.Memory* %call_4424af, %struct.Memory** %MEMORY

  ; Code: addl -0x1070(%rbp), %eax	 RIP: 4424b2	 Bytes: 6
  %loadMem_4424b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424b2 = call %struct.Memory* @routine_addl_MINUS0x1070__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424b2)
  store %struct.Memory* %call_4424b2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4424b8	 Bytes: 3
  %loadMem_4424b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424b8 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424b8)
  store %struct.Memory* %call_4424b8, %struct.Memory** %MEMORY

  ; Code: movsbl -0x200(%rbp,%rcx,1), %eax	 RIP: 4424bb	 Bytes: 8
  %loadMem_4424bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424bb = call %struct.Memory* @routine_movsbl_MINUS0x200__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424bb)
  store %struct.Memory* %call_4424bb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 4424c3	 Bytes: 3
  %loadMem_4424c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424c3 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424c3)
  store %struct.Memory* %call_4424c3, %struct.Memory** %MEMORY

  ; Code: jle .L_44252b	 RIP: 4424c6	 Bytes: 6
  %loadMem_4424c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424c6 = call %struct.Memory* @routine_jle_.L_44252b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424c6, i8* %BRANCH_TAKEN, i64 101, i64 6, i64 6)
  store %struct.Memory* %call_4424c6, %struct.Memory** %MEMORY

  %loadBr_4424c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4424c6 = icmp eq i8 %loadBr_4424c6, 1
  br i1 %cmpBr_4424c6, label %block_.L_44252b, label %block_4424cc

block_4424cc:
  ; Code: movq -0x70(%rbp), %rax	 RIP: 4424cc	 Bytes: 4
  %loadMem_4424cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424cc = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424cc)
  store %struct.Memory* %call_4424cc, %struct.Memory** %MEMORY

  ; Code: imull $0x14, -0x106c(%rbp), %ecx	 RIP: 4424d0	 Bytes: 7
  %loadMem_4424d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424d0 = call %struct.Memory* @routine_imull__0x14__MINUS0x106c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424d0)
  store %struct.Memory* %call_4424d0, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %ecx	 RIP: 4424d7	 Bytes: 3
  %loadMem_4424d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424d7 = call %struct.Memory* @routine_addl__0x15___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424d7)
  store %struct.Memory* %call_4424d7, %struct.Memory** %MEMORY

  ; Code: addl -0x1070(%rbp), %ecx	 RIP: 4424da	 Bytes: 6
  %loadMem_4424da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424da = call %struct.Memory* @routine_addl_MINUS0x1070__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424da)
  store %struct.Memory* %call_4424da, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4424e0	 Bytes: 3
  %loadMem_4424e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424e0 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424e0)
  store %struct.Memory* %call_4424e0, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rdx, %rdx	 RIP: 4424e3	 Bytes: 4
  %loadMem_4424e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424e3 = call %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424e3)
  store %struct.Memory* %call_4424e3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4424e7	 Bytes: 3
  %loadMem_4424e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424e7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424e7)
  store %struct.Memory* %call_4424e7, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 4424ea	 Bytes: 3
  %loadMem_4424ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424ea = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424ea)
  store %struct.Memory* %call_4424ea, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1058(%rbp), %ecx	 RIP: 4424ed	 Bytes: 6
  %loadMem_4424ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424ed = call %struct.Memory* @routine_cmpl_MINUS0x1058__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424ed)
  store %struct.Memory* %call_4424ed, %struct.Memory** %MEMORY

  ; Code: jne .L_44252b	 RIP: 4424f3	 Bytes: 6
  %loadMem_4424f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424f3 = call %struct.Memory* @routine_jne_.L_44252b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424f3, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_4424f3, %struct.Memory** %MEMORY

  %loadBr_4424f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4424f3 = icmp eq i8 %loadBr_4424f3, 1
  br i1 %cmpBr_4424f3, label %block_.L_44252b, label %block_4424f9

block_4424f9:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 4424f9	 Bytes: 4
  %loadMem_4424f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424f9 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424f9)
  store %struct.Memory* %call_4424f9, %struct.Memory** %MEMORY

  ; Code: imull $0x14, -0x106c(%rbp), %ecx	 RIP: 4424fd	 Bytes: 7
  %loadMem_4424fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4424fd = call %struct.Memory* @routine_imull__0x14__MINUS0x106c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4424fd)
  store %struct.Memory* %call_4424fd, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %ecx	 RIP: 442504	 Bytes: 3
  %loadMem_442504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442504 = call %struct.Memory* @routine_addl__0x15___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442504)
  store %struct.Memory* %call_442504, %struct.Memory** %MEMORY

  ; Code: addl -0x1070(%rbp), %ecx	 RIP: 442507	 Bytes: 6
  %loadMem_442507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442507 = call %struct.Memory* @routine_addl_MINUS0x1070__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442507)
  store %struct.Memory* %call_442507, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 44250d	 Bytes: 3
  %loadMem_44250d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44250d = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44250d)
  store %struct.Memory* %call_44250d, %struct.Memory** %MEMORY

  ; Code: movsbl 0x88bc(%rax,%rdx,1), %ecx	 RIP: 442510	 Bytes: 8
  %loadMem_442510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442510 = call %struct.Memory* @routine_movsbl_0x88bc__rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442510)
  store %struct.Memory* %call_442510, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 442518	 Bytes: 3
  %loadMem_442518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442518 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442518)
  store %struct.Memory* %call_442518, %struct.Memory** %MEMORY

  ; Code: je .L_44252b	 RIP: 44251b	 Bytes: 6
  %loadMem_44251b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44251b = call %struct.Memory* @routine_je_.L_44252b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44251b, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_44251b, %struct.Memory** %MEMORY

  %loadBr_44251b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44251b = icmp eq i8 %loadBr_44251b, 1
  br i1 %cmpBr_44251b, label %block_.L_44252b, label %block_442521

block_442521:
  ; Code: movl $0x0, -0x1024(%rbp)	 RIP: 442521	 Bytes: 10
  %loadMem_442521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442521 = call %struct.Memory* @routine_movl__0x0__MINUS0x1024__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442521)
  store %struct.Memory* %call_442521, %struct.Memory** %MEMORY

  ; Code: .L_44252b:	 RIP: 44252b	 Bytes: 0
  br label %block_.L_44252b
block_.L_44252b:

  ; Code: jmpq .L_442530	 RIP: 44252b	 Bytes: 5
  %loadMem_44252b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44252b = call %struct.Memory* @routine_jmpq_.L_442530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44252b, i64 5, i64 5)
  store %struct.Memory* %call_44252b, %struct.Memory** %MEMORY

  br label %block_.L_442530

  ; Code: .L_442530:	 RIP: 442530	 Bytes: 0
block_.L_442530:

  ; Code: movl -0x1070(%rbp), %eax	 RIP: 442530	 Bytes: 6
  %loadMem_442530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442530 = call %struct.Memory* @routine_movl_MINUS0x1070__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442530)
  store %struct.Memory* %call_442530, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 442536	 Bytes: 3
  %loadMem_442536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442536 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442536)
  store %struct.Memory* %call_442536, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1070(%rbp)	 RIP: 442539	 Bytes: 6
  %loadMem_442539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442539 = call %struct.Memory* @routine_movl__eax__MINUS0x1070__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442539)
  store %struct.Memory* %call_442539, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442495	 RIP: 44253f	 Bytes: 5
  %loadMem_44253f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44253f = call %struct.Memory* @routine_jmpq_.L_442495(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44253f, i64 -170, i64 5)
  store %struct.Memory* %call_44253f, %struct.Memory** %MEMORY

  br label %block_.L_442495

  ; Code: .L_442544:	 RIP: 442544	 Bytes: 0
block_.L_442544:

  ; Code: jmpq .L_442549	 RIP: 442544	 Bytes: 5
  %loadMem_442544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442544 = call %struct.Memory* @routine_jmpq_.L_442549(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442544, i64 5, i64 5)
  store %struct.Memory* %call_442544, %struct.Memory** %MEMORY

  br label %block_.L_442549

  ; Code: .L_442549:	 RIP: 442549	 Bytes: 0
block_.L_442549:

  ; Code: movl -0x106c(%rbp), %eax	 RIP: 442549	 Bytes: 6
  %loadMem_442549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442549 = call %struct.Memory* @routine_movl_MINUS0x106c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442549)
  store %struct.Memory* %call_442549, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44254f	 Bytes: 3
  %loadMem_44254f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44254f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44254f)
  store %struct.Memory* %call_44254f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x106c(%rbp)	 RIP: 442552	 Bytes: 6
  %loadMem_442552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442552 = call %struct.Memory* @routine_movl__eax__MINUS0x106c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442552)
  store %struct.Memory* %call_442552, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442478	 RIP: 442558	 Bytes: 5
  %loadMem_442558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442558 = call %struct.Memory* @routine_jmpq_.L_442478(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442558, i64 -224, i64 5)
  store %struct.Memory* %call_442558, %struct.Memory** %MEMORY

  br label %block_.L_442478

  ; Code: .L_44255d:	 RIP: 44255d	 Bytes: 0
block_.L_44255d:

  ; Code: movl $0x0, -0x106c(%rbp)	 RIP: 44255d	 Bytes: 10
  %loadMem_44255d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44255d = call %struct.Memory* @routine_movl__0x0__MINUS0x106c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44255d)
  store %struct.Memory* %call_44255d, %struct.Memory** %MEMORY

  ; Code: .L_442567:	 RIP: 442567	 Bytes: 0
  br label %block_.L_442567
block_.L_442567:

  ; Code: movl -0x106c(%rbp), %eax	 RIP: 442567	 Bytes: 6
  %loadMem_442567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442567 = call %struct.Memory* @routine_movl_MINUS0x106c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442567)
  store %struct.Memory* %call_442567, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 44256d	 Bytes: 7
  %loadMem_44256d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44256d = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44256d)
  store %struct.Memory* %call_44256d, %struct.Memory** %MEMORY

  ; Code: jge .L_4426a3	 RIP: 442574	 Bytes: 6
  %loadMem_442574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442574 = call %struct.Memory* @routine_jge_.L_4426a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442574, i8* %BRANCH_TAKEN, i64 303, i64 6, i64 6)
  store %struct.Memory* %call_442574, %struct.Memory** %MEMORY

  %loadBr_442574 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442574 = icmp eq i8 %loadBr_442574, 1
  br i1 %cmpBr_442574, label %block_.L_4426a3, label %block_44257a

block_44257a:
  ; Code: movl $0x0, -0x1070(%rbp)	 RIP: 44257a	 Bytes: 10
  %loadMem_44257a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44257a = call %struct.Memory* @routine_movl__0x0__MINUS0x1070__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44257a)
  store %struct.Memory* %call_44257a, %struct.Memory** %MEMORY

  ; Code: .L_442584:	 RIP: 442584	 Bytes: 0
  br label %block_.L_442584
block_.L_442584:

  ; Code: movl -0x1070(%rbp), %eax	 RIP: 442584	 Bytes: 6
  %loadMem_442584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442584 = call %struct.Memory* @routine_movl_MINUS0x1070__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442584)
  store %struct.Memory* %call_442584, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 44258a	 Bytes: 7
  %loadMem_44258a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44258a = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44258a)
  store %struct.Memory* %call_44258a, %struct.Memory** %MEMORY

  ; Code: jge .L_44268a	 RIP: 442591	 Bytes: 6
  %loadMem_442591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442591 = call %struct.Memory* @routine_jge_.L_44268a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442591, i8* %BRANCH_TAKEN, i64 249, i64 6, i64 6)
  store %struct.Memory* %call_442591, %struct.Memory** %MEMORY

  %loadBr_442591 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442591 = icmp eq i8 %loadBr_442591, 1
  br i1 %cmpBr_442591, label %block_.L_44268a, label %block_442597

block_442597:
  ; Code: movq -0x70(%rbp), %rax	 RIP: 442597	 Bytes: 4
  %loadMem_442597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442597 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442597)
  store %struct.Memory* %call_442597, %struct.Memory** %MEMORY

  ; Code: imull $0x14, -0x106c(%rbp), %ecx	 RIP: 44259b	 Bytes: 7
  %loadMem_44259b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44259b = call %struct.Memory* @routine_imull__0x14__MINUS0x106c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44259b)
  store %struct.Memory* %call_44259b, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %ecx	 RIP: 4425a2	 Bytes: 3
  %loadMem_4425a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425a2 = call %struct.Memory* @routine_addl__0x15___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425a2)
  store %struct.Memory* %call_4425a2, %struct.Memory** %MEMORY

  ; Code: addl -0x1070(%rbp), %ecx	 RIP: 4425a5	 Bytes: 6
  %loadMem_4425a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425a5 = call %struct.Memory* @routine_addl_MINUS0x1070__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425a5)
  store %struct.Memory* %call_4425a5, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4425ab	 Bytes: 3
  %loadMem_4425ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425ab = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425ab)
  store %struct.Memory* %call_4425ab, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rdx, %rdx	 RIP: 4425ae	 Bytes: 4
  %loadMem_4425ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425ae = call %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425ae)
  store %struct.Memory* %call_4425ae, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4425b2	 Bytes: 3
  %loadMem_4425b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425b2 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425b2)
  store %struct.Memory* %call_4425b2, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 4425b5	 Bytes: 3
  %loadMem_4425b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425b5 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425b5)
  store %struct.Memory* %call_4425b5, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1058(%rbp), %ecx	 RIP: 4425b8	 Bytes: 6
  %loadMem_4425b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425b8 = call %struct.Memory* @routine_cmpl_MINUS0x1058__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425b8)
  store %struct.Memory* %call_4425b8, %struct.Memory** %MEMORY

  ; Code: jne .L_442671	 RIP: 4425be	 Bytes: 6
  %loadMem_4425be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425be = call %struct.Memory* @routine_jne_.L_442671(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425be, i8* %BRANCH_TAKEN, i64 179, i64 6, i64 6)
  store %struct.Memory* %call_4425be, %struct.Memory** %MEMORY

  %loadBr_4425be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4425be = icmp eq i8 %loadBr_4425be, 1
  br i1 %cmpBr_4425be, label %block_.L_442671, label %block_4425c4

block_4425c4:
  ; Code: imull $0x14, -0x106c(%rbp), %eax	 RIP: 4425c4	 Bytes: 7
  %loadMem_4425c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425c4 = call %struct.Memory* @routine_imull__0x14__MINUS0x106c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425c4)
  store %struct.Memory* %call_4425c4, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 4425cb	 Bytes: 3
  %loadMem_4425cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425cb = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425cb)
  store %struct.Memory* %call_4425cb, %struct.Memory** %MEMORY

  ; Code: addl -0x1070(%rbp), %eax	 RIP: 4425ce	 Bytes: 6
  %loadMem_4425ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425ce = call %struct.Memory* @routine_addl_MINUS0x1070__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425ce)
  store %struct.Memory* %call_4425ce, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4425d4	 Bytes: 3
  %loadMem_4425d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425d4 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425d4)
  store %struct.Memory* %call_4425d4, %struct.Memory** %MEMORY

  ; Code: movsbl -0x200(%rbp,%rcx,1), %eax	 RIP: 4425d7	 Bytes: 8
  %loadMem_4425d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425d7 = call %struct.Memory* @routine_movsbl_MINUS0x200__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425d7)
  store %struct.Memory* %call_4425d7, %struct.Memory** %MEMORY

  ; Code: imull $0x14, -0x106c(%rbp), %edx	 RIP: 4425df	 Bytes: 7
  %loadMem_4425df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425df = call %struct.Memory* @routine_imull__0x14__MINUS0x106c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425df)
  store %struct.Memory* %call_4425df, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %edx	 RIP: 4425e6	 Bytes: 3
  %loadMem_4425e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425e6 = call %struct.Memory* @routine_addl__0x15___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425e6)
  store %struct.Memory* %call_4425e6, %struct.Memory** %MEMORY

  ; Code: addl -0x1070(%rbp), %edx	 RIP: 4425e9	 Bytes: 6
  %loadMem_4425e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425e9 = call %struct.Memory* @routine_addl_MINUS0x1070__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425e9)
  store %struct.Memory* %call_4425e9, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4425ef	 Bytes: 3
  %loadMem_4425ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425ef = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425ef)
  store %struct.Memory* %call_4425ef, %struct.Memory** %MEMORY

  ; Code: movsbl -0x390(%rbp,%rcx,1), %edx	 RIP: 4425f2	 Bytes: 8
  %loadMem_4425f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425f2 = call %struct.Memory* @routine_movsbl_MINUS0x390__rbp__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425f2)
  store %struct.Memory* %call_4425f2, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4425fa	 Bytes: 2
  %loadMem_4425fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425fa = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425fa)
  store %struct.Memory* %call_4425fa, %struct.Memory** %MEMORY

  ; Code: jl .L_442667	 RIP: 4425fc	 Bytes: 6
  %loadMem_4425fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4425fc = call %struct.Memory* @routine_jl_.L_442667(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4425fc, i8* %BRANCH_TAKEN, i64 107, i64 6, i64 6)
  store %struct.Memory* %call_4425fc, %struct.Memory** %MEMORY

  %loadBr_4425fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4425fc = icmp eq i8 %loadBr_4425fc, 1
  br i1 %cmpBr_4425fc, label %block_.L_442667, label %block_442602

block_442602:
  ; Code: imull $0x14, -0x106c(%rbp), %eax	 RIP: 442602	 Bytes: 7
  %loadMem_442602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442602 = call %struct.Memory* @routine_imull__0x14__MINUS0x106c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442602)
  store %struct.Memory* %call_442602, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 442609	 Bytes: 3
  %loadMem_442609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442609 = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442609)
  store %struct.Memory* %call_442609, %struct.Memory** %MEMORY

  ; Code: addl -0x1070(%rbp), %eax	 RIP: 44260c	 Bytes: 6
  %loadMem_44260c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44260c = call %struct.Memory* @routine_addl_MINUS0x1070__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44260c)
  store %struct.Memory* %call_44260c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 442612	 Bytes: 3
  %loadMem_442612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442612 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442612)
  store %struct.Memory* %call_442612, %struct.Memory** %MEMORY

  ; Code: movsbl -0x200(%rbp,%rcx,1), %eax	 RIP: 442615	 Bytes: 8
  %loadMem_442615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442615 = call %struct.Memory* @routine_movsbl_MINUS0x200__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442615)
  store %struct.Memory* %call_442615, %struct.Memory** %MEMORY

  ; Code: imull $0x14, -0x106c(%rbp), %edx	 RIP: 44261d	 Bytes: 7
  %loadMem_44261d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44261d = call %struct.Memory* @routine_imull__0x14__MINUS0x106c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44261d)
  store %struct.Memory* %call_44261d, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %edx	 RIP: 442624	 Bytes: 3
  %loadMem_442624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442624 = call %struct.Memory* @routine_addl__0x15___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442624)
  store %struct.Memory* %call_442624, %struct.Memory** %MEMORY

  ; Code: addl -0x1070(%rbp), %edx	 RIP: 442627	 Bytes: 6
  %loadMem_442627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442627 = call %struct.Memory* @routine_addl_MINUS0x1070__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442627)
  store %struct.Memory* %call_442627, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 44262d	 Bytes: 3
  %loadMem_44262d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44262d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44262d)
  store %struct.Memory* %call_44262d, %struct.Memory** %MEMORY

  ; Code: movsbl -0x390(%rbp,%rcx,1), %edx	 RIP: 442630	 Bytes: 8
  %loadMem_442630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442630 = call %struct.Memory* @routine_movsbl_MINUS0x390__rbp__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442630)
  store %struct.Memory* %call_442630, %struct.Memory** %MEMORY

  ; Code: imull $0x3, %edx, %edx	 RIP: 442638	 Bytes: 3
  %loadMem_442638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442638 = call %struct.Memory* @routine_imull__0x3___edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442638)
  store %struct.Memory* %call_442638, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 44263b	 Bytes: 2
  %loadMem_44263b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44263b = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44263b)
  store %struct.Memory* %call_44263b, %struct.Memory** %MEMORY

  ; Code: jge .L_442671	 RIP: 44263d	 Bytes: 6
  %loadMem_44263d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44263d = call %struct.Memory* @routine_jge_.L_442671(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44263d, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_44263d, %struct.Memory** %MEMORY

  %loadBr_44263d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44263d = icmp eq i8 %loadBr_44263d, 1
  br i1 %cmpBr_44263d, label %block_.L_442671, label %block_442643

block_442643:
  ; Code: imull $0x14, -0x106c(%rbp), %eax	 RIP: 442643	 Bytes: 7
  %loadMem_442643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442643 = call %struct.Memory* @routine_imull__0x14__MINUS0x106c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442643)
  store %struct.Memory* %call_442643, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 44264a	 Bytes: 3
  %loadMem_44264a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44264a = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44264a)
  store %struct.Memory* %call_44264a, %struct.Memory** %MEMORY

  ; Code: addl -0x1070(%rbp), %eax	 RIP: 44264d	 Bytes: 6
  %loadMem_44264d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44264d = call %struct.Memory* @routine_addl_MINUS0x1070__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44264d)
  store %struct.Memory* %call_44264d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 442653	 Bytes: 3
  %loadMem_442653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442653 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442653)
  store %struct.Memory* %call_442653, %struct.Memory** %MEMORY

  ; Code: movsbl -0x390(%rbp,%rcx,1), %eax	 RIP: 442656	 Bytes: 8
  %loadMem_442656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442656 = call %struct.Memory* @routine_movsbl_MINUS0x390__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442656)
  store %struct.Memory* %call_442656, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 44265e	 Bytes: 3
  %loadMem_44265e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44265e = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44265e)
  store %struct.Memory* %call_44265e, %struct.Memory** %MEMORY

  ; Code: jle .L_442671	 RIP: 442661	 Bytes: 6
  %loadMem_442661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442661 = call %struct.Memory* @routine_jle_.L_442671(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442661, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_442661, %struct.Memory** %MEMORY

  %loadBr_442661 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442661 = icmp eq i8 %loadBr_442661, 1
  br i1 %cmpBr_442661, label %block_.L_442671, label %block_.L_442667

  ; Code: .L_442667:	 RIP: 442667	 Bytes: 0
block_.L_442667:

  ; Code: movl $0x0, -0x1024(%rbp)	 RIP: 442667	 Bytes: 10
  %loadMem_442667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442667 = call %struct.Memory* @routine_movl__0x0__MINUS0x1024__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442667)
  store %struct.Memory* %call_442667, %struct.Memory** %MEMORY

  ; Code: .L_442671:	 RIP: 442671	 Bytes: 0
  br label %block_.L_442671
block_.L_442671:

  ; Code: jmpq .L_442676	 RIP: 442671	 Bytes: 5
  %loadMem_442671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442671 = call %struct.Memory* @routine_jmpq_.L_442676(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442671, i64 5, i64 5)
  store %struct.Memory* %call_442671, %struct.Memory** %MEMORY

  br label %block_.L_442676

  ; Code: .L_442676:	 RIP: 442676	 Bytes: 0
block_.L_442676:

  ; Code: movl -0x1070(%rbp), %eax	 RIP: 442676	 Bytes: 6
  %loadMem_442676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442676 = call %struct.Memory* @routine_movl_MINUS0x1070__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442676)
  store %struct.Memory* %call_442676, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44267c	 Bytes: 3
  %loadMem_44267c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44267c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44267c)
  store %struct.Memory* %call_44267c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1070(%rbp)	 RIP: 44267f	 Bytes: 6
  %loadMem_44267f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44267f = call %struct.Memory* @routine_movl__eax__MINUS0x1070__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44267f)
  store %struct.Memory* %call_44267f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442584	 RIP: 442685	 Bytes: 5
  %loadMem_442685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442685 = call %struct.Memory* @routine_jmpq_.L_442584(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442685, i64 -257, i64 5)
  store %struct.Memory* %call_442685, %struct.Memory** %MEMORY

  br label %block_.L_442584

  ; Code: .L_44268a:	 RIP: 44268a	 Bytes: 0
block_.L_44268a:

  ; Code: jmpq .L_44268f	 RIP: 44268a	 Bytes: 5
  %loadMem_44268a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44268a = call %struct.Memory* @routine_jmpq_.L_44268f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44268a, i64 5, i64 5)
  store %struct.Memory* %call_44268a, %struct.Memory** %MEMORY

  br label %block_.L_44268f

  ; Code: .L_44268f:	 RIP: 44268f	 Bytes: 0
block_.L_44268f:

  ; Code: movl -0x106c(%rbp), %eax	 RIP: 44268f	 Bytes: 6
  %loadMem_44268f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44268f = call %struct.Memory* @routine_movl_MINUS0x106c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44268f)
  store %struct.Memory* %call_44268f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 442695	 Bytes: 3
  %loadMem_442695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442695 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442695)
  store %struct.Memory* %call_442695, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x106c(%rbp)	 RIP: 442698	 Bytes: 6
  %loadMem_442698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442698 = call %struct.Memory* @routine_movl__eax__MINUS0x106c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442698)
  store %struct.Memory* %call_442698, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442567	 RIP: 44269e	 Bytes: 5
  %loadMem_44269e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44269e = call %struct.Memory* @routine_jmpq_.L_442567(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44269e, i64 -311, i64 5)
  store %struct.Memory* %call_44269e, %struct.Memory** %MEMORY

  br label %block_.L_442567

  ; Code: .L_4426a3:	 RIP: 4426a3	 Bytes: 0
block_.L_4426a3:

  ; Code: leaq -0x9e0(%rbp), %rdi	 RIP: 4426a3	 Bytes: 7
  %loadMem_4426a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426a3 = call %struct.Memory* @routine_leaq_MINUS0x9e0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426a3)
  store %struct.Memory* %call_4426a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x1044(%rbp), %rax	 RIP: 4426aa	 Bytes: 7
  %loadMem_4426aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426aa = call %struct.Memory* @routine_movslq_MINUS0x1044__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426aa)
  store %struct.Memory* %call_4426aa, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1020(%rbp,%rax,4)	 RIP: 4426b1	 Bytes: 11
  %loadMem_4426b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426b1 = call %struct.Memory* @routine_movl__0x0__MINUS0x1020__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426b1)
  store %struct.Memory* %call_4426b1, %struct.Memory** %MEMORY

  ; Code: movslq -0x1044(%rbp), %rax	 RIP: 4426bc	 Bytes: 7
  %loadMem_4426bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426bc = call %struct.Memory* @routine_movslq_MINUS0x1044__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426bc)
  store %struct.Memory* %call_4426bc, %struct.Memory** %MEMORY

  ; Code: movl -0x9e0(%rbp), %ecx	 RIP: 4426c3	 Bytes: 6
  %loadMem_4426c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426c3 = call %struct.Memory* @routine_movl_MINUS0x9e0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426c3)
  store %struct.Memory* %call_4426c3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xd00(%rbp,%rax,4)	 RIP: 4426c9	 Bytes: 7
  %loadMem_4426c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426c9 = call %struct.Memory* @routine_movl__ecx__MINUS0xd00__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426c9)
  store %struct.Memory* %call_4426c9, %struct.Memory** %MEMORY

  ; Code: movl -0x1024(%rbp), %ecx	 RIP: 4426d0	 Bytes: 6
  %loadMem_4426d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426d0 = call %struct.Memory* @routine_movl_MINUS0x1024__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426d0)
  store %struct.Memory* %call_4426d0, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 4426d6	 Bytes: 4
  %loadMem_4426d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426d6 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426d6)
  store %struct.Memory* %call_4426d6, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %ecx	 RIP: 4426da	 Bytes: 2
  %loadMem_4426da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426da = call %struct.Memory* @routine_addl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426da)
  store %struct.Memory* %call_4426da, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 4426dc	 Bytes: 2
  %loadMem_4426dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426dc = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426dc)
  store %struct.Memory* %call_4426dc, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 4426de	 Bytes: 4
  %loadMem_4426de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426de = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426de)
  store %struct.Memory* %call_4426de, %struct.Memory** %MEMORY

  ; Code: movslq -0x1058(%rbp), %rdx	 RIP: 4426e2	 Bytes: 7
  %loadMem_4426e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426e2 = call %struct.Memory* @routine_movslq_MINUS0x1058__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426e2)
  store %struct.Memory* %call_4426e2, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rdx, %rdx	 RIP: 4426e9	 Bytes: 4
  %loadMem_4426e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426e9 = call %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426e9)
  store %struct.Memory* %call_4426e9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4426ed	 Bytes: 3
  %loadMem_4426ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426ed = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426ed)
  store %struct.Memory* %call_4426ed, %struct.Memory** %MEMORY

  ; Code: movl -0x9e0(%rbp), %ecx	 RIP: 4426f0	 Bytes: 6
  %loadMem_4426f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426f0 = call %struct.Memory* @routine_movl_MINUS0x9e0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426f0)
  store %struct.Memory* %call_4426f0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rax)	 RIP: 4426f6	 Bytes: 3
  %loadMem_4426f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426f6 = call %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426f6)
  store %struct.Memory* %call_4426f6, %struct.Memory** %MEMORY

  ; Code: callq .eye_move_urgency	 RIP: 4426f9	 Bytes: 5
  %loadMem1_4426f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4426f9 = call %struct.Memory* @routine_callq_.eye_move_urgency(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4426f9, i64 -30041, i64 5, i64 5)
  store %struct.Memory* %call1_4426f9, %struct.Memory** %MEMORY

  %loadMem2_4426f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4426f9 = load i64, i64* %3
  %call2_4426f9 = call %struct.Memory* @sub_43b1a0.eye_move_urgency(%struct.State* %0, i64  %loadPC_4426f9, %struct.Memory* %loadMem2_4426f9)
  store %struct.Memory* %call2_4426f9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4426fe	 Bytes: 3
  %loadMem_4426fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4426fe = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4426fe)
  store %struct.Memory* %call_4426fe, %struct.Memory** %MEMORY

  ; Code: je .L_44278f	 RIP: 442701	 Bytes: 6
  %loadMem_442701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442701 = call %struct.Memory* @routine_je_.L_44278f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442701, i8* %BRANCH_TAKEN, i64 142, i64 6, i64 6)
  store %struct.Memory* %call_442701, %struct.Memory** %MEMORY

  %loadBr_442701 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442701 = icmp eq i8 %loadBr_442701, 1
  br i1 %cmpBr_442701, label %block_.L_44278f, label %block_442707

block_442707:
  ; Code: leaq -0x9e0(%rbp), %rdi	 RIP: 442707	 Bytes: 7
  %loadMem_442707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442707 = call %struct.Memory* @routine_leaq_MINUS0x9e0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442707)
  store %struct.Memory* %call_442707, %struct.Memory** %MEMORY

  ; Code: movl $0x32, -0x105c(%rbp)	 RIP: 44270e	 Bytes: 10
  %loadMem_44270e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44270e = call %struct.Memory* @routine_movl__0x32__MINUS0x105c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44270e)
  store %struct.Memory* %call_44270e, %struct.Memory** %MEMORY

  ; Code: callq .max_eyes	 RIP: 442718	 Bytes: 5
  %loadMem1_442718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442718 = call %struct.Memory* @routine_callq_.max_eyes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442718, i64 -30472, i64 5, i64 5)
  store %struct.Memory* %call1_442718, %struct.Memory** %MEMORY

  %loadMem2_442718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442718 = load i64, i64* %3
  %call2_442718 = call %struct.Memory* @sub_43b010.max_eyes(%struct.State* %0, i64  %loadPC_442718, %struct.Memory* %loadMem2_442718)
  store %struct.Memory* %call2_442718, %struct.Memory** %MEMORY

  ; Code: leaq -0x9e0(%rbp), %rdi	 RIP: 44271d	 Bytes: 7
  %loadMem_44271d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44271d = call %struct.Memory* @routine_leaq_MINUS0x9e0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44271d)
  store %struct.Memory* %call_44271d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10c0(%rbp)	 RIP: 442724	 Bytes: 6
  %loadMem_442724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442724 = call %struct.Memory* @routine_movl__eax__MINUS0x10c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442724)
  store %struct.Memory* %call_442724, %struct.Memory** %MEMORY

  ; Code: callq .min_eyes	 RIP: 44272a	 Bytes: 5
  %loadMem1_44272a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44272a = call %struct.Memory* @routine_callq_.min_eyes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44272a, i64 -27706, i64 5, i64 5)
  store %struct.Memory* %call1_44272a, %struct.Memory** %MEMORY

  %loadMem2_44272a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44272a = load i64, i64* %3
  %call2_44272a = call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* %0, i64  %loadPC_44272a, %struct.Memory* %loadMem2_44272a)
  store %struct.Memory* %call2_44272a, %struct.Memory** %MEMORY

  ; Code: movl -0x10c0(%rbp), %ecx	 RIP: 44272f	 Bytes: 6
  %loadMem_44272f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44272f = call %struct.Memory* @routine_movl_MINUS0x10c0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44272f)
  store %struct.Memory* %call_44272f, %struct.Memory** %MEMORY

  ; Code: subl %eax, %ecx	 RIP: 442735	 Bytes: 2
  %loadMem_442735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442735 = call %struct.Memory* @routine_subl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442735)
  store %struct.Memory* %call_442735, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 442737	 Bytes: 3
  %loadMem_442737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442737 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442737)
  store %struct.Memory* %call_442737, %struct.Memory** %MEMORY

  ; Code: jne .L_44274f	 RIP: 44273a	 Bytes: 6
  %loadMem_44273a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44273a = call %struct.Memory* @routine_jne_.L_44274f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44273a, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_44273a, %struct.Memory** %MEMORY

  %loadBr_44273a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44273a = icmp eq i8 %loadBr_44273a, 1
  br i1 %cmpBr_44273a, label %block_.L_44274f, label %block_442740

block_442740:
  ; Code: movl $0x46, -0x105c(%rbp)	 RIP: 442740	 Bytes: 10
  %loadMem_442740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442740 = call %struct.Memory* @routine_movl__0x46__MINUS0x105c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442740)
  store %struct.Memory* %call_442740, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442779	 RIP: 44274a	 Bytes: 5
  %loadMem_44274a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44274a = call %struct.Memory* @routine_jmpq_.L_442779(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44274a, i64 47, i64 5)
  store %struct.Memory* %call_44274a, %struct.Memory** %MEMORY

  br label %block_.L_442779

  ; Code: .L_44274f:	 RIP: 44274f	 Bytes: 0
block_.L_44274f:

  ; Code: leaq -0x9e0(%rbp), %rdi	 RIP: 44274f	 Bytes: 7
  %loadMem_44274f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44274f = call %struct.Memory* @routine_leaq_MINUS0x9e0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44274f)
  store %struct.Memory* %call_44274f, %struct.Memory** %MEMORY

  ; Code: callq .max_eyes	 RIP: 442756	 Bytes: 5
  %loadMem1_442756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442756 = call %struct.Memory* @routine_callq_.max_eyes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442756, i64 -30534, i64 5, i64 5)
  store %struct.Memory* %call1_442756, %struct.Memory** %MEMORY

  %loadMem2_442756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442756 = load i64, i64* %3
  %call2_442756 = call %struct.Memory* @sub_43b010.max_eyes(%struct.State* %0, i64  %loadPC_442756, %struct.Memory* %loadMem2_442756)
  store %struct.Memory* %call2_442756, %struct.Memory** %MEMORY

  ; Code: subl -0x1024(%rbp), %eax	 RIP: 44275b	 Bytes: 6
  %loadMem_44275b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44275b = call %struct.Memory* @routine_subl_MINUS0x1024__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44275b)
  store %struct.Memory* %call_44275b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 442761	 Bytes: 3
  %loadMem_442761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442761 = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442761)
  store %struct.Memory* %call_442761, %struct.Memory** %MEMORY

  ; Code: jne .L_442774	 RIP: 442764	 Bytes: 6
  %loadMem_442764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442764 = call %struct.Memory* @routine_jne_.L_442774(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442764, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_442764, %struct.Memory** %MEMORY

  %loadBr_442764 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442764 = icmp eq i8 %loadBr_442764, 1
  br i1 %cmpBr_442764, label %block_.L_442774, label %block_44276a

block_44276a:
  ; Code: movl $0x3c, -0x105c(%rbp)	 RIP: 44276a	 Bytes: 10
  %loadMem_44276a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44276a = call %struct.Memory* @routine_movl__0x3c__MINUS0x105c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44276a)
  store %struct.Memory* %call_44276a, %struct.Memory** %MEMORY

  ; Code: .L_442774:	 RIP: 442774	 Bytes: 0
  br label %block_.L_442774
block_.L_442774:

  ; Code: jmpq .L_442779	 RIP: 442774	 Bytes: 5
  %loadMem_442774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442774 = call %struct.Memory* @routine_jmpq_.L_442779(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442774, i64 5, i64 5)
  store %struct.Memory* %call_442774, %struct.Memory** %MEMORY

  br label %block_.L_442779

  ; Code: .L_442779:	 RIP: 442779	 Bytes: 0
block_.L_442779:

  ; Code: movq $0x57e1e9, %rax	 RIP: 442779	 Bytes: 10
  %loadMem_442779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442779 = call %struct.Memory* @routine_movq__0x57e1e9___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442779)
  store %struct.Memory* %call_442779, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1068(%rbp)	 RIP: 442783	 Bytes: 7
  %loadMem_442783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442783 = call %struct.Memory* @routine_movq__rax__MINUS0x1068__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442783)
  store %struct.Memory* %call_442783, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4427f1	 RIP: 44278a	 Bytes: 5
  %loadMem_44278a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44278a = call %struct.Memory* @routine_jmpq_.L_4427f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44278a, i64 103, i64 5)
  store %struct.Memory* %call_44278a, %struct.Memory** %MEMORY

  br label %block_.L_4427f1

  ; Code: .L_44278f:	 RIP: 44278f	 Bytes: 0
block_.L_44278f:

  ; Code: leaq -0x9e0(%rbp), %rdi	 RIP: 44278f	 Bytes: 7
  %loadMem_44278f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44278f = call %struct.Memory* @routine_leaq_MINUS0x9e0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44278f)
  store %struct.Memory* %call_44278f, %struct.Memory** %MEMORY

  ; Code: callq .max_eyes	 RIP: 442796	 Bytes: 5
  %loadMem1_442796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442796 = call %struct.Memory* @routine_callq_.max_eyes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442796, i64 -30598, i64 5, i64 5)
  store %struct.Memory* %call1_442796, %struct.Memory** %MEMORY

  %loadMem2_442796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442796 = load i64, i64* %3
  %call2_442796 = call %struct.Memory* @sub_43b010.max_eyes(%struct.State* %0, i64  %loadPC_442796, %struct.Memory* %loadMem2_442796)
  store %struct.Memory* %call2_442796, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1024(%rbp), %eax	 RIP: 44279b	 Bytes: 6
  %loadMem_44279b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44279b = call %struct.Memory* @routine_cmpl_MINUS0x1024__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44279b)
  store %struct.Memory* %call_44279b, %struct.Memory** %MEMORY

  ; Code: je .L_4427ec	 RIP: 4427a1	 Bytes: 6
  %loadMem_4427a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4427a1 = call %struct.Memory* @routine_je_.L_4427ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4427a1, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_4427a1, %struct.Memory** %MEMORY

  %loadBr_4427a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4427a1 = icmp eq i8 %loadBr_4427a1, 1
  br i1 %cmpBr_4427a1, label %block_.L_4427ec, label %block_4427a7

block_4427a7:
  ; Code: leaq -0x9e0(%rbp), %rdi	 RIP: 4427a7	 Bytes: 7
  %loadMem_4427a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4427a7 = call %struct.Memory* @routine_leaq_MINUS0x9e0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4427a7)
  store %struct.Memory* %call_4427a7, %struct.Memory** %MEMORY

  ; Code: callq .max_eyes	 RIP: 4427ae	 Bytes: 5
  %loadMem1_4427ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4427ae = call %struct.Memory* @routine_callq_.max_eyes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4427ae, i64 -30622, i64 5, i64 5)
  store %struct.Memory* %call1_4427ae, %struct.Memory** %MEMORY

  %loadMem2_4427ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4427ae = load i64, i64* %3
  %call2_4427ae = call %struct.Memory* @sub_43b010.max_eyes(%struct.State* %0, i64  %loadPC_4427ae, %struct.Memory* %loadMem2_4427ae)
  store %struct.Memory* %call2_4427ae, %struct.Memory** %MEMORY

  ; Code: subl -0x1024(%rbp), %eax	 RIP: 4427b3	 Bytes: 6
  %loadMem_4427b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4427b3 = call %struct.Memory* @routine_subl_MINUS0x1024__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4427b3)
  store %struct.Memory* %call_4427b3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 4427b9	 Bytes: 3
  %loadMem_4427b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4427b9 = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4427b9)
  store %struct.Memory* %call_4427b9, %struct.Memory** %MEMORY

  ; Code: jne .L_4427d1	 RIP: 4427bc	 Bytes: 6
  %loadMem_4427bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4427bc = call %struct.Memory* @routine_jne_.L_4427d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4427bc, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4427bc, %struct.Memory** %MEMORY

  %loadBr_4427bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4427bc = icmp eq i8 %loadBr_4427bc, 1
  br i1 %cmpBr_4427bc, label %block_.L_4427d1, label %block_4427c2

block_4427c2:
  ; Code: movl $0x28, -0x105c(%rbp)	 RIP: 4427c2	 Bytes: 10
  %loadMem_4427c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4427c2 = call %struct.Memory* @routine_movl__0x28__MINUS0x105c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4427c2)
  store %struct.Memory* %call_4427c2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4427db	 RIP: 4427cc	 Bytes: 5
  %loadMem_4427cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4427cc = call %struct.Memory* @routine_jmpq_.L_4427db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4427cc, i64 15, i64 5)
  store %struct.Memory* %call_4427cc, %struct.Memory** %MEMORY

  br label %block_.L_4427db

  ; Code: .L_4427d1:	 RIP: 4427d1	 Bytes: 0
block_.L_4427d1:

  ; Code: movl $0x1e, -0x105c(%rbp)	 RIP: 4427d1	 Bytes: 10
  %loadMem_4427d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4427d1 = call %struct.Memory* @routine_movl__0x1e__MINUS0x105c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4427d1)
  store %struct.Memory* %call_4427d1, %struct.Memory** %MEMORY

  ; Code: .L_4427db:	 RIP: 4427db	 Bytes: 0
  br label %block_.L_4427db
block_.L_4427db:

  ; Code: movq $0x57e1f4, %rax	 RIP: 4427db	 Bytes: 10
  %loadMem_4427db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4427db = call %struct.Memory* @routine_movq__0x57e1f4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4427db)
  store %struct.Memory* %call_4427db, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1068(%rbp)	 RIP: 4427e5	 Bytes: 7
  %loadMem_4427e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4427e5 = call %struct.Memory* @routine_movq__rax__MINUS0x1068__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4427e5)
  store %struct.Memory* %call_4427e5, %struct.Memory** %MEMORY

  ; Code: .L_4427ec:	 RIP: 4427ec	 Bytes: 0
  br label %block_.L_4427ec
block_.L_4427ec:

  ; Code: jmpq .L_4427f1	 RIP: 4427ec	 Bytes: 5
  %loadMem_4427ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4427ec = call %struct.Memory* @routine_jmpq_.L_4427f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4427ec, i64 5, i64 5)
  store %struct.Memory* %call_4427ec, %struct.Memory** %MEMORY

  br label %block_.L_4427f1

  ; Code: .L_4427f1:	 RIP: 4427f1	 Bytes: 0
block_.L_4427f1:

  ; Code: cmpl $0x0, -0x105c(%rbp)	 RIP: 4427f1	 Bytes: 7
  %loadMem_4427f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4427f1 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x105c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4427f1)
  store %struct.Memory* %call_4427f1, %struct.Memory** %MEMORY

  ; Code: jle .L_442c24	 RIP: 4427f8	 Bytes: 6
  %loadMem_4427f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4427f8 = call %struct.Memory* @routine_jle_.L_442c24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4427f8, i8* %BRANCH_TAKEN, i64 1068, i64 6, i64 6)
  store %struct.Memory* %call_4427f8, %struct.Memory** %MEMORY

  %loadBr_4427f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4427f8 = icmp eq i8 %loadBr_4427f8, 1
  br i1 %cmpBr_4427f8, label %block_.L_442c24, label %block_4427fe

block_4427fe:
  ; Code: cmpl $0x0, -0x40(%rbp)	 RIP: 4427fe	 Bytes: 4
  %loadMem_4427fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4427fe = call %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4427fe)
  store %struct.Memory* %call_4427fe, %struct.Memory** %MEMORY

  ; Code: je .L_4429cd	 RIP: 442802	 Bytes: 6
  %loadMem_442802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442802 = call %struct.Memory* @routine_je_.L_4429cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442802, i8* %BRANCH_TAKEN, i64 459, i64 6, i64 6)
  store %struct.Memory* %call_442802, %struct.Memory** %MEMORY

  %loadBr_442802 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442802 = icmp eq i8 %loadBr_442802, 1
  br i1 %cmpBr_442802, label %block_.L_4429cd, label %block_442808

block_442808:
  ; Code: cmpl $0x0, -0x1028(%rbp)	 RIP: 442808	 Bytes: 7
  %loadMem_442808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442808 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442808)
  store %struct.Memory* %call_442808, %struct.Memory** %MEMORY

  ; Code: je .L_4429cd	 RIP: 44280f	 Bytes: 6
  %loadMem_44280f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44280f = call %struct.Memory* @routine_je_.L_4429cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44280f, i8* %BRANCH_TAKEN, i64 446, i64 6, i64 6)
  store %struct.Memory* %call_44280f, %struct.Memory** %MEMORY

  %loadBr_44280f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44280f = icmp eq i8 %loadBr_44280f, 1
  br i1 %cmpBr_44280f, label %block_.L_4429cd, label %block_442815

block_442815:
  ; Code: movslq -0x1028(%rbp), %rax	 RIP: 442815	 Bytes: 7
  %loadMem_442815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442815 = call %struct.Memory* @routine_movslq_MINUS0x1028__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442815)
  store %struct.Memory* %call_442815, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x9d0(%rbp,%rax,4)	 RIP: 44281c	 Bytes: 8
  %loadMem_44281c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44281c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x9d0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44281c)
  store %struct.Memory* %call_44281c, %struct.Memory** %MEMORY

  ; Code: jle .L_442860	 RIP: 442824	 Bytes: 6
  %loadMem_442824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442824 = call %struct.Memory* @routine_jle_.L_442860(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442824, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_442824, %struct.Memory** %MEMORY

  %loadBr_442824 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442824 = icmp eq i8 %loadBr_442824, 1
  br i1 %cmpBr_442824, label %block_.L_442860, label %block_44282a

block_44282a:
  ; Code: movslq -0x1028(%rbp), %rax	 RIP: 44282a	 Bytes: 7
  %loadMem_44282a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44282a = call %struct.Memory* @routine_movslq_MINUS0x1028__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44282a)
  store %struct.Memory* %call_44282a, %struct.Memory** %MEMORY

  ; Code: movl -0x9d0(%rbp,%rax,4), %ecx	 RIP: 442831	 Bytes: 7
  %loadMem_442831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442831 = call %struct.Memory* @routine_movl_MINUS0x9d0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442831)
  store %struct.Memory* %call_442831, %struct.Memory** %MEMORY

  ; Code: addl -0x105c(%rbp), %ecx	 RIP: 442838	 Bytes: 6
  %loadMem_442838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442838 = call %struct.Memory* @routine_addl_MINUS0x105c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442838)
  store %struct.Memory* %call_442838, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x105c(%rbp)	 RIP: 44283e	 Bytes: 6
  %loadMem_44283e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44283e = call %struct.Memory* @routine_movl__ecx__MINUS0x105c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44283e)
  store %struct.Memory* %call_44283e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x62, -0x105c(%rbp)	 RIP: 442844	 Bytes: 7
  %loadMem_442844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442844 = call %struct.Memory* @routine_cmpl__0x62__MINUS0x105c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442844)
  store %struct.Memory* %call_442844, %struct.Memory** %MEMORY

  ; Code: jle .L_44285b	 RIP: 44284b	 Bytes: 6
  %loadMem_44284b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44284b = call %struct.Memory* @routine_jle_.L_44285b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44284b, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_44284b, %struct.Memory** %MEMORY

  %loadBr_44284b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44284b = icmp eq i8 %loadBr_44284b, 1
  br i1 %cmpBr_44284b, label %block_.L_44285b, label %block_442851

block_442851:
  ; Code: movl $0x62, -0x105c(%rbp)	 RIP: 442851	 Bytes: 10
  %loadMem_442851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442851 = call %struct.Memory* @routine_movl__0x62__MINUS0x105c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442851)
  store %struct.Memory* %call_442851, %struct.Memory** %MEMORY

  ; Code: .L_44285b:	 RIP: 44285b	 Bytes: 0
  br label %block_.L_44285b
block_.L_44285b:

  ; Code: jmpq .L_442860	 RIP: 44285b	 Bytes: 5
  %loadMem_44285b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44285b = call %struct.Memory* @routine_jmpq_.L_442860(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44285b, i64 5, i64 5)
  store %struct.Memory* %call_44285b, %struct.Memory** %MEMORY

  br label %block_.L_442860

  ; Code: .L_442860:	 RIP: 442860	 Bytes: 0
block_.L_442860:

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 442860	 Bytes: 8
  %loadMem_442860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442860 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442860)
  store %struct.Memory* %call_442860, %struct.Memory** %MEMORY

  ; Code: jne .L_442873	 RIP: 442868	 Bytes: 6
  %loadMem_442868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442868 = call %struct.Memory* @routine_jne_.L_442873(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442868, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_442868, %struct.Memory** %MEMORY

  %loadBr_442868 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442868 = icmp eq i8 %loadBr_442868, 1
  br i1 %cmpBr_442868, label %block_.L_442873, label %block_44286e

block_44286e:
  ; Code: jmpq .L_442902	 RIP: 44286e	 Bytes: 5
  %loadMem_44286e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44286e = call %struct.Memory* @routine_jmpq_.L_442902(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44286e, i64 148, i64 5)
  store %struct.Memory* %call_44286e, %struct.Memory** %MEMORY

  br label %block_.L_442902

  ; Code: .L_442873:	 RIP: 442873	 Bytes: 0
block_.L_442873:

  ; Code: leaq -0x9e0(%rbp), %rdi	 RIP: 442873	 Bytes: 7
  %loadMem_442873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442873 = call %struct.Memory* @routine_leaq_MINUS0x9e0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442873)
  store %struct.Memory* %call_442873, %struct.Memory** %MEMORY

  ; Code: movq -0x1068(%rbp), %rsi	 RIP: 44287a	 Bytes: 7
  %loadMem_44287a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44287a = call %struct.Memory* @routine_movq_MINUS0x1068__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44287a)
  store %struct.Memory* %call_44287a, %struct.Memory** %MEMORY

  ; Code: movl -0x1028(%rbp), %edx	 RIP: 442881	 Bytes: 6
  %loadMem_442881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442881 = call %struct.Memory* @routine_movl_MINUS0x1028__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442881)
  store %struct.Memory* %call_442881, %struct.Memory** %MEMORY

  ; Code: movl -0x105c(%rbp), %ecx	 RIP: 442887	 Bytes: 6
  %loadMem_442887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442887 = call %struct.Memory* @routine_movl_MINUS0x105c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442887)
  store %struct.Memory* %call_442887, %struct.Memory** %MEMORY

  ; Code: movl -0x1058(%rbp), %r8d	 RIP: 44288d	 Bytes: 7
  %loadMem_44288d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44288d = call %struct.Memory* @routine_movl_MINUS0x1058__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44288d)
  store %struct.Memory* %call_44288d, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x10c4(%rbp)	 RIP: 442894	 Bytes: 7
  %loadMem_442894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442894 = call %struct.Memory* @routine_movl__r8d__MINUS0x10c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442894)
  store %struct.Memory* %call_442894, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10d0(%rbp)	 RIP: 44289b	 Bytes: 7
  %loadMem_44289b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44289b = call %struct.Memory* @routine_movq__rsi__MINUS0x10d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44289b)
  store %struct.Memory* %call_44289b, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x10d4(%rbp)	 RIP: 4428a2	 Bytes: 6
  %loadMem_4428a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4428a2 = call %struct.Memory* @routine_movl__edx__MINUS0x10d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4428a2)
  store %struct.Memory* %call_4428a2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x10d8(%rbp)	 RIP: 4428a8	 Bytes: 6
  %loadMem_4428a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4428a8 = call %struct.Memory* @routine_movl__ecx__MINUS0x10d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4428a8)
  store %struct.Memory* %call_4428a8, %struct.Memory** %MEMORY

  ; Code: callq .eyevalue_to_string	 RIP: 4428ae	 Bytes: 5
  %loadMem1_4428ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4428ae = call %struct.Memory* @routine_callq_.eyevalue_to_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4428ae, i64 -28062, i64 5, i64 5)
  store %struct.Memory* %call1_4428ae, %struct.Memory** %MEMORY

  %loadMem2_4428ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4428ae = load i64, i64* %3
  %call2_4428ae = call %struct.Memory* @sub_43bb10.eyevalue_to_string(%struct.State* %0, i64  %loadPC_4428ae, %struct.Memory* %loadMem2_4428ae)
  store %struct.Memory* %call2_4428ae, %struct.Memory** %MEMORY

  ; Code: movq $0x57e207, %rdi	 RIP: 4428b3	 Bytes: 10
  %loadMem_4428b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4428b3 = call %struct.Memory* @routine_movq__0x57e207___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4428b3)
  store %struct.Memory* %call_4428b3, %struct.Memory** %MEMORY

  ; Code: movl -0x1024(%rbp), %ecx	 RIP: 4428bd	 Bytes: 6
  %loadMem_4428bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4428bd = call %struct.Memory* @routine_movl_MINUS0x1024__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4428bd)
  store %struct.Memory* %call_4428bd, %struct.Memory** %MEMORY

  ; Code: movq -0x10d0(%rbp), %rsi	 RIP: 4428c3	 Bytes: 7
  %loadMem_4428c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4428c3 = call %struct.Memory* @routine_movq_MINUS0x10d0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4428c3)
  store %struct.Memory* %call_4428c3, %struct.Memory** %MEMORY

  ; Code: movl -0x10d4(%rbp), %edx	 RIP: 4428ca	 Bytes: 6
  %loadMem_4428ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4428ca = call %struct.Memory* @routine_movl_MINUS0x10d4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4428ca)
  store %struct.Memory* %call_4428ca, %struct.Memory** %MEMORY

  ; Code: movl -0x10d8(%rbp), %r8d	 RIP: 4428d0	 Bytes: 7
  %loadMem_4428d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4428d0 = call %struct.Memory* @routine_movl_MINUS0x10d8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4428d0)
  store %struct.Memory* %call_4428d0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x10dc(%rbp)	 RIP: 4428d7	 Bytes: 6
  %loadMem_4428d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4428d7 = call %struct.Memory* @routine_movl__ecx__MINUS0x10dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4428d7)
  store %struct.Memory* %call_4428d7, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 4428dd	 Bytes: 3
  %loadMem_4428dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4428dd = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4428dd)
  store %struct.Memory* %call_4428dd, %struct.Memory** %MEMORY

  ; Code: movl -0x10c4(%rbp), %r8d	 RIP: 4428e0	 Bytes: 7
  %loadMem_4428e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4428e0 = call %struct.Memory* @routine_movl_MINUS0x10c4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4428e0)
  store %struct.Memory* %call_4428e0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %r9	 RIP: 4428e7	 Bytes: 3
  %loadMem_4428e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4428e7 = call %struct.Memory* @routine_movq__rax___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4428e7)
  store %struct.Memory* %call_4428e7, %struct.Memory** %MEMORY

  ; Code: movl -0x10dc(%rbp), %r10d	 RIP: 4428ea	 Bytes: 7
  %loadMem_4428ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4428ea = call %struct.Memory* @routine_movl_MINUS0x10dc__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4428ea)
  store %struct.Memory* %call_4428ea, %struct.Memory** %MEMORY

  ; Code: movl %r10d, (%rsp)	 RIP: 4428f1	 Bytes: 4
  %loadMem_4428f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4428f1 = call %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4428f1)
  store %struct.Memory* %call_4428f1, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4428f5	 Bytes: 2
  %loadMem_4428f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4428f5 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4428f5)
  store %struct.Memory* %call_4428f5, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 4428f7	 Bytes: 5
  %loadMem1_4428f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4428f7 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4428f7, i64 62649, i64 5, i64 5)
  store %struct.Memory* %call1_4428f7, %struct.Memory** %MEMORY

  %loadMem2_4428f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4428f7 = load i64, i64* %3
  %call2_4428f7 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_4428f7, %struct.Memory* %loadMem2_4428f7)
  store %struct.Memory* %call2_4428f7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10e0(%rbp)	 RIP: 4428fc	 Bytes: 6
  %loadMem_4428fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4428fc = call %struct.Memory* @routine_movl__eax__MINUS0x10e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4428fc)
  store %struct.Memory* %call_4428fc, %struct.Memory** %MEMORY

  ; Code: .L_442902:	 RIP: 442902	 Bytes: 0
  br label %block_.L_442902
block_.L_442902:

  ; Code: movq -0x70(%rbp), %rax	 RIP: 442902	 Bytes: 4
  %loadMem_442902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442902 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442902)
  store %struct.Memory* %call_442902, %struct.Memory** %MEMORY

  ; Code: movslq -0x1028(%rbp), %rcx	 RIP: 442906	 Bytes: 7
  %loadMem_442906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442906 = call %struct.Memory* @routine_movslq_MINUS0x1028__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442906)
  store %struct.Memory* %call_442906, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 44290d	 Bytes: 4
  %loadMem_44290d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44290d = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44290d)
  store %struct.Memory* %call_44290d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 442911	 Bytes: 3
  %loadMem_442911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442911 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442911)
  store %struct.Memory* %call_442911, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1c(%rax), %edx	 RIP: 442914	 Bytes: 4
  %loadMem_442914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442914 = call %struct.Memory* @routine_movsbl_0x1c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442914)
  store %struct.Memory* %call_442914, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 442918	 Bytes: 3
  %loadMem_442918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442918 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442918)
  store %struct.Memory* %call_442918, %struct.Memory** %MEMORY

  ; Code: je .L_442974	 RIP: 44291b	 Bytes: 6
  %loadMem_44291b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44291b = call %struct.Memory* @routine_je_.L_442974(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44291b, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_44291b, %struct.Memory** %MEMORY

  %loadBr_44291b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44291b = icmp eq i8 %loadBr_44291b, 1
  br i1 %cmpBr_44291b, label %block_.L_442974, label %block_442921

block_442921:
  ; Code: leaq -0x1028(%rbp), %rsi	 RIP: 442921	 Bytes: 7
  %loadMem_442921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442921 = call %struct.Memory* @routine_leaq_MINUS0x1028__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442921)
  store %struct.Memory* %call_442921, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edx	 RIP: 442928	 Bytes: 5
  %loadMem_442928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442928 = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442928)
  store %struct.Memory* %call_442928, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdi	 RIP: 44292d	 Bytes: 4
  %loadMem_44292d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44292d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44292d)
  store %struct.Memory* %call_44292d, %struct.Memory** %MEMORY

  ; Code: callq .modify_stupid_eye_vital_point	 RIP: 442931	 Bytes: 5
  %loadMem1_442931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442931 = call %struct.Memory* @routine_callq_.modify_stupid_eye_vital_point(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442931, i64 10943, i64 5, i64 5)
  store %struct.Memory* %call1_442931, %struct.Memory** %MEMORY

  %loadMem2_442931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442931 = load i64, i64* %3
  %call2_442931 = call %struct.Memory* @sub_4453f0.modify_stupid_eye_vital_point(%struct.State* %0, i64  %loadPC_442931, %struct.Memory* %loadMem2_442931)
  store %struct.Memory* %call2_442931, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 442936	 Bytes: 3
  %loadMem_442936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442936 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442936)
  store %struct.Memory* %call_442936, %struct.Memory** %MEMORY

  ; Code: je .L_442974	 RIP: 442939	 Bytes: 6
  %loadMem_442939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442939 = call %struct.Memory* @routine_je_.L_442974(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442939, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_442939, %struct.Memory** %MEMORY

  %loadBr_442939 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442939 = icmp eq i8 %loadBr_442939, 1
  br i1 %cmpBr_442939, label %block_.L_442974, label %block_44293f

block_44293f:
  ; Code: cmpl $0x0, 0xab0f28	 RIP: 44293f	 Bytes: 8
  %loadMem_44293f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44293f = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44293f)
  store %struct.Memory* %call_44293f, %struct.Memory** %MEMORY

  ; Code: jne .L_442952	 RIP: 442947	 Bytes: 6
  %loadMem_442947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442947 = call %struct.Memory* @routine_jne_.L_442952(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442947, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_442947, %struct.Memory** %MEMORY

  %loadBr_442947 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442947 = icmp eq i8 %loadBr_442947, 1
  br i1 %cmpBr_442947, label %block_.L_442952, label %block_44294d

block_44294d:
  ; Code: jmpq .L_44296f	 RIP: 44294d	 Bytes: 5
  %loadMem_44294d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44294d = call %struct.Memory* @routine_jmpq_.L_44296f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44294d, i64 34, i64 5)
  store %struct.Memory* %call_44294d, %struct.Memory** %MEMORY

  br label %block_.L_44296f

  ; Code: .L_442952:	 RIP: 442952	 Bytes: 0
block_.L_442952:

  ; Code: movq $0x57e247, %rdi	 RIP: 442952	 Bytes: 10
  %loadMem_442952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442952 = call %struct.Memory* @routine_movq__0x57e247___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442952)
  store %struct.Memory* %call_442952, %struct.Memory** %MEMORY

  ; Code: movl -0x1028(%rbp), %esi	 RIP: 44295c	 Bytes: 6
  %loadMem_44295c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44295c = call %struct.Memory* @routine_movl_MINUS0x1028__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44295c)
  store %struct.Memory* %call_44295c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 442962	 Bytes: 2
  %loadMem_442962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442962 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442962)
  store %struct.Memory* %call_442962, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 442964	 Bytes: 5
  %loadMem1_442964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442964 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442964, i64 62540, i64 5, i64 5)
  store %struct.Memory* %call1_442964, %struct.Memory** %MEMORY

  %loadMem2_442964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442964 = load i64, i64* %3
  %call2_442964 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_442964, %struct.Memory* %loadMem2_442964)
  store %struct.Memory* %call2_442964, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10e4(%rbp)	 RIP: 442969	 Bytes: 6
  %loadMem_442969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442969 = call %struct.Memory* @routine_movl__eax__MINUS0x10e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442969)
  store %struct.Memory* %call_442969, %struct.Memory** %MEMORY

  ; Code: .L_44296f:	 RIP: 44296f	 Bytes: 0
  br label %block_.L_44296f
block_.L_44296f:

  ; Code: jmpq .L_442974	 RIP: 44296f	 Bytes: 5
  %loadMem_44296f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44296f = call %struct.Memory* @routine_jmpq_.L_442974(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44296f, i64 5, i64 5)
  store %struct.Memory* %call_44296f, %struct.Memory** %MEMORY

  br label %block_.L_442974

  ; Code: .L_442974:	 RIP: 442974	 Bytes: 0
block_.L_442974:

  ; Code: movl $0x1, %r8d	 RIP: 442974	 Bytes: 6
  %loadMem_442974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442974 = call %struct.Memory* @routine_movl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442974)
  store %struct.Memory* %call_442974, %struct.Memory** %MEMORY

  ; Code: xorl %r9d, %r9d	 RIP: 44297a	 Bytes: 3
  %loadMem_44297a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44297a = call %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44297a)
  store %struct.Memory* %call_44297a, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 44297d	 Bytes: 4
  %loadMem_44297d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44297d = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44297d)
  store %struct.Memory* %call_44297d, %struct.Memory** %MEMORY

  ; Code: movl -0x1028(%rbp), %esi	 RIP: 442981	 Bytes: 6
  %loadMem_442981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442981 = call %struct.Memory* @routine_movl_MINUS0x1028__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442981)
  store %struct.Memory* %call_442981, %struct.Memory** %MEMORY

  ; Code: movl -0x105c(%rbp), %edx	 RIP: 442987	 Bytes: 6
  %loadMem_442987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442987 = call %struct.Memory* @routine_movl_MINUS0x105c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442987)
  store %struct.Memory* %call_442987, %struct.Memory** %MEMORY

  ; Code: movq -0x1068(%rbp), %rcx	 RIP: 44298d	 Bytes: 7
  %loadMem_44298d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44298d = call %struct.Memory* @routine_movq_MINUS0x1068__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44298d)
  store %struct.Memory* %call_44298d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rsp)	 RIP: 442994	 Bytes: 7
  %loadMem_442994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442994 = call %struct.Memory* @routine_movl__0x0____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442994)
  store %struct.Memory* %call_442994, %struct.Memory** %MEMORY

  ; Code: callq .owl_add_move	 RIP: 44299b	 Bytes: 5
  %loadMem1_44299b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44299b = call %struct.Memory* @routine_callq_.owl_add_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44299b, i64 6293, i64 5, i64 5)
  store %struct.Memory* %call1_44299b, %struct.Memory** %MEMORY

  %loadMem2_44299b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44299b = load i64, i64* %3
  %call2_44299b = call %struct.Memory* @sub_444230.owl_add_move(%struct.State* %0, i64  %loadPC_44299b, %struct.Memory* %loadMem2_44299b)
  store %struct.Memory* %call2_44299b, %struct.Memory** %MEMORY

  ; Code: movl -0x105c(%rbp), %edx	 RIP: 4429a0	 Bytes: 6
  %loadMem_4429a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429a0 = call %struct.Memory* @routine_movl_MINUS0x105c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429a0)
  store %struct.Memory* %call_4429a0, %struct.Memory** %MEMORY

  ; Code: movslq -0x1028(%rbp), %rcx	 RIP: 4429a6	 Bytes: 7
  %loadMem_4429a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429a6 = call %struct.Memory* @routine_movslq_MINUS0x1028__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429a6)
  store %struct.Memory* %call_4429a6, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x9d0(%rbp,%rcx,4)	 RIP: 4429ad	 Bytes: 7
  %loadMem_4429ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429ad = call %struct.Memory* @routine_movl__edx__MINUS0x9d0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429ad)
  store %struct.Memory* %call_4429ad, %struct.Memory** %MEMORY

  ; Code: movl -0x1028(%rbp), %edx	 RIP: 4429b4	 Bytes: 6
  %loadMem_4429b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429b4 = call %struct.Memory* @routine_movl_MINUS0x1028__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429b4)
  store %struct.Memory* %call_4429b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x1044(%rbp), %rcx	 RIP: 4429ba	 Bytes: 7
  %loadMem_4429ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429ba = call %struct.Memory* @routine_movslq_MINUS0x1044__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429ba)
  store %struct.Memory* %call_4429ba, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1020(%rbp,%rcx,4)	 RIP: 4429c1	 Bytes: 7
  %loadMem_4429c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429c1 = call %struct.Memory* @routine_movl__edx__MINUS0x1020__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429c1)
  store %struct.Memory* %call_4429c1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442c1f	 RIP: 4429c8	 Bytes: 5
  %loadMem_4429c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429c8 = call %struct.Memory* @routine_jmpq_.L_442c1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429c8, i64 599, i64 5)
  store %struct.Memory* %call_4429c8, %struct.Memory** %MEMORY

  br label %block_.L_442c1f

  ; Code: .L_4429cd:	 RIP: 4429cd	 Bytes: 0
block_.L_4429cd:

  ; Code: cmpl $0x0, -0x40(%rbp)	 RIP: 4429cd	 Bytes: 4
  %loadMem_4429cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429cd = call %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429cd)
  store %struct.Memory* %call_4429cd, %struct.Memory** %MEMORY

  ; Code: jne .L_442c1a	 RIP: 4429d1	 Bytes: 6
  %loadMem_4429d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429d1 = call %struct.Memory* @routine_jne_.L_442c1a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429d1, i8* %BRANCH_TAKEN, i64 585, i64 6, i64 6)
  store %struct.Memory* %call_4429d1, %struct.Memory** %MEMORY

  %loadBr_4429d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4429d1 = icmp eq i8 %loadBr_4429d1, 1
  br i1 %cmpBr_4429d1, label %block_.L_442c1a, label %block_4429d7

block_4429d7:
  ; Code: cmpl $0x0, -0x102c(%rbp)	 RIP: 4429d7	 Bytes: 7
  %loadMem_4429d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429d7 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x102c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429d7)
  store %struct.Memory* %call_4429d7, %struct.Memory** %MEMORY

  ; Code: je .L_442c1a	 RIP: 4429de	 Bytes: 6
  %loadMem_4429de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429de = call %struct.Memory* @routine_je_.L_442c1a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429de, i8* %BRANCH_TAKEN, i64 572, i64 6, i64 6)
  store %struct.Memory* %call_4429de, %struct.Memory** %MEMORY

  %loadBr_4429de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4429de = icmp eq i8 %loadBr_4429de, 1
  br i1 %cmpBr_4429de, label %block_.L_442c1a, label %block_4429e4

block_4429e4:
  ; Code: movslq -0x102c(%rbp), %rax	 RIP: 4429e4	 Bytes: 7
  %loadMem_4429e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429e4 = call %struct.Memory* @routine_movslq_MINUS0x102c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429e4)
  store %struct.Memory* %call_4429e4, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4429eb	 Bytes: 8
  %loadMem_4429eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429eb = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429eb)
  store %struct.Memory* %call_4429eb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4429f3	 Bytes: 3
  %loadMem_4429f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429f3 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429f3)
  store %struct.Memory* %call_4429f3, %struct.Memory** %MEMORY

  ; Code: jne .L_442c1a	 RIP: 4429f6	 Bytes: 6
  %loadMem_4429f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429f6 = call %struct.Memory* @routine_jne_.L_442c1a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429f6, i8* %BRANCH_TAKEN, i64 548, i64 6, i64 6)
  store %struct.Memory* %call_4429f6, %struct.Memory** %MEMORY

  %loadBr_4429f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4429f6 = icmp eq i8 %loadBr_4429f6, 1
  br i1 %cmpBr_4429f6, label %block_.L_442c1a, label %block_4429fc

block_4429fc:
  ; Code: movl -0x102c(%rbp), %edi	 RIP: 4429fc	 Bytes: 6
  %loadMem_4429fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4429fc = call %struct.Memory* @routine_movl_MINUS0x102c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4429fc)
  store %struct.Memory* %call_4429fc, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rsi	 RIP: 442a02	 Bytes: 4
  %loadMem_442a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a02 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a02)
  store %struct.Memory* %call_442a02, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_goal	 RIP: 442a06	 Bytes: 5
  %loadMem1_442a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442a06 = call %struct.Memory* @routine_callq_.liberty_of_goal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442a06, i64 5258, i64 5, i64 5)
  store %struct.Memory* %call1_442a06, %struct.Memory** %MEMORY

  %loadMem2_442a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442a06 = load i64, i64* %3
  %call2_442a06 = call %struct.Memory* @sub_443e90.liberty_of_goal(%struct.State* %0, i64  %loadPC_442a06, %struct.Memory* %loadMem2_442a06)
  store %struct.Memory* %call2_442a06, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 442a0b	 Bytes: 3
  %loadMem_442a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a0b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a0b)
  store %struct.Memory* %call_442a0b, %struct.Memory** %MEMORY

  ; Code: je .L_442a5d	 RIP: 442a0e	 Bytes: 6
  %loadMem_442a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a0e = call %struct.Memory* @routine_je_.L_442a5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a0e, i8* %BRANCH_TAKEN, i64 79, i64 6, i64 6)
  store %struct.Memory* %call_442a0e, %struct.Memory** %MEMORY

  %loadBr_442a0e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442a0e = icmp eq i8 %loadBr_442a0e, 1
  br i1 %cmpBr_442a0e, label %block_.L_442a5d, label %block_442a14

block_442a14:
  ; Code: movl -0x102c(%rbp), %edi	 RIP: 442a14	 Bytes: 6
  %loadMem_442a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a14 = call %struct.Memory* @routine_movl_MINUS0x102c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a14)
  store %struct.Memory* %call_442a14, %struct.Memory** %MEMORY

  ; Code: movl -0x64(%rbp), %esi	 RIP: 442a1a	 Bytes: 3
  %loadMem_442a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a1a = call %struct.Memory* @routine_movl_MINUS0x64__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a1a)
  store %struct.Memory* %call_442a1a, %struct.Memory** %MEMORY

  ; Code: callq .is_self_atari	 RIP: 442a1d	 Bytes: 5
  %loadMem1_442a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442a1d = call %struct.Memory* @routine_callq_.is_self_atari(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442a1d, i64 -190333, i64 5, i64 5)
  store %struct.Memory* %call1_442a1d, %struct.Memory** %MEMORY

  %loadMem2_442a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442a1d = load i64, i64* %3
  %call2_442a1d = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64  %loadPC_442a1d, %struct.Memory* %loadMem2_442a1d)
  store %struct.Memory* %call2_442a1d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 442a22	 Bytes: 3
  %loadMem_442a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a22 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a22)
  store %struct.Memory* %call_442a22, %struct.Memory** %MEMORY

  ; Code: je .L_442a5d	 RIP: 442a25	 Bytes: 6
  %loadMem_442a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a25 = call %struct.Memory* @routine_je_.L_442a5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a25, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_442a25, %struct.Memory** %MEMORY

  %loadBr_442a25 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442a25 = icmp eq i8 %loadBr_442a25, 1
  br i1 %cmpBr_442a25, label %block_.L_442a5d, label %block_442a2b

block_442a2b:
  ; Code: xorl %eax, %eax	 RIP: 442a2b	 Bytes: 2
  %loadMem_442a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a2b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a2b)
  store %struct.Memory* %call_442a2b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 442a2d	 Bytes: 2
  %loadMem_442a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a2d = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a2d)
  store %struct.Memory* %call_442a2d, %struct.Memory** %MEMORY

  ; Code: movl -0x102c(%rbp), %edi	 RIP: 442a2f	 Bytes: 6
  %loadMem_442a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a2f = call %struct.Memory* @routine_movl_MINUS0x102c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a2f)
  store %struct.Memory* %call_442a2f, %struct.Memory** %MEMORY

  ; Code: movl -0x64(%rbp), %esi	 RIP: 442a35	 Bytes: 3
  %loadMem_442a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a35 = call %struct.Memory* @routine_movl_MINUS0x64__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a35)
  store %struct.Memory* %call_442a35, %struct.Memory** %MEMORY

  ; Code: callq .is_ko	 RIP: 442a38	 Bytes: 5
  %loadMem1_442a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442a38 = call %struct.Memory* @routine_callq_.is_ko(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442a38, i64 -211000, i64 5, i64 5)
  store %struct.Memory* %call1_442a38, %struct.Memory** %MEMORY

  %loadMem2_442a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442a38 = load i64, i64* %3
  %call2_442a38 = call %struct.Memory* @sub_40f200.is_ko(%struct.State* %0, i64  %loadPC_442a38, %struct.Memory* %loadMem2_442a38)
  store %struct.Memory* %call2_442a38, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 442a3d	 Bytes: 3
  %loadMem_442a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a3d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a3d)
  store %struct.Memory* %call_442a3d, %struct.Memory** %MEMORY

  ; Code: jne .L_442a5d	 RIP: 442a40	 Bytes: 6
  %loadMem_442a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a40 = call %struct.Memory* @routine_jne_.L_442a5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a40, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_442a40, %struct.Memory** %MEMORY

  %loadBr_442a40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442a40 = icmp eq i8 %loadBr_442a40, 1
  br i1 %cmpBr_442a40, label %block_.L_442a5d, label %block_442a46

block_442a46:
  ; Code: movl -0x102c(%rbp), %edi	 RIP: 442a46	 Bytes: 6
  %loadMem_442a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a46 = call %struct.Memory* @routine_movl_MINUS0x102c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a46)
  store %struct.Memory* %call_442a46, %struct.Memory** %MEMORY

  ; Code: movl -0x64(%rbp), %esi	 RIP: 442a4c	 Bytes: 3
  %loadMem_442a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a4c = call %struct.Memory* @routine_movl_MINUS0x64__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a4c)
  store %struct.Memory* %call_442a4c, %struct.Memory** %MEMORY

  ; Code: callq .safe_move	 RIP: 442a4f	 Bytes: 5
  %loadMem1_442a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442a4f = call %struct.Memory* @routine_callq_.safe_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442a4f, i64 168417, i64 5, i64 5)
  store %struct.Memory* %call1_442a4f, %struct.Memory** %MEMORY

  %loadMem2_442a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442a4f = load i64, i64* %3
  %call2_442a4f = call %struct.Memory* @sub_46bc30.safe_move(%struct.State* %0, i64  %loadPC_442a4f, %struct.Memory* %loadMem2_442a4f)
  store %struct.Memory* %call2_442a4f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 442a54	 Bytes: 3
  %loadMem_442a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a54 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a54)
  store %struct.Memory* %call_442a54, %struct.Memory** %MEMORY

  ; Code: je .L_442c1a	 RIP: 442a57	 Bytes: 6
  %loadMem_442a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a57 = call %struct.Memory* @routine_je_.L_442c1a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a57, i8* %BRANCH_TAKEN, i64 451, i64 6, i64 6)
  store %struct.Memory* %call_442a57, %struct.Memory** %MEMORY

  %loadBr_442a57 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442a57 = icmp eq i8 %loadBr_442a57, 1
  br i1 %cmpBr_442a57, label %block_.L_442c1a, label %block_.L_442a5d

  ; Code: .L_442a5d:	 RIP: 442a5d	 Bytes: 0
block_.L_442a5d:

  ; Code: movslq -0x102c(%rbp), %rax	 RIP: 442a5d	 Bytes: 7
  %loadMem_442a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a5d = call %struct.Memory* @routine_movslq_MINUS0x102c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a5d)
  store %struct.Memory* %call_442a5d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x9d0(%rbp,%rax,4)	 RIP: 442a64	 Bytes: 8
  %loadMem_442a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a64 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x9d0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a64)
  store %struct.Memory* %call_442a64, %struct.Memory** %MEMORY

  ; Code: jle .L_442aa8	 RIP: 442a6c	 Bytes: 6
  %loadMem_442a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a6c = call %struct.Memory* @routine_jle_.L_442aa8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a6c, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_442a6c, %struct.Memory** %MEMORY

  %loadBr_442a6c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442a6c = icmp eq i8 %loadBr_442a6c, 1
  br i1 %cmpBr_442a6c, label %block_.L_442aa8, label %block_442a72

block_442a72:
  ; Code: movslq -0x102c(%rbp), %rax	 RIP: 442a72	 Bytes: 7
  %loadMem_442a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a72 = call %struct.Memory* @routine_movslq_MINUS0x102c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a72)
  store %struct.Memory* %call_442a72, %struct.Memory** %MEMORY

  ; Code: movl -0x9d0(%rbp,%rax,4), %ecx	 RIP: 442a79	 Bytes: 7
  %loadMem_442a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a79 = call %struct.Memory* @routine_movl_MINUS0x9d0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a79)
  store %struct.Memory* %call_442a79, %struct.Memory** %MEMORY

  ; Code: addl -0x105c(%rbp), %ecx	 RIP: 442a80	 Bytes: 6
  %loadMem_442a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a80 = call %struct.Memory* @routine_addl_MINUS0x105c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a80)
  store %struct.Memory* %call_442a80, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x105c(%rbp)	 RIP: 442a86	 Bytes: 6
  %loadMem_442a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a86 = call %struct.Memory* @routine_movl__ecx__MINUS0x105c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a86)
  store %struct.Memory* %call_442a86, %struct.Memory** %MEMORY

  ; Code: cmpl $0x62, -0x105c(%rbp)	 RIP: 442a8c	 Bytes: 7
  %loadMem_442a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a8c = call %struct.Memory* @routine_cmpl__0x62__MINUS0x105c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a8c)
  store %struct.Memory* %call_442a8c, %struct.Memory** %MEMORY

  ; Code: jle .L_442aa3	 RIP: 442a93	 Bytes: 6
  %loadMem_442a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a93 = call %struct.Memory* @routine_jle_.L_442aa3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a93, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_442a93, %struct.Memory** %MEMORY

  %loadBr_442a93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442a93 = icmp eq i8 %loadBr_442a93, 1
  br i1 %cmpBr_442a93, label %block_.L_442aa3, label %block_442a99

block_442a99:
  ; Code: movl $0x62, -0x105c(%rbp)	 RIP: 442a99	 Bytes: 10
  %loadMem_442a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442a99 = call %struct.Memory* @routine_movl__0x62__MINUS0x105c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442a99)
  store %struct.Memory* %call_442a99, %struct.Memory** %MEMORY

  ; Code: .L_442aa3:	 RIP: 442aa3	 Bytes: 0
  br label %block_.L_442aa3
block_.L_442aa3:

  ; Code: jmpq .L_442aa8	 RIP: 442aa3	 Bytes: 5
  %loadMem_442aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442aa3 = call %struct.Memory* @routine_jmpq_.L_442aa8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442aa3, i64 5, i64 5)
  store %struct.Memory* %call_442aa3, %struct.Memory** %MEMORY

  br label %block_.L_442aa8

  ; Code: .L_442aa8:	 RIP: 442aa8	 Bytes: 0
block_.L_442aa8:

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 442aa8	 Bytes: 8
  %loadMem_442aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442aa8 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442aa8)
  store %struct.Memory* %call_442aa8, %struct.Memory** %MEMORY

  ; Code: jne .L_442abb	 RIP: 442ab0	 Bytes: 6
  %loadMem_442ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ab0 = call %struct.Memory* @routine_jne_.L_442abb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ab0, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_442ab0, %struct.Memory** %MEMORY

  %loadBr_442ab0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442ab0 = icmp eq i8 %loadBr_442ab0, 1
  br i1 %cmpBr_442ab0, label %block_.L_442abb, label %block_442ab6

block_442ab6:
  ; Code: jmpq .L_442b4a	 RIP: 442ab6	 Bytes: 5
  %loadMem_442ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ab6 = call %struct.Memory* @routine_jmpq_.L_442b4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ab6, i64 148, i64 5)
  store %struct.Memory* %call_442ab6, %struct.Memory** %MEMORY

  br label %block_.L_442b4a

  ; Code: .L_442abb:	 RIP: 442abb	 Bytes: 0
block_.L_442abb:

  ; Code: leaq -0x9e0(%rbp), %rdi	 RIP: 442abb	 Bytes: 7
  %loadMem_442abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442abb = call %struct.Memory* @routine_leaq_MINUS0x9e0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442abb)
  store %struct.Memory* %call_442abb, %struct.Memory** %MEMORY

  ; Code: movq -0x1068(%rbp), %rsi	 RIP: 442ac2	 Bytes: 7
  %loadMem_442ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ac2 = call %struct.Memory* @routine_movq_MINUS0x1068__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ac2)
  store %struct.Memory* %call_442ac2, %struct.Memory** %MEMORY

  ; Code: movl -0x102c(%rbp), %edx	 RIP: 442ac9	 Bytes: 6
  %loadMem_442ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ac9 = call %struct.Memory* @routine_movl_MINUS0x102c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ac9)
  store %struct.Memory* %call_442ac9, %struct.Memory** %MEMORY

  ; Code: movl -0x105c(%rbp), %ecx	 RIP: 442acf	 Bytes: 6
  %loadMem_442acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442acf = call %struct.Memory* @routine_movl_MINUS0x105c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442acf)
  store %struct.Memory* %call_442acf, %struct.Memory** %MEMORY

  ; Code: movl -0x1058(%rbp), %r8d	 RIP: 442ad5	 Bytes: 7
  %loadMem_442ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ad5 = call %struct.Memory* @routine_movl_MINUS0x1058__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ad5)
  store %struct.Memory* %call_442ad5, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x10e8(%rbp)	 RIP: 442adc	 Bytes: 7
  %loadMem_442adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442adc = call %struct.Memory* @routine_movl__r8d__MINUS0x10e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442adc)
  store %struct.Memory* %call_442adc, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10f0(%rbp)	 RIP: 442ae3	 Bytes: 7
  %loadMem_442ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ae3 = call %struct.Memory* @routine_movq__rsi__MINUS0x10f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ae3)
  store %struct.Memory* %call_442ae3, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x10f4(%rbp)	 RIP: 442aea	 Bytes: 6
  %loadMem_442aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442aea = call %struct.Memory* @routine_movl__edx__MINUS0x10f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442aea)
  store %struct.Memory* %call_442aea, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x10f8(%rbp)	 RIP: 442af0	 Bytes: 6
  %loadMem_442af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442af0 = call %struct.Memory* @routine_movl__ecx__MINUS0x10f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442af0)
  store %struct.Memory* %call_442af0, %struct.Memory** %MEMORY

  ; Code: callq .eyevalue_to_string	 RIP: 442af6	 Bytes: 5
  %loadMem1_442af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442af6 = call %struct.Memory* @routine_callq_.eyevalue_to_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442af6, i64 -28646, i64 5, i64 5)
  store %struct.Memory* %call1_442af6, %struct.Memory** %MEMORY

  %loadMem2_442af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442af6 = load i64, i64* %3
  %call2_442af6 = call %struct.Memory* @sub_43bb10.eyevalue_to_string(%struct.State* %0, i64  %loadPC_442af6, %struct.Memory* %loadMem2_442af6)
  store %struct.Memory* %call2_442af6, %struct.Memory** %MEMORY

  ; Code: movq $0x57e207, %rdi	 RIP: 442afb	 Bytes: 10
  %loadMem_442afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442afb = call %struct.Memory* @routine_movq__0x57e207___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442afb)
  store %struct.Memory* %call_442afb, %struct.Memory** %MEMORY

  ; Code: movl -0x1024(%rbp), %ecx	 RIP: 442b05	 Bytes: 6
  %loadMem_442b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b05 = call %struct.Memory* @routine_movl_MINUS0x1024__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b05)
  store %struct.Memory* %call_442b05, %struct.Memory** %MEMORY

  ; Code: movq -0x10f0(%rbp), %rsi	 RIP: 442b0b	 Bytes: 7
  %loadMem_442b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b0b = call %struct.Memory* @routine_movq_MINUS0x10f0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b0b)
  store %struct.Memory* %call_442b0b, %struct.Memory** %MEMORY

  ; Code: movl -0x10f4(%rbp), %edx	 RIP: 442b12	 Bytes: 6
  %loadMem_442b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b12 = call %struct.Memory* @routine_movl_MINUS0x10f4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b12)
  store %struct.Memory* %call_442b12, %struct.Memory** %MEMORY

  ; Code: movl -0x10f8(%rbp), %r8d	 RIP: 442b18	 Bytes: 7
  %loadMem_442b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b18 = call %struct.Memory* @routine_movl_MINUS0x10f8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b18)
  store %struct.Memory* %call_442b18, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x10fc(%rbp)	 RIP: 442b1f	 Bytes: 6
  %loadMem_442b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b1f = call %struct.Memory* @routine_movl__ecx__MINUS0x10fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b1f)
  store %struct.Memory* %call_442b1f, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 442b25	 Bytes: 3
  %loadMem_442b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b25 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b25)
  store %struct.Memory* %call_442b25, %struct.Memory** %MEMORY

  ; Code: movl -0x10e8(%rbp), %r8d	 RIP: 442b28	 Bytes: 7
  %loadMem_442b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b28 = call %struct.Memory* @routine_movl_MINUS0x10e8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b28)
  store %struct.Memory* %call_442b28, %struct.Memory** %MEMORY

  ; Code: movq %rax, %r9	 RIP: 442b2f	 Bytes: 3
  %loadMem_442b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b2f = call %struct.Memory* @routine_movq__rax___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b2f)
  store %struct.Memory* %call_442b2f, %struct.Memory** %MEMORY

  ; Code: movl -0x10fc(%rbp), %r10d	 RIP: 442b32	 Bytes: 7
  %loadMem_442b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b32 = call %struct.Memory* @routine_movl_MINUS0x10fc__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b32)
  store %struct.Memory* %call_442b32, %struct.Memory** %MEMORY

  ; Code: movl %r10d, (%rsp)	 RIP: 442b39	 Bytes: 4
  %loadMem_442b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b39 = call %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b39)
  store %struct.Memory* %call_442b39, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 442b3d	 Bytes: 2
  %loadMem_442b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b3d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b3d)
  store %struct.Memory* %call_442b3d, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 442b3f	 Bytes: 5
  %loadMem1_442b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442b3f = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442b3f, i64 62065, i64 5, i64 5)
  store %struct.Memory* %call1_442b3f, %struct.Memory** %MEMORY

  %loadMem2_442b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442b3f = load i64, i64* %3
  %call2_442b3f = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_442b3f, %struct.Memory* %loadMem2_442b3f)
  store %struct.Memory* %call2_442b3f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1100(%rbp)	 RIP: 442b44	 Bytes: 6
  %loadMem_442b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b44 = call %struct.Memory* @routine_movl__eax__MINUS0x1100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b44)
  store %struct.Memory* %call_442b44, %struct.Memory** %MEMORY

  ; Code: .L_442b4a:	 RIP: 442b4a	 Bytes: 0
  br label %block_.L_442b4a
block_.L_442b4a:

  ; Code: movq -0x70(%rbp), %rax	 RIP: 442b4a	 Bytes: 4
  %loadMem_442b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b4a = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b4a)
  store %struct.Memory* %call_442b4a, %struct.Memory** %MEMORY

  ; Code: movslq -0x102c(%rbp), %rcx	 RIP: 442b4e	 Bytes: 7
  %loadMem_442b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b4e = call %struct.Memory* @routine_movslq_MINUS0x102c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b4e)
  store %struct.Memory* %call_442b4e, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 442b55	 Bytes: 4
  %loadMem_442b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b55 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b55)
  store %struct.Memory* %call_442b55, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 442b59	 Bytes: 3
  %loadMem_442b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b59 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b59)
  store %struct.Memory* %call_442b59, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1c(%rax), %edx	 RIP: 442b5c	 Bytes: 4
  %loadMem_442b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b5c = call %struct.Memory* @routine_movsbl_0x1c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b5c)
  store %struct.Memory* %call_442b5c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 442b60	 Bytes: 3
  %loadMem_442b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b60 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b60)
  store %struct.Memory* %call_442b60, %struct.Memory** %MEMORY

  ; Code: jne .L_442b8a	 RIP: 442b63	 Bytes: 6
  %loadMem_442b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b63 = call %struct.Memory* @routine_jne_.L_442b8a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b63, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_442b63, %struct.Memory** %MEMORY

  %loadBr_442b63 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442b63 = icmp eq i8 %loadBr_442b63, 1
  br i1 %cmpBr_442b63, label %block_.L_442b8a, label %block_442b69

block_442b69:
  ; Code: movq -0x70(%rbp), %rax	 RIP: 442b69	 Bytes: 4
  %loadMem_442b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b69 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b69)
  store %struct.Memory* %call_442b69, %struct.Memory** %MEMORY

  ; Code: movslq -0x102c(%rbp), %rcx	 RIP: 442b6d	 Bytes: 7
  %loadMem_442b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b6d = call %struct.Memory* @routine_movslq_MINUS0x102c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b6d)
  store %struct.Memory* %call_442b6d, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 442b74	 Bytes: 4
  %loadMem_442b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b74 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b74)
  store %struct.Memory* %call_442b74, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 442b78	 Bytes: 3
  %loadMem_442b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b78 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b78)
  store %struct.Memory* %call_442b78, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 442b7b	 Bytes: 3
  %loadMem_442b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b7b = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b7b)
  store %struct.Memory* %call_442b7b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1058(%rbp), %edx	 RIP: 442b7e	 Bytes: 6
  %loadMem_442b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b7e = call %struct.Memory* @routine_cmpl_MINUS0x1058__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b7e)
  store %struct.Memory* %call_442b7e, %struct.Memory** %MEMORY

  ; Code: je .L_442bda	 RIP: 442b84	 Bytes: 6
  %loadMem_442b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b84 = call %struct.Memory* @routine_je_.L_442bda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b84, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_442b84, %struct.Memory** %MEMORY

  %loadBr_442b84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442b84 = icmp eq i8 %loadBr_442b84, 1
  br i1 %cmpBr_442b84, label %block_.L_442bda, label %block_.L_442b8a

  ; Code: .L_442b8a:	 RIP: 442b8a	 Bytes: 0
block_.L_442b8a:

  ; Code: leaq -0x102c(%rbp), %rsi	 RIP: 442b8a	 Bytes: 7
  %loadMem_442b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b8a = call %struct.Memory* @routine_leaq_MINUS0x102c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b8a)
  store %struct.Memory* %call_442b8a, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 442b91	 Bytes: 2
  %loadMem_442b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b91 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b91)
  store %struct.Memory* %call_442b91, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdi	 RIP: 442b93	 Bytes: 4
  %loadMem_442b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b93 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b93)
  store %struct.Memory* %call_442b93, %struct.Memory** %MEMORY

  ; Code: callq .modify_stupid_eye_vital_point	 RIP: 442b97	 Bytes: 5
  %loadMem1_442b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442b97 = call %struct.Memory* @routine_callq_.modify_stupid_eye_vital_point(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442b97, i64 10329, i64 5, i64 5)
  store %struct.Memory* %call1_442b97, %struct.Memory** %MEMORY

  %loadMem2_442b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442b97 = load i64, i64* %3
  %call2_442b97 = call %struct.Memory* @sub_4453f0.modify_stupid_eye_vital_point(%struct.State* %0, i64  %loadPC_442b97, %struct.Memory* %loadMem2_442b97)
  store %struct.Memory* %call2_442b97, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 442b9c	 Bytes: 3
  %loadMem_442b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b9c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b9c)
  store %struct.Memory* %call_442b9c, %struct.Memory** %MEMORY

  ; Code: je .L_442bda	 RIP: 442b9f	 Bytes: 6
  %loadMem_442b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442b9f = call %struct.Memory* @routine_je_.L_442bda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442b9f, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_442b9f, %struct.Memory** %MEMORY

  %loadBr_442b9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442b9f = icmp eq i8 %loadBr_442b9f, 1
  br i1 %cmpBr_442b9f, label %block_.L_442bda, label %block_442ba5

block_442ba5:
  ; Code: cmpl $0x0, 0xab0f28	 RIP: 442ba5	 Bytes: 8
  %loadMem_442ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ba5 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ba5)
  store %struct.Memory* %call_442ba5, %struct.Memory** %MEMORY

  ; Code: jne .L_442bb8	 RIP: 442bad	 Bytes: 6
  %loadMem_442bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442bad = call %struct.Memory* @routine_jne_.L_442bb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442bad, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_442bad, %struct.Memory** %MEMORY

  %loadBr_442bad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442bad = icmp eq i8 %loadBr_442bad, 1
  br i1 %cmpBr_442bad, label %block_.L_442bb8, label %block_442bb3

block_442bb3:
  ; Code: jmpq .L_442bd5	 RIP: 442bb3	 Bytes: 5
  %loadMem_442bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442bb3 = call %struct.Memory* @routine_jmpq_.L_442bd5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442bb3, i64 34, i64 5)
  store %struct.Memory* %call_442bb3, %struct.Memory** %MEMORY

  br label %block_.L_442bd5

  ; Code: .L_442bb8:	 RIP: 442bb8	 Bytes: 0
block_.L_442bb8:

  ; Code: movq $0x57e247, %rdi	 RIP: 442bb8	 Bytes: 10
  %loadMem_442bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442bb8 = call %struct.Memory* @routine_movq__0x57e247___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442bb8)
  store %struct.Memory* %call_442bb8, %struct.Memory** %MEMORY

  ; Code: movl -0x102c(%rbp), %esi	 RIP: 442bc2	 Bytes: 6
  %loadMem_442bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442bc2 = call %struct.Memory* @routine_movl_MINUS0x102c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442bc2)
  store %struct.Memory* %call_442bc2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 442bc8	 Bytes: 2
  %loadMem_442bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442bc8 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442bc8)
  store %struct.Memory* %call_442bc8, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 442bca	 Bytes: 5
  %loadMem1_442bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442bca = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442bca, i64 61926, i64 5, i64 5)
  store %struct.Memory* %call1_442bca, %struct.Memory** %MEMORY

  %loadMem2_442bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442bca = load i64, i64* %3
  %call2_442bca = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_442bca, %struct.Memory* %loadMem2_442bca)
  store %struct.Memory* %call2_442bca, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1104(%rbp)	 RIP: 442bcf	 Bytes: 6
  %loadMem_442bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442bcf = call %struct.Memory* @routine_movl__eax__MINUS0x1104__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442bcf)
  store %struct.Memory* %call_442bcf, %struct.Memory** %MEMORY

  ; Code: .L_442bd5:	 RIP: 442bd5	 Bytes: 0
  br label %block_.L_442bd5
block_.L_442bd5:

  ; Code: jmpq .L_442bda	 RIP: 442bd5	 Bytes: 5
  %loadMem_442bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442bd5 = call %struct.Memory* @routine_jmpq_.L_442bda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442bd5, i64 5, i64 5)
  store %struct.Memory* %call_442bd5, %struct.Memory** %MEMORY

  br label %block_.L_442bda

  ; Code: .L_442bda:	 RIP: 442bda	 Bytes: 0
block_.L_442bda:

  ; Code: movl $0x1, %r8d	 RIP: 442bda	 Bytes: 6
  %loadMem_442bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442bda = call %struct.Memory* @routine_movl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442bda)
  store %struct.Memory* %call_442bda, %struct.Memory** %MEMORY

  ; Code: xorl %r9d, %r9d	 RIP: 442be0	 Bytes: 3
  %loadMem_442be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442be0 = call %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442be0)
  store %struct.Memory* %call_442be0, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 442be3	 Bytes: 4
  %loadMem_442be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442be3 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442be3)
  store %struct.Memory* %call_442be3, %struct.Memory** %MEMORY

  ; Code: movl -0x102c(%rbp), %esi	 RIP: 442be7	 Bytes: 6
  %loadMem_442be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442be7 = call %struct.Memory* @routine_movl_MINUS0x102c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442be7)
  store %struct.Memory* %call_442be7, %struct.Memory** %MEMORY

  ; Code: movl -0x105c(%rbp), %edx	 RIP: 442bed	 Bytes: 6
  %loadMem_442bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442bed = call %struct.Memory* @routine_movl_MINUS0x105c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442bed)
  store %struct.Memory* %call_442bed, %struct.Memory** %MEMORY

  ; Code: movq -0x1068(%rbp), %rcx	 RIP: 442bf3	 Bytes: 7
  %loadMem_442bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442bf3 = call %struct.Memory* @routine_movq_MINUS0x1068__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442bf3)
  store %struct.Memory* %call_442bf3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rsp)	 RIP: 442bfa	 Bytes: 7
  %loadMem_442bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442bfa = call %struct.Memory* @routine_movl__0x0____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442bfa)
  store %struct.Memory* %call_442bfa, %struct.Memory** %MEMORY

  ; Code: callq .owl_add_move	 RIP: 442c01	 Bytes: 5
  %loadMem1_442c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442c01 = call %struct.Memory* @routine_callq_.owl_add_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442c01, i64 5679, i64 5, i64 5)
  store %struct.Memory* %call1_442c01, %struct.Memory** %MEMORY

  %loadMem2_442c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442c01 = load i64, i64* %3
  %call2_442c01 = call %struct.Memory* @sub_444230.owl_add_move(%struct.State* %0, i64  %loadPC_442c01, %struct.Memory* %loadMem2_442c01)
  store %struct.Memory* %call2_442c01, %struct.Memory** %MEMORY

  ; Code: movl -0x105c(%rbp), %edx	 RIP: 442c06	 Bytes: 6
  %loadMem_442c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c06 = call %struct.Memory* @routine_movl_MINUS0x105c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c06)
  store %struct.Memory* %call_442c06, %struct.Memory** %MEMORY

  ; Code: movslq -0x102c(%rbp), %rcx	 RIP: 442c0c	 Bytes: 7
  %loadMem_442c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c0c = call %struct.Memory* @routine_movslq_MINUS0x102c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c0c)
  store %struct.Memory* %call_442c0c, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x9d0(%rbp,%rcx,4)	 RIP: 442c13	 Bytes: 7
  %loadMem_442c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c13 = call %struct.Memory* @routine_movl__edx__MINUS0x9d0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c13)
  store %struct.Memory* %call_442c13, %struct.Memory** %MEMORY

  ; Code: .L_442c1a:	 RIP: 442c1a	 Bytes: 0
  br label %block_.L_442c1a
block_.L_442c1a:

  ; Code: jmpq .L_442c1f	 RIP: 442c1a	 Bytes: 5
  %loadMem_442c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c1a = call %struct.Memory* @routine_jmpq_.L_442c1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c1a, i64 5, i64 5)
  store %struct.Memory* %call_442c1a, %struct.Memory** %MEMORY

  br label %block_.L_442c1f

  ; Code: .L_442c1f:	 RIP: 442c1f	 Bytes: 0
block_.L_442c1f:

  ; Code: jmpq .L_442c24	 RIP: 442c1f	 Bytes: 5
  %loadMem_442c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c1f = call %struct.Memory* @routine_jmpq_.L_442c24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c1f, i64 5, i64 5)
  store %struct.Memory* %call_442c1f, %struct.Memory** %MEMORY

  br label %block_.L_442c24

  ; Code: .L_442c24:	 RIP: 442c24	 Bytes: 0
block_.L_442c24:

  ; Code: movl -0x1044(%rbp), %eax	 RIP: 442c24	 Bytes: 6
  %loadMem_442c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c24 = call %struct.Memory* @routine_movl_MINUS0x1044__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c24)
  store %struct.Memory* %call_442c24, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 442c2a	 Bytes: 3
  %loadMem_442c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c2a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c2a)
  store %struct.Memory* %call_442c2a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1044(%rbp)	 RIP: 442c2d	 Bytes: 6
  %loadMem_442c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c2d = call %struct.Memory* @routine_movl__eax__MINUS0x1044__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c2d)
  store %struct.Memory* %call_442c2d, %struct.Memory** %MEMORY

  ; Code: .L_442c33:	 RIP: 442c33	 Bytes: 0
  br label %block_.L_442c33
block_.L_442c33:

  ; Code: jmpq .L_442c38	 RIP: 442c33	 Bytes: 5
  %loadMem_442c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c33 = call %struct.Memory* @routine_jmpq_.L_442c38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c33, i64 5, i64 5)
  store %struct.Memory* %call_442c33, %struct.Memory** %MEMORY

  br label %block_.L_442c38

  ; Code: .L_442c38:	 RIP: 442c38	 Bytes: 0
block_.L_442c38:

  ; Code: movl -0x1034(%rbp), %eax	 RIP: 442c38	 Bytes: 6
  %loadMem_442c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c38 = call %struct.Memory* @routine_movl_MINUS0x1034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c38)
  store %struct.Memory* %call_442c38, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 442c3e	 Bytes: 3
  %loadMem_442c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c3e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c3e)
  store %struct.Memory* %call_442c3e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1034(%rbp)	 RIP: 442c41	 Bytes: 6
  %loadMem_442c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c41 = call %struct.Memory* @routine_movl__eax__MINUS0x1034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c41)
  store %struct.Memory* %call_442c41, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4423b8	 RIP: 442c47	 Bytes: 5
  %loadMem_442c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c47 = call %struct.Memory* @routine_jmpq_.L_4423b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c47, i64 -2191, i64 5)
  store %struct.Memory* %call_442c47, %struct.Memory** %MEMORY

  br label %block_.L_4423b8

  ; Code: .L_442c4c:	 RIP: 442c4c	 Bytes: 0
block_.L_442c4c:

  ; Code: jmpq .L_442c51	 RIP: 442c4c	 Bytes: 5
  %loadMem_442c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c4c = call %struct.Memory* @routine_jmpq_.L_442c51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c4c, i64 5, i64 5)
  store %struct.Memory* %call_442c4c, %struct.Memory** %MEMORY

  br label %block_.L_442c51

  ; Code: .L_442c51:	 RIP: 442c51	 Bytes: 0
block_.L_442c51:

  ; Code: movl -0x1030(%rbp), %eax	 RIP: 442c51	 Bytes: 6
  %loadMem_442c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c51 = call %struct.Memory* @routine_movl_MINUS0x1030__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c51)
  store %struct.Memory* %call_442c51, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 442c57	 Bytes: 3
  %loadMem_442c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c57 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c57)
  store %struct.Memory* %call_442c57, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1030(%rbp)	 RIP: 442c5a	 Bytes: 6
  %loadMem_442c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c5a = call %struct.Memory* @routine_movl__eax__MINUS0x1030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c5a)
  store %struct.Memory* %call_442c5a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44239b	 RIP: 442c60	 Bytes: 5
  %loadMem_442c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c60 = call %struct.Memory* @routine_jmpq_.L_44239b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c60, i64 -2245, i64 5)
  store %struct.Memory* %call_442c60, %struct.Memory** %MEMORY

  br label %block_.L_44239b

  ; Code: .L_442c65:	 RIP: 442c65	 Bytes: 0
block_.L_442c65:

  ; Code: movl $0x0, -0x103c(%rbp)	 RIP: 442c65	 Bytes: 10
  %loadMem_442c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c65 = call %struct.Memory* @routine_movl__0x0__MINUS0x103c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c65)
  store %struct.Memory* %call_442c65, %struct.Memory** %MEMORY

  ; Code: .L_442c6f:	 RIP: 442c6f	 Bytes: 0
  br label %block_.L_442c6f
block_.L_442c6f:

  ; Code: cmpl $0xa, -0x103c(%rbp)	 RIP: 442c6f	 Bytes: 7
  %loadMem_442c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c6f = call %struct.Memory* @routine_cmpl__0xa__MINUS0x103c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c6f)
  store %struct.Memory* %call_442c6f, %struct.Memory** %MEMORY

  ; Code: jge .L_443152	 RIP: 442c76	 Bytes: 6
  %loadMem_442c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c76 = call %struct.Memory* @routine_jge_.L_443152(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c76, i8* %BRANCH_TAKEN, i64 1244, i64 6, i64 6)
  store %struct.Memory* %call_442c76, %struct.Memory** %MEMORY

  %loadBr_442c76 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442c76 = icmp eq i8 %loadBr_442c76, 1
  br i1 %cmpBr_442c76, label %block_.L_443152, label %block_442c7c

block_442c7c:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 442c7c	 Bytes: 4
  %loadMem_442c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c7c = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c7c)
  store %struct.Memory* %call_442c7c, %struct.Memory** %MEMORY

  ; Code: movslq -0x103c(%rbp), %rcx	 RIP: 442c80	 Bytes: 7
  %loadMem_442c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c80 = call %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c80)
  store %struct.Memory* %call_442c80, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x87f4(%rax,%rcx,4)	 RIP: 442c87	 Bytes: 8
  %loadMem_442c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c87 = call %struct.Memory* @routine_cmpl__0x0__0x87f4__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c87)
  store %struct.Memory* %call_442c87, %struct.Memory** %MEMORY

  ; Code: je .L_443139	 RIP: 442c8f	 Bytes: 6
  %loadMem_442c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c8f = call %struct.Memory* @routine_je_.L_443139(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c8f, i8* %BRANCH_TAKEN, i64 1194, i64 6, i64 6)
  store %struct.Memory* %call_442c8f, %struct.Memory** %MEMORY

  %loadBr_442c8f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442c8f = icmp eq i8 %loadBr_442c8f, 1
  br i1 %cmpBr_442c8f, label %block_.L_443139, label %block_442c95

block_442c95:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 442c95	 Bytes: 4
  %loadMem_442c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c95 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c95)
  store %struct.Memory* %call_442c95, %struct.Memory** %MEMORY

  ; Code: movslq -0x103c(%rbp), %rcx	 RIP: 442c99	 Bytes: 7
  %loadMem_442c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442c99 = call %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442c99)
  store %struct.Memory* %call_442c99, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8894(%rax,%rcx,4)	 RIP: 442ca0	 Bytes: 8
  %loadMem_442ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ca0 = call %struct.Memory* @routine_cmpl__0x0__0x8894__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ca0)
  store %struct.Memory* %call_442ca0, %struct.Memory** %MEMORY

  ; Code: je .L_443139	 RIP: 442ca8	 Bytes: 6
  %loadMem_442ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ca8 = call %struct.Memory* @routine_je_.L_443139(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ca8, i8* %BRANCH_TAKEN, i64 1169, i64 6, i64 6)
  store %struct.Memory* %call_442ca8, %struct.Memory** %MEMORY

  %loadBr_442ca8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442ca8 = icmp eq i8 %loadBr_442ca8, 1
  br i1 %cmpBr_442ca8, label %block_.L_443139, label %block_442cae

block_442cae:
  ; Code: leaq -0x1078(%rbp), %rsi	 RIP: 442cae	 Bytes: 7
  %loadMem_442cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442cae = call %struct.Memory* @routine_leaq_MINUS0x1078__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442cae)
  store %struct.Memory* %call_442cae, %struct.Memory** %MEMORY

  ; Code: leaq -0x107c(%rbp), %rdx	 RIP: 442cb5	 Bytes: 7
  %loadMem_442cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442cb5 = call %struct.Memory* @routine_leaq_MINUS0x107c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442cb5)
  store %struct.Memory* %call_442cb5, %struct.Memory** %MEMORY

  ; Code: leaq -0x1080(%rbp), %rcx	 RIP: 442cbc	 Bytes: 7
  %loadMem_442cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442cbc = call %struct.Memory* @routine_leaq_MINUS0x1080__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442cbc)
  store %struct.Memory* %call_442cbc, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1074(%rbp)	 RIP: 442cc3	 Bytes: 10
  %loadMem_442cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442cc3 = call %struct.Memory* @routine_movl__0x0__MINUS0x1074__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442cc3)
  store %struct.Memory* %call_442cc3, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 442ccd	 Bytes: 4
  %loadMem_442ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ccd = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ccd)
  store %struct.Memory* %call_442ccd, %struct.Memory** %MEMORY

  ; Code: movslq -0x103c(%rbp), %rdi	 RIP: 442cd1	 Bytes: 7
  %loadMem_442cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442cd1 = call %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442cd1)
  store %struct.Memory* %call_442cd1, %struct.Memory** %MEMORY

  ; Code: movl 0x87f4(%rax,%rdi,4), %edi	 RIP: 442cd8	 Bytes: 7
  %loadMem_442cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442cd8 = call %struct.Memory* @routine_movl_0x87f4__rax__rdi_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442cd8)
  store %struct.Memory* %call_442cd8, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %r8	 RIP: 442cdf	 Bytes: 4
  %loadMem_442cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442cdf = call %struct.Memory* @routine_movq_MINUS0x30__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442cdf)
  store %struct.Memory* %call_442cdf, %struct.Memory** %MEMORY

  ; Code: callq .sniff_lunch	 RIP: 442ce3	 Bytes: 5
  %loadMem1_442ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442ce3 = call %struct.Memory* @routine_callq_.sniff_lunch(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442ce3, i64 10589, i64 5, i64 5)
  store %struct.Memory* %call1_442ce3, %struct.Memory** %MEMORY

  %loadMem2_442ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442ce3 = load i64, i64* %3
  %call2_442ce3 = call %struct.Memory* @sub_445640.sniff_lunch(%struct.State* %0, i64  %loadPC_442ce3, %struct.Memory* %loadMem2_442ce3)
  store %struct.Memory* %call2_442ce3, %struct.Memory** %MEMORY

  ; Code: leaq -0x1088(%rbp), %rdi	 RIP: 442ce8	 Bytes: 7
  %loadMem_442ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ce8 = call %struct.Memory* @routine_leaq_MINUS0x1088__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ce8)
  store %struct.Memory* %call_442ce8, %struct.Memory** %MEMORY

  ; Code: xorl %r9d, %r9d	 RIP: 442cef	 Bytes: 3
  %loadMem_442cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442cef = call %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442cef)
  store %struct.Memory* %call_442cef, %struct.Memory** %MEMORY

  ; Code: movl -0x107c(%rbp), %ecx	 RIP: 442cf2	 Bytes: 6
  %loadMem_442cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442cf2 = call %struct.Memory* @routine_movl_MINUS0x107c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442cf2)
  store %struct.Memory* %call_442cf2, %struct.Memory** %MEMORY

  ; Code: movl -0x107c(%rbp), %r8d	 RIP: 442cf8	 Bytes: 7
  %loadMem_442cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442cf8 = call %struct.Memory* @routine_movl_MINUS0x107c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442cf8)
  store %struct.Memory* %call_442cf8, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %esi	 RIP: 442cff	 Bytes: 3
  %loadMem_442cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442cff = call %struct.Memory* @routine_movl__r9d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442cff)
  store %struct.Memory* %call_442cff, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edx	 RIP: 442d02	 Bytes: 3
  %loadMem_442d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d02 = call %struct.Memory* @routine_movl__r9d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d02)
  store %struct.Memory* %call_442d02, %struct.Memory** %MEMORY

  ; Code: callq .set_eyevalue	 RIP: 442d05	 Bytes: 5
  %loadMem1_442d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442d05 = call %struct.Memory* @routine_callq_.set_eyevalue(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442d05, i64 -39269, i64 5, i64 5)
  store %struct.Memory* %call1_442d05, %struct.Memory** %MEMORY

  %loadMem2_442d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442d05 = load i64, i64* %3
  %call2_442d05 = call %struct.Memory* @sub_4393a0.set_eyevalue(%struct.State* %0, i64  %loadPC_442d05, %struct.Memory* %loadMem2_442d05)
  store %struct.Memory* %call2_442d05, %struct.Memory** %MEMORY

  ; Code: movl -0x1080(%rbp), %ecx	 RIP: 442d0a	 Bytes: 6
  %loadMem_442d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d0a = call %struct.Memory* @routine_movl_MINUS0x1080__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d0a)
  store %struct.Memory* %call_442d0a, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 442d10	 Bytes: 4
  %loadMem_442d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d10 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d10)
  store %struct.Memory* %call_442d10, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %ecx	 RIP: 442d14	 Bytes: 2
  %loadMem_442d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d14 = call %struct.Memory* @routine_addl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d14)
  store %struct.Memory* %call_442d14, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 442d16	 Bytes: 2
  %loadMem_442d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d16 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d16)
  store %struct.Memory* %call_442d16, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x107c(%rbp)	 RIP: 442d18	 Bytes: 7
  %loadMem_442d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d18 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x107c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d18)
  store %struct.Memory* %call_442d18, %struct.Memory** %MEMORY

  ; Code: jne .L_442d34	 RIP: 442d1f	 Bytes: 6
  %loadMem_442d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d1f = call %struct.Memory* @routine_jne_.L_442d34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d1f, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_442d1f, %struct.Memory** %MEMORY

  %loadBr_442d1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442d1f = icmp eq i8 %loadBr_442d1f, 1
  br i1 %cmpBr_442d1f, label %block_.L_442d34, label %block_442d25

block_442d25:
  ; Code: movl $0x14, -0x1074(%rbp)	 RIP: 442d25	 Bytes: 10
  %loadMem_442d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d25 = call %struct.Memory* @routine_movl__0x14__MINUS0x1074__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d25)
  store %struct.Memory* %call_442d25, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442ddc	 RIP: 442d2f	 Bytes: 5
  %loadMem_442d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d2f = call %struct.Memory* @routine_jmpq_.L_442ddc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d2f, i64 173, i64 5)
  store %struct.Memory* %call_442d2f, %struct.Memory** %MEMORY

  br label %block_.L_442ddc

  ; Code: .L_442d34:	 RIP: 442d34	 Bytes: 0
block_.L_442d34:

  ; Code: cmpl $0x1, -0x107c(%rbp)	 RIP: 442d34	 Bytes: 7
  %loadMem_442d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d34 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x107c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d34)
  store %struct.Memory* %call_442d34, %struct.Memory** %MEMORY

  ; Code: jne .L_442d73	 RIP: 442d3b	 Bytes: 6
  %loadMem_442d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d3b = call %struct.Memory* @routine_jne_.L_442d73(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d3b, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_442d3b, %struct.Memory** %MEMORY

  %loadBr_442d3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442d3b = icmp eq i8 %loadBr_442d3b, 1
  br i1 %cmpBr_442d3b, label %block_.L_442d73, label %block_442d41

block_442d41:
  ; Code: cmpl $0x1, -0x1080(%rbp)	 RIP: 442d41	 Bytes: 7
  %loadMem_442d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d41 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x1080__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d41)
  store %struct.Memory* %call_442d41, %struct.Memory** %MEMORY

  ; Code: jne .L_442d73	 RIP: 442d48	 Bytes: 6
  %loadMem_442d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d48 = call %struct.Memory* @routine_jne_.L_442d73(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d48, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_442d48, %struct.Memory** %MEMORY

  %loadBr_442d48 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442d48 = icmp eq i8 %loadBr_442d48, 1
  br i1 %cmpBr_442d48, label %block_.L_442d73, label %block_442d4e

block_442d4e:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 442d4e	 Bytes: 4
  %loadMem_442d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d4e = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d4e)
  store %struct.Memory* %call_442d4e, %struct.Memory** %MEMORY

  ; Code: movslq -0x103c(%rbp), %rcx	 RIP: 442d52	 Bytes: 7
  %loadMem_442d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d52 = call %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d52)
  store %struct.Memory* %call_442d52, %struct.Memory** %MEMORY

  ; Code: movl 0x87f4(%rax,%rcx,4), %edi	 RIP: 442d59	 Bytes: 7
  %loadMem_442d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d59 = call %struct.Memory* @routine_movl_0x87f4__rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d59)
  store %struct.Memory* %call_442d59, %struct.Memory** %MEMORY

  ; Code: callq .countstones	 RIP: 442d60	 Bytes: 5
  %loadMem1_442d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442d60 = call %struct.Memory* @routine_callq_.countstones(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442d60, i64 -193904, i64 5, i64 5)
  store %struct.Memory* %call1_442d60, %struct.Memory** %MEMORY

  %loadMem2_442d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442d60 = load i64, i64* %3
  %call2_442d60 = call %struct.Memory* @sub_4137f0.countstones(%struct.State* %0, i64  %loadPC_442d60, %struct.Memory* %loadMem2_442d60)
  store %struct.Memory* %call2_442d60, %struct.Memory** %MEMORY

  ; Code: addl $0x3c, %eax	 RIP: 442d65	 Bytes: 3
  %loadMem_442d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d65 = call %struct.Memory* @routine_addl__0x3c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d65)
  store %struct.Memory* %call_442d65, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1074(%rbp)	 RIP: 442d68	 Bytes: 6
  %loadMem_442d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d68 = call %struct.Memory* @routine_movl__eax__MINUS0x1074__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d68)
  store %struct.Memory* %call_442d68, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442dd7	 RIP: 442d6e	 Bytes: 5
  %loadMem_442d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d6e = call %struct.Memory* @routine_jmpq_.L_442dd7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d6e, i64 105, i64 5)
  store %struct.Memory* %call_442d6e, %struct.Memory** %MEMORY

  br label %block_.L_442dd7

  ; Code: .L_442d73:	 RIP: 442d73	 Bytes: 0
block_.L_442d73:

  ; Code: cmpl $0x1, -0x107c(%rbp)	 RIP: 442d73	 Bytes: 7
  %loadMem_442d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d73 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x107c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d73)
  store %struct.Memory* %call_442d73, %struct.Memory** %MEMORY

  ; Code: jne .L_442db2	 RIP: 442d7a	 Bytes: 6
  %loadMem_442d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d7a = call %struct.Memory* @routine_jne_.L_442db2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d7a, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_442d7a, %struct.Memory** %MEMORY

  %loadBr_442d7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442d7a = icmp eq i8 %loadBr_442d7a, 1
  br i1 %cmpBr_442d7a, label %block_.L_442db2, label %block_442d80

block_442d80:
  ; Code: cmpl $0x2, -0x1080(%rbp)	 RIP: 442d80	 Bytes: 7
  %loadMem_442d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d80 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x1080__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d80)
  store %struct.Memory* %call_442d80, %struct.Memory** %MEMORY

  ; Code: jne .L_442db2	 RIP: 442d87	 Bytes: 6
  %loadMem_442d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d87 = call %struct.Memory* @routine_jne_.L_442db2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d87, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_442d87, %struct.Memory** %MEMORY

  %loadBr_442d87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442d87 = icmp eq i8 %loadBr_442d87, 1
  br i1 %cmpBr_442d87, label %block_.L_442db2, label %block_442d8d

block_442d8d:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 442d8d	 Bytes: 4
  %loadMem_442d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d8d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d8d)
  store %struct.Memory* %call_442d8d, %struct.Memory** %MEMORY

  ; Code: movslq -0x103c(%rbp), %rcx	 RIP: 442d91	 Bytes: 7
  %loadMem_442d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d91 = call %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d91)
  store %struct.Memory* %call_442d91, %struct.Memory** %MEMORY

  ; Code: movl 0x87f4(%rax,%rcx,4), %edi	 RIP: 442d98	 Bytes: 7
  %loadMem_442d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442d98 = call %struct.Memory* @routine_movl_0x87f4__rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442d98)
  store %struct.Memory* %call_442d98, %struct.Memory** %MEMORY

  ; Code: callq .countstones	 RIP: 442d9f	 Bytes: 5
  %loadMem1_442d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442d9f = call %struct.Memory* @routine_callq_.countstones(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442d9f, i64 -193967, i64 5, i64 5)
  store %struct.Memory* %call1_442d9f, %struct.Memory** %MEMORY

  %loadMem2_442d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442d9f = load i64, i64* %3
  %call2_442d9f = call %struct.Memory* @sub_4137f0.countstones(%struct.State* %0, i64  %loadPC_442d9f, %struct.Memory* %loadMem2_442d9f)
  store %struct.Memory* %call2_442d9f, %struct.Memory** %MEMORY

  ; Code: addl $0x46, %eax	 RIP: 442da4	 Bytes: 3
  %loadMem_442da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442da4 = call %struct.Memory* @routine_addl__0x46___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442da4)
  store %struct.Memory* %call_442da4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1074(%rbp)	 RIP: 442da7	 Bytes: 6
  %loadMem_442da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442da7 = call %struct.Memory* @routine_movl__eax__MINUS0x1074__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442da7)
  store %struct.Memory* %call_442da7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442dd2	 RIP: 442dad	 Bytes: 5
  %loadMem_442dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442dad = call %struct.Memory* @routine_jmpq_.L_442dd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442dad, i64 37, i64 5)
  store %struct.Memory* %call_442dad, %struct.Memory** %MEMORY

  br label %block_.L_442dd2

  ; Code: .L_442db2:	 RIP: 442db2	 Bytes: 0
block_.L_442db2:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 442db2	 Bytes: 4
  %loadMem_442db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442db2 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442db2)
  store %struct.Memory* %call_442db2, %struct.Memory** %MEMORY

  ; Code: movslq -0x103c(%rbp), %rcx	 RIP: 442db6	 Bytes: 7
  %loadMem_442db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442db6 = call %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442db6)
  store %struct.Memory* %call_442db6, %struct.Memory** %MEMORY

  ; Code: movl 0x87f4(%rax,%rcx,4), %edi	 RIP: 442dbd	 Bytes: 7
  %loadMem_442dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442dbd = call %struct.Memory* @routine_movl_0x87f4__rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442dbd)
  store %struct.Memory* %call_442dbd, %struct.Memory** %MEMORY

  ; Code: callq .countstones	 RIP: 442dc4	 Bytes: 5
  %loadMem1_442dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442dc4 = call %struct.Memory* @routine_callq_.countstones(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442dc4, i64 -194004, i64 5, i64 5)
  store %struct.Memory* %call1_442dc4, %struct.Memory** %MEMORY

  %loadMem2_442dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442dc4 = load i64, i64* %3
  %call2_442dc4 = call %struct.Memory* @sub_4137f0.countstones(%struct.State* %0, i64  %loadPC_442dc4, %struct.Memory* %loadMem2_442dc4)
  store %struct.Memory* %call2_442dc4, %struct.Memory** %MEMORY

  ; Code: addl $0x4b, %eax	 RIP: 442dc9	 Bytes: 3
  %loadMem_442dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442dc9 = call %struct.Memory* @routine_addl__0x4b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442dc9)
  store %struct.Memory* %call_442dc9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1074(%rbp)	 RIP: 442dcc	 Bytes: 6
  %loadMem_442dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442dcc = call %struct.Memory* @routine_movl__eax__MINUS0x1074__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442dcc)
  store %struct.Memory* %call_442dcc, %struct.Memory** %MEMORY

  ; Code: .L_442dd2:	 RIP: 442dd2	 Bytes: 0
  br label %block_.L_442dd2
block_.L_442dd2:

  ; Code: jmpq .L_442dd7	 RIP: 442dd2	 Bytes: 5
  %loadMem_442dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442dd2 = call %struct.Memory* @routine_jmpq_.L_442dd7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442dd2, i64 5, i64 5)
  store %struct.Memory* %call_442dd2, %struct.Memory** %MEMORY

  br label %block_.L_442dd7

  ; Code: .L_442dd7:	 RIP: 442dd7	 Bytes: 0
block_.L_442dd7:

  ; Code: jmpq .L_442ddc	 RIP: 442dd7	 Bytes: 5
  %loadMem_442dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442dd7 = call %struct.Memory* @routine_jmpq_.L_442ddc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442dd7, i64 5, i64 5)
  store %struct.Memory* %call_442dd7, %struct.Memory** %MEMORY

  br label %block_.L_442ddc

  ; Code: .L_442ddc:	 RIP: 442ddc	 Bytes: 0
block_.L_442ddc:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 442ddc	 Bytes: 4
  %loadMem_442ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ddc = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ddc)
  store %struct.Memory* %call_442ddc, %struct.Memory** %MEMORY

  ; Code: movslq -0x103c(%rbp), %rcx	 RIP: 442de0	 Bytes: 7
  %loadMem_442de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442de0 = call %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442de0)
  store %struct.Memory* %call_442de0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, 0x881c(%rax,%rcx,4)	 RIP: 442de7	 Bytes: 8
  %loadMem_442de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442de7 = call %struct.Memory* @routine_cmpl__0x5__0x881c__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442de7)
  store %struct.Memory* %call_442de7, %struct.Memory** %MEMORY

  ; Code: je .L_442e04	 RIP: 442def	 Bytes: 6
  %loadMem_442def = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442def = call %struct.Memory* @routine_je_.L_442e04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442def, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_442def, %struct.Memory** %MEMORY

  %loadBr_442def = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442def = icmp eq i8 %loadBr_442def, 1
  br i1 %cmpBr_442def, label %block_.L_442e04, label %block_442df5

block_442df5:
  ; Code: movl -0x1074(%rbp), %eax	 RIP: 442df5	 Bytes: 6
  %loadMem_442df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442df5 = call %struct.Memory* @routine_movl_MINUS0x1074__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442df5)
  store %struct.Memory* %call_442df5, %struct.Memory** %MEMORY

  ; Code: subl $0xa, %eax	 RIP: 442dfb	 Bytes: 3
  %loadMem_442dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442dfb = call %struct.Memory* @routine_subl__0xa___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442dfb)
  store %struct.Memory* %call_442dfb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1074(%rbp)	 RIP: 442dfe	 Bytes: 6
  %loadMem_442dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442dfe = call %struct.Memory* @routine_movl__eax__MINUS0x1074__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442dfe)
  store %struct.Memory* %call_442dfe, %struct.Memory** %MEMORY

  ; Code: .L_442e04:	 RIP: 442e04	 Bytes: 0
  br label %block_.L_442e04
block_.L_442e04:

  ; Code: cmpl $0x15, -0x1074(%rbp)	 RIP: 442e04	 Bytes: 7
  %loadMem_442e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e04 = call %struct.Memory* @routine_cmpl__0x15__MINUS0x1074__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e04)
  store %struct.Memory* %call_442e04, %struct.Memory** %MEMORY

  ; Code: jge .L_442e66	 RIP: 442e0b	 Bytes: 6
  %loadMem_442e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e0b = call %struct.Memory* @routine_jge_.L_442e66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e0b, i8* %BRANCH_TAKEN, i64 91, i64 6, i64 6)
  store %struct.Memory* %call_442e0b, %struct.Memory** %MEMORY

  %loadBr_442e0b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442e0b = icmp eq i8 %loadBr_442e0b, 1
  br i1 %cmpBr_442e0b, label %block_.L_442e66, label %block_442e11

block_442e11:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 442e11	 Bytes: 4
  %loadMem_442e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e11 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e11)
  store %struct.Memory* %call_442e11, %struct.Memory** %MEMORY

  ; Code: movslq -0x103c(%rbp), %rcx	 RIP: 442e15	 Bytes: 7
  %loadMem_442e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e15 = call %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e15)
  store %struct.Memory* %call_442e15, %struct.Memory** %MEMORY

  ; Code: movl 0x87f4(%rax,%rcx,4), %edi	 RIP: 442e1c	 Bytes: 7
  %loadMem_442e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e1c = call %struct.Memory* @routine_movl_0x87f4__rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e1c)
  store %struct.Memory* %call_442e1c, %struct.Memory** %MEMORY

  ; Code: callq .countstones	 RIP: 442e23	 Bytes: 5
  %loadMem1_442e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442e23 = call %struct.Memory* @routine_callq_.countstones(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442e23, i64 -194099, i64 5, i64 5)
  store %struct.Memory* %call1_442e23, %struct.Memory** %MEMORY

  %loadMem2_442e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442e23 = load i64, i64* %3
  %call2_442e23 = call %struct.Memory* @sub_4137f0.countstones(%struct.State* %0, i64  %loadPC_442e23, %struct.Memory* %loadMem2_442e23)
  store %struct.Memory* %call2_442e23, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 442e28	 Bytes: 3
  %loadMem_442e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e28 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e28)
  store %struct.Memory* %call_442e28, %struct.Memory** %MEMORY

  ; Code: jne .L_442e66	 RIP: 442e2b	 Bytes: 6
  %loadMem_442e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e2b = call %struct.Memory* @routine_jne_.L_442e66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e2b, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_442e2b, %struct.Memory** %MEMORY

  %loadBr_442e2b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442e2b = icmp eq i8 %loadBr_442e2b, 1
  br i1 %cmpBr_442e2b, label %block_.L_442e66, label %block_442e31

block_442e31:
  ; Code: movl -0x1048(%rbp), %eax	 RIP: 442e31	 Bytes: 6
  %loadMem_442e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e31 = call %struct.Memory* @routine_movl_MINUS0x1048__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e31)
  store %struct.Memory* %call_442e31, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 442e37	 Bytes: 3
  %loadMem_442e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e37 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e37)
  store %struct.Memory* %call_442e37, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1048(%rbp)	 RIP: 442e3a	 Bytes: 6
  %loadMem_442e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e3a = call %struct.Memory* @routine_movl__eax__MINUS0x1048__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e3a)
  store %struct.Memory* %call_442e3a, %struct.Memory** %MEMORY

  ; Code: movl -0x1044(%rbp), %eax	 RIP: 442e40	 Bytes: 6
  %loadMem_442e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e40 = call %struct.Memory* @routine_movl_MINUS0x1044__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e40)
  store %struct.Memory* %call_442e40, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 442e46	 Bytes: 2
  %loadMem_442e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e46 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e46)
  store %struct.Memory* %call_442e46, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 442e48	 Bytes: 3
  %loadMem_442e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e48 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e48)
  store %struct.Memory* %call_442e48, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1044(%rbp)	 RIP: 442e4b	 Bytes: 6
  %loadMem_442e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e4b = call %struct.Memory* @routine_movl__ecx__MINUS0x1044__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e4b)
  store %struct.Memory* %call_442e4b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 442e51	 Bytes: 3
  %loadMem_442e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e51 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e51)
  store %struct.Memory* %call_442e51, %struct.Memory** %MEMORY

  ; Code: movl -0x1088(%rbp), %eax	 RIP: 442e54	 Bytes: 6
  %loadMem_442e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e54 = call %struct.Memory* @routine_movl_MINUS0x1088__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e54)
  store %struct.Memory* %call_442e54, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd00(%rbp,%rdx,4)	 RIP: 442e5a	 Bytes: 7
  %loadMem_442e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e5a = call %struct.Memory* @routine_movl__eax__MINUS0xd00__rbp__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e5a)
  store %struct.Memory* %call_442e5a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44313e	 RIP: 442e61	 Bytes: 5
  %loadMem_442e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e61 = call %struct.Memory* @routine_jmpq_.L_44313e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e61, i64 733, i64 5)
  store %struct.Memory* %call_442e61, %struct.Memory** %MEMORY

  br label %block_.L_44313e

  ; Code: .L_442e66:	 RIP: 442e66	 Bytes: 0
block_.L_442e66:

  ; Code: cmpl $0x0, -0x40(%rbp)	 RIP: 442e66	 Bytes: 4
  %loadMem_442e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e66 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e66)
  store %struct.Memory* %call_442e66, %struct.Memory** %MEMORY

  ; Code: je .L_44305e	 RIP: 442e6a	 Bytes: 6
  %loadMem_442e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e6a = call %struct.Memory* @routine_je_.L_44305e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e6a, i8* %BRANCH_TAKEN, i64 500, i64 6, i64 6)
  store %struct.Memory* %call_442e6a, %struct.Memory** %MEMORY

  %loadBr_442e6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442e6a = icmp eq i8 %loadBr_442e6a, 1
  br i1 %cmpBr_442e6a, label %block_.L_44305e, label %block_442e70

block_442e70:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 442e70	 Bytes: 4
  %loadMem_442e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e70 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e70)
  store %struct.Memory* %call_442e70, %struct.Memory** %MEMORY

  ; Code: movslq -0x103c(%rbp), %rcx	 RIP: 442e74	 Bytes: 7
  %loadMem_442e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e74 = call %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e74)
  store %struct.Memory* %call_442e74, %struct.Memory** %MEMORY

  ; Code: movl 0x87f4(%rax,%rcx,4), %edi	 RIP: 442e7b	 Bytes: 7
  %loadMem_442e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e7b = call %struct.Memory* @routine_movl_0x87f4__rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e7b)
  store %struct.Memory* %call_442e7b, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 442e82	 Bytes: 4
  %loadMem_442e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e82 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e82)
  store %struct.Memory* %call_442e82, %struct.Memory** %MEMORY

  ; Code: movslq -0x103c(%rbp), %rcx	 RIP: 442e86	 Bytes: 7
  %loadMem_442e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e86 = call %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e86)
  store %struct.Memory* %call_442e86, %struct.Memory** %MEMORY

  ; Code: movl 0x8894(%rax,%rcx,4), %esi	 RIP: 442e8d	 Bytes: 7
  %loadMem_442e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e8d = call %struct.Memory* @routine_movl_0x8894__rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e8d)
  store %struct.Memory* %call_442e8d, %struct.Memory** %MEMORY

  ; Code: callq .improve_lunch_defense	 RIP: 442e94	 Bytes: 5
  %loadMem1_442e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442e94 = call %struct.Memory* @routine_callq_.improve_lunch_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442e94, i64 11276, i64 5, i64 5)
  store %struct.Memory* %call1_442e94, %struct.Memory** %MEMORY

  %loadMem2_442e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442e94 = load i64, i64* %3
  %call2_442e94 = call %struct.Memory* @sub_445aa0.improve_lunch_defense(%struct.State* %0, i64  %loadPC_442e94, %struct.Memory* %loadMem2_442e94)
  store %struct.Memory* %call2_442e94, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x102c(%rbp)	 RIP: 442e99	 Bytes: 6
  %loadMem_442e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e99 = call %struct.Memory* @routine_movl__eax__MINUS0x102c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e99)
  store %struct.Memory* %call_442e99, %struct.Memory** %MEMORY

  ; Code: movslq -0x102c(%rbp), %rcx	 RIP: 442e9f	 Bytes: 7
  %loadMem_442e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442e9f = call %struct.Memory* @routine_movslq_MINUS0x102c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442e9f)
  store %struct.Memory* %call_442e9f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x9d0(%rbp,%rcx,4)	 RIP: 442ea6	 Bytes: 8
  %loadMem_442ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ea6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x9d0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ea6)
  store %struct.Memory* %call_442ea6, %struct.Memory** %MEMORY

  ; Code: je .L_442fb2	 RIP: 442eae	 Bytes: 6
  %loadMem_442eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442eae = call %struct.Memory* @routine_je_.L_442fb2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442eae, i8* %BRANCH_TAKEN, i64 260, i64 6, i64 6)
  store %struct.Memory* %call_442eae, %struct.Memory** %MEMORY

  %loadBr_442eae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442eae = icmp eq i8 %loadBr_442eae, 1
  br i1 %cmpBr_442eae, label %block_.L_442fb2, label %block_442eb4

block_442eb4:
  ; Code: movl $0x0, -0x108c(%rbp)	 RIP: 442eb4	 Bytes: 10
  %loadMem_442eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442eb4 = call %struct.Memory* @routine_movl__0x0__MINUS0x108c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442eb4)
  store %struct.Memory* %call_442eb4, %struct.Memory** %MEMORY

  ; Code: .L_442ebe:	 RIP: 442ebe	 Bytes: 0
  br label %block_.L_442ebe
block_.L_442ebe:

  ; Code: movl -0x108c(%rbp), %eax	 RIP: 442ebe	 Bytes: 6
  %loadMem_442ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ebe = call %struct.Memory* @routine_movl_MINUS0x108c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ebe)
  store %struct.Memory* %call_442ebe, %struct.Memory** %MEMORY

  ; Code: movl -0x1044(%rbp), %ecx	 RIP: 442ec4	 Bytes: 6
  %loadMem_442ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ec4 = call %struct.Memory* @routine_movl_MINUS0x1044__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ec4)
  store %struct.Memory* %call_442ec4, %struct.Memory** %MEMORY

  ; Code: subl -0x1048(%rbp), %ecx	 RIP: 442eca	 Bytes: 6
  %loadMem_442eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442eca = call %struct.Memory* @routine_subl_MINUS0x1048__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442eca)
  store %struct.Memory* %call_442eca, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 442ed0	 Bytes: 2
  %loadMem_442ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ed0 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ed0)
  store %struct.Memory* %call_442ed0, %struct.Memory** %MEMORY

  ; Code: jge .L_442f10	 RIP: 442ed2	 Bytes: 6
  %loadMem_442ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ed2 = call %struct.Memory* @routine_jge_.L_442f10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ed2, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_442ed2, %struct.Memory** %MEMORY

  %loadBr_442ed2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442ed2 = icmp eq i8 %loadBr_442ed2, 1
  br i1 %cmpBr_442ed2, label %block_.L_442f10, label %block_442ed8

block_442ed8:
  ; Code: movslq -0x108c(%rbp), %rax	 RIP: 442ed8	 Bytes: 7
  %loadMem_442ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ed8 = call %struct.Memory* @routine_movslq_MINUS0x108c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ed8)
  store %struct.Memory* %call_442ed8, %struct.Memory** %MEMORY

  ; Code: movl -0x1020(%rbp,%rax,4), %ecx	 RIP: 442edf	 Bytes: 7
  %loadMem_442edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442edf = call %struct.Memory* @routine_movl_MINUS0x1020__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442edf)
  store %struct.Memory* %call_442edf, %struct.Memory** %MEMORY

  ; Code: cmpl -0x102c(%rbp), %ecx	 RIP: 442ee6	 Bytes: 6
  %loadMem_442ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ee6 = call %struct.Memory* @routine_cmpl_MINUS0x102c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ee6)
  store %struct.Memory* %call_442ee6, %struct.Memory** %MEMORY

  ; Code: jne .L_442ef7	 RIP: 442eec	 Bytes: 6
  %loadMem_442eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442eec = call %struct.Memory* @routine_jne_.L_442ef7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442eec, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_442eec, %struct.Memory** %MEMORY

  %loadBr_442eec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442eec = icmp eq i8 %loadBr_442eec, 1
  br i1 %cmpBr_442eec, label %block_.L_442ef7, label %block_442ef2

block_442ef2:
  ; Code: jmpq .L_442f10	 RIP: 442ef2	 Bytes: 5
  %loadMem_442ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ef2 = call %struct.Memory* @routine_jmpq_.L_442f10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ef2, i64 30, i64 5)
  store %struct.Memory* %call_442ef2, %struct.Memory** %MEMORY

  br label %block_.L_442f10

  ; Code: .L_442ef7:	 RIP: 442ef7	 Bytes: 0
block_.L_442ef7:

  ; Code: jmpq .L_442efc	 RIP: 442ef7	 Bytes: 5
  %loadMem_442ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ef7 = call %struct.Memory* @routine_jmpq_.L_442efc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ef7, i64 5, i64 5)
  store %struct.Memory* %call_442ef7, %struct.Memory** %MEMORY

  br label %block_.L_442efc

  ; Code: .L_442efc:	 RIP: 442efc	 Bytes: 0
block_.L_442efc:

  ; Code: movl -0x108c(%rbp), %eax	 RIP: 442efc	 Bytes: 6
  %loadMem_442efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442efc = call %struct.Memory* @routine_movl_MINUS0x108c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442efc)
  store %struct.Memory* %call_442efc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 442f02	 Bytes: 3
  %loadMem_442f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f02 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f02)
  store %struct.Memory* %call_442f02, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x108c(%rbp)	 RIP: 442f05	 Bytes: 6
  %loadMem_442f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f05 = call %struct.Memory* @routine_movl__eax__MINUS0x108c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f05)
  store %struct.Memory* %call_442f05, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442ebe	 RIP: 442f0b	 Bytes: 5
  %loadMem_442f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f0b = call %struct.Memory* @routine_jmpq_.L_442ebe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f0b, i64 -77, i64 5)
  store %struct.Memory* %call_442f0b, %struct.Memory** %MEMORY

  br label %block_.L_442ebe

  ; Code: .L_442f10:	 RIP: 442f10	 Bytes: 0
block_.L_442f10:

  ; Code: movl -0x108c(%rbp), %eax	 RIP: 442f10	 Bytes: 6
  %loadMem_442f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f10 = call %struct.Memory* @routine_movl_MINUS0x108c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f10)
  store %struct.Memory* %call_442f10, %struct.Memory** %MEMORY

  ; Code: movl -0x1044(%rbp), %ecx	 RIP: 442f16	 Bytes: 6
  %loadMem_442f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f16 = call %struct.Memory* @routine_movl_MINUS0x1044__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f16)
  store %struct.Memory* %call_442f16, %struct.Memory** %MEMORY

  ; Code: subl -0x1048(%rbp), %ecx	 RIP: 442f1c	 Bytes: 6
  %loadMem_442f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f1c = call %struct.Memory* @routine_subl_MINUS0x1048__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f1c)
  store %struct.Memory* %call_442f1c, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 442f22	 Bytes: 2
  %loadMem_442f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f22 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f22)
  store %struct.Memory* %call_442f22, %struct.Memory** %MEMORY

  ; Code: jge .L_442f2f	 RIP: 442f24	 Bytes: 6
  %loadMem_442f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f24 = call %struct.Memory* @routine_jge_.L_442f2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f24, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_442f24, %struct.Memory** %MEMORY

  %loadBr_442f24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442f24 = icmp eq i8 %loadBr_442f24, 1
  br i1 %cmpBr_442f24, label %block_.L_442f2f, label %block_442f2a

block_442f2a:
  ; Code: jmpq .L_442f57	 RIP: 442f2a	 Bytes: 5
  %loadMem_442f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f2a = call %struct.Memory* @routine_jmpq_.L_442f57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f2a, i64 45, i64 5)
  store %struct.Memory* %call_442f2a, %struct.Memory** %MEMORY

  br label %block_.L_442f57

  ; Code: .L_442f2f:	 RIP: 442f2f	 Bytes: 0
block_.L_442f2f:

  ; Code: movq $0x57dd2e, %rdi	 RIP: 442f2f	 Bytes: 10
  %loadMem_442f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f2f = call %struct.Memory* @routine_movq__0x57dd2e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f2f)
  store %struct.Memory* %call_442f2f, %struct.Memory** %MEMORY

  ; Code: movl $0xa63, %esi	 RIP: 442f39	 Bytes: 5
  %loadMem_442f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f39 = call %struct.Memory* @routine_movl__0xa63___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f39)
  store %struct.Memory* %call_442f39, %struct.Memory** %MEMORY

  ; Code: movq $0x57e273, %rdx	 RIP: 442f3e	 Bytes: 10
  %loadMem_442f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f3e = call %struct.Memory* @routine_movq__0x57e273___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f3e)
  store %struct.Memory* %call_442f3e, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 442f48	 Bytes: 5
  %loadMem_442f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f48 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f48)
  store %struct.Memory* %call_442f48, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 442f4d	 Bytes: 2
  %loadMem_442f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f4d = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f4d)
  store %struct.Memory* %call_442f4d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 442f4f	 Bytes: 3
  %loadMem_442f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f4f = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f4f)
  store %struct.Memory* %call_442f4f, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 442f52	 Bytes: 5
  %loadMem1_442f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442f52 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442f52, i64 61758, i64 5, i64 5)
  store %struct.Memory* %call1_442f52, %struct.Memory** %MEMORY

  %loadMem2_442f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442f52 = load i64, i64* %3
  %call2_442f52 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_442f52, %struct.Memory* %loadMem2_442f52)
  store %struct.Memory* %call2_442f52, %struct.Memory** %MEMORY

  ; Code: .L_442f57:	 RIP: 442f57	 Bytes: 0
  br label %block_.L_442f57
block_.L_442f57:

  ; Code: leaq -0x1088(%rbp), %rsi	 RIP: 442f57	 Bytes: 7
  %loadMem_442f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f57 = call %struct.Memory* @routine_leaq_MINUS0x1088__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f57)
  store %struct.Memory* %call_442f57, %struct.Memory** %MEMORY

  ; Code: leaq -0xd00(%rbp), %rax	 RIP: 442f5e	 Bytes: 7
  %loadMem_442f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f5e = call %struct.Memory* @routine_leaq_MINUS0xd00__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f5e)
  store %struct.Memory* %call_442f5e, %struct.Memory** %MEMORY

  ; Code: movslq -0x108c(%rbp), %rcx	 RIP: 442f65	 Bytes: 7
  %loadMem_442f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f65 = call %struct.Memory* @routine_movslq_MINUS0x108c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f65)
  store %struct.Memory* %call_442f65, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 442f6c	 Bytes: 4
  %loadMem_442f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f6c = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f6c)
  store %struct.Memory* %call_442f6c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 442f70	 Bytes: 3
  %loadMem_442f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f70 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f70)
  store %struct.Memory* %call_442f70, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 442f73	 Bytes: 3
  %loadMem_442f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f73 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f73)
  store %struct.Memory* %call_442f73, %struct.Memory** %MEMORY

  ; Code: movslq -0x108c(%rbp), %rcx	 RIP: 442f76	 Bytes: 7
  %loadMem_442f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f76 = call %struct.Memory* @routine_movslq_MINUS0x108c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f76)
  store %struct.Memory* %call_442f76, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 442f7d	 Bytes: 4
  %loadMem_442f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f7d = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f7d)
  store %struct.Memory* %call_442f7d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 442f81	 Bytes: 3
  %loadMem_442f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f81 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f81)
  store %struct.Memory* %call_442f81, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 442f84	 Bytes: 3
  %loadMem_442f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f84 = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f84)
  store %struct.Memory* %call_442f84, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 442f87	 Bytes: 3
  %loadMem_442f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f87 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f87)
  store %struct.Memory* %call_442f87, %struct.Memory** %MEMORY

  ; Code: callq .add_eyevalues	 RIP: 442f8a	 Bytes: 5
  %loadMem1_442f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_442f8a = call %struct.Memory* @routine_callq_.add_eyevalues(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_442f8a, i64 -25466, i64 5, i64 5)
  store %struct.Memory* %call1_442f8a, %struct.Memory** %MEMORY

  %loadMem2_442f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_442f8a = load i64, i64* %3
  %call2_442f8a = call %struct.Memory* @sub_43cc10.add_eyevalues(%struct.State* %0, i64  %loadPC_442f8a, %struct.Memory* %loadMem2_442f8a)
  store %struct.Memory* %call2_442f8a, %struct.Memory** %MEMORY

  ; Code: movslq -0x108c(%rbp), %rax	 RIP: 442f8f	 Bytes: 7
  %loadMem_442f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f8f = call %struct.Memory* @routine_movslq_MINUS0x108c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f8f)
  store %struct.Memory* %call_442f8f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, -0xd00(%rbp,%rax,4)	 RIP: 442f96	 Bytes: 8
  %loadMem_442f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f96 = call %struct.Memory* @routine_movb__0x0__MINUS0xd00__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f96)
  store %struct.Memory* %call_442f96, %struct.Memory** %MEMORY

  ; Code: movslq -0x108c(%rbp), %rax	 RIP: 442f9e	 Bytes: 7
  %loadMem_442f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442f9e = call %struct.Memory* @routine_movslq_MINUS0x108c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442f9e)
  store %struct.Memory* %call_442f9e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, -0xcff(%rbp,%rax,4)	 RIP: 442fa5	 Bytes: 8
  %loadMem_442fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442fa5 = call %struct.Memory* @routine_movb__0x0__MINUS0xcff__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442fa5)
  store %struct.Memory* %call_442fa5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442fe2	 RIP: 442fad	 Bytes: 5
  %loadMem_442fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442fad = call %struct.Memory* @routine_jmpq_.L_442fe2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442fad, i64 53, i64 5)
  store %struct.Memory* %call_442fad, %struct.Memory** %MEMORY

  br label %block_.L_442fe2

  ; Code: .L_442fb2:	 RIP: 442fb2	 Bytes: 0
block_.L_442fb2:

  ; Code: movl -0x1048(%rbp), %eax	 RIP: 442fb2	 Bytes: 6
  %loadMem_442fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442fb2 = call %struct.Memory* @routine_movl_MINUS0x1048__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442fb2)
  store %struct.Memory* %call_442fb2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 442fb8	 Bytes: 3
  %loadMem_442fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442fb8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442fb8)
  store %struct.Memory* %call_442fb8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1048(%rbp)	 RIP: 442fbb	 Bytes: 6
  %loadMem_442fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442fbb = call %struct.Memory* @routine_movl__eax__MINUS0x1048__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442fbb)
  store %struct.Memory* %call_442fbb, %struct.Memory** %MEMORY

  ; Code: movl -0x1044(%rbp), %eax	 RIP: 442fc1	 Bytes: 6
  %loadMem_442fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442fc1 = call %struct.Memory* @routine_movl_MINUS0x1044__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442fc1)
  store %struct.Memory* %call_442fc1, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 442fc7	 Bytes: 2
  %loadMem_442fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442fc7 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442fc7)
  store %struct.Memory* %call_442fc7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 442fc9	 Bytes: 3
  %loadMem_442fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442fc9 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442fc9)
  store %struct.Memory* %call_442fc9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1044(%rbp)	 RIP: 442fcc	 Bytes: 6
  %loadMem_442fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442fcc = call %struct.Memory* @routine_movl__ecx__MINUS0x1044__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442fcc)
  store %struct.Memory* %call_442fcc, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 442fd2	 Bytes: 3
  %loadMem_442fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442fd2 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442fd2)
  store %struct.Memory* %call_442fd2, %struct.Memory** %MEMORY

  ; Code: movl -0x1088(%rbp), %eax	 RIP: 442fd5	 Bytes: 6
  %loadMem_442fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442fd5 = call %struct.Memory* @routine_movl_MINUS0x1088__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442fd5)
  store %struct.Memory* %call_442fd5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd00(%rbp,%rdx,4)	 RIP: 442fdb	 Bytes: 7
  %loadMem_442fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442fdb = call %struct.Memory* @routine_movl__eax__MINUS0xd00__rbp__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442fdb)
  store %struct.Memory* %call_442fdb, %struct.Memory** %MEMORY

  ; Code: .L_442fe2:	 RIP: 442fe2	 Bytes: 0
  br label %block_.L_442fe2
block_.L_442fe2:

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 442fe2	 Bytes: 8
  %loadMem_442fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442fe2 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442fe2)
  store %struct.Memory* %call_442fe2, %struct.Memory** %MEMORY

  ; Code: jne .L_442ff5	 RIP: 442fea	 Bytes: 6
  %loadMem_442fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442fea = call %struct.Memory* @routine_jne_.L_442ff5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442fea, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_442fea, %struct.Memory** %MEMORY

  %loadBr_442fea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442fea = icmp eq i8 %loadBr_442fea, 1
  br i1 %cmpBr_442fea, label %block_.L_442ff5, label %block_442ff0

block_442ff0:
  ; Code: jmpq .L_44302a	 RIP: 442ff0	 Bytes: 5
  %loadMem_442ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ff0 = call %struct.Memory* @routine_jmpq_.L_44302a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ff0, i64 58, i64 5)
  store %struct.Memory* %call_442ff0, %struct.Memory** %MEMORY

  br label %block_.L_44302a

  ; Code: .L_442ff5:	 RIP: 442ff5	 Bytes: 0
block_.L_442ff5:

  ; Code: movq $0x57e28d, %rdi	 RIP: 442ff5	 Bytes: 10
  %loadMem_442ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442ff5 = call %struct.Memory* @routine_movq__0x57e28d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442ff5)
  store %struct.Memory* %call_442ff5, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 442fff	 Bytes: 4
  %loadMem_442fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442fff = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442fff)
  store %struct.Memory* %call_442fff, %struct.Memory** %MEMORY

  ; Code: movslq -0x103c(%rbp), %rcx	 RIP: 443003	 Bytes: 7
  %loadMem_443003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443003 = call %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443003)
  store %struct.Memory* %call_443003, %struct.Memory** %MEMORY

  ; Code: movl 0x87f4(%rax,%rcx,4), %esi	 RIP: 44300a	 Bytes: 7
  %loadMem_44300a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44300a = call %struct.Memory* @routine_movl_0x87f4__rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44300a)
  store %struct.Memory* %call_44300a, %struct.Memory** %MEMORY

  ; Code: movl -0x102c(%rbp), %edx	 RIP: 443011	 Bytes: 6
  %loadMem_443011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443011 = call %struct.Memory* @routine_movl_MINUS0x102c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443011)
  store %struct.Memory* %call_443011, %struct.Memory** %MEMORY

  ; Code: movl -0x1074(%rbp), %ecx	 RIP: 443017	 Bytes: 6
  %loadMem_443017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443017 = call %struct.Memory* @routine_movl_MINUS0x1074__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443017)
  store %struct.Memory* %call_443017, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44301d	 Bytes: 2
  %loadMem_44301d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44301d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44301d)
  store %struct.Memory* %call_44301d, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44301f	 Bytes: 5
  %loadMem1_44301f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44301f = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44301f, i64 60817, i64 5, i64 5)
  store %struct.Memory* %call1_44301f, %struct.Memory** %MEMORY

  %loadMem2_44301f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44301f = load i64, i64* %3
  %call2_44301f = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44301f, %struct.Memory* %loadMem2_44301f)
  store %struct.Memory* %call2_44301f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1108(%rbp)	 RIP: 443024	 Bytes: 6
  %loadMem_443024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443024 = call %struct.Memory* @routine_movl__eax__MINUS0x1108__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443024)
  store %struct.Memory* %call_443024, %struct.Memory** %MEMORY

  ; Code: .L_44302a:	 RIP: 44302a	 Bytes: 0
  br label %block_.L_44302a
block_.L_44302a:

  ; Code: movq $0x57e2b3, %rcx	 RIP: 44302a	 Bytes: 10
  %loadMem_44302a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44302a = call %struct.Memory* @routine_movq__0x57e2b3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44302a)
  store %struct.Memory* %call_44302a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r8d	 RIP: 443034	 Bytes: 6
  %loadMem_443034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443034 = call %struct.Memory* @routine_movl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443034)
  store %struct.Memory* %call_443034, %struct.Memory** %MEMORY

  ; Code: xorl %r9d, %r9d	 RIP: 44303a	 Bytes: 3
  %loadMem_44303a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44303a = call %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44303a)
  store %struct.Memory* %call_44303a, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 44303d	 Bytes: 4
  %loadMem_44303d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44303d = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44303d)
  store %struct.Memory* %call_44303d, %struct.Memory** %MEMORY

  ; Code: movl -0x102c(%rbp), %esi	 RIP: 443041	 Bytes: 6
  %loadMem_443041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443041 = call %struct.Memory* @routine_movl_MINUS0x102c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443041)
  store %struct.Memory* %call_443041, %struct.Memory** %MEMORY

  ; Code: movl -0x1074(%rbp), %edx	 RIP: 443047	 Bytes: 6
  %loadMem_443047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443047 = call %struct.Memory* @routine_movl_MINUS0x1074__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443047)
  store %struct.Memory* %call_443047, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rsp)	 RIP: 44304d	 Bytes: 7
  %loadMem_44304d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44304d = call %struct.Memory* @routine_movl__0x0____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44304d)
  store %struct.Memory* %call_44304d, %struct.Memory** %MEMORY

  ; Code: callq .owl_add_move	 RIP: 443054	 Bytes: 5
  %loadMem1_443054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_443054 = call %struct.Memory* @routine_callq_.owl_add_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_443054, i64 4572, i64 5, i64 5)
  store %struct.Memory* %call1_443054, %struct.Memory** %MEMORY

  %loadMem2_443054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_443054 = load i64, i64* %3
  %call2_443054 = call %struct.Memory* @sub_444230.owl_add_move(%struct.State* %0, i64  %loadPC_443054, %struct.Memory* %loadMem2_443054)
  store %struct.Memory* %call2_443054, %struct.Memory** %MEMORY

  ; Code: jmpq .L_443134	 RIP: 443059	 Bytes: 5
  %loadMem_443059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443059 = call %struct.Memory* @routine_jmpq_.L_443134(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443059, i64 219, i64 5)
  store %struct.Memory* %call_443059, %struct.Memory** %MEMORY

  br label %block_.L_443134

  ; Code: .L_44305e:	 RIP: 44305e	 Bytes: 0
block_.L_44305e:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 44305e	 Bytes: 4
  %loadMem_44305e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44305e = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44305e)
  store %struct.Memory* %call_44305e, %struct.Memory** %MEMORY

  ; Code: movslq -0x103c(%rbp), %rcx	 RIP: 443062	 Bytes: 7
  %loadMem_443062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443062 = call %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443062)
  store %struct.Memory* %call_443062, %struct.Memory** %MEMORY

  ; Code: movl 0x87f4(%rax,%rcx,4), %edi	 RIP: 443069	 Bytes: 7
  %loadMem_443069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443069 = call %struct.Memory* @routine_movl_0x87f4__rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443069)
  store %struct.Memory* %call_443069, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 443070	 Bytes: 4
  %loadMem_443070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443070 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443070)
  store %struct.Memory* %call_443070, %struct.Memory** %MEMORY

  ; Code: movslq -0x103c(%rbp), %rcx	 RIP: 443074	 Bytes: 7
  %loadMem_443074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443074 = call %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443074)
  store %struct.Memory* %call_443074, %struct.Memory** %MEMORY

  ; Code: movl 0x8844(%rax,%rcx,4), %esi	 RIP: 44307b	 Bytes: 7
  %loadMem_44307b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44307b = call %struct.Memory* @routine_movl_0x8844__rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44307b)
  store %struct.Memory* %call_44307b, %struct.Memory** %MEMORY

  ; Code: callq .improve_lunch_attack	 RIP: 443082	 Bytes: 5
  %loadMem1_443082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_443082 = call %struct.Memory* @routine_callq_.improve_lunch_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_443082, i64 11118, i64 5, i64 5)
  store %struct.Memory* %call1_443082, %struct.Memory** %MEMORY

  %loadMem2_443082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_443082 = load i64, i64* %3
  %call2_443082 = call %struct.Memory* @sub_445bf0.improve_lunch_attack(%struct.State* %0, i64  %loadPC_443082, %struct.Memory* %loadMem2_443082)
  store %struct.Memory* %call2_443082, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1028(%rbp)	 RIP: 443087	 Bytes: 6
  %loadMem_443087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443087 = call %struct.Memory* @routine_movl__eax__MINUS0x1028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443087)
  store %struct.Memory* %call_443087, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 44308d	 Bytes: 8
  %loadMem_44308d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44308d = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44308d)
  store %struct.Memory* %call_44308d, %struct.Memory** %MEMORY

  ; Code: jne .L_4430a0	 RIP: 443095	 Bytes: 6
  %loadMem_443095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443095 = call %struct.Memory* @routine_jne_.L_4430a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443095, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_443095, %struct.Memory** %MEMORY

  %loadBr_443095 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443095 = icmp eq i8 %loadBr_443095, 1
  br i1 %cmpBr_443095, label %block_.L_4430a0, label %block_44309b

block_44309b:
  ; Code: jmpq .L_4430d5	 RIP: 44309b	 Bytes: 5
  %loadMem_44309b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44309b = call %struct.Memory* @routine_jmpq_.L_4430d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44309b, i64 58, i64 5)
  store %struct.Memory* %call_44309b, %struct.Memory** %MEMORY

  br label %block_.L_4430d5

  ; Code: .L_4430a0:	 RIP: 4430a0	 Bytes: 0
block_.L_4430a0:

  ; Code: movq $0x57e2be, %rdi	 RIP: 4430a0	 Bytes: 10
  %loadMem_4430a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4430a0 = call %struct.Memory* @routine_movq__0x57e2be___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4430a0)
  store %struct.Memory* %call_4430a0, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 4430aa	 Bytes: 4
  %loadMem_4430aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4430aa = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4430aa)
  store %struct.Memory* %call_4430aa, %struct.Memory** %MEMORY

  ; Code: movslq -0x103c(%rbp), %rcx	 RIP: 4430ae	 Bytes: 7
  %loadMem_4430ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4430ae = call %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4430ae)
  store %struct.Memory* %call_4430ae, %struct.Memory** %MEMORY

  ; Code: movl 0x87f4(%rax,%rcx,4), %esi	 RIP: 4430b5	 Bytes: 7
  %loadMem_4430b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4430b5 = call %struct.Memory* @routine_movl_0x87f4__rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4430b5)
  store %struct.Memory* %call_4430b5, %struct.Memory** %MEMORY

  ; Code: movl -0x1028(%rbp), %edx	 RIP: 4430bc	 Bytes: 6
  %loadMem_4430bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4430bc = call %struct.Memory* @routine_movl_MINUS0x1028__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4430bc)
  store %struct.Memory* %call_4430bc, %struct.Memory** %MEMORY

  ; Code: movl -0x1074(%rbp), %ecx	 RIP: 4430c2	 Bytes: 6
  %loadMem_4430c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4430c2 = call %struct.Memory* @routine_movl_MINUS0x1074__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4430c2)
  store %struct.Memory* %call_4430c2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4430c8	 Bytes: 2
  %loadMem_4430c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4430c8 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4430c8)
  store %struct.Memory* %call_4430c8, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 4430ca	 Bytes: 5
  %loadMem1_4430ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4430ca = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4430ca, i64 60646, i64 5, i64 5)
  store %struct.Memory* %call1_4430ca, %struct.Memory** %MEMORY

  %loadMem2_4430ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4430ca = load i64, i64* %3
  %call2_4430ca = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_4430ca, %struct.Memory* %loadMem2_4430ca)
  store %struct.Memory* %call2_4430ca, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x110c(%rbp)	 RIP: 4430cf	 Bytes: 6
  %loadMem_4430cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4430cf = call %struct.Memory* @routine_movl__eax__MINUS0x110c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4430cf)
  store %struct.Memory* %call_4430cf, %struct.Memory** %MEMORY

  ; Code: .L_4430d5:	 RIP: 4430d5	 Bytes: 0
  br label %block_.L_4430d5
block_.L_4430d5:

  ; Code: movq $0x57e2e3, %rcx	 RIP: 4430d5	 Bytes: 10
  %loadMem_4430d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4430d5 = call %struct.Memory* @routine_movq__0x57e2e3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4430d5)
  store %struct.Memory* %call_4430d5, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r8d	 RIP: 4430df	 Bytes: 6
  %loadMem_4430df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4430df = call %struct.Memory* @routine_movl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4430df)
  store %struct.Memory* %call_4430df, %struct.Memory** %MEMORY

  ; Code: xorl %r9d, %r9d	 RIP: 4430e5	 Bytes: 3
  %loadMem_4430e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4430e5 = call %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4430e5)
  store %struct.Memory* %call_4430e5, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 4430e8	 Bytes: 4
  %loadMem_4430e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4430e8 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4430e8)
  store %struct.Memory* %call_4430e8, %struct.Memory** %MEMORY

  ; Code: movl -0x1028(%rbp), %esi	 RIP: 4430ec	 Bytes: 6
  %loadMem_4430ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4430ec = call %struct.Memory* @routine_movl_MINUS0x1028__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4430ec)
  store %struct.Memory* %call_4430ec, %struct.Memory** %MEMORY

  ; Code: movl -0x1074(%rbp), %edx	 RIP: 4430f2	 Bytes: 6
  %loadMem_4430f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4430f2 = call %struct.Memory* @routine_movl_MINUS0x1074__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4430f2)
  store %struct.Memory* %call_4430f2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rsp)	 RIP: 4430f8	 Bytes: 7
  %loadMem_4430f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4430f8 = call %struct.Memory* @routine_movl__0x0____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4430f8)
  store %struct.Memory* %call_4430f8, %struct.Memory** %MEMORY

  ; Code: callq .owl_add_move	 RIP: 4430ff	 Bytes: 5
  %loadMem1_4430ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4430ff = call %struct.Memory* @routine_callq_.owl_add_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4430ff, i64 4401, i64 5, i64 5)
  store %struct.Memory* %call1_4430ff, %struct.Memory** %MEMORY

  %loadMem2_4430ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4430ff = load i64, i64* %3
  %call2_4430ff = call %struct.Memory* @sub_444230.owl_add_move(%struct.State* %0, i64  %loadPC_4430ff, %struct.Memory* %loadMem2_4430ff)
  store %struct.Memory* %call2_4430ff, %struct.Memory** %MEMORY

  ; Code: movl -0x1048(%rbp), %edx	 RIP: 443104	 Bytes: 6
  %loadMem_443104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443104 = call %struct.Memory* @routine_movl_MINUS0x1048__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443104)
  store %struct.Memory* %call_443104, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 44310a	 Bytes: 3
  %loadMem_44310a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44310a = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44310a)
  store %struct.Memory* %call_44310a, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1048(%rbp)	 RIP: 44310d	 Bytes: 6
  %loadMem_44310d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44310d = call %struct.Memory* @routine_movl__edx__MINUS0x1048__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44310d)
  store %struct.Memory* %call_44310d, %struct.Memory** %MEMORY

  ; Code: movl -0x1044(%rbp), %edx	 RIP: 443113	 Bytes: 6
  %loadMem_443113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443113 = call %struct.Memory* @routine_movl_MINUS0x1044__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443113)
  store %struct.Memory* %call_443113, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 443119	 Bytes: 2
  %loadMem_443119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443119 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443119)
  store %struct.Memory* %call_443119, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 44311b	 Bytes: 3
  %loadMem_44311b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44311b = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44311b)
  store %struct.Memory* %call_44311b, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x1044(%rbp)	 RIP: 44311e	 Bytes: 6
  %loadMem_44311e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44311e = call %struct.Memory* @routine_movl__esi__MINUS0x1044__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44311e)
  store %struct.Memory* %call_44311e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 443124	 Bytes: 3
  %loadMem_443124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443124 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443124)
  store %struct.Memory* %call_443124, %struct.Memory** %MEMORY

  ; Code: movl -0x1088(%rbp), %edx	 RIP: 443127	 Bytes: 6
  %loadMem_443127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443127 = call %struct.Memory* @routine_movl_MINUS0x1088__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443127)
  store %struct.Memory* %call_443127, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xd00(%rbp,%rcx,4)	 RIP: 44312d	 Bytes: 7
  %loadMem_44312d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44312d = call %struct.Memory* @routine_movl__edx__MINUS0xd00__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44312d)
  store %struct.Memory* %call_44312d, %struct.Memory** %MEMORY

  ; Code: .L_443134:	 RIP: 443134	 Bytes: 0
  br label %block_.L_443134
block_.L_443134:

  ; Code: jmpq .L_443139	 RIP: 443134	 Bytes: 5
  %loadMem_443134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443134 = call %struct.Memory* @routine_jmpq_.L_443139(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443134, i64 5, i64 5)
  store %struct.Memory* %call_443134, %struct.Memory** %MEMORY

  br label %block_.L_443139

  ; Code: .L_443139:	 RIP: 443139	 Bytes: 0
block_.L_443139:

  ; Code: jmpq .L_44313e	 RIP: 443139	 Bytes: 5
  %loadMem_443139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443139 = call %struct.Memory* @routine_jmpq_.L_44313e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443139, i64 5, i64 5)
  store %struct.Memory* %call_443139, %struct.Memory** %MEMORY

  br label %block_.L_44313e

  ; Code: .L_44313e:	 RIP: 44313e	 Bytes: 0
block_.L_44313e:

  ; Code: movl -0x103c(%rbp), %eax	 RIP: 44313e	 Bytes: 6
  %loadMem_44313e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44313e = call %struct.Memory* @routine_movl_MINUS0x103c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44313e)
  store %struct.Memory* %call_44313e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 443144	 Bytes: 3
  %loadMem_443144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443144 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443144)
  store %struct.Memory* %call_443144, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x103c(%rbp)	 RIP: 443147	 Bytes: 6
  %loadMem_443147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443147 = call %struct.Memory* @routine_movl__eax__MINUS0x103c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443147)
  store %struct.Memory* %call_443147, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442c6f	 RIP: 44314d	 Bytes: 5
  %loadMem_44314d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44314d = call %struct.Memory* @routine_jmpq_.L_442c6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44314d, i64 -1246, i64 5)
  store %struct.Memory* %call_44314d, %struct.Memory** %MEMORY

  br label %block_.L_442c6f

  ; Code: .L_443152:	 RIP: 443152	 Bytes: 0
block_.L_443152:

  ; Code: movl $0x0, -0x1090(%rbp)	 RIP: 443152	 Bytes: 10
  %loadMem_443152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443152 = call %struct.Memory* @routine_movl__0x0__MINUS0x1090__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443152)
  store %struct.Memory* %call_443152, %struct.Memory** %MEMORY

  ; Code: .L_44315c:	 RIP: 44315c	 Bytes: 0
  br label %block_.L_44315c
block_.L_44315c:

  ; Code: movl -0x1090(%rbp), %eax	 RIP: 44315c	 Bytes: 6
  %loadMem_44315c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44315c = call %struct.Memory* @routine_movl_MINUS0x1090__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44315c)
  store %struct.Memory* %call_44315c, %struct.Memory** %MEMORY

  ; Code: movl -0x1044(%rbp), %ecx	 RIP: 443162	 Bytes: 6
  %loadMem_443162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443162 = call %struct.Memory* @routine_movl_MINUS0x1044__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443162)
  store %struct.Memory* %call_443162, %struct.Memory** %MEMORY

  ; Code: subl -0x1048(%rbp), %ecx	 RIP: 443168	 Bytes: 6
  %loadMem_443168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443168 = call %struct.Memory* @routine_subl_MINUS0x1048__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443168)
  store %struct.Memory* %call_443168, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 44316e	 Bytes: 2
  %loadMem_44316e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44316e = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44316e)
  store %struct.Memory* %call_44316e, %struct.Memory** %MEMORY

  ; Code: jge .L_4431af	 RIP: 443170	 Bytes: 6
  %loadMem_443170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443170 = call %struct.Memory* @routine_jge_.L_4431af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443170, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_443170, %struct.Memory** %MEMORY

  %loadBr_443170 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443170 = icmp eq i8 %loadBr_443170, 1
  br i1 %cmpBr_443170, label %block_.L_4431af, label %block_443176

block_443176:
  ; Code: leaq -0xd00(%rbp), %rax	 RIP: 443176	 Bytes: 7
  %loadMem_443176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443176 = call %struct.Memory* @routine_leaq_MINUS0xd00__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443176)
  store %struct.Memory* %call_443176, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 44317d	 Bytes: 4
  %loadMem_44317d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44317d = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44317d)
  store %struct.Memory* %call_44317d, %struct.Memory** %MEMORY

  ; Code: movslq -0x1090(%rbp), %rcx	 RIP: 443181	 Bytes: 7
  %loadMem_443181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443181 = call %struct.Memory* @routine_movslq_MINUS0x1090__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443181)
  store %struct.Memory* %call_443181, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 443188	 Bytes: 4
  %loadMem_443188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443188 = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443188)
  store %struct.Memory* %call_443188, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44318c	 Bytes: 3
  %loadMem_44318c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44318c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44318c)
  store %struct.Memory* %call_44318c, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdx	 RIP: 44318f	 Bytes: 4
  %loadMem_44318f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44318f = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44318f)
  store %struct.Memory* %call_44318f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 443193	 Bytes: 3
  %loadMem_443193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443193 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443193)
  store %struct.Memory* %call_443193, %struct.Memory** %MEMORY

  ; Code: callq .add_eyevalues	 RIP: 443196	 Bytes: 5
  %loadMem1_443196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_443196 = call %struct.Memory* @routine_callq_.add_eyevalues(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_443196, i64 -25990, i64 5, i64 5)
  store %struct.Memory* %call1_443196, %struct.Memory** %MEMORY

  %loadMem2_443196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_443196 = load i64, i64* %3
  %call2_443196 = call %struct.Memory* @sub_43cc10.add_eyevalues(%struct.State* %0, i64  %loadPC_443196, %struct.Memory* %loadMem2_443196)
  store %struct.Memory* %call2_443196, %struct.Memory** %MEMORY

  ; Code: movl -0x1090(%rbp), %eax	 RIP: 44319b	 Bytes: 6
  %loadMem_44319b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44319b = call %struct.Memory* @routine_movl_MINUS0x1090__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44319b)
  store %struct.Memory* %call_44319b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4431a1	 Bytes: 3
  %loadMem_4431a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431a1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431a1)
  store %struct.Memory* %call_4431a1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1090(%rbp)	 RIP: 4431a4	 Bytes: 6
  %loadMem_4431a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431a4 = call %struct.Memory* @routine_movl__eax__MINUS0x1090__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431a4)
  store %struct.Memory* %call_4431a4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44315c	 RIP: 4431aa	 Bytes: 5
  %loadMem_4431aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431aa = call %struct.Memory* @routine_jmpq_.L_44315c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431aa, i64 -78, i64 5)
  store %struct.Memory* %call_4431aa, %struct.Memory** %MEMORY

  br label %block_.L_44315c

  ; Code: .L_4431af:	 RIP: 4431af	 Bytes: 0
block_.L_4431af:

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 4431af	 Bytes: 4
  %loadMem_4431af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431af = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431af)
  store %struct.Memory* %call_4431af, %struct.Memory** %MEMORY

  ; Code: callq .max_eyes	 RIP: 4431b3	 Bytes: 5
  %loadMem1_4431b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4431b3 = call %struct.Memory* @routine_callq_.max_eyes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4431b3, i64 -33187, i64 5, i64 5)
  store %struct.Memory* %call1_4431b3, %struct.Memory** %MEMORY

  %loadMem2_4431b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4431b3 = load i64, i64* %3
  %call2_4431b3 = call %struct.Memory* @sub_43b010.max_eyes(%struct.State* %0, i64  %loadPC_4431b3, %struct.Memory* %loadMem2_4431b3)
  store %struct.Memory* %call2_4431b3, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 4431b8	 Bytes: 4
  %loadMem_4431b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431b8 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431b8)
  store %struct.Memory* %call_4431b8, %struct.Memory** %MEMORY

  ; Code: addl (%rdi), %eax	 RIP: 4431bc	 Bytes: 2
  %loadMem_4431bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431bc = call %struct.Memory* @routine_addl___rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431bc)
  store %struct.Memory* %call_4431bc, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdi)	 RIP: 4431be	 Bytes: 2
  %loadMem_4431be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431be = call %struct.Memory* @routine_movl__eax____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431be)
  store %struct.Memory* %call_4431be, %struct.Memory** %MEMORY

  ; Code: movl -0x1044(%rbp), %eax	 RIP: 4431c0	 Bytes: 6
  %loadMem_4431c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431c0 = call %struct.Memory* @routine_movl_MINUS0x1044__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431c0)
  store %struct.Memory* %call_4431c0, %struct.Memory** %MEMORY

  ; Code: subl -0x1048(%rbp), %eax	 RIP: 4431c6	 Bytes: 6
  %loadMem_4431c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431c6 = call %struct.Memory* @routine_subl_MINUS0x1048__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431c6)
  store %struct.Memory* %call_4431c6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 4431cc	 Bytes: 3
  %loadMem_4431cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431cc = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431cc)
  store %struct.Memory* %call_4431cc, %struct.Memory** %MEMORY

  ; Code: jle .L_4431f2	 RIP: 4431cf	 Bytes: 6
  %loadMem_4431cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431cf = call %struct.Memory* @routine_jle_.L_4431f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431cf, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_4431cf, %struct.Memory** %MEMORY

  %loadBr_4431cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4431cf = icmp eq i8 %loadBr_4431cf, 1
  br i1 %cmpBr_4431cf, label %block_.L_4431f2, label %block_4431d5

block_4431d5:
  ; Code: movq -0x50(%rbp), %rdi	 RIP: 4431d5	 Bytes: 4
  %loadMem_4431d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431d5 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431d5)
  store %struct.Memory* %call_4431d5, %struct.Memory** %MEMORY

  ; Code: callq .max_eye_threat	 RIP: 4431d9	 Bytes: 5
  %loadMem1_4431d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4431d9 = call %struct.Memory* @routine_callq_.max_eye_threat(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4431d9, i64 -26089, i64 5, i64 5)
  store %struct.Memory* %call1_4431d9, %struct.Memory** %MEMORY

  %loadMem2_4431d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4431d9 = load i64, i64* %3
  %call2_4431d9 = call %struct.Memory* @sub_43cbf0.max_eye_threat(%struct.State* %0, i64  %loadPC_4431d9, %struct.Memory* %loadMem2_4431d9)
  store %struct.Memory* %call2_4431d9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 4431de	 Bytes: 3
  %loadMem_4431de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431de = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431de)
  store %struct.Memory* %call_4431de, %struct.Memory** %MEMORY

  ; Code: jle .L_4431f2	 RIP: 4431e1	 Bytes: 6
  %loadMem_4431e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431e1 = call %struct.Memory* @routine_jle_.L_4431f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431e1, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_4431e1, %struct.Memory** %MEMORY

  %loadBr_4431e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4431e1 = icmp eq i8 %loadBr_4431e1, 1
  br i1 %cmpBr_4431e1, label %block_.L_4431f2, label %block_4431e7

block_4431e7:
  ; Code: movq -0x60(%rbp), %rax	 RIP: 4431e7	 Bytes: 4
  %loadMem_4431e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431e7 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431e7)
  store %struct.Memory* %call_4431e7, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 4431eb	 Bytes: 2
  %loadMem_4431eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431eb = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431eb)
  store %struct.Memory* %call_4431eb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4431ed	 Bytes: 3
  %loadMem_4431ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431ed = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431ed)
  store %struct.Memory* %call_4431ed, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 4431f0	 Bytes: 2
  %loadMem_4431f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431f0 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431f0)
  store %struct.Memory* %call_4431f0, %struct.Memory** %MEMORY

  ; Code: .L_4431f2:	 RIP: 4431f2	 Bytes: 0
  br label %block_.L_4431f2
block_.L_4431f2:

  ; Code: jmpq .L_4431f7	 RIP: 4431f2	 Bytes: 5
  %loadMem_4431f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431f2 = call %struct.Memory* @routine_jmpq_.L_4431f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431f2, i64 5, i64 5)
  store %struct.Memory* %call_4431f2, %struct.Memory** %MEMORY

  br label %block_.L_4431f7

  ; Code: .L_4431f7:	 RIP: 4431f7	 Bytes: 0
block_.L_4431f7:

  ; Code: movl -0x1090(%rbp), %eax	 RIP: 4431f7	 Bytes: 6
  %loadMem_4431f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431f7 = call %struct.Memory* @routine_movl_MINUS0x1090__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431f7)
  store %struct.Memory* %call_4431f7, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1044(%rbp), %eax	 RIP: 4431fd	 Bytes: 6
  %loadMem_4431fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4431fd = call %struct.Memory* @routine_cmpl_MINUS0x1044__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4431fd)
  store %struct.Memory* %call_4431fd, %struct.Memory** %MEMORY

  ; Code: jge .L_443242	 RIP: 443203	 Bytes: 6
  %loadMem_443203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443203 = call %struct.Memory* @routine_jge_.L_443242(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443203, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_443203, %struct.Memory** %MEMORY

  %loadBr_443203 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_443203 = icmp eq i8 %loadBr_443203, 1
  br i1 %cmpBr_443203, label %block_.L_443242, label %block_443209

block_443209:
  ; Code: leaq -0xd00(%rbp), %rax	 RIP: 443209	 Bytes: 7
  %loadMem_443209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443209 = call %struct.Memory* @routine_leaq_MINUS0xd00__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443209)
  store %struct.Memory* %call_443209, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 443210	 Bytes: 4
  %loadMem_443210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443210 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443210)
  store %struct.Memory* %call_443210, %struct.Memory** %MEMORY

  ; Code: movslq -0x1090(%rbp), %rcx	 RIP: 443214	 Bytes: 7
  %loadMem_443214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443214 = call %struct.Memory* @routine_movslq_MINUS0x1090__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443214)
  store %struct.Memory* %call_443214, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 44321b	 Bytes: 4
  %loadMem_44321b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44321b = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44321b)
  store %struct.Memory* %call_44321b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44321f	 Bytes: 3
  %loadMem_44321f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44321f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44321f)
  store %struct.Memory* %call_44321f, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdx	 RIP: 443222	 Bytes: 4
  %loadMem_443222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443222 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443222)
  store %struct.Memory* %call_443222, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 443226	 Bytes: 3
  %loadMem_443226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443226 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443226)
  store %struct.Memory* %call_443226, %struct.Memory** %MEMORY

  ; Code: callq .add_eyevalues	 RIP: 443229	 Bytes: 5
  %loadMem1_443229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_443229 = call %struct.Memory* @routine_callq_.add_eyevalues(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_443229, i64 -26137, i64 5, i64 5)
  store %struct.Memory* %call1_443229, %struct.Memory** %MEMORY

  %loadMem2_443229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_443229 = load i64, i64* %3
  %call2_443229 = call %struct.Memory* @sub_43cc10.add_eyevalues(%struct.State* %0, i64  %loadPC_443229, %struct.Memory* %loadMem2_443229)
  store %struct.Memory* %call2_443229, %struct.Memory** %MEMORY

  ; Code: movl -0x1090(%rbp), %eax	 RIP: 44322e	 Bytes: 6
  %loadMem_44322e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44322e = call %struct.Memory* @routine_movl_MINUS0x1090__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44322e)
  store %struct.Memory* %call_44322e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 443234	 Bytes: 3
  %loadMem_443234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443234 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443234)
  store %struct.Memory* %call_443234, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1090(%rbp)	 RIP: 443237	 Bytes: 6
  %loadMem_443237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443237 = call %struct.Memory* @routine_movl__eax__MINUS0x1090__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443237)
  store %struct.Memory* %call_443237, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4431f7	 RIP: 44323d	 Bytes: 5
  %loadMem_44323d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44323d = call %struct.Memory* @routine_jmpq_.L_4431f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44323d, i64 -70, i64 5)
  store %struct.Memory* %call_44323d, %struct.Memory** %MEMORY

  br label %block_.L_4431f7

  ; Code: .L_443242:	 RIP: 443242	 Bytes: 0
block_.L_443242:

  ; Code: movl -0x104c(%rbp), %eax	 RIP: 443242	 Bytes: 6
  %loadMem_443242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443242 = call %struct.Memory* @routine_movl_MINUS0x104c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443242)
  store %struct.Memory* %call_443242, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xab0f24	 RIP: 443248	 Bytes: 7
  %loadMem_443248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443248 = call %struct.Memory* @routine_movl__eax__0xab0f24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443248)
  store %struct.Memory* %call_443248, %struct.Memory** %MEMORY

  ; Code: addq $0x10f8, %rsp	 RIP: 44324f	 Bytes: 7
  %loadMem_44324f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44324f = call %struct.Memory* @routine_addq__0x10f8___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44324f)
  store %struct.Memory* %call_44324f, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 443256	 Bytes: 1
  %loadMem_443256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443256 = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443256)
  store %struct.Memory* %call_443256, %struct.Memory** %MEMORY

  ; Code: popq %r12	 RIP: 443257	 Bytes: 2
  %loadMem_443257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443257 = call %struct.Memory* @routine_popq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443257)
  store %struct.Memory* %call_443257, %struct.Memory** %MEMORY

  ; Code: popq %r13	 RIP: 443259	 Bytes: 2
  %loadMem_443259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443259 = call %struct.Memory* @routine_popq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443259)
  store %struct.Memory* %call_443259, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 44325b	 Bytes: 2
  %loadMem_44325b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44325b = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44325b)
  store %struct.Memory* %call_44325b, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 44325d	 Bytes: 2
  %loadMem_44325d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44325d = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44325d)
  store %struct.Memory* %call_44325d, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 44325f	 Bytes: 1
  %loadMem_44325f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44325f = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44325f)
  store %struct.Memory* %call_44325f, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 443260	 Bytes: 1
  %loadMem_443260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_443260 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_443260)
  store %struct.Memory* %call_443260, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_443260
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

define %struct.Memory* @routine_subq__0x10f8___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 4344)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_xorl__r11d___r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R11D to i64*
  %10 = load i32, i32* %R11D
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* %R11D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x640___ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 1600)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__ebx___r14d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R14D to i64*
  %13 = load i32, i32* %EBX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x9d0__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x190___ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 400)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__ebx___r12d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R12D to i64*
  %13 = load i32, i32* %EBX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_leaq_MINUS0x390__rbp____r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 27
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R13 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 912
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R13, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x200__rbp____rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq__r8__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r9__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r10__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x4b0__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_addq__0x4b4___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1204)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x9d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2516
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x9d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2520
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x1044__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4164
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x1048__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0xab0f24___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xab0f24_type* @G_0xab0f24 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__ecx__MINUS0x104c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4172
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rbx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__r11d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R11D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r12___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R12
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__r13__MINUS0x1098__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 27
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R13 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4248
  %14 = load i64, i64* %R13
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r11d__MINUS0x109c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4252
  %14 = load i32, i32* %R11D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__r14__MINUS0x10a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4264
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r15__MINUS0x10b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4272
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r12__MINUS0x10b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4280
  %14 = load i64, i64* %R12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
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


define %struct.Memory* @routine_movq_MINUS0x1098__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x109c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4252
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x10b8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x10b0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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




define %struct.Memory* @routine_movq_MINUS0x10a8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_jne_.L_44201e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x9d4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2516
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpq__0x0__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_442034(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x9d8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2520
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = and i64 %4, %3
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

define %struct.Memory* @routine_andl__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
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


define %struct.Memory* @routine_jne_.L_44206c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xab0f24_type* @G_0xab0f24 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_andl__0xfffffffd___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 -3)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0xab0f24(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f24_type* @G_0xab0f24 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.clear_owl_move_data(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_cmpl__0x0__0x8a4c__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 35404
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_44208f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.owl_find_lunches(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.owl_make_domains(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 100
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4420b5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x4__MINUS0x1040__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4420bf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x5__MINUS0x1040__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x1030__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x1030__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4144
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

define %struct.Memory* @routine_jge_.L_442285(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x1034__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x1034__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_44226c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_imull__0x14__MINUS0x1030__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4144
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

define %struct.Memory* @routine_addl_MINUS0x1034__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4148
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x1050__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4176
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

define %struct.Memory* @routine_movslq_MINUS0x1050__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4176
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


define %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 100
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_442253(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x1038__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x8__MINUS0x1038__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_44224e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x1050__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x1038__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 8053168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x1054__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x1054__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_je_.L_442235(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 36)
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


define %struct.Memory* @routine_cmpl_MINUS0x1040__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 4160
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_442235(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_cmpb__0x0__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpb__0x0____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 0)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_je_.L_442209(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_MINUS0x200__rbp__rax_1____dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = add i64 %16, -512
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i8
  %7 = trunc i64 %4 to i8
  %8 = add i8 %7, %6
  store i8 %8, i8* %2, align 1
  %9 = icmp ult i8 %8, %6
  %10 = icmp ult i8 %8, %7
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = zext i8 %8 to i32
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #22
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = trunc i64 %20 to i8
  %22 = xor i8 %21, %8
  %23 = lshr i8 %22, 4
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i8 %8, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i8 %8, 7
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i8 %6, 7
  %32 = lshr i8 %7, 7
  %33 = xor i8 %29, %31
  %34 = xor i8 %29, %32
  %35 = add   i8 %33, %34
  %36 = icmp eq i8 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addb__0x1___dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %DL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__dl__MINUS0x200__rbp__rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = add i64 %16, -512
  %19 = add i64 %18, %17
  %20 = load i8, i8* %DL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_442230(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movb_MINUS0x390__rbp__rax_1____dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = add i64 %16, -912
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_movb__dl__MINUS0x390__rbp__rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = add i64 %16, -912
  %19 = add i64 %18, %17
  %20 = load i8, i8* %DL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_442235(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44223a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x1038__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4152
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


define %struct.Memory* @routine_movl__eax__MINUS0x1038__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_442131(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_442253(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_442258(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x1034__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4420e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_442271(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x1030__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4144
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4420c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_442344(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_44232b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0xa0e41__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0xa0e41__rip__type* @G_0xa0e41__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_addq__0x3cf4___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 15604)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_imull__0x14__MINUS0x1030__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13, i64 20)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x15___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 21)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addl_MINUS0x1034__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4148
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_imulq__0x30___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 48)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x0__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RAX
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i8* %12)
  ret %struct.Memory* %15
}








define %struct.Memory* @routine_jmpq_.L_4422ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_442330(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44228f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_leaq_MINUS0x200__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x64__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x70__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.find_half_and_false_eyes(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi__MINUS0x10bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4284
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x10bc__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4284
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x10bc__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4284
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x10bc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4284
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x10bc__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4284
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.set_eyevalue(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_442c65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_442c4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl__eax__MINUS0x1058__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4184
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x1058__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl_MINUS0x200__rbp__rcx_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RCX
  %17 = add i64 %15, -512
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
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

define %struct.Memory* @routine_jle_.L_442c33(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl_MINUS0x1058__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 4184
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_442c33(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x9e0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x1024__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x1028__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x102c__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x58898d___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x58898d_type* @G__0x58898d to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x0__MINUS0x105c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__MINUS0x1068__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4200
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x1058__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x70__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__rax____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.compute_eyes_pessimistic(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x106c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4204
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x106c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_44255d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x1070__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x1070__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_442544(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_imull__0x14__MINUS0x106c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13, i64 20)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_MINUS0x1070__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4208
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_jle_.L_44252b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_imull__0x14__MINUS0x106c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13, i64 20)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_MINUS0x1070__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4208
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 36)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x1058__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 4184
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_44252b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movsbl_0x88bc__rax__rdx_1____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RDX
  %17 = add i64 %15, 35004
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_je_.L_44252b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x1024__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4132
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_442530(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x1070__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4208
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_442495(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_442549(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x106c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_442478(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_4426a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_44268a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jne_.L_442671(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_imull__0x14__MINUS0x106c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13, i64 20)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x15___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 21)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addl_MINUS0x1070__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4208
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__edx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsbl_MINUS0x390__rbp__rcx_1____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = add i64 %15, -912
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
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

define %struct.Memory* @routine_cmpl__edx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
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

define %struct.Memory* @routine_jl_.L_442667(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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





















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = shl i64 %3, 32
  %7 = ashr exact i64 %6, 32
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = mul  i64 %9, %7
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %2, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #22
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imull__0x3___edx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13, i64 3)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_442671(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movsbl_MINUS0x390__rbp__rcx_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RCX
  %17 = add i64 %15, -912
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_jle_.L_442671(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_442676(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_442584(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44268f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_442567(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_leaq_MINUS0x9e0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x1044__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x1020__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -4128
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movl_MINUS0x9e0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0xd00__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -3328
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movl_MINUS0x1024__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movslq_MINUS0x1058__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.eye_move_urgency(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_44278f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x32__MINUS0x105c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 50)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_callq_.max_eyes(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x10c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4288
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.min_eyes(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x10c0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_subl__eax___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jne_.L_44274f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x46__MINUS0x105c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 70)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_442779(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl_MINUS0x1024__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4132
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jne_.L_442774(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3c__MINUS0x105c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 60)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x57e1e9___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x57e1e9_type* @G__0x57e1e9 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_jmpq_.L_4427f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_cmpl_MINUS0x1024__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 4132
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_4427ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_4427d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x28__MINUS0x105c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 40)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4427db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x1e__MINUS0x105c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 30)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__0x57e1f4___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x57e1f4_type* @G__0x57e1f4 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_cmpl__0x0__MINUS0x105c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_442c24(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_4429cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x1028__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movslq_MINUS0x1028__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x9d0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -2512
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jle_.L_442860(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x9d0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -2512
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_addl_MINUS0x105c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4188
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x105c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4188
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x62__MINUS0x105c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 98)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_44285b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x62__MINUS0x105c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 98)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_442860(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_442873(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_442902(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movq_MINUS0x1068__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x1028__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x105c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x1058__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r8d__MINUS0x10c4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4292
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rsi__MINUS0x10d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4304
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x10d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4308
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ecx__MINUS0x10d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4312
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.eyevalue_to_string(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57e207___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57e207_type* @G__0x57e207 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_MINUS0x10d0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x10d4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4308
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x10d8__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4312
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x10dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4316
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x10c4__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4292
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl_MINUS0x10dc__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4316
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r10d____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__eax__MINUS0x10e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4320
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movslq_MINUS0x1028__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movsbl_0x1c__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_je_.L_442974(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x1028__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_callq_.modify_stupid_eye_vital_point(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_442952(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_44296f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57e247___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57e247_type* @G__0x57e247 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x1028__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0x10e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4324
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_442974(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x1___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_xorl__r9d___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x105c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x1068__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.owl_add_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__edx__MINUS0x9d0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2512
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movslq_MINUS0x1044__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x1020__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -4128
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_442c1f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_442c1a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x102c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4140
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_442c1a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x102c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4140
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






define %struct.Memory* @routine_movl_MINUS0x102c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x30__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.liberty_of_goal(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_442a5d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x64__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
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






define %struct.Memory* @routine_callq_.is_ko(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_442a5d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.safe_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jle_.L_442aa8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jle_.L_442aa3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_442aa8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_442abb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_442b4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_MINUS0x102c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__r8d__MINUS0x10e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4328
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rsi__MINUS0x10f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4336
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x10f4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4340
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ecx__MINUS0x10f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4344
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movq_MINUS0x10f0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x10f4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4340
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x10f8__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4344
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x10fc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4348
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x10e8__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4328
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x10fc__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4348
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl__eax__MINUS0x1100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4352
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movslq_MINUS0x102c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jne_.L_442b8a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_442bda(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x102c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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












define %struct.Memory* @routine_jne_.L_442bb8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_442bd5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0x102c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0x1104__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4356
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_442bda(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


























define %struct.Memory* @routine_jmpq_.L_442c24(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x1044__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x1044__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_442c38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4423b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_442c51(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44239b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x103c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0xa__MINUS0x103c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_443152(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__0x87f4__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, 34804
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_443139(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x0__0x8894__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, 34964
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_leaq_MINUS0x1078__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x107c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x1080__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x1074__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4212
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x87f4__rax__rdi_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDI
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 34804
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movq_MINUS0x30__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.sniff_lunch(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x1088__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x107c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x107c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4220
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r9d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r9d___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x1080__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cmpl__0x0__MINUS0x107c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4220
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_442d34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x14__MINUS0x1074__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4212
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 20)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_442ddc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x107c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4220
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_442d73(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x1080__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movl_0x87f4__rax__rcx_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 34804
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_callq_.countstones(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addl__0x3c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 60)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x1074__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4212
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_442dd7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_442db2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0x1080__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_addl__0x46___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 70)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_442dd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_addl__0x4b___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 75)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_cmpl__0x5__0x881c__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, 34844
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 5)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_442e04(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x1074__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4212
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_subl__0xa___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 10)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_cmpl__0x15__MINUS0x1074__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4212
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_442e66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_442e66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x1048__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x1048__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__ecx__MINUS0x1044__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4164
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq__eax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x1088__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xd00__rbp__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -3328
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_44313e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_44305e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movl_0x8894__rax__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 34964
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_callq_.improve_lunch_defense(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x102c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x9d0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -2512
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_442fb2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x108c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4236
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x108c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x1044__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl_MINUS0x1048__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_442f10(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x108c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x1020__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -4128
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_cmpl_MINUS0x102c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 4140
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_442ef7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_442f10(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_442efc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x108c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4236
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_442ebe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jge_.L_442f2f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_442f57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57dd2e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57dd2e_type* @G__0x57dd2e to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xa63___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 2659)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57e273___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57e273_type* @G__0x57e273 to i64))
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


define %struct.Memory* @routine_leaq_MINUS0x1088__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xd00__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3328
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x108c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_callq_.add_eyevalues(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movb__0x0__MINUS0xd00__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -3328
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movb__0x0__MINUS0xcff__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -3327
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jmpq_.L_442fe2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_jne_.L_442ff5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_44302a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57e28d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57e28d_type* @G__0x57e28d to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x87f4__rax__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 34804
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_movl_MINUS0x1074__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4212
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0x1108__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4360
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__0x57e2b3___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x57e2b3_type* @G__0x57e2b3 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl_MINUS0x1074__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4212
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jmpq_.L_443134(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movl_0x8844__rax__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 34884
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_callq_.improve_lunch_attack(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x1028__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4136
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jne_.L_4430a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4430d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57e2be___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57e2be_type* @G__0x57e2be to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_movl__eax__MINUS0x110c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4364
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__0x57e2e3___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x57e2e3_type* @G__0x57e2e3 to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_movl_MINUS0x1048__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl__edx__MINUS0x1048__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4168
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x1044__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__esi__MINUS0x1044__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4164
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x1088__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0xd00__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -3328
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_443139(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0x103c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x103c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4156
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_442c6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x1090__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4240
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x1090__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jge_.L_4431af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x1090__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_movl__eax__MINUS0x1090__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4240
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44315c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl___rdi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax____rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_subl_MINUS0x1048__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jle_.L_4431f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.max_eye_threat(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_4431f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl_MINUS0x1044__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 4164
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_443242(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_movl_MINUS0x104c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addq__0x10f8___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 4344)
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

