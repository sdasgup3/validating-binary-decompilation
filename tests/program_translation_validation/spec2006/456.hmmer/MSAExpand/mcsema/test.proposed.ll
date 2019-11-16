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

declare %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x27951__rip__type = type <{ [4 x i8] }>
@G_0x27951__rip_= global %G_0x27951__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45882f_type = type <{ [8 x i8] }>
@G__0x45882f= global %G__0x45882f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @MSAExpand(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .MSAExpand:	 RIP: 42cb00	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 42cb00	 Bytes: 1
  %loadMem_42cb00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb00 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb00)
  store %struct.Memory* %call_42cb00, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 42cb01	 Bytes: 3
  %loadMem_42cb01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb01 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb01)
  store %struct.Memory* %call_42cb01, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 42cb04	 Bytes: 4
  %loadMem_42cb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb04 = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb04)
  store %struct.Memory* %call_42cb04, %struct.Memory** %MEMORY

  ; Code: movq $0x45882f, %rax	 RIP: 42cb08	 Bytes: 10
  %loadMem_42cb08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb08 = call %struct.Memory* @routine_movq__0x45882f___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb08)
  store %struct.Memory* %call_42cb08, %struct.Memory** %MEMORY

  ; Code: movl $0xa2, %esi	 RIP: 42cb12	 Bytes: 5
  %loadMem_42cb12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb12 = call %struct.Memory* @routine_movl__0xa2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb12)
  store %struct.Memory* %call_42cb12, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 42cb17	 Bytes: 4
  %loadMem_42cb17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb17 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb17)
  store %struct.Memory* %call_42cb17, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42cb1b	 Bytes: 4
  %loadMem_42cb1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb1b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb1b)
  store %struct.Memory* %call_42cb1b, %struct.Memory** %MEMORY

  ; Code: movl 0x144(%rdi), %ecx	 RIP: 42cb1f	 Bytes: 6
  %loadMem_42cb1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb1f = call %struct.Memory* @routine_movl_0x144__rdi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb1f)
  store %struct.Memory* %call_42cb1f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42cb25	 Bytes: 4
  %loadMem_42cb25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb25 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb25)
  store %struct.Memory* %call_42cb25, %struct.Memory** %MEMORY

  ; Code: addl 0x140(%rdi), %ecx	 RIP: 42cb29	 Bytes: 6
  %loadMem_42cb29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb29 = call %struct.Memory* @routine_addl_0x140__rdi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb29)
  store %struct.Memory* %call_42cb29, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x140(%rdi)	 RIP: 42cb2f	 Bytes: 6
  %loadMem_42cb2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb2f = call %struct.Memory* @routine_movl__ecx__0x140__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb2f)
  store %struct.Memory* %call_42cb2f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42cb35	 Bytes: 4
  %loadMem_42cb35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb35 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb35)
  store %struct.Memory* %call_42cb35, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 42cb39	 Bytes: 3
  %loadMem_42cb39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb39 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb39)
  store %struct.Memory* %call_42cb39, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 42cb3c	 Bytes: 4
  %loadMem_42cb3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb3c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb3c)
  store %struct.Memory* %call_42cb3c, %struct.Memory** %MEMORY

  ; Code: movslq 0x140(%rdx), %rdx	 RIP: 42cb40	 Bytes: 7
  %loadMem_42cb40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb40 = call %struct.Memory* @routine_movslq_0x140__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb40)
  store %struct.Memory* %call_42cb40, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 42cb47	 Bytes: 4
  %loadMem_42cb47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb47 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb47)
  store %struct.Memory* %call_42cb47, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x18(%rbp)	 RIP: 42cb4b	 Bytes: 4
  %loadMem_42cb4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb4b = call %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb4b)
  store %struct.Memory* %call_42cb4b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 42cb4f	 Bytes: 3
  %loadMem_42cb4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb4f = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb4f)
  store %struct.Memory* %call_42cb4f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 42cb52	 Bytes: 4
  %loadMem_42cb52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb52 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb52)
  store %struct.Memory* %call_42cb52, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x20(%rbp)	 RIP: 42cb56	 Bytes: 4
  %loadMem_42cb56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb56 = call %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb56)
  store %struct.Memory* %call_42cb56, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42cb5a	 Bytes: 3
  %loadMem_42cb5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb5a = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb5a)
  store %struct.Memory* %call_42cb5a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 42cb5d	 Bytes: 4
  %loadMem_42cb5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb5d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb5d)
  store %struct.Memory* %call_42cb5d, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 42cb61	 Bytes: 5
  %loadMem1_42cb61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42cb61 = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42cb61, i64 103759, i64 5, i64 5)
  store %struct.Memory* %call1_42cb61, %struct.Memory** %MEMORY

  %loadMem2_42cb61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cb61 = load i64, i64* %3
  %call2_42cb61 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_42cb61, %struct.Memory* %loadMem2_42cb61)
  store %struct.Memory* %call2_42cb61, %struct.Memory** %MEMORY

  ; Code: movq $0x45882f, %rdi	 RIP: 42cb66	 Bytes: 10
  %loadMem_42cb66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb66 = call %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb66)
  store %struct.Memory* %call_42cb66, %struct.Memory** %MEMORY

  ; Code: movl $0xa3, %esi	 RIP: 42cb70	 Bytes: 5
  %loadMem_42cb70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb70 = call %struct.Memory* @routine_movl__0xa3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb70)
  store %struct.Memory* %call_42cb70, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cb75	 Bytes: 4
  %loadMem_42cb75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb75 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb75)
  store %struct.Memory* %call_42cb75, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 42cb79	 Bytes: 3
  %loadMem_42cb79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb79 = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb79)
  store %struct.Memory* %call_42cb79, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cb7c	 Bytes: 4
  %loadMem_42cb7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb7c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb7c)
  store %struct.Memory* %call_42cb7c, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42cb80	 Bytes: 4
  %loadMem_42cb80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb80 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb80)
  store %struct.Memory* %call_42cb80, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cb84	 Bytes: 4
  %loadMem_42cb84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb84 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb84)
  store %struct.Memory* %call_42cb84, %struct.Memory** %MEMORY

  ; Code: movslq 0x140(%rcx), %rcx	 RIP: 42cb88	 Bytes: 7
  %loadMem_42cb88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb88 = call %struct.Memory* @routine_movslq_0x140__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb88)
  store %struct.Memory* %call_42cb88, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rcx	 RIP: 42cb8f	 Bytes: 4
  %loadMem_42cb8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb8f = call %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb8f)
  store %struct.Memory* %call_42cb8f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42cb93	 Bytes: 3
  %loadMem_42cb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb93 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb93)
  store %struct.Memory* %call_42cb93, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 42cb96	 Bytes: 5
  %loadMem1_42cb96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42cb96 = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42cb96, i64 103706, i64 5, i64 5)
  store %struct.Memory* %call1_42cb96, %struct.Memory** %MEMORY

  %loadMem2_42cb96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cb96 = load i64, i64* %3
  %call2_42cb96 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_42cb96, %struct.Memory* %loadMem2_42cb96)
  store %struct.Memory* %call2_42cb96, %struct.Memory** %MEMORY

  ; Code: movq $0x45882f, %rdi	 RIP: 42cb9b	 Bytes: 10
  %loadMem_42cb9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cb9b = call %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cb9b)
  store %struct.Memory* %call_42cb9b, %struct.Memory** %MEMORY

  ; Code: movl $0xa4, %esi	 RIP: 42cba5	 Bytes: 5
  %loadMem_42cba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cba5 = call %struct.Memory* @routine_movl__0xa4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cba5)
  store %struct.Memory* %call_42cba5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cbaa	 Bytes: 4
  %loadMem_42cbaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbaa = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbaa)
  store %struct.Memory* %call_42cbaa, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8(%rcx)	 RIP: 42cbae	 Bytes: 4
  %loadMem_42cbae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbae = call %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbae)
  store %struct.Memory* %call_42cbae, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cbb2	 Bytes: 4
  %loadMem_42cbb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbb2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbb2)
  store %struct.Memory* %call_42cbb2, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rax), %rax	 RIP: 42cbb6	 Bytes: 7
  %loadMem_42cbb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbb6 = call %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbb6)
  store %struct.Memory* %call_42cbb6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cbbd	 Bytes: 4
  %loadMem_42cbbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbbd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbbd)
  store %struct.Memory* %call_42cbbd, %struct.Memory** %MEMORY

  ; Code: movslq 0x140(%rcx), %rcx	 RIP: 42cbc1	 Bytes: 7
  %loadMem_42cbc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbc1 = call %struct.Memory* @routine_movslq_0x140__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbc1)
  store %struct.Memory* %call_42cbc1, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rcx	 RIP: 42cbc8	 Bytes: 4
  %loadMem_42cbc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbc8 = call %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbc8)
  store %struct.Memory* %call_42cbc8, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42cbcc	 Bytes: 3
  %loadMem_42cbcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbcc = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbcc)
  store %struct.Memory* %call_42cbcc, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 42cbcf	 Bytes: 5
  %loadMem1_42cbcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42cbcf = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42cbcf, i64 103649, i64 5, i64 5)
  store %struct.Memory* %call1_42cbcf, %struct.Memory** %MEMORY

  %loadMem2_42cbcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cbcf = load i64, i64* %3
  %call2_42cbcf = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_42cbcf, %struct.Memory* %loadMem2_42cbcf)
  store %struct.Memory* %call2_42cbcf, %struct.Memory** %MEMORY

  ; Code: movq $0x45882f, %rdi	 RIP: 42cbd4	 Bytes: 10
  %loadMem_42cbd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbd4 = call %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbd4)
  store %struct.Memory* %call_42cbd4, %struct.Memory** %MEMORY

  ; Code: movl $0xa5, %esi	 RIP: 42cbde	 Bytes: 5
  %loadMem_42cbde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbde = call %struct.Memory* @routine_movl__0xa5___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbde)
  store %struct.Memory* %call_42cbde, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cbe3	 Bytes: 4
  %loadMem_42cbe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbe3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbe3)
  store %struct.Memory* %call_42cbe3, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x148(%rcx)	 RIP: 42cbe7	 Bytes: 7
  %loadMem_42cbe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbe7 = call %struct.Memory* @routine_movq__rax__0x148__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbe7)
  store %struct.Memory* %call_42cbe7, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cbee	 Bytes: 4
  %loadMem_42cbee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbee = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbee)
  store %struct.Memory* %call_42cbee, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42cbf2	 Bytes: 4
  %loadMem_42cbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbf2 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbf2)
  store %struct.Memory* %call_42cbf2, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cbf6	 Bytes: 4
  %loadMem_42cbf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbf6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbf6)
  store %struct.Memory* %call_42cbf6, %struct.Memory** %MEMORY

  ; Code: movslq 0x140(%rcx), %rcx	 RIP: 42cbfa	 Bytes: 7
  %loadMem_42cbfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cbfa = call %struct.Memory* @routine_movslq_0x140__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cbfa)
  store %struct.Memory* %call_42cbfa, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 42cc01	 Bytes: 4
  %loadMem_42cc01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc01 = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc01)
  store %struct.Memory* %call_42cc01, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42cc05	 Bytes: 3
  %loadMem_42cc05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc05 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc05)
  store %struct.Memory* %call_42cc05, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 42cc08	 Bytes: 5
  %loadMem1_42cc08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42cc08 = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42cc08, i64 103592, i64 5, i64 5)
  store %struct.Memory* %call1_42cc08, %struct.Memory** %MEMORY

  %loadMem2_42cc08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cc08 = load i64, i64* %3
  %call2_42cc08 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_42cc08, %struct.Memory* %loadMem2_42cc08)
  store %struct.Memory* %call2_42cc08, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cc0d	 Bytes: 4
  %loadMem_42cc0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc0d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc0d)
  store %struct.Memory* %call_42cc0d, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 42cc11	 Bytes: 4
  %loadMem_42cc11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc11 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc11)
  store %struct.Memory* %call_42cc11, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cc15	 Bytes: 4
  %loadMem_42cc15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc15 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc15)
  store %struct.Memory* %call_42cc15, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x70(%rax)	 RIP: 42cc19	 Bytes: 5
  %loadMem_42cc19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc19 = call %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc19)
  store %struct.Memory* %call_42cc19, %struct.Memory** %MEMORY

  ; Code: je .L_42cc96	 RIP: 42cc1e	 Bytes: 6
  %loadMem_42cc1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc1e = call %struct.Memory* @routine_je_.L_42cc96(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc1e, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_42cc1e, %struct.Memory** %MEMORY

  %loadBr_42cc1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cc1e = icmp eq i8 %loadBr_42cc1e, 1
  br i1 %cmpBr_42cc1e, label %block_.L_42cc96, label %block_42cc24

block_42cc24:
  ; Code: movq $0x45882f, %rdi	 RIP: 42cc24	 Bytes: 10
  %loadMem_42cc24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc24 = call %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc24)
  store %struct.Memory* %call_42cc24, %struct.Memory** %MEMORY

  ; Code: movl $0xa8, %esi	 RIP: 42cc2e	 Bytes: 5
  %loadMem_42cc2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc2e = call %struct.Memory* @routine_movl__0xa8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc2e)
  store %struct.Memory* %call_42cc2e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cc33	 Bytes: 4
  %loadMem_42cc33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc33 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc33)
  store %struct.Memory* %call_42cc33, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rax	 RIP: 42cc37	 Bytes: 4
  %loadMem_42cc37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc37 = call %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc37)
  store %struct.Memory* %call_42cc37, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cc3b	 Bytes: 4
  %loadMem_42cc3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc3b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc3b)
  store %struct.Memory* %call_42cc3b, %struct.Memory** %MEMORY

  ; Code: movslq 0x140(%rcx), %rcx	 RIP: 42cc3f	 Bytes: 7
  %loadMem_42cc3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc3f = call %struct.Memory* @routine_movslq_0x140__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc3f)
  store %struct.Memory* %call_42cc3f, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rcx	 RIP: 42cc46	 Bytes: 4
  %loadMem_42cc46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc46 = call %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc46)
  store %struct.Memory* %call_42cc46, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42cc4a	 Bytes: 3
  %loadMem_42cc4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc4a = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc4a)
  store %struct.Memory* %call_42cc4a, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 42cc4d	 Bytes: 5
  %loadMem1_42cc4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42cc4d = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42cc4d, i64 103523, i64 5, i64 5)
  store %struct.Memory* %call1_42cc4d, %struct.Memory** %MEMORY

  %loadMem2_42cc4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cc4d = load i64, i64* %3
  %call2_42cc4d = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_42cc4d, %struct.Memory* %loadMem2_42cc4d)
  store %struct.Memory* %call2_42cc4d, %struct.Memory** %MEMORY

  ; Code: movq $0x45882f, %rdi	 RIP: 42cc52	 Bytes: 10
  %loadMem_42cc52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc52 = call %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc52)
  store %struct.Memory* %call_42cc52, %struct.Memory** %MEMORY

  ; Code: movl $0xa9, %esi	 RIP: 42cc5c	 Bytes: 5
  %loadMem_42cc5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc5c = call %struct.Memory* @routine_movl__0xa9___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc5c)
  store %struct.Memory* %call_42cc5c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cc61	 Bytes: 4
  %loadMem_42cc61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc61 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc61)
  store %struct.Memory* %call_42cc61, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x70(%rcx)	 RIP: 42cc65	 Bytes: 4
  %loadMem_42cc65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc65 = call %struct.Memory* @routine_movq__rax__0x70__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc65)
  store %struct.Memory* %call_42cc65, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cc69	 Bytes: 4
  %loadMem_42cc69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc69 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc69)
  store %struct.Memory* %call_42cc69, %struct.Memory** %MEMORY

  ; Code: movq 0x150(%rax), %rax	 RIP: 42cc6d	 Bytes: 7
  %loadMem_42cc6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc6d = call %struct.Memory* @routine_movq_0x150__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc6d)
  store %struct.Memory* %call_42cc6d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cc74	 Bytes: 4
  %loadMem_42cc74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc74 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc74)
  store %struct.Memory* %call_42cc74, %struct.Memory** %MEMORY

  ; Code: movslq 0x140(%rcx), %rcx	 RIP: 42cc78	 Bytes: 7
  %loadMem_42cc78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc78 = call %struct.Memory* @routine_movslq_0x140__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc78)
  store %struct.Memory* %call_42cc78, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 42cc7f	 Bytes: 4
  %loadMem_42cc7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc7f = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc7f)
  store %struct.Memory* %call_42cc7f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42cc83	 Bytes: 3
  %loadMem_42cc83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc83 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc83)
  store %struct.Memory* %call_42cc83, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 42cc86	 Bytes: 5
  %loadMem1_42cc86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42cc86 = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42cc86, i64 103466, i64 5, i64 5)
  store %struct.Memory* %call1_42cc86, %struct.Memory** %MEMORY

  %loadMem2_42cc86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cc86 = load i64, i64* %3
  %call2_42cc86 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_42cc86, %struct.Memory* %loadMem2_42cc86)
  store %struct.Memory* %call2_42cc86, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cc8b	 Bytes: 4
  %loadMem_42cc8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc8b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc8b)
  store %struct.Memory* %call_42cc8b, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x150(%rcx)	 RIP: 42cc8f	 Bytes: 7
  %loadMem_42cc8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc8f = call %struct.Memory* @routine_movq__rax__0x150__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc8f)
  store %struct.Memory* %call_42cc8f, %struct.Memory** %MEMORY

  ; Code: .L_42cc96:	 RIP: 42cc96	 Bytes: 0
  br label %block_.L_42cc96
