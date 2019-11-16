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

declare %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44d680.P7ReallocTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44d8d0.P7ReverseTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_427ef0.Scorify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0x455f2a_type = type <{ [8 x i8] }>
@G__0x455f2a= global %G__0x455f2a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @P7ParsingViterbi(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .P7ParsingViterbi:	 RIP: 409b60	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 409b60	 Bytes: 1
  %loadMem_409b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b60 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b60)
  store %struct.Memory* %call_409b60, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 409b61	 Bytes: 3
  %loadMem_409b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b61 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b61)
  store %struct.Memory* %call_409b61, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 409b64	 Bytes: 1
  %loadMem_409b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b64 = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b64)
  store %struct.Memory* %call_409b64, %struct.Memory** %MEMORY

  ; Code: subq $0xb8, %rsp	 RIP: 409b65	 Bytes: 7
  %loadMem_409b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b65 = call %struct.Memory* @routine_subq__0xb8___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b65)
  store %struct.Memory* %call_409b65, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 409b6c	 Bytes: 5
  %loadMem_409b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b6c = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b6c)
  store %struct.Memory* %call_409b6c, %struct.Memory** %MEMORY

  ; Code: leaq -0x48(%rbp), %r8	 RIP: 409b71	 Bytes: 4
  %loadMem_409b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b71 = call %struct.Memory* @routine_leaq_MINUS0x48__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b71)
  store %struct.Memory* %call_409b71, %struct.Memory** %MEMORY

  ; Code: leaq -0x50(%rbp), %r9	 RIP: 409b75	 Bytes: 4
  %loadMem_409b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b75 = call %struct.Memory* @routine_leaq_MINUS0x50__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b75)
  store %struct.Memory* %call_409b75, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %r10	 RIP: 409b79	 Bytes: 4
  %loadMem_409b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b79 = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b79)
  store %struct.Memory* %call_409b79, %struct.Memory** %MEMORY

  ; Code: leaq -0x58(%rbp), %r11	 RIP: 409b7d	 Bytes: 4
  %loadMem_409b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b7d = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b7d)
  store %struct.Memory* %call_409b7d, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 409b81	 Bytes: 4
  %loadMem_409b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b81 = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b81)
  store %struct.Memory* %call_409b81, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x14(%rbp)	 RIP: 409b85	 Bytes: 3
  %loadMem_409b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b85 = call %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b85)
  store %struct.Memory* %call_409b85, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x20(%rbp)	 RIP: 409b88	 Bytes: 4
  %loadMem_409b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b88 = call %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b88)
  store %struct.Memory* %call_409b88, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x28(%rbp)	 RIP: 409b8c	 Bytes: 4
  %loadMem_409b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b8c = call %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b8c)
  store %struct.Memory* %call_409b8c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 409b90	 Bytes: 4
  %loadMem_409b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b90 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b90)
  store %struct.Memory* %call_409b90, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rcx), %esi	 RIP: 409b94	 Bytes: 6
  %loadMem_409b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b94 = call %struct.Memory* @routine_movl_0x88__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b94)
  store %struct.Memory* %call_409b94, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 409b9a	 Bytes: 2
  %loadMem_409b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b9a = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b9a)
  store %struct.Memory* %call_409b9a, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rdx	 RIP: 409b9c	 Bytes: 3
  %loadMem_409b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b9c = call %struct.Memory* @routine_movq__r8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b9c)
  store %struct.Memory* %call_409b9c, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rcx	 RIP: 409b9f	 Bytes: 3
  %loadMem_409b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b9f = call %struct.Memory* @routine_movq__r9___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b9f)
  store %struct.Memory* %call_409b9f, %struct.Memory** %MEMORY

  ; Code: movq %r10, %r8	 RIP: 409ba2	 Bytes: 3
  %loadMem_409ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ba2 = call %struct.Memory* @routine_movq__r10___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ba2)
  store %struct.Memory* %call_409ba2, %struct.Memory** %MEMORY

  ; Code: movq %r11, %r9	 RIP: 409ba5	 Bytes: 3
  %loadMem_409ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ba5 = call %struct.Memory* @routine_movq__r11___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ba5)
  store %struct.Memory* %call_409ba5, %struct.Memory** %MEMORY

  ; Code: callq .AllocPlan7Matrix	 RIP: 409ba8	 Bytes: 5
  %loadMem1_409ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_409ba8 = call %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_409ba8, i64 -8984, i64 5, i64 5)
  store %struct.Memory* %call1_409ba8, %struct.Memory** %MEMORY

  %loadMem2_409ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409ba8 = load i64, i64* %3
  %call2_409ba8 = call %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* %0, i64  %loadPC_409ba8, %struct.Memory* %loadMem2_409ba8)
  store %struct.Memory* %call2_409ba8, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %edi	 RIP: 409bad	 Bytes: 5
  %loadMem_409bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bad = call %struct.Memory* @routine_movl__0x2___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bad)
  store %struct.Memory* %call_409bad, %struct.Memory** %MEMORY

  ; Code: leaq -0x68(%rbp), %rdx	 RIP: 409bb2	 Bytes: 4
  %loadMem_409bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bb2 = call %struct.Memory* @routine_leaq_MINUS0x68__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bb2)
  store %struct.Memory* %call_409bb2, %struct.Memory** %MEMORY

  ; Code: leaq -0x70(%rbp), %rcx	 RIP: 409bb6	 Bytes: 4
  %loadMem_409bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bb6 = call %struct.Memory* @routine_leaq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bb6)
  store %struct.Memory* %call_409bb6, %struct.Memory** %MEMORY

  ; Code: leaq -0x80(%rbp), %r8	 RIP: 409bba	 Bytes: 4
  %loadMem_409bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bba = call %struct.Memory* @routine_leaq_MINUS0x80__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bba)
  store %struct.Memory* %call_409bba, %struct.Memory** %MEMORY

  ; Code: leaq -0x78(%rbp), %r9	 RIP: 409bbe	 Bytes: 4
  %loadMem_409bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bbe = call %struct.Memory* @routine_leaq_MINUS0x78__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bbe)
  store %struct.Memory* %call_409bbe, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 409bc2	 Bytes: 4
  %loadMem_409bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bc2 = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bc2)
  store %struct.Memory* %call_409bc2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 409bc6	 Bytes: 4
  %loadMem_409bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bc6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bc6)
  store %struct.Memory* %call_409bc6, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rax), %esi	 RIP: 409bca	 Bytes: 6
  %loadMem_409bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bca = call %struct.Memory* @routine_movl_0x88__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bca)
  store %struct.Memory* %call_409bca, %struct.Memory** %MEMORY

  ; Code: callq .AllocPlan7Matrix	 RIP: 409bd0	 Bytes: 5
  %loadMem1_409bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_409bd0 = call %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_409bd0, i64 -9024, i64 5, i64 5)
  store %struct.Memory* %call1_409bd0, %struct.Memory** %MEMORY

  %loadMem2_409bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409bd0 = load i64, i64* %3
  %call2_409bd0 = call %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* %0, i64  %loadPC_409bd0, %struct.Memory* %loadMem2_409bd0)
  store %struct.Memory* %call2_409bd0, %struct.Memory** %MEMORY

  ; Code: movq $0x455f2a, %rdi	 RIP: 409bd5	 Bytes: 10
  %loadMem_409bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bd5 = call %struct.Memory* @routine_movq__0x455f2a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bd5)
  store %struct.Memory* %call_409bd5, %struct.Memory** %MEMORY

  ; Code: movl $0x43b, %esi	 RIP: 409bdf	 Bytes: 5
  %loadMem_409bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bdf = call %struct.Memory* @routine_movl__0x43b___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bdf)
  store %struct.Memory* %call_409bdf, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 409be4	 Bytes: 4
  %loadMem_409be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409be4 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409be4)
  store %struct.Memory* %call_409be4, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ebx	 RIP: 409be8	 Bytes: 3
  %loadMem_409be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409be8 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409be8)
  store %struct.Memory* %call_409be8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ebx	 RIP: 409beb	 Bytes: 3
  %loadMem_409beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409beb = call %struct.Memory* @routine_addl__0x1___ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409beb)
  store %struct.Memory* %call_409beb, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %rax	 RIP: 409bee	 Bytes: 3
  %loadMem_409bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bee = call %struct.Memory* @routine_movslq__ebx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bee)
  store %struct.Memory* %call_409bee, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 409bf1	 Bytes: 4
  %loadMem_409bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bf1 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bf1)
  store %struct.Memory* %call_409bf1, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 409bf5	 Bytes: 3
  %loadMem_409bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bf5 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bf5)
  store %struct.Memory* %call_409bf5, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 409bf8	 Bytes: 5
  %loadMem1_409bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_409bf8 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_409bf8, i64 246888, i64 5, i64 5)
  store %struct.Memory* %call1_409bf8, %struct.Memory** %MEMORY

  %loadMem2_409bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409bf8 = load i64, i64* %3
  %call2_409bf8 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_409bf8, %struct.Memory* %loadMem2_409bf8)
  store %struct.Memory* %call2_409bf8, %struct.Memory** %MEMORY

  ; Code: movq $0x455f2a, %rdi	 RIP: 409bfd	 Bytes: 10
  %loadMem_409bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bfd = call %struct.Memory* @routine_movq__0x455f2a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bfd)
  store %struct.Memory* %call_409bfd, %struct.Memory** %MEMORY

  ; Code: movl $0x43c, %esi	 RIP: 409c07	 Bytes: 5
  %loadMem_409c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c07 = call %struct.Memory* @routine_movl__0x43c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c07)
  store %struct.Memory* %call_409c07, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x88(%rbp)	 RIP: 409c0c	 Bytes: 7
  %loadMem_409c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c0c = call %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c0c)
  store %struct.Memory* %call_409c0c, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ebx	 RIP: 409c13	 Bytes: 3
  %loadMem_409c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c13 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c13)
  store %struct.Memory* %call_409c13, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ebx	 RIP: 409c16	 Bytes: 3
  %loadMem_409c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c16 = call %struct.Memory* @routine_addl__0x1___ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c16)
  store %struct.Memory* %call_409c16, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %rax	 RIP: 409c19	 Bytes: 3
  %loadMem_409c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c19 = call %struct.Memory* @routine_movslq__ebx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c19)
  store %struct.Memory* %call_409c19, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 409c1c	 Bytes: 4
  %loadMem_409c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c1c = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c1c)
  store %struct.Memory* %call_409c1c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 409c20	 Bytes: 3
  %loadMem_409c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c20 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c20)
  store %struct.Memory* %call_409c20, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 409c23	 Bytes: 5
  %loadMem1_409c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_409c23 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_409c23, i64 246845, i64 5, i64 5)
  store %struct.Memory* %call1_409c23, %struct.Memory** %MEMORY

  %loadMem2_409c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409c23 = load i64, i64* %3
  %call2_409c23 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_409c23, %struct.Memory* %loadMem2_409c23)
  store %struct.Memory* %call2_409c23, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x90(%rbp)	 RIP: 409c28	 Bytes: 7
  %loadMem_409c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c28 = call %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c28)
  store %struct.Memory* %call_409c28, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 409c2f	 Bytes: 4
  %loadMem_409c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c2f = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c2f)
  store %struct.Memory* %call_409c2f, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 409c33	 Bytes: 3
  %loadMem_409c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c33 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c33)
  store %struct.Memory* %call_409c33, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x10(%rax)	 RIP: 409c36	 Bytes: 7
  %loadMem_409c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c36 = call %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c36)
  store %struct.Memory* %call_409c36, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 409c3d	 Bytes: 4
  %loadMem_409c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c3d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c3d)
  store %struct.Memory* %call_409c3d, %struct.Memory** %MEMORY

  ; Code: movl 0x150(%rax), %esi	 RIP: 409c41	 Bytes: 6
  %loadMem_409c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c41 = call %struct.Memory* @routine_movl_0x150__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c41)
  store %struct.Memory* %call_409c41, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 409c47	 Bytes: 4
  %loadMem_409c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c47 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c47)
  store %struct.Memory* %call_409c47, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 409c4b	 Bytes: 3
  %loadMem_409c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c4b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c4b)
  store %struct.Memory* %call_409c4b, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax)	 RIP: 409c4e	 Bytes: 2
  %loadMem_409c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c4e = call %struct.Memory* @routine_movl__esi____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c4e)
  store %struct.Memory* %call_409c4e, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 409c50	 Bytes: 7
  %loadMem_409c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c50 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c50)
  store %struct.Memory* %call_409c50, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax)	 RIP: 409c57	 Bytes: 6
  %loadMem_409c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c57 = call %struct.Memory* @routine_movl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c57)
  store %struct.Memory* %call_409c57, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 409c5d	 Bytes: 4
  %loadMem_409c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c5d = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c5d)
  store %struct.Memory* %call_409c5d, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 409c61	 Bytes: 3
  %loadMem_409c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c61 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c61)
  store %struct.Memory* %call_409c61, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0xc(%rax)	 RIP: 409c64	 Bytes: 7
  %loadMem_409c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c64 = call %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c64)
  store %struct.Memory* %call_409c64, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 409c6b	 Bytes: 4
  %loadMem_409c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c6b = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c6b)
  store %struct.Memory* %call_409c6b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 409c6f	 Bytes: 3
  %loadMem_409c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c6f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c6f)
  store %struct.Memory* %call_409c6f, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x8(%rax)	 RIP: 409c72	 Bytes: 7
  %loadMem_409c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c72 = call %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c72)
  store %struct.Memory* %call_409c72, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 409c79	 Bytes: 4
  %loadMem_409c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c79 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c79)
  store %struct.Memory* %call_409c79, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 409c7d	 Bytes: 3
  %loadMem_409c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c7d = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c7d)
  store %struct.Memory* %call_409c7d, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x4(%rax)	 RIP: 409c80	 Bytes: 7
  %loadMem_409c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c80 = call %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c80)
  store %struct.Memory* %call_409c80, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rax	 RIP: 409c87	 Bytes: 7
  %loadMem_409c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c87 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c87)
  store %struct.Memory* %call_409c87, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, (%rax)	 RIP: 409c8e	 Bytes: 6
  %loadMem_409c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c8e = call %struct.Memory* @routine_movl__0xffffffff____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c8e)
  store %struct.Memory* %call_409c8e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x9c(%rbp)	 RIP: 409c94	 Bytes: 10
  %loadMem_409c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c94 = call %struct.Memory* @routine_movl__0x0__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c94)
  store %struct.Memory* %call_409c94, %struct.Memory** %MEMORY

  ; Code: .L_409c9e:	 RIP: 409c9e	 Bytes: 0
  br label %block_.L_409c9e
block_.L_409c9e:

  ; Code: movl -0x9c(%rbp), %eax	 RIP: 409c9e	 Bytes: 6
  %loadMem_409c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c9e = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c9e)
  store %struct.Memory* %call_409c9e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 409ca4	 Bytes: 4
  %loadMem_409ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ca4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ca4)
  store %struct.Memory* %call_409ca4, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 409ca8	 Bytes: 6
  %loadMem_409ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ca8 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ca8)
  store %struct.Memory* %call_409ca8, %struct.Memory** %MEMORY

  ; Code: jg .L_409d07	 RIP: 409cae	 Bytes: 6
  %loadMem_409cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cae = call %struct.Memory* @routine_jg_.L_409d07(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cae, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_409cae, %struct.Memory** %MEMORY

  %loadBr_409cae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409cae = icmp eq i8 %loadBr_409cae, 1
  br i1 %cmpBr_409cae, label %block_.L_409d07, label %block_409cb4

block_409cb4:
  ; Code: movq -0x58(%rbp), %rax	 RIP: 409cb4	 Bytes: 4
  %loadMem_409cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cb4 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cb4)
  store %struct.Memory* %call_409cb4, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 409cb8	 Bytes: 3
  %loadMem_409cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cb8 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cb8)
  store %struct.Memory* %call_409cb8, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 409cbb	 Bytes: 7
  %loadMem_409cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cbb = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cbb)
  store %struct.Memory* %call_409cbb, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 409cc2	 Bytes: 7
  %loadMem_409cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cc2 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cc2)
  store %struct.Memory* %call_409cc2, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 409cc9	 Bytes: 4
  %loadMem_409cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cc9 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cc9)
  store %struct.Memory* %call_409cc9, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 409ccd	 Bytes: 3
  %loadMem_409ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ccd = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ccd)
  store %struct.Memory* %call_409ccd, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 409cd0	 Bytes: 7
  %loadMem_409cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cd0 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cd0)
  store %struct.Memory* %call_409cd0, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 409cd7	 Bytes: 7
  %loadMem_409cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cd7 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cd7)
  store %struct.Memory* %call_409cd7, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 409cde	 Bytes: 4
  %loadMem_409cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cde = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cde)
  store %struct.Memory* %call_409cde, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 409ce2	 Bytes: 3
  %loadMem_409ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ce2 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ce2)
  store %struct.Memory* %call_409ce2, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 409ce5	 Bytes: 7
  %loadMem_409ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ce5 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ce5)
  store %struct.Memory* %call_409ce5, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 409cec	 Bytes: 7
  %loadMem_409cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cec = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cec)
  store %struct.Memory* %call_409cec, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %eax	 RIP: 409cf3	 Bytes: 6
  %loadMem_409cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cf3 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cf3)
  store %struct.Memory* %call_409cf3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 409cf9	 Bytes: 3
  %loadMem_409cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cf9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cf9)
  store %struct.Memory* %call_409cf9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x9c(%rbp)	 RIP: 409cfc	 Bytes: 6
  %loadMem_409cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cfc = call %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cfc)
  store %struct.Memory* %call_409cfc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_409c9e	 RIP: 409d02	 Bytes: 5
  %loadMem_409d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d02 = call %struct.Memory* @routine_jmpq_.L_409c9e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d02, i64 -100, i64 5)
  store %struct.Memory* %call_409d02, %struct.Memory** %MEMORY

  br label %block_.L_409c9e

  ; Code: .L_409d07:	 RIP: 409d07	 Bytes: 0
block_.L_409d07:

  ; Code: movl $0x1, -0x98(%rbp)	 RIP: 409d07	 Bytes: 10
  %loadMem_409d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d07 = call %struct.Memory* @routine_movl__0x1__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d07)
  store %struct.Memory* %call_409d07, %struct.Memory** %MEMORY

  ; Code: .L_409d11:	 RIP: 409d11	 Bytes: 0
  br label %block_.L_409d11
