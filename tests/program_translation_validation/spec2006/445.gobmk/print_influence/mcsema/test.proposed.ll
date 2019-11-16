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

declare %struct.Memory* @sub_42acb0.print_numeric_influence(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42b060.print_influence_areas(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x99c0a0_type = type <{ [8 x i8] }>
@G_0x99c0a0= global %G_0x99c0a0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xab0ee4_type = type <{ [4 x i8] }>
@G_0xab0ee4= global %G_0xab0ee4_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x57c513_type = type <{ [8 x i8] }>
@G__0x57c513= global %G__0x57c513_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c52c_type = type <{ [8 x i8] }>
@G__0x57c52c= global %G__0x57c52c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c532_type = type <{ [8 x i8] }>
@G__0x57c532= global %G__0x57c532_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c54b_type = type <{ [8 x i8] }>
@G__0x57c54b= global %G__0x57c54b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c560_type = type <{ [8 x i8] }>
@G__0x57c560= global %G__0x57c560_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c575_type = type <{ [8 x i8] }>
@G__0x57c575= global %G__0x57c575_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c586_type = type <{ [8 x i8] }>
@G__0x57c586= global %G__0x57c586_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c58c_type = type <{ [8 x i8] }>
@G__0x57c58c= global %G__0x57c58c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c592_type = type <{ [8 x i8] }>
@G__0x57c592= global %G__0x57c592_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c5a3_type = type <{ [8 x i8] }>
@G__0x57c5a3= global %G__0x57c5a3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c5ba_type = type <{ [8 x i8] }>
@G__0x57c5ba= global %G__0x57c5ba_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c5d1_type = type <{ [8 x i8] }>
@G__0x57c5d1= global %G__0x57c5d1_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c5ea_type = type <{ [8 x i8] }>
@G__0x57c5ea= global %G__0x57c5ea_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c5f9_type = type <{ [8 x i8] }>
@G__0x57c5f9= global %G__0x57c5f9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x587634_type = type <{ [8 x i8] }>
@G__0x587634= global %G__0x587634_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @print_influence(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .print_influence:	 RIP: 42a830	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 42a830	 Bytes: 1
  %loadMem_42a830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a830 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a830)
  store %struct.Memory* %call_42a830, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 42a831	 Bytes: 3
  %loadMem_42a831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a831 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a831)
  store %struct.Memory* %call_42a831, %struct.Memory** %MEMORY

  ; Code: subq $0x50, %rsp	 RIP: 42a834	 Bytes: 4
  %loadMem_42a834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a834 = call %struct.Memory* @routine_subq__0x50___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a834)
  store %struct.Memory* %call_42a834, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 42a838	 Bytes: 4
  %loadMem_42a838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a838 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a838)
  store %struct.Memory* %call_42a838, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 42a83c	 Bytes: 4
  %loadMem_42a83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a83c = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a83c)
  store %struct.Memory* %call_42a83c, %struct.Memory** %MEMORY

  ; Code: movl 0xab0ee4, %eax	 RIP: 42a840	 Bytes: 7
  %loadMem_42a840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a840 = call %struct.Memory* @routine_movl_0xab0ee4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a840)
  store %struct.Memory* %call_42a840, %struct.Memory** %MEMORY

  ; Code: andl $0x100, %eax	 RIP: 42a847	 Bytes: 5
  %loadMem_42a847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a847 = call %struct.Memory* @routine_andl__0x100___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a847)
  store %struct.Memory* %call_42a847, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42a84c	 Bytes: 3
  %loadMem_42a84c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a84c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a84c)
  store %struct.Memory* %call_42a84c, %struct.Memory** %MEMORY

  ; Code: je .L_42a8f1	 RIP: 42a84f	 Bytes: 6
  %loadMem_42a84f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a84f = call %struct.Memory* @routine_je_.L_42a8f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a84f, i8* %BRANCH_TAKEN, i64 162, i64 6, i64 6)
  store %struct.Memory* %call_42a84f, %struct.Memory** %MEMORY

  %loadBr_42a84f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a84f = icmp eq i8 %loadBr_42a84f, 1
  br i1 %cmpBr_42a84f, label %block_.L_42a8f1, label %block_42a855

block_42a855:
  ; Code: movq $0x57c513, %rsi	 RIP: 42a855	 Bytes: 10
  %loadMem_42a855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a855 = call %struct.Memory* @routine_movq__0x57c513___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a855)
  store %struct.Memory* %call_42a855, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 42a85f	 Bytes: 8
  %loadMem_42a85f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a85f = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a85f)
  store %struct.Memory* %call_42a85f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 42a867	 Bytes: 4
  %loadMem_42a867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a867 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a867)
  store %struct.Memory* %call_42a867, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42a86b	 Bytes: 2
  %loadMem_42a86b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a86b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a86b)
  store %struct.Memory* %call_42a86b, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 42a86d	 Bytes: 5
  %loadMem1_42a86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a86d = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a86d, i64 -169885, i64 5, i64 5)
  store %struct.Memory* %call1_42a86d, %struct.Memory** %MEMORY

  %loadMem2_42a86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a86d = load i64, i64* %3
  %call2_42a86d = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_42a86d, %struct.Memory* %loadMem2_42a86d)
  store %struct.Memory* %call2_42a86d, %struct.Memory** %MEMORY

  ; Code: movq $0x57c52c, %rdx	 RIP: 42a872	 Bytes: 10
  %loadMem_42a872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a872 = call %struct.Memory* @routine_movq__0x57c52c___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a872)
  store %struct.Memory* %call_42a872, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 42a87c	 Bytes: 5
  %loadMem_42a87c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a87c = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a87c)
  store %struct.Memory* %call_42a87c, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 42a881	 Bytes: 3
  %loadMem_42a881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a881 = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a881)
  store %struct.Memory* %call_42a881, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42a884	 Bytes: 4
  %loadMem_42a884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a884 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a884)
  store %struct.Memory* %call_42a884, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 42a888	 Bytes: 4
  %loadMem_42a888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a888 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a888)
  store %struct.Memory* %call_42a888, %struct.Memory** %MEMORY

  ; Code: addq $0x1a90, %rsi	 RIP: 42a88c	 Bytes: 7
  %loadMem_42a88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a88c = call %struct.Memory* @routine_addq__0x1a90___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a88c)
  store %struct.Memory* %call_42a88c, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x14(%rbp)	 RIP: 42a893	 Bytes: 4
  %loadMem_42a893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a893 = call %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a893)
  store %struct.Memory* %call_42a893, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r9d	 RIP: 42a897	 Bytes: 4
  %loadMem_42a897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a897 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a897)
  store %struct.Memory* %call_42a897, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 42a89b	 Bytes: 3
  %loadMem_42a89b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a89b = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a89b)
  store %struct.Memory* %call_42a89b, %struct.Memory** %MEMORY

  ; Code: callq .print_numeric_influence	 RIP: 42a89e	 Bytes: 5
  %loadMem1_42a89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a89e = call %struct.Memory* @routine_callq_.print_numeric_influence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a89e, i64 1042, i64 5, i64 5)
  store %struct.Memory* %call1_42a89e, %struct.Memory** %MEMORY

  %loadMem2_42a89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a89e = load i64, i64* %3
  %call2_42a89e = call %struct.Memory* @sub_42acb0.print_numeric_influence(%struct.State* %0, i64  %loadPC_42a89e, %struct.Memory* %loadMem2_42a89e)
  store %struct.Memory* %call2_42a89e, %struct.Memory** %MEMORY

  ; Code: movq $0x57c532, %rsi	 RIP: 42a8a3	 Bytes: 10
  %loadMem_42a8a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8a3 = call %struct.Memory* @routine_movq__0x57c532___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8a3)
  store %struct.Memory* %call_42a8a3, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 42a8ad	 Bytes: 8
  %loadMem_42a8ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8ad = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8ad)
  store %struct.Memory* %call_42a8ad, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 42a8b5	 Bytes: 4
  %loadMem_42a8b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8b5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8b5)
  store %struct.Memory* %call_42a8b5, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42a8b9	 Bytes: 2
  %loadMem_42a8b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8b9 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8b9)
  store %struct.Memory* %call_42a8b9, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 42a8bb	 Bytes: 5
  %loadMem1_42a8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a8bb = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a8bb, i64 -169963, i64 5, i64 5)
  store %struct.Memory* %call1_42a8bb, %struct.Memory** %MEMORY

  %loadMem2_42a8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a8bb = load i64, i64* %3
  %call2_42a8bb = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_42a8bb, %struct.Memory* %loadMem2_42a8bb)
  store %struct.Memory* %call2_42a8bb, %struct.Memory** %MEMORY

  ; Code: movq $0x57c52c, %rdx	 RIP: 42a8c0	 Bytes: 10
  %loadMem_42a8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8c0 = call %struct.Memory* @routine_movq__0x57c52c___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8c0)
  store %struct.Memory* %call_42a8c0, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 42a8ca	 Bytes: 5
  %loadMem_42a8ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8ca = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8ca)
  store %struct.Memory* %call_42a8ca, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 42a8cf	 Bytes: 3
  %loadMem_42a8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8cf = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8cf)
  store %struct.Memory* %call_42a8cf, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42a8d2	 Bytes: 4
  %loadMem_42a8d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8d2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8d2)
  store %struct.Memory* %call_42a8d2, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 42a8d6	 Bytes: 4
  %loadMem_42a8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8d6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8d6)
  store %struct.Memory* %call_42a8d6, %struct.Memory** %MEMORY

  ; Code: addq $0x20d0, %rsi	 RIP: 42a8da	 Bytes: 7
  %loadMem_42a8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8da = call %struct.Memory* @routine_addq__0x20d0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8da)
  store %struct.Memory* %call_42a8da, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x1c(%rbp)	 RIP: 42a8e1	 Bytes: 4
  %loadMem_42a8e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8e1 = call %struct.Memory* @routine_movl__r8d__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8e1)
  store %struct.Memory* %call_42a8e1, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %r9d	 RIP: 42a8e5	 Bytes: 4
  %loadMem_42a8e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8e5 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8e5)
  store %struct.Memory* %call_42a8e5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 42a8e9	 Bytes: 3
  %loadMem_42a8e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8e9 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8e9)
  store %struct.Memory* %call_42a8e9, %struct.Memory** %MEMORY

  ; Code: callq .print_numeric_influence	 RIP: 42a8ec	 Bytes: 5
  %loadMem1_42a8ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a8ec = call %struct.Memory* @routine_callq_.print_numeric_influence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a8ec, i64 964, i64 5, i64 5)
  store %struct.Memory* %call1_42a8ec, %struct.Memory** %MEMORY

  %loadMem2_42a8ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a8ec = load i64, i64* %3
  %call2_42a8ec = call %struct.Memory* @sub_42acb0.print_numeric_influence(%struct.State* %0, i64  %loadPC_42a8ec, %struct.Memory* %loadMem2_42a8ec)
  store %struct.Memory* %call2_42a8ec, %struct.Memory** %MEMORY

  ; Code: .L_42a8f1:	 RIP: 42a8f1	 Bytes: 0
  br label %block_.L_42a8f1