block_.L_42cc96:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cc96	 Bytes: 4
  %loadMem_42cc96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc96 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc96)
  store %struct.Memory* %call_42cc96, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x78(%rax)	 RIP: 42cc9a	 Bytes: 5
  %loadMem_42cc9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc9a = call %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc9a)
  store %struct.Memory* %call_42cc9a, %struct.Memory** %MEMORY

  ; Code: je .L_42cd17	 RIP: 42cc9f	 Bytes: 6
  %loadMem_42cc9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cc9f = call %struct.Memory* @routine_je_.L_42cd17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cc9f, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_42cc9f, %struct.Memory** %MEMORY

  %loadBr_42cc9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cc9f = icmp eq i8 %loadBr_42cc9f, 1
  br i1 %cmpBr_42cc9f, label %block_.L_42cd17, label %block_42cca5

block_42cca5:
  ; Code: movq $0x45882f, %rdi	 RIP: 42cca5	 Bytes: 10
  %loadMem_42cca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cca5 = call %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cca5)
  store %struct.Memory* %call_42cca5, %struct.Memory** %MEMORY

  ; Code: movl $0xac, %esi	 RIP: 42ccaf	 Bytes: 5
  %loadMem_42ccaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ccaf = call %struct.Memory* @routine_movl__0xac___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ccaf)
  store %struct.Memory* %call_42ccaf, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ccb4	 Bytes: 4
  %loadMem_42ccb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ccb4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ccb4)
  store %struct.Memory* %call_42ccb4, %struct.Memory** %MEMORY

  ; Code: movq 0x78(%rax), %rax	 RIP: 42ccb8	 Bytes: 4
  %loadMem_42ccb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ccb8 = call %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ccb8)
  store %struct.Memory* %call_42ccb8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42ccbc	 Bytes: 4
  %loadMem_42ccbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ccbc = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ccbc)
  store %struct.Memory* %call_42ccbc, %struct.Memory** %MEMORY

  ; Code: movslq 0x140(%rcx), %rcx	 RIP: 42ccc0	 Bytes: 7
  %loadMem_42ccc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ccc0 = call %struct.Memory* @routine_movslq_0x140__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ccc0)
  store %struct.Memory* %call_42ccc0, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rcx	 RIP: 42ccc7	 Bytes: 4
  %loadMem_42ccc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ccc7 = call %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ccc7)
  store %struct.Memory* %call_42ccc7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42cccb	 Bytes: 3
  %loadMem_42cccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cccb = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cccb)
  store %struct.Memory* %call_42cccb, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 42ccce	 Bytes: 5
  %loadMem1_42ccce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42ccce = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42ccce, i64 103394, i64 5, i64 5)
  store %struct.Memory* %call1_42ccce, %struct.Memory** %MEMORY

  %loadMem2_42ccce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ccce = load i64, i64* %3
  %call2_42ccce = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_42ccce, %struct.Memory* %loadMem2_42ccce)
  store %struct.Memory* %call2_42ccce, %struct.Memory** %MEMORY

  ; Code: movq $0x45882f, %rdi	 RIP: 42ccd3	 Bytes: 10
  %loadMem_42ccd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ccd3 = call %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ccd3)
  store %struct.Memory* %call_42ccd3, %struct.Memory** %MEMORY

  ; Code: movl $0xad, %esi	 RIP: 42ccdd	 Bytes: 5
  %loadMem_42ccdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ccdd = call %struct.Memory* @routine_movl__0xad___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ccdd)
  store %struct.Memory* %call_42ccdd, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cce2	 Bytes: 4
  %loadMem_42cce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cce2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cce2)
  store %struct.Memory* %call_42cce2, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x78(%rcx)	 RIP: 42cce6	 Bytes: 4
  %loadMem_42cce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cce6 = call %struct.Memory* @routine_movq__rax__0x78__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cce6)
  store %struct.Memory* %call_42cce6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ccea	 Bytes: 4
  %loadMem_42ccea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ccea = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ccea)
  store %struct.Memory* %call_42ccea, %struct.Memory** %MEMORY

  ; Code: movq 0x158(%rax), %rax	 RIP: 42ccee	 Bytes: 7
  %loadMem_42ccee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ccee = call %struct.Memory* @routine_movq_0x158__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ccee)
  store %struct.Memory* %call_42ccee, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42ccf5	 Bytes: 4
  %loadMem_42ccf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ccf5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ccf5)
  store %struct.Memory* %call_42ccf5, %struct.Memory** %MEMORY

  ; Code: movslq 0x140(%rcx), %rcx	 RIP: 42ccf9	 Bytes: 7
  %loadMem_42ccf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ccf9 = call %struct.Memory* @routine_movslq_0x140__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ccf9)
  store %struct.Memory* %call_42ccf9, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 42cd00	 Bytes: 4
  %loadMem_42cd00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd00 = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd00)
  store %struct.Memory* %call_42cd00, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42cd04	 Bytes: 3
  %loadMem_42cd04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd04 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd04)
  store %struct.Memory* %call_42cd04, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 42cd07	 Bytes: 5
  %loadMem1_42cd07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42cd07 = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42cd07, i64 103337, i64 5, i64 5)
  store %struct.Memory* %call1_42cd07, %struct.Memory** %MEMORY

  %loadMem2_42cd07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cd07 = load i64, i64* %3
  %call2_42cd07 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_42cd07, %struct.Memory* %loadMem2_42cd07)
  store %struct.Memory* %call2_42cd07, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cd0c	 Bytes: 4
  %loadMem_42cd0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd0c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd0c)
  store %struct.Memory* %call_42cd0c, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x158(%rcx)	 RIP: 42cd10	 Bytes: 7
  %loadMem_42cd10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd10 = call %struct.Memory* @routine_movq__rax__0x158__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd10)
  store %struct.Memory* %call_42cd10, %struct.Memory** %MEMORY

  ; Code: .L_42cd17:	 RIP: 42cd17	 Bytes: 0
  br label %block_.L_42cd17