block_.L_409d11:

  ; Code: movl -0x98(%rbp), %eax	 RIP: 409d11	 Bytes: 6
  %loadMem_409d11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d11 = call %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d11)
  store %struct.Memory* %call_409d11, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 409d17	 Bytes: 3
  %loadMem_409d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d17 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d17)
  store %struct.Memory* %call_409d17, %struct.Memory** %MEMORY

  ; Code: jg .L_40a8c2	 RIP: 409d1a	 Bytes: 6
  %loadMem_409d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d1a = call %struct.Memory* @routine_jg_.L_40a8c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d1a, i8* %BRANCH_TAKEN, i64 2984, i64 6, i64 6)
  store %struct.Memory* %call_409d1a, %struct.Memory** %MEMORY

  %loadBr_409d1a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409d1a = icmp eq i8 %loadBr_409d1a, 1
  br i1 %cmpBr_409d1a, label %block_.L_40a8c2, label %block_409d20

block_409d20:
  ; Code: movl $0x2, %eax	 RIP: 409d20	 Bytes: 5
  %loadMem_409d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d20 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d20)
  store %struct.Memory* %call_409d20, %struct.Memory** %MEMORY

  ; Code: movl -0x98(%rbp), %ecx	 RIP: 409d25	 Bytes: 6
  %loadMem_409d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d25 = call %struct.Memory* @routine_movl_MINUS0x98__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d25)
  store %struct.Memory* %call_409d25, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb0(%rbp)	 RIP: 409d2b	 Bytes: 6
  %loadMem_409d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d2b = call %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d2b)
  store %struct.Memory* %call_409d2b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 409d31	 Bytes: 2
  %loadMem_409d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d31 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d31)
  store %struct.Memory* %call_409d31, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 409d33	 Bytes: 1
  %loadMem_409d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d33 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d33)
  store %struct.Memory* %call_409d33, %struct.Memory** %MEMORY

  ; Code: movl -0xb0(%rbp), %ecx	 RIP: 409d34	 Bytes: 6
  %loadMem_409d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d34 = call %struct.Memory* @routine_movl_MINUS0xb0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d34)
  store %struct.Memory* %call_409d34, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 409d3a	 Bytes: 2
  %loadMem_409d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d3a = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d3a)
  store %struct.Memory* %call_409d3a, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xa4(%rbp)	 RIP: 409d3c	 Bytes: 6
  %loadMem_409d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d3c = call %struct.Memory* @routine_movl__edx__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d3c)
  store %struct.Memory* %call_409d3c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0xa4(%rbp)	 RIP: 409d42	 Bytes: 7
  %loadMem_409d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d42 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d42)
  store %struct.Memory* %call_409d42, %struct.Memory** %MEMORY

  ; Code: setne %sil	 RIP: 409d49	 Bytes: 4
  %loadMem_409d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d49 = call %struct.Memory* @routine_setne__sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d49)
  store %struct.Memory* %call_409d49, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %sil	 RIP: 409d4d	 Bytes: 4
  %loadMem_409d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d4d = call %struct.Memory* @routine_xorb__0xff___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d4d)
  store %struct.Memory* %call_409d4d, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %sil	 RIP: 409d51	 Bytes: 4
  %loadMem_409d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d51 = call %struct.Memory* @routine_andb__0x1___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d51)
  store %struct.Memory* %call_409d51, %struct.Memory** %MEMORY

  ; Code: movzbl %sil, %edx	 RIP: 409d55	 Bytes: 4
  %loadMem_409d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d55 = call %struct.Memory* @routine_movzbl__sil___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d55)
  store %struct.Memory* %call_409d55, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xa8(%rbp)	 RIP: 409d59	 Bytes: 6
  %loadMem_409d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d59 = call %struct.Memory* @routine_movl__edx__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d59)
  store %struct.Memory* %call_409d59, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rdi	 RIP: 409d5f	 Bytes: 4
  %loadMem_409d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d5f = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d5f)
  store %struct.Memory* %call_409d5f, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %r8	 RIP: 409d63	 Bytes: 7
  %loadMem_409d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d63 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d63)
  store %struct.Memory* %call_409d63, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%r8,8), %rdi	 RIP: 409d6a	 Bytes: 4
  %loadMem_409d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d6a = call %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d6a)
  store %struct.Memory* %call_409d6a, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rdi)	 RIP: 409d6e	 Bytes: 6
  %loadMem_409d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d6e = call %struct.Memory* @routine_movl__0xc521974f____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d6e)
  store %struct.Memory* %call_409d6e, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 409d74	 Bytes: 4
  %loadMem_409d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d74 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d74)
  store %struct.Memory* %call_409d74, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %r8	 RIP: 409d78	 Bytes: 7
  %loadMem_409d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d78 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d78)
  store %struct.Memory* %call_409d78, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%r8,8), %rdi	 RIP: 409d7f	 Bytes: 4
  %loadMem_409d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d7f = call %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d7f)
  store %struct.Memory* %call_409d7f, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rdi)	 RIP: 409d83	 Bytes: 6
  %loadMem_409d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d83 = call %struct.Memory* @routine_movl__0xc521974f____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d83)
  store %struct.Memory* %call_409d83, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 409d89	 Bytes: 4
  %loadMem_409d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d89 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d89)
  store %struct.Memory* %call_409d89, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %r8	 RIP: 409d8d	 Bytes: 7
  %loadMem_409d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d8d = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d8d)
  store %struct.Memory* %call_409d8d, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%r8,8), %rdi	 RIP: 409d94	 Bytes: 4
  %loadMem_409d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d94 = call %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d94)
  store %struct.Memory* %call_409d94, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rdi)	 RIP: 409d98	 Bytes: 6
  %loadMem_409d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d98 = call %struct.Memory* @routine_movl__0xc521974f____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d98)
  store %struct.Memory* %call_409d98, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x9c(%rbp)	 RIP: 409d9e	 Bytes: 10
  %loadMem_409d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d9e = call %struct.Memory* @routine_movl__0x1__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d9e)
  store %struct.Memory* %call_409d9e, %struct.Memory** %MEMORY

  ; Code: .L_409da8:	 RIP: 409da8	 Bytes: 0
  br label %block_.L_409da8
block_.L_409da8:

  ; Code: movl -0x9c(%rbp), %eax	 RIP: 409da8	 Bytes: 6
  %loadMem_409da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409da8 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409da8)
  store %struct.Memory* %call_409da8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 409dae	 Bytes: 4
  %loadMem_409dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dae = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dae)
  store %struct.Memory* %call_409dae, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 409db2	 Bytes: 6
  %loadMem_409db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409db2 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409db2)
  store %struct.Memory* %call_409db2, %struct.Memory** %MEMORY

  ; Code: jg .L_40a4ba	 RIP: 409db8	 Bytes: 6
  %loadMem_409db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409db8 = call %struct.Memory* @routine_jg_.L_40a4ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409db8, i8* %BRANCH_TAKEN, i64 1794, i64 6, i64 6)
  store %struct.Memory* %call_409db8, %struct.Memory** %MEMORY

  %loadBr_409db8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409db8 = icmp eq i8 %loadBr_409db8, 1
  br i1 %cmpBr_409db8, label %block_.L_40a4ba, label %block_409dbe

block_409dbe:
  ; Code: movq -0x50(%rbp), %rax	 RIP: 409dbe	 Bytes: 4
  %loadMem_409dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dbe = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dbe)
  store %struct.Memory* %call_409dbe, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 409dc2	 Bytes: 7
  %loadMem_409dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dc2 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dc2)
  store %struct.Memory* %call_409dc2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 409dc9	 Bytes: 4
  %loadMem_409dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dc9 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dc9)
  store %struct.Memory* %call_409dc9, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 409dcd	 Bytes: 7
  %loadMem_409dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dcd = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dcd)
  store %struct.Memory* %call_409dcd, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 409dd4	 Bytes: 7
  %loadMem_409dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dd4 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dd4)
  store %struct.Memory* %call_409dd4, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 409ddb	 Bytes: 4
  %loadMem_409ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ddb = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ddb)
  store %struct.Memory* %call_409ddb, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rcx	 RIP: 409ddf	 Bytes: 7
  %loadMem_409ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ddf = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ddf)
  store %struct.Memory* %call_409ddf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 409de6	 Bytes: 4
  %loadMem_409de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409de6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409de6)
  store %struct.Memory* %call_409de6, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %edx	 RIP: 409dea	 Bytes: 6
  %loadMem_409dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dea = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dea)
  store %struct.Memory* %call_409dea, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 409df0	 Bytes: 3
  %loadMem_409df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409df0 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409df0)
  store %struct.Memory* %call_409df0, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 409df3	 Bytes: 3
  %loadMem_409df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409df3 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409df3)
  store %struct.Memory* %call_409df3, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 409df6	 Bytes: 3
  %loadMem_409df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409df6 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409df6)
  store %struct.Memory* %call_409df6, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 409df9	 Bytes: 4
  %loadMem_409df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409df9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409df9)
  store %struct.Memory* %call_409df9, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 409dfd	 Bytes: 7
  %loadMem_409dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dfd = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dfd)
  store %struct.Memory* %call_409dfd, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 409e04	 Bytes: 3
  %loadMem_409e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e04 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e04)
  store %struct.Memory* %call_409e04, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %esi	 RIP: 409e07	 Bytes: 6
  %loadMem_409e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e07 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e07)
  store %struct.Memory* %call_409e07, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 409e0d	 Bytes: 3
  %loadMem_409e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e0d = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e0d)
  store %struct.Memory* %call_409e0d, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 409e10	 Bytes: 3
  %loadMem_409e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e10 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e10)
  store %struct.Memory* %call_409e10, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 409e13	 Bytes: 3
  %loadMem_409e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e13 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e13)
  store %struct.Memory* %call_409e13, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 409e16	 Bytes: 6
  %loadMem_409e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e16 = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e16)
  store %struct.Memory* %call_409e16, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, %edx	 RIP: 409e1c	 Bytes: 6
  %loadMem_409e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e1c = call %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e1c)
  store %struct.Memory* %call_409e1c, %struct.Memory** %MEMORY

  ; Code: jle .L_409e7e	 RIP: 409e22	 Bytes: 6
  %loadMem_409e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e22 = call %struct.Memory* @routine_jle_.L_409e7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e22, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_409e22, %struct.Memory** %MEMORY

  %loadBr_409e22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409e22 = icmp eq i8 %loadBr_409e22, 1
  br i1 %cmpBr_409e22, label %block_.L_409e7e, label %block_409e28

block_409e28:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 409e28	 Bytes: 6
  %loadMem_409e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e28 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e28)
  store %struct.Memory* %call_409e28, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 409e2e	 Bytes: 4
  %loadMem_409e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e2e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e2e)
  store %struct.Memory* %call_409e2e, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 409e32	 Bytes: 7
  %loadMem_409e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e32 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e32)
  store %struct.Memory* %call_409e32, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 409e39	 Bytes: 4
  %loadMem_409e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e39 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e39)
  store %struct.Memory* %call_409e39, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 409e3d	 Bytes: 7
  %loadMem_409e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e3d = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e3d)
  store %struct.Memory* %call_409e3d, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 409e44	 Bytes: 3
  %loadMem_409e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e44 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e44)
  store %struct.Memory* %call_409e44, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rcx	 RIP: 409e47	 Bytes: 4
  %loadMem_409e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e47 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e47)
  store %struct.Memory* %call_409e47, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rdx	 RIP: 409e4b	 Bytes: 7
  %loadMem_409e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e4b = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e4b)
  store %struct.Memory* %call_409e4b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 409e52	 Bytes: 4
  %loadMem_409e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e52 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e52)
  store %struct.Memory* %call_409e52, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %eax	 RIP: 409e56	 Bytes: 6
  %loadMem_409e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e56 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e56)
  store %struct.Memory* %call_409e56, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 409e5c	 Bytes: 3
  %loadMem_409e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e5c = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e5c)
  store %struct.Memory* %call_409e5c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 409e5f	 Bytes: 3
  %loadMem_409e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e5f = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e5f)
  store %struct.Memory* %call_409e5f, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 409e62	 Bytes: 3
  %loadMem_409e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e62 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e62)
  store %struct.Memory* %call_409e62, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rcx	 RIP: 409e65	 Bytes: 4
  %loadMem_409e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e65 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e65)
  store %struct.Memory* %call_409e65, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 409e69	 Bytes: 7
  %loadMem_409e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e69 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e69)
  store %struct.Memory* %call_409e69, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 409e70	 Bytes: 4
  %loadMem_409e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e70 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e70)
  store %struct.Memory* %call_409e70, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 409e74	 Bytes: 7
  %loadMem_409e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e74 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e74)
  store %struct.Memory* %call_409e74, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 409e7b	 Bytes: 3
  %loadMem_409e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e7b = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e7b)
  store %struct.Memory* %call_409e7b, %struct.Memory** %MEMORY

  ; Code: .L_409e7e:	 RIP: 409e7e	 Bytes: 0
  br label %block_.L_409e7e
block_.L_409e7e:

  ; Code: movq -0x60(%rbp), %rax	 RIP: 409e7e	 Bytes: 4
  %loadMem_409e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e7e = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e7e)
  store %struct.Memory* %call_409e7e, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rcx	 RIP: 409e82	 Bytes: 7
  %loadMem_409e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e82 = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e82)
  store %struct.Memory* %call_409e82, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 409e89	 Bytes: 4
  %loadMem_409e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e89 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e89)
  store %struct.Memory* %call_409e89, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %edx	 RIP: 409e8d	 Bytes: 6
  %loadMem_409e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e8d = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e8d)
  store %struct.Memory* %call_409e8d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 409e93	 Bytes: 3
  %loadMem_409e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e93 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e93)
  store %struct.Memory* %call_409e93, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 409e96	 Bytes: 3
  %loadMem_409e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e96 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e96)
  store %struct.Memory* %call_409e96, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 409e99	 Bytes: 3
  %loadMem_409e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e99 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e99)
  store %struct.Memory* %call_409e99, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 409e9c	 Bytes: 4
  %loadMem_409e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e9c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e9c)
  store %struct.Memory* %call_409e9c, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 409ea0	 Bytes: 7
  %loadMem_409ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ea0 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ea0)
  store %struct.Memory* %call_409ea0, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 409ea7	 Bytes: 4
  %loadMem_409ea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ea7 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ea7)
  store %struct.Memory* %call_409ea7, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %esi	 RIP: 409eab	 Bytes: 6
  %loadMem_409eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409eab = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409eab)
  store %struct.Memory* %call_409eab, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 409eb1	 Bytes: 3
  %loadMem_409eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409eb1 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409eb1)
  store %struct.Memory* %call_409eb1, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 409eb4	 Bytes: 3
  %loadMem_409eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409eb4 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409eb4)
  store %struct.Memory* %call_409eb4, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 409eb7	 Bytes: 3
  %loadMem_409eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409eb7 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409eb7)
  store %struct.Memory* %call_409eb7, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 409eba	 Bytes: 6
  %loadMem_409eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409eba = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409eba)
  store %struct.Memory* %call_409eba, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 409ec0	 Bytes: 4
  %loadMem_409ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ec0 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ec0)
  store %struct.Memory* %call_409ec0, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 409ec4	 Bytes: 7
  %loadMem_409ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ec4 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ec4)
  store %struct.Memory* %call_409ec4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 409ecb	 Bytes: 4
  %loadMem_409ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ecb = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ecb)
  store %struct.Memory* %call_409ecb, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 409ecf	 Bytes: 7
  %loadMem_409ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ecf = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ecf)
  store %struct.Memory* %call_409ecf, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rcx,4), %edx	 RIP: 409ed6	 Bytes: 3
  %loadMem_409ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ed6 = call %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ed6)
  store %struct.Memory* %call_409ed6, %struct.Memory** %MEMORY

  ; Code: jle .L_409f35	 RIP: 409ed9	 Bytes: 6
  %loadMem_409ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ed9 = call %struct.Memory* @routine_jle_.L_409f35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ed9, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_409ed9, %struct.Memory** %MEMORY

  %loadBr_409ed9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409ed9 = icmp eq i8 %loadBr_409ed9, 1
  br i1 %cmpBr_409ed9, label %block_.L_409f35, label %block_409edf

block_409edf:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 409edf	 Bytes: 6
  %loadMem_409edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409edf = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409edf)
  store %struct.Memory* %call_409edf, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 409ee5	 Bytes: 4
  %loadMem_409ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ee5 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ee5)
  store %struct.Memory* %call_409ee5, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 409ee9	 Bytes: 7
  %loadMem_409ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ee9 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ee9)
  store %struct.Memory* %call_409ee9, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 409ef0	 Bytes: 4
  %loadMem_409ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ef0 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ef0)
  store %struct.Memory* %call_409ef0, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 409ef4	 Bytes: 7
  %loadMem_409ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ef4 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ef4)
  store %struct.Memory* %call_409ef4, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 409efb	 Bytes: 3
  %loadMem_409efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409efb = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409efb)
  store %struct.Memory* %call_409efb, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rcx	 RIP: 409efe	 Bytes: 4
  %loadMem_409efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409efe = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409efe)
  store %struct.Memory* %call_409efe, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rdx	 RIP: 409f02	 Bytes: 7
  %loadMem_409f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f02 = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f02)
  store %struct.Memory* %call_409f02, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 409f09	 Bytes: 4
  %loadMem_409f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f09 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f09)
  store %struct.Memory* %call_409f09, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %eax	 RIP: 409f0d	 Bytes: 6
  %loadMem_409f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f0d = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f0d)
  store %struct.Memory* %call_409f0d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 409f13	 Bytes: 3
  %loadMem_409f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f13 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f13)
  store %struct.Memory* %call_409f13, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 409f16	 Bytes: 3
  %loadMem_409f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f16 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f16)
  store %struct.Memory* %call_409f16, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 409f19	 Bytes: 3
  %loadMem_409f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f19 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f19)
  store %struct.Memory* %call_409f19, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rcx	 RIP: 409f1c	 Bytes: 4
  %loadMem_409f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f1c = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f1c)
  store %struct.Memory* %call_409f1c, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 409f20	 Bytes: 7
  %loadMem_409f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f20 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f20)
  store %struct.Memory* %call_409f20, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 409f27	 Bytes: 4
  %loadMem_409f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f27 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f27)
  store %struct.Memory* %call_409f27, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 409f2b	 Bytes: 7
  %loadMem_409f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f2b = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f2b)
  store %struct.Memory* %call_409f2b, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 409f32	 Bytes: 3
  %loadMem_409f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f32 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f32)
  store %struct.Memory* %call_409f32, %struct.Memory** %MEMORY

  ; Code: .L_409f35:	 RIP: 409f35	 Bytes: 0
  br label %block_.L_409f35