block_.L_42a8f1:

  ; Code: movl 0xab0ee4, %eax	 RIP: 42a8f1	 Bytes: 7
  %loadMem_42a8f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8f1 = call %struct.Memory* @routine_movl_0xab0ee4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8f1)
  store %struct.Memory* %call_42a8f1, %struct.Memory** %MEMORY

  ; Code: andl $0x40, %eax	 RIP: 42a8f8	 Bytes: 3
  %loadMem_42a8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8f8 = call %struct.Memory* @routine_andl__0x40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8f8)
  store %struct.Memory* %call_42a8f8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42a8fb	 Bytes: 3
  %loadMem_42a8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8fb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8fb)
  store %struct.Memory* %call_42a8fb, %struct.Memory** %MEMORY

  ; Code: je .L_42a998	 RIP: 42a8fe	 Bytes: 6
  %loadMem_42a8fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8fe = call %struct.Memory* @routine_je_.L_42a998(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8fe, i8* %BRANCH_TAKEN, i64 154, i64 6, i64 6)
  store %struct.Memory* %call_42a8fe, %struct.Memory** %MEMORY

  %loadBr_42a8fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a8fe = icmp eq i8 %loadBr_42a8fe, 1
  br i1 %cmpBr_42a8fe, label %block_.L_42a998, label %block_42a904

