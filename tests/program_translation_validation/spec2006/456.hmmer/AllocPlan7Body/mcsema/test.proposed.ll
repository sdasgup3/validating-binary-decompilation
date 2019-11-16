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

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0x4590ec_type = type <{ [8 x i8] }>
@G__0x4590ec= global %G__0x4590ec_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @AllocPlan7Body(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .AllocPlan7Body:	 RIP: 431fd0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 431fd0	 Bytes: 1
  %loadMem_431fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_431fd0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_431fd0)
  store %struct.Memory* %call_431fd0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 431fd1	 Bytes: 3
  %loadMem_431fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_431fd1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_431fd1)
  store %struct.Memory* %call_431fd1, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 431fd4	 Bytes: 4
  %loadMem_431fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_431fd4 = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_431fd4)
  store %struct.Memory* %call_431fd4, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rax	 RIP: 431fd8	 Bytes: 10
  %loadMem_431fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_431fd8 = call %struct.Memory* @routine_movq__0x4590ec___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_431fd8)
  store %struct.Memory* %call_431fd8, %struct.Memory** %MEMORY

  ; Code: movl $0x6f, %ecx	 RIP: 431fe2	 Bytes: 5
  %loadMem_431fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_431fe2 = call %struct.Memory* @routine_movl__0x6f___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_431fe2)
  store %struct.Memory* %call_431fe2, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 431fe7	 Bytes: 4
  %loadMem_431fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_431fe7 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_431fe7)
  store %struct.Memory* %call_431fe7, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 431feb	 Bytes: 3
  %loadMem_431feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_431feb = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_431feb)
  store %struct.Memory* %call_431feb, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 431fee	 Bytes: 3
  %loadMem_431fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_431fee = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_431fee)
  store %struct.Memory* %call_431fee, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 431ff1	 Bytes: 4
  %loadMem_431ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_431ff1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_431ff1)
  store %struct.Memory* %call_431ff1, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x88(%rdi)	 RIP: 431ff5	 Bytes: 6
  %loadMem_431ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_431ff5 = call %struct.Memory* @routine_movl__esi__0x88__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_431ff5)
  store %struct.Memory* %call_431ff5, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 431ffb	 Bytes: 3
  %loadMem_431ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_431ffb = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_431ffb)
  store %struct.Memory* %call_431ffb, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %esi	 RIP: 431ffe	 Bytes: 3
  %loadMem_431ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_431ffe = call %struct.Memory* @routine_addl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_431ffe)
  store %struct.Memory* %call_431ffe, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 432001	 Bytes: 3
  %loadMem_432001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432001 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432001)
  store %struct.Memory* %call_432001, %struct.Memory** %MEMORY

  ; Code: shlq $0x0, %rdi	 RIP: 432004	 Bytes: 4
  %loadMem_432004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432004 = call %struct.Memory* @routine_shlq__0x0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432004)
  store %struct.Memory* %call_432004, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x20(%rbp)	 RIP: 432008	 Bytes: 4
  %loadMem_432008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432008 = call %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432008)
  store %struct.Memory* %call_432008, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 43200c	 Bytes: 3
  %loadMem_43200c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43200c = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43200c)
  store %struct.Memory* %call_43200c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 43200f	 Bytes: 2
  %loadMem_43200f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43200f = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43200f)
  store %struct.Memory* %call_43200f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 432011	 Bytes: 4
  %loadMem_432011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432011 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432011)
  store %struct.Memory* %call_432011, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 432015	 Bytes: 5
  %loadMem1_432015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432015 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432015, i64 81995, i64 5, i64 5)
  store %struct.Memory* %call1_432015, %struct.Memory** %MEMORY

  %loadMem2_432015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432015 = load i64, i64* %3
  %call2_432015 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_432015, %struct.Memory* %loadMem2_432015)
  store %struct.Memory* %call2_432015, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 43201a	 Bytes: 10
  %loadMem_43201a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43201a = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43201a)
  store %struct.Memory* %call_43201a, %struct.Memory** %MEMORY

  ; Code: movl $0x70, %esi	 RIP: 432024	 Bytes: 5
  %loadMem_432024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432024 = call %struct.Memory* @routine_movl__0x70___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432024)
  store %struct.Memory* %call_432024, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 432029	 Bytes: 4
  %loadMem_432029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432029 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432029)
  store %struct.Memory* %call_432029, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x18(%rdx)	 RIP: 43202d	 Bytes: 4
  %loadMem_43202d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43202d = call %struct.Memory* @routine_movq__rax__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43202d)
  store %struct.Memory* %call_43202d, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 432031	 Bytes: 3
  %loadMem_432031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432031 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432031)
  store %struct.Memory* %call_432031, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 432034	 Bytes: 3
  %loadMem_432034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432034 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432034)
  store %struct.Memory* %call_432034, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 432037	 Bytes: 3
  %loadMem_432037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432037 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432037)
  store %struct.Memory* %call_432037, %struct.Memory** %MEMORY

  ; Code: shlq $0x0, %rax	 RIP: 43203a	 Bytes: 4
  %loadMem_43203a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43203a = call %struct.Memory* @routine_shlq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43203a)
  store %struct.Memory* %call_43203a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 43203e	 Bytes: 3
  %loadMem_43203e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43203e = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43203e)
  store %struct.Memory* %call_43203e, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 432041	 Bytes: 5
  %loadMem1_432041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432041 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432041, i64 81951, i64 5, i64 5)
  store %struct.Memory* %call1_432041, %struct.Memory** %MEMORY

  %loadMem2_432041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432041 = load i64, i64* %3
  %call2_432041 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_432041, %struct.Memory* %loadMem2_432041)
  store %struct.Memory* %call2_432041, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 432046	 Bytes: 10
  %loadMem_432046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432046 = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432046)
  store %struct.Memory* %call_432046, %struct.Memory** %MEMORY

  ; Code: movl $0x71, %esi	 RIP: 432050	 Bytes: 5
  %loadMem_432050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432050 = call %struct.Memory* @routine_movl__0x71___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432050)
  store %struct.Memory* %call_432050, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 432055	 Bytes: 4
  %loadMem_432055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432055 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432055)
  store %struct.Memory* %call_432055, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x20(%rdx)	 RIP: 432059	 Bytes: 4
  %loadMem_432059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432059 = call %struct.Memory* @routine_movq__rax__0x20__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432059)
  store %struct.Memory* %call_432059, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 43205d	 Bytes: 3
  %loadMem_43205d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43205d = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43205d)
  store %struct.Memory* %call_43205d, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 432060	 Bytes: 3
  %loadMem_432060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432060 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432060)
  store %struct.Memory* %call_432060, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 432063	 Bytes: 3
  %loadMem_432063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432063 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432063)
  store %struct.Memory* %call_432063, %struct.Memory** %MEMORY

  ; Code: shlq $0x0, %rax	 RIP: 432066	 Bytes: 4
  %loadMem_432066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432066 = call %struct.Memory* @routine_shlq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432066)
  store %struct.Memory* %call_432066, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 43206a	 Bytes: 3
  %loadMem_43206a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43206a = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43206a)
  store %struct.Memory* %call_43206a, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 43206d	 Bytes: 5
  %loadMem1_43206d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43206d = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43206d, i64 81907, i64 5, i64 5)
  store %struct.Memory* %call1_43206d, %struct.Memory** %MEMORY

  %loadMem2_43206d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43206d = load i64, i64* %3
  %call2_43206d = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_43206d, %struct.Memory* %loadMem2_43206d)
  store %struct.Memory* %call2_43206d, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 432072	 Bytes: 10
  %loadMem_432072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432072 = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432072)
  store %struct.Memory* %call_432072, %struct.Memory** %MEMORY

  ; Code: movl $0x72, %esi	 RIP: 43207c	 Bytes: 5
  %loadMem_43207c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43207c = call %struct.Memory* @routine_movl__0x72___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43207c)
  store %struct.Memory* %call_43207c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 432081	 Bytes: 4
  %loadMem_432081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432081 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432081)
  store %struct.Memory* %call_432081, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x28(%rdx)	 RIP: 432085	 Bytes: 4
  %loadMem_432085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432085 = call %struct.Memory* @routine_movq__rax__0x28__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432085)
  store %struct.Memory* %call_432085, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 432089	 Bytes: 3
  %loadMem_432089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432089 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432089)
  store %struct.Memory* %call_432089, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 43208c	 Bytes: 3
  %loadMem_43208c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43208c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43208c)
  store %struct.Memory* %call_43208c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 43208f	 Bytes: 3
  %loadMem_43208f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43208f = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43208f)
  store %struct.Memory* %call_43208f, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 432092	 Bytes: 4
  %loadMem_432092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432092 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432092)
  store %struct.Memory* %call_432092, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 432096	 Bytes: 3
  %loadMem_432096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432096 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432096)
  store %struct.Memory* %call_432096, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 432099	 Bytes: 5
  %loadMem1_432099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432099 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432099, i64 81863, i64 5, i64 5)
  store %struct.Memory* %call1_432099, %struct.Memory** %MEMORY

  %loadMem2_432099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432099 = load i64, i64* %3
  %call2_432099 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_432099, %struct.Memory* %loadMem2_432099)
  store %struct.Memory* %call2_432099, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 43209e	 Bytes: 10
  %loadMem_43209e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43209e = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43209e)
  store %struct.Memory* %call_43209e, %struct.Memory** %MEMORY

  ; Code: movl $0x74, %esi	 RIP: 4320a8	 Bytes: 5
  %loadMem_4320a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320a8 = call %struct.Memory* @routine_movl__0x74___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320a8)
  store %struct.Memory* %call_4320a8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4320ad	 Bytes: 4
  %loadMem_4320ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320ad = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320ad)
  store %struct.Memory* %call_4320ad, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x48(%rdx)	 RIP: 4320b1	 Bytes: 4
  %loadMem_4320b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320b1 = call %struct.Memory* @routine_movq__rax__0x48__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320b1)
  store %struct.Memory* %call_4320b1, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rax	 RIP: 4320b5	 Bytes: 4
  %loadMem_4320b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320b5 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320b5)
  store %struct.Memory* %call_4320b5, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rax	 RIP: 4320b9	 Bytes: 4
  %loadMem_4320b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320b9 = call %struct.Memory* @routine_shlq__0x3___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320b9)
  store %struct.Memory* %call_4320b9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4320bd	 Bytes: 3
  %loadMem_4320bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320bd = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320bd)
  store %struct.Memory* %call_4320bd, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 4320c0	 Bytes: 5
  %loadMem1_4320c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4320c0 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4320c0, i64 81824, i64 5, i64 5)
  store %struct.Memory* %call1_4320c0, %struct.Memory** %MEMORY

  %loadMem2_4320c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4320c0 = load i64, i64* %3
  %call2_4320c0 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_4320c0, %struct.Memory* %loadMem2_4320c0)
  store %struct.Memory* %call2_4320c0, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 4320c5	 Bytes: 10
  %loadMem_4320c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320c5 = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320c5)
  store %struct.Memory* %call_4320c5, %struct.Memory** %MEMORY

  ; Code: movl $0x75, %esi	 RIP: 4320cf	 Bytes: 5
  %loadMem_4320cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320cf = call %struct.Memory* @routine_movl__0x75___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320cf)
  store %struct.Memory* %call_4320cf, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4320d4	 Bytes: 4
  %loadMem_4320d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320d4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320d4)
  store %struct.Memory* %call_4320d4, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x90(%rdx)	 RIP: 4320d8	 Bytes: 7
  %loadMem_4320d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320d8 = call %struct.Memory* @routine_movq__rax__0x90__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320d8)
  store %struct.Memory* %call_4320d8, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 4320df	 Bytes: 3
  %loadMem_4320df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320df = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320df)
  store %struct.Memory* %call_4320df, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4320e2	 Bytes: 3
  %loadMem_4320e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320e2 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320e2)
  store %struct.Memory* %call_4320e2, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 4320e5	 Bytes: 3
  %loadMem_4320e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320e5 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320e5)
  store %struct.Memory* %call_4320e5, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rax	 RIP: 4320e8	 Bytes: 4
  %loadMem_4320e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320e8 = call %struct.Memory* @routine_shlq__0x3___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320e8)
  store %struct.Memory* %call_4320e8, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4320ec	 Bytes: 3
  %loadMem_4320ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320ec = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320ec)
  store %struct.Memory* %call_4320ec, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 4320ef	 Bytes: 5
  %loadMem1_4320ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4320ef = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4320ef, i64 81777, i64 5, i64 5)
  store %struct.Memory* %call1_4320ef, %struct.Memory** %MEMORY

  %loadMem2_4320ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4320ef = load i64, i64* %3
  %call2_4320ef = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_4320ef, %struct.Memory* %loadMem2_4320ef)
  store %struct.Memory* %call2_4320ef, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 4320f4	 Bytes: 10
  %loadMem_4320f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320f4 = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320f4)
  store %struct.Memory* %call_4320f4, %struct.Memory** %MEMORY

  ; Code: movl $0x76, %esi	 RIP: 4320fe	 Bytes: 5
  %loadMem_4320fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4320fe = call %struct.Memory* @routine_movl__0x76___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4320fe)
  store %struct.Memory* %call_4320fe, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 432103	 Bytes: 4
  %loadMem_432103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432103 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432103)
  store %struct.Memory* %call_432103, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x98(%rdx)	 RIP: 432107	 Bytes: 7
  %loadMem_432107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432107 = call %struct.Memory* @routine_movq__rax__0x98__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432107)
  store %struct.Memory* %call_432107, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rax	 RIP: 43210e	 Bytes: 4
  %loadMem_43210e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43210e = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43210e)
  store %struct.Memory* %call_43210e, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rax	 RIP: 432112	 Bytes: 4
  %loadMem_432112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432112 = call %struct.Memory* @routine_shlq__0x3___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432112)
  store %struct.Memory* %call_432112, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 432116	 Bytes: 3
  %loadMem_432116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432116 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432116)
  store %struct.Memory* %call_432116, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 432119	 Bytes: 5
  %loadMem1_432119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432119 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432119, i64 81735, i64 5, i64 5)
  store %struct.Memory* %call1_432119, %struct.Memory** %MEMORY

  %loadMem2_432119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432119 = load i64, i64* %3
  %call2_432119 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_432119, %struct.Memory* %loadMem2_432119)
  store %struct.Memory* %call2_432119, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 43211e	 Bytes: 10
  %loadMem_43211e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43211e = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43211e)
  store %struct.Memory* %call_43211e, %struct.Memory** %MEMORY

  ; Code: movl $0x77, %esi	 RIP: 432128	 Bytes: 5
  %loadMem_432128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432128 = call %struct.Memory* @routine_movl__0x77___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432128)
  store %struct.Memory* %call_432128, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43212d	 Bytes: 4
  %loadMem_43212d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43212d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43212d)
  store %struct.Memory* %call_43212d, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xa0(%rdx)	 RIP: 432131	 Bytes: 7
  %loadMem_432131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432131 = call %struct.Memory* @routine_movq__rax__0xa0__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432131)
  store %struct.Memory* %call_432131, %struct.Memory** %MEMORY

  ; Code: imull $0x7, -0xc(%rbp), %ecx	 RIP: 432138	 Bytes: 4
  %loadMem_432138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432138 = call %struct.Memory* @routine_imull__0x7__MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432138)
  store %struct.Memory* %call_432138, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 43213c	 Bytes: 3
  %loadMem_43213c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43213c = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43213c)
  store %struct.Memory* %call_43213c, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 43213f	 Bytes: 4
  %loadMem_43213f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43213f = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43213f)
  store %struct.Memory* %call_43213f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 432143	 Bytes: 3
  %loadMem_432143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432143 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432143)
  store %struct.Memory* %call_432143, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 432146	 Bytes: 5
  %loadMem1_432146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432146 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432146, i64 81690, i64 5, i64 5)
  store %struct.Memory* %call1_432146, %struct.Memory** %MEMORY

  %loadMem2_432146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432146 = load i64, i64* %3
  %call2_432146 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_432146, %struct.Memory* %loadMem2_432146)
  store %struct.Memory* %call2_432146, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 43214b	 Bytes: 10
  %loadMem_43214b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43214b = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43214b)
  store %struct.Memory* %call_43214b, %struct.Memory** %MEMORY

  ; Code: movl $0x78, %esi	 RIP: 432155	 Bytes: 5
  %loadMem_432155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432155 = call %struct.Memory* @routine_movl__0x78___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432155)
  store %struct.Memory* %call_432155, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43215a	 Bytes: 4
  %loadMem_43215a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43215a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43215a)
  store %struct.Memory* %call_43215a, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rdx), %rdx	 RIP: 43215e	 Bytes: 7
  %loadMem_43215e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43215e = call %struct.Memory* @routine_movq_0x90__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43215e)
  store %struct.Memory* %call_43215e, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx)	 RIP: 432165	 Bytes: 3
  %loadMem_432165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432165 = call %struct.Memory* @routine_movq__rax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432165)
  store %struct.Memory* %call_432165, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 432168	 Bytes: 3
  %loadMem_432168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432168 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432168)
  store %struct.Memory* %call_432168, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 43216b	 Bytes: 3
  %loadMem_43216b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43216b = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43216b)
  store %struct.Memory* %call_43216b, %struct.Memory** %MEMORY

  ; Code: imull $0x14, %ecx, %ecx	 RIP: 43216e	 Bytes: 3
  %loadMem_43216e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43216e = call %struct.Memory* @routine_imull__0x14___ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43216e)
  store %struct.Memory* %call_43216e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 432171	 Bytes: 3
  %loadMem_432171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432171 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432171)
  store %struct.Memory* %call_432171, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 432174	 Bytes: 4
  %loadMem_432174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432174 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432174)
  store %struct.Memory* %call_432174, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 432178	 Bytes: 3
  %loadMem_432178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432178 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432178)
  store %struct.Memory* %call_432178, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 43217b	 Bytes: 5
  %loadMem1_43217b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43217b = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43217b, i64 81637, i64 5, i64 5)
  store %struct.Memory* %call1_43217b, %struct.Memory** %MEMORY

  %loadMem2_43217b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43217b = load i64, i64* %3
  %call2_43217b = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_43217b, %struct.Memory* %loadMem2_43217b)
  store %struct.Memory* %call2_43217b, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 432180	 Bytes: 10
  %loadMem_432180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432180 = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432180)
  store %struct.Memory* %call_432180, %struct.Memory** %MEMORY

  ; Code: movl $0x79, %esi	 RIP: 43218a	 Bytes: 5
  %loadMem_43218a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43218a = call %struct.Memory* @routine_movl__0x79___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43218a)
  store %struct.Memory* %call_43218a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43218f	 Bytes: 4
  %loadMem_43218f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43218f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43218f)
  store %struct.Memory* %call_43218f, %struct.Memory** %MEMORY

  ; Code: movq 0x98(%rdx), %rdx	 RIP: 432193	 Bytes: 7
  %loadMem_432193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432193 = call %struct.Memory* @routine_movq_0x98__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432193)
  store %struct.Memory* %call_432193, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx)	 RIP: 43219a	 Bytes: 3
  %loadMem_43219a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43219a = call %struct.Memory* @routine_movq__rax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43219a)
  store %struct.Memory* %call_43219a, %struct.Memory** %MEMORY

  ; Code: imull $0x14, -0xc(%rbp), %ecx	 RIP: 43219d	 Bytes: 4
  %loadMem_43219d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43219d = call %struct.Memory* @routine_imull__0x14__MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43219d)
  store %struct.Memory* %call_43219d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 4321a1	 Bytes: 3
  %loadMem_4321a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321a1 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321a1)
  store %struct.Memory* %call_4321a1, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 4321a4	 Bytes: 4
  %loadMem_4321a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321a4 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321a4)
  store %struct.Memory* %call_4321a4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4321a8	 Bytes: 3
  %loadMem_4321a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321a8 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321a8)
  store %struct.Memory* %call_4321a8, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 4321ab	 Bytes: 5
  %loadMem1_4321ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4321ab = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4321ab, i64 81589, i64 5, i64 5)
  store %struct.Memory* %call1_4321ab, %struct.Memory** %MEMORY

  %loadMem2_4321ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4321ab = load i64, i64* %3
  %call2_4321ab = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_4321ab, %struct.Memory* %loadMem2_4321ab)
  store %struct.Memory* %call2_4321ab, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 4321b0	 Bytes: 10
  %loadMem_4321b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321b0 = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321b0)
  store %struct.Memory* %call_4321b0, %struct.Memory** %MEMORY

  ; Code: movl $0x7b, %esi	 RIP: 4321ba	 Bytes: 5
  %loadMem_4321ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321ba = call %struct.Memory* @routine_movl__0x7b___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321ba)
  store %struct.Memory* %call_4321ba, %struct.Memory** %MEMORY

  ; Code: movl $0x38, %ecx	 RIP: 4321bf	 Bytes: 5
  %loadMem_4321bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321bf = call %struct.Memory* @routine_movl__0x38___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321bf)
  store %struct.Memory* %call_4321bf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4321c4	 Bytes: 2
  %loadMem_4321c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321c4 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321c4)
  store %struct.Memory* %call_4321c4, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %r8	 RIP: 4321c6	 Bytes: 4
  %loadMem_4321c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321c6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321c6)
  store %struct.Memory* %call_4321c6, %struct.Memory** %MEMORY

  ; Code: movq 0xa0(%r8), %r8	 RIP: 4321ca	 Bytes: 7
  %loadMem_4321ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321ca = call %struct.Memory* @routine_movq_0xa0__r8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321ca)
  store %struct.Memory* %call_4321ca, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%r8)	 RIP: 4321d1	 Bytes: 3
  %loadMem_4321d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321d1 = call %struct.Memory* @routine_movq__rax____r8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321d1)
  store %struct.Memory* %call_4321d1, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 4321d4	 Bytes: 5
  %loadMem1_4321d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4321d4 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4321d4, i64 81548, i64 5, i64 5)
  store %struct.Memory* %call1_4321d4, %struct.Memory** %MEMORY

  %loadMem2_4321d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4321d4 = load i64, i64* %3
  %call2_4321d4 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_4321d4, %struct.Memory* %loadMem2_4321d4)
  store %struct.Memory* %call2_4321d4, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 4321d9	 Bytes: 10
  %loadMem_4321d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321d9 = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321d9)
  store %struct.Memory* %call_4321d9, %struct.Memory** %MEMORY

  ; Code: movl $0x7c, %esi	 RIP: 4321e3	 Bytes: 5
  %loadMem_4321e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321e3 = call %struct.Memory* @routine_movl__0x7c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321e3)
  store %struct.Memory* %call_4321e3, %struct.Memory** %MEMORY

  ; Code: movl $0xc0, %ecx	 RIP: 4321e8	 Bytes: 5
  %loadMem_4321e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321e8 = call %struct.Memory* @routine_movl__0xc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321e8)
  store %struct.Memory* %call_4321e8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4321ed	 Bytes: 2
  %loadMem_4321ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321ed = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321ed)
  store %struct.Memory* %call_4321ed, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %r8	 RIP: 4321ef	 Bytes: 4
  %loadMem_4321ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321ef = call %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321ef)
  store %struct.Memory* %call_4321ef, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x138(%r8)	 RIP: 4321f3	 Bytes: 7
  %loadMem_4321f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321f3 = call %struct.Memory* @routine_movq__rax__0x138__r8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321f3)
  store %struct.Memory* %call_4321f3, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 4321fa	 Bytes: 5
  %loadMem1_4321fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4321fa = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4321fa, i64 81510, i64 5, i64 5)
  store %struct.Memory* %call1_4321fa, %struct.Memory** %MEMORY

  %loadMem2_4321fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4321fa = load i64, i64* %3
  %call2_4321fa = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_4321fa, %struct.Memory* %loadMem2_4321fa)
  store %struct.Memory* %call2_4321fa, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 4321ff	 Bytes: 10
  %loadMem_4321ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4321ff = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4321ff)
  store %struct.Memory* %call_4321ff, %struct.Memory** %MEMORY

  ; Code: movl $0x7d, %esi	 RIP: 432209	 Bytes: 5
  %loadMem_432209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432209 = call %struct.Memory* @routine_movl__0x7d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432209)
  store %struct.Memory* %call_432209, %struct.Memory** %MEMORY

  ; Code: movl $0xc0, %ecx	 RIP: 43220e	 Bytes: 5
  %loadMem_43220e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43220e = call %struct.Memory* @routine_movl__0xc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43220e)
  store %struct.Memory* %call_43220e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 432213	 Bytes: 2
  %loadMem_432213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432213 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432213)
  store %struct.Memory* %call_432213, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %r8	 RIP: 432215	 Bytes: 4
  %loadMem_432215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432215 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432215)
  store %struct.Memory* %call_432215, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x140(%r8)	 RIP: 432219	 Bytes: 7
  %loadMem_432219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432219 = call %struct.Memory* @routine_movq__rax__0x140__r8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432219)
  store %struct.Memory* %call_432219, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 432220	 Bytes: 5
  %loadMem1_432220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432220 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432220, i64 81472, i64 5, i64 5)
  store %struct.Memory* %call1_432220, %struct.Memory** %MEMORY

  %loadMem2_432220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432220 = load i64, i64* %3
  %call2_432220 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_432220, %struct.Memory* %loadMem2_432220)
  store %struct.Memory* %call2_432220, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 432225	 Bytes: 10
  %loadMem_432225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432225 = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432225)
  store %struct.Memory* %call_432225, %struct.Memory** %MEMORY

  ; Code: movl $0x7e, %esi	 RIP: 43222f	 Bytes: 5
  %loadMem_43222f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43222f = call %struct.Memory* @routine_movl__0x7e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43222f)
  store %struct.Memory* %call_43222f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 432234	 Bytes: 4
  %loadMem_432234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432234 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432234)
  store %struct.Memory* %call_432234, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x148(%rdx)	 RIP: 432238	 Bytes: 7
  %loadMem_432238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432238 = call %struct.Memory* @routine_movq__rax__0x148__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432238)
  store %struct.Memory* %call_432238, %struct.Memory** %MEMORY

  ; Code: imull $0x7, -0xc(%rbp), %ecx	 RIP: 43223f	 Bytes: 4
  %loadMem_43223f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43223f = call %struct.Memory* @routine_imull__0x7__MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43223f)
  store %struct.Memory* %call_43223f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 432243	 Bytes: 3
  %loadMem_432243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432243 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432243)
  store %struct.Memory* %call_432243, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 432246	 Bytes: 4
  %loadMem_432246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432246 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432246)
  store %struct.Memory* %call_432246, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 43224a	 Bytes: 3
  %loadMem_43224a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43224a = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43224a)
  store %struct.Memory* %call_43224a, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 43224d	 Bytes: 5
  %loadMem1_43224d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43224d = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43224d, i64 81427, i64 5, i64 5)
  store %struct.Memory* %call1_43224d, %struct.Memory** %MEMORY

  %loadMem2_43224d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43224d = load i64, i64* %3
  %call2_43224d = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_43224d, %struct.Memory* %loadMem2_43224d)
  store %struct.Memory* %call2_43224d, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 432252	 Bytes: 10
  %loadMem_432252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432252 = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432252)
  store %struct.Memory* %call_432252, %struct.Memory** %MEMORY

  ; Code: movl $0x7f, %esi	 RIP: 43225c	 Bytes: 5
  %loadMem_43225c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43225c = call %struct.Memory* @routine_movl__0x7f___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43225c)
  store %struct.Memory* %call_43225c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 432261	 Bytes: 4
  %loadMem_432261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432261 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432261)
  store %struct.Memory* %call_432261, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x180(%rdx)	 RIP: 432265	 Bytes: 7
  %loadMem_432265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432265 = call %struct.Memory* @routine_movq__rax__0x180__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432265)
  store %struct.Memory* %call_432265, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 43226c	 Bytes: 3
  %loadMem_43226c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43226c = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43226c)
  store %struct.Memory* %call_43226c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 43226f	 Bytes: 3
  %loadMem_43226f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43226f = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43226f)
  store %struct.Memory* %call_43226f, %struct.Memory** %MEMORY

  ; Code: imull $0x18, %ecx, %ecx	 RIP: 432272	 Bytes: 3
  %loadMem_432272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432272 = call %struct.Memory* @routine_imull__0x18___ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432272)
  store %struct.Memory* %call_432272, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 432275	 Bytes: 3
  %loadMem_432275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432275 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432275)
  store %struct.Memory* %call_432275, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 432278	 Bytes: 4
  %loadMem_432278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432278 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432278)
  store %struct.Memory* %call_432278, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 43227c	 Bytes: 3
  %loadMem_43227c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43227c = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43227c)
  store %struct.Memory* %call_43227c, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 43227f	 Bytes: 5
  %loadMem1_43227f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43227f = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43227f, i64 81377, i64 5, i64 5)
  store %struct.Memory* %call1_43227f, %struct.Memory** %MEMORY

  %loadMem2_43227f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43227f = load i64, i64* %3
  %call2_43227f = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_43227f, %struct.Memory* %loadMem2_43227f)
  store %struct.Memory* %call2_43227f, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 432284	 Bytes: 10
  %loadMem_432284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432284 = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432284)
  store %struct.Memory* %call_432284, %struct.Memory** %MEMORY

  ; Code: movl $0x80, %esi	 RIP: 43228e	 Bytes: 5
  %loadMem_43228e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43228e = call %struct.Memory* @routine_movl__0x80___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43228e)
  store %struct.Memory* %call_43228e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 432293	 Bytes: 4
  %loadMem_432293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432293 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432293)
  store %struct.Memory* %call_432293, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x188(%rdx)	 RIP: 432297	 Bytes: 7
  %loadMem_432297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432297 = call %struct.Memory* @routine_movq__rax__0x188__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432297)
  store %struct.Memory* %call_432297, %struct.Memory** %MEMORY

  ; Code: imull $0x18, -0xc(%rbp), %ecx	 RIP: 43229e	 Bytes: 4
  %loadMem_43229e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43229e = call %struct.Memory* @routine_imull__0x18__MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43229e)
  store %struct.Memory* %call_43229e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 4322a2	 Bytes: 3
  %loadMem_4322a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322a2 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322a2)
  store %struct.Memory* %call_4322a2, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 4322a5	 Bytes: 4
  %loadMem_4322a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322a5 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322a5)
  store %struct.Memory* %call_4322a5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4322a9	 Bytes: 3
  %loadMem_4322a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322a9 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322a9)
  store %struct.Memory* %call_4322a9, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 4322ac	 Bytes: 5
  %loadMem1_4322ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4322ac = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4322ac, i64 81332, i64 5, i64 5)
  store %struct.Memory* %call1_4322ac, %struct.Memory** %MEMORY

  %loadMem2_4322ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4322ac = load i64, i64* %3
  %call2_4322ac = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_4322ac, %struct.Memory* %loadMem2_4322ac)
  store %struct.Memory* %call2_4322ac, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4322b1	 Bytes: 4
  %loadMem_4322b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322b1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322b1)
  store %struct.Memory* %call_4322b1, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x190(%rdx)	 RIP: 4322b5	 Bytes: 7
  %loadMem_4322b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322b5 = call %struct.Memory* @routine_movq__rax__0x190__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322b5)
  store %struct.Memory* %call_4322b5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4322bc	 Bytes: 4
  %loadMem_4322bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322bc = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322bc)
  store %struct.Memory* %call_4322bc, %struct.Memory** %MEMORY

  ; Code: movq 0x180(%rax), %rax	 RIP: 4322c0	 Bytes: 7
  %loadMem_4322c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322c0 = call %struct.Memory* @routine_movq_0x180__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322c0)
  store %struct.Memory* %call_4322c0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4322c7	 Bytes: 4
  %loadMem_4322c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322c7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322c7)
  store %struct.Memory* %call_4322c7, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rdx), %rdx	 RIP: 4322cb	 Bytes: 7
  %loadMem_4322cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322cb = call %struct.Memory* @routine_movq_0x138__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322cb)
  store %struct.Memory* %call_4322cb, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx)	 RIP: 4322d2	 Bytes: 3
  %loadMem_4322d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322d2 = call %struct.Memory* @routine_movq__rax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322d2)
  store %struct.Memory* %call_4322d2, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4322d5	 Bytes: 4
  %loadMem_4322d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322d5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322d5)
  store %struct.Memory* %call_4322d5, %struct.Memory** %MEMORY

  ; Code: movq 0x188(%rax), %rax	 RIP: 4322d9	 Bytes: 7
  %loadMem_4322d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322d9 = call %struct.Memory* @routine_movq_0x188__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322d9)
  store %struct.Memory* %call_4322d9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4322e0	 Bytes: 4
  %loadMem_4322e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322e0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322e0)
  store %struct.Memory* %call_4322e0, %struct.Memory** %MEMORY

  ; Code: movq 0x140(%rdx), %rdx	 RIP: 4322e4	 Bytes: 7
  %loadMem_4322e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322e4 = call %struct.Memory* @routine_movq_0x140__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322e4)
  store %struct.Memory* %call_4322e4, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx)	 RIP: 4322eb	 Bytes: 3
  %loadMem_4322eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322eb = call %struct.Memory* @routine_movq__rax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322eb)
  store %struct.Memory* %call_4322eb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4322ee	 Bytes: 4
  %loadMem_4322ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322ee = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322ee)
  store %struct.Memory* %call_4322ee, %struct.Memory** %MEMORY

  ; Code: movq 0x190(%rax), %rax	 RIP: 4322f2	 Bytes: 7
  %loadMem_4322f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322f2 = call %struct.Memory* @routine_movq_0x190__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322f2)
  store %struct.Memory* %call_4322f2, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4322f9	 Bytes: 4
  %loadMem_4322f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322f9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322f9)
  store %struct.Memory* %call_4322f9, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rdx), %rdx	 RIP: 4322fd	 Bytes: 7
  %loadMem_4322fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4322fd = call %struct.Memory* @routine_movq_0x148__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4322fd)
  store %struct.Memory* %call_4322fd, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx)	 RIP: 432304	 Bytes: 3
  %loadMem_432304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432304 = call %struct.Memory* @routine_movq__rax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432304)
  store %struct.Memory* %call_432304, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x10(%rbp)	 RIP: 432307	 Bytes: 7
  %loadMem_432307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432307 = call %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432307)
  store %struct.Memory* %call_432307, %struct.Memory** %MEMORY

  ; Code: .L_43230e:	 RIP: 43230e	 Bytes: 0
  br label %block_.L_43230e