block_.L_409f35:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 409f35	 Bytes: 4
  %loadMem_409f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f35 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f35)
  store %struct.Memory* %call_409f35, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rcx	 RIP: 409f39	 Bytes: 7
  %loadMem_409f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f39 = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f39)
  store %struct.Memory* %call_409f39, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 409f40	 Bytes: 4
  %loadMem_409f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f40 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f40)
  store %struct.Memory* %call_409f40, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 409f44	 Bytes: 2
  %loadMem_409f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f44 = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f44)
  store %struct.Memory* %call_409f44, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 409f46	 Bytes: 4
  %loadMem_409f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f46 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f46)
  store %struct.Memory* %call_409f46, %struct.Memory** %MEMORY

  ; Code: movq 0x170(%rax), %rax	 RIP: 409f4a	 Bytes: 7
  %loadMem_409f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f4a = call %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f4a)
  store %struct.Memory* %call_409f4a, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 409f51	 Bytes: 7
  %loadMem_409f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f51 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f51)
  store %struct.Memory* %call_409f51, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 409f58	 Bytes: 3
  %loadMem_409f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f58 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f58)
  store %struct.Memory* %call_409f58, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 409f5b	 Bytes: 6
  %loadMem_409f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f5b = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f5b)
  store %struct.Memory* %call_409f5b, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 409f61	 Bytes: 4
  %loadMem_409f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f61 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f61)
  store %struct.Memory* %call_409f61, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 409f65	 Bytes: 7
  %loadMem_409f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f65 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f65)
  store %struct.Memory* %call_409f65, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 409f6c	 Bytes: 4
  %loadMem_409f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f6c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f6c)
  store %struct.Memory* %call_409f6c, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 409f70	 Bytes: 7
  %loadMem_409f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f70 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f70)
  store %struct.Memory* %call_409f70, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rcx,4), %edx	 RIP: 409f77	 Bytes: 3
  %loadMem_409f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f77 = call %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f77)
  store %struct.Memory* %call_409f77, %struct.Memory** %MEMORY

  ; Code: jle .L_409fc1	 RIP: 409f7a	 Bytes: 6
  %loadMem_409f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f7a = call %struct.Memory* @routine_jle_.L_409fc1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f7a, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_409f7a, %struct.Memory** %MEMORY

  %loadBr_409f7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409f7a = icmp eq i8 %loadBr_409f7a, 1
  br i1 %cmpBr_409f7a, label %block_.L_409fc1, label %block_409f80

block_409f80:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 409f80	 Bytes: 6
  %loadMem_409f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f80 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f80)
  store %struct.Memory* %call_409f80, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 409f86	 Bytes: 4
  %loadMem_409f86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f86 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f86)
  store %struct.Memory* %call_409f86, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 409f8a	 Bytes: 7
  %loadMem_409f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f8a = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f8a)
  store %struct.Memory* %call_409f8a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 409f91	 Bytes: 4
  %loadMem_409f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f91 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f91)
  store %struct.Memory* %call_409f91, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 409f95	 Bytes: 7
  %loadMem_409f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f95 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f95)
  store %struct.Memory* %call_409f95, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 409f9c	 Bytes: 3
  %loadMem_409f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f9c = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f9c)
  store %struct.Memory* %call_409f9c, %struct.Memory** %MEMORY

  ; Code: movl -0x98(%rbp), %eax	 RIP: 409f9f	 Bytes: 6
  %loadMem_409f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f9f = call %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f9f)
  store %struct.Memory* %call_409f9f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 409fa5	 Bytes: 3
  %loadMem_409fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fa5 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fa5)
  store %struct.Memory* %call_409fa5, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rcx	 RIP: 409fa8	 Bytes: 4
  %loadMem_409fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fa8 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fa8)
  store %struct.Memory* %call_409fa8, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 409fac	 Bytes: 7
  %loadMem_409fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fac = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fac)
  store %struct.Memory* %call_409fac, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 409fb3	 Bytes: 4
  %loadMem_409fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fb3 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fb3)
  store %struct.Memory* %call_409fb3, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 409fb7	 Bytes: 7
  %loadMem_409fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fb7 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fb7)
  store %struct.Memory* %call_409fb7, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 409fbe	 Bytes: 3
  %loadMem_409fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fbe = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fbe)
  store %struct.Memory* %call_409fbe, %struct.Memory** %MEMORY

  ; Code: .L_409fc1:	 RIP: 409fc1	 Bytes: 0
  br label %block_.L_409fc1
block_.L_409fc1:

  ; Code: movq -0x58(%rbp), %rax	 RIP: 409fc1	 Bytes: 4
  %loadMem_409fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fc1 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fc1)
  store %struct.Memory* %call_409fc1, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rcx	 RIP: 409fc5	 Bytes: 7
  %loadMem_409fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fc5 = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fc5)
  store %struct.Memory* %call_409fc5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 409fcc	 Bytes: 4
  %loadMem_409fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fcc = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fcc)
  store %struct.Memory* %call_409fcc, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %edx	 RIP: 409fd0	 Bytes: 6
  %loadMem_409fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fd0 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fd0)
  store %struct.Memory* %call_409fd0, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 409fd6	 Bytes: 3
  %loadMem_409fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fd6 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fd6)
  store %struct.Memory* %call_409fd6, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 409fd9	 Bytes: 3
  %loadMem_409fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fd9 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fd9)
  store %struct.Memory* %call_409fd9, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 409fdc	 Bytes: 3
  %loadMem_409fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fdc = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fdc)
  store %struct.Memory* %call_409fdc, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 409fdf	 Bytes: 4
  %loadMem_409fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fdf = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fdf)
  store %struct.Memory* %call_409fdf, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 409fe3	 Bytes: 7
  %loadMem_409fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fe3 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fe3)
  store %struct.Memory* %call_409fe3, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 409fea	 Bytes: 4
  %loadMem_409fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fea = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fea)
  store %struct.Memory* %call_409fea, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %esi	 RIP: 409fee	 Bytes: 6
  %loadMem_409fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fee = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fee)
  store %struct.Memory* %call_409fee, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 409ff4	 Bytes: 3
  %loadMem_409ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ff4 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ff4)
  store %struct.Memory* %call_409ff4, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 409ff7	 Bytes: 3
  %loadMem_409ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ff7 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ff7)
  store %struct.Memory* %call_409ff7, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 409ffa	 Bytes: 3
  %loadMem_409ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ffa = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ffa)
  store %struct.Memory* %call_409ffa, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 409ffd	 Bytes: 6
  %loadMem_409ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ffd = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ffd)
  store %struct.Memory* %call_409ffd, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 40a003	 Bytes: 4
  %loadMem_40a003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a003 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a003)
  store %struct.Memory* %call_40a003, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a007	 Bytes: 7
  %loadMem_40a007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a007 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a007)
  store %struct.Memory* %call_40a007, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a00e	 Bytes: 4
  %loadMem_40a00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a00e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a00e)
  store %struct.Memory* %call_40a00e, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a012	 Bytes: 7
  %loadMem_40a012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a012 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a012)
  store %struct.Memory* %call_40a012, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rcx,4), %edx	 RIP: 40a019	 Bytes: 3
  %loadMem_40a019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a019 = call %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a019)
  store %struct.Memory* %call_40a019, %struct.Memory** %MEMORY

  ; Code: jle .L_40a078	 RIP: 40a01c	 Bytes: 6
  %loadMem_40a01c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a01c = call %struct.Memory* @routine_jle_.L_40a078(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a01c, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_40a01c, %struct.Memory** %MEMORY

  %loadBr_40a01c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a01c = icmp eq i8 %loadBr_40a01c, 1
  br i1 %cmpBr_40a01c, label %block_.L_40a078, label %block_40a022

block_40a022:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 40a022	 Bytes: 6
  %loadMem_40a022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a022 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a022)
  store %struct.Memory* %call_40a022, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 40a028	 Bytes: 4
  %loadMem_40a028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a028 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a028)
  store %struct.Memory* %call_40a028, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a02c	 Bytes: 7
  %loadMem_40a02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a02c = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a02c)
  store %struct.Memory* %call_40a02c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a033	 Bytes: 4
  %loadMem_40a033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a033 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a033)
  store %struct.Memory* %call_40a033, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 40a037	 Bytes: 7
  %loadMem_40a037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a037 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a037)
  store %struct.Memory* %call_40a037, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40a03e	 Bytes: 3
  %loadMem_40a03e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a03e = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a03e)
  store %struct.Memory* %call_40a03e, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rcx	 RIP: 40a041	 Bytes: 4
  %loadMem_40a041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a041 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a041)
  store %struct.Memory* %call_40a041, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rdx	 RIP: 40a045	 Bytes: 7
  %loadMem_40a045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a045 = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a045)
  store %struct.Memory* %call_40a045, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a04c	 Bytes: 4
  %loadMem_40a04c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a04c = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a04c)
  store %struct.Memory* %call_40a04c, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %eax	 RIP: 40a050	 Bytes: 6
  %loadMem_40a050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a050 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a050)
  store %struct.Memory* %call_40a050, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40a056	 Bytes: 3
  %loadMem_40a056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a056 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a056)
  store %struct.Memory* %call_40a056, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40a059	 Bytes: 3
  %loadMem_40a059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a059 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a059)
  store %struct.Memory* %call_40a059, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 40a05c	 Bytes: 3
  %loadMem_40a05c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a05c = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a05c)
  store %struct.Memory* %call_40a05c, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rcx	 RIP: 40a05f	 Bytes: 4
  %loadMem_40a05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a05f = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a05f)
  store %struct.Memory* %call_40a05f, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a063	 Bytes: 7
  %loadMem_40a063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a063 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a063)
  store %struct.Memory* %call_40a063, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a06a	 Bytes: 4
  %loadMem_40a06a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a06a = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a06a)
  store %struct.Memory* %call_40a06a, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 40a06e	 Bytes: 7
  %loadMem_40a06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a06e = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a06e)
  store %struct.Memory* %call_40a06e, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40a075	 Bytes: 3
  %loadMem_40a075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a075 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a075)
  store %struct.Memory* %call_40a075, %struct.Memory** %MEMORY

  ; Code: .L_40a078:	 RIP: 40a078	 Bytes: 0
  br label %block_.L_40a078
block_.L_40a078:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a078	 Bytes: 4
  %loadMem_40a078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a078 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a078)
  store %struct.Memory* %call_40a078, %struct.Memory** %MEMORY

  ; Code: movq 0x140(%rax), %rax	 RIP: 40a07c	 Bytes: 7
  %loadMem_40a07c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a07c = call %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a07c)
  store %struct.Memory* %call_40a07c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40a083	 Bytes: 4
  %loadMem_40a083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a083 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a083)
  store %struct.Memory* %call_40a083, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rdx	 RIP: 40a087	 Bytes: 7
  %loadMem_40a087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a087 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a087)
  store %struct.Memory* %call_40a087, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rdx,1), %esi	 RIP: 40a08e	 Bytes: 4
  %loadMem_40a08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a08e = call %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a08e)
  store %struct.Memory* %call_40a08e, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 40a092	 Bytes: 3
  %loadMem_40a092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a092 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a092)
  store %struct.Memory* %call_40a092, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a095	 Bytes: 4
  %loadMem_40a095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a095 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a095)
  store %struct.Memory* %call_40a095, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a099	 Bytes: 7
  %loadMem_40a099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a099 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a099)
  store %struct.Memory* %call_40a099, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rcx,4)	 RIP: 40a0a0	 Bytes: 7
  %loadMem_40a0a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0a0 = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0a0)
  store %struct.Memory* %call_40a0a0, %struct.Memory** %MEMORY

  ; Code: je .L_40a0f9	 RIP: 40a0a7	 Bytes: 6
  %loadMem_40a0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0a7 = call %struct.Memory* @routine_je_.L_40a0f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0a7, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_40a0a7, %struct.Memory** %MEMORY

  %loadBr_40a0a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a0a7 = icmp eq i8 %loadBr_40a0a7, 1
  br i1 %cmpBr_40a0a7, label %block_.L_40a0f9, label %block_40a0ad

block_40a0ad:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a0ad	 Bytes: 4
  %loadMem_40a0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0ad = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0ad)
  store %struct.Memory* %call_40a0ad, %struct.Memory** %MEMORY

  ; Code: movq 0x140(%rax), %rax	 RIP: 40a0b1	 Bytes: 7
  %loadMem_40a0b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0b1 = call %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0b1)
  store %struct.Memory* %call_40a0b1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40a0b8	 Bytes: 4
  %loadMem_40a0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0b8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0b8)
  store %struct.Memory* %call_40a0b8, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rdx	 RIP: 40a0bc	 Bytes: 7
  %loadMem_40a0bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0bc = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0bc)
  store %struct.Memory* %call_40a0bc, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rdx,1), %esi	 RIP: 40a0c3	 Bytes: 4
  %loadMem_40a0c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0c3 = call %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0c3)
  store %struct.Memory* %call_40a0c3, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 40a0c7	 Bytes: 3
  %loadMem_40a0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0c7 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0c7)
  store %struct.Memory* %call_40a0c7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a0ca	 Bytes: 4
  %loadMem_40a0ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0ca = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0ca)
  store %struct.Memory* %call_40a0ca, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a0ce	 Bytes: 7
  %loadMem_40a0ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0ce = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0ce)
  store %struct.Memory* %call_40a0ce, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 40a0d5	 Bytes: 3
  %loadMem_40a0d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0d5 = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0d5)
  store %struct.Memory* %call_40a0d5, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 40a0d8	 Bytes: 4
  %loadMem_40a0d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0d8 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0d8)
  store %struct.Memory* %call_40a0d8, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a0dc	 Bytes: 7
  %loadMem_40a0dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0dc = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0dc)
  store %struct.Memory* %call_40a0dc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a0e3	 Bytes: 4
  %loadMem_40a0e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0e3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0e3)
  store %struct.Memory* %call_40a0e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a0e7	 Bytes: 7
  %loadMem_40a0e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0e7 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0e7)
  store %struct.Memory* %call_40a0e7, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %esi	 RIP: 40a0ee	 Bytes: 3
  %loadMem_40a0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0ee = call %struct.Memory* @routine_addl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0ee)
  store %struct.Memory* %call_40a0ee, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 40a0f1	 Bytes: 3
  %loadMem_40a0f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0f1 = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0f1)
  store %struct.Memory* %call_40a0f1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40a116	 RIP: 40a0f4	 Bytes: 5
  %loadMem_40a0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0f4 = call %struct.Memory* @routine_jmpq_.L_40a116(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0f4, i64 34, i64 5)
  store %struct.Memory* %call_40a0f4, %struct.Memory** %MEMORY

  br label %block_.L_40a116

  ; Code: .L_40a0f9:	 RIP: 40a0f9	 Bytes: 0
block_.L_40a0f9:

  ; Code: movq -0x50(%rbp), %rax	 RIP: 40a0f9	 Bytes: 4
  %loadMem_40a0f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0f9 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0f9)
  store %struct.Memory* %call_40a0f9, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a0fd	 Bytes: 7
  %loadMem_40a0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0fd = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0fd)
  store %struct.Memory* %call_40a0fd, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a104	 Bytes: 4
  %loadMem_40a104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a104 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a104)
  store %struct.Memory* %call_40a104, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a108	 Bytes: 7
  %loadMem_40a108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a108 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a108)
  store %struct.Memory* %call_40a108, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40a10f	 Bytes: 7
  %loadMem_40a10f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a10f = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a10f)
  store %struct.Memory* %call_40a10f, %struct.Memory** %MEMORY

  ; Code: .L_40a116:	 RIP: 40a116	 Bytes: 0
  br label %block_.L_40a116
block_.L_40a116:

  ; Code: movq -0x58(%rbp), %rax	 RIP: 40a116	 Bytes: 4
  %loadMem_40a116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a116 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a116)
  store %struct.Memory* %call_40a116, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a11a	 Bytes: 7
  %loadMem_40a11a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a11a = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a11a)
  store %struct.Memory* %call_40a11a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a121	 Bytes: 4
  %loadMem_40a121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a121 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a121)
  store %struct.Memory* %call_40a121, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a125	 Bytes: 7
  %loadMem_40a125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a125 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a125)
  store %struct.Memory* %call_40a125, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40a12c	 Bytes: 7
  %loadMem_40a12c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a12c = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a12c)
  store %struct.Memory* %call_40a12c, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 40a133	 Bytes: 4
  %loadMem_40a133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a133 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a133)
  store %struct.Memory* %call_40a133, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a137	 Bytes: 7
  %loadMem_40a137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a137 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a137)
  store %struct.Memory* %call_40a137, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a13e	 Bytes: 4
  %loadMem_40a13e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a13e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a13e)
  store %struct.Memory* %call_40a13e, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %edx	 RIP: 40a142	 Bytes: 6
  %loadMem_40a142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a142 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a142)
  store %struct.Memory* %call_40a142, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40a148	 Bytes: 3
  %loadMem_40a148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a148 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a148)
  store %struct.Memory* %call_40a148, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40a14b	 Bytes: 3
  %loadMem_40a14b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a14b = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a14b)
  store %struct.Memory* %call_40a14b, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40a14e	 Bytes: 3
  %loadMem_40a14e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a14e = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a14e)
  store %struct.Memory* %call_40a14e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a151	 Bytes: 4
  %loadMem_40a151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a151 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a151)
  store %struct.Memory* %call_40a151, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40a155	 Bytes: 7
  %loadMem_40a155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a155 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a155)
  store %struct.Memory* %call_40a155, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 40a15c	 Bytes: 4
  %loadMem_40a15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a15c = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a15c)
  store %struct.Memory* %call_40a15c, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %esi	 RIP: 40a160	 Bytes: 6
  %loadMem_40a160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a160 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a160)
  store %struct.Memory* %call_40a160, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40a166	 Bytes: 3
  %loadMem_40a166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a166 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a166)
  store %struct.Memory* %call_40a166, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 40a169	 Bytes: 3
  %loadMem_40a169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a169 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a169)
  store %struct.Memory* %call_40a169, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40a16c	 Bytes: 3
  %loadMem_40a16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a16c = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a16c)
  store %struct.Memory* %call_40a16c, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 40a16f	 Bytes: 6
  %loadMem_40a16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a16f = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a16f)
  store %struct.Memory* %call_40a16f, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, %edx	 RIP: 40a175	 Bytes: 6
  %loadMem_40a175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a175 = call %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a175)
  store %struct.Memory* %call_40a175, %struct.Memory** %MEMORY

  ; Code: jle .L_40a1d7	 RIP: 40a17b	 Bytes: 6
  %loadMem_40a17b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a17b = call %struct.Memory* @routine_jle_.L_40a1d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a17b, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_40a17b, %struct.Memory** %MEMORY

  %loadBr_40a17b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a17b = icmp eq i8 %loadBr_40a17b, 1
  br i1 %cmpBr_40a17b, label %block_.L_40a1d7, label %block_40a181