block_42a904:
  ; Code: movq $0x57c54b, %rsi	 RIP: 42a904	 Bytes: 10
  %loadMem_42a904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a904 = call %struct.Memory* @routine_movq__0x57c54b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a904)
  store %struct.Memory* %call_42a904, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 42a90e	 Bytes: 8
  %loadMem_42a90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a90e = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a90e)
  store %struct.Memory* %call_42a90e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42a916	 Bytes: 2
  %loadMem_42a916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a916 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a916)
  store %struct.Memory* %call_42a916, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 42a918	 Bytes: 5
  %loadMem1_42a918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a918 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a918, i64 -170056, i64 5, i64 5)
  store %struct.Memory* %call1_42a918, %struct.Memory** %MEMORY

  %loadMem2_42a918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a918 = load i64, i64* %3
  %call2_42a918 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_42a918, %struct.Memory* %loadMem2_42a918)
  store %struct.Memory* %call2_42a918, %struct.Memory** %MEMORY

  ; Code: movq $0x587634, %rdx	 RIP: 42a91d	 Bytes: 10
  %loadMem_42a91d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a91d = call %struct.Memory* @routine_movq__0x587634___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a91d)
  store %struct.Memory* %call_42a91d, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 42a927	 Bytes: 5
  %loadMem_42a927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a927 = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a927)
  store %struct.Memory* %call_42a927, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 42a92c	 Bytes: 3
  %loadMem_42a92c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a92c = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a92c)
  store %struct.Memory* %call_42a92c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42a92f	 Bytes: 4
  %loadMem_42a92f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a92f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a92f)
  store %struct.Memory* %call_42a92f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 42a933	 Bytes: 4
  %loadMem_42a933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a933 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a933)
  store %struct.Memory* %call_42a933, %struct.Memory** %MEMORY

  ; Code: addq $0x2710, %rsi	 RIP: 42a937	 Bytes: 7
  %loadMem_42a937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a937 = call %struct.Memory* @routine_addq__0x2710___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a937)
  store %struct.Memory* %call_42a937, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x24(%rbp)	 RIP: 42a93e	 Bytes: 4
  %loadMem_42a93e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a93e = call %struct.Memory* @routine_movl__r8d__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a93e)
  store %struct.Memory* %call_42a93e, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r9d	 RIP: 42a942	 Bytes: 4
  %loadMem_42a942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a942 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a942)
  store %struct.Memory* %call_42a942, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 42a946	 Bytes: 3
  %loadMem_42a946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a946 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a946)
  store %struct.Memory* %call_42a946, %struct.Memory** %MEMORY

  ; Code: callq .print_numeric_influence	 RIP: 42a949	 Bytes: 5
  %loadMem1_42a949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a949 = call %struct.Memory* @routine_callq_.print_numeric_influence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a949, i64 871, i64 5, i64 5)
  store %struct.Memory* %call1_42a949, %struct.Memory** %MEMORY

  %loadMem2_42a949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a949 = load i64, i64* %3
  %call2_42a949 = call %struct.Memory* @sub_42acb0.print_numeric_influence(%struct.State* %0, i64  %loadPC_42a949, %struct.Memory* %loadMem2_42a949)
  store %struct.Memory* %call2_42a949, %struct.Memory** %MEMORY

  ; Code: movq $0x57c560, %rsi	 RIP: 42a94e	 Bytes: 10
  %loadMem_42a94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a94e = call %struct.Memory* @routine_movq__0x57c560___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a94e)
  store %struct.Memory* %call_42a94e, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 42a958	 Bytes: 8
  %loadMem_42a958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a958 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a958)
  store %struct.Memory* %call_42a958, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42a960	 Bytes: 2
  %loadMem_42a960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a960 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a960)
  store %struct.Memory* %call_42a960, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 42a962	 Bytes: 5
  %loadMem1_42a962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a962 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a962, i64 -170130, i64 5, i64 5)
  store %struct.Memory* %call1_42a962, %struct.Memory** %MEMORY

  %loadMem2_42a962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a962 = load i64, i64* %3
  %call2_42a962 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_42a962, %struct.Memory* %loadMem2_42a962)
  store %struct.Memory* %call2_42a962, %struct.Memory** %MEMORY

  ; Code: movq $0x587634, %rdx	 RIP: 42a967	 Bytes: 10
  %loadMem_42a967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a967 = call %struct.Memory* @routine_movq__0x587634___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a967)
  store %struct.Memory* %call_42a967, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 42a971	 Bytes: 5
  %loadMem_42a971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a971 = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a971)
  store %struct.Memory* %call_42a971, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 42a976	 Bytes: 3
  %loadMem_42a976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a976 = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a976)
  store %struct.Memory* %call_42a976, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42a979	 Bytes: 4
  %loadMem_42a979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a979 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a979)
  store %struct.Memory* %call_42a979, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 42a97d	 Bytes: 4
  %loadMem_42a97d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a97d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a97d)
  store %struct.Memory* %call_42a97d, %struct.Memory** %MEMORY

  ; Code: addq $0x2d50, %rsi	 RIP: 42a981	 Bytes: 7
  %loadMem_42a981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a981 = call %struct.Memory* @routine_addq__0x2d50___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a981)
  store %struct.Memory* %call_42a981, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x2c(%rbp)	 RIP: 42a988	 Bytes: 4
  %loadMem_42a988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a988 = call %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a988)
  store %struct.Memory* %call_42a988, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %r9d	 RIP: 42a98c	 Bytes: 4
  %loadMem_42a98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a98c = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a98c)
  store %struct.Memory* %call_42a98c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 42a990	 Bytes: 3
  %loadMem_42a990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a990 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a990)
  store %struct.Memory* %call_42a990, %struct.Memory** %MEMORY

  ; Code: callq .print_numeric_influence	 RIP: 42a993	 Bytes: 5
  %loadMem1_42a993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a993 = call %struct.Memory* @routine_callq_.print_numeric_influence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a993, i64 797, i64 5, i64 5)
  store %struct.Memory* %call1_42a993, %struct.Memory** %MEMORY

  %loadMem2_42a993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a993 = load i64, i64* %3
  %call2_42a993 = call %struct.Memory* @sub_42acb0.print_numeric_influence(%struct.State* %0, i64  %loadPC_42a993, %struct.Memory* %loadMem2_42a993)
  store %struct.Memory* %call2_42a993, %struct.Memory** %MEMORY

  ; Code: .L_42a998:	 RIP: 42a998	 Bytes: 0
  br label %block_.L_42a998
block_.L_42a998:

  ; Code: movl 0xab0ee4, %eax	 RIP: 42a998	 Bytes: 7
  %loadMem_42a998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a998 = call %struct.Memory* @routine_movl_0xab0ee4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a998)
  store %struct.Memory* %call_42a998, %struct.Memory** %MEMORY

  ; Code: andl $0x80, %eax	 RIP: 42a99f	 Bytes: 5
  %loadMem_42a99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a99f = call %struct.Memory* @routine_andl__0x80___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a99f)
  store %struct.Memory* %call_42a99f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42a9a4	 Bytes: 3
  %loadMem_42a9a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9a4 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9a4)
  store %struct.Memory* %call_42a9a4, %struct.Memory** %MEMORY

  ; Code: je .L_42aac8	 RIP: 42a9a7	 Bytes: 6
  %loadMem_42a9a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9a7 = call %struct.Memory* @routine_je_.L_42aac8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9a7, i8* %BRANCH_TAKEN, i64 289, i64 6, i64 6)
  store %struct.Memory* %call_42a9a7, %struct.Memory** %MEMORY

  %loadBr_42a9a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a9a7 = icmp eq i8 %loadBr_42a9a7, 1
  br i1 %cmpBr_42a9a7, label %block_.L_42aac8, label %block_42a9ad

block_42a9ad:
  ; Code: movq $0x57c575, %rsi	 RIP: 42a9ad	 Bytes: 10
  %loadMem_42a9ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9ad = call %struct.Memory* @routine_movq__0x57c575___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9ad)
  store %struct.Memory* %call_42a9ad, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 42a9b7	 Bytes: 8
  %loadMem_42a9b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9b7 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9b7)
  store %struct.Memory* %call_42a9b7, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42a9bf	 Bytes: 2
  %loadMem_42a9bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9bf = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9bf)
  store %struct.Memory* %call_42a9bf, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 42a9c1	 Bytes: 5
  %loadMem1_42a9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a9c1 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a9c1, i64 -170225, i64 5, i64 5)
  store %struct.Memory* %call1_42a9c1, %struct.Memory** %MEMORY

  %loadMem2_42a9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a9c1 = load i64, i64* %3
  %call2_42a9c1 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_42a9c1, %struct.Memory* %loadMem2_42a9c1)
  store %struct.Memory* %call2_42a9c1, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 42a9c6	 Bytes: 4
  %loadMem_42a9c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9c6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9c6)
  store %struct.Memory* %call_42a9c6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x7924(%rsi)	 RIP: 42a9ca	 Bytes: 7
  %loadMem_42a9ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9ca = call %struct.Memory* @routine_cmpl__0x0__0x7924__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9ca)
  store %struct.Memory* %call_42a9ca, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 42a9d1	 Bytes: 3
  %loadMem_42a9d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9d1 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9d1)
  store %struct.Memory* %call_42a9d1, %struct.Memory** %MEMORY

  ; Code: je .L_42aa0a	 RIP: 42a9d4	 Bytes: 6
  %loadMem_42a9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9d4 = call %struct.Memory* @routine_je_.L_42aa0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9d4, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_42a9d4, %struct.Memory** %MEMORY

  %loadBr_42a9d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a9d4 = icmp eq i8 %loadBr_42a9d4, 1
  br i1 %cmpBr_42a9d4, label %block_.L_42aa0a, label %block_42a9da