block_.L_43230e:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 43230e	 Bytes: 3
  %loadMem_43230e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43230e = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43230e)
  store %struct.Memory* %call_43230e, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 432311	 Bytes: 3
  %loadMem_432311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432311 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432311)
  store %struct.Memory* %call_432311, %struct.Memory** %MEMORY

  ; Code: jg .L_4323c6	 RIP: 432314	 Bytes: 6
  %loadMem_432314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432314 = call %struct.Memory* @routine_jg_.L_4323c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432314, i8* %BRANCH_TAKEN, i64 178, i64 6, i64 6)
  store %struct.Memory* %call_432314, %struct.Memory** %MEMORY

  %loadBr_432314 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432314 = icmp eq i8 %loadBr_432314, 1
  br i1 %cmpBr_432314, label %block_.L_4323c6, label %block_43231a

block_43231a:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43231a	 Bytes: 4
  %loadMem_43231a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43231a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43231a)
  store %struct.Memory* %call_43231a, %struct.Memory** %MEMORY

  ; Code: movq 0x98(%rax), %rax	 RIP: 43231e	 Bytes: 7
  %loadMem_43231e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43231e = call %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43231e)
  store %struct.Memory* %call_43231e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 432325	 Bytes: 3
  %loadMem_432325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432325 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432325)
  store %struct.Memory* %call_432325, %struct.Memory** %MEMORY

  ; Code: imull $0x14, -0x10(%rbp), %ecx	 RIP: 432328	 Bytes: 4
  %loadMem_432328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432328 = call %struct.Memory* @routine_imull__0x14__MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432328)
  store %struct.Memory* %call_432328, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 43232c	 Bytes: 3
  %loadMem_43232c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43232c = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43232c)
  store %struct.Memory* %call_43232c, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rdx	 RIP: 43232f	 Bytes: 4
  %loadMem_43232f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43232f = call %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43232f)
  store %struct.Memory* %call_43232f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 432333	 Bytes: 3
  %loadMem_432333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432333 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432333)
  store %struct.Memory* %call_432333, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 432336	 Bytes: 4
  %loadMem_432336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432336 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432336)
  store %struct.Memory* %call_432336, %struct.Memory** %MEMORY

  ; Code: movq 0x98(%rdx), %rdx	 RIP: 43233a	 Bytes: 7
  %loadMem_43233a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43233a = call %struct.Memory* @routine_movq_0x98__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43233a)
  store %struct.Memory* %call_43233a, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 432341	 Bytes: 4
  %loadMem_432341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432341 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432341)
  store %struct.Memory* %call_432341, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx,%rsi,8)	 RIP: 432345	 Bytes: 4
  %loadMem_432345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432345 = call %struct.Memory* @routine_movq__rax____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432345)
  store %struct.Memory* %call_432345, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 432349	 Bytes: 3
  %loadMem_432349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432349 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432349)
  store %struct.Memory* %call_432349, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %ecx	 RIP: 43234c	 Bytes: 3
  %loadMem_43234c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43234c = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43234c)
  store %struct.Memory* %call_43234c, %struct.Memory** %MEMORY

  ; Code: jge .L_4323b3	 RIP: 43234f	 Bytes: 6
  %loadMem_43234f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43234f = call %struct.Memory* @routine_jge_.L_4323b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43234f, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_43234f, %struct.Memory** %MEMORY

  %loadBr_43234f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43234f = icmp eq i8 %loadBr_43234f, 1
  br i1 %cmpBr_43234f, label %block_.L_4323b3, label %block_432355

