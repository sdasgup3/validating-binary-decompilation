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
%G_0xaf2774_type = type <{ [1 x i8] }>
@G_0xaf2774= global %G_0xaf2774_type <{ [1 x i8] c"\00" }>
%G_0xaf2788_type = type <{ [1 x i8] }>
@G_0xaf2788= global %G_0xaf2788_type <{ [1 x i8] c"\00" }>
%G_0xaf279c_type = type <{ [1 x i8] }>
@G_0xaf279c= global %G_0xaf279c_type <{ [1 x i8] c"\00" }>
%G_0xaf28cc_type = type <{ [4 x i8] }>
@G_0xaf28cc= global %G_0xaf28cc_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0xaf2760_type = type <{ [8 x i8] }>
@G__0xaf2760= global %G__0xaf2760_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @set_handicap_spots(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .set_handicap_spots:	 RIP: 492410	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 492410	 Bytes: 1
  %loadMem_492410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492410 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492410)
  store %struct.Memory* %call_492410, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 492411	 Bytes: 3
  %loadMem_492411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492411 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492411)
  store %struct.Memory* %call_492411, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 492414	 Bytes: 4
  %loadMem_492414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492414 = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492414)
  store %struct.Memory* %call_492414, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 492418	 Bytes: 3
  %loadMem_492418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492418 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492418)
  store %struct.Memory* %call_492418, %struct.Memory** %MEMORY

  ; Code: movl 0xaf28cc, %edi	 RIP: 49241b	 Bytes: 7
  %loadMem_49241b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49241b = call %struct.Memory* @routine_movl_0xaf28cc___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49241b)
  store %struct.Memory* %call_49241b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %edi	 RIP: 492422	 Bytes: 3
  %loadMem_492422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492422 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492422)
  store %struct.Memory* %call_492422, %struct.Memory** %MEMORY

  ; Code: jne .L_492430	 RIP: 492425	 Bytes: 6
  %loadMem_492425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492425 = call %struct.Memory* @routine_jne_.L_492430(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492425, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_492425, %struct.Memory** %MEMORY

  %loadBr_492425 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_492425 = icmp eq i8 %loadBr_492425, 1
  br i1 %cmpBr_492425, label %block_.L_492430, label %block_49242b

block_49242b:
  ; Code: jmpq .L_492770	 RIP: 49242b	 Bytes: 5
  %loadMem_49242b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49242b = call %struct.Memory* @routine_jmpq_.L_492770(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49242b, i64 837, i64 5)
  store %struct.Memory* %call_49242b, %struct.Memory** %MEMORY

  br label %block_.L_492770

  ; Code: .L_492430:	 RIP: 492430	 Bytes: 0
block_.L_492430:

  ; Code: movq $0xaf2760, %rdi	 RIP: 492430	 Bytes: 10
  %loadMem_492430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492430 = call %struct.Memory* @routine_movq__0xaf2760___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492430)
  store %struct.Memory* %call_492430, %struct.Memory** %MEMORY

  ; Code: movl $0x2e, %esi	 RIP: 49243a	 Bytes: 5
  %loadMem_49243a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49243a = call %struct.Memory* @routine_movl__0x2e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49243a)
  store %struct.Memory* %call_49243a, %struct.Memory** %MEMORY

  ; Code: movl $0x169, %eax	 RIP: 49243f	 Bytes: 5
  %loadMem_49243f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49243f = call %struct.Memory* @routine_movl__0x169___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49243f)
  store %struct.Memory* %call_49243f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 492444	 Bytes: 2
  %loadMem_492444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492444 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492444)
  store %struct.Memory* %call_492444, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 492446	 Bytes: 3
  %loadMem_492446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492446 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492446)
  store %struct.Memory* %call_492446, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xaf28cc	 RIP: 492449	 Bytes: 7
  %loadMem_492449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492449 = call %struct.Memory* @routine_movl__eax__0xaf28cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492449)
  store %struct.Memory* %call_492449, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 492450	 Bytes: 5
  %loadMem1_492450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_492450 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_492450, i64 -594912, i64 5, i64 5)
  store %struct.Memory* %call1_492450, %struct.Memory** %MEMORY

  %loadMem2_492450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_492450 = load i64, i64* %3
  %call2_492450 = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_492450, %struct.Memory* %loadMem2_492450)
  store %struct.Memory* %call2_492450, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, -0x4(%rbp)	 RIP: 492455	 Bytes: 4
  %loadMem_492455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492455 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492455)
  store %struct.Memory* %call_492455, %struct.Memory** %MEMORY

  ; Code: jne .L_4924eb	 RIP: 492459	 Bytes: 6
  %loadMem_492459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492459 = call %struct.Memory* @routine_jne_.L_4924eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492459, i8* %BRANCH_TAKEN, i64 146, i64 6, i64 6)
  store %struct.Memory* %call_492459, %struct.Memory** %MEMORY

  %loadBr_492459 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_492459 = icmp eq i8 %loadBr_492459, 1
  br i1 %cmpBr_492459, label %block_.L_4924eb, label %block_49245f