block_.L_42cd17:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cd17	 Bytes: 4
  %loadMem_42cd17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd17 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd17)
  store %struct.Memory* %call_42cd17, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x60(%rax)	 RIP: 42cd1b	 Bytes: 5
  %loadMem_42cd1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd1b = call %struct.Memory* @routine_cmpq__0x0__0x60__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd1b)
  store %struct.Memory* %call_42cd1b, %struct.Memory** %MEMORY

  ; Code: je .L_42cd5c	 RIP: 42cd20	 Bytes: 6
  %loadMem_42cd20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd20 = call %struct.Memory* @routine_je_.L_42cd5c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd20, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_42cd20, %struct.Memory** %MEMORY

  %loadBr_42cd20 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cd20 = icmp eq i8 %loadBr_42cd20, 1
  br i1 %cmpBr_42cd20, label %block_.L_42cd5c, label %block_42cd26

block_42cd26:
  ; Code: movq $0x45882f, %rdi	 RIP: 42cd26	 Bytes: 10
  %loadMem_42cd26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd26 = call %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd26)
  store %struct.Memory* %call_42cd26, %struct.Memory** %MEMORY

  ; Code: movl $0xb0, %esi	 RIP: 42cd30	 Bytes: 5
  %loadMem_42cd30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd30 = call %struct.Memory* @routine_movl__0xb0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd30)
  store %struct.Memory* %call_42cd30, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cd35	 Bytes: 4
  %loadMem_42cd35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd35 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd35)
  store %struct.Memory* %call_42cd35, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rax), %rax	 RIP: 42cd39	 Bytes: 4
  %loadMem_42cd39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd39 = call %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd39)
  store %struct.Memory* %call_42cd39, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cd3d	 Bytes: 4
  %loadMem_42cd3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd3d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd3d)
  store %struct.Memory* %call_42cd3d, %struct.Memory** %MEMORY

  ; Code: movslq 0x140(%rcx), %rcx	 RIP: 42cd41	 Bytes: 7
  %loadMem_42cd41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd41 = call %struct.Memory* @routine_movslq_0x140__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd41)
  store %struct.Memory* %call_42cd41, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rcx	 RIP: 42cd48	 Bytes: 4
  %loadMem_42cd48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd48 = call %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd48)
  store %struct.Memory* %call_42cd48, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42cd4c	 Bytes: 3
  %loadMem_42cd4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd4c = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd4c)
  store %struct.Memory* %call_42cd4c, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 42cd4f	 Bytes: 5
  %loadMem1_42cd4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42cd4f = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42cd4f, i64 103265, i64 5, i64 5)
  store %struct.Memory* %call1_42cd4f, %struct.Memory** %MEMORY

  %loadMem2_42cd4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cd4f = load i64, i64* %3
  %call2_42cd4f = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_42cd4f, %struct.Memory* %loadMem2_42cd4f)
  store %struct.Memory* %call2_42cd4f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cd54	 Bytes: 4
  %loadMem_42cd54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd54 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd54)
  store %struct.Memory* %call_42cd54, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x60(%rcx)	 RIP: 42cd58	 Bytes: 4
  %loadMem_42cd58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd58 = call %struct.Memory* @routine_movq__rax__0x60__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd58)
  store %struct.Memory* %call_42cd58, %struct.Memory** %MEMORY

  ; Code: .L_42cd5c:	 RIP: 42cd5c	 Bytes: 0
  br label %block_.L_42cd5c
block_.L_42cd5c:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cd5c	 Bytes: 4
  %loadMem_42cd5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd5c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd5c)
  store %struct.Memory* %call_42cd5c, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x68(%rax)	 RIP: 42cd60	 Bytes: 5
  %loadMem_42cd60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd60 = call %struct.Memory* @routine_cmpq__0x0__0x68__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd60)
  store %struct.Memory* %call_42cd60, %struct.Memory** %MEMORY

  ; Code: je .L_42cda1	 RIP: 42cd65	 Bytes: 6
  %loadMem_42cd65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd65 = call %struct.Memory* @routine_je_.L_42cda1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd65, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_42cd65, %struct.Memory** %MEMORY

  %loadBr_42cd65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cd65 = icmp eq i8 %loadBr_42cd65, 1
  br i1 %cmpBr_42cd65, label %block_.L_42cda1, label %block_42cd6b

block_42cd6b:
  ; Code: movq $0x45882f, %rdi	 RIP: 42cd6b	 Bytes: 10
  %loadMem_42cd6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd6b = call %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd6b)
  store %struct.Memory* %call_42cd6b, %struct.Memory** %MEMORY

  ; Code: movl $0xb2, %esi	 RIP: 42cd75	 Bytes: 5
  %loadMem_42cd75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd75 = call %struct.Memory* @routine_movl__0xb2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd75)
  store %struct.Memory* %call_42cd75, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cd7a	 Bytes: 4
  %loadMem_42cd7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd7a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd7a)
  store %struct.Memory* %call_42cd7a, %struct.Memory** %MEMORY

  ; Code: movq 0x68(%rax), %rax	 RIP: 42cd7e	 Bytes: 4
  %loadMem_42cd7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd7e = call %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd7e)
  store %struct.Memory* %call_42cd7e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cd82	 Bytes: 4
  %loadMem_42cd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd82 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd82)
  store %struct.Memory* %call_42cd82, %struct.Memory** %MEMORY

  ; Code: movslq 0x140(%rcx), %rcx	 RIP: 42cd86	 Bytes: 7
  %loadMem_42cd86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd86 = call %struct.Memory* @routine_movslq_0x140__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd86)
  store %struct.Memory* %call_42cd86, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rcx	 RIP: 42cd8d	 Bytes: 4
  %loadMem_42cd8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd8d = call %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd8d)
  store %struct.Memory* %call_42cd8d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42cd91	 Bytes: 3
  %loadMem_42cd91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd91 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd91)
  store %struct.Memory* %call_42cd91, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 42cd94	 Bytes: 5
  %loadMem1_42cd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42cd94 = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42cd94, i64 103196, i64 5, i64 5)
  store %struct.Memory* %call1_42cd94, %struct.Memory** %MEMORY

  %loadMem2_42cd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cd94 = load i64, i64* %3
  %call2_42cd94 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_42cd94, %struct.Memory* %loadMem2_42cd94)
  store %struct.Memory* %call2_42cd94, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cd99	 Bytes: 4
  %loadMem_42cd99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd99 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd99)
  store %struct.Memory* %call_42cd99, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x68(%rcx)	 RIP: 42cd9d	 Bytes: 4
  %loadMem_42cd9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cd9d = call %struct.Memory* @routine_movq__rax__0x68__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cd9d)
  store %struct.Memory* %call_42cd9d, %struct.Memory** %MEMORY

  ; Code: .L_42cda1:	 RIP: 42cda1	 Bytes: 0
  br label %block_.L_42cda1
block_.L_42cda1:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cda1	 Bytes: 4
  %loadMem_42cda1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cda1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cda1)
  store %struct.Memory* %call_42cda1, %struct.Memory** %MEMORY

  ; Code: movl 0x140(%rax), %ecx	 RIP: 42cda5	 Bytes: 6
  %loadMem_42cda5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cda5 = call %struct.Memory* @routine_movl_0x140__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cda5)
  store %struct.Memory* %call_42cda5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cdab	 Bytes: 4
  %loadMem_42cdab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cdab = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cdab)
  store %struct.Memory* %call_42cdab, %struct.Memory** %MEMORY

  ; Code: subl 0x144(%rax), %ecx	 RIP: 42cdaf	 Bytes: 6
  %loadMem_42cdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cdaf = call %struct.Memory* @routine_subl_0x144__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cdaf)
  store %struct.Memory* %call_42cdaf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xc(%rbp)	 RIP: 42cdb5	 Bytes: 3
  %loadMem_42cdb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cdb5 = call %struct.Memory* @routine_movl__ecx__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cdb5)
  store %struct.Memory* %call_42cdb5, %struct.Memory** %MEMORY

  ; Code: .L_42cdb8:	 RIP: 42cdb8	 Bytes: 0
  br label %block_.L_42cdb8
block_.L_42cdb8:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 42cdb8	 Bytes: 3
  %loadMem_42cdb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cdb8 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cdb8)
  store %struct.Memory* %call_42cdb8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cdbb	 Bytes: 4
  %loadMem_42cdbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cdbb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cdbb)
  store %struct.Memory* %call_42cdbb, %struct.Memory** %MEMORY

  ; Code: cmpl 0x140(%rcx), %eax	 RIP: 42cdbf	 Bytes: 6
  %loadMem_42cdbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cdbf = call %struct.Memory* @routine_cmpl_0x140__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cdbf)
  store %struct.Memory* %call_42cdbf, %struct.Memory** %MEMORY

  ; Code: jge .L_42d001	 RIP: 42cdc5	 Bytes: 6
  %loadMem_42cdc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cdc5 = call %struct.Memory* @routine_jge_.L_42d001(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cdc5, i8* %BRANCH_TAKEN, i64 572, i64 6, i64 6)
  store %struct.Memory* %call_42cdc5, %struct.Memory** %MEMORY

  %loadBr_42cdc5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cdc5 = icmp eq i8 %loadBr_42cdc5, 1
  br i1 %cmpBr_42cdc5, label %block_.L_42d001, label %block_42cdcb