block_432355:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432355	 Bytes: 4
  %loadMem_432355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432355 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432355)
  store %struct.Memory* %call_432355, %struct.Memory** %MEMORY

  ; Code: movq 0xa0(%rax), %rax	 RIP: 432359	 Bytes: 7
  %loadMem_432359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432359 = call %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432359)
  store %struct.Memory* %call_432359, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 432360	 Bytes: 3
  %loadMem_432360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432360 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432360)
  store %struct.Memory* %call_432360, %struct.Memory** %MEMORY

  ; Code: imull $0x14, -0x10(%rbp), %ecx	 RIP: 432363	 Bytes: 4
  %loadMem_432363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432363 = call %struct.Memory* @routine_imull__0x14__MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432363)
  store %struct.Memory* %call_432363, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 432367	 Bytes: 3
  %loadMem_432367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432367 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432367)
  store %struct.Memory* %call_432367, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rdx	 RIP: 43236a	 Bytes: 4
  %loadMem_43236a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43236a = call %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43236a)
  store %struct.Memory* %call_43236a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 43236e	 Bytes: 3
  %loadMem_43236e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43236e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43236e)
  store %struct.Memory* %call_43236e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 432371	 Bytes: 4
  %loadMem_432371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432371 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432371)
  store %struct.Memory* %call_432371, %struct.Memory** %MEMORY

  ; Code: movq 0xa0(%rdx), %rdx	 RIP: 432375	 Bytes: 7
  %loadMem_432375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432375 = call %struct.Memory* @routine_movq_0xa0__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432375)
  store %struct.Memory* %call_432375, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 43237c	 Bytes: 4
  %loadMem_43237c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43237c = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43237c)
  store %struct.Memory* %call_43237c, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx,%rsi,8)	 RIP: 432380	 Bytes: 4
  %loadMem_432380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432380 = call %struct.Memory* @routine_movq__rax____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432380)
  store %struct.Memory* %call_432380, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 432384	 Bytes: 4
  %loadMem_432384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432384 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432384)
  store %struct.Memory* %call_432384, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 432388	 Bytes: 7
  %loadMem_432388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432388 = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432388)
  store %struct.Memory* %call_432388, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 43238f	 Bytes: 3
  %loadMem_43238f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43238f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43238f)
  store %struct.Memory* %call_43238f, %struct.Memory** %MEMORY

  ; Code: imull $0x7, -0x10(%rbp), %ecx	 RIP: 432392	 Bytes: 4
  %loadMem_432392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432392 = call %struct.Memory* @routine_imull__0x7__MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432392)
  store %struct.Memory* %call_432392, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 432396	 Bytes: 3
  %loadMem_432396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432396 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432396)
  store %struct.Memory* %call_432396, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rdx	 RIP: 432399	 Bytes: 4
  %loadMem_432399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432399 = call %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432399)
  store %struct.Memory* %call_432399, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 43239d	 Bytes: 3
  %loadMem_43239d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43239d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43239d)
  store %struct.Memory* %call_43239d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4323a0	 Bytes: 4
  %loadMem_4323a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323a0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323a0)
  store %struct.Memory* %call_4323a0, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rdx), %rdx	 RIP: 4323a4	 Bytes: 7
  %loadMem_4323a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323a4 = call %struct.Memory* @routine_movq_0x90__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323a4)
  store %struct.Memory* %call_4323a4, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 4323ab	 Bytes: 4
  %loadMem_4323ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323ab = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323ab)
  store %struct.Memory* %call_4323ab, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx,%rsi,8)	 RIP: 4323af	 Bytes: 4
  %loadMem_4323af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323af = call %struct.Memory* @routine_movq__rax____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323af)
  store %struct.Memory* %call_4323af, %struct.Memory** %MEMORY

  ; Code: .L_4323b3:	 RIP: 4323b3	 Bytes: 0
  br label %block_.L_4323b3