block_49245f:
  ; Code: movl $0x2, %eax	 RIP: 49245f	 Bytes: 5
  %loadMem_49245f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49245f = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49245f)
  store %struct.Memory* %call_49245f, %struct.Memory** %MEMORY

  ; Code: movq $0xaf2760, %rcx	 RIP: 492464	 Bytes: 10
  %loadMem_492464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492464 = call %struct.Memory* @routine_movq__0xaf2760___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492464)
  store %struct.Memory* %call_492464, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0xaf2774	 RIP: 49246e	 Bytes: 8
  %loadMem_49246e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49246e = call %struct.Memory* @routine_movb__0x2b__0xaf2774(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49246e)
  store %struct.Memory* %call_49246e, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 492476	 Bytes: 3
  %loadMem_492476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492476 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492476)
  store %struct.Memory* %call_492476, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %edx	 RIP: 492479	 Bytes: 3
  %loadMem_492479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492479 = call %struct.Memory* @routine_subl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492479)
  store %struct.Memory* %call_492479, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 49247c	 Bytes: 3
  %loadMem_49247c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49247c = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49247c)
  store %struct.Memory* %call_49247c, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rsi, %rsi	 RIP: 49247f	 Bytes: 4
  %loadMem_49247f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49247f = call %struct.Memory* @routine_imulq__0x13___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49247f)
  store %struct.Memory* %call_49247f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 492483	 Bytes: 3
  %loadMem_492483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492483 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492483)
  store %struct.Memory* %call_492483, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 492486	 Bytes: 3
  %loadMem_492486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492486 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492486)
  store %struct.Memory* %call_492486, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0x1(%rdi)	 RIP: 492489	 Bytes: 4
  %loadMem_492489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492489 = call %struct.Memory* @routine_movb__0x2b__0x1__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492489)
  store %struct.Memory* %call_492489, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 49248d	 Bytes: 3
  %loadMem_49248d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49248d = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49248d)
  store %struct.Memory* %call_49248d, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %edx	 RIP: 492490	 Bytes: 3
  %loadMem_492490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492490 = call %struct.Memory* @routine_subl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492490)
  store %struct.Memory* %call_492490, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 492493	 Bytes: 3
  %loadMem_492493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492493 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492493)
  store %struct.Memory* %call_492493, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0xaf2773(,%rsi,1)	 RIP: 492496	 Bytes: 8
  %loadMem_492496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492496 = call %struct.Memory* @routine_movb__0x2b__0xaf2773___rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492496)
  store %struct.Memory* %call_492496, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 49249e	 Bytes: 3
  %loadMem_49249e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49249e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49249e)
  store %struct.Memory* %call_49249e, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %edx	 RIP: 4924a1	 Bytes: 3
  %loadMem_4924a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924a1 = call %struct.Memory* @routine_subl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924a1)
  store %struct.Memory* %call_4924a1, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 4924a4	 Bytes: 3
  %loadMem_4924a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924a4 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924a4)
  store %struct.Memory* %call_4924a4, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rsi, %rsi	 RIP: 4924a7	 Bytes: 4
  %loadMem_4924a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924a7 = call %struct.Memory* @routine_imulq__0x13___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924a7)
  store %struct.Memory* %call_4924a7, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4924ab	 Bytes: 3
  %loadMem_4924ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924ab = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924ab)
  store %struct.Memory* %call_4924ab, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 4924ae	 Bytes: 3
  %loadMem_4924ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924ae = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924ae)
  store %struct.Memory* %call_4924ae, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 4924b1	 Bytes: 3
  %loadMem_4924b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924b1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924b1)
  store %struct.Memory* %call_4924b1, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %edx	 RIP: 4924b4	 Bytes: 3
  %loadMem_4924b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924b4 = call %struct.Memory* @routine_subl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924b4)
  store %struct.Memory* %call_4924b4, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 4924b7	 Bytes: 3
  %loadMem_4924b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924b7 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924b7)
  store %struct.Memory* %call_4924b7, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, (%rdi,%rsi,1)	 RIP: 4924ba	 Bytes: 4
  %loadMem_4924ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924ba = call %struct.Memory* @routine_movb__0x2b____rdi__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924ba)
  store %struct.Memory* %call_4924ba, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 4924be	 Bytes: 3
  %loadMem_4924be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924be = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924be)
  store %struct.Memory* %call_4924be, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4924c1	 Bytes: 3
  %loadMem_4924c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924c1 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924c1)
  store %struct.Memory* %call_4924c1, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 4924c4	 Bytes: 2
  %loadMem_4924c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924c4 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924c4)
  store %struct.Memory* %call_4924c4, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4924c6	 Bytes: 1
  %loadMem_4924c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924c6 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924c6)
  store %struct.Memory* %call_4924c6, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %r8d	 RIP: 4924c7	 Bytes: 4
  %loadMem_4924c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924c7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924c7)
  store %struct.Memory* %call_4924c7, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 4924cb	 Bytes: 3
  %loadMem_4924cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924cb = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924cb)
  store %struct.Memory* %call_4924cb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 4924ce	 Bytes: 3
  %loadMem_4924ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924ce = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924ce)
  store %struct.Memory* %call_4924ce, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rsi, %rsi	 RIP: 4924d1	 Bytes: 4
  %loadMem_4924d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924d1 = call %struct.Memory* @routine_imulq__0x13___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924d1)
  store %struct.Memory* %call_4924d1, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4924d5	 Bytes: 3
  %loadMem_4924d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924d5 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924d5)
  store %struct.Memory* %call_4924d5, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4924d8	 Bytes: 3
  %loadMem_4924d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924d8 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924d8)
  store %struct.Memory* %call_4924d8, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4924db	 Bytes: 1
  %loadMem_4924db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924db = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924db)
  store %struct.Memory* %call_4924db, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 4924dc	 Bytes: 3
  %loadMem_4924dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924dc = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924dc)
  store %struct.Memory* %call_4924dc, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 4924df	 Bytes: 3
  %loadMem_4924df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924df = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924df)
  store %struct.Memory* %call_4924df, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, (%rcx,%rsi,1)	 RIP: 4924e2	 Bytes: 4
  %loadMem_4924e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924e2 = call %struct.Memory* @routine_movb__0x2b____rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924e2)
  store %struct.Memory* %call_4924e2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_492770	 RIP: 4924e6	 Bytes: 5
  %loadMem_4924e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924e6 = call %struct.Memory* @routine_jmpq_.L_492770(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924e6, i64 650, i64 5)
  store %struct.Memory* %call_4924e6, %struct.Memory** %MEMORY

  br label %block_.L_492770

  ; Code: .L_4924eb:	 RIP: 4924eb	 Bytes: 0