block_40a181:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 40a181	 Bytes: 6
  %loadMem_40a181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a181 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a181)
  store %struct.Memory* %call_40a181, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rcx	 RIP: 40a187	 Bytes: 4
  %loadMem_40a187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a187 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a187)
  store %struct.Memory* %call_40a187, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a18b	 Bytes: 7
  %loadMem_40a18b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a18b = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a18b)
  store %struct.Memory* %call_40a18b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a192	 Bytes: 4
  %loadMem_40a192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a192 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a192)
  store %struct.Memory* %call_40a192, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 40a196	 Bytes: 7
  %loadMem_40a196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a196 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a196)
  store %struct.Memory* %call_40a196, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40a19d	 Bytes: 3
  %loadMem_40a19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a19d = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a19d)
  store %struct.Memory* %call_40a19d, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rcx	 RIP: 40a1a0	 Bytes: 4
  %loadMem_40a1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1a0 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1a0)
  store %struct.Memory* %call_40a1a0, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a1a4	 Bytes: 7
  %loadMem_40a1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1a4 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1a4)
  store %struct.Memory* %call_40a1a4, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a1ab	 Bytes: 4
  %loadMem_40a1ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1ab = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1ab)
  store %struct.Memory* %call_40a1ab, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %eax	 RIP: 40a1af	 Bytes: 6
  %loadMem_40a1af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1af = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1af)
  store %struct.Memory* %call_40a1af, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40a1b5	 Bytes: 3
  %loadMem_40a1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1b5 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1b5)
  store %struct.Memory* %call_40a1b5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40a1b8	 Bytes: 3
  %loadMem_40a1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1b8 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1b8)
  store %struct.Memory* %call_40a1b8, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 40a1bb	 Bytes: 3
  %loadMem_40a1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1bb = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1bb)
  store %struct.Memory* %call_40a1bb, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rcx	 RIP: 40a1be	 Bytes: 4
  %loadMem_40a1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1be = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1be)
  store %struct.Memory* %call_40a1be, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a1c2	 Bytes: 7
  %loadMem_40a1c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1c2 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1c2)
  store %struct.Memory* %call_40a1c2, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a1c9	 Bytes: 4
  %loadMem_40a1c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1c9 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1c9)
  store %struct.Memory* %call_40a1c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 40a1cd	 Bytes: 7
  %loadMem_40a1cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1cd = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1cd)
  store %struct.Memory* %call_40a1cd, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40a1d4	 Bytes: 3
  %loadMem_40a1d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1d4 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1d4)
  store %struct.Memory* %call_40a1d4, %struct.Memory** %MEMORY

  ; Code: .L_40a1d7:	 RIP: 40a1d7	 Bytes: 0
  br label %block_.L_40a1d7
block_.L_40a1d7:

  ; Code: movq -0x58(%rbp), %rax	 RIP: 40a1d7	 Bytes: 4
  %loadMem_40a1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1d7 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1d7)
  store %struct.Memory* %call_40a1d7, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a1db	 Bytes: 7
  %loadMem_40a1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1db = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1db)
  store %struct.Memory* %call_40a1db, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a1e2	 Bytes: 4
  %loadMem_40a1e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1e2 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1e2)
  store %struct.Memory* %call_40a1e2, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %edx	 RIP: 40a1e6	 Bytes: 6
  %loadMem_40a1e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1e6 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1e6)
  store %struct.Memory* %call_40a1e6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40a1ec	 Bytes: 3
  %loadMem_40a1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1ec = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1ec)
  store %struct.Memory* %call_40a1ec, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40a1ef	 Bytes: 3
  %loadMem_40a1ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1ef = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1ef)
  store %struct.Memory* %call_40a1ef, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40a1f2	 Bytes: 3
  %loadMem_40a1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1f2 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1f2)
  store %struct.Memory* %call_40a1f2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a1f5	 Bytes: 4
  %loadMem_40a1f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1f5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1f5)
  store %struct.Memory* %call_40a1f5, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40a1f9	 Bytes: 7
  %loadMem_40a1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1f9 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1f9)
  store %struct.Memory* %call_40a1f9, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 40a200	 Bytes: 4
  %loadMem_40a200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a200 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a200)
  store %struct.Memory* %call_40a200, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %esi	 RIP: 40a204	 Bytes: 6
  %loadMem_40a204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a204 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a204)
  store %struct.Memory* %call_40a204, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40a20a	 Bytes: 3
  %loadMem_40a20a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a20a = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a20a)
  store %struct.Memory* %call_40a20a, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 40a20d	 Bytes: 3
  %loadMem_40a20d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a20d = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a20d)
  store %struct.Memory* %call_40a20d, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40a210	 Bytes: 3
  %loadMem_40a210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a210 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a210)
  store %struct.Memory* %call_40a210, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 40a213	 Bytes: 6
  %loadMem_40a213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a213 = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a213)
  store %struct.Memory* %call_40a213, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 40a219	 Bytes: 4
  %loadMem_40a219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a219 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a219)
  store %struct.Memory* %call_40a219, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a21d	 Bytes: 7
  %loadMem_40a21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a21d = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a21d)
  store %struct.Memory* %call_40a21d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a224	 Bytes: 4
  %loadMem_40a224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a224 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a224)
  store %struct.Memory* %call_40a224, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a228	 Bytes: 7
  %loadMem_40a228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a228 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a228)
  store %struct.Memory* %call_40a228, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rcx,4), %edx	 RIP: 40a22f	 Bytes: 3
  %loadMem_40a22f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a22f = call %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a22f)
  store %struct.Memory* %call_40a22f, %struct.Memory** %MEMORY

  ; Code: jle .L_40a28e	 RIP: 40a232	 Bytes: 6
  %loadMem_40a232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a232 = call %struct.Memory* @routine_jle_.L_40a28e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a232, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_40a232, %struct.Memory** %MEMORY

  %loadBr_40a232 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a232 = icmp eq i8 %loadBr_40a232, 1
  br i1 %cmpBr_40a232, label %block_.L_40a28e, label %block_40a238

block_40a238:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 40a238	 Bytes: 6
  %loadMem_40a238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a238 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a238)
  store %struct.Memory* %call_40a238, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rcx	 RIP: 40a23e	 Bytes: 4
  %loadMem_40a23e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a23e = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a23e)
  store %struct.Memory* %call_40a23e, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a242	 Bytes: 7
  %loadMem_40a242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a242 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a242)
  store %struct.Memory* %call_40a242, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a249	 Bytes: 4
  %loadMem_40a249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a249 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a249)
  store %struct.Memory* %call_40a249, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 40a24d	 Bytes: 7
  %loadMem_40a24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a24d = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a24d)
  store %struct.Memory* %call_40a24d, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40a254	 Bytes: 3
  %loadMem_40a254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a254 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a254)
  store %struct.Memory* %call_40a254, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rcx	 RIP: 40a257	 Bytes: 4
  %loadMem_40a257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a257 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a257)
  store %struct.Memory* %call_40a257, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a25b	 Bytes: 7
  %loadMem_40a25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a25b = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a25b)
  store %struct.Memory* %call_40a25b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a262	 Bytes: 4
  %loadMem_40a262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a262 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a262)
  store %struct.Memory* %call_40a262, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %eax	 RIP: 40a266	 Bytes: 6
  %loadMem_40a266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a266 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a266)
  store %struct.Memory* %call_40a266, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40a26c	 Bytes: 3
  %loadMem_40a26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a26c = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a26c)
  store %struct.Memory* %call_40a26c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40a26f	 Bytes: 3
  %loadMem_40a26f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a26f = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a26f)
  store %struct.Memory* %call_40a26f, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 40a272	 Bytes: 3
  %loadMem_40a272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a272 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a272)
  store %struct.Memory* %call_40a272, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rcx	 RIP: 40a275	 Bytes: 4
  %loadMem_40a275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a275 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a275)
  store %struct.Memory* %call_40a275, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a279	 Bytes: 7
  %loadMem_40a279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a279 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a279)
  store %struct.Memory* %call_40a279, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a280	 Bytes: 4
  %loadMem_40a280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a280 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a280)
  store %struct.Memory* %call_40a280, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 40a284	 Bytes: 7
  %loadMem_40a284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a284 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a284)
  store %struct.Memory* %call_40a284, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40a28b	 Bytes: 3
  %loadMem_40a28b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a28b = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a28b)
  store %struct.Memory* %call_40a28b, %struct.Memory** %MEMORY

  ; Code: .L_40a28e:	 RIP: 40a28e	 Bytes: 0
  br label %block_.L_40a28e
block_.L_40a28e:

  ; Code: movl -0x9c(%rbp), %eax	 RIP: 40a28e	 Bytes: 6
  %loadMem_40a28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a28e = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a28e)
  store %struct.Memory* %call_40a28e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 40a294	 Bytes: 4
  %loadMem_40a294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a294 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a294)
  store %struct.Memory* %call_40a294, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 40a298	 Bytes: 6
  %loadMem_40a298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a298 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a298)
  store %struct.Memory* %call_40a298, %struct.Memory** %MEMORY

  ; Code: jge .L_40a4a1	 RIP: 40a29e	 Bytes: 6
  %loadMem_40a29e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a29e = call %struct.Memory* @routine_jge_.L_40a4a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a29e, i8* %BRANCH_TAKEN, i64 515, i64 6, i64 6)
  store %struct.Memory* %call_40a29e, %struct.Memory** %MEMORY

  %loadBr_40a29e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a29e = icmp eq i8 %loadBr_40a29e, 1
  br i1 %cmpBr_40a29e, label %block_.L_40a4a1, label %block_40a2a4

block_40a2a4:
  ; Code: movq -0x60(%rbp), %rax	 RIP: 40a2a4	 Bytes: 4
  %loadMem_40a2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2a4 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2a4)
  store %struct.Memory* %call_40a2a4, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a2a8	 Bytes: 7
  %loadMem_40a2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2a8 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2a8)
  store %struct.Memory* %call_40a2a8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a2af	 Bytes: 4
  %loadMem_40a2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2af = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2af)
  store %struct.Memory* %call_40a2af, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a2b3	 Bytes: 7
  %loadMem_40a2b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2b3 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2b3)
  store %struct.Memory* %call_40a2b3, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40a2ba	 Bytes: 7
  %loadMem_40a2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2ba = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2ba)
  store %struct.Memory* %call_40a2ba, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 40a2c1	 Bytes: 4
  %loadMem_40a2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2c1 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2c1)
  store %struct.Memory* %call_40a2c1, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rcx	 RIP: 40a2c5	 Bytes: 7
  %loadMem_40a2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2c5 = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2c5)
  store %struct.Memory* %call_40a2c5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a2cc	 Bytes: 4
  %loadMem_40a2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2cc = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2cc)
  store %struct.Memory* %call_40a2cc, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a2d0	 Bytes: 7
  %loadMem_40a2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2d0 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2d0)
  store %struct.Memory* %call_40a2d0, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40a2d7	 Bytes: 3
  %loadMem_40a2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2d7 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2d7)
  store %struct.Memory* %call_40a2d7, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a2da	 Bytes: 4
  %loadMem_40a2da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2da = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2da)
  store %struct.Memory* %call_40a2da, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40a2de	 Bytes: 7
  %loadMem_40a2de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2de = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2de)
  store %struct.Memory* %call_40a2de, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 40a2e5	 Bytes: 4
  %loadMem_40a2e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2e5 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2e5)
  store %struct.Memory* %call_40a2e5, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a2e9	 Bytes: 7
  %loadMem_40a2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2e9 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2e9)
  store %struct.Memory* %call_40a2e9, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40a2f0	 Bytes: 3
  %loadMem_40a2f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2f0 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2f0)
  store %struct.Memory* %call_40a2f0, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 40a2f3	 Bytes: 6
  %loadMem_40a2f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2f3 = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2f3)
  store %struct.Memory* %call_40a2f3, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, %edx	 RIP: 40a2f9	 Bytes: 6
  %loadMem_40a2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2f9 = call %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2f9)
  store %struct.Memory* %call_40a2f9, %struct.Memory** %MEMORY

  ; Code: jle .L_40a356	 RIP: 40a2ff	 Bytes: 6
  %loadMem_40a2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2ff = call %struct.Memory* @routine_jle_.L_40a356(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2ff, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_40a2ff, %struct.Memory** %MEMORY

  %loadBr_40a2ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a2ff = icmp eq i8 %loadBr_40a2ff, 1
  br i1 %cmpBr_40a2ff, label %block_.L_40a356, label %block_40a305

block_40a305:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 40a305	 Bytes: 6
  %loadMem_40a305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a305 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a305)
  store %struct.Memory* %call_40a305, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rcx	 RIP: 40a30b	 Bytes: 4
  %loadMem_40a30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a30b = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a30b)
  store %struct.Memory* %call_40a30b, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a30f	 Bytes: 7
  %loadMem_40a30f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a30f = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a30f)
  store %struct.Memory* %call_40a30f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a316	 Bytes: 4
  %loadMem_40a316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a316 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a316)
  store %struct.Memory* %call_40a316, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 40a31a	 Bytes: 7
  %loadMem_40a31a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a31a = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a31a)
  store %struct.Memory* %call_40a31a, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40a321	 Bytes: 3
  %loadMem_40a321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a321 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a321)
  store %struct.Memory* %call_40a321, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rcx	 RIP: 40a324	 Bytes: 4
  %loadMem_40a324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a324 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a324)
  store %struct.Memory* %call_40a324, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rdx	 RIP: 40a328	 Bytes: 7
  %loadMem_40a328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a328 = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a328)
  store %struct.Memory* %call_40a328, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a32f	 Bytes: 4
  %loadMem_40a32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a32f = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a32f)
  store %struct.Memory* %call_40a32f, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 40a333	 Bytes: 7
  %loadMem_40a333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a333 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a333)
  store %struct.Memory* %call_40a333, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 40a33a	 Bytes: 3
  %loadMem_40a33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a33a = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a33a)
  store %struct.Memory* %call_40a33a, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rcx	 RIP: 40a33d	 Bytes: 4
  %loadMem_40a33d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a33d = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a33d)
  store %struct.Memory* %call_40a33d, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a341	 Bytes: 7
  %loadMem_40a341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a341 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a341)
  store %struct.Memory* %call_40a341, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a348	 Bytes: 4
  %loadMem_40a348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a348 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a348)
  store %struct.Memory* %call_40a348, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 40a34c	 Bytes: 7
  %loadMem_40a34c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a34c = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a34c)
  store %struct.Memory* %call_40a34c, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40a353	 Bytes: 3
  %loadMem_40a353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a353 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a353)
  store %struct.Memory* %call_40a353, %struct.Memory** %MEMORY

  ; Code: .L_40a356:	 RIP: 40a356	 Bytes: 0
  br label %block_.L_40a356
block_.L_40a356:

  ; Code: movq -0x60(%rbp), %rax	 RIP: 40a356	 Bytes: 4
  %loadMem_40a356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a356 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a356)
  store %struct.Memory* %call_40a356, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rcx	 RIP: 40a35a	 Bytes: 7
  %loadMem_40a35a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a35a = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a35a)
  store %struct.Memory* %call_40a35a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a361	 Bytes: 4
  %loadMem_40a361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a361 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a361)
  store %struct.Memory* %call_40a361, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a365	 Bytes: 7
  %loadMem_40a365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a365 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a365)
  store %struct.Memory* %call_40a365, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40a36c	 Bytes: 3
  %loadMem_40a36c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a36c = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a36c)
  store %struct.Memory* %call_40a36c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a36f	 Bytes: 4
  %loadMem_40a36f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a36f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a36f)
  store %struct.Memory* %call_40a36f, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40a373	 Bytes: 7
  %loadMem_40a373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a373 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a373)
  store %struct.Memory* %call_40a373, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 40a37a	 Bytes: 4
  %loadMem_40a37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a37a = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a37a)
  store %struct.Memory* %call_40a37a, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a37e	 Bytes: 7
  %loadMem_40a37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a37e = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a37e)
  store %struct.Memory* %call_40a37e, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40a385	 Bytes: 3
  %loadMem_40a385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a385 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a385)
  store %struct.Memory* %call_40a385, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 40a388	 Bytes: 6
  %loadMem_40a388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a388 = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a388)
  store %struct.Memory* %call_40a388, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 40a38e	 Bytes: 4
  %loadMem_40a38e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a38e = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a38e)
  store %struct.Memory* %call_40a38e, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a392	 Bytes: 7
  %loadMem_40a392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a392 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a392)
  store %struct.Memory* %call_40a392, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a399	 Bytes: 4
  %loadMem_40a399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a399 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a399)
  store %struct.Memory* %call_40a399, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a39d	 Bytes: 7
  %loadMem_40a39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a39d = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a39d)
  store %struct.Memory* %call_40a39d, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rcx,4), %edx	 RIP: 40a3a4	 Bytes: 3
  %loadMem_40a3a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3a4 = call %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3a4)
  store %struct.Memory* %call_40a3a4, %struct.Memory** %MEMORY

  ; Code: jle .L_40a3fe	 RIP: 40a3a7	 Bytes: 6
  %loadMem_40a3a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3a7 = call %struct.Memory* @routine_jle_.L_40a3fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3a7, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_40a3a7, %struct.Memory** %MEMORY

  %loadBr_40a3a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a3a7 = icmp eq i8 %loadBr_40a3a7, 1
  br i1 %cmpBr_40a3a7, label %block_.L_40a3fe, label %block_40a3ad

block_40a3ad:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 40a3ad	 Bytes: 6
  %loadMem_40a3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3ad = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3ad)
  store %struct.Memory* %call_40a3ad, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rcx	 RIP: 40a3b3	 Bytes: 4
  %loadMem_40a3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3b3 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3b3)
  store %struct.Memory* %call_40a3b3, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a3b7	 Bytes: 7
  %loadMem_40a3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3b7 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3b7)
  store %struct.Memory* %call_40a3b7, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a3be	 Bytes: 4
  %loadMem_40a3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3be = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3be)
  store %struct.Memory* %call_40a3be, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 40a3c2	 Bytes: 7
  %loadMem_40a3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3c2 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3c2)
  store %struct.Memory* %call_40a3c2, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40a3c9	 Bytes: 3
  %loadMem_40a3c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3c9 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3c9)
  store %struct.Memory* %call_40a3c9, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rcx	 RIP: 40a3cc	 Bytes: 4
  %loadMem_40a3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3cc = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3cc)
  store %struct.Memory* %call_40a3cc, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rdx	 RIP: 40a3d0	 Bytes: 7
  %loadMem_40a3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3d0 = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3d0)
  store %struct.Memory* %call_40a3d0, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a3d7	 Bytes: 4
  %loadMem_40a3d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3d7 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3d7)
  store %struct.Memory* %call_40a3d7, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 40a3db	 Bytes: 7
  %loadMem_40a3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3db = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3db)
  store %struct.Memory* %call_40a3db, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 40a3e2	 Bytes: 3
  %loadMem_40a3e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3e2 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3e2)
  store %struct.Memory* %call_40a3e2, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rcx	 RIP: 40a3e5	 Bytes: 4
  %loadMem_40a3e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3e5 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3e5)
  store %struct.Memory* %call_40a3e5, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a3e9	 Bytes: 7
  %loadMem_40a3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3e9 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3e9)
  store %struct.Memory* %call_40a3e9, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a3f0	 Bytes: 4
  %loadMem_40a3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3f0 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3f0)
  store %struct.Memory* %call_40a3f0, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 40a3f4	 Bytes: 7
  %loadMem_40a3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3f4 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3f4)
  store %struct.Memory* %call_40a3f4, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40a3fb	 Bytes: 3
  %loadMem_40a3fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3fb = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3fb)
  store %struct.Memory* %call_40a3fb, %struct.Memory** %MEMORY

  ; Code: .L_40a3fe:	 RIP: 40a3fe	 Bytes: 0
  br label %block_.L_40a3fe