block_.L_4323b3:

  ; Code: jmpq .L_4323b8	 RIP: 4323b3	 Bytes: 5
  %loadMem_4323b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323b3 = call %struct.Memory* @routine_jmpq_.L_4323b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323b3, i64 5, i64 5)
  store %struct.Memory* %call_4323b3, %struct.Memory** %MEMORY

  br label %block_.L_4323b8

  ; Code: .L_4323b8:	 RIP: 4323b8	 Bytes: 0
block_.L_4323b8:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 4323b8	 Bytes: 3
  %loadMem_4323b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323b8 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323b8)
  store %struct.Memory* %call_4323b8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4323bb	 Bytes: 3
  %loadMem_4323bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323bb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323bb)
  store %struct.Memory* %call_4323bb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 4323be	 Bytes: 3
  %loadMem_4323be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323be = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323be)
  store %struct.Memory* %call_4323be, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43230e	 RIP: 4323c1	 Bytes: 5
  %loadMem_4323c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323c1 = call %struct.Memory* @routine_jmpq_.L_43230e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323c1, i64 -179, i64 5)
  store %struct.Memory* %call_4323c1, %struct.Memory** %MEMORY

  br label %block_.L_43230e

  ; Code: .L_4323c6:	 RIP: 4323c6	 Bytes: 0