block_.L_4924eb:

  ; Code: movl $0x2, %eax	 RIP: 4924eb	 Bytes: 5
  %loadMem_4924eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924eb = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924eb)
  store %struct.Memory* %call_4924eb, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 4924f0	 Bytes: 3
  %loadMem_4924f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924f0 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924f0)
  store %struct.Memory* %call_4924f0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4924f3	 Bytes: 3
  %loadMem_4924f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924f3 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924f3)
  store %struct.Memory* %call_4924f3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 4924f6	 Bytes: 2
  %loadMem_4924f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924f6 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924f6)
  store %struct.Memory* %call_4924f6, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4924f8	 Bytes: 1
  %loadMem_4924f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924f8 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924f8)
  store %struct.Memory* %call_4924f8, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 4924f9	 Bytes: 3
  %loadMem_4924f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924f9 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924f9)
  store %struct.Memory* %call_4924f9, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4924fc	 Bytes: 2
  %loadMem_4924fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924fc = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924fc)
  store %struct.Memory* %call_4924fc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 4924fe	 Bytes: 3
  %loadMem_4924fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4924fe = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4924fe)
  store %struct.Memory* %call_4924fe, %struct.Memory** %MEMORY

  ; Code: jne .L_4925d3	 RIP: 492501	 Bytes: 6
  %loadMem_492501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492501 = call %struct.Memory* @routine_jne_.L_4925d3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492501, i8* %BRANCH_TAKEN, i64 210, i64 6, i64 6)
  store %struct.Memory* %call_492501, %struct.Memory** %MEMORY

  %loadBr_492501 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_492501 = icmp eq i8 %loadBr_492501, 1
  br i1 %cmpBr_492501, label %block_.L_4925d3, label %block_492507

block_492507:
  ; Code: cmpl $0x2, -0x4(%rbp)	 RIP: 492507	 Bytes: 4
  %loadMem_492507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492507 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492507)
  store %struct.Memory* %call_492507, %struct.Memory** %MEMORY

  ; Code: jle .L_492577	 RIP: 49250b	 Bytes: 6
  %loadMem_49250b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49250b = call %struct.Memory* @routine_jle_.L_492577(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49250b, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_49250b, %struct.Memory** %MEMORY

  %loadBr_49250b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49250b = icmp eq i8 %loadBr_49250b, 1
  br i1 %cmpBr_49250b, label %block_.L_492577, label %block_492511

block_492511:
  ; Code: cmpl $0xc, -0x4(%rbp)	 RIP: 492511	 Bytes: 4
  %loadMem_492511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492511 = call %struct.Memory* @routine_cmpl__0xc__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492511)
  store %struct.Memory* %call_492511, %struct.Memory** %MEMORY

  ; Code: jge .L_492577	 RIP: 492515	 Bytes: 6
  %loadMem_492515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492515 = call %struct.Memory* @routine_jge_.L_492577(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492515, i8* %BRANCH_TAKEN, i64 98, i64 6, i64 6)
  store %struct.Memory* %call_492515, %struct.Memory** %MEMORY

  %loadBr_492515 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_492515 = icmp eq i8 %loadBr_492515, 1
  br i1 %cmpBr_492515, label %block_.L_492577, label %block_49251b

block_49251b:
  ; Code: movq $0xaf2760, %rax	 RIP: 49251b	 Bytes: 10
  %loadMem_49251b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49251b = call %struct.Memory* @routine_movq__0xaf2760___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49251b)
  store %struct.Memory* %call_49251b, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0xaf2788	 RIP: 492525	 Bytes: 8
  %loadMem_492525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492525 = call %struct.Memory* @routine_movb__0x2b__0xaf2788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492525)
  store %struct.Memory* %call_492525, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 49252d	 Bytes: 3
  %loadMem_49252d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49252d = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49252d)
  store %struct.Memory* %call_49252d, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %ecx	 RIP: 492530	 Bytes: 3
  %loadMem_492530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492530 = call %struct.Memory* @routine_subl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492530)
  store %struct.Memory* %call_492530, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 492533	 Bytes: 3
  %loadMem_492533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492533 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492533)
  store %struct.Memory* %call_492533, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rdx, %rdx	 RIP: 492536	 Bytes: 4
  %loadMem_492536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492536 = call %struct.Memory* @routine_imulq__0x13___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492536)
  store %struct.Memory* %call_492536, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 49253a	 Bytes: 3
  %loadMem_49253a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49253a = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49253a)
  store %struct.Memory* %call_49253a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 49253d	 Bytes: 3
  %loadMem_49253d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49253d = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49253d)
  store %struct.Memory* %call_49253d, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0x2(%rsi)	 RIP: 492540	 Bytes: 4
  %loadMem_492540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492540 = call %struct.Memory* @routine_movb__0x2b__0x2__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492540)
  store %struct.Memory* %call_492540, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 492544	 Bytes: 3
  %loadMem_492544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492544 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492544)
  store %struct.Memory* %call_492544, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %ecx	 RIP: 492547	 Bytes: 3
  %loadMem_492547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492547 = call %struct.Memory* @routine_subl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492547)
  store %struct.Memory* %call_492547, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 49254a	 Bytes: 3
  %loadMem_49254a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49254a = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49254a)
  store %struct.Memory* %call_49254a, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0xaf2786(,%rdx,1)	 RIP: 49254d	 Bytes: 8
  %loadMem_49254d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49254d = call %struct.Memory* @routine_movb__0x2b__0xaf2786___rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49254d)
  store %struct.Memory* %call_49254d, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 492555	 Bytes: 3
  %loadMem_492555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492555 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492555)
  store %struct.Memory* %call_492555, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %ecx	 RIP: 492558	 Bytes: 3
  %loadMem_492558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492558 = call %struct.Memory* @routine_subl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492558)
  store %struct.Memory* %call_492558, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 49255b	 Bytes: 3
  %loadMem_49255b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49255b = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49255b)
  store %struct.Memory* %call_49255b, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rdx, %rdx	 RIP: 49255e	 Bytes: 4
  %loadMem_49255e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49255e = call %struct.Memory* @routine_imulq__0x13___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49255e)
  store %struct.Memory* %call_49255e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 492562	 Bytes: 3
  %loadMem_492562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492562 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492562)
  store %struct.Memory* %call_492562, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 492565	 Bytes: 3
  %loadMem_492565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492565 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492565)
  store %struct.Memory* %call_492565, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %ecx	 RIP: 492568	 Bytes: 3
  %loadMem_492568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492568 = call %struct.Memory* @routine_subl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492568)
  store %struct.Memory* %call_492568, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 49256b	 Bytes: 3
  %loadMem_49256b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49256b = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49256b)
  store %struct.Memory* %call_49256b, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, (%rax,%rdx,1)	 RIP: 49256e	 Bytes: 4
  %loadMem_49256e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49256e = call %struct.Memory* @routine_movb__0x2b____rax__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49256e)
  store %struct.Memory* %call_49256e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4925ce	 RIP: 492572	 Bytes: 5
  %loadMem_492572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492572 = call %struct.Memory* @routine_jmpq_.L_4925ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492572, i64 92, i64 5)
  store %struct.Memory* %call_492572, %struct.Memory** %MEMORY

  br label %block_.L_4925ce

  ; Code: .L_492577:	 RIP: 492577	 Bytes: 0