block_42cdcb:
  ; Code: movss 0x27951(%rip), %xmm0	 RIP: 42cdcb	 Bytes: 8
  %loadMem_42cdcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cdcb = call %struct.Memory* @routine_movss_0x27951__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cdcb)
  store %struct.Memory* %call_42cdcb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cdd3	 Bytes: 4
  %loadMem_42cdd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cdd3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cdd3)
  store %struct.Memory* %call_42cdd3, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42cdd7	 Bytes: 4
  %loadMem_42cdd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cdd7 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cdd7)
  store %struct.Memory* %call_42cdd7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42cddb	 Bytes: 4
  %loadMem_42cddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cddb = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cddb)
  store %struct.Memory* %call_42cddb, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax,%rcx,8)	 RIP: 42cddf	 Bytes: 8
  %loadMem_42cddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cddf = call %struct.Memory* @routine_movq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cddf)
  store %struct.Memory* %call_42cddf, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cde7	 Bytes: 4
  %loadMem_42cde7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cde7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cde7)
  store %struct.Memory* %call_42cde7, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42cdeb	 Bytes: 4
  %loadMem_42cdeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cdeb = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cdeb)
  store %struct.Memory* %call_42cdeb, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42cdef	 Bytes: 4
  %loadMem_42cdef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cdef = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cdef)
  store %struct.Memory* %call_42cdef, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 42cdf3	 Bytes: 5
  %loadMem_42cdf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cdf3 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cdf3)
  store %struct.Memory* %call_42cdf3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cdf8	 Bytes: 4
  %loadMem_42cdf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cdf8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cdf8)
  store %struct.Memory* %call_42cdf8, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x60(%rax)	 RIP: 42cdfc	 Bytes: 5
  %loadMem_42cdfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cdfc = call %struct.Memory* @routine_cmpq__0x0__0x60__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cdfc)
  store %struct.Memory* %call_42cdfc, %struct.Memory** %MEMORY

  ; Code: je .L_42ce1b	 RIP: 42ce01	 Bytes: 6
  %loadMem_42ce01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce01 = call %struct.Memory* @routine_je_.L_42ce1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce01, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_42ce01, %struct.Memory** %MEMORY

  %loadBr_42ce01 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ce01 = icmp eq i8 %loadBr_42ce01, 1
  br i1 %cmpBr_42ce01, label %block_.L_42ce1b, label %block_42ce07

block_42ce07:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ce07	 Bytes: 4
  %loadMem_42ce07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce07 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce07)
  store %struct.Memory* %call_42ce07, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rax), %rax	 RIP: 42ce0b	 Bytes: 4
  %loadMem_42ce0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce0b = call %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce0b)
  store %struct.Memory* %call_42ce0b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42ce0f	 Bytes: 4
  %loadMem_42ce0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce0f = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce0f)
  store %struct.Memory* %call_42ce0f, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax,%rcx,8)	 RIP: 42ce13	 Bytes: 8
  %loadMem_42ce13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce13 = call %struct.Memory* @routine_movq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce13)
  store %struct.Memory* %call_42ce13, %struct.Memory** %MEMORY

  ; Code: .L_42ce1b:	 RIP: 42ce1b	 Bytes: 0
  br label %block_.L_42ce1b
block_.L_42ce1b:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ce1b	 Bytes: 4
  %loadMem_42ce1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce1b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce1b)
  store %struct.Memory* %call_42ce1b, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x68(%rax)	 RIP: 42ce1f	 Bytes: 5
  %loadMem_42ce1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce1f = call %struct.Memory* @routine_cmpq__0x0__0x68__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce1f)
  store %struct.Memory* %call_42ce1f, %struct.Memory** %MEMORY

  ; Code: je .L_42ce3e	 RIP: 42ce24	 Bytes: 6
  %loadMem_42ce24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce24 = call %struct.Memory* @routine_je_.L_42ce3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce24, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_42ce24, %struct.Memory** %MEMORY

  %loadBr_42ce24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ce24 = icmp eq i8 %loadBr_42ce24, 1
  br i1 %cmpBr_42ce24, label %block_.L_42ce3e, label %block_42ce2a

block_42ce2a:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ce2a	 Bytes: 4
  %loadMem_42ce2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce2a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce2a)
  store %struct.Memory* %call_42ce2a, %struct.Memory** %MEMORY

  ; Code: movq 0x68(%rax), %rax	 RIP: 42ce2e	 Bytes: 4
  %loadMem_42ce2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce2e = call %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce2e)
  store %struct.Memory* %call_42ce2e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42ce32	 Bytes: 4
  %loadMem_42ce32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce32 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce32)
  store %struct.Memory* %call_42ce32, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax,%rcx,8)	 RIP: 42ce36	 Bytes: 8
  %loadMem_42ce36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce36 = call %struct.Memory* @routine_movq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce36)
  store %struct.Memory* %call_42ce36, %struct.Memory** %MEMORY

  ; Code: .L_42ce3e:	 RIP: 42ce3e	 Bytes: 0
  br label %block_.L_42ce3e
block_.L_42ce3e:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ce3e	 Bytes: 4
  %loadMem_42ce3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce3e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce3e)
  store %struct.Memory* %call_42ce3e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rax)	 RIP: 42ce42	 Bytes: 4
  %loadMem_42ce42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce42 = call %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce42)
  store %struct.Memory* %call_42ce42, %struct.Memory** %MEMORY

  ; Code: je .L_42ce99	 RIP: 42ce46	 Bytes: 6
  %loadMem_42ce46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce46 = call %struct.Memory* @routine_je_.L_42ce99(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce46, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_42ce46, %struct.Memory** %MEMORY

  %loadBr_42ce46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ce46 = icmp eq i8 %loadBr_42ce46, 1
  br i1 %cmpBr_42ce46, label %block_.L_42ce99, label %block_42ce4c

block_42ce4c:
  ; Code: movq $0x45882f, %rdi	 RIP: 42ce4c	 Bytes: 10
  %loadMem_42ce4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce4c = call %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce4c)
  store %struct.Memory* %call_42ce4c, %struct.Memory** %MEMORY

  ; Code: movl $0xbd, %esi	 RIP: 42ce56	 Bytes: 5
  %loadMem_42ce56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce56 = call %struct.Memory* @routine_movl__0xbd___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce56)
  store %struct.Memory* %call_42ce56, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ce5b	 Bytes: 4
  %loadMem_42ce5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce5b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce5b)
  store %struct.Memory* %call_42ce5b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42ce5f	 Bytes: 3
  %loadMem_42ce5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce5f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce5f)
  store %struct.Memory* %call_42ce5f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42ce62	 Bytes: 4
  %loadMem_42ce62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce62 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce62)
  store %struct.Memory* %call_42ce62, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdx	 RIP: 42ce66	 Bytes: 4
  %loadMem_42ce66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce66 = call %struct.Memory* @routine_movq___rax__rcx_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce66)
  store %struct.Memory* %call_42ce66, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ce6a	 Bytes: 4
  %loadMem_42ce6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce6a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce6a)
  store %struct.Memory* %call_42ce6a, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %r8d	 RIP: 42ce6e	 Bytes: 4
  %loadMem_42ce6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce6e = call %struct.Memory* @routine_movl_0x18__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce6e)
  store %struct.Memory* %call_42ce6e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 42ce72	 Bytes: 4
  %loadMem_42ce72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce72 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce72)
  store %struct.Memory* %call_42ce72, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rax	 RIP: 42ce76	 Bytes: 3
  %loadMem_42ce76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce76 = call %struct.Memory* @routine_movslq__r8d___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce76)
  store %struct.Memory* %call_42ce76, %struct.Memory** %MEMORY

  ; Code: shlq $0x0, %rax	 RIP: 42ce79	 Bytes: 4
  %loadMem_42ce79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce79 = call %struct.Memory* @routine_shlq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce79)
  store %struct.Memory* %call_42ce79, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 42ce7d	 Bytes: 3
  %loadMem_42ce7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce7d = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce7d)
  store %struct.Memory* %call_42ce7d, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 42ce80	 Bytes: 5
  %loadMem1_42ce80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42ce80 = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42ce80, i64 102960, i64 5, i64 5)
  store %struct.Memory* %call1_42ce80, %struct.Memory** %MEMORY

  %loadMem2_42ce80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ce80 = load i64, i64* %3
  %call2_42ce80 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_42ce80, %struct.Memory* %loadMem2_42ce80)
  store %struct.Memory* %call2_42ce80, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42ce85	 Bytes: 4
  %loadMem_42ce85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce85 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce85)
  store %struct.Memory* %call_42ce85, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 42ce89	 Bytes: 3
  %loadMem_42ce89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce89 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce89)
  store %struct.Memory* %call_42ce89, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 42ce8c	 Bytes: 4
  %loadMem_42ce8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce8c = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce8c)
  store %struct.Memory* %call_42ce8c, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdx,8)	 RIP: 42ce90	 Bytes: 4
  %loadMem_42ce90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce90 = call %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce90)
  store %struct.Memory* %call_42ce90, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42ceac	 RIP: 42ce94	 Bytes: 5
  %loadMem_42ce94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce94 = call %struct.Memory* @routine_jmpq_.L_42ceac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce94, i64 24, i64 5)
  store %struct.Memory* %call_42ce94, %struct.Memory** %MEMORY

  br label %block_.L_42ceac

  ; Code: .L_42ce99:	 RIP: 42ce99	 Bytes: 0
block_.L_42ce99:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ce99	 Bytes: 4
  %loadMem_42ce99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce99 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce99)
  store %struct.Memory* %call_42ce99, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42ce9d	 Bytes: 3
  %loadMem_42ce9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ce9d = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ce9d)
  store %struct.Memory* %call_42ce9d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42cea0	 Bytes: 4
  %loadMem_42cea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cea0 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cea0)
  store %struct.Memory* %call_42cea0, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax,%rcx,8)	 RIP: 42cea4	 Bytes: 8
  %loadMem_42cea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cea4 = call %struct.Memory* @routine_movq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cea4)
  store %struct.Memory* %call_42cea4, %struct.Memory** %MEMORY

  ; Code: .L_42ceac:	 RIP: 42ceac	 Bytes: 0
  br label %block_.L_42ceac
block_.L_42ceac:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ceac	 Bytes: 4
  %loadMem_42ceac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ceac = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ceac)
  store %struct.Memory* %call_42ceac, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rax), %rax	 RIP: 42ceb0	 Bytes: 7
  %loadMem_42ceb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ceb0 = call %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ceb0)
  store %struct.Memory* %call_42ceb0, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42ceb7	 Bytes: 4
  %loadMem_42ceb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ceb7 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ceb7)
  store %struct.Memory* %call_42ceb7, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 42cebb	 Bytes: 7
  %loadMem_42cebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cebb = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cebb)
  store %struct.Memory* %call_42cebb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cec2	 Bytes: 4
  %loadMem_42cec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cec2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cec2)
  store %struct.Memory* %call_42cec2, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x70(%rax)	 RIP: 42cec6	 Bytes: 5
  %loadMem_42cec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cec6 = call %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cec6)
  store %struct.Memory* %call_42cec6, %struct.Memory** %MEMORY

  ; Code: je .L_42cf58	 RIP: 42cecb	 Bytes: 6
  %loadMem_42cecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cecb = call %struct.Memory* @routine_je_.L_42cf58(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cecb, i8* %BRANCH_TAKEN, i64 141, i64 6, i64 6)
  store %struct.Memory* %call_42cecb, %struct.Memory** %MEMORY

  %loadBr_42cecb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cecb = icmp eq i8 %loadBr_42cecb, 1
  br i1 %cmpBr_42cecb, label %block_.L_42cf58, label %block_42ced1