block_42a9da:
  ; Code: movq $0x57c586, %rdx	 RIP: 42a9da	 Bytes: 10
  %loadMem_42a9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9da = call %struct.Memory* @routine_movq__0x57c586___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9da)
  store %struct.Memory* %call_42a9da, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %ecx	 RIP: 42a9e4	 Bytes: 5
  %loadMem_42a9e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9e4 = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9e4)
  store %struct.Memory* %call_42a9e4, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 42a9e9	 Bytes: 2
  %loadMem_42a9e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9e9 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9e9)
  store %struct.Memory* %call_42a9e9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42a9eb	 Bytes: 4
  %loadMem_42a9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9eb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9eb)
  store %struct.Memory* %call_42a9eb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 42a9ef	 Bytes: 4
  %loadMem_42a9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9ef = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9ef)
  store %struct.Memory* %call_42a9ef, %struct.Memory** %MEMORY

  ; Code: addq $0xe10, %rsi	 RIP: 42a9f3	 Bytes: 7
  %loadMem_42a9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9f3 = call %struct.Memory* @routine_addq__0xe10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9f3)
  store %struct.Memory* %call_42a9f3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 42a9fa	 Bytes: 3
  %loadMem_42a9fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9fa = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9fa)
  store %struct.Memory* %call_42a9fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 42a9fd	 Bytes: 3
  %loadMem_42a9fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9fd = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9fd)
  store %struct.Memory* %call_42a9fd, %struct.Memory** %MEMORY

  ; Code: callq .print_numeric_influence	 RIP: 42aa00	 Bytes: 5
  %loadMem1_42aa00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42aa00 = call %struct.Memory* @routine_callq_.print_numeric_influence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42aa00, i64 688, i64 5, i64 5)
  store %struct.Memory* %call1_42aa00, %struct.Memory** %MEMORY

  %loadMem2_42aa00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42aa00 = load i64, i64* %3
  %call2_42aa00 = call %struct.Memory* @sub_42acb0.print_numeric_influence(%struct.State* %0, i64  %loadPC_42aa00, %struct.Memory* %loadMem2_42aa00)
  store %struct.Memory* %call2_42aa00, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42aa38	 RIP: 42aa05	 Bytes: 5
  %loadMem_42aa05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa05 = call %struct.Memory* @routine_jmpq_.L_42aa38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa05, i64 51, i64 5)
  store %struct.Memory* %call_42aa05, %struct.Memory** %MEMORY

  br label %block_.L_42aa38

  ; Code: .L_42aa0a:	 RIP: 42aa0a	 Bytes: 0
block_.L_42aa0a:

  ; Code: movq $0x57c58c, %rdx	 RIP: 42aa0a	 Bytes: 10
  %loadMem_42aa0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa0a = call %struct.Memory* @routine_movq__0x57c58c___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa0a)
  store %struct.Memory* %call_42aa0a, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 42aa14	 Bytes: 5
  %loadMem_42aa14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa14 = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa14)
  store %struct.Memory* %call_42aa14, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 42aa19	 Bytes: 3
  %loadMem_42aa19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa19 = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa19)
  store %struct.Memory* %call_42aa19, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r9d	 RIP: 42aa1c	 Bytes: 6
  %loadMem_42aa1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa1c = call %struct.Memory* @routine_movl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa1c)
  store %struct.Memory* %call_42aa1c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42aa22	 Bytes: 4
  %loadMem_42aa22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa22 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa22)
  store %struct.Memory* %call_42aa22, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42aa26	 Bytes: 4
  %loadMem_42aa26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa26 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa26)
  store %struct.Memory* %call_42aa26, %struct.Memory** %MEMORY

  ; Code: addq $0xe10, %rax	 RIP: 42aa2a	 Bytes: 6
  %loadMem_42aa2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa2a = call %struct.Memory* @routine_addq__0xe10___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa2a)
  store %struct.Memory* %call_42aa2a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 42aa30	 Bytes: 3
  %loadMem_42aa30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa30 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa30)
  store %struct.Memory* %call_42aa30, %struct.Memory** %MEMORY

  ; Code: callq .print_numeric_influence	 RIP: 42aa33	 Bytes: 5
  %loadMem1_42aa33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42aa33 = call %struct.Memory* @routine_callq_.print_numeric_influence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42aa33, i64 637, i64 5, i64 5)
  store %struct.Memory* %call1_42aa33, %struct.Memory** %MEMORY

  %loadMem2_42aa33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42aa33 = load i64, i64* %3
  %call2_42aa33 = call %struct.Memory* @sub_42acb0.print_numeric_influence(%struct.State* %0, i64  %loadPC_42aa33, %struct.Memory* %loadMem2_42aa33)
  store %struct.Memory* %call2_42aa33, %struct.Memory** %MEMORY

  ; Code: .L_42aa38:	 RIP: 42aa38	 Bytes: 0
  br label %block_.L_42aa38
block_.L_42aa38:

  ; Code: movq $0x57c592, %rsi	 RIP: 42aa38	 Bytes: 10
  %loadMem_42aa38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa38 = call %struct.Memory* @routine_movq__0x57c592___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa38)
  store %struct.Memory* %call_42aa38, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 42aa42	 Bytes: 8
  %loadMem_42aa42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa42 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa42)
  store %struct.Memory* %call_42aa42, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42aa4a	 Bytes: 2
  %loadMem_42aa4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa4a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa4a)
  store %struct.Memory* %call_42aa4a, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 42aa4c	 Bytes: 5
  %loadMem1_42aa4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42aa4c = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42aa4c, i64 -170364, i64 5, i64 5)
  store %struct.Memory* %call1_42aa4c, %struct.Memory** %MEMORY

  %loadMem2_42aa4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42aa4c = load i64, i64* %3
  %call2_42aa4c = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_42aa4c, %struct.Memory* %loadMem2_42aa4c)
  store %struct.Memory* %call2_42aa4c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 42aa51	 Bytes: 4
  %loadMem_42aa51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa51 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa51)
  store %struct.Memory* %call_42aa51, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x7924(%rsi)	 RIP: 42aa55	 Bytes: 7
  %loadMem_42aa55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa55 = call %struct.Memory* @routine_cmpl__0x0__0x7924__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa55)
  store %struct.Memory* %call_42aa55, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 42aa5c	 Bytes: 3
  %loadMem_42aa5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa5c = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa5c)
  store %struct.Memory* %call_42aa5c, %struct.Memory** %MEMORY

  ; Code: je .L_42aa95	 RIP: 42aa5f	 Bytes: 6
  %loadMem_42aa5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa5f = call %struct.Memory* @routine_je_.L_42aa95(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa5f, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_42aa5f, %struct.Memory** %MEMORY

  %loadBr_42aa5f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42aa5f = icmp eq i8 %loadBr_42aa5f, 1
  br i1 %cmpBr_42aa5f, label %block_.L_42aa95, label %block_42aa65

block_42aa65:
  ; Code: movq $0x57c586, %rdx	 RIP: 42aa65	 Bytes: 10
  %loadMem_42aa65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa65 = call %struct.Memory* @routine_movq__0x57c586___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa65)
  store %struct.Memory* %call_42aa65, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %ecx	 RIP: 42aa6f	 Bytes: 5
  %loadMem_42aa6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa6f = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa6f)
  store %struct.Memory* %call_42aa6f, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 42aa74	 Bytes: 2
  %loadMem_42aa74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa74 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa74)
  store %struct.Memory* %call_42aa74, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42aa76	 Bytes: 4
  %loadMem_42aa76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa76 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa76)
  store %struct.Memory* %call_42aa76, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 42aa7a	 Bytes: 4
  %loadMem_42aa7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa7a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa7a)
  store %struct.Memory* %call_42aa7a, %struct.Memory** %MEMORY

  ; Code: addq $0x1450, %rsi	 RIP: 42aa7e	 Bytes: 7
  %loadMem_42aa7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa7e = call %struct.Memory* @routine_addq__0x1450___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa7e)
  store %struct.Memory* %call_42aa7e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 42aa85	 Bytes: 3
  %loadMem_42aa85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa85 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa85)
  store %struct.Memory* %call_42aa85, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 42aa88	 Bytes: 3
  %loadMem_42aa88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa88 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa88)
  store %struct.Memory* %call_42aa88, %struct.Memory** %MEMORY

  ; Code: callq .print_numeric_influence	 RIP: 42aa8b	 Bytes: 5
  %loadMem1_42aa8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42aa8b = call %struct.Memory* @routine_callq_.print_numeric_influence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42aa8b, i64 549, i64 5, i64 5)
  store %struct.Memory* %call1_42aa8b, %struct.Memory** %MEMORY

  %loadMem2_42aa8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42aa8b = load i64, i64* %3
  %call2_42aa8b = call %struct.Memory* @sub_42acb0.print_numeric_influence(%struct.State* %0, i64  %loadPC_42aa8b, %struct.Memory* %loadMem2_42aa8b)
  store %struct.Memory* %call2_42aa8b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42aac3	 RIP: 42aa90	 Bytes: 5
  %loadMem_42aa90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa90 = call %struct.Memory* @routine_jmpq_.L_42aac3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa90, i64 51, i64 5)
  store %struct.Memory* %call_42aa90, %struct.Memory** %MEMORY

  br label %block_.L_42aac3

  ; Code: .L_42aa95:	 RIP: 42aa95	 Bytes: 0