block_.L_492577:

  ; Code: movq $0xaf2760, %rax	 RIP: 492577	 Bytes: 10
  %loadMem_492577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492577 = call %struct.Memory* @routine_movq__0xaf2760___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492577)
  store %struct.Memory* %call_492577, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0xaf279c	 RIP: 492581	 Bytes: 8
  %loadMem_492581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492581 = call %struct.Memory* @routine_movb__0x2b__0xaf279c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492581)
  store %struct.Memory* %call_492581, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 492589	 Bytes: 3
  %loadMem_492589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492589 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492589)
  store %struct.Memory* %call_492589, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %ecx	 RIP: 49258c	 Bytes: 3
  %loadMem_49258c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49258c = call %struct.Memory* @routine_subl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49258c)
  store %struct.Memory* %call_49258c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 49258f	 Bytes: 3
  %loadMem_49258f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49258f = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49258f)
  store %struct.Memory* %call_49258f, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rdx, %rdx	 RIP: 492592	 Bytes: 4
  %loadMem_492592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492592 = call %struct.Memory* @routine_imulq__0x13___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492592)
  store %struct.Memory* %call_492592, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 492596	 Bytes: 3
  %loadMem_492596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492596 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492596)
  store %struct.Memory* %call_492596, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 492599	 Bytes: 3
  %loadMem_492599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492599 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492599)
  store %struct.Memory* %call_492599, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0x3(%rsi)	 RIP: 49259c	 Bytes: 4
  %loadMem_49259c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49259c = call %struct.Memory* @routine_movb__0x2b__0x3__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49259c)
  store %struct.Memory* %call_49259c, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 4925a0	 Bytes: 3
  %loadMem_4925a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925a0 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925a0)
  store %struct.Memory* %call_4925a0, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %ecx	 RIP: 4925a3	 Bytes: 3
  %loadMem_4925a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925a3 = call %struct.Memory* @routine_subl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925a3)
  store %struct.Memory* %call_4925a3, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4925a6	 Bytes: 3
  %loadMem_4925a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925a6 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925a6)
  store %struct.Memory* %call_4925a6, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0xaf2799(,%rdx,1)	 RIP: 4925a9	 Bytes: 8
  %loadMem_4925a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925a9 = call %struct.Memory* @routine_movb__0x2b__0xaf2799___rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925a9)
  store %struct.Memory* %call_4925a9, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 4925b1	 Bytes: 3
  %loadMem_4925b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925b1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925b1)
  store %struct.Memory* %call_4925b1, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %ecx	 RIP: 4925b4	 Bytes: 3
  %loadMem_4925b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925b4 = call %struct.Memory* @routine_subl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925b4)
  store %struct.Memory* %call_4925b4, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4925b7	 Bytes: 3
  %loadMem_4925b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925b7 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925b7)
  store %struct.Memory* %call_4925b7, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rdx, %rdx	 RIP: 4925ba	 Bytes: 4
  %loadMem_4925ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925ba = call %struct.Memory* @routine_imulq__0x13___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925ba)
  store %struct.Memory* %call_4925ba, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4925be	 Bytes: 3
  %loadMem_4925be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925be = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925be)
  store %struct.Memory* %call_4925be, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 4925c1	 Bytes: 3
  %loadMem_4925c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925c1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925c1)
  store %struct.Memory* %call_4925c1, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %ecx	 RIP: 4925c4	 Bytes: 3
  %loadMem_4925c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925c4 = call %struct.Memory* @routine_subl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925c4)
  store %struct.Memory* %call_4925c4, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4925c7	 Bytes: 3
  %loadMem_4925c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925c7 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925c7)
  store %struct.Memory* %call_4925c7, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, (%rax,%rdx,1)	 RIP: 4925ca	 Bytes: 4
  %loadMem_4925ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925ca = call %struct.Memory* @routine_movb__0x2b____rax__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925ca)
  store %struct.Memory* %call_4925ca, %struct.Memory** %MEMORY

  ; Code: .L_4925ce:	 RIP: 4925ce	 Bytes: 0
  br label %block_.L_4925ce
block_.L_4925ce:

  ; Code: jmpq .L_49276b	 RIP: 4925ce	 Bytes: 5
  %loadMem_4925ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925ce = call %struct.Memory* @routine_jmpq_.L_49276b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925ce, i64 413, i64 5)
  store %struct.Memory* %call_4925ce, %struct.Memory** %MEMORY

  br label %block_.L_49276b

  ; Code: .L_4925d3:	 RIP: 4925d3	 Bytes: 0