block_42ced1:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ced1	 Bytes: 4
  %loadMem_42ced1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ced1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ced1)
  store %struct.Memory* %call_42ced1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rax)	 RIP: 42ced5	 Bytes: 4
  %loadMem_42ced5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ced5 = call %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ced5)
  store %struct.Memory* %call_42ced5, %struct.Memory** %MEMORY

  ; Code: je .L_42cf2e	 RIP: 42ced9	 Bytes: 6
  %loadMem_42ced9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ced9 = call %struct.Memory* @routine_je_.L_42cf2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ced9, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_42ced9, %struct.Memory** %MEMORY

  %loadBr_42ced9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ced9 = icmp eq i8 %loadBr_42ced9, 1
  br i1 %cmpBr_42ced9, label %block_.L_42cf2e, label %block_42cedf

block_42cedf:
  ; Code: movq $0x45882f, %rdi	 RIP: 42cedf	 Bytes: 10
  %loadMem_42cedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cedf = call %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cedf)
  store %struct.Memory* %call_42cedf, %struct.Memory** %MEMORY

  ; Code: movl $0xc3, %esi	 RIP: 42cee9	 Bytes: 5
  %loadMem_42cee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cee9 = call %struct.Memory* @routine_movl__0xc3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cee9)
  store %struct.Memory* %call_42cee9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42ceee	 Bytes: 4
  %loadMem_42ceee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ceee = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ceee)
  store %struct.Memory* %call_42ceee, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rax	 RIP: 42cef2	 Bytes: 4
  %loadMem_42cef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cef2 = call %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cef2)
  store %struct.Memory* %call_42cef2, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42cef6	 Bytes: 4
  %loadMem_42cef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cef6 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cef6)
  store %struct.Memory* %call_42cef6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdx	 RIP: 42cefa	 Bytes: 4
  %loadMem_42cefa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cefa = call %struct.Memory* @routine_movq___rax__rcx_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cefa)
  store %struct.Memory* %call_42cefa, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cefe	 Bytes: 4
  %loadMem_42cefe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cefe = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cefe)
  store %struct.Memory* %call_42cefe, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %r8d	 RIP: 42cf02	 Bytes: 4
  %loadMem_42cf02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf02 = call %struct.Memory* @routine_movl_0x18__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf02)
  store %struct.Memory* %call_42cf02, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 42cf06	 Bytes: 4
  %loadMem_42cf06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf06 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf06)
  store %struct.Memory* %call_42cf06, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rax	 RIP: 42cf0a	 Bytes: 3
  %loadMem_42cf0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf0a = call %struct.Memory* @routine_movslq__r8d___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf0a)
  store %struct.Memory* %call_42cf0a, %struct.Memory** %MEMORY

  ; Code: shlq $0x0, %rax	 RIP: 42cf0d	 Bytes: 4
  %loadMem_42cf0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf0d = call %struct.Memory* @routine_shlq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf0d)
  store %struct.Memory* %call_42cf0d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 42cf11	 Bytes: 3
  %loadMem_42cf11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf11 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf11)
  store %struct.Memory* %call_42cf11, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 42cf14	 Bytes: 5
  %loadMem1_42cf14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42cf14 = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42cf14, i64 102812, i64 5, i64 5)
  store %struct.Memory* %call1_42cf14, %struct.Memory** %MEMORY

  %loadMem2_42cf14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cf14 = load i64, i64* %3
  %call2_42cf14 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_42cf14, %struct.Memory* %loadMem2_42cf14)
  store %struct.Memory* %call2_42cf14, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cf19	 Bytes: 4
  %loadMem_42cf19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf19 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf19)
  store %struct.Memory* %call_42cf19, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rcx), %rcx	 RIP: 42cf1d	 Bytes: 4
  %loadMem_42cf1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf1d = call %struct.Memory* @routine_movq_0x70__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf1d)
  store %struct.Memory* %call_42cf1d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 42cf21	 Bytes: 4
  %loadMem_42cf21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf21 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf21)
  store %struct.Memory* %call_42cf21, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdx,8)	 RIP: 42cf25	 Bytes: 4
  %loadMem_42cf25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf25 = call %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf25)
  store %struct.Memory* %call_42cf25, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42cf42	 RIP: 42cf29	 Bytes: 5
  %loadMem_42cf29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf29 = call %struct.Memory* @routine_jmpq_.L_42cf42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf29, i64 25, i64 5)
  store %struct.Memory* %call_42cf29, %struct.Memory** %MEMORY

  br label %block_.L_42cf42

  ; Code: .L_42cf2e:	 RIP: 42cf2e	 Bytes: 0
block_.L_42cf2e:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cf2e	 Bytes: 4
  %loadMem_42cf2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf2e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf2e)
  store %struct.Memory* %call_42cf2e, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rax	 RIP: 42cf32	 Bytes: 4
  %loadMem_42cf32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf32 = call %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf32)
  store %struct.Memory* %call_42cf32, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42cf36	 Bytes: 4
  %loadMem_42cf36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf36 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf36)
  store %struct.Memory* %call_42cf36, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax,%rcx,8)	 RIP: 42cf3a	 Bytes: 8
  %loadMem_42cf3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf3a = call %struct.Memory* @routine_movq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf3a)
  store %struct.Memory* %call_42cf3a, %struct.Memory** %MEMORY

  ; Code: .L_42cf42:	 RIP: 42cf42	 Bytes: 0
  br label %block_.L_42cf42
block_.L_42cf42:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cf42	 Bytes: 4
  %loadMem_42cf42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf42 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf42)
  store %struct.Memory* %call_42cf42, %struct.Memory** %MEMORY

  ; Code: movq 0x150(%rax), %rax	 RIP: 42cf46	 Bytes: 7
  %loadMem_42cf46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf46 = call %struct.Memory* @routine_movq_0x150__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf46)
  store %struct.Memory* %call_42cf46, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42cf4d	 Bytes: 4
  %loadMem_42cf4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf4d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf4d)
  store %struct.Memory* %call_42cf4d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 42cf51	 Bytes: 7
  %loadMem_42cf51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf51 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf51)
  store %struct.Memory* %call_42cf51, %struct.Memory** %MEMORY

  ; Code: .L_42cf58:	 RIP: 42cf58	 Bytes: 0
  br label %block_.L_42cf58
block_.L_42cf58:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cf58	 Bytes: 4
  %loadMem_42cf58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf58 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf58)
  store %struct.Memory* %call_42cf58, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x78(%rax)	 RIP: 42cf5c	 Bytes: 5
  %loadMem_42cf5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf5c = call %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf5c)
  store %struct.Memory* %call_42cf5c, %struct.Memory** %MEMORY

  ; Code: je .L_42cfee	 RIP: 42cf61	 Bytes: 6
  %loadMem_42cf61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf61 = call %struct.Memory* @routine_je_.L_42cfee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf61, i8* %BRANCH_TAKEN, i64 141, i64 6, i64 6)
  store %struct.Memory* %call_42cf61, %struct.Memory** %MEMORY

  %loadBr_42cf61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cf61 = icmp eq i8 %loadBr_42cf61, 1
  br i1 %cmpBr_42cf61, label %block_.L_42cfee, label %block_42cf67

block_42cf67:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cf67	 Bytes: 4
  %loadMem_42cf67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf67 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf67)
  store %struct.Memory* %call_42cf67, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rax)	 RIP: 42cf6b	 Bytes: 4
  %loadMem_42cf6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf6b = call %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf6b)
  store %struct.Memory* %call_42cf6b, %struct.Memory** %MEMORY

  ; Code: je .L_42cfc4	 RIP: 42cf6f	 Bytes: 6
  %loadMem_42cf6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf6f = call %struct.Memory* @routine_je_.L_42cfc4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf6f, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_42cf6f, %struct.Memory** %MEMORY

  %loadBr_42cf6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cf6f = icmp eq i8 %loadBr_42cf6f, 1
  br i1 %cmpBr_42cf6f, label %block_.L_42cfc4, label %block_42cf75

block_42cf75:
  ; Code: movq $0x45882f, %rdi	 RIP: 42cf75	 Bytes: 10
  %loadMem_42cf75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf75 = call %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf75)
  store %struct.Memory* %call_42cf75, %struct.Memory** %MEMORY

  ; Code: movl $0xc9, %esi	 RIP: 42cf7f	 Bytes: 5
  %loadMem_42cf7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf7f = call %struct.Memory* @routine_movl__0xc9___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf7f)
  store %struct.Memory* %call_42cf7f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cf84	 Bytes: 4
  %loadMem_42cf84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf84 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf84)
  store %struct.Memory* %call_42cf84, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rax	 RIP: 42cf88	 Bytes: 4
  %loadMem_42cf88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf88 = call %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf88)
  store %struct.Memory* %call_42cf88, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42cf8c	 Bytes: 4
  %loadMem_42cf8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf8c = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf8c)
  store %struct.Memory* %call_42cf8c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdx	 RIP: 42cf90	 Bytes: 4
  %loadMem_42cf90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf90 = call %struct.Memory* @routine_movq___rax__rcx_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf90)
  store %struct.Memory* %call_42cf90, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cf94	 Bytes: 4
  %loadMem_42cf94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf94 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf94)
  store %struct.Memory* %call_42cf94, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %r8d	 RIP: 42cf98	 Bytes: 4
  %loadMem_42cf98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf98 = call %struct.Memory* @routine_movl_0x18__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf98)
  store %struct.Memory* %call_42cf98, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 42cf9c	 Bytes: 4
  %loadMem_42cf9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cf9c = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cf9c)
  store %struct.Memory* %call_42cf9c, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rax	 RIP: 42cfa0	 Bytes: 3
  %loadMem_42cfa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfa0 = call %struct.Memory* @routine_movslq__r8d___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfa0)
  store %struct.Memory* %call_42cfa0, %struct.Memory** %MEMORY

  ; Code: shlq $0x0, %rax	 RIP: 42cfa3	 Bytes: 4
  %loadMem_42cfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfa3 = call %struct.Memory* @routine_shlq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfa3)
  store %struct.Memory* %call_42cfa3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 42cfa7	 Bytes: 3
  %loadMem_42cfa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfa7 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfa7)
  store %struct.Memory* %call_42cfa7, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 42cfaa	 Bytes: 5
  %loadMem1_42cfaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42cfaa = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42cfaa, i64 102662, i64 5, i64 5)
  store %struct.Memory* %call1_42cfaa, %struct.Memory** %MEMORY

  %loadMem2_42cfaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42cfaa = load i64, i64* %3
  %call2_42cfaa = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_42cfaa, %struct.Memory* %loadMem2_42cfaa)
  store %struct.Memory* %call2_42cfaa, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42cfaf	 Bytes: 4
  %loadMem_42cfaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfaf = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfaf)
  store %struct.Memory* %call_42cfaf, %struct.Memory** %MEMORY

  ; Code: movq 0x78(%rcx), %rcx	 RIP: 42cfb3	 Bytes: 4
  %loadMem_42cfb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfb3 = call %struct.Memory* @routine_movq_0x78__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfb3)
  store %struct.Memory* %call_42cfb3, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 42cfb7	 Bytes: 4
  %loadMem_42cfb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfb7 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfb7)
  store %struct.Memory* %call_42cfb7, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdx,8)	 RIP: 42cfbb	 Bytes: 4
  %loadMem_42cfbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfbb = call %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfbb)
  store %struct.Memory* %call_42cfbb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42cfd8	 RIP: 42cfbf	 Bytes: 5
  %loadMem_42cfbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfbf = call %struct.Memory* @routine_jmpq_.L_42cfd8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfbf, i64 25, i64 5)
  store %struct.Memory* %call_42cfbf, %struct.Memory** %MEMORY

  br label %block_.L_42cfd8

  ; Code: .L_42cfc4:	 RIP: 42cfc4	 Bytes: 0