block_.L_4323c6:

  ; Code: movl $0x1, -0x14(%rbp)	 RIP: 4323c6	 Bytes: 7
  %loadMem_4323c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323c6 = call %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323c6)
  store %struct.Memory* %call_4323c6, %struct.Memory** %MEMORY

  ; Code: .L_4323cd:	 RIP: 4323cd	 Bytes: 0
  br label %block_.L_4323cd
block_.L_4323cd:

  ; Code: cmpl $0x18, -0x14(%rbp)	 RIP: 4323cd	 Bytes: 4
  %loadMem_4323cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323cd = call %struct.Memory* @routine_cmpl__0x18__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323cd)
  store %struct.Memory* %call_4323cd, %struct.Memory** %MEMORY

  ; Code: jge .L_43244e	 RIP: 4323d1	 Bytes: 6
  %loadMem_4323d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323d1 = call %struct.Memory* @routine_jge_.L_43244e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323d1, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_4323d1, %struct.Memory** %MEMORY

  %loadBr_4323d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4323d1 = icmp eq i8 %loadBr_4323d1, 1
  br i1 %cmpBr_4323d1, label %block_.L_43244e, label %block_4323d7

block_4323d7:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4323d7	 Bytes: 4
  %loadMem_4323d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323d7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323d7)
  store %struct.Memory* %call_4323d7, %struct.Memory** %MEMORY

  ; Code: movq 0x140(%rax), %rax	 RIP: 4323db	 Bytes: 7
  %loadMem_4323db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323db = call %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323db)
  store %struct.Memory* %call_4323db, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4323e2	 Bytes: 3
  %loadMem_4323e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323e2 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323e2)
  store %struct.Memory* %call_4323e2, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 4323e5	 Bytes: 3
  %loadMem_4323e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323e5 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323e5)
  store %struct.Memory* %call_4323e5, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 4323e8	 Bytes: 3
  %loadMem_4323e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323e8 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323e8)
  store %struct.Memory* %call_4323e8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4323eb	 Bytes: 3
  %loadMem_4323eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323eb = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323eb)
  store %struct.Memory* %call_4323eb, %struct.Memory** %MEMORY

  ; Code: imull %edx, %ecx	 RIP: 4323ee	 Bytes: 3
  %loadMem_4323ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323ee = call %struct.Memory* @routine_imull__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323ee)
  store %struct.Memory* %call_4323ee, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4323f1	 Bytes: 3
  %loadMem_4323f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323f1 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323f1)
  store %struct.Memory* %call_4323f1, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rsi	 RIP: 4323f4	 Bytes: 4
  %loadMem_4323f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323f4 = call %struct.Memory* @routine_shlq__0x2___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323f4)
  store %struct.Memory* %call_4323f4, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 4323f8	 Bytes: 3
  %loadMem_4323f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323f8 = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323f8)
  store %struct.Memory* %call_4323f8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 4323fb	 Bytes: 4
  %loadMem_4323fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323fb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323fb)
  store %struct.Memory* %call_4323fb, %struct.Memory** %MEMORY

  ; Code: movq 0x140(%rsi), %rsi	 RIP: 4323ff	 Bytes: 7
  %loadMem_4323ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4323ff = call %struct.Memory* @routine_movq_0x140__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4323ff)
  store %struct.Memory* %call_4323ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdi	 RIP: 432406	 Bytes: 4
  %loadMem_432406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432406 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432406)
  store %struct.Memory* %call_432406, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rsi,%rdi,8)	 RIP: 43240a	 Bytes: 4
  %loadMem_43240a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43240a = call %struct.Memory* @routine_movq__rax____rsi__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43240a)
  store %struct.Memory* %call_43240a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43240e	 Bytes: 4
  %loadMem_43240e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43240e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43240e)
  store %struct.Memory* %call_43240e, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rax), %rax	 RIP: 432412	 Bytes: 7
  %loadMem_432412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432412 = call %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432412)
  store %struct.Memory* %call_432412, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 432419	 Bytes: 3
  %loadMem_432419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432419 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432419)
  store %struct.Memory* %call_432419, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 43241c	 Bytes: 3
  %loadMem_43241c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43241c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43241c)
  store %struct.Memory* %call_43241c, %struct.Memory** %MEMORY

  ; Code: imull -0xc(%rbp), %ecx	 RIP: 43241f	 Bytes: 4
  %loadMem_43241f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43241f = call %struct.Memory* @routine_imull_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43241f)
  store %struct.Memory* %call_43241f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 432423	 Bytes: 3
  %loadMem_432423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432423 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432423)
  store %struct.Memory* %call_432423, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rsi	 RIP: 432426	 Bytes: 4
  %loadMem_432426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432426 = call %struct.Memory* @routine_shlq__0x2___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432426)
  store %struct.Memory* %call_432426, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 43242a	 Bytes: 3
  %loadMem_43242a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43242a = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43242a)
  store %struct.Memory* %call_43242a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 43242d	 Bytes: 4
  %loadMem_43242d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43242d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43242d)
  store %struct.Memory* %call_43242d, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rsi), %rsi	 RIP: 432431	 Bytes: 7
  %loadMem_432431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432431 = call %struct.Memory* @routine_movq_0x148__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432431)
  store %struct.Memory* %call_432431, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdi	 RIP: 432438	 Bytes: 4
  %loadMem_432438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432438 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432438)
  store %struct.Memory* %call_432438, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rsi,%rdi,8)	 RIP: 43243c	 Bytes: 4
  %loadMem_43243c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43243c = call %struct.Memory* @routine_movq__rax____rsi__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43243c)
  store %struct.Memory* %call_43243c, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 432440	 Bytes: 3
  %loadMem_432440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432440 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432440)
  store %struct.Memory* %call_432440, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 432443	 Bytes: 3
  %loadMem_432443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432443 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432443)
  store %struct.Memory* %call_432443, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 432446	 Bytes: 3
  %loadMem_432446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432446 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432446)
  store %struct.Memory* %call_432446, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4323cd	 RIP: 432449	 Bytes: 5
  %loadMem_432449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432449 = call %struct.Memory* @routine_jmpq_.L_4323cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432449, i64 -124, i64 5)
  store %struct.Memory* %call_432449, %struct.Memory** %MEMORY

  br label %block_.L_4323cd

  ; Code: .L_43244e:	 RIP: 43244e	 Bytes: 0