block_.L_4925d3:

  ; Code: cmpl $0x2, -0x4(%rbp)	 RIP: 4925d3	 Bytes: 4
  %loadMem_4925d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925d3 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925d3)
  store %struct.Memory* %call_4925d3, %struct.Memory** %MEMORY

  ; Code: jle .L_492673	 RIP: 4925d7	 Bytes: 6
  %loadMem_4925d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925d7 = call %struct.Memory* @routine_jle_.L_492673(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925d7, i8* %BRANCH_TAKEN, i64 156, i64 6, i64 6)
  store %struct.Memory* %call_4925d7, %struct.Memory** %MEMORY

  %loadBr_4925d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4925d7 = icmp eq i8 %loadBr_4925d7, 1
  br i1 %cmpBr_4925d7, label %block_.L_492673, label %block_4925dd

block_4925dd:
  ; Code: cmpl $0xc, -0x4(%rbp)	 RIP: 4925dd	 Bytes: 4
  %loadMem_4925dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925dd = call %struct.Memory* @routine_cmpl__0xc__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925dd)
  store %struct.Memory* %call_4925dd, %struct.Memory** %MEMORY

  ; Code: jge .L_492673	 RIP: 4925e1	 Bytes: 6
  %loadMem_4925e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925e1 = call %struct.Memory* @routine_jge_.L_492673(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925e1, i8* %BRANCH_TAKEN, i64 146, i64 6, i64 6)
  store %struct.Memory* %call_4925e1, %struct.Memory** %MEMORY

  %loadBr_4925e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4925e1 = icmp eq i8 %loadBr_4925e1, 1
  br i1 %cmpBr_4925e1, label %block_.L_492673, label %block_4925e7

block_4925e7:
  ; Code: movl $0x2, %eax	 RIP: 4925e7	 Bytes: 5
  %loadMem_4925e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925e7 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925e7)
  store %struct.Memory* %call_4925e7, %struct.Memory** %MEMORY

  ; Code: movq $0xaf2760, %rcx	 RIP: 4925ec	 Bytes: 10
  %loadMem_4925ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925ec = call %struct.Memory* @routine_movq__0xaf2760___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925ec)
  store %struct.Memory* %call_4925ec, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0xaf2788	 RIP: 4925f6	 Bytes: 8
  %loadMem_4925f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925f6 = call %struct.Memory* @routine_movb__0x2b__0xaf2788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925f6)
  store %struct.Memory* %call_4925f6, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 4925fe	 Bytes: 3
  %loadMem_4925fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4925fe = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4925fe)
  store %struct.Memory* %call_4925fe, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %edx	 RIP: 492601	 Bytes: 3
  %loadMem_492601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492601 = call %struct.Memory* @routine_subl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492601)
  store %struct.Memory* %call_492601, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 492604	 Bytes: 3
  %loadMem_492604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492604 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492604)
  store %struct.Memory* %call_492604, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rsi, %rsi	 RIP: 492607	 Bytes: 4
  %loadMem_492607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492607 = call %struct.Memory* @routine_imulq__0x13___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492607)
  store %struct.Memory* %call_492607, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 49260b	 Bytes: 3
  %loadMem_49260b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49260b = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49260b)
  store %struct.Memory* %call_49260b, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 49260e	 Bytes: 3
  %loadMem_49260e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49260e = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49260e)
  store %struct.Memory* %call_49260e, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0x2(%rdi)	 RIP: 492611	 Bytes: 4
  %loadMem_492611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492611 = call %struct.Memory* @routine_movb__0x2b__0x2__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492611)
  store %struct.Memory* %call_492611, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 492615	 Bytes: 3
  %loadMem_492615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492615 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492615)
  store %struct.Memory* %call_492615, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %edx	 RIP: 492618	 Bytes: 3
  %loadMem_492618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492618 = call %struct.Memory* @routine_subl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492618)
  store %struct.Memory* %call_492618, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 49261b	 Bytes: 3
  %loadMem_49261b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49261b = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49261b)
  store %struct.Memory* %call_49261b, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0xaf2786(,%rsi,1)	 RIP: 49261e	 Bytes: 8
  %loadMem_49261e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49261e = call %struct.Memory* @routine_movb__0x2b__0xaf2786___rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49261e)
  store %struct.Memory* %call_49261e, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 492626	 Bytes: 3
  %loadMem_492626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492626 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492626)
  store %struct.Memory* %call_492626, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %edx	 RIP: 492629	 Bytes: 3
  %loadMem_492629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492629 = call %struct.Memory* @routine_subl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492629)
  store %struct.Memory* %call_492629, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 49262c	 Bytes: 3
  %loadMem_49262c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49262c = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49262c)
  store %struct.Memory* %call_49262c, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rsi, %rsi	 RIP: 49262f	 Bytes: 4
  %loadMem_49262f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49262f = call %struct.Memory* @routine_imulq__0x13___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49262f)
  store %struct.Memory* %call_49262f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 492633	 Bytes: 3
  %loadMem_492633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492633 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492633)
  store %struct.Memory* %call_492633, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 492636	 Bytes: 3
  %loadMem_492636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492636 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492636)
  store %struct.Memory* %call_492636, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 492639	 Bytes: 3
  %loadMem_492639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492639 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492639)
  store %struct.Memory* %call_492639, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %edx	 RIP: 49263c	 Bytes: 3
  %loadMem_49263c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49263c = call %struct.Memory* @routine_subl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49263c)
  store %struct.Memory* %call_49263c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 49263f	 Bytes: 3
  %loadMem_49263f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49263f = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49263f)
  store %struct.Memory* %call_49263f, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, (%rdi,%rsi,1)	 RIP: 492642	 Bytes: 4
  %loadMem_492642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492642 = call %struct.Memory* @routine_movb__0x2b____rdi__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492642)
  store %struct.Memory* %call_492642, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 492646	 Bytes: 3
  %loadMem_492646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492646 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492646)
  store %struct.Memory* %call_492646, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 492649	 Bytes: 3
  %loadMem_492649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492649 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492649)
  store %struct.Memory* %call_492649, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 49264c	 Bytes: 2
  %loadMem_49264c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49264c = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49264c)
  store %struct.Memory* %call_49264c, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 49264e	 Bytes: 1
  %loadMem_49264e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49264e = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49264e)
  store %struct.Memory* %call_49264e, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %r8d	 RIP: 49264f	 Bytes: 4
  %loadMem_49264f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49264f = call %struct.Memory* @routine_movl_MINUS0x10__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49264f)
  store %struct.Memory* %call_49264f, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 492653	 Bytes: 3
  %loadMem_492653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492653 = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492653)
  store %struct.Memory* %call_492653, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 492656	 Bytes: 3
  %loadMem_492656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492656 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492656)
  store %struct.Memory* %call_492656, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rsi, %rsi	 RIP: 492659	 Bytes: 4
  %loadMem_492659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492659 = call %struct.Memory* @routine_imulq__0x13___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492659)
  store %struct.Memory* %call_492659, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 49265d	 Bytes: 3
  %loadMem_49265d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49265d = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49265d)
  store %struct.Memory* %call_49265d, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 492660	 Bytes: 3
  %loadMem_492660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492660 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492660)
  store %struct.Memory* %call_492660, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 492663	 Bytes: 1
  %loadMem_492663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492663 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492663)
  store %struct.Memory* %call_492663, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 492664	 Bytes: 3
  %loadMem_492664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492664 = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492664)
  store %struct.Memory* %call_492664, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 492667	 Bytes: 3
  %loadMem_492667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492667 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492667)
  store %struct.Memory* %call_492667, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, (%rcx,%rsi,1)	 RIP: 49266a	 Bytes: 4
  %loadMem_49266a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49266a = call %struct.Memory* @routine_movb__0x2b____rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49266a)
  store %struct.Memory* %call_49266a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_492766	 RIP: 49266e	 Bytes: 5
  %loadMem_49266e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49266e = call %struct.Memory* @routine_jmpq_.L_492766(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49266e, i64 248, i64 5)
  store %struct.Memory* %call_49266e, %struct.Memory** %MEMORY

  br label %block_.L_492766

  ; Code: .L_492673:	 RIP: 492673	 Bytes: 0