block_.L_42cfc4:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cfc4	 Bytes: 4
  %loadMem_42cfc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfc4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfc4)
  store %struct.Memory* %call_42cfc4, %struct.Memory** %MEMORY

  ; Code: movq 0x78(%rax), %rax	 RIP: 42cfc8	 Bytes: 4
  %loadMem_42cfc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfc8 = call %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfc8)
  store %struct.Memory* %call_42cfc8, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42cfcc	 Bytes: 4
  %loadMem_42cfcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfcc = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfcc)
  store %struct.Memory* %call_42cfcc, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax,%rcx,8)	 RIP: 42cfd0	 Bytes: 8
  %loadMem_42cfd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfd0 = call %struct.Memory* @routine_movq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfd0)
  store %struct.Memory* %call_42cfd0, %struct.Memory** %MEMORY

  ; Code: .L_42cfd8:	 RIP: 42cfd8	 Bytes: 0
  br label %block_.L_42cfd8
block_.L_42cfd8:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42cfd8	 Bytes: 4
  %loadMem_42cfd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfd8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfd8)
  store %struct.Memory* %call_42cfd8, %struct.Memory** %MEMORY

  ; Code: movq 0x158(%rax), %rax	 RIP: 42cfdc	 Bytes: 7
  %loadMem_42cfdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfdc = call %struct.Memory* @routine_movq_0x158__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfdc)
  store %struct.Memory* %call_42cfdc, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42cfe3	 Bytes: 4
  %loadMem_42cfe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfe3 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfe3)
  store %struct.Memory* %call_42cfe3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 42cfe7	 Bytes: 7
  %loadMem_42cfe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfe7 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfe7)
  store %struct.Memory* %call_42cfe7, %struct.Memory** %MEMORY

  ; Code: .L_42cfee:	 RIP: 42cfee	 Bytes: 0
  br label %block_.L_42cfee
block_.L_42cfee:

  ; Code: jmpq .L_42cff3	 RIP: 42cfee	 Bytes: 5
  %loadMem_42cfee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cfee = call %struct.Memory* @routine_jmpq_.L_42cff3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cfee, i64 5, i64 5)
  store %struct.Memory* %call_42cfee, %struct.Memory** %MEMORY

  br label %block_.L_42cff3

  ; Code: .L_42cff3:	 RIP: 42cff3	 Bytes: 0
block_.L_42cff3:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 42cff3	 Bytes: 3
  %loadMem_42cff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cff3 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cff3)
  store %struct.Memory* %call_42cff3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42cff6	 Bytes: 3
  %loadMem_42cff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cff6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cff6)
  store %struct.Memory* %call_42cff6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 42cff9	 Bytes: 3
  %loadMem_42cff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cff9 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cff9)
  store %struct.Memory* %call_42cff9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42cdb8	 RIP: 42cffc	 Bytes: 5
  %loadMem_42cffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42cffc = call %struct.Memory* @routine_jmpq_.L_42cdb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42cffc, i64 -580, i64 5)
  store %struct.Memory* %call_42cffc, %struct.Memory** %MEMORY

  br label %block_.L_42cdb8

  ; Code: .L_42d001:	 RIP: 42d001	 Bytes: 0
block_.L_42d001:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42d001	 Bytes: 4
  %loadMem_42d001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d001 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d001)
  store %struct.Memory* %call_42d001, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0xe0(%rax)	 RIP: 42d005	 Bytes: 8
  %loadMem_42d005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d005 = call %struct.Memory* @routine_cmpq__0x0__0xe0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d005)
  store %struct.Memory* %call_42d005, %struct.Memory** %MEMORY

  ; Code: je .L_42d107	 RIP: 42d00d	 Bytes: 6
  %loadMem_42d00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d00d = call %struct.Memory* @routine_je_.L_42d107(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d00d, i8* %BRANCH_TAKEN, i64 250, i64 6, i64 6)
  store %struct.Memory* %call_42d00d, %struct.Memory** %MEMORY

  %loadBr_42d00d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d00d = icmp eq i8 %loadBr_42d00d, 1
  br i1 %cmpBr_42d00d, label %block_.L_42d107, label %block_42d013

block_42d013:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 42d013	 Bytes: 7
  %loadMem_42d013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d013 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d013)
  store %struct.Memory* %call_42d013, %struct.Memory** %MEMORY

  ; Code: .L_42d01a:	 RIP: 42d01a	 Bytes: 0
  br label %block_.L_42d01a
block_.L_42d01a:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 42d01a	 Bytes: 3
  %loadMem_42d01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d01a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d01a)
  store %struct.Memory* %call_42d01a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42d01d	 Bytes: 4
  %loadMem_42d01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d01d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d01d)
  store %struct.Memory* %call_42d01d, %struct.Memory** %MEMORY

  ; Code: cmpl 0xf0(%rcx), %eax	 RIP: 42d021	 Bytes: 6
  %loadMem_42d021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d021 = call %struct.Memory* @routine_cmpl_0xf0__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d021)
  store %struct.Memory* %call_42d021, %struct.Memory** %MEMORY

  ; Code: jge .L_42d102	 RIP: 42d027	 Bytes: 6
  %loadMem_42d027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d027 = call %struct.Memory* @routine_jge_.L_42d102(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d027, i8* %BRANCH_TAKEN, i64 219, i64 6, i64 6)
  store %struct.Memory* %call_42d027, %struct.Memory** %MEMORY

  %loadBr_42d027 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d027 = icmp eq i8 %loadBr_42d027, 1
  br i1 %cmpBr_42d027, label %block_.L_42d102, label %block_42d02d

block_42d02d:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42d02d	 Bytes: 4
  %loadMem_42d02d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d02d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d02d)
  store %struct.Memory* %call_42d02d, %struct.Memory** %MEMORY

  ; Code: movq 0xe0(%rax), %rax	 RIP: 42d031	 Bytes: 7
  %loadMem_42d031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d031 = call %struct.Memory* @routine_movq_0xe0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d031)
  store %struct.Memory* %call_42d031, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42d038	 Bytes: 4
  %loadMem_42d038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d038 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d038)
  store %struct.Memory* %call_42d038, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax,%rcx,8)	 RIP: 42d03c	 Bytes: 5
  %loadMem_42d03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d03c = call %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d03c)
  store %struct.Memory* %call_42d03c, %struct.Memory** %MEMORY

  ; Code: je .L_42d0ef	 RIP: 42d041	 Bytes: 6
  %loadMem_42d041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d041 = call %struct.Memory* @routine_je_.L_42d0ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d041, i8* %BRANCH_TAKEN, i64 174, i64 6, i64 6)
  store %struct.Memory* %call_42d041, %struct.Memory** %MEMORY

  %loadBr_42d041 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d041 = icmp eq i8 %loadBr_42d041, 1
  br i1 %cmpBr_42d041, label %block_.L_42d0ef, label %block_42d047

block_42d047:
  ; Code: movq $0x45882f, %rdi	 RIP: 42d047	 Bytes: 10
  %loadMem_42d047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d047 = call %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d047)
  store %struct.Memory* %call_42d047, %struct.Memory** %MEMORY

  ; Code: movl $0xd9, %esi	 RIP: 42d051	 Bytes: 5
  %loadMem_42d051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d051 = call %struct.Memory* @routine_movl__0xd9___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d051)
  store %struct.Memory* %call_42d051, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42d056	 Bytes: 4
  %loadMem_42d056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d056 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d056)
  store %struct.Memory* %call_42d056, %struct.Memory** %MEMORY

  ; Code: movq 0xe0(%rax), %rax	 RIP: 42d05a	 Bytes: 7
  %loadMem_42d05a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d05a = call %struct.Memory* @routine_movq_0xe0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d05a)
  store %struct.Memory* %call_42d05a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42d061	 Bytes: 4
  %loadMem_42d061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d061 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d061)
  store %struct.Memory* %call_42d061, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42d065	 Bytes: 4
  %loadMem_42d065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d065 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d065)
  store %struct.Memory* %call_42d065, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42d069	 Bytes: 4
  %loadMem_42d069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d069 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d069)
  store %struct.Memory* %call_42d069, %struct.Memory** %MEMORY

  ; Code: movslq 0x140(%rcx), %rcx	 RIP: 42d06d	 Bytes: 7
  %loadMem_42d06d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d06d = call %struct.Memory* @routine_movslq_0x140__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d06d)
  store %struct.Memory* %call_42d06d, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rcx	 RIP: 42d074	 Bytes: 4
  %loadMem_42d074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d074 = call %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d074)
  store %struct.Memory* %call_42d074, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42d078	 Bytes: 3
  %loadMem_42d078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d078 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d078)
  store %struct.Memory* %call_42d078, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 42d07b	 Bytes: 5
  %loadMem1_42d07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42d07b = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42d07b, i64 102453, i64 5, i64 5)
  store %struct.Memory* %call1_42d07b, %struct.Memory** %MEMORY

  %loadMem2_42d07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42d07b = load i64, i64* %3
  %call2_42d07b = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_42d07b, %struct.Memory* %loadMem2_42d07b)
  store %struct.Memory* %call2_42d07b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42d080	 Bytes: 4
  %loadMem_42d080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d080 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d080)
  store %struct.Memory* %call_42d080, %struct.Memory** %MEMORY

  ; Code: movq 0xe0(%rcx), %rcx	 RIP: 42d084	 Bytes: 7
  %loadMem_42d084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d084 = call %struct.Memory* @routine_movq_0xe0__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d084)
  store %struct.Memory* %call_42d084, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 42d08b	 Bytes: 4
  %loadMem_42d08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d08b = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d08b)
  store %struct.Memory* %call_42d08b, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdx,8)	 RIP: 42d08f	 Bytes: 4
  %loadMem_42d08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d08f = call %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d08f)
  store %struct.Memory* %call_42d08f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42d093	 Bytes: 4
  %loadMem_42d093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d093 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d093)
  store %struct.Memory* %call_42d093, %struct.Memory** %MEMORY

  ; Code: movl 0x140(%rax), %esi	 RIP: 42d097	 Bytes: 6
  %loadMem_42d097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d097 = call %struct.Memory* @routine_movl_0x140__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d097)
  store %struct.Memory* %call_42d097, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42d09d	 Bytes: 4
  %loadMem_42d09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d09d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d09d)
  store %struct.Memory* %call_42d09d, %struct.Memory** %MEMORY

  ; Code: subl 0x144(%rax), %esi	 RIP: 42d0a1	 Bytes: 6
  %loadMem_42d0a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0a1 = call %struct.Memory* @routine_subl_0x144__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0a1)
  store %struct.Memory* %call_42d0a1, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x10(%rbp)	 RIP: 42d0a7	 Bytes: 3
  %loadMem_42d0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0a7 = call %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0a7)
  store %struct.Memory* %call_42d0a7, %struct.Memory** %MEMORY

  ; Code: .L_42d0aa:	 RIP: 42d0aa	 Bytes: 0
  br label %block_.L_42d0aa