block_.L_43244e:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 43244e	 Bytes: 7
  %loadMem_43244e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43244e = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43244e)
  store %struct.Memory* %call_43244e, %struct.Memory** %MEMORY

  ; Code: .L_432455:	 RIP: 432455	 Bytes: 0
  br label %block_.L_432455
block_.L_432455:

  ; Code: cmpl $0x7, -0x14(%rbp)	 RIP: 432455	 Bytes: 4
  %loadMem_432455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432455 = call %struct.Memory* @routine_cmpl__0x7__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432455)
  store %struct.Memory* %call_432455, %struct.Memory** %MEMORY

  ; Code: jge .L_43249f	 RIP: 432459	 Bytes: 6
  %loadMem_432459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432459 = call %struct.Memory* @routine_jge_.L_43249f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432459, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_432459, %struct.Memory** %MEMORY

  %loadBr_432459 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432459 = icmp eq i8 %loadBr_432459, 1
  br i1 %cmpBr_432459, label %block_.L_43249f, label %block_43245f

block_43245f:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43245f	 Bytes: 4
  %loadMem_43245f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43245f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43245f)
  store %struct.Memory* %call_43245f, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 432463	 Bytes: 7
  %loadMem_432463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432463 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432463)
  store %struct.Memory* %call_432463, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 43246a	 Bytes: 3
  %loadMem_43246a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43246a = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43246a)
  store %struct.Memory* %call_43246a, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 43246d	 Bytes: 3
  %loadMem_43246d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43246d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43246d)
  store %struct.Memory* %call_43246d, %struct.Memory** %MEMORY

  ; Code: imull -0xc(%rbp), %ecx	 RIP: 432470	 Bytes: 4
  %loadMem_432470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432470 = call %struct.Memory* @routine_imull_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432470)
  store %struct.Memory* %call_432470, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 432474	 Bytes: 3
  %loadMem_432474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432474 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432474)
  store %struct.Memory* %call_432474, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rdx	 RIP: 432477	 Bytes: 4
  %loadMem_432477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432477 = call %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432477)
  store %struct.Memory* %call_432477, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 43247b	 Bytes: 3
  %loadMem_43247b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43247b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43247b)
  store %struct.Memory* %call_43247b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43247e	 Bytes: 4
  %loadMem_43247e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43247e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43247e)
  store %struct.Memory* %call_43247e, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rdx), %rdx	 RIP: 432482	 Bytes: 7
  %loadMem_432482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432482 = call %struct.Memory* @routine_movq_0x138__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432482)
  store %struct.Memory* %call_432482, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rsi	 RIP: 432489	 Bytes: 4
  %loadMem_432489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432489 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432489)
  store %struct.Memory* %call_432489, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx,%rsi,8)	 RIP: 43248d	 Bytes: 4
  %loadMem_43248d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43248d = call %struct.Memory* @routine_movq__rax____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43248d)
  store %struct.Memory* %call_43248d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 432491	 Bytes: 3
  %loadMem_432491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432491 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432491)
  store %struct.Memory* %call_432491, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 432494	 Bytes: 3
  %loadMem_432494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432494 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432494)
  store %struct.Memory* %call_432494, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 432497	 Bytes: 3
  %loadMem_432497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432497 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432497)
  store %struct.Memory* %call_432497, %struct.Memory** %MEMORY

  ; Code: jmpq .L_432455	 RIP: 43249a	 Bytes: 5
  %loadMem_43249a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43249a = call %struct.Memory* @routine_jmpq_.L_432455(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43249a, i64 -69, i64 5)
  store %struct.Memory* %call_43249a, %struct.Memory** %MEMORY

  br label %block_.L_432455

  ; Code: .L_43249f:	 RIP: 43249f	 Bytes: 0