block_.L_40a3fe:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a3fe	 Bytes: 4
  %loadMem_40a3fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a3fe = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a3fe)
  store %struct.Memory* %call_40a3fe, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rax), %rax	 RIP: 40a402	 Bytes: 7
  %loadMem_40a402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a402 = call %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a402)
  store %struct.Memory* %call_40a402, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40a409	 Bytes: 4
  %loadMem_40a409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a409 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a409)
  store %struct.Memory* %call_40a409, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rdx	 RIP: 40a40d	 Bytes: 7
  %loadMem_40a40d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a40d = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a40d)
  store %struct.Memory* %call_40a40d, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rdx,1), %esi	 RIP: 40a414	 Bytes: 4
  %loadMem_40a414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a414 = call %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a414)
  store %struct.Memory* %call_40a414, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 40a418	 Bytes: 3
  %loadMem_40a418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a418 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a418)
  store %struct.Memory* %call_40a418, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a41b	 Bytes: 4
  %loadMem_40a41b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a41b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a41b)
  store %struct.Memory* %call_40a41b, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a41f	 Bytes: 7
  %loadMem_40a41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a41f = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a41f)
  store %struct.Memory* %call_40a41f, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rcx,4)	 RIP: 40a426	 Bytes: 7
  %loadMem_40a426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a426 = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a426)
  store %struct.Memory* %call_40a426, %struct.Memory** %MEMORY

  ; Code: je .L_40a47f	 RIP: 40a42d	 Bytes: 6
  %loadMem_40a42d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a42d = call %struct.Memory* @routine_je_.L_40a47f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a42d, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_40a42d, %struct.Memory** %MEMORY

  %loadBr_40a42d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a42d = icmp eq i8 %loadBr_40a42d, 1
  br i1 %cmpBr_40a42d, label %block_.L_40a47f, label %block_40a433

block_40a433:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a433	 Bytes: 4
  %loadMem_40a433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a433 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a433)
  store %struct.Memory* %call_40a433, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rax), %rax	 RIP: 40a437	 Bytes: 7
  %loadMem_40a437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a437 = call %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a437)
  store %struct.Memory* %call_40a437, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40a43e	 Bytes: 4
  %loadMem_40a43e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a43e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a43e)
  store %struct.Memory* %call_40a43e, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rdx	 RIP: 40a442	 Bytes: 7
  %loadMem_40a442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a442 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a442)
  store %struct.Memory* %call_40a442, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rdx,1), %esi	 RIP: 40a449	 Bytes: 4
  %loadMem_40a449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a449 = call %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a449)
  store %struct.Memory* %call_40a449, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 40a44d	 Bytes: 3
  %loadMem_40a44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a44d = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a44d)
  store %struct.Memory* %call_40a44d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a450	 Bytes: 4
  %loadMem_40a450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a450 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a450)
  store %struct.Memory* %call_40a450, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a454	 Bytes: 7
  %loadMem_40a454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a454 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a454)
  store %struct.Memory* %call_40a454, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 40a45b	 Bytes: 3
  %loadMem_40a45b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a45b = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a45b)
  store %struct.Memory* %call_40a45b, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 40a45e	 Bytes: 4
  %loadMem_40a45e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a45e = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a45e)
  store %struct.Memory* %call_40a45e, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a462	 Bytes: 7
  %loadMem_40a462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a462 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a462)
  store %struct.Memory* %call_40a462, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a469	 Bytes: 4
  %loadMem_40a469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a469 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a469)
  store %struct.Memory* %call_40a469, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a46d	 Bytes: 7
  %loadMem_40a46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a46d = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a46d)
  store %struct.Memory* %call_40a46d, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %esi	 RIP: 40a474	 Bytes: 3
  %loadMem_40a474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a474 = call %struct.Memory* @routine_addl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a474)
  store %struct.Memory* %call_40a474, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 40a477	 Bytes: 3
  %loadMem_40a477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a477 = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a477)
  store %struct.Memory* %call_40a477, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40a49c	 RIP: 40a47a	 Bytes: 5
  %loadMem_40a47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a47a = call %struct.Memory* @routine_jmpq_.L_40a49c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a47a, i64 34, i64 5)
  store %struct.Memory* %call_40a47a, %struct.Memory** %MEMORY

  br label %block_.L_40a49c

  ; Code: .L_40a47f:	 RIP: 40a47f	 Bytes: 0
block_.L_40a47f:

  ; Code: movq -0x60(%rbp), %rax	 RIP: 40a47f	 Bytes: 4
  %loadMem_40a47f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a47f = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a47f)
  store %struct.Memory* %call_40a47f, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a483	 Bytes: 7
  %loadMem_40a483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a483 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a483)
  store %struct.Memory* %call_40a483, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a48a	 Bytes: 4
  %loadMem_40a48a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a48a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a48a)
  store %struct.Memory* %call_40a48a, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a48e	 Bytes: 7
  %loadMem_40a48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a48e = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a48e)
  store %struct.Memory* %call_40a48e, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40a495	 Bytes: 7
  %loadMem_40a495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a495 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a495)
  store %struct.Memory* %call_40a495, %struct.Memory** %MEMORY

  ; Code: .L_40a49c:	 RIP: 40a49c	 Bytes: 0
  br label %block_.L_40a49c
block_.L_40a49c:

  ; Code: jmpq .L_40a4a1	 RIP: 40a49c	 Bytes: 5
  %loadMem_40a49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a49c = call %struct.Memory* @routine_jmpq_.L_40a4a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a49c, i64 5, i64 5)
  store %struct.Memory* %call_40a49c, %struct.Memory** %MEMORY

  br label %block_.L_40a4a1

  ; Code: .L_40a4a1:	 RIP: 40a4a1	 Bytes: 0
block_.L_40a4a1:

  ; Code: jmpq .L_40a4a6	 RIP: 40a4a1	 Bytes: 5
  %loadMem_40a4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4a1 = call %struct.Memory* @routine_jmpq_.L_40a4a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4a1, i64 5, i64 5)
  store %struct.Memory* %call_40a4a1, %struct.Memory** %MEMORY

  br label %block_.L_40a4a6

  ; Code: .L_40a4a6:	 RIP: 40a4a6	 Bytes: 0
block_.L_40a4a6:

  ; Code: movl -0x9c(%rbp), %eax	 RIP: 40a4a6	 Bytes: 6
  %loadMem_40a4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4a6 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4a6)
  store %struct.Memory* %call_40a4a6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40a4ac	 Bytes: 3
  %loadMem_40a4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4ac = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4ac)
  store %struct.Memory* %call_40a4ac, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x9c(%rbp)	 RIP: 40a4af	 Bytes: 6
  %loadMem_40a4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4af = call %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4af)
  store %struct.Memory* %call_40a4af, %struct.Memory** %MEMORY

  ; Code: jmpq .L_409da8	 RIP: 40a4b5	 Bytes: 5
  %loadMem_40a4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4b5 = call %struct.Memory* @routine_jmpq_.L_409da8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4b5, i64 -1805, i64 5)
  store %struct.Memory* %call_40a4b5, %struct.Memory** %MEMORY

  br label %block_.L_409da8

  ; Code: .L_40a4ba:	 RIP: 40a4ba	 Bytes: 0
block_.L_40a4ba:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a4ba	 Bytes: 4
  %loadMem_40a4ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4ba = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4ba)
  store %struct.Memory* %call_40a4ba, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a4be	 Bytes: 7
  %loadMem_40a4be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4be = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4be)
  store %struct.Memory* %call_40a4be, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a4c5	 Bytes: 4
  %loadMem_40a4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4c5 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4c5)
  store %struct.Memory* %call_40a4c5, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x10(%rax)	 RIP: 40a4c9	 Bytes: 7
  %loadMem_40a4c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4c9 = call %struct.Memory* @routine_movl__0xc521974f__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4c9)
  store %struct.Memory* %call_40a4c9, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a4d0	 Bytes: 4
  %loadMem_40a4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4d0 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4d0)
  store %struct.Memory* %call_40a4d0, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rcx	 RIP: 40a4d4	 Bytes: 7
  %loadMem_40a4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4d4 = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4d4)
  store %struct.Memory* %call_40a4d4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a4db	 Bytes: 4
  %loadMem_40a4db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4db = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4db)
  store %struct.Memory* %call_40a4db, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %edx	 RIP: 40a4df	 Bytes: 3
  %loadMem_40a4df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4df = call %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4df)
  store %struct.Memory* %call_40a4df, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a4e2	 Bytes: 4
  %loadMem_40a4e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4e2 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4e2)
  store %struct.Memory* %call_40a4e2, %struct.Memory** %MEMORY

  ; Code: addl 0x154(%rax), %edx	 RIP: 40a4e6	 Bytes: 6
  %loadMem_40a4e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4e6 = call %struct.Memory* @routine_addl_0x154__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4e6)
  store %struct.Memory* %call_40a4e6, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 40a4ec	 Bytes: 6
  %loadMem_40a4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4ec = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4ec)
  store %struct.Memory* %call_40a4ec, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, %edx	 RIP: 40a4f2	 Bytes: 6
  %loadMem_40a4f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4f2 = call %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4f2)
  store %struct.Memory* %call_40a4f2, %struct.Memory** %MEMORY

  ; Code: jle .L_40a516	 RIP: 40a4f8	 Bytes: 6
  %loadMem_40a4f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4f8 = call %struct.Memory* @routine_jle_.L_40a516(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4f8, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_40a4f8, %struct.Memory** %MEMORY

  %loadBr_40a4f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a4f8 = icmp eq i8 %loadBr_40a4f8, 1
  br i1 %cmpBr_40a4f8, label %block_.L_40a516, label %block_40a4fe

block_40a4fe:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 40a4fe	 Bytes: 6
  %loadMem_40a4fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a4fe = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a4fe)
  store %struct.Memory* %call_40a4fe, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 40a504	 Bytes: 4
  %loadMem_40a504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a504 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a504)
  store %struct.Memory* %call_40a504, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a508	 Bytes: 7
  %loadMem_40a508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a508 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a508)
  store %struct.Memory* %call_40a508, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a50f	 Bytes: 4
  %loadMem_40a50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a50f = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a50f)
  store %struct.Memory* %call_40a50f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x10(%rcx)	 RIP: 40a513	 Bytes: 3
  %loadMem_40a513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a513 = call %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a513)
  store %struct.Memory* %call_40a513, %struct.Memory** %MEMORY

  ; Code: .L_40a516:	 RIP: 40a516	 Bytes: 0
  br label %block_.L_40a516
block_.L_40a516:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a516	 Bytes: 4
  %loadMem_40a516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a516 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a516)
  store %struct.Memory* %call_40a516, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a51a	 Bytes: 7
  %loadMem_40a51a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a51a = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a51a)
  store %struct.Memory* %call_40a51a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a521	 Bytes: 4
  %loadMem_40a521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a521 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a521)
  store %struct.Memory* %call_40a521, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x4(%rax)	 RIP: 40a525	 Bytes: 7
  %loadMem_40a525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a525 = call %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a525)
  store %struct.Memory* %call_40a525, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x9c(%rbp)	 RIP: 40a52c	 Bytes: 10
  %loadMem_40a52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a52c = call %struct.Memory* @routine_movl__0x1__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a52c)
  store %struct.Memory* %call_40a52c, %struct.Memory** %MEMORY

  ; Code: .L_40a536:	 RIP: 40a536	 Bytes: 0
  br label %block_.L_40a536
block_.L_40a536:

  ; Code: movl -0x9c(%rbp), %eax	 RIP: 40a536	 Bytes: 6
  %loadMem_40a536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a536 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a536)
  store %struct.Memory* %call_40a536, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 40a53c	 Bytes: 4
  %loadMem_40a53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a53c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a53c)
  store %struct.Memory* %call_40a53c, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 40a540	 Bytes: 6
  %loadMem_40a540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a540 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a540)
  store %struct.Memory* %call_40a540, %struct.Memory** %MEMORY

  ; Code: jg .L_40a5f3	 RIP: 40a546	 Bytes: 6
  %loadMem_40a546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a546 = call %struct.Memory* @routine_jg_.L_40a5f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a546, i8* %BRANCH_TAKEN, i64 173, i64 6, i64 6)
  store %struct.Memory* %call_40a546, %struct.Memory** %MEMORY

  %loadBr_40a546 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a546 = icmp eq i8 %loadBr_40a546, 1
  br i1 %cmpBr_40a546, label %block_.L_40a5f3, label %block_40a54c

block_40a54c:
  ; Code: movq -0x50(%rbp), %rax	 RIP: 40a54c	 Bytes: 4
  %loadMem_40a54c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a54c = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a54c)
  store %struct.Memory* %call_40a54c, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a550	 Bytes: 7
  %loadMem_40a550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a550 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a550)
  store %struct.Memory* %call_40a550, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a557	 Bytes: 4
  %loadMem_40a557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a557 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a557)
  store %struct.Memory* %call_40a557, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a55b	 Bytes: 7
  %loadMem_40a55b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a55b = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a55b)
  store %struct.Memory* %call_40a55b, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40a562	 Bytes: 3
  %loadMem_40a562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a562 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a562)
  store %struct.Memory* %call_40a562, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a565	 Bytes: 4
  %loadMem_40a565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a565 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a565)
  store %struct.Memory* %call_40a565, %struct.Memory** %MEMORY

  ; Code: movq 0x178(%rax), %rax	 RIP: 40a569	 Bytes: 7
  %loadMem_40a569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a569 = call %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a569)
  store %struct.Memory* %call_40a569, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rcx	 RIP: 40a570	 Bytes: 7
  %loadMem_40a570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a570 = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a570)
  store %struct.Memory* %call_40a570, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40a577	 Bytes: 3
  %loadMem_40a577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a577 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a577)
  store %struct.Memory* %call_40a577, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 40a57a	 Bytes: 6
  %loadMem_40a57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a57a = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a57a)
  store %struct.Memory* %call_40a57a, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a580	 Bytes: 4
  %loadMem_40a580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a580 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a580)
  store %struct.Memory* %call_40a580, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a584	 Bytes: 7
  %loadMem_40a584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a584 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a584)
  store %struct.Memory* %call_40a584, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a58b	 Bytes: 4
  %loadMem_40a58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a58b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a58b)
  store %struct.Memory* %call_40a58b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %edx	 RIP: 40a58f	 Bytes: 3
  %loadMem_40a58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a58f = call %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a58f)
  store %struct.Memory* %call_40a58f, %struct.Memory** %MEMORY

  ; Code: jle .L_40a5da	 RIP: 40a592	 Bytes: 6
  %loadMem_40a592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a592 = call %struct.Memory* @routine_jle_.L_40a5da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a592, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_40a592, %struct.Memory** %MEMORY

  %loadBr_40a592 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a592 = icmp eq i8 %loadBr_40a592, 1
  br i1 %cmpBr_40a592, label %block_.L_40a5da, label %block_40a598

block_40a598:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 40a598	 Bytes: 6
  %loadMem_40a598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a598 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a598)
  store %struct.Memory* %call_40a598, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 40a59e	 Bytes: 4
  %loadMem_40a59e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a59e = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a59e)
  store %struct.Memory* %call_40a59e, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a5a2	 Bytes: 7
  %loadMem_40a5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5a2 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5a2)
  store %struct.Memory* %call_40a5a2, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a5a9	 Bytes: 4
  %loadMem_40a5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5a9 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5a9)
  store %struct.Memory* %call_40a5a9, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rcx)	 RIP: 40a5ad	 Bytes: 3
  %loadMem_40a5ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5ad = call %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5ad)
  store %struct.Memory* %call_40a5ad, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rcx	 RIP: 40a5b0	 Bytes: 4
  %loadMem_40a5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5b0 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5b0)
  store %struct.Memory* %call_40a5b0, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a5b4	 Bytes: 7
  %loadMem_40a5b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5b4 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5b4)
  store %struct.Memory* %call_40a5b4, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a5bb	 Bytes: 4
  %loadMem_40a5bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5bb = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5bb)
  store %struct.Memory* %call_40a5bb, %struct.Memory** %MEMORY

  ; Code: movslq -0x9c(%rbp), %rdx	 RIP: 40a5bf	 Bytes: 7
  %loadMem_40a5bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5bf = call %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5bf)
  store %struct.Memory* %call_40a5bf, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 40a5c6	 Bytes: 3
  %loadMem_40a5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5c6 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5c6)
  store %struct.Memory* %call_40a5c6, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rcx	 RIP: 40a5c9	 Bytes: 7
  %loadMem_40a5c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5c9 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5c9)
  store %struct.Memory* %call_40a5c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rdx	 RIP: 40a5d0	 Bytes: 7
  %loadMem_40a5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5d0 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5d0)
  store %struct.Memory* %call_40a5d0, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40a5d7	 Bytes: 3
  %loadMem_40a5d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5d7 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5d7)
  store %struct.Memory* %call_40a5d7, %struct.Memory** %MEMORY

  ; Code: .L_40a5da:	 RIP: 40a5da	 Bytes: 0
  br label %block_.L_40a5da
block_.L_40a5da:

  ; Code: jmpq .L_40a5df	 RIP: 40a5da	 Bytes: 5
  %loadMem_40a5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5da = call %struct.Memory* @routine_jmpq_.L_40a5df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5da, i64 5, i64 5)
  store %struct.Memory* %call_40a5da, %struct.Memory** %MEMORY

  br label %block_.L_40a5df

  ; Code: .L_40a5df:	 RIP: 40a5df	 Bytes: 0