block_.L_492673:

  ; Code: movl $0x2, %eax	 RIP: 492673	 Bytes: 5
  %loadMem_492673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492673 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492673)
  store %struct.Memory* %call_492673, %struct.Memory** %MEMORY

  ; Code: movq $0xaf2760, %rcx	 RIP: 492678	 Bytes: 10
  %loadMem_492678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492678 = call %struct.Memory* @routine_movq__0xaf2760___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492678)
  store %struct.Memory* %call_492678, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0xaf279c	 RIP: 492682	 Bytes: 8
  %loadMem_492682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492682 = call %struct.Memory* @routine_movb__0x2b__0xaf279c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492682)
  store %struct.Memory* %call_492682, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 49268a	 Bytes: 3
  %loadMem_49268a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49268a = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49268a)
  store %struct.Memory* %call_49268a, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %edx	 RIP: 49268d	 Bytes: 3
  %loadMem_49268d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49268d = call %struct.Memory* @routine_subl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49268d)
  store %struct.Memory* %call_49268d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 492690	 Bytes: 3
  %loadMem_492690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492690 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492690)
  store %struct.Memory* %call_492690, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rsi, %rsi	 RIP: 492693	 Bytes: 4
  %loadMem_492693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492693 = call %struct.Memory* @routine_imulq__0x13___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492693)
  store %struct.Memory* %call_492693, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 492697	 Bytes: 3
  %loadMem_492697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492697 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492697)
  store %struct.Memory* %call_492697, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 49269a	 Bytes: 3
  %loadMem_49269a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49269a = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49269a)
  store %struct.Memory* %call_49269a, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0x3(%rdi)	 RIP: 49269d	 Bytes: 4
  %loadMem_49269d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49269d = call %struct.Memory* @routine_movb__0x2b__0x3__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49269d)
  store %struct.Memory* %call_49269d, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 4926a1	 Bytes: 3
  %loadMem_4926a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926a1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926a1)
  store %struct.Memory* %call_4926a1, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %edx	 RIP: 4926a4	 Bytes: 3
  %loadMem_4926a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926a4 = call %struct.Memory* @routine_subl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926a4)
  store %struct.Memory* %call_4926a4, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 4926a7	 Bytes: 3
  %loadMem_4926a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926a7 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926a7)
  store %struct.Memory* %call_4926a7, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0xaf2799(,%rsi,1)	 RIP: 4926aa	 Bytes: 8
  %loadMem_4926aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926aa = call %struct.Memory* @routine_movb__0x2b__0xaf2799___rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926aa)
  store %struct.Memory* %call_4926aa, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 4926b2	 Bytes: 3
  %loadMem_4926b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926b2 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926b2)
  store %struct.Memory* %call_4926b2, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %edx	 RIP: 4926b5	 Bytes: 3
  %loadMem_4926b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926b5 = call %struct.Memory* @routine_subl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926b5)
  store %struct.Memory* %call_4926b5, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 4926b8	 Bytes: 3
  %loadMem_4926b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926b8 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926b8)
  store %struct.Memory* %call_4926b8, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rsi, %rsi	 RIP: 4926bb	 Bytes: 4
  %loadMem_4926bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926bb = call %struct.Memory* @routine_imulq__0x13___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926bb)
  store %struct.Memory* %call_4926bb, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4926bf	 Bytes: 3
  %loadMem_4926bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926bf = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926bf)
  store %struct.Memory* %call_4926bf, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 4926c2	 Bytes: 3
  %loadMem_4926c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926c2 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926c2)
  store %struct.Memory* %call_4926c2, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 4926c5	 Bytes: 3
  %loadMem_4926c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926c5 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926c5)
  store %struct.Memory* %call_4926c5, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %edx	 RIP: 4926c8	 Bytes: 3
  %loadMem_4926c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926c8 = call %struct.Memory* @routine_subl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926c8)
  store %struct.Memory* %call_4926c8, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 4926cb	 Bytes: 3
  %loadMem_4926cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926cb = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926cb)
  store %struct.Memory* %call_4926cb, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, (%rdi,%rsi,1)	 RIP: 4926ce	 Bytes: 4
  %loadMem_4926ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926ce = call %struct.Memory* @routine_movb__0x2b____rdi__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926ce)
  store %struct.Memory* %call_4926ce, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 4926d2	 Bytes: 3
  %loadMem_4926d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926d2 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926d2)
  store %struct.Memory* %call_4926d2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 4926d5	 Bytes: 3
  %loadMem_4926d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926d5 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926d5)
  store %struct.Memory* %call_4926d5, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 4926d8	 Bytes: 2
  %loadMem_4926d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926d8 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926d8)
  store %struct.Memory* %call_4926d8, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4926da	 Bytes: 1
  %loadMem_4926da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926da = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926da)
  store %struct.Memory* %call_4926da, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 4926db	 Bytes: 4
  %loadMem_4926db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926db = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926db)
  store %struct.Memory* %call_4926db, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 4926df	 Bytes: 3
  %loadMem_4926df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926df = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926df)
  store %struct.Memory* %call_4926df, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 4926e2	 Bytes: 3
  %loadMem_4926e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926e2 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926e2)
  store %struct.Memory* %call_4926e2, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0xaf2799(,%rsi,1)	 RIP: 4926e5	 Bytes: 8
  %loadMem_4926e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926e5 = call %struct.Memory* @routine_movb__0x2b__0xaf2799___rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926e5)
  store %struct.Memory* %call_4926e5, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4926ed	 Bytes: 3
  %loadMem_4926ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926ed = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926ed)
  store %struct.Memory* %call_4926ed, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4926f0	 Bytes: 1
  %loadMem_4926f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926f0 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926f0)
  store %struct.Memory* %call_4926f0, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 4926f1	 Bytes: 3
  %loadMem_4926f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926f1 = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926f1)
  store %struct.Memory* %call_4926f1, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 4926f4	 Bytes: 3
  %loadMem_4926f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926f4 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926f4)
  store %struct.Memory* %call_4926f4, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rsi, %rsi	 RIP: 4926f7	 Bytes: 4
  %loadMem_4926f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926f7 = call %struct.Memory* @routine_imulq__0x13___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926f7)
  store %struct.Memory* %call_4926f7, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4926fb	 Bytes: 3
  %loadMem_4926fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926fb = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926fb)
  store %struct.Memory* %call_4926fb, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 4926fe	 Bytes: 3
  %loadMem_4926fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4926fe = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4926fe)
  store %struct.Memory* %call_4926fe, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, 0x3(%rdi)	 RIP: 492701	 Bytes: 4
  %loadMem_492701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492701 = call %struct.Memory* @routine_movb__0x2b__0x3__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492701)
  store %struct.Memory* %call_492701, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 492705	 Bytes: 3
  %loadMem_492705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492705 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492705)
  store %struct.Memory* %call_492705, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 492708	 Bytes: 1
  %loadMem_492708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492708 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492708)
  store %struct.Memory* %call_492708, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 492709	 Bytes: 3
  %loadMem_492709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492709 = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492709)
  store %struct.Memory* %call_492709, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 49270c	 Bytes: 3
  %loadMem_49270c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49270c = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49270c)
  store %struct.Memory* %call_49270c, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rsi, %rsi	 RIP: 49270f	 Bytes: 4
  %loadMem_49270f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49270f = call %struct.Memory* @routine_imulq__0x13___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49270f)
  store %struct.Memory* %call_49270f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 492713	 Bytes: 3
  %loadMem_492713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492713 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492713)
  store %struct.Memory* %call_492713, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 492716	 Bytes: 3
  %loadMem_492716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492716 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492716)
  store %struct.Memory* %call_492716, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 492719	 Bytes: 3
  %loadMem_492719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492719 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492719)
  store %struct.Memory* %call_492719, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %eax	 RIP: 49271c	 Bytes: 3
  %loadMem_49271c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49271c = call %struct.Memory* @routine_subl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49271c)
  store %struct.Memory* %call_49271c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 49271f	 Bytes: 3
  %loadMem_49271f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49271f = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49271f)
  store %struct.Memory* %call_49271f, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, (%rdi,%rsi,1)	 RIP: 492722	 Bytes: 4
  %loadMem_492722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492722 = call %struct.Memory* @routine_movb__0x2b____rdi__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492722)
  store %struct.Memory* %call_492722, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 492726	 Bytes: 3
  %loadMem_492726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492726 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492726)
  store %struct.Memory* %call_492726, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %eax	 RIP: 492729	 Bytes: 3
  %loadMem_492729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492729 = call %struct.Memory* @routine_subl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492729)
  store %struct.Memory* %call_492729, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 49272c	 Bytes: 3
  %loadMem_49272c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49272c = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49272c)
  store %struct.Memory* %call_49272c, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rsi, %rsi	 RIP: 49272f	 Bytes: 4
  %loadMem_49272f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49272f = call %struct.Memory* @routine_imulq__0x13___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49272f)
  store %struct.Memory* %call_49272f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 492733	 Bytes: 3
  %loadMem_492733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492733 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492733)
  store %struct.Memory* %call_492733, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 492736	 Bytes: 3
  %loadMem_492736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492736 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492736)
  store %struct.Memory* %call_492736, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 492739	 Bytes: 3
  %loadMem_492739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492739 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492739)
  store %struct.Memory* %call_492739, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 49273c	 Bytes: 1
  %loadMem_49273c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49273c = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49273c)
  store %struct.Memory* %call_49273c, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 49273d	 Bytes: 3
  %loadMem_49273d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49273d = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49273d)
  store %struct.Memory* %call_49273d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 492740	 Bytes: 3
  %loadMem_492740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492740 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492740)
  store %struct.Memory* %call_492740, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, (%rdi,%rsi,1)	 RIP: 492743	 Bytes: 4
  %loadMem_492743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492743 = call %struct.Memory* @routine_movb__0x2b____rdi__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492743)
  store %struct.Memory* %call_492743, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 492747	 Bytes: 3
  %loadMem_492747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492747 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492747)
  store %struct.Memory* %call_492747, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 49274a	 Bytes: 1
  %loadMem_49274a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49274a = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49274a)
  store %struct.Memory* %call_49274a, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 49274b	 Bytes: 3
  %loadMem_49274b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49274b = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49274b)
  store %struct.Memory* %call_49274b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 49274e	 Bytes: 3
  %loadMem_49274e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49274e = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49274e)
  store %struct.Memory* %call_49274e, %struct.Memory** %MEMORY

  ; Code: imulq $0x13, %rsi, %rsi	 RIP: 492751	 Bytes: 4
  %loadMem_492751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492751 = call %struct.Memory* @routine_imulq__0x13___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492751)
  store %struct.Memory* %call_492751, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 492755	 Bytes: 3
  %loadMem_492755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492755 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492755)
  store %struct.Memory* %call_492755, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 492758	 Bytes: 3
  %loadMem_492758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492758 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492758)
  store %struct.Memory* %call_492758, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 49275b	 Bytes: 1
  %loadMem_49275b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49275b = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49275b)
  store %struct.Memory* %call_49275b, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 49275c	 Bytes: 3
  %loadMem_49275c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49275c = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49275c)
  store %struct.Memory* %call_49275c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 49275f	 Bytes: 3
  %loadMem_49275f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49275f = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49275f)
  store %struct.Memory* %call_49275f, %struct.Memory** %MEMORY

  ; Code: movb $0x2b, (%rcx,%rsi,1)	 RIP: 492762	 Bytes: 4
  %loadMem_492762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492762 = call %struct.Memory* @routine_movb__0x2b____rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492762)
  store %struct.Memory* %call_492762, %struct.Memory** %MEMORY

  ; Code: .L_492766:	 RIP: 492766	 Bytes: 0
  br label %block_.L_492766