block_.L_42aa95:

  ; Code: movq $0x57c58c, %rdx	 RIP: 42aa95	 Bytes: 10
  %loadMem_42aa95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa95 = call %struct.Memory* @routine_movq__0x57c58c___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa95)
  store %struct.Memory* %call_42aa95, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 42aa9f	 Bytes: 5
  %loadMem_42aa9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa9f = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa9f)
  store %struct.Memory* %call_42aa9f, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 42aaa4	 Bytes: 3
  %loadMem_42aaa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaa4 = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaa4)
  store %struct.Memory* %call_42aaa4, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r9d	 RIP: 42aaa7	 Bytes: 6
  %loadMem_42aaa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaa7 = call %struct.Memory* @routine_movl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaa7)
  store %struct.Memory* %call_42aaa7, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42aaad	 Bytes: 4
  %loadMem_42aaad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaad = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaad)
  store %struct.Memory* %call_42aaad, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42aab1	 Bytes: 4
  %loadMem_42aab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aab1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aab1)
  store %struct.Memory* %call_42aab1, %struct.Memory** %MEMORY

  ; Code: addq $0x1450, %rax	 RIP: 42aab5	 Bytes: 6
  %loadMem_42aab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aab5 = call %struct.Memory* @routine_addq__0x1450___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aab5)
  store %struct.Memory* %call_42aab5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 42aabb	 Bytes: 3
  %loadMem_42aabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aabb = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aabb)
  store %struct.Memory* %call_42aabb, %struct.Memory** %MEMORY

  ; Code: callq .print_numeric_influence	 RIP: 42aabe	 Bytes: 5
  %loadMem1_42aabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42aabe = call %struct.Memory* @routine_callq_.print_numeric_influence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42aabe, i64 498, i64 5, i64 5)
  store %struct.Memory* %call1_42aabe, %struct.Memory** %MEMORY

  %loadMem2_42aabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42aabe = load i64, i64* %3
  %call2_42aabe = call %struct.Memory* @sub_42acb0.print_numeric_influence(%struct.State* %0, i64  %loadPC_42aabe, %struct.Memory* %loadMem2_42aabe)
  store %struct.Memory* %call2_42aabe, %struct.Memory** %MEMORY

  ; Code: .L_42aac3:	 RIP: 42aac3	 Bytes: 0
  br label %block_.L_42aac3
block_.L_42aac3:

  ; Code: jmpq .L_42aac8	 RIP: 42aac3	 Bytes: 5
  %loadMem_42aac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aac3 = call %struct.Memory* @routine_jmpq_.L_42aac8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aac3, i64 5, i64 5)
  store %struct.Memory* %call_42aac3, %struct.Memory** %MEMORY

  br label %block_.L_42aac8

  ; Code: .L_42aac8:	 RIP: 42aac8	 Bytes: 0
block_.L_42aac8:

  ; Code: movl 0xab0ee4, %eax	 RIP: 42aac8	 Bytes: 7
  %loadMem_42aac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aac8 = call %struct.Memory* @routine_movl_0xab0ee4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aac8)
  store %struct.Memory* %call_42aac8, %struct.Memory** %MEMORY

  ; Code: andl $0x20, %eax	 RIP: 42aacf	 Bytes: 3
  %loadMem_42aacf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aacf = call %struct.Memory* @routine_andl__0x20___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aacf)
  store %struct.Memory* %call_42aacf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42aad2	 Bytes: 3
  %loadMem_42aad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aad2 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aad2)
  store %struct.Memory* %call_42aad2, %struct.Memory** %MEMORY

  ; Code: je .L_42ac04	 RIP: 42aad5	 Bytes: 6
  %loadMem_42aad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aad5 = call %struct.Memory* @routine_je_.L_42ac04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aad5, i8* %BRANCH_TAKEN, i64 303, i64 6, i64 6)
  store %struct.Memory* %call_42aad5, %struct.Memory** %MEMORY

  %loadBr_42aad5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42aad5 = icmp eq i8 %loadBr_42aad5, 1
  br i1 %cmpBr_42aad5, label %block_.L_42ac04, label %block_42aadb

block_42aadb:
  ; Code: movq $0x57c5a3, %rsi	 RIP: 42aadb	 Bytes: 10
  %loadMem_42aadb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aadb = call %struct.Memory* @routine_movq__0x57c5a3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aadb)
  store %struct.Memory* %call_42aadb, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 42aae5	 Bytes: 8
  %loadMem_42aae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aae5 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aae5)
  store %struct.Memory* %call_42aae5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 42aaed	 Bytes: 4
  %loadMem_42aaed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaed = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaed)
  store %struct.Memory* %call_42aaed, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42aaf1	 Bytes: 2
  %loadMem_42aaf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaf1 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaf1)
  store %struct.Memory* %call_42aaf1, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 42aaf3	 Bytes: 5
  %loadMem1_42aaf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42aaf3 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42aaf3, i64 -170531, i64 5, i64 5)
  store %struct.Memory* %call1_42aaf3, %struct.Memory** %MEMORY

  %loadMem2_42aaf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42aaf3 = load i64, i64* %3
  %call2_42aaf3 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_42aaf3, %struct.Memory* %loadMem2_42aaf3)
  store %struct.Memory* %call2_42aaf3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 42aaf8	 Bytes: 4
  %loadMem_42aaf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaf8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaf8)
  store %struct.Memory* %call_42aaf8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x7924(%rdx)	 RIP: 42aafc	 Bytes: 7
  %loadMem_42aafc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aafc = call %struct.Memory* @routine_cmpl__0x0__0x7924__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aafc)
  store %struct.Memory* %call_42aafc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 42ab03	 Bytes: 3
  %loadMem_42ab03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab03 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab03)
  store %struct.Memory* %call_42ab03, %struct.Memory** %MEMORY

  ; Code: je .L_42ab3f	 RIP: 42ab06	 Bytes: 6
  %loadMem_42ab06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab06 = call %struct.Memory* @routine_je_.L_42ab3f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab06, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_42ab06, %struct.Memory** %MEMORY

  %loadBr_42ab06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ab06 = icmp eq i8 %loadBr_42ab06, 1
  br i1 %cmpBr_42ab06, label %block_.L_42ab3f, label %block_42ab0c