block_.L_43249f:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 43249f	 Bytes: 7
  %loadMem_43249f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43249f = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43249f)
  store %struct.Memory* %call_43249f, %struct.Memory** %MEMORY

  ; Code: .L_4324a6:	 RIP: 4324a6	 Bytes: 0
  br label %block_.L_4324a6
block_.L_4324a6:

  ; Code: cmpl $0x7, -0x14(%rbp)	 RIP: 4324a6	 Bytes: 4
  %loadMem_4324a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324a6 = call %struct.Memory* @routine_cmpl__0x7__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324a6)
  store %struct.Memory* %call_4324a6, %struct.Memory** %MEMORY

  ; Code: jge .L_4324d7	 RIP: 4324aa	 Bytes: 6
  %loadMem_4324aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324aa = call %struct.Memory* @routine_jge_.L_4324d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324aa, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_4324aa, %struct.Memory** %MEMORY

  %loadBr_4324aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4324aa = icmp eq i8 %loadBr_4324aa, 1
  br i1 %cmpBr_4324aa, label %block_.L_4324d7, label %block_4324b0

block_4324b0:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4324b0	 Bytes: 4
  %loadMem_4324b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324b0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324b0)
  store %struct.Memory* %call_4324b0, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 4324b4	 Bytes: 7
  %loadMem_4324b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324b4 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324b4)
  store %struct.Memory* %call_4324b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 4324bb	 Bytes: 4
  %loadMem_4324bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324bb = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324bb)
  store %struct.Memory* %call_4324bb, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4324bf	 Bytes: 4
  %loadMem_4324bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324bf = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324bf)
  store %struct.Memory* %call_4324bf, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax)	 RIP: 4324c3	 Bytes: 6
  %loadMem_4324c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324c3 = call %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324c3)
  store %struct.Memory* %call_4324c3, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4324c9	 Bytes: 3
  %loadMem_4324c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324c9 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324c9)
  store %struct.Memory* %call_4324c9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4324cc	 Bytes: 3
  %loadMem_4324cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324cc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324cc)
  store %struct.Memory* %call_4324cc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 4324cf	 Bytes: 3
  %loadMem_4324cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324cf = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324cf)
  store %struct.Memory* %call_4324cf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4324a6	 RIP: 4324d2	 Bytes: 5
  %loadMem_4324d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324d2 = call %struct.Memory* @routine_jmpq_.L_4324a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324d2, i64 -44, i64 5)
  store %struct.Memory* %call_4324d2, %struct.Memory** %MEMORY

  br label %block_.L_4324a6

  ; Code: .L_4324d7:	 RIP: 4324d7	 Bytes: 0