block_.L_42d0aa:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 42d0aa	 Bytes: 3
  %loadMem_42d0aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0aa = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0aa)
  store %struct.Memory* %call_42d0aa, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42d0ad	 Bytes: 4
  %loadMem_42d0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0ad = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0ad)
  store %struct.Memory* %call_42d0ad, %struct.Memory** %MEMORY

  ; Code: cmpl 0x140(%rcx), %eax	 RIP: 42d0b1	 Bytes: 6
  %loadMem_42d0b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0b1 = call %struct.Memory* @routine_cmpl_0x140__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0b1)
  store %struct.Memory* %call_42d0b1, %struct.Memory** %MEMORY

  ; Code: jge .L_42d0ea	 RIP: 42d0b7	 Bytes: 6
  %loadMem_42d0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0b7 = call %struct.Memory* @routine_jge_.L_42d0ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0b7, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_42d0b7, %struct.Memory** %MEMORY

  %loadBr_42d0b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d0b7 = icmp eq i8 %loadBr_42d0b7, 1
  br i1 %cmpBr_42d0b7, label %block_.L_42d0ea, label %block_42d0bd

block_42d0bd:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42d0bd	 Bytes: 4
  %loadMem_42d0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0bd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0bd)
  store %struct.Memory* %call_42d0bd, %struct.Memory** %MEMORY

  ; Code: movq 0xe0(%rax), %rax	 RIP: 42d0c1	 Bytes: 7
  %loadMem_42d0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0c1 = call %struct.Memory* @routine_movq_0xe0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0c1)
  store %struct.Memory* %call_42d0c1, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42d0c8	 Bytes: 4
  %loadMem_42d0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0c8 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0c8)
  store %struct.Memory* %call_42d0c8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42d0cc	 Bytes: 4
  %loadMem_42d0cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0cc = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0cc)
  store %struct.Memory* %call_42d0cc, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 42d0d0	 Bytes: 4
  %loadMem_42d0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0d0 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0d0)
  store %struct.Memory* %call_42d0d0, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax,%rcx,8)	 RIP: 42d0d4	 Bytes: 8
  %loadMem_42d0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0d4 = call %struct.Memory* @routine_movq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0d4)
  store %struct.Memory* %call_42d0d4, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 42d0dc	 Bytes: 3
  %loadMem_42d0dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0dc = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0dc)
  store %struct.Memory* %call_42d0dc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42d0df	 Bytes: 3
  %loadMem_42d0df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0df = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0df)
  store %struct.Memory* %call_42d0df, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 42d0e2	 Bytes: 3
  %loadMem_42d0e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0e2 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0e2)
  store %struct.Memory* %call_42d0e2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42d0aa	 RIP: 42d0e5	 Bytes: 5
  %loadMem_42d0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0e5 = call %struct.Memory* @routine_jmpq_.L_42d0aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0e5, i64 -59, i64 5)
  store %struct.Memory* %call_42d0e5, %struct.Memory** %MEMORY

  br label %block_.L_42d0aa

  ; Code: .L_42d0ea:	 RIP: 42d0ea	 Bytes: 0
block_.L_42d0ea:

  ; Code: jmpq .L_42d0ef	 RIP: 42d0ea	 Bytes: 5
  %loadMem_42d0ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0ea = call %struct.Memory* @routine_jmpq_.L_42d0ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0ea, i64 5, i64 5)
  store %struct.Memory* %call_42d0ea, %struct.Memory** %MEMORY

  br label %block_.L_42d0ef

  ; Code: .L_42d0ef:	 RIP: 42d0ef	 Bytes: 0
block_.L_42d0ef:

  ; Code: jmpq .L_42d0f4	 RIP: 42d0ef	 Bytes: 5
  %loadMem_42d0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0ef = call %struct.Memory* @routine_jmpq_.L_42d0f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0ef, i64 5, i64 5)
  store %struct.Memory* %call_42d0ef, %struct.Memory** %MEMORY

  br label %block_.L_42d0f4

  ; Code: .L_42d0f4:	 RIP: 42d0f4	 Bytes: 0
block_.L_42d0f4:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 42d0f4	 Bytes: 3
  %loadMem_42d0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0f4 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0f4)
  store %struct.Memory* %call_42d0f4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42d0f7	 Bytes: 3
  %loadMem_42d0f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0f7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0f7)
  store %struct.Memory* %call_42d0f7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 42d0fa	 Bytes: 3
  %loadMem_42d0fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0fa = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0fa)
  store %struct.Memory* %call_42d0fa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42d01a	 RIP: 42d0fd	 Bytes: 5
  %loadMem_42d0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d0fd = call %struct.Memory* @routine_jmpq_.L_42d01a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d0fd, i64 -227, i64 5)
  store %struct.Memory* %call_42d0fd, %struct.Memory** %MEMORY

  br label %block_.L_42d01a

  ; Code: .L_42d102:	 RIP: 42d102	 Bytes: 0
block_.L_42d102:

  ; Code: jmpq .L_42d107	 RIP: 42d102	 Bytes: 5
  %loadMem_42d102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d102 = call %struct.Memory* @routine_jmpq_.L_42d107(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d102, i64 5, i64 5)
  store %struct.Memory* %call_42d102, %struct.Memory** %MEMORY

  br label %block_.L_42d107

  ; Code: .L_42d107:	 RIP: 42d107	 Bytes: 0
block_.L_42d107:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42d107	 Bytes: 4
  %loadMem_42d107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d107 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d107)
  store %struct.Memory* %call_42d107, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x120(%rax)	 RIP: 42d10b	 Bytes: 8
  %loadMem_42d10b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d10b = call %struct.Memory* @routine_cmpq__0x0__0x120__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d10b)
  store %struct.Memory* %call_42d10b, %struct.Memory** %MEMORY

  ; Code: je .L_42d20d	 RIP: 42d113	 Bytes: 6
  %loadMem_42d113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d113 = call %struct.Memory* @routine_je_.L_42d20d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d113, i8* %BRANCH_TAKEN, i64 250, i64 6, i64 6)
  store %struct.Memory* %call_42d113, %struct.Memory** %MEMORY

  %loadBr_42d113 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d113 = icmp eq i8 %loadBr_42d113, 1
  br i1 %cmpBr_42d113, label %block_.L_42d20d, label %block_42d119

block_42d119:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 42d119	 Bytes: 7
  %loadMem_42d119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d119 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d119)
  store %struct.Memory* %call_42d119, %struct.Memory** %MEMORY

  ; Code: .L_42d120:	 RIP: 42d120	 Bytes: 0
  br label %block_.L_42d120
block_.L_42d120:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 42d120	 Bytes: 3
  %loadMem_42d120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d120 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d120)
  store %struct.Memory* %call_42d120, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42d123	 Bytes: 4
  %loadMem_42d123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d123 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d123)
  store %struct.Memory* %call_42d123, %struct.Memory** %MEMORY

  ; Code: cmpl 0x130(%rcx), %eax	 RIP: 42d127	 Bytes: 6
  %loadMem_42d127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d127 = call %struct.Memory* @routine_cmpl_0x130__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d127)
  store %struct.Memory* %call_42d127, %struct.Memory** %MEMORY

  ; Code: jge .L_42d208	 RIP: 42d12d	 Bytes: 6
  %loadMem_42d12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d12d = call %struct.Memory* @routine_jge_.L_42d208(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d12d, i8* %BRANCH_TAKEN, i64 219, i64 6, i64 6)
  store %struct.Memory* %call_42d12d, %struct.Memory** %MEMORY

  %loadBr_42d12d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d12d = icmp eq i8 %loadBr_42d12d, 1
  br i1 %cmpBr_42d12d, label %block_.L_42d208, label %block_42d133

block_42d133:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42d133	 Bytes: 4
  %loadMem_42d133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d133 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d133)
  store %struct.Memory* %call_42d133, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rax), %rax	 RIP: 42d137	 Bytes: 7
  %loadMem_42d137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d137 = call %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d137)
  store %struct.Memory* %call_42d137, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42d13e	 Bytes: 4
  %loadMem_42d13e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d13e = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d13e)
  store %struct.Memory* %call_42d13e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax,%rcx,8)	 RIP: 42d142	 Bytes: 5
  %loadMem_42d142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d142 = call %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d142)
  store %struct.Memory* %call_42d142, %struct.Memory** %MEMORY

  ; Code: je .L_42d1f5	 RIP: 42d147	 Bytes: 6
  %loadMem_42d147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d147 = call %struct.Memory* @routine_je_.L_42d1f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d147, i8* %BRANCH_TAKEN, i64 174, i64 6, i64 6)
  store %struct.Memory* %call_42d147, %struct.Memory** %MEMORY

  %loadBr_42d147 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d147 = icmp eq i8 %loadBr_42d147, 1
  br i1 %cmpBr_42d147, label %block_.L_42d1f5, label %block_42d14d