block_42ab0c:
  ; Code: movq $0x57c586, %rdx	 RIP: 42ab0c	 Bytes: 10
  %loadMem_42ab0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab0c = call %struct.Memory* @routine_movq__0x57c586___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab0c)
  store %struct.Memory* %call_42ab0c, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %ecx	 RIP: 42ab16	 Bytes: 5
  %loadMem_42ab16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab16 = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab16)
  store %struct.Memory* %call_42ab16, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r8d	 RIP: 42ab1b	 Bytes: 6
  %loadMem_42ab1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab1b = call %struct.Memory* @routine_movl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab1b)
  store %struct.Memory* %call_42ab1b, %struct.Memory** %MEMORY

  ; Code: xorl %r9d, %r9d	 RIP: 42ab21	 Bytes: 3
  %loadMem_42ab21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab21 = call %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab21)
  store %struct.Memory* %call_42ab21, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42ab24	 Bytes: 4
  %loadMem_42ab24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab24 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab24)
  store %struct.Memory* %call_42ab24, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ab28	 Bytes: 4
  %loadMem_42ab28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab28 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab28)
  store %struct.Memory* %call_42ab28, %struct.Memory** %MEMORY

  ; Code: addq $0x190, %rax	 RIP: 42ab2c	 Bytes: 6
  %loadMem_42ab2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab2c = call %struct.Memory* @routine_addq__0x190___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab2c)
  store %struct.Memory* %call_42ab2c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 42ab32	 Bytes: 3
  %loadMem_42ab32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab32 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab32)
  store %struct.Memory* %call_42ab32, %struct.Memory** %MEMORY

  ; Code: callq .print_numeric_influence	 RIP: 42ab35	 Bytes: 5
  %loadMem1_42ab35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42ab35 = call %struct.Memory* @routine_callq_.print_numeric_influence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42ab35, i64 379, i64 5, i64 5)
  store %struct.Memory* %call1_42ab35, %struct.Memory** %MEMORY

  %loadMem2_42ab35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ab35 = load i64, i64* %3
  %call2_42ab35 = call %struct.Memory* @sub_42acb0.print_numeric_influence(%struct.State* %0, i64  %loadPC_42ab35, %struct.Memory* %loadMem2_42ab35)
  store %struct.Memory* %call2_42ab35, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42ab6d	 RIP: 42ab3a	 Bytes: 5
  %loadMem_42ab3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab3a = call %struct.Memory* @routine_jmpq_.L_42ab6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab3a, i64 51, i64 5)
  store %struct.Memory* %call_42ab3a, %struct.Memory** %MEMORY

  br label %block_.L_42ab6d

  ; Code: .L_42ab3f:	 RIP: 42ab3f	 Bytes: 0
block_.L_42ab3f:

  ; Code: movq $0x57c58c, %rdx	 RIP: 42ab3f	 Bytes: 10
  %loadMem_42ab3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab3f = call %struct.Memory* @routine_movq__0x57c58c___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab3f)
  store %struct.Memory* %call_42ab3f, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 42ab49	 Bytes: 5
  %loadMem_42ab49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab49 = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab49)
  store %struct.Memory* %call_42ab49, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 42ab4e	 Bytes: 5
  %loadMem_42ab4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab4e = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab4e)
  store %struct.Memory* %call_42ab4e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42ab53	 Bytes: 4
  %loadMem_42ab53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab53 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab53)
  store %struct.Memory* %call_42ab53, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 42ab57	 Bytes: 4
  %loadMem_42ab57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab57 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab57)
  store %struct.Memory* %call_42ab57, %struct.Memory** %MEMORY

  ; Code: addq $0x190, %rsi	 RIP: 42ab5b	 Bytes: 7
  %loadMem_42ab5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab5b = call %struct.Memory* @routine_addq__0x190___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab5b)
  store %struct.Memory* %call_42ab5b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 42ab62	 Bytes: 3
  %loadMem_42ab62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab62 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab62)
  store %struct.Memory* %call_42ab62, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 42ab65	 Bytes: 3
  %loadMem_42ab65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab65 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab65)
  store %struct.Memory* %call_42ab65, %struct.Memory** %MEMORY

  ; Code: callq .print_numeric_influence	 RIP: 42ab68	 Bytes: 5
  %loadMem1_42ab68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42ab68 = call %struct.Memory* @routine_callq_.print_numeric_influence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42ab68, i64 328, i64 5, i64 5)
  store %struct.Memory* %call1_42ab68, %struct.Memory** %MEMORY

  %loadMem2_42ab68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ab68 = load i64, i64* %3
  %call2_42ab68 = call %struct.Memory* @sub_42acb0.print_numeric_influence(%struct.State* %0, i64  %loadPC_42ab68, %struct.Memory* %loadMem2_42ab68)
  store %struct.Memory* %call2_42ab68, %struct.Memory** %MEMORY

  ; Code: .L_42ab6d:	 RIP: 42ab6d	 Bytes: 0
  br label %block_.L_42ab6d
block_.L_42ab6d:

  ; Code: movq $0x57c5ba, %rsi	 RIP: 42ab6d	 Bytes: 10
  %loadMem_42ab6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab6d = call %struct.Memory* @routine_movq__0x57c5ba___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab6d)
  store %struct.Memory* %call_42ab6d, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 42ab77	 Bytes: 8
  %loadMem_42ab77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab77 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab77)
  store %struct.Memory* %call_42ab77, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 42ab7f	 Bytes: 4
  %loadMem_42ab7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab7f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab7f)
  store %struct.Memory* %call_42ab7f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42ab83	 Bytes: 2
  %loadMem_42ab83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab83 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab83)
  store %struct.Memory* %call_42ab83, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 42ab85	 Bytes: 5
  %loadMem1_42ab85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42ab85 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42ab85, i64 -170677, i64 5, i64 5)
  store %struct.Memory* %call1_42ab85, %struct.Memory** %MEMORY

  %loadMem2_42ab85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ab85 = load i64, i64* %3
  %call2_42ab85 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_42ab85, %struct.Memory* %loadMem2_42ab85)
  store %struct.Memory* %call2_42ab85, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 42ab8a	 Bytes: 4
  %loadMem_42ab8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab8a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab8a)
  store %struct.Memory* %call_42ab8a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x7924(%rdx)	 RIP: 42ab8e	 Bytes: 7
  %loadMem_42ab8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab8e = call %struct.Memory* @routine_cmpl__0x0__0x7924__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab8e)
  store %struct.Memory* %call_42ab8e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 42ab95	 Bytes: 3
  %loadMem_42ab95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab95 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab95)
  store %struct.Memory* %call_42ab95, %struct.Memory** %MEMORY

  ; Code: je .L_42abd1	 RIP: 42ab98	 Bytes: 6
  %loadMem_42ab98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab98 = call %struct.Memory* @routine_je_.L_42abd1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab98, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_42ab98, %struct.Memory** %MEMORY

  %loadBr_42ab98 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ab98 = icmp eq i8 %loadBr_42ab98, 1
  br i1 %cmpBr_42ab98, label %block_.L_42abd1, label %block_42ab9e

block_42ab9e:
  ; Code: movq $0x57c586, %rdx	 RIP: 42ab9e	 Bytes: 10
  %loadMem_42ab9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab9e = call %struct.Memory* @routine_movq__0x57c586___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab9e)
  store %struct.Memory* %call_42ab9e, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %ecx	 RIP: 42aba8	 Bytes: 5
  %loadMem_42aba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aba8 = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aba8)
  store %struct.Memory* %call_42aba8, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r8d	 RIP: 42abad	 Bytes: 6
  %loadMem_42abad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abad = call %struct.Memory* @routine_movl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abad)
  store %struct.Memory* %call_42abad, %struct.Memory** %MEMORY

  ; Code: xorl %r9d, %r9d	 RIP: 42abb3	 Bytes: 3
  %loadMem_42abb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abb3 = call %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abb3)
  store %struct.Memory* %call_42abb3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42abb6	 Bytes: 4
  %loadMem_42abb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abb6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abb6)
  store %struct.Memory* %call_42abb6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42abba	 Bytes: 4
  %loadMem_42abba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abba = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abba)
  store %struct.Memory* %call_42abba, %struct.Memory** %MEMORY

  ; Code: addq $0x7d0, %rax	 RIP: 42abbe	 Bytes: 6
  %loadMem_42abbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abbe = call %struct.Memory* @routine_addq__0x7d0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abbe)
  store %struct.Memory* %call_42abbe, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 42abc4	 Bytes: 3
  %loadMem_42abc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abc4 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abc4)
  store %struct.Memory* %call_42abc4, %struct.Memory** %MEMORY

  ; Code: callq .print_numeric_influence	 RIP: 42abc7	 Bytes: 5
  %loadMem1_42abc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42abc7 = call %struct.Memory* @routine_callq_.print_numeric_influence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42abc7, i64 233, i64 5, i64 5)
  store %struct.Memory* %call1_42abc7, %struct.Memory** %MEMORY

  %loadMem2_42abc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42abc7 = load i64, i64* %3
  %call2_42abc7 = call %struct.Memory* @sub_42acb0.print_numeric_influence(%struct.State* %0, i64  %loadPC_42abc7, %struct.Memory* %loadMem2_42abc7)
  store %struct.Memory* %call2_42abc7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42abff	 RIP: 42abcc	 Bytes: 5
  %loadMem_42abcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abcc = call %struct.Memory* @routine_jmpq_.L_42abff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abcc, i64 51, i64 5)
  store %struct.Memory* %call_42abcc, %struct.Memory** %MEMORY

  br label %block_.L_42abff

  ; Code: .L_42abd1:	 RIP: 42abd1	 Bytes: 0