block_.L_40a5df:

  ; Code: movl -0x9c(%rbp), %eax	 RIP: 40a5df	 Bytes: 6
  %loadMem_40a5df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5df = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5df)
  store %struct.Memory* %call_40a5df, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40a5e5	 Bytes: 3
  %loadMem_40a5e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5e5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5e5)
  store %struct.Memory* %call_40a5e5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x9c(%rbp)	 RIP: 40a5e8	 Bytes: 6
  %loadMem_40a5e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5e8 = call %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5e8)
  store %struct.Memory* %call_40a5e8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40a536	 RIP: 40a5ee	 Bytes: 5
  %loadMem_40a5ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5ee = call %struct.Memory* @routine_jmpq_.L_40a536(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5ee, i64 -184, i64 5)
  store %struct.Memory* %call_40a5ee, %struct.Memory** %MEMORY

  br label %block_.L_40a536

  ; Code: .L_40a5f3:	 RIP: 40a5f3	 Bytes: 0
block_.L_40a5f3:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a5f3	 Bytes: 4
  %loadMem_40a5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5f3 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5f3)
  store %struct.Memory* %call_40a5f3, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a5f7	 Bytes: 7
  %loadMem_40a5f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5f7 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5f7)
  store %struct.Memory* %call_40a5f7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a5fe	 Bytes: 4
  %loadMem_40a5fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a5fe = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a5fe)
  store %struct.Memory* %call_40a5fe, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0xc(%rax)	 RIP: 40a602	 Bytes: 7
  %loadMem_40a602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a602 = call %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a602)
  store %struct.Memory* %call_40a602, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a609	 Bytes: 4
  %loadMem_40a609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a609 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a609)
  store %struct.Memory* %call_40a609, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rcx	 RIP: 40a60d	 Bytes: 7
  %loadMem_40a60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a60d = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a60d)
  store %struct.Memory* %call_40a60d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a614	 Bytes: 4
  %loadMem_40a614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a614 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a614)
  store %struct.Memory* %call_40a614, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40a618	 Bytes: 3
  %loadMem_40a618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a618 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a618)
  store %struct.Memory* %call_40a618, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a61b	 Bytes: 4
  %loadMem_40a61b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a61b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a61b)
  store %struct.Memory* %call_40a61b, %struct.Memory** %MEMORY

  ; Code: addl 0x16c(%rax), %edx	 RIP: 40a61f	 Bytes: 6
  %loadMem_40a61f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a61f = call %struct.Memory* @routine_addl_0x16c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a61f)
  store %struct.Memory* %call_40a61f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 40a625	 Bytes: 6
  %loadMem_40a625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a625 = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a625)
  store %struct.Memory* %call_40a625, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, %edx	 RIP: 40a62b	 Bytes: 6
  %loadMem_40a62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a62b = call %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a62b)
  store %struct.Memory* %call_40a62b, %struct.Memory** %MEMORY

  ; Code: jle .L_40a673	 RIP: 40a631	 Bytes: 6
  %loadMem_40a631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a631 = call %struct.Memory* @routine_jle_.L_40a673(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a631, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_40a631, %struct.Memory** %MEMORY

  %loadBr_40a631 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a631 = icmp eq i8 %loadBr_40a631, 1
  br i1 %cmpBr_40a631, label %block_.L_40a673, label %block_40a637

block_40a637:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 40a637	 Bytes: 6
  %loadMem_40a637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a637 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a637)
  store %struct.Memory* %call_40a637, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 40a63d	 Bytes: 4
  %loadMem_40a63d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a63d = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a63d)
  store %struct.Memory* %call_40a63d, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a641	 Bytes: 7
  %loadMem_40a641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a641 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a641)
  store %struct.Memory* %call_40a641, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a648	 Bytes: 4
  %loadMem_40a648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a648 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a648)
  store %struct.Memory* %call_40a648, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xc(%rcx)	 RIP: 40a64c	 Bytes: 3
  %loadMem_40a64c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a64c = call %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a64c)
  store %struct.Memory* %call_40a64c, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rcx	 RIP: 40a64f	 Bytes: 4
  %loadMem_40a64f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a64f = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a64f)
  store %struct.Memory* %call_40a64f, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rdx	 RIP: 40a653	 Bytes: 7
  %loadMem_40a653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a653 = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a653)
  store %struct.Memory* %call_40a653, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a65a	 Bytes: 4
  %loadMem_40a65a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a65a = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a65a)
  store %struct.Memory* %call_40a65a, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %eax	 RIP: 40a65e	 Bytes: 3
  %loadMem_40a65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a65e = call %struct.Memory* @routine_movl_0xc__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a65e)
  store %struct.Memory* %call_40a65e, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rcx	 RIP: 40a661	 Bytes: 4
  %loadMem_40a661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a661 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a661)
  store %struct.Memory* %call_40a661, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a665	 Bytes: 7
  %loadMem_40a665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a665 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a665)
  store %struct.Memory* %call_40a665, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a66c	 Bytes: 4
  %loadMem_40a66c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a66c = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a66c)
  store %struct.Memory* %call_40a66c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xc(%rcx)	 RIP: 40a670	 Bytes: 3
  %loadMem_40a670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a670 = call %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a670)
  store %struct.Memory* %call_40a670, %struct.Memory** %MEMORY

  ; Code: .L_40a673:	 RIP: 40a673	 Bytes: 0
  br label %block_.L_40a673
block_.L_40a673:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a673	 Bytes: 4
  %loadMem_40a673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a673 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a673)
  store %struct.Memory* %call_40a673, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a677	 Bytes: 7
  %loadMem_40a677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a677 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a677)
  store %struct.Memory* %call_40a677, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a67e	 Bytes: 4
  %loadMem_40a67e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a67e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a67e)
  store %struct.Memory* %call_40a67e, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 40a682	 Bytes: 3
  %loadMem_40a682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a682 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a682)
  store %struct.Memory* %call_40a682, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a685	 Bytes: 4
  %loadMem_40a685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a685 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a685)
  store %struct.Memory* %call_40a685, %struct.Memory** %MEMORY

  ; Code: addl 0x15c(%rax), %edx	 RIP: 40a689	 Bytes: 6
  %loadMem_40a689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a689 = call %struct.Memory* @routine_addl_0x15c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a689)
  store %struct.Memory* %call_40a689, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 40a68f	 Bytes: 6
  %loadMem_40a68f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a68f = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a68f)
  store %struct.Memory* %call_40a68f, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a695	 Bytes: 4
  %loadMem_40a695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a695 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a695)
  store %struct.Memory* %call_40a695, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a699	 Bytes: 7
  %loadMem_40a699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a699 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a699)
  store %struct.Memory* %call_40a699, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a6a0	 Bytes: 4
  %loadMem_40a6a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6a0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6a0)
  store %struct.Memory* %call_40a6a0, %struct.Memory** %MEMORY

  ; Code: cmpl 0xc(%rax), %edx	 RIP: 40a6a4	 Bytes: 3
  %loadMem_40a6a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6a4 = call %struct.Memory* @routine_cmpl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6a4)
  store %struct.Memory* %call_40a6a4, %struct.Memory** %MEMORY

  ; Code: jle .L_40a6dd	 RIP: 40a6a7	 Bytes: 6
  %loadMem_40a6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6a7 = call %struct.Memory* @routine_jle_.L_40a6dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6a7, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_40a6a7, %struct.Memory** %MEMORY

  %loadBr_40a6a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a6a7 = icmp eq i8 %loadBr_40a6a7, 1
  br i1 %cmpBr_40a6a7, label %block_.L_40a6dd, label %block_40a6ad

block_40a6ad:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 40a6ad	 Bytes: 6
  %loadMem_40a6ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6ad = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6ad)
  store %struct.Memory* %call_40a6ad, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 40a6b3	 Bytes: 4
  %loadMem_40a6b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6b3 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6b3)
  store %struct.Memory* %call_40a6b3, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a6b7	 Bytes: 7
  %loadMem_40a6b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6b7 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6b7)
  store %struct.Memory* %call_40a6b7, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a6be	 Bytes: 4
  %loadMem_40a6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6be = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6be)
  store %struct.Memory* %call_40a6be, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xc(%rcx)	 RIP: 40a6c2	 Bytes: 3
  %loadMem_40a6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6c2 = call %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6c2)
  store %struct.Memory* %call_40a6c2, %struct.Memory** %MEMORY

  ; Code: movl -0x98(%rbp), %eax	 RIP: 40a6c5	 Bytes: 6
  %loadMem_40a6c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6c5 = call %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6c5)
  store %struct.Memory* %call_40a6c5, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rcx	 RIP: 40a6cb	 Bytes: 4
  %loadMem_40a6cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6cb = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6cb)
  store %struct.Memory* %call_40a6cb, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a6cf	 Bytes: 7
  %loadMem_40a6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6cf = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6cf)
  store %struct.Memory* %call_40a6cf, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a6d6	 Bytes: 4
  %loadMem_40a6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6d6 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6d6)
  store %struct.Memory* %call_40a6d6, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xc(%rcx)	 RIP: 40a6da	 Bytes: 3
  %loadMem_40a6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6da = call %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6da)
  store %struct.Memory* %call_40a6da, %struct.Memory** %MEMORY

  ; Code: .L_40a6dd:	 RIP: 40a6dd	 Bytes: 0
  br label %block_.L_40a6dd
block_.L_40a6dd:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a6dd	 Bytes: 4
  %loadMem_40a6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6dd = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6dd)
  store %struct.Memory* %call_40a6dd, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a6e1	 Bytes: 7
  %loadMem_40a6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6e1 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6e1)
  store %struct.Memory* %call_40a6e1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a6e8	 Bytes: 4
  %loadMem_40a6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6e8 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6e8)
  store %struct.Memory* %call_40a6e8, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax)	 RIP: 40a6ec	 Bytes: 6
  %loadMem_40a6ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6ec = call %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6ec)
  store %struct.Memory* %call_40a6ec, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a6f2	 Bytes: 4
  %loadMem_40a6f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6f2 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6f2)
  store %struct.Memory* %call_40a6f2, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a6f6	 Bytes: 7
  %loadMem_40a6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6f6 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6f6)
  store %struct.Memory* %call_40a6f6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a6fd	 Bytes: 4
  %loadMem_40a6fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a6fd = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a6fd)
  store %struct.Memory* %call_40a6fd, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %edx	 RIP: 40a701	 Bytes: 3
  %loadMem_40a701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a701 = call %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a701)
  store %struct.Memory* %call_40a701, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a704	 Bytes: 4
  %loadMem_40a704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a704 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a704)
  store %struct.Memory* %call_40a704, %struct.Memory** %MEMORY

  ; Code: addl 0x150(%rax), %edx	 RIP: 40a708	 Bytes: 6
  %loadMem_40a708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a708 = call %struct.Memory* @routine_addl_0x150__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a708)
  store %struct.Memory* %call_40a708, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 40a70e	 Bytes: 6
  %loadMem_40a70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a70e = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a70e)
  store %struct.Memory* %call_40a70e, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, %edx	 RIP: 40a714	 Bytes: 6
  %loadMem_40a714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a714 = call %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a714)
  store %struct.Memory* %call_40a714, %struct.Memory** %MEMORY

  ; Code: jle .L_40a74c	 RIP: 40a71a	 Bytes: 6
  %loadMem_40a71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a71a = call %struct.Memory* @routine_jle_.L_40a74c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a71a, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_40a71a, %struct.Memory** %MEMORY

  %loadBr_40a71a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a71a = icmp eq i8 %loadBr_40a71a, 1
  br i1 %cmpBr_40a71a, label %block_.L_40a74c, label %block_40a720

block_40a720:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 40a720	 Bytes: 6
  %loadMem_40a720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a720 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a720)
  store %struct.Memory* %call_40a720, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 40a726	 Bytes: 4
  %loadMem_40a726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a726 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a726)
  store %struct.Memory* %call_40a726, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a72a	 Bytes: 7
  %loadMem_40a72a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a72a = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a72a)
  store %struct.Memory* %call_40a72a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a731	 Bytes: 4
  %loadMem_40a731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a731 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a731)
  store %struct.Memory* %call_40a731, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 40a735	 Bytes: 2
  %loadMem_40a735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a735 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a735)
  store %struct.Memory* %call_40a735, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rcx	 RIP: 40a737	 Bytes: 7
  %loadMem_40a737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a737 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a737)
  store %struct.Memory* %call_40a737, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rdx	 RIP: 40a73e	 Bytes: 7
  %loadMem_40a73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a73e = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a73e)
  store %struct.Memory* %call_40a73e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx,%rdx,4)	 RIP: 40a745	 Bytes: 7
  %loadMem_40a745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a745 = call %struct.Memory* @routine_movl__0x0____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a745)
  store %struct.Memory* %call_40a745, %struct.Memory** %MEMORY

  ; Code: .L_40a74c:	 RIP: 40a74c	 Bytes: 0
  br label %block_.L_40a74c
block_.L_40a74c:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a74c	 Bytes: 4
  %loadMem_40a74c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a74c = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a74c)
  store %struct.Memory* %call_40a74c, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a750	 Bytes: 7
  %loadMem_40a750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a750 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a750)
  store %struct.Memory* %call_40a750, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a757	 Bytes: 4
  %loadMem_40a757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a757 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a757)
  store %struct.Memory* %call_40a757, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40a75b	 Bytes: 3
  %loadMem_40a75b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a75b = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a75b)
  store %struct.Memory* %call_40a75b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a75e	 Bytes: 4
  %loadMem_40a75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a75e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a75e)
  store %struct.Memory* %call_40a75e, %struct.Memory** %MEMORY

  ; Code: addl 0x168(%rax), %edx	 RIP: 40a762	 Bytes: 6
  %loadMem_40a762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a762 = call %struct.Memory* @routine_addl_0x168__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a762)
  store %struct.Memory* %call_40a762, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 40a768	 Bytes: 6
  %loadMem_40a768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a768 = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a768)
  store %struct.Memory* %call_40a768, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a76e	 Bytes: 4
  %loadMem_40a76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a76e = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a76e)
  store %struct.Memory* %call_40a76e, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a772	 Bytes: 7
  %loadMem_40a772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a772 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a772)
  store %struct.Memory* %call_40a772, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a779	 Bytes: 4
  %loadMem_40a779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a779 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a779)
  store %struct.Memory* %call_40a779, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %edx	 RIP: 40a77d	 Bytes: 2
  %loadMem_40a77d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a77d = call %struct.Memory* @routine_cmpl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a77d)
  store %struct.Memory* %call_40a77d, %struct.Memory** %MEMORY

  ; Code: jle .L_40a7bf	 RIP: 40a77f	 Bytes: 6
  %loadMem_40a77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a77f = call %struct.Memory* @routine_jle_.L_40a7bf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a77f, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_40a77f, %struct.Memory** %MEMORY

  %loadBr_40a77f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a77f = icmp eq i8 %loadBr_40a77f, 1
  br i1 %cmpBr_40a77f, label %block_.L_40a7bf, label %block_40a785

block_40a785:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 40a785	 Bytes: 6
  %loadMem_40a785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a785 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a785)
  store %struct.Memory* %call_40a785, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 40a78b	 Bytes: 4
  %loadMem_40a78b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a78b = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a78b)
  store %struct.Memory* %call_40a78b, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a78f	 Bytes: 7
  %loadMem_40a78f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a78f = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a78f)
  store %struct.Memory* %call_40a78f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a796	 Bytes: 4
  %loadMem_40a796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a796 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a796)
  store %struct.Memory* %call_40a796, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 40a79a	 Bytes: 2
  %loadMem_40a79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a79a = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a79a)
  store %struct.Memory* %call_40a79a, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rcx	 RIP: 40a79c	 Bytes: 4
  %loadMem_40a79c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a79c = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a79c)
  store %struct.Memory* %call_40a79c, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a7a0	 Bytes: 7
  %loadMem_40a7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7a0 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7a0)
  store %struct.Memory* %call_40a7a0, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a7a7	 Bytes: 4
  %loadMem_40a7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7a7 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7a7)
  store %struct.Memory* %call_40a7a7, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %eax	 RIP: 40a7ab	 Bytes: 3
  %loadMem_40a7ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7ab = call %struct.Memory* @routine_movl_0xc__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7ab)
  store %struct.Memory* %call_40a7ab, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rcx	 RIP: 40a7ae	 Bytes: 7
  %loadMem_40a7ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7ae = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7ae)
  store %struct.Memory* %call_40a7ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rdx	 RIP: 40a7b5	 Bytes: 7
  %loadMem_40a7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7b5 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7b5)
  store %struct.Memory* %call_40a7b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40a7bc	 Bytes: 3
  %loadMem_40a7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7bc = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7bc)
  store %struct.Memory* %call_40a7bc, %struct.Memory** %MEMORY

  ; Code: .L_40a7bf:	 RIP: 40a7bf	 Bytes: 0
  br label %block_.L_40a7bf
block_.L_40a7bf:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a7bf	 Bytes: 4
  %loadMem_40a7bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7bf = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7bf)
  store %struct.Memory* %call_40a7bf, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a7c3	 Bytes: 7
  %loadMem_40a7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7c3 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7c3)
  store %struct.Memory* %call_40a7c3, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a7ca	 Bytes: 4
  %loadMem_40a7ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7ca = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7ca)
  store %struct.Memory* %call_40a7ca, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x8(%rax)	 RIP: 40a7ce	 Bytes: 7
  %loadMem_40a7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7ce = call %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7ce)
  store %struct.Memory* %call_40a7ce, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a7d5	 Bytes: 4
  %loadMem_40a7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7d5 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7d5)
  store %struct.Memory* %call_40a7d5, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rcx	 RIP: 40a7d9	 Bytes: 7
  %loadMem_40a7d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7d9 = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7d9)
  store %struct.Memory* %call_40a7d9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a7e0	 Bytes: 4
  %loadMem_40a7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7e0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7e0)
  store %struct.Memory* %call_40a7e0, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 40a7e4	 Bytes: 3
  %loadMem_40a7e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7e4 = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7e4)
  store %struct.Memory* %call_40a7e4, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a7e7	 Bytes: 4
  %loadMem_40a7e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7e7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7e7)
  store %struct.Memory* %call_40a7e7, %struct.Memory** %MEMORY

  ; Code: addl 0x164(%rax), %edx	 RIP: 40a7eb	 Bytes: 6
  %loadMem_40a7eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7eb = call %struct.Memory* @routine_addl_0x164__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7eb)
  store %struct.Memory* %call_40a7eb, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 40a7f1	 Bytes: 6
  %loadMem_40a7f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7f1 = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7f1)
  store %struct.Memory* %call_40a7f1, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, %edx	 RIP: 40a7f7	 Bytes: 6
  %loadMem_40a7f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7f7 = call %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7f7)
  store %struct.Memory* %call_40a7f7, %struct.Memory** %MEMORY

  ; Code: jle .L_40a83f	 RIP: 40a7fd	 Bytes: 6
  %loadMem_40a7fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a7fd = call %struct.Memory* @routine_jle_.L_40a83f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a7fd, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_40a7fd, %struct.Memory** %MEMORY

  %loadBr_40a7fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a7fd = icmp eq i8 %loadBr_40a7fd, 1
  br i1 %cmpBr_40a7fd, label %block_.L_40a83f, label %block_40a803