block_.L_492766:

  ; Code: jmpq .L_49276b	 RIP: 492766	 Bytes: 5
  %loadMem_492766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492766 = call %struct.Memory* @routine_jmpq_.L_49276b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492766, i64 5, i64 5)
  store %struct.Memory* %call_492766, %struct.Memory** %MEMORY

  br label %block_.L_49276b

  ; Code: .L_49276b:	 RIP: 49276b	 Bytes: 0
block_.L_49276b:

  ; Code: jmpq .L_492770	 RIP: 49276b	 Bytes: 5
  %loadMem_49276b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49276b = call %struct.Memory* @routine_jmpq_.L_492770(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49276b, i64 5, i64 5)
  store %struct.Memory* %call_49276b, %struct.Memory** %MEMORY

  br label %block_.L_492770

  ; Code: .L_492770:	 RIP: 492770	 Bytes: 0
block_.L_492770:

  ; Code: addq $0x20, %rsp	 RIP: 492770	 Bytes: 4
  %loadMem_492770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492770 = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492770)
  store %struct.Memory* %call_492770, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 492774	 Bytes: 1
  %loadMem_492774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492774 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492774)
  store %struct.Memory* %call_492774, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 492775	 Bytes: 1
  %loadMem_492775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_492775 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_492775)
  store %struct.Memory* %call_492775, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_492775
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0xaf28cc___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0xaf28cc_type* @G_0xaf28cc to i64))
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jne_.L_492430(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_492770(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_movq__0xaf2760___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0xaf2760_type* @G__0xaf2760 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x2e___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 46)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x169___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 361)
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