block_.L_4324d7:

  ; Code: movq $0x4590ec, %rdi	 RIP: 4324d7	 Bytes: 10
  %loadMem_4324d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324d7 = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324d7)
  store %struct.Memory* %call_4324d7, %struct.Memory** %MEMORY

  ; Code: movl $0x9d, %esi	 RIP: 4324e1	 Bytes: 5
  %loadMem_4324e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324e1 = call %struct.Memory* @routine_movl__0x9d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324e1)
  store %struct.Memory* %call_4324e1, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4324e6	 Bytes: 3
  %loadMem_4324e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324e6 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324e6)
  store %struct.Memory* %call_4324e6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4324e9	 Bytes: 3
  %loadMem_4324e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324e9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324e9)
  store %struct.Memory* %call_4324e9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4324ec	 Bytes: 3
  %loadMem_4324ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324ec = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324ec)
  store %struct.Memory* %call_4324ec, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 4324ef	 Bytes: 4
  %loadMem_4324ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324ef = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324ef)
  store %struct.Memory* %call_4324ef, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 4324f3	 Bytes: 3
  %loadMem_4324f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324f3 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324f3)
  store %struct.Memory* %call_4324f3, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 4324f6	 Bytes: 5
  %loadMem1_4324f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4324f6 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4324f6, i64 80746, i64 5, i64 5)
  store %struct.Memory* %call1_4324f6, %struct.Memory** %MEMORY

  %loadMem2_4324f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4324f6 = load i64, i64* %3
  %call2_4324f6 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_4324f6, %struct.Memory* %loadMem2_4324f6)
  store %struct.Memory* %call2_4324f6, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 4324fb	 Bytes: 10
  %loadMem_4324fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4324fb = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4324fb)
  store %struct.Memory* %call_4324fb, %struct.Memory** %MEMORY

  ; Code: movl $0x9e, %esi	 RIP: 432505	 Bytes: 5
  %loadMem_432505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432505 = call %struct.Memory* @routine_movl__0x9e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432505)
  store %struct.Memory* %call_432505, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43250a	 Bytes: 4
  %loadMem_43250a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43250a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43250a)
  store %struct.Memory* %call_43250a, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xd0(%rcx)	 RIP: 43250e	 Bytes: 7
  %loadMem_43250e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43250e = call %struct.Memory* @routine_movq__rax__0xd0__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43250e)
  store %struct.Memory* %call_43250e, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %r8d	 RIP: 432515	 Bytes: 4
  %loadMem_432515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432515 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432515)
  store %struct.Memory* %call_432515, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 432519	 Bytes: 4
  %loadMem_432519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432519 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432519)
  store %struct.Memory* %call_432519, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rax	 RIP: 43251d	 Bytes: 3
  %loadMem_43251d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43251d = call %struct.Memory* @routine_movslq__r8d___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43251d)
  store %struct.Memory* %call_43251d, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 432520	 Bytes: 4
  %loadMem_432520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432520 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432520)
  store %struct.Memory* %call_432520, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 432524	 Bytes: 3
  %loadMem_432524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432524 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432524)
  store %struct.Memory* %call_432524, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 432527	 Bytes: 5
  %loadMem1_432527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432527 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432527, i64 80697, i64 5, i64 5)
  store %struct.Memory* %call1_432527, %struct.Memory** %MEMORY

  %loadMem2_432527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432527 = load i64, i64* %3
  %call2_432527 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_432527, %struct.Memory* %loadMem2_432527)
  store %struct.Memory* %call2_432527, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 43252c	 Bytes: 10
  %loadMem_43252c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43252c = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43252c)
  store %struct.Memory* %call_43252c, %struct.Memory** %MEMORY

  ; Code: movl $0xa0, %esi	 RIP: 432536	 Bytes: 5
  %loadMem_432536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432536 = call %struct.Memory* @routine_movl__0xa0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432536)
  store %struct.Memory* %call_432536, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43253b	 Bytes: 4
  %loadMem_43253b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43253b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43253b)
  store %struct.Memory* %call_43253b, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xd8(%rcx)	 RIP: 43253f	 Bytes: 7
  %loadMem_43253f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43253f = call %struct.Memory* @routine_movq__rax__0xd8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43253f)
  store %struct.Memory* %call_43253f, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %r8d	 RIP: 432546	 Bytes: 4
  %loadMem_432546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432546 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432546)
  store %struct.Memory* %call_432546, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 43254a	 Bytes: 4
  %loadMem_43254a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43254a = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43254a)
  store %struct.Memory* %call_43254a, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rax	 RIP: 43254e	 Bytes: 3
  %loadMem_43254e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43254e = call %struct.Memory* @routine_movslq__r8d___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43254e)
  store %struct.Memory* %call_43254e, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 432551	 Bytes: 4
  %loadMem_432551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432551 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432551)
  store %struct.Memory* %call_432551, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 432555	 Bytes: 3
  %loadMem_432555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432555 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432555)
  store %struct.Memory* %call_432555, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 432558	 Bytes: 5
  %loadMem1_432558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432558 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432558, i64 80648, i64 5, i64 5)
  store %struct.Memory* %call1_432558, %struct.Memory** %MEMORY

  %loadMem2_432558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432558 = load i64, i64* %3
  %call2_432558 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_432558, %struct.Memory* %loadMem2_432558)
  store %struct.Memory* %call2_432558, %struct.Memory** %MEMORY

  ; Code: movq $0x4590ec, %rdi	 RIP: 43255d	 Bytes: 10
  %loadMem_43255d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43255d = call %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43255d)
  store %struct.Memory* %call_43255d, %struct.Memory** %MEMORY

  ; Code: movl $0xa1, %esi	 RIP: 432567	 Bytes: 5
  %loadMem_432567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432567 = call %struct.Memory* @routine_movl__0xa1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432567)
  store %struct.Memory* %call_432567, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43256c	 Bytes: 4
  %loadMem_43256c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43256c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43256c)
  store %struct.Memory* %call_43256c, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x198(%rcx)	 RIP: 432570	 Bytes: 7
  %loadMem_432570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432570 = call %struct.Memory* @routine_movq__rax__0x198__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432570)
  store %struct.Memory* %call_432570, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %r8d	 RIP: 432577	 Bytes: 4
  %loadMem_432577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432577 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432577)
  store %struct.Memory* %call_432577, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 43257b	 Bytes: 4
  %loadMem_43257b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43257b = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43257b)
  store %struct.Memory* %call_43257b, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rax	 RIP: 43257f	 Bytes: 3
  %loadMem_43257f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43257f = call %struct.Memory* @routine_movslq__r8d___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43257f)
  store %struct.Memory* %call_43257f, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 432582	 Bytes: 4
  %loadMem_432582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432582 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432582)
  store %struct.Memory* %call_432582, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 432586	 Bytes: 3
  %loadMem_432586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432586 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432586)
  store %struct.Memory* %call_432586, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 432589	 Bytes: 5
  %loadMem1_432589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432589 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432589, i64 80599, i64 5, i64 5)
  store %struct.Memory* %call1_432589, %struct.Memory** %MEMORY

  %loadMem2_432589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432589 = load i64, i64* %3
  %call2_432589 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_432589, %struct.Memory* %loadMem2_432589)
  store %struct.Memory* %call2_432589, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43258e	 Bytes: 4
  %loadMem_43258e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43258e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43258e)
  store %struct.Memory* %call_43258e, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x1a0(%rcx)	 RIP: 432592	 Bytes: 7
  %loadMem_432592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432592 = call %struct.Memory* @routine_movq__rax__0x1a0__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432592)
  store %struct.Memory* %call_432592, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 432599	 Bytes: 4
  %loadMem_432599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432599 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432599)
  store %struct.Memory* %call_432599, %struct.Memory** %MEMORY

  ; Code: movq 0x198(%rax), %rax	 RIP: 43259d	 Bytes: 7
  %loadMem_43259d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43259d = call %struct.Memory* @routine_movq_0x198__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43259d)
  store %struct.Memory* %call_43259d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4325a4	 Bytes: 4
  %loadMem_4325a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325a4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325a4)
  store %struct.Memory* %call_4325a4, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x170(%rcx)	 RIP: 4325a8	 Bytes: 7
  %loadMem_4325a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325a8 = call %struct.Memory* @routine_movq__rax__0x170__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325a8)
  store %struct.Memory* %call_4325a8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4325af	 Bytes: 4
  %loadMem_4325af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325af = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325af)
  store %struct.Memory* %call_4325af, %struct.Memory** %MEMORY

  ; Code: movq 0x1a0(%rax), %rax	 RIP: 4325b3	 Bytes: 7
  %loadMem_4325b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325b3 = call %struct.Memory* @routine_movq_0x1a0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325b3)
  store %struct.Memory* %call_4325b3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4325ba	 Bytes: 4
  %loadMem_4325ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325ba = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325ba)
  store %struct.Memory* %call_4325ba, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x178(%rcx)	 RIP: 4325be	 Bytes: 7
  %loadMem_4325be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325be = call %struct.Memory* @routine_movq__rax__0x178__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325be)
  store %struct.Memory* %call_4325be, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rsp	 RIP: 4325c5	 Bytes: 4
  %loadMem_4325c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325c5 = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325c5)
  store %struct.Memory* %call_4325c5, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4325c9	 Bytes: 1
  %loadMem_4325c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325c9 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325c9)
  store %struct.Memory* %call_4325c9, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4325ca	 Bytes: 1
  %loadMem_4325ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325ca = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325ca)
  store %struct.Memory* %call_4325ca, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4325ca
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

define %struct.Memory* @routine_movq__0x4590ec___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4590ec_type* @G__0x4590ec to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x6f___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 111)
  ret %struct.Memory* %11
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__esi__0x88__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 136
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_addl__0x2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 2)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__esi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_shlq__0x0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__ecx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_callq_.sre_malloc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4590ec_type* @G__0x4590ec to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x70___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 112)
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


define %struct.Memory* @routine_movq__rax__0x18__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 24
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_addl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__ecx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 0)
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






define %struct.Memory* @routine_movl__0x71___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 113)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0x20__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 32
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_movl__0x72___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 114)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0x28__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 40
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_shlq__0x2___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movl__0x74___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 116)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0x48__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 72
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x3___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 3)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movl__0x75___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 117)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0x90__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 144
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_movl__0x76___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 118)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0x98__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 152
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_movl__0x77___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 119)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0xa0__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 160
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_imull__0x7__MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13, i64 7)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl__0x78___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 120)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_0x90__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_imull__0x14___ecx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13, i64 20)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl__0x79___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 121)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_0x98__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_imull__0x14__MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13, i64 20)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl__0x7b___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 123)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x38___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 56)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__ecx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0xa0__r8____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax____r8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__0x7c___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 124)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xc0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 192)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__rax__0x138__r8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 312
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__0x7d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 125)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movq__rax__0x140__r8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 320
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__0x7e___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 126)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0x148__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 328
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_movl__0x7f___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 127)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0x180__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 384
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_imull__0x18___ecx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13, i64 24)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl__0x80___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 128)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0x188__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 392
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_imull__0x18__MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13, i64 24)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movq__rax__0x190__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 400
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_0x180__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 384
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq_0x138__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movq_0x188__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 392
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq_0x140__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movq_0x190__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq_0x148__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jg_.L_4323c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq___rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_imull__0x14__MINUS0x10__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13, i64 20)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_shlq__0x2___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2)
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






define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax____rdx__rsi_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 12
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

define %struct.Memory* @routine_jge_.L_4323b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movq_0xa0__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_imull__0x7__MINUS0x10__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13, i64 7)
  ret %struct.Memory* %16
}















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4323b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43230e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_cmpl__0x18__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 24)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_43244e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_imull__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x2___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rsi___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
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


define %struct.Memory* @routine_movq_0x140__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax____rsi__rdi_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6
  %8 = shl i64 %3, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %7 to i64
  %11 = mul  i64 %10, %9
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

define %struct.Memory* @routine_imull_MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq_0x148__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_4323cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x7__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_43249f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


















define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jmpq_.L_432455(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_4324d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 -987654321)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jmpq_.L_4324a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x9d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 157)
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_movl__0x9e___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 158)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__0xd0__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 208
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl__0x1___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
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










define %struct.Memory* @routine_movl__0xa0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 160)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0xd8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 216
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_movl__0xa1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 161)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0x198__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 408
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_movq__rax__0x1a0__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 416
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x198__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 408
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__rax__0x170__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 368
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x1a0__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 416
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__rax__0x178__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 376
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