block_40a803:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 40a803	 Bytes: 6
  %loadMem_40a803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a803 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a803)
  store %struct.Memory* %call_40a803, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 40a809	 Bytes: 4
  %loadMem_40a809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a809 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a809)
  store %struct.Memory* %call_40a809, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a80d	 Bytes: 7
  %loadMem_40a80d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a80d = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a80d)
  store %struct.Memory* %call_40a80d, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a814	 Bytes: 4
  %loadMem_40a814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a814 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a814)
  store %struct.Memory* %call_40a814, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 40a818	 Bytes: 3
  %loadMem_40a818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a818 = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a818)
  store %struct.Memory* %call_40a818, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rcx	 RIP: 40a81b	 Bytes: 4
  %loadMem_40a81b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a81b = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a81b)
  store %struct.Memory* %call_40a81b, %struct.Memory** %MEMORY

  ; Code: movslq -0xa8(%rbp), %rdx	 RIP: 40a81f	 Bytes: 7
  %loadMem_40a81f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a81f = call %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a81f)
  store %struct.Memory* %call_40a81f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a826	 Bytes: 4
  %loadMem_40a826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a826 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a826)
  store %struct.Memory* %call_40a826, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rcx), %eax	 RIP: 40a82a	 Bytes: 3
  %loadMem_40a82a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a82a = call %struct.Memory* @routine_movl_0x8__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a82a)
  store %struct.Memory* %call_40a82a, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rcx	 RIP: 40a82d	 Bytes: 4
  %loadMem_40a82d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a82d = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a82d)
  store %struct.Memory* %call_40a82d, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a831	 Bytes: 7
  %loadMem_40a831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a831 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a831)
  store %struct.Memory* %call_40a831, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a838	 Bytes: 4
  %loadMem_40a838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a838 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a838)
  store %struct.Memory* %call_40a838, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 40a83c	 Bytes: 3
  %loadMem_40a83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a83c = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a83c)
  store %struct.Memory* %call_40a83c, %struct.Memory** %MEMORY

  ; Code: .L_40a83f:	 RIP: 40a83f	 Bytes: 0
  br label %block_.L_40a83f
block_.L_40a83f:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a83f	 Bytes: 4
  %loadMem_40a83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a83f = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a83f)
  store %struct.Memory* %call_40a83f, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a843	 Bytes: 7
  %loadMem_40a843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a843 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a843)
  store %struct.Memory* %call_40a843, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a84a	 Bytes: 4
  %loadMem_40a84a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a84a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a84a)
  store %struct.Memory* %call_40a84a, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 40a84e	 Bytes: 3
  %loadMem_40a84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a84e = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a84e)
  store %struct.Memory* %call_40a84e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a851	 Bytes: 4
  %loadMem_40a851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a851 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a851)
  store %struct.Memory* %call_40a851, %struct.Memory** %MEMORY

  ; Code: addl 0x158(%rax), %edx	 RIP: 40a855	 Bytes: 6
  %loadMem_40a855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a855 = call %struct.Memory* @routine_addl_0x158__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a855)
  store %struct.Memory* %call_40a855, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 40a85b	 Bytes: 6
  %loadMem_40a85b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a85b = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a85b)
  store %struct.Memory* %call_40a85b, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a861	 Bytes: 4
  %loadMem_40a861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a861 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a861)
  store %struct.Memory* %call_40a861, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a865	 Bytes: 7
  %loadMem_40a865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a865 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a865)
  store %struct.Memory* %call_40a865, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a86c	 Bytes: 4
  %loadMem_40a86c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a86c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a86c)
  store %struct.Memory* %call_40a86c, %struct.Memory** %MEMORY

  ; Code: cmpl 0x8(%rax), %edx	 RIP: 40a870	 Bytes: 3
  %loadMem_40a870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a870 = call %struct.Memory* @routine_cmpl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a870)
  store %struct.Memory* %call_40a870, %struct.Memory** %MEMORY

  ; Code: jle .L_40a8a9	 RIP: 40a873	 Bytes: 6
  %loadMem_40a873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a873 = call %struct.Memory* @routine_jle_.L_40a8a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a873, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_40a873, %struct.Memory** %MEMORY

  %loadBr_40a873 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a873 = icmp eq i8 %loadBr_40a873, 1
  br i1 %cmpBr_40a873, label %block_.L_40a8a9, label %block_40a879

block_40a879:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 40a879	 Bytes: 6
  %loadMem_40a879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a879 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a879)
  store %struct.Memory* %call_40a879, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 40a87f	 Bytes: 4
  %loadMem_40a87f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a87f = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a87f)
  store %struct.Memory* %call_40a87f, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a883	 Bytes: 7
  %loadMem_40a883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a883 = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a883)
  store %struct.Memory* %call_40a883, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a88a	 Bytes: 4
  %loadMem_40a88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a88a = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a88a)
  store %struct.Memory* %call_40a88a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 40a88e	 Bytes: 3
  %loadMem_40a88e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a88e = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a88e)
  store %struct.Memory* %call_40a88e, %struct.Memory** %MEMORY

  ; Code: movl -0x98(%rbp), %eax	 RIP: 40a891	 Bytes: 6
  %loadMem_40a891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a891 = call %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a891)
  store %struct.Memory* %call_40a891, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rcx	 RIP: 40a897	 Bytes: 4
  %loadMem_40a897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a897 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a897)
  store %struct.Memory* %call_40a897, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rdx	 RIP: 40a89b	 Bytes: 7
  %loadMem_40a89b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a89b = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a89b)
  store %struct.Memory* %call_40a89b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40a8a2	 Bytes: 4
  %loadMem_40a8a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8a2 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8a2)
  store %struct.Memory* %call_40a8a2, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 40a8a6	 Bytes: 3
  %loadMem_40a8a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8a6 = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8a6)
  store %struct.Memory* %call_40a8a6, %struct.Memory** %MEMORY

  ; Code: .L_40a8a9:	 RIP: 40a8a9	 Bytes: 0
  br label %block_.L_40a8a9
block_.L_40a8a9:

  ; Code: jmpq .L_40a8ae	 RIP: 40a8a9	 Bytes: 5
  %loadMem_40a8a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8a9 = call %struct.Memory* @routine_jmpq_.L_40a8ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8a9, i64 5, i64 5)
  store %struct.Memory* %call_40a8a9, %struct.Memory** %MEMORY

  br label %block_.L_40a8ae

  ; Code: .L_40a8ae:	 RIP: 40a8ae	 Bytes: 0
block_.L_40a8ae:

  ; Code: movl -0x98(%rbp), %eax	 RIP: 40a8ae	 Bytes: 6
  %loadMem_40a8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8ae = call %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8ae)
  store %struct.Memory* %call_40a8ae, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40a8b4	 Bytes: 3
  %loadMem_40a8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8b4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8b4)
  store %struct.Memory* %call_40a8b4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x98(%rbp)	 RIP: 40a8b7	 Bytes: 6
  %loadMem_40a8b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8b7 = call %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8b7)
  store %struct.Memory* %call_40a8b7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_409d11	 RIP: 40a8bd	 Bytes: 5
  %loadMem_40a8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8bd = call %struct.Memory* @routine_jmpq_.L_409d11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8bd, i64 -2988, i64 5)
  store %struct.Memory* %call_40a8bd, %struct.Memory** %MEMORY

  br label %block_.L_409d11

  ; Code: .L_40a8c2:	 RIP: 40a8c2	 Bytes: 0
block_.L_40a8c2:

  ; Code: leaq -0x40(%rbp), %rsi	 RIP: 40a8c2	 Bytes: 4
  %loadMem_40a8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8c2 = call %struct.Memory* @routine_leaq_MINUS0x40__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8c2)
  store %struct.Memory* %call_40a8c2, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40a8c6	 Bytes: 4
  %loadMem_40a8c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8c6 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8c6)
  store %struct.Memory* %call_40a8c6, %struct.Memory** %MEMORY

  ; Code: movslq -0xa4(%rbp), %rcx	 RIP: 40a8ca	 Bytes: 7
  %loadMem_40a8ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8ca = call %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8ca)
  store %struct.Memory* %call_40a8ca, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40a8d1	 Bytes: 4
  %loadMem_40a8d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8d1 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8d1)
  store %struct.Memory* %call_40a8d1, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 40a8d5	 Bytes: 3
  %loadMem_40a8d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8d5 = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8d5)
  store %struct.Memory* %call_40a8d5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40a8d8	 Bytes: 4
  %loadMem_40a8d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8d8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8d8)
  store %struct.Memory* %call_40a8d8, %struct.Memory** %MEMORY

  ; Code: addl 0x160(%rax), %edx	 RIP: 40a8dc	 Bytes: 6
  %loadMem_40a8dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8dc = call %struct.Memory* @routine_addl_0x160__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8dc)
  store %struct.Memory* %call_40a8dc, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 40a8e2	 Bytes: 6
  %loadMem_40a8e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8e2 = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8e2)
  store %struct.Memory* %call_40a8e2, %struct.Memory** %MEMORY

  ; Code: movl $0x2, -0xac(%rbp)	 RIP: 40a8e8	 Bytes: 10
  %loadMem_40a8e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8e8 = call %struct.Memory* @routine_movl__0x2__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8e8)
  store %struct.Memory* %call_40a8e8, %struct.Memory** %MEMORY

  ; Code: movl -0xac(%rbp), %edi	 RIP: 40a8f2	 Bytes: 6
  %loadMem_40a8f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8f2 = call %struct.Memory* @routine_movl_MINUS0xac__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8f2)
  store %struct.Memory* %call_40a8f2, %struct.Memory** %MEMORY

  ; Code: callq .P7AllocTrace	 RIP: 40a8f8	 Bytes: 5
  %loadMem1_40a8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40a8f8 = call %struct.Memory* @routine_callq_.P7AllocTrace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40a8f8, i64 273608, i64 5, i64 5)
  store %struct.Memory* %call1_40a8f8, %struct.Memory** %MEMORY

  %loadMem2_40a8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a8f8 = load i64, i64* %3
  %call2_40a8f8 = call %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* %0, i64  %loadPC_40a8f8, %struct.Memory* %loadMem2_40a8f8)
  store %struct.Memory* %call2_40a8f8, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %edx	 RIP: 40a8fd	 Bytes: 5
  %loadMem_40a8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8fd = call %struct.Memory* @routine_movl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8fd)
  store %struct.Memory* %call_40a8fd, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xa0(%rbp)	 RIP: 40a902	 Bytes: 10
  %loadMem_40a902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a902 = call %struct.Memory* @routine_movl__0x0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a902)
  store %struct.Memory* %call_40a902, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40a90c	 Bytes: 4
  %loadMem_40a90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a90c = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a90c)
  store %struct.Memory* %call_40a90c, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 40a910	 Bytes: 4
  %loadMem_40a910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a910 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a910)
  store %struct.Memory* %call_40a910, %struct.Memory** %MEMORY

  ; Code: movslq -0xa0(%rbp), %rcx	 RIP: 40a914	 Bytes: 7
  %loadMem_40a914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a914 = call %struct.Memory* @routine_movslq_MINUS0xa0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a914)
  store %struct.Memory* %call_40a914, %struct.Memory** %MEMORY

  ; Code: movb $0x9, (%rax,%rcx,1)	 RIP: 40a91b	 Bytes: 4
  %loadMem_40a91b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a91b = call %struct.Memory* @routine_movb__0x9____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a91b)
  store %struct.Memory* %call_40a91b, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40a91f	 Bytes: 4
  %loadMem_40a91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a91f = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a91f)
  store %struct.Memory* %call_40a91f, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 40a923	 Bytes: 4
  %loadMem_40a923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a923 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a923)
  store %struct.Memory* %call_40a923, %struct.Memory** %MEMORY

  ; Code: movslq -0xa0(%rbp), %rcx	 RIP: 40a927	 Bytes: 7
  %loadMem_40a927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a927 = call %struct.Memory* @routine_movslq_MINUS0xa0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a927)
  store %struct.Memory* %call_40a927, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 40a92e	 Bytes: 7
  %loadMem_40a92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a92e = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a92e)
  store %struct.Memory* %call_40a92e, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 40a935	 Bytes: 4
  %loadMem_40a935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a935 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a935)
  store %struct.Memory* %call_40a935, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 40a939	 Bytes: 3
  %loadMem_40a939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a939 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a939)
  store %struct.Memory* %call_40a939, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xb8(%rbp)	 RIP: 40a93c	 Bytes: 7
  %loadMem_40a93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a93c = call %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a93c)
  store %struct.Memory* %call_40a93c, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 40a943	 Bytes: 2
  %loadMem_40a943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a943 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a943)
  store %struct.Memory* %call_40a943, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xbc(%rbp)	 RIP: 40a945	 Bytes: 6
  %loadMem_40a945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a945 = call %struct.Memory* @routine_movl__edx__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a945)
  store %struct.Memory* %call_40a945, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 40a94b	 Bytes: 1
  %loadMem_40a94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a94b = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a94b)
  store %struct.Memory* %call_40a94b, %struct.Memory** %MEMORY

  ; Code: movl -0xbc(%rbp), %edi	 RIP: 40a94c	 Bytes: 6
  %loadMem_40a94c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a94c = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a94c)
  store %struct.Memory* %call_40a94c, %struct.Memory** %MEMORY

  ; Code: idivl %edi	 RIP: 40a952	 Bytes: 2
  %loadMem_40a952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a952 = call %struct.Memory* @routine_idivl__edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a952)
  store %struct.Memory* %call_40a952, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40a954	 Bytes: 3
  %loadMem_40a954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a954 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a954)
  store %struct.Memory* %call_40a954, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rsi	 RIP: 40a957	 Bytes: 7
  %loadMem_40a957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a957 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a957)
  store %struct.Memory* %call_40a957, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rcx,8), %rcx	 RIP: 40a95e	 Bytes: 4
  %loadMem_40a95e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a95e = call %struct.Memory* @routine_movq___rsi__rcx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a95e)
  store %struct.Memory* %call_40a95e, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rcx), %edx	 RIP: 40a962	 Bytes: 3
  %loadMem_40a962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a962 = call %struct.Memory* @routine_movl_0x8__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a962)
  store %struct.Memory* %call_40a962, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x98(%rbp)	 RIP: 40a965	 Bytes: 6
  %loadMem_40a965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a965 = call %struct.Memory* @routine_movl__edx__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a965)
  store %struct.Memory* %call_40a965, %struct.Memory** %MEMORY

  ; Code: .L_40a96b:	 RIP: 40a96b	 Bytes: 0
  br label %block_.L_40a96b
block_.L_40a96b:

  ; Code: cmpl $0x0, -0x98(%rbp)	 RIP: 40a96b	 Bytes: 7
  %loadMem_40a96b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a96b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a96b)
  store %struct.Memory* %call_40a96b, %struct.Memory** %MEMORY

  ; Code: jle .L_40aa3d	 RIP: 40a972	 Bytes: 6
  %loadMem_40a972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a972 = call %struct.Memory* @routine_jle_.L_40aa3d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a972, i8* %BRANCH_TAKEN, i64 203, i64 6, i64 6)
  store %struct.Memory* %call_40a972, %struct.Memory** %MEMORY

  %loadBr_40a972 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a972 = icmp eq i8 %loadBr_40a972, 1
  br i1 %cmpBr_40a972, label %block_.L_40aa3d, label %block_40a978