block_42d14d:
  ; Code: movq $0x45882f, %rdi	 RIP: 42d14d	 Bytes: 10
  %loadMem_42d14d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d14d = call %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d14d)
  store %struct.Memory* %call_42d14d, %struct.Memory** %MEMORY

  ; Code: movl $0xe8, %esi	 RIP: 42d157	 Bytes: 5
  %loadMem_42d157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d157 = call %struct.Memory* @routine_movl__0xe8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d157)
  store %struct.Memory* %call_42d157, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42d15c	 Bytes: 4
  %loadMem_42d15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d15c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d15c)
  store %struct.Memory* %call_42d15c, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rax), %rax	 RIP: 42d160	 Bytes: 7
  %loadMem_42d160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d160 = call %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d160)
  store %struct.Memory* %call_42d160, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42d167	 Bytes: 4
  %loadMem_42d167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d167 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d167)
  store %struct.Memory* %call_42d167, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42d16b	 Bytes: 4
  %loadMem_42d16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d16b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d16b)
  store %struct.Memory* %call_42d16b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42d16f	 Bytes: 4
  %loadMem_42d16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d16f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d16f)
  store %struct.Memory* %call_42d16f, %struct.Memory** %MEMORY

  ; Code: movslq 0x140(%rcx), %rcx	 RIP: 42d173	 Bytes: 7
  %loadMem_42d173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d173 = call %struct.Memory* @routine_movslq_0x140__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d173)
  store %struct.Memory* %call_42d173, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rcx	 RIP: 42d17a	 Bytes: 4
  %loadMem_42d17a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d17a = call %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d17a)
  store %struct.Memory* %call_42d17a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42d17e	 Bytes: 3
  %loadMem_42d17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d17e = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d17e)
  store %struct.Memory* %call_42d17e, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 42d181	 Bytes: 5
  %loadMem1_42d181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42d181 = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42d181, i64 102191, i64 5, i64 5)
  store %struct.Memory* %call1_42d181, %struct.Memory** %MEMORY

  %loadMem2_42d181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42d181 = load i64, i64* %3
  %call2_42d181 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_42d181, %struct.Memory* %loadMem2_42d181)
  store %struct.Memory* %call2_42d181, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42d186	 Bytes: 4
  %loadMem_42d186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d186 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d186)
  store %struct.Memory* %call_42d186, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rcx), %rcx	 RIP: 42d18a	 Bytes: 7
  %loadMem_42d18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d18a = call %struct.Memory* @routine_movq_0x120__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d18a)
  store %struct.Memory* %call_42d18a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 42d191	 Bytes: 4
  %loadMem_42d191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d191 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d191)
  store %struct.Memory* %call_42d191, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdx,8)	 RIP: 42d195	 Bytes: 4
  %loadMem_42d195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d195 = call %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d195)
  store %struct.Memory* %call_42d195, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42d199	 Bytes: 4
  %loadMem_42d199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d199 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d199)
  store %struct.Memory* %call_42d199, %struct.Memory** %MEMORY

  ; Code: movl 0x140(%rax), %esi	 RIP: 42d19d	 Bytes: 6
  %loadMem_42d19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d19d = call %struct.Memory* @routine_movl_0x140__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d19d)
  store %struct.Memory* %call_42d19d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42d1a3	 Bytes: 4
  %loadMem_42d1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1a3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1a3)
  store %struct.Memory* %call_42d1a3, %struct.Memory** %MEMORY

  ; Code: subl 0x144(%rax), %esi	 RIP: 42d1a7	 Bytes: 6
  %loadMem_42d1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1a7 = call %struct.Memory* @routine_subl_0x144__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1a7)
  store %struct.Memory* %call_42d1a7, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x10(%rbp)	 RIP: 42d1ad	 Bytes: 3
  %loadMem_42d1ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1ad = call %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1ad)
  store %struct.Memory* %call_42d1ad, %struct.Memory** %MEMORY

  ; Code: .L_42d1b0:	 RIP: 42d1b0	 Bytes: 0
  br label %block_.L_42d1b0
block_.L_42d1b0:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 42d1b0	 Bytes: 3
  %loadMem_42d1b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1b0 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1b0)
  store %struct.Memory* %call_42d1b0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42d1b3	 Bytes: 4
  %loadMem_42d1b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1b3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1b3)
  store %struct.Memory* %call_42d1b3, %struct.Memory** %MEMORY

  ; Code: cmpl 0x140(%rcx), %eax	 RIP: 42d1b7	 Bytes: 6
  %loadMem_42d1b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1b7 = call %struct.Memory* @routine_cmpl_0x140__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1b7)
  store %struct.Memory* %call_42d1b7, %struct.Memory** %MEMORY

  ; Code: jge .L_42d1f0	 RIP: 42d1bd	 Bytes: 6
  %loadMem_42d1bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1bd = call %struct.Memory* @routine_jge_.L_42d1f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1bd, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_42d1bd, %struct.Memory** %MEMORY

  %loadBr_42d1bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d1bd = icmp eq i8 %loadBr_42d1bd, 1
  br i1 %cmpBr_42d1bd, label %block_.L_42d1f0, label %block_42d1c3

block_42d1c3:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42d1c3	 Bytes: 4
  %loadMem_42d1c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1c3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1c3)
  store %struct.Memory* %call_42d1c3, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rax), %rax	 RIP: 42d1c7	 Bytes: 7
  %loadMem_42d1c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1c7 = call %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1c7)
  store %struct.Memory* %call_42d1c7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 42d1ce	 Bytes: 4
  %loadMem_42d1ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1ce = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1ce)
  store %struct.Memory* %call_42d1ce, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42d1d2	 Bytes: 4
  %loadMem_42d1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1d2 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1d2)
  store %struct.Memory* %call_42d1d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 42d1d6	 Bytes: 4
  %loadMem_42d1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1d6 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1d6)
  store %struct.Memory* %call_42d1d6, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax,%rcx,8)	 RIP: 42d1da	 Bytes: 8
  %loadMem_42d1da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1da = call %struct.Memory* @routine_movq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1da)
  store %struct.Memory* %call_42d1da, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 42d1e2	 Bytes: 3
  %loadMem_42d1e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1e2 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1e2)
  store %struct.Memory* %call_42d1e2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42d1e5	 Bytes: 3
  %loadMem_42d1e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1e5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1e5)
  store %struct.Memory* %call_42d1e5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 42d1e8	 Bytes: 3
  %loadMem_42d1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1e8 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1e8)
  store %struct.Memory* %call_42d1e8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42d1b0	 RIP: 42d1eb	 Bytes: 5
  %loadMem_42d1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1eb = call %struct.Memory* @routine_jmpq_.L_42d1b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1eb, i64 -59, i64 5)
  store %struct.Memory* %call_42d1eb, %struct.Memory** %MEMORY

  br label %block_.L_42d1b0

  ; Code: .L_42d1f0:	 RIP: 42d1f0	 Bytes: 0
block_.L_42d1f0:

  ; Code: jmpq .L_42d1f5	 RIP: 42d1f0	 Bytes: 5
  %loadMem_42d1f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1f0 = call %struct.Memory* @routine_jmpq_.L_42d1f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1f0, i64 5, i64 5)
  store %struct.Memory* %call_42d1f0, %struct.Memory** %MEMORY

  br label %block_.L_42d1f5

  ; Code: .L_42d1f5:	 RIP: 42d1f5	 Bytes: 0
block_.L_42d1f5:

  ; Code: jmpq .L_42d1fa	 RIP: 42d1f5	 Bytes: 5
  %loadMem_42d1f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1f5 = call %struct.Memory* @routine_jmpq_.L_42d1fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1f5, i64 5, i64 5)
  store %struct.Memory* %call_42d1f5, %struct.Memory** %MEMORY

  br label %block_.L_42d1fa

  ; Code: .L_42d1fa:	 RIP: 42d1fa	 Bytes: 0
block_.L_42d1fa:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 42d1fa	 Bytes: 3
  %loadMem_42d1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1fa = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1fa)
  store %struct.Memory* %call_42d1fa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42d1fd	 Bytes: 3
  %loadMem_42d1fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d1fd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d1fd)
  store %struct.Memory* %call_42d1fd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 42d200	 Bytes: 3
  %loadMem_42d200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d200 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d200)
  store %struct.Memory* %call_42d200, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42d120	 RIP: 42d203	 Bytes: 5
  %loadMem_42d203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d203 = call %struct.Memory* @routine_jmpq_.L_42d120(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d203, i64 -227, i64 5)
  store %struct.Memory* %call_42d203, %struct.Memory** %MEMORY

  br label %block_.L_42d120

  ; Code: .L_42d208:	 RIP: 42d208	 Bytes: 0
block_.L_42d208:

  ; Code: jmpq .L_42d20d	 RIP: 42d208	 Bytes: 5
  %loadMem_42d208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d208 = call %struct.Memory* @routine_jmpq_.L_42d20d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d208, i64 5, i64 5)
  store %struct.Memory* %call_42d208, %struct.Memory** %MEMORY

  br label %block_.L_42d20d

  ; Code: .L_42d20d:	 RIP: 42d20d	 Bytes: 0
block_.L_42d20d:

  ; Code: addq $0x20, %rsp	 RIP: 42d20d	 Bytes: 4
  %loadMem_42d20d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d20d = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d20d)
  store %struct.Memory* %call_42d20d, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 42d211	 Bytes: 1
  %loadMem_42d211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d211 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d211)
  store %struct.Memory* %call_42d211, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 42d212	 Bytes: 1
  %loadMem_42d212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42d212 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42d212)
  store %struct.Memory* %call_42d212, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_42d212
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

define %struct.Memory* @routine_movq__0x45882f___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45882f_type* @G__0x45882f to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0xa2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 162)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x144__rdi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 324
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addl_0x140__rdi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 320
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__ecx__0x140__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 320
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq___rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9)
  ret %struct.Memory* %12
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0x140__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_shlq__0x3___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 3)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
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


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_callq_.sre_realloc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x45882f_type* @G__0x45882f to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xa3___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 163)
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


define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movslq_0x140__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 3)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movl__0xa4___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 164)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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














define %struct.Memory* @routine_movl__0xa5___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 165)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0x148__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 328
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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








define %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_je_.L_42cc96(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0xa8___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 168)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movl__0xa9___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 169)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0x70__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x150__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 336
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movq__rax__0x150__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 336
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42cd17(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0xac___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 172)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movl__0xad___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 173)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0x78__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 120
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x158__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 344
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movq__rax__0x158__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 344
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_cmpq__0x0__0x60__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42cd5c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0xb0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 176)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movq__rax__0x60__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_cmpq__0x0__0x68__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42cda1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0xb2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 178)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movq__rax__0x68__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 104
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_0x140__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 320
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_subl_0x144__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 324
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_cmpl_0x140__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 320
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jge_.L_42d001(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0x27951__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x27951__rip__type* @G_0x27951__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0____rax__rcx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
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

define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}






define %struct.Memory* @routine_je_.L_42ce1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_42ce3e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42ce99(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0xbd___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 189)
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movq___rax__rcx_8____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movl_0x18__rax____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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






define %struct.Memory* @routine_movq___rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_42ceac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_je_.L_42cf58(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_42cf2e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0xc3___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 195)
  ret %struct.Memory* %11
}


























define %struct.Memory* @routine_movq_0x70__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jmpq_.L_42cf42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_je_.L_42cfee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_42cfc4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0xc9___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 201)
  ret %struct.Memory* %11
}


























define %struct.Memory* @routine_movq_0x78__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jmpq_.L_42cfd8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_jmpq_.L_42cff3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42cdb8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpq__0x0__0xe0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42d107(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl_0xf0__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 240
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_42d102(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0xe0__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_42d0ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0xd9___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 217)
  ret %struct.Memory* %11
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














define %struct.Memory* @routine_movq_0xe0__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movl_0x140__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 320
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_subl_0x144__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 324
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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






define %struct.Memory* @routine_jge_.L_42d0ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_42d0aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42d0ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42d0f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42d01a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42d107(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpq__0x0__0x120__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 288
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42d20d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl_0x130__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 304
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_42d208(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 288
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_je_.L_42d1f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0xe8___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 232)
  ret %struct.Memory* %11
}






















define %struct.Memory* @routine_movq_0x120__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 288
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}






















define %struct.Memory* @routine_jge_.L_42d1f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jmpq_.L_42d1b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42d1f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42d1fa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42d120(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42d20d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