block_.L_42abd1:

  ; Code: movq $0x57c58c, %rdx	 RIP: 42abd1	 Bytes: 10
  %loadMem_42abd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abd1 = call %struct.Memory* @routine_movq__0x57c58c___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abd1)
  store %struct.Memory* %call_42abd1, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 42abdb	 Bytes: 5
  %loadMem_42abdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abdb = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abdb)
  store %struct.Memory* %call_42abdb, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 42abe0	 Bytes: 5
  %loadMem_42abe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abe0 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abe0)
  store %struct.Memory* %call_42abe0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42abe5	 Bytes: 4
  %loadMem_42abe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abe5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abe5)
  store %struct.Memory* %call_42abe5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 42abe9	 Bytes: 4
  %loadMem_42abe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abe9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abe9)
  store %struct.Memory* %call_42abe9, %struct.Memory** %MEMORY

  ; Code: addq $0x7d0, %rsi	 RIP: 42abed	 Bytes: 7
  %loadMem_42abed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abed = call %struct.Memory* @routine_addq__0x7d0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abed)
  store %struct.Memory* %call_42abed, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 42abf4	 Bytes: 3
  %loadMem_42abf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abf4 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abf4)
  store %struct.Memory* %call_42abf4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 42abf7	 Bytes: 3
  %loadMem_42abf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abf7 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abf7)
  store %struct.Memory* %call_42abf7, %struct.Memory** %MEMORY

  ; Code: callq .print_numeric_influence	 RIP: 42abfa	 Bytes: 5
  %loadMem1_42abfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42abfa = call %struct.Memory* @routine_callq_.print_numeric_influence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42abfa, i64 182, i64 5, i64 5)
  store %struct.Memory* %call1_42abfa, %struct.Memory** %MEMORY

  %loadMem2_42abfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42abfa = load i64, i64* %3
  %call2_42abfa = call %struct.Memory* @sub_42acb0.print_numeric_influence(%struct.State* %0, i64  %loadPC_42abfa, %struct.Memory* %loadMem2_42abfa)
  store %struct.Memory* %call2_42abfa, %struct.Memory** %MEMORY

  ; Code: .L_42abff:	 RIP: 42abff	 Bytes: 0
  br label %block_.L_42abff
block_.L_42abff:

  ; Code: jmpq .L_42ac04	 RIP: 42abff	 Bytes: 5
  %loadMem_42abff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abff = call %struct.Memory* @routine_jmpq_.L_42ac04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abff, i64 5, i64 5)
  store %struct.Memory* %call_42abff, %struct.Memory** %MEMORY

  br label %block_.L_42ac04

  ; Code: .L_42ac04:	 RIP: 42ac04	 Bytes: 0
block_.L_42ac04:

  ; Code: movl 0xab0ee4, %eax	 RIP: 42ac04	 Bytes: 7
  %loadMem_42ac04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac04 = call %struct.Memory* @routine_movl_0xab0ee4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac04)
  store %struct.Memory* %call_42ac04, %struct.Memory** %MEMORY

  ; Code: andl $0x10, %eax	 RIP: 42ac0b	 Bytes: 3
  %loadMem_42ac0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac0b = call %struct.Memory* @routine_andl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac0b)
  store %struct.Memory* %call_42ac0b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42ac0e	 Bytes: 3
  %loadMem_42ac0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac0e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac0e)
  store %struct.Memory* %call_42ac0e, %struct.Memory** %MEMORY

  ; Code: je .L_42ac40	 RIP: 42ac11	 Bytes: 6
  %loadMem_42ac11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac11 = call %struct.Memory* @routine_je_.L_42ac40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac11, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_42ac11, %struct.Memory** %MEMORY

  %loadBr_42ac11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ac11 = icmp eq i8 %loadBr_42ac11, 1
  br i1 %cmpBr_42ac11, label %block_.L_42ac40, label %block_42ac17

block_42ac17:
  ; Code: movq $0x57c5d1, %rsi	 RIP: 42ac17	 Bytes: 10
  %loadMem_42ac17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac17 = call %struct.Memory* @routine_movq__0x57c5d1___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac17)
  store %struct.Memory* %call_42ac17, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 42ac21	 Bytes: 8
  %loadMem_42ac21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac21 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac21)
  store %struct.Memory* %call_42ac21, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 42ac29	 Bytes: 4
  %loadMem_42ac29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac29 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac29)
  store %struct.Memory* %call_42ac29, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42ac2d	 Bytes: 2
  %loadMem_42ac2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac2d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac2d)
  store %struct.Memory* %call_42ac2d, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 42ac2f	 Bytes: 5
  %loadMem1_42ac2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42ac2f = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42ac2f, i64 -170847, i64 5, i64 5)
  store %struct.Memory* %call1_42ac2f, %struct.Memory** %MEMORY

  %loadMem2_42ac2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ac2f = load i64, i64* %3
  %call2_42ac2f = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_42ac2f, %struct.Memory* %loadMem2_42ac2f)
  store %struct.Memory* %call2_42ac2f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42ac34	 Bytes: 4
  %loadMem_42ac34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac34 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac34)
  store %struct.Memory* %call_42ac34, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 42ac38	 Bytes: 3
  %loadMem_42ac38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac38 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac38)
  store %struct.Memory* %call_42ac38, %struct.Memory** %MEMORY

  ; Code: callq .print_influence_areas	 RIP: 42ac3b	 Bytes: 5
  %loadMem1_42ac3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42ac3b = call %struct.Memory* @routine_callq_.print_influence_areas(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42ac3b, i64 1061, i64 5, i64 5)
  store %struct.Memory* %call1_42ac3b, %struct.Memory** %MEMORY

  %loadMem2_42ac3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ac3b = load i64, i64* %3
  %call2_42ac3b = call %struct.Memory* @sub_42b060.print_influence_areas(%struct.State* %0, i64  %loadPC_42ac3b, %struct.Memory* %loadMem2_42ac3b)
  store %struct.Memory* %call2_42ac3b, %struct.Memory** %MEMORY

  ; Code: .L_42ac40:	 RIP: 42ac40	 Bytes: 0
  br label %block_.L_42ac40