block_40a978:
  ; Code: movl -0xac(%rbp), %eax	 RIP: 40a978	 Bytes: 6
  %loadMem_40a978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a978 = call %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a978)
  store %struct.Memory* %call_40a978, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 40a97e	 Bytes: 3
  %loadMem_40a97e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a97e = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a97e)
  store %struct.Memory* %call_40a97e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xac(%rbp)	 RIP: 40a981	 Bytes: 6
  %loadMem_40a981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a981 = call %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a981)
  store %struct.Memory* %call_40a981, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 40a987	 Bytes: 4
  %loadMem_40a987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a987 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a987)
  store %struct.Memory* %call_40a987, %struct.Memory** %MEMORY

  ; Code: movl -0xac(%rbp), %esi	 RIP: 40a98b	 Bytes: 6
  %loadMem_40a98b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a98b = call %struct.Memory* @routine_movl_MINUS0xac__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a98b)
  store %struct.Memory* %call_40a98b, %struct.Memory** %MEMORY

  ; Code: callq .P7ReallocTrace	 RIP: 40a991	 Bytes: 5
  %loadMem1_40a991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40a991 = call %struct.Memory* @routine_callq_.P7ReallocTrace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40a991, i64 273647, i64 5, i64 5)
  store %struct.Memory* %call1_40a991, %struct.Memory** %MEMORY

  %loadMem2_40a991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a991 = load i64, i64* %3
  %call2_40a991 = call %struct.Memory* @sub_44d680.P7ReallocTrace(%struct.State* %0, i64  %loadPC_40a991, %struct.Memory* %loadMem2_40a991)
  store %struct.Memory* %call2_40a991, %struct.Memory** %MEMORY

  ; Code: movl -0xa0(%rbp), %eax	 RIP: 40a996	 Bytes: 6
  %loadMem_40a996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a996 = call %struct.Memory* @routine_movl_MINUS0xa0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a996)
  store %struct.Memory* %call_40a996, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40a99c	 Bytes: 3
  %loadMem_40a99c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a99c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a99c)
  store %struct.Memory* %call_40a99c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa0(%rbp)	 RIP: 40a99f	 Bytes: 6
  %loadMem_40a99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a99f = call %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a99f)
  store %struct.Memory* %call_40a99f, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 40a9a5	 Bytes: 4
  %loadMem_40a9a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9a5 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9a5)
  store %struct.Memory* %call_40a9a5, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdi), %rdi	 RIP: 40a9a9	 Bytes: 4
  %loadMem_40a9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9a9 = call %struct.Memory* @routine_movq_0x8__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9a9)
  store %struct.Memory* %call_40a9a9, %struct.Memory** %MEMORY

  ; Code: movslq -0xa0(%rbp), %rcx	 RIP: 40a9ad	 Bytes: 7
  %loadMem_40a9ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9ad = call %struct.Memory* @routine_movslq_MINUS0xa0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9ad)
  store %struct.Memory* %call_40a9ad, %struct.Memory** %MEMORY

  ; Code: movb $0x7, (%rdi,%rcx,1)	 RIP: 40a9b4	 Bytes: 4
  %loadMem_40a9b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9b4 = call %struct.Memory* @routine_movb__0x7____rdi__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9b4)
  store %struct.Memory* %call_40a9b4, %struct.Memory** %MEMORY

  ; Code: movl -0x98(%rbp), %eax	 RIP: 40a9b8	 Bytes: 6
  %loadMem_40a9b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9b8 = call %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9b8)
  store %struct.Memory* %call_40a9b8, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40a9be	 Bytes: 4
  %loadMem_40a9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9be = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9be)
  store %struct.Memory* %call_40a9be, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rcx), %rcx	 RIP: 40a9c2	 Bytes: 4
  %loadMem_40a9c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9c2 = call %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9c2)
  store %struct.Memory* %call_40a9c2, %struct.Memory** %MEMORY

  ; Code: movslq -0xa0(%rbp), %rdi	 RIP: 40a9c6	 Bytes: 7
  %loadMem_40a9c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9c6 = call %struct.Memory* @routine_movslq_MINUS0xa0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9c6)
  store %struct.Memory* %call_40a9c6, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdi,4)	 RIP: 40a9cd	 Bytes: 3
  %loadMem_40a9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9cd = call %struct.Memory* @routine_movl__eax____rcx__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9cd)
  store %struct.Memory* %call_40a9cd, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rcx	 RIP: 40a9d0	 Bytes: 7
  %loadMem_40a9d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9d0 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9d0)
  store %struct.Memory* %call_40a9d0, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rdi	 RIP: 40a9d7	 Bytes: 7
  %loadMem_40a9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9d7 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9d7)
  store %struct.Memory* %call_40a9d7, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdi,4), %eax	 RIP: 40a9de	 Bytes: 3
  %loadMem_40a9de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9de = call %struct.Memory* @routine_movl___rcx__rdi_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9de)
  store %struct.Memory* %call_40a9de, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x98(%rbp)	 RIP: 40a9e1	 Bytes: 6
  %loadMem_40a9e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9e1 = call %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9e1)
  store %struct.Memory* %call_40a9e1, %struct.Memory** %MEMORY

  ; Code: movl -0xa0(%rbp), %eax	 RIP: 40a9e7	 Bytes: 6
  %loadMem_40a9e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9e7 = call %struct.Memory* @routine_movl_MINUS0xa0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9e7)
  store %struct.Memory* %call_40a9e7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40a9ed	 Bytes: 3
  %loadMem_40a9ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9ed = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9ed)
  store %struct.Memory* %call_40a9ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa0(%rbp)	 RIP: 40a9f0	 Bytes: 6
  %loadMem_40a9f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9f0 = call %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9f0)
  store %struct.Memory* %call_40a9f0, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40a9f6	 Bytes: 4
  %loadMem_40a9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9f6 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9f6)
  store %struct.Memory* %call_40a9f6, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 40a9fa	 Bytes: 4
  %loadMem_40a9fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9fa = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9fa)
  store %struct.Memory* %call_40a9fa, %struct.Memory** %MEMORY

  ; Code: movslq -0xa0(%rbp), %rdi	 RIP: 40a9fe	 Bytes: 7
  %loadMem_40a9fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9fe = call %struct.Memory* @routine_movslq_MINUS0xa0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9fe)
  store %struct.Memory* %call_40a9fe, %struct.Memory** %MEMORY

  ; Code: movb $0x6, (%rcx,%rdi,1)	 RIP: 40aa05	 Bytes: 4
  %loadMem_40aa05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa05 = call %struct.Memory* @routine_movb__0x6____rcx__rdi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa05)
  store %struct.Memory* %call_40aa05, %struct.Memory** %MEMORY

  ; Code: movl -0x98(%rbp), %eax	 RIP: 40aa09	 Bytes: 6
  %loadMem_40aa09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa09 = call %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa09)
  store %struct.Memory* %call_40aa09, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40aa0f	 Bytes: 4
  %loadMem_40aa0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa0f = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa0f)
  store %struct.Memory* %call_40aa0f, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rcx), %rcx	 RIP: 40aa13	 Bytes: 4
  %loadMem_40aa13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa13 = call %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa13)
  store %struct.Memory* %call_40aa13, %struct.Memory** %MEMORY

  ; Code: movslq -0xa0(%rbp), %rdi	 RIP: 40aa17	 Bytes: 7
  %loadMem_40aa17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa17 = call %struct.Memory* @routine_movslq_MINUS0xa0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa17)
  store %struct.Memory* %call_40aa17, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdi,4)	 RIP: 40aa1e	 Bytes: 3
  %loadMem_40aa1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa1e = call %struct.Memory* @routine_movl__eax____rcx__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa1e)
  store %struct.Memory* %call_40aa1e, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rcx	 RIP: 40aa21	 Bytes: 7
  %loadMem_40aa21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa21 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa21)
  store %struct.Memory* %call_40aa21, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rdi	 RIP: 40aa28	 Bytes: 7
  %loadMem_40aa28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa28 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa28)
  store %struct.Memory* %call_40aa28, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdi,4), %eax	 RIP: 40aa2f	 Bytes: 3
  %loadMem_40aa2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa2f = call %struct.Memory* @routine_movl___rcx__rdi_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa2f)
  store %struct.Memory* %call_40aa2f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x98(%rbp)	 RIP: 40aa32	 Bytes: 6
  %loadMem_40aa32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa32 = call %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa32)
  store %struct.Memory* %call_40aa32, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40a96b	 RIP: 40aa38	 Bytes: 5
  %loadMem_40aa38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa38 = call %struct.Memory* @routine_jmpq_.L_40a96b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa38, i64 -205, i64 5)
  store %struct.Memory* %call_40aa38, %struct.Memory** %MEMORY

  br label %block_.L_40a96b

  ; Code: .L_40aa3d:	 RIP: 40aa3d	 Bytes: 0
block_.L_40aa3d:

  ; Code: movl -0xa0(%rbp), %eax	 RIP: 40aa3d	 Bytes: 6
  %loadMem_40aa3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa3d = call %struct.Memory* @routine_movl_MINUS0xa0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa3d)
  store %struct.Memory* %call_40aa3d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40aa43	 Bytes: 3
  %loadMem_40aa43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa43 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa43)
  store %struct.Memory* %call_40aa43, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa0(%rbp)	 RIP: 40aa46	 Bytes: 6
  %loadMem_40aa46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa46 = call %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa46)
  store %struct.Memory* %call_40aa46, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40aa4c	 Bytes: 4
  %loadMem_40aa4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa4c = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa4c)
  store %struct.Memory* %call_40aa4c, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 40aa50	 Bytes: 4
  %loadMem_40aa50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa50 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa50)
  store %struct.Memory* %call_40aa50, %struct.Memory** %MEMORY

  ; Code: movslq -0xa0(%rbp), %rdx	 RIP: 40aa54	 Bytes: 7
  %loadMem_40aa54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa54 = call %struct.Memory* @routine_movslq_MINUS0xa0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa54)
  store %struct.Memory* %call_40aa54, %struct.Memory** %MEMORY

  ; Code: movb $0x4, (%rcx,%rdx,1)	 RIP: 40aa5b	 Bytes: 4
  %loadMem_40aa5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa5b = call %struct.Memory* @routine_movb__0x4____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa5b)
  store %struct.Memory* %call_40aa5b, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40aa5f	 Bytes: 4
  %loadMem_40aa5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa5f = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa5f)
  store %struct.Memory* %call_40aa5f, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rcx), %rcx	 RIP: 40aa63	 Bytes: 4
  %loadMem_40aa63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa63 = call %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa63)
  store %struct.Memory* %call_40aa63, %struct.Memory** %MEMORY

  ; Code: movslq -0xa0(%rbp), %rdx	 RIP: 40aa67	 Bytes: 7
  %loadMem_40aa67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa67 = call %struct.Memory* @routine_movslq_MINUS0xa0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa67)
  store %struct.Memory* %call_40aa67, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx,%rdx,4)	 RIP: 40aa6e	 Bytes: 7
  %loadMem_40aa6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa6e = call %struct.Memory* @routine_movl__0x0____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa6e)
  store %struct.Memory* %call_40aa6e, %struct.Memory** %MEMORY

  ; Code: movl -0xa0(%rbp), %eax	 RIP: 40aa75	 Bytes: 6
  %loadMem_40aa75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa75 = call %struct.Memory* @routine_movl_MINUS0xa0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa75)
  store %struct.Memory* %call_40aa75, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40aa7b	 Bytes: 3
  %loadMem_40aa7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa7b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa7b)
  store %struct.Memory* %call_40aa7b, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40aa7e	 Bytes: 4
  %loadMem_40aa7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa7e = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa7e)
  store %struct.Memory* %call_40aa7e, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 40aa82	 Bytes: 2
  %loadMem_40aa82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa82 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa82)
  store %struct.Memory* %call_40aa82, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 40aa84	 Bytes: 4
  %loadMem_40aa84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa84 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa84)
  store %struct.Memory* %call_40aa84, %struct.Memory** %MEMORY

  ; Code: callq .P7ReverseTrace	 RIP: 40aa88	 Bytes: 5
  %loadMem1_40aa88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40aa88 = call %struct.Memory* @routine_callq_.P7ReverseTrace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40aa88, i64 273992, i64 5, i64 5)
  store %struct.Memory* %call1_40aa88, %struct.Memory** %MEMORY

  %loadMem2_40aa88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40aa88 = load i64, i64* %3
  %call2_40aa88 = call %struct.Memory* @sub_44d8d0.P7ReverseTrace(%struct.State* %0, i64  %loadPC_40aa88, %struct.Memory* %loadMem2_40aa88)
  store %struct.Memory* %call2_40aa88, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdi	 RIP: 40aa8d	 Bytes: 4
  %loadMem_40aa8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa8d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa8d)
  store %struct.Memory* %call_40aa8d, %struct.Memory** %MEMORY

  ; Code: callq .FreePlan7Matrix	 RIP: 40aa91	 Bytes: 5
  %loadMem1_40aa91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40aa91 = call %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40aa91, i64 -12625, i64 5, i64 5)
  store %struct.Memory* %call1_40aa91, %struct.Memory** %MEMORY

  %loadMem2_40aa91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40aa91 = load i64, i64* %3
  %call2_40aa91 = call %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* %0, i64  %loadPC_40aa91, %struct.Memory* %loadMem2_40aa91)
  store %struct.Memory* %call2_40aa91, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 40aa96	 Bytes: 4
  %loadMem_40aa96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa96 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa96)
  store %struct.Memory* %call_40aa96, %struct.Memory** %MEMORY

  ; Code: callq .FreePlan7Matrix	 RIP: 40aa9a	 Bytes: 5
  %loadMem1_40aa9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40aa9a = call %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40aa9a, i64 -12634, i64 5, i64 5)
  store %struct.Memory* %call1_40aa9a, %struct.Memory** %MEMORY

  %loadMem2_40aa9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40aa9a = load i64, i64* %3
  %call2_40aa9a = call %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* %0, i64  %loadPC_40aa9a, %struct.Memory* %loadMem2_40aa9a)
  store %struct.Memory* %call2_40aa9a, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rcx	 RIP: 40aa9f	 Bytes: 7
  %loadMem_40aa9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa9f = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa9f)
  store %struct.Memory* %call_40aa9f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 40aaa6	 Bytes: 3
  %loadMem_40aaa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aaa6 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aaa6)
  store %struct.Memory* %call_40aaa6, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 40aaa9	 Bytes: 5
  %loadMem1_40aaa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40aaa9 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40aaa9, i64 -38697, i64 5, i64 5)
  store %struct.Memory* %call1_40aaa9, %struct.Memory** %MEMORY

  %loadMem2_40aaa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40aaa9 = load i64, i64* %3
  %call2_40aaa9 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_40aaa9, %struct.Memory* %loadMem2_40aaa9)
  store %struct.Memory* %call2_40aaa9, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rcx	 RIP: 40aaae	 Bytes: 7
  %loadMem_40aaae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aaae = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aaae)
  store %struct.Memory* %call_40aaae, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 40aab5	 Bytes: 3
  %loadMem_40aab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aab5 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aab5)
  store %struct.Memory* %call_40aab5, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 40aab8	 Bytes: 5
  %loadMem1_40aab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40aab8 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40aab8, i64 -38712, i64 5, i64 5)
  store %struct.Memory* %call1_40aab8, %struct.Memory** %MEMORY

  %loadMem2_40aab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40aab8 = load i64, i64* %3
  %call2_40aab8 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_40aab8, %struct.Memory* %loadMem2_40aab8)
  store %struct.Memory* %call2_40aab8, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40aabd	 Bytes: 4
  %loadMem_40aabd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aabd = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aabd)
  store %struct.Memory* %call_40aabd, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 40aac1	 Bytes: 4
  %loadMem_40aac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aac1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aac1)
  store %struct.Memory* %call_40aac1, %struct.Memory** %MEMORY

  ; Code: movq %rcx, (%rdx)	 RIP: 40aac5	 Bytes: 3
  %loadMem_40aac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aac5 = call %struct.Memory* @routine_movq__rcx____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aac5)
  store %struct.Memory* %call_40aac5, %struct.Memory** %MEMORY

  ; Code: movl -0x94(%rbp), %edi	 RIP: 40aac8	 Bytes: 6
  %loadMem_40aac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aac8 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aac8)
  store %struct.Memory* %call_40aac8, %struct.Memory** %MEMORY

  ; Code: callq .Scorify	 RIP: 40aace	 Bytes: 5
  %loadMem1_40aace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40aace = call %struct.Memory* @routine_callq_.Scorify(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40aace, i64 119842, i64 5, i64 5)
  store %struct.Memory* %call1_40aace, %struct.Memory** %MEMORY

  %loadMem2_40aace = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40aace = load i64, i64* %3
  %call2_40aace = call %struct.Memory* @sub_427ef0.Scorify(%struct.State* %0, i64  %loadPC_40aace, %struct.Memory* %loadMem2_40aace)
  store %struct.Memory* %call2_40aace, %struct.Memory** %MEMORY

  ; Code: addq $0xb8, %rsp	 RIP: 40aad3	 Bytes: 7
  %loadMem_40aad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aad3 = call %struct.Memory* @routine_addq__0xb8___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aad3)
  store %struct.Memory* %call_40aad3, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 40aada	 Bytes: 1
  %loadMem_40aada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aada = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aada)
  store %struct.Memory* %call_40aada, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 40aadb	 Bytes: 1
  %loadMem_40aadb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aadb = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aadb)
  store %struct.Memory* %call_40aadb, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40aadc	 Bytes: 1
  %loadMem_40aadc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aadc = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aadc)
  store %struct.Memory* %call_40aadc, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40aadc
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

define %struct.Memory* @routine_subq__0xb8___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 184)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x48__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x50__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x60__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x58__rbp____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %13)
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


define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %RCX
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x88__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__r8___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__r9___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__r10___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__r11___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R11
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x2___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 2)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x68__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x70__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x80__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x78__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl_0x88__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x455f2a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x455f2a_type* @G__0x455f2a to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x43b___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1083)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x14__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
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

define %struct.Memory* @routine_addl__0x1___ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %9, i64 1)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__ebx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EBX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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




define %struct.Memory* @routine_movl__0x43c___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1084)
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














define %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x150__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__esi____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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






define %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0xffffffff____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 -1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__0x0__MINUS0x9c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
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

define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 136
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jg_.L_409d07(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 -987654321)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_409c9e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jg_.L_40a8c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x98__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0xb0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
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


define %struct.Memory* @routine_movl__edx__MINUS0xa4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0xa4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 164
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setne__sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %SIL)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #0 {
  %6 = xor i64 %4, %3
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

define %struct.Memory* @routine_xorb__0xff___sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %SIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %11, i64 255)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_andb__0x1___sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %SIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 255
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl__sil___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %SIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0xa4__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0xc521974f____rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 -987654321)
  ret %struct.Memory* %12
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








define %struct.Memory* @routine_movl__0x1__MINUS0x9c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_jg_.L_40a4ba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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








define %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x9c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
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




define %struct.Memory* @routine_movl_MINUS0x9c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__esi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
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

define %struct.Memory* @routine_jle_.L_409e7e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0xa4__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0xa8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}






























define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




















define %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RAX
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %17
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jle_.L_409f35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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




define %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 368
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


















define %struct.Memory* @routine_jle_.L_409fc1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














































define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}






















define %struct.Memory* @routine_jle_.L_40a078(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movslq_MINUS0x98__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %17)
  ret %struct.Memory* %20
}








define %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 -987654321)
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

define %struct.Memory* @routine_je_.L_40a0f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}










define %struct.Memory* @routine_addl___rax__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ESI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_40a116(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jle_.L_40a1d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




















































define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}






















define %struct.Memory* @routine_jle_.L_40a28e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jge_.L_40a4a1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jle_.L_40a356(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}












































define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


















define %struct.Memory* @routine_jle_.L_40a3fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_je_.L_40a47f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
































define %struct.Memory* @routine_jmpq_.L_40a49c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jmpq_.L_40a4a1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40a4a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_409da8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__0xc521974f__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x154__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 340
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_jle_.L_40a516(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


















define %struct.Memory* @routine_jg_.L_40a5f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_40a5da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jmpq_.L_40a5df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_40a536(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addl_0x16c__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 364
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_jle_.L_40a673(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_0xc__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x15c__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 348
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_cmpl_0xc__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_40a6dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_addl_0x150__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 336
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_jle_.L_40a74c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__0x0____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_addl_0x168__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 360
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_cmpl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jle_.L_40a7bf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








































define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x164__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 356
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_jle_.L_40a83f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_0x8__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_addl_0x158__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 344
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_cmpl_0x8__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 8
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_40a8a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jmpq_.L_40a8ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_409d11(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_leaq_MINUS0x40__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_addl_0x160__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 352
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__0x2__MINUS0xac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 172
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0xac__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.P7AllocTrace(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0xa0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x9____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 9)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0xbc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0xbc__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_idivl__edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rsi__rcx_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__edx__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_40aa3d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl_MINUS0xac__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.P7ReallocTrace(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0xa0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq_0x8__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movb__0x7____rdi__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 7)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0xa0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax____rcx__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movslq_MINUS0x98__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rcx__rdi_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}












define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movb__0x6____rcx__rdi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 6)
  ret %struct.Memory* %17
}




















define %struct.Memory* @routine_jmpq_.L_40a96b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movslq_MINUS0xa0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__0x4____rcx__rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 4)
  ret %struct.Memory* %17
}




















define %struct.Memory* @routine_callq_.P7ReverseTrace(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.free_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x94__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.Scorify(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0xb8___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 184)
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