define %struct.Memory* @routine_movl__eax__0xaf28cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xaf28cc_type* @G_0xaf28cc to i64), i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4924eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0xaf2760___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0xaf2760_type* @G__0xaf2760 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x2b__0xaf2774(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xaf2774_type* @G_0xaf2774 to i64), i64 43)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_subl__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__edx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_imulq__0x13___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 19)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rcx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
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

define %struct.Memory* @routine_addq__rsi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__0x2b__0x1__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 43)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movb__0x2b__0xaf2773___rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 11478899
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 43)
  ret %struct.Memory* %13
}




















define %struct.Memory* @routine_movb__0x2b____rdi__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RSI
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 43)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
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


define %struct.Memory* @routine_movslq__eax___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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










define %struct.Memory* @routine_movb__0x2b____rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 43)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jne_.L_4925d3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
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

define %struct.Memory* @routine_jle_.L_492577(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xc__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 12)
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

define %struct.Memory* @routine_jge_.L_492577(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0xaf2760___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xaf2760_type* @G__0xaf2760 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movb__0x2b__0xaf2788(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xaf2788_type* @G_0xaf2788 to i64), i64 43)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_subl__0x3___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 3)
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


define %struct.Memory* @routine_imulq__0x13___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 19)
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


define %struct.Memory* @routine_movb__0x2b__0x2__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 43)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movb__0x2b__0xaf2786___rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 11478918
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 43)
  ret %struct.Memory* %13
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








define %struct.Memory* @routine_movb__0x2b____rax__rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 43)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_4925ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movb__0x2b__0xaf279c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xaf279c_type* @G_0xaf279c to i64), i64 43)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_subl__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movb__0x2b__0x3__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 43)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movb__0x2b__0xaf2799___rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 11478937
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 43)
  ret %struct.Memory* %13
}




















define %struct.Memory* @routine_jmpq_.L_49276b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jle_.L_492673(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jge_.L_492673(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_subl__0x3___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 3)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movb__0x2b__0x2__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 43)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movb__0x2b__0xaf2786___rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 11478918
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 43)
  ret %struct.Memory* %13
}
























define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x10__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




















define %struct.Memory* @routine_jmpq_.L_492766(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_subl__0x4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 4)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movb__0x2b__0x3__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 43)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movb__0x2b__0xaf2799___rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 11478937
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 43)
  ret %struct.Memory* %13
}
























define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}








































define %struct.Memory* @routine_subl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4)
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