block_.L_42ac40:

  ; Code: movl 0xab0ee4, %eax	 RIP: 42ac40	 Bytes: 7
  %loadMem_42ac40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac40 = call %struct.Memory* @routine_movl_0xab0ee4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac40)
  store %struct.Memory* %call_42ac40, %struct.Memory** %MEMORY

  ; Code: andl $0x200, %eax	 RIP: 42ac47	 Bytes: 5
  %loadMem_42ac47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac47 = call %struct.Memory* @routine_andl__0x200___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac47)
  store %struct.Memory* %call_42ac47, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42ac4c	 Bytes: 3
  %loadMem_42ac4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac4c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac4c)
  store %struct.Memory* %call_42ac4c, %struct.Memory** %MEMORY

  ; Code: je .L_42aca1	 RIP: 42ac4f	 Bytes: 6
  %loadMem_42ac4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac4f = call %struct.Memory* @routine_je_.L_42aca1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac4f, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_42ac4f, %struct.Memory** %MEMORY

  %loadBr_42ac4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ac4f = icmp eq i8 %loadBr_42ac4f, 1
  br i1 %cmpBr_42ac4f, label %block_.L_42aca1, label %block_42ac55

block_42ac55:
  ; Code: movq $0x57c5ea, %rsi	 RIP: 42ac55	 Bytes: 10
  %loadMem_42ac55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac55 = call %struct.Memory* @routine_movq__0x57c5ea___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac55)
  store %struct.Memory* %call_42ac55, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 42ac5f	 Bytes: 8
  %loadMem_42ac5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac5f = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac5f)
  store %struct.Memory* %call_42ac5f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 42ac67	 Bytes: 4
  %loadMem_42ac67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac67 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac67)
  store %struct.Memory* %call_42ac67, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42ac6b	 Bytes: 2
  %loadMem_42ac6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac6b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac6b)
  store %struct.Memory* %call_42ac6b, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 42ac6d	 Bytes: 5
  %loadMem1_42ac6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42ac6d = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42ac6d, i64 -170909, i64 5, i64 5)
  store %struct.Memory* %call1_42ac6d, %struct.Memory** %MEMORY

  %loadMem2_42ac6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ac6d = load i64, i64* %3
  %call2_42ac6d = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_42ac6d, %struct.Memory* %loadMem2_42ac6d)
  store %struct.Memory* %call2_42ac6d, %struct.Memory** %MEMORY

  ; Code: movq $0x57c5f9, %rdx	 RIP: 42ac72	 Bytes: 10
  %loadMem_42ac72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac72 = call %struct.Memory* @routine_movq__0x57c5f9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac72)
  store %struct.Memory* %call_42ac72, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %ecx	 RIP: 42ac7c	 Bytes: 5
  %loadMem_42ac7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac7c = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac7c)
  store %struct.Memory* %call_42ac7c, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r8d	 RIP: 42ac81	 Bytes: 6
  %loadMem_42ac81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac81 = call %struct.Memory* @routine_movl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac81)
  store %struct.Memory* %call_42ac81, %struct.Memory** %MEMORY

  ; Code: xorl %r9d, %r9d	 RIP: 42ac87	 Bytes: 3
  %loadMem_42ac87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac87 = call %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac87)
  store %struct.Memory* %call_42ac87, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42ac8a	 Bytes: 4
  %loadMem_42ac8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac8a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac8a)
  store %struct.Memory* %call_42ac8a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 42ac8e	 Bytes: 4
  %loadMem_42ac8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac8e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac8e)
  store %struct.Memory* %call_42ac8e, %struct.Memory** %MEMORY

  ; Code: addq $0x7928, %rsi	 RIP: 42ac92	 Bytes: 7
  %loadMem_42ac92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac92 = call %struct.Memory* @routine_addq__0x7928___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac92)
  store %struct.Memory* %call_42ac92, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 42ac99	 Bytes: 3
  %loadMem_42ac99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac99 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac99)
  store %struct.Memory* %call_42ac99, %struct.Memory** %MEMORY

  ; Code: callq .print_numeric_influence	 RIP: 42ac9c	 Bytes: 5
  %loadMem1_42ac9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42ac9c = call %struct.Memory* @routine_callq_.print_numeric_influence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42ac9c, i64 20, i64 5, i64 5)
  store %struct.Memory* %call1_42ac9c, %struct.Memory** %MEMORY

  %loadMem2_42ac9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ac9c = load i64, i64* %3
  %call2_42ac9c = call %struct.Memory* @sub_42acb0.print_numeric_influence(%struct.State* %0, i64  %loadPC_42ac9c, %struct.Memory* %loadMem2_42ac9c)
  store %struct.Memory* %call2_42ac9c, %struct.Memory** %MEMORY

  ; Code: .L_42aca1:	 RIP: 42aca1	 Bytes: 0
  br label %block_.L_42aca1
block_.L_42aca1:

  ; Code: addq $0x50, %rsp	 RIP: 42aca1	 Bytes: 4
  %loadMem_42aca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aca1 = call %struct.Memory* @routine_addq__0x50___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aca1)
  store %struct.Memory* %call_42aca1, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 42aca5	 Bytes: 1
  %loadMem_42aca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aca5 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aca5)
  store %struct.Memory* %call_42aca5, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 42aca6	 Bytes: 1
  %loadMem_42aca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aca6 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aca6)
  store %struct.Memory* %call_42aca6, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_42aca6
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

define %struct.Memory* @routine_subq__0x50___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 80)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
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

define %struct.Memory* @routine_movl_0xab0ee4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xab0ee4_type* @G_0xab0ee4 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_andl__0x100___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 256)
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

define %struct.Memory* @routine_je_.L_42a8f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x57c513___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c513_type* @G__0x57c513 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movq__0x57c52c___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57c52c_type* @G__0x57c52c to i64))
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


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_addq__0x1a90___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 6800)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x14__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.print_numeric_influence(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57c532___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c532_type* @G__0x57c532 to i64))
  ret %struct.Memory* %11
}




















define %struct.Memory* @routine_addq__0x20d0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 8400)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__r8d__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_andl__0x40___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 64)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_42a998(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57c54b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c54b_type* @G__0x57c54b to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movq__0x587634___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x587634_type* @G__0x587634 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_addq__0x2710___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 10000)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__r8d__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__0x57c560___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c560_type* @G__0x57c560 to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_addq__0x2d50___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 11600)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_andl__0x80___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 128)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_42aac8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57c575___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c575_type* @G__0x57c575 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_cmpl__0x0__0x7924__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 31012
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_42aa0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57c586___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57c586_type* @G__0x57c586 to i64))
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_addq__0xe10___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 3600)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_42aa38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57c58c___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57c58c_type* @G__0x57c58c to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__0x1___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0xe10___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 3600)
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




define %struct.Memory* @routine_movq__0x57c592___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c592_type* @G__0x57c592 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_42aa95(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_addq__0x1450___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 5200)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jmpq_.L_42aac3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














define %struct.Memory* @routine_addq__0x1450___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 5200)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jmpq_.L_42aac8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_andl__0x20___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 32)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_42ac04(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57c5a3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c5a3_type* @G__0x57c5a3 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__0x7924__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 31012
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_42ab3f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addq__0x190___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 400)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jmpq_.L_42ab6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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






define %struct.Memory* @routine_addq__0x190___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 400)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movq__0x57c5ba___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c5ba_type* @G__0x57c5ba to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_42abd1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_addq__0x7d0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2000)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jmpq_.L_42abff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_addq__0x7d0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 2000)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jmpq_.L_42ac04(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_andl__0x10___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 16)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_42ac40(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57c5d1___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c5d1_type* @G__0x57c5d1 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.print_influence_areas(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_andl__0x200___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 512)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_42aca1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57c5ea___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c5ea_type* @G__0x57c5ea to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movq__0x57c5f9___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57c5f9_type* @G__0x57c5f9 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_addq__0x7928___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 31016)
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




define %struct.Memory* @routine_addq__0x50___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 80)
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

