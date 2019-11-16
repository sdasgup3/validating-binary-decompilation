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
declare %struct.Memory* @sub_445400.sre_random(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0x459d41_type = type <{ [8 x i8] }>
@G__0x459d41= global %G__0x459d41_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @QRNAShuffle(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .QRNAShuffle:	 RIP: 43e240	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 43e240	 Bytes: 1
  %loadMem_43e240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e240 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e240)
  store %struct.Memory* %call_43e240, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 43e241	 Bytes: 3
  %loadMem_43e241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e241 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e241)
  store %struct.Memory* %call_43e241, %struct.Memory** %MEMORY

  ; Code: subq $0x80, %rsp	 RIP: 43e244	 Bytes: 7
  %loadMem_43e244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e244 = call %struct.Memory* @routine_subq__0x80___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e244)
  store %struct.Memory* %call_43e244, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 43e24b	 Bytes: 4
  %loadMem_43e24b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e24b = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e24b)
  store %struct.Memory* %call_43e24b, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 43e24f	 Bytes: 4
  %loadMem_43e24f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e24f = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e24f)
  store %struct.Memory* %call_43e24f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 43e253	 Bytes: 4
  %loadMem_43e253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e253 = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e253)
  store %struct.Memory* %call_43e253, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x20(%rbp)	 RIP: 43e257	 Bytes: 4
  %loadMem_43e257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e257 = call %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e257)
  store %struct.Memory* %call_43e257, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43e25b	 Bytes: 4
  %loadMem_43e25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e25b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e25b)
  store %struct.Memory* %call_43e25b, %struct.Memory** %MEMORY

  ; Code: cmpq -0x18(%rbp), %rcx	 RIP: 43e25f	 Bytes: 4
  %loadMem_43e25f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e25f = call %struct.Memory* @routine_cmpq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e25f)
  store %struct.Memory* %call_43e25f, %struct.Memory** %MEMORY

  ; Code: je .L_43e27a	 RIP: 43e263	 Bytes: 6
  %loadMem_43e263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e263 = call %struct.Memory* @routine_je_.L_43e27a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e263, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_43e263, %struct.Memory** %MEMORY

  %loadBr_43e263 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e263 = icmp eq i8 %loadBr_43e263, 1
  br i1 %cmpBr_43e263, label %block_.L_43e27a, label %block_43e269

block_43e269:
  ; Code: movq -0x8(%rbp), %rdi	 RIP: 43e269	 Bytes: 4
  %loadMem_43e269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e269 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e269)
  store %struct.Memory* %call_43e269, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rsi	 RIP: 43e26d	 Bytes: 4
  %loadMem_43e26d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e26d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e26d)
  store %struct.Memory* %call_43e26d, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 43e271	 Bytes: 5
  %loadMem1_43e271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e271 = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e271, i64 -249489, i64 5, i64 5)
  store %struct.Memory* %call1_43e271, %struct.Memory** %MEMORY

  %loadMem2_43e271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e271 = load i64, i64* %3
  %call2_43e271 = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_43e271, %struct.Memory* %loadMem2_43e271)
  store %struct.Memory* %call2_43e271, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 43e276	 Bytes: 4
  %loadMem_43e276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e276 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e276)
  store %struct.Memory* %call_43e276, %struct.Memory** %MEMORY

  ; Code: .L_43e27a:	 RIP: 43e27a	 Bytes: 0
  br label %block_.L_43e27a
block_.L_43e27a:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43e27a	 Bytes: 4
  %loadMem_43e27a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e27a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e27a)
  store %struct.Memory* %call_43e27a, %struct.Memory** %MEMORY

  ; Code: cmpq -0x20(%rbp), %rax	 RIP: 43e27e	 Bytes: 4
  %loadMem_43e27e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e27e = call %struct.Memory* @routine_cmpq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e27e)
  store %struct.Memory* %call_43e27e, %struct.Memory** %MEMORY

  ; Code: je .L_43e299	 RIP: 43e282	 Bytes: 6
  %loadMem_43e282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e282 = call %struct.Memory* @routine_je_.L_43e299(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e282, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_43e282, %struct.Memory** %MEMORY

  %loadBr_43e282 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e282 = icmp eq i8 %loadBr_43e282, 1
  br i1 %cmpBr_43e282, label %block_.L_43e299, label %block_43e288

block_43e288:
  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43e288	 Bytes: 4
  %loadMem_43e288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e288 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e288)
  store %struct.Memory* %call_43e288, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 43e28c	 Bytes: 4
  %loadMem_43e28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e28c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e28c)
  store %struct.Memory* %call_43e28c, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 43e290	 Bytes: 5
  %loadMem1_43e290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e290 = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e290, i64 -249520, i64 5, i64 5)
  store %struct.Memory* %call1_43e290, %struct.Memory** %MEMORY

  %loadMem2_43e290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e290 = load i64, i64* %3
  %call2_43e290 = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_43e290, %struct.Memory* %loadMem2_43e290)
  store %struct.Memory* %call2_43e290, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 43e295	 Bytes: 4
  %loadMem_43e295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e295 = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e295)
  store %struct.Memory* %call_43e295, %struct.Memory** %MEMORY

  ; Code: .L_43e299:	 RIP: 43e299	 Bytes: 0
  br label %block_.L_43e299
block_.L_43e299:

  ; Code: movq $0x459d41, %rdi	 RIP: 43e299	 Bytes: 10
  %loadMem_43e299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e299 = call %struct.Memory* @routine_movq__0x459d41___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e299)
  store %struct.Memory* %call_43e299, %struct.Memory** %MEMORY

  ; Code: movl $0x23c, %esi	 RIP: 43e2a3	 Bytes: 5
  %loadMem_43e2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2a3 = call %struct.Memory* @routine_movl__0x23c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2a3)
  store %struct.Memory* %call_43e2a3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e2a8	 Bytes: 4
  %loadMem_43e2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2a8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2a8)
  store %struct.Memory* %call_43e2a8, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x78(%rbp)	 RIP: 43e2ac	 Bytes: 4
  %loadMem_43e2ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2ac = call %struct.Memory* @routine_movq__rdi__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2ac)
  store %struct.Memory* %call_43e2ac, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 43e2b0	 Bytes: 3
  %loadMem_43e2b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2b0 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2b0)
  store %struct.Memory* %call_43e2b0, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x7c(%rbp)	 RIP: 43e2b3	 Bytes: 3
  %loadMem_43e2b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2b3 = call %struct.Memory* @routine_movl__esi__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2b3)
  store %struct.Memory* %call_43e2b3, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 43e2b6	 Bytes: 5
  %loadMem1_43e2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e2b6 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e2b6, i64 -249430, i64 5, i64 5)
  store %struct.Memory* %call1_43e2b6, %struct.Memory** %MEMORY

  %loadMem2_43e2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e2b6 = load i64, i64* %3
  %call2_43e2b6 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_43e2b6, %struct.Memory* %loadMem2_43e2b6)
  store %struct.Memory* %call2_43e2b6, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 43e2bb	 Bytes: 2
  %loadMem_43e2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2bb = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2bb)
  store %struct.Memory* %call_43e2bb, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x24(%rbp)	 RIP: 43e2bd	 Bytes: 3
  %loadMem_43e2bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2bd = call %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2bd)
  store %struct.Memory* %call_43e2bd, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 43e2c0	 Bytes: 4
  %loadMem_43e2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2c0 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2c0)
  store %struct.Memory* %call_43e2c0, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 43e2c4	 Bytes: 4
  %loadMem_43e2c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2c4 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2c4)
  store %struct.Memory* %call_43e2c4, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rdi	 RIP: 43e2c8	 Bytes: 4
  %loadMem_43e2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2c8 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2c8)
  store %struct.Memory* %call_43e2c8, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %esi	 RIP: 43e2cc	 Bytes: 3
  %loadMem_43e2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2cc = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2cc)
  store %struct.Memory* %call_43e2cc, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 43e2cf	 Bytes: 3
  %loadMem_43e2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2cf = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2cf)
  store %struct.Memory* %call_43e2cf, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 43e2d2	 Bytes: 5
  %loadMem1_43e2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e2d2 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e2d2, i64 32142, i64 5, i64 5)
  store %struct.Memory* %call1_43e2d2, %struct.Memory** %MEMORY

  %loadMem2_43e2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e2d2 = load i64, i64* %3
  %call2_43e2d2 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_43e2d2, %struct.Memory* %loadMem2_43e2d2)
  store %struct.Memory* %call2_43e2d2, %struct.Memory** %MEMORY

  ; Code: movq $0x459d41, %rdi	 RIP: 43e2d7	 Bytes: 10
  %loadMem_43e2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2d7 = call %struct.Memory* @routine_movq__0x459d41___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2d7)
  store %struct.Memory* %call_43e2d7, %struct.Memory** %MEMORY

  ; Code: movl $0x23d, %esi	 RIP: 43e2e1	 Bytes: 5
  %loadMem_43e2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2e1 = call %struct.Memory* @routine_movl__0x23d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2e1)
  store %struct.Memory* %call_43e2e1, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 43e2e6	 Bytes: 4
  %loadMem_43e2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2e6 = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2e6)
  store %struct.Memory* %call_43e2e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 43e2ea	 Bytes: 4
  %loadMem_43e2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2ea = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2ea)
  store %struct.Memory* %call_43e2ea, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 43e2ee	 Bytes: 4
  %loadMem_43e2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2ee = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2ee)
  store %struct.Memory* %call_43e2ee, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 43e2f2	 Bytes: 3
  %loadMem_43e2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2f2 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2f2)
  store %struct.Memory* %call_43e2f2, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 43e2f5	 Bytes: 5
  %loadMem1_43e2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e2f5 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e2f5, i64 32107, i64 5, i64 5)
  store %struct.Memory* %call1_43e2f5, %struct.Memory** %MEMORY

  %loadMem2_43e2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e2f5 = load i64, i64* %3
  %call2_43e2f5 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_43e2f5, %struct.Memory* %loadMem2_43e2f5)
  store %struct.Memory* %call2_43e2f5, %struct.Memory** %MEMORY

  ; Code: movq $0x459d41, %rdi	 RIP: 43e2fa	 Bytes: 10
  %loadMem_43e2fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2fa = call %struct.Memory* @routine_movq__0x459d41___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2fa)
  store %struct.Memory* %call_43e2fa, %struct.Memory** %MEMORY

  ; Code: movl $0x23e, %esi	 RIP: 43e304	 Bytes: 5
  %loadMem_43e304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e304 = call %struct.Memory* @routine_movl__0x23e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e304)
  store %struct.Memory* %call_43e304, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 43e309	 Bytes: 4
  %loadMem_43e309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e309 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e309)
  store %struct.Memory* %call_43e309, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 43e30d	 Bytes: 4
  %loadMem_43e30d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e30d = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e30d)
  store %struct.Memory* %call_43e30d, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 43e311	 Bytes: 4
  %loadMem_43e311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e311 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e311)
  store %struct.Memory* %call_43e311, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 43e315	 Bytes: 3
  %loadMem_43e315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e315 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e315)
  store %struct.Memory* %call_43e315, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 43e318	 Bytes: 5
  %loadMem1_43e318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e318 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e318, i64 32072, i64 5, i64 5)
  store %struct.Memory* %call1_43e318, %struct.Memory** %MEMORY

  %loadMem2_43e318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e318 = load i64, i64* %3
  %call2_43e318 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_43e318, %struct.Memory* %loadMem2_43e318)
  store %struct.Memory* %call2_43e318, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 43e31d	 Bytes: 4
  %loadMem_43e31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e31d = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e31d)
  store %struct.Memory* %call_43e31d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4c(%rbp)	 RIP: 43e321	 Bytes: 7
  %loadMem_43e321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e321 = call %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e321)
  store %struct.Memory* %call_43e321, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x48(%rbp)	 RIP: 43e328	 Bytes: 7
  %loadMem_43e328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e328 = call %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e328)
  store %struct.Memory* %call_43e328, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x44(%rbp)	 RIP: 43e32f	 Bytes: 7
  %loadMem_43e32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e32f = call %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e32f)
  store %struct.Memory* %call_43e32f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x50(%rbp)	 RIP: 43e336	 Bytes: 7
  %loadMem_43e336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e336 = call %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e336)
  store %struct.Memory* %call_43e336, %struct.Memory** %MEMORY

  ; Code: .L_43e33d:	 RIP: 43e33d	 Bytes: 0
  br label %block_.L_43e33d
block_.L_43e33d:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 43e33d	 Bytes: 3
  %loadMem_43e33d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e33d = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e33d)
  store %struct.Memory* %call_43e33d, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %eax	 RIP: 43e340	 Bytes: 3
  %loadMem_43e340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e340 = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e340)
  store %struct.Memory* %call_43e340, %struct.Memory** %MEMORY

  ; Code: jge .L_43e635	 RIP: 43e343	 Bytes: 6
  %loadMem_43e343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e343 = call %struct.Memory* @routine_jge_.L_43e635(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e343, i8* %BRANCH_TAKEN, i64 754, i64 6, i64 6)
  store %struct.Memory* %call_43e343, %struct.Memory** %MEMORY

  %loadBr_43e343 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e343 = icmp eq i8 %loadBr_43e343, 1
  br i1 %cmpBr_43e343, label %block_.L_43e635, label %block_43e349

block_43e349:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e349	 Bytes: 4
  %loadMem_43e349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e349 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e349)
  store %struct.Memory* %call_43e349, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e34d	 Bytes: 4
  %loadMem_43e34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e34d = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e34d)
  store %struct.Memory* %call_43e34d, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e351	 Bytes: 4
  %loadMem_43e351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e351 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e351)
  store %struct.Memory* %call_43e351, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 43e355	 Bytes: 3
  %loadMem_43e355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e355 = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e355)
  store %struct.Memory* %call_43e355, %struct.Memory** %MEMORY

  ; Code: je .L_43e3b2	 RIP: 43e358	 Bytes: 6
  %loadMem_43e358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e358 = call %struct.Memory* @routine_je_.L_43e3b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e358, i8* %BRANCH_TAKEN, i64 90, i64 6, i64 6)
  store %struct.Memory* %call_43e358, %struct.Memory** %MEMORY

  %loadBr_43e358 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e358 = icmp eq i8 %loadBr_43e358, 1
  br i1 %cmpBr_43e358, label %block_.L_43e3b2, label %block_43e35e

block_43e35e:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e35e	 Bytes: 4
  %loadMem_43e35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e35e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e35e)
  store %struct.Memory* %call_43e35e, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e362	 Bytes: 4
  %loadMem_43e362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e362 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e362)
  store %struct.Memory* %call_43e362, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e366	 Bytes: 4
  %loadMem_43e366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e366 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e366)
  store %struct.Memory* %call_43e366, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 43e36a	 Bytes: 3
  %loadMem_43e36a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e36a = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e36a)
  store %struct.Memory* %call_43e36a, %struct.Memory** %MEMORY

  ; Code: je .L_43e3b2	 RIP: 43e36d	 Bytes: 6
  %loadMem_43e36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e36d = call %struct.Memory* @routine_je_.L_43e3b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e36d, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_43e36d, %struct.Memory** %MEMORY

  %loadBr_43e36d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e36d = icmp eq i8 %loadBr_43e36d, 1
  br i1 %cmpBr_43e36d, label %block_.L_43e3b2, label %block_43e373

block_43e373:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e373	 Bytes: 4
  %loadMem_43e373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e373 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e373)
  store %struct.Memory* %call_43e373, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e377	 Bytes: 4
  %loadMem_43e377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e377 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e377)
  store %struct.Memory* %call_43e377, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e37b	 Bytes: 4
  %loadMem_43e37b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e37b = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e37b)
  store %struct.Memory* %call_43e37b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 43e37f	 Bytes: 3
  %loadMem_43e37f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e37f = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e37f)
  store %struct.Memory* %call_43e37f, %struct.Memory** %MEMORY

  ; Code: je .L_43e3b2	 RIP: 43e382	 Bytes: 6
  %loadMem_43e382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e382 = call %struct.Memory* @routine_je_.L_43e3b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e382, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_43e382, %struct.Memory** %MEMORY

  %loadBr_43e382 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e382 = icmp eq i8 %loadBr_43e382, 1
  br i1 %cmpBr_43e382, label %block_.L_43e3b2, label %block_43e388

block_43e388:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e388	 Bytes: 4
  %loadMem_43e388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e388 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e388)
  store %struct.Memory* %call_43e388, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e38c	 Bytes: 4
  %loadMem_43e38c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e38c = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e38c)
  store %struct.Memory* %call_43e38c, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e390	 Bytes: 4
  %loadMem_43e390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e390 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e390)
  store %struct.Memory* %call_43e390, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 43e394	 Bytes: 3
  %loadMem_43e394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e394 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e394)
  store %struct.Memory* %call_43e394, %struct.Memory** %MEMORY

  ; Code: je .L_43e3b2	 RIP: 43e397	 Bytes: 6
  %loadMem_43e397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e397 = call %struct.Memory* @routine_je_.L_43e3b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e397, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43e397, %struct.Memory** %MEMORY

  %loadBr_43e397 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e397 = icmp eq i8 %loadBr_43e397, 1
  br i1 %cmpBr_43e397, label %block_.L_43e3b2, label %block_43e39d

block_43e39d:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e39d	 Bytes: 4
  %loadMem_43e39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e39d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e39d)
  store %struct.Memory* %call_43e39d, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e3a1	 Bytes: 4
  %loadMem_43e3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3a1 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3a1)
  store %struct.Memory* %call_43e3a1, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e3a5	 Bytes: 4
  %loadMem_43e3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3a5 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3a5)
  store %struct.Memory* %call_43e3a5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 43e3a9	 Bytes: 3
  %loadMem_43e3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3a9 = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3a9)
  store %struct.Memory* %call_43e3a9, %struct.Memory** %MEMORY

  ; Code: jne .L_43e420	 RIP: 43e3ac	 Bytes: 6
  %loadMem_43e3ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3ac = call %struct.Memory* @routine_jne_.L_43e420(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3ac, i8* %BRANCH_TAKEN, i64 116, i64 6, i64 6)
  store %struct.Memory* %call_43e3ac, %struct.Memory** %MEMORY

  %loadBr_43e3ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e3ac = icmp eq i8 %loadBr_43e3ac, 1
  br i1 %cmpBr_43e3ac, label %block_.L_43e420, label %block_.L_43e3b2

  ; Code: .L_43e3b2:	 RIP: 43e3b2	 Bytes: 0
block_.L_43e3b2:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 43e3b2	 Bytes: 4
  %loadMem_43e3b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3b2 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3b2)
  store %struct.Memory* %call_43e3b2, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e3b6	 Bytes: 4
  %loadMem_43e3b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3b6 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3b6)
  store %struct.Memory* %call_43e3b6, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e3ba	 Bytes: 4
  %loadMem_43e3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3ba = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3ba)
  store %struct.Memory* %call_43e3ba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 43e3be	 Bytes: 3
  %loadMem_43e3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3be = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3be)
  store %struct.Memory* %call_43e3be, %struct.Memory** %MEMORY

  ; Code: je .L_43e41b	 RIP: 43e3c1	 Bytes: 6
  %loadMem_43e3c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3c1 = call %struct.Memory* @routine_je_.L_43e41b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3c1, i8* %BRANCH_TAKEN, i64 90, i64 6, i64 6)
  store %struct.Memory* %call_43e3c1, %struct.Memory** %MEMORY

  %loadBr_43e3c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e3c1 = icmp eq i8 %loadBr_43e3c1, 1
  br i1 %cmpBr_43e3c1, label %block_.L_43e41b, label %block_43e3c7

block_43e3c7:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 43e3c7	 Bytes: 4
  %loadMem_43e3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3c7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3c7)
  store %struct.Memory* %call_43e3c7, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e3cb	 Bytes: 4
  %loadMem_43e3cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3cb = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3cb)
  store %struct.Memory* %call_43e3cb, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e3cf	 Bytes: 4
  %loadMem_43e3cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3cf = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3cf)
  store %struct.Memory* %call_43e3cf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 43e3d3	 Bytes: 3
  %loadMem_43e3d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3d3 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3d3)
  store %struct.Memory* %call_43e3d3, %struct.Memory** %MEMORY

  ; Code: je .L_43e41b	 RIP: 43e3d6	 Bytes: 6
  %loadMem_43e3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3d6 = call %struct.Memory* @routine_je_.L_43e41b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3d6, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_43e3d6, %struct.Memory** %MEMORY

  %loadBr_43e3d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e3d6 = icmp eq i8 %loadBr_43e3d6, 1
  br i1 %cmpBr_43e3d6, label %block_.L_43e41b, label %block_43e3dc

block_43e3dc:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 43e3dc	 Bytes: 4
  %loadMem_43e3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3dc = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3dc)
  store %struct.Memory* %call_43e3dc, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e3e0	 Bytes: 4
  %loadMem_43e3e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3e0 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3e0)
  store %struct.Memory* %call_43e3e0, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e3e4	 Bytes: 4
  %loadMem_43e3e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3e4 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3e4)
  store %struct.Memory* %call_43e3e4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 43e3e8	 Bytes: 3
  %loadMem_43e3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3e8 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3e8)
  store %struct.Memory* %call_43e3e8, %struct.Memory** %MEMORY

  ; Code: je .L_43e41b	 RIP: 43e3eb	 Bytes: 6
  %loadMem_43e3eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3eb = call %struct.Memory* @routine_je_.L_43e41b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3eb, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_43e3eb, %struct.Memory** %MEMORY

  %loadBr_43e3eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e3eb = icmp eq i8 %loadBr_43e3eb, 1
  br i1 %cmpBr_43e3eb, label %block_.L_43e41b, label %block_43e3f1

block_43e3f1:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 43e3f1	 Bytes: 4
  %loadMem_43e3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3f1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3f1)
  store %struct.Memory* %call_43e3f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e3f5	 Bytes: 4
  %loadMem_43e3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3f5 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3f5)
  store %struct.Memory* %call_43e3f5, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e3f9	 Bytes: 4
  %loadMem_43e3f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3f9 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3f9)
  store %struct.Memory* %call_43e3f9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 43e3fd	 Bytes: 3
  %loadMem_43e3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e3fd = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e3fd)
  store %struct.Memory* %call_43e3fd, %struct.Memory** %MEMORY

  ; Code: je .L_43e41b	 RIP: 43e400	 Bytes: 6
  %loadMem_43e400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e400 = call %struct.Memory* @routine_je_.L_43e41b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e400, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43e400, %struct.Memory** %MEMORY

  %loadBr_43e400 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e400 = icmp eq i8 %loadBr_43e400, 1
  br i1 %cmpBr_43e400, label %block_.L_43e41b, label %block_43e406

block_43e406:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 43e406	 Bytes: 4
  %loadMem_43e406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e406 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e406)
  store %struct.Memory* %call_43e406, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e40a	 Bytes: 4
  %loadMem_43e40a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e40a = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e40a)
  store %struct.Memory* %call_43e40a, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e40e	 Bytes: 4
  %loadMem_43e40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e40e = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e40e)
  store %struct.Memory* %call_43e40e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 43e412	 Bytes: 3
  %loadMem_43e412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e412 = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e412)
  store %struct.Memory* %call_43e412, %struct.Memory** %MEMORY

  ; Code: jne .L_43e420	 RIP: 43e415	 Bytes: 6
  %loadMem_43e415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e415 = call %struct.Memory* @routine_jne_.L_43e420(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e415, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_43e415, %struct.Memory** %MEMORY

  %loadBr_43e415 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e415 = icmp eq i8 %loadBr_43e415, 1
  br i1 %cmpBr_43e415, label %block_.L_43e420, label %block_.L_43e41b

  ; Code: .L_43e41b:	 RIP: 43e41b	 Bytes: 0
block_.L_43e41b:

  ; Code: jmpq .L_43e627	 RIP: 43e41b	 Bytes: 5
  %loadMem_43e41b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e41b = call %struct.Memory* @routine_jmpq_.L_43e627(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e41b, i64 524, i64 5)
  store %struct.Memory* %call_43e41b, %struct.Memory** %MEMORY

  br label %block_.L_43e627

  ; Code: .L_43e420:	 RIP: 43e420	 Bytes: 0
block_.L_43e420:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e420	 Bytes: 4
  %loadMem_43e420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e420 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e420)
  store %struct.Memory* %call_43e420, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e424	 Bytes: 4
  %loadMem_43e424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e424 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e424)
  store %struct.Memory* %call_43e424, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e428	 Bytes: 4
  %loadMem_43e428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e428 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e428)
  store %struct.Memory* %call_43e428, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 43e42c	 Bytes: 3
  %loadMem_43e42c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e42c = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e42c)
  store %struct.Memory* %call_43e42c, %struct.Memory** %MEMORY

  ; Code: je .L_43e50e	 RIP: 43e42f	 Bytes: 6
  %loadMem_43e42f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e42f = call %struct.Memory* @routine_je_.L_43e50e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e42f, i8* %BRANCH_TAKEN, i64 223, i64 6, i64 6)
  store %struct.Memory* %call_43e42f, %struct.Memory** %MEMORY

  %loadBr_43e42f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e42f = icmp eq i8 %loadBr_43e42f, 1
  br i1 %cmpBr_43e42f, label %block_.L_43e50e, label %block_43e435

block_43e435:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e435	 Bytes: 4
  %loadMem_43e435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e435 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e435)
  store %struct.Memory* %call_43e435, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e439	 Bytes: 4
  %loadMem_43e439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e439 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e439)
  store %struct.Memory* %call_43e439, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e43d	 Bytes: 4
  %loadMem_43e43d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e43d = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e43d)
  store %struct.Memory* %call_43e43d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 43e441	 Bytes: 3
  %loadMem_43e441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e441 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e441)
  store %struct.Memory* %call_43e441, %struct.Memory** %MEMORY

  ; Code: je .L_43e50e	 RIP: 43e444	 Bytes: 6
  %loadMem_43e444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e444 = call %struct.Memory* @routine_je_.L_43e50e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e444, i8* %BRANCH_TAKEN, i64 202, i64 6, i64 6)
  store %struct.Memory* %call_43e444, %struct.Memory** %MEMORY

  %loadBr_43e444 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e444 = icmp eq i8 %loadBr_43e444, 1
  br i1 %cmpBr_43e444, label %block_.L_43e50e, label %block_43e44a

block_43e44a:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e44a	 Bytes: 4
  %loadMem_43e44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e44a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e44a)
  store %struct.Memory* %call_43e44a, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e44e	 Bytes: 4
  %loadMem_43e44e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e44e = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e44e)
  store %struct.Memory* %call_43e44e, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e452	 Bytes: 4
  %loadMem_43e452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e452 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e452)
  store %struct.Memory* %call_43e452, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 43e456	 Bytes: 3
  %loadMem_43e456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e456 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e456)
  store %struct.Memory* %call_43e456, %struct.Memory** %MEMORY

  ; Code: je .L_43e50e	 RIP: 43e459	 Bytes: 6
  %loadMem_43e459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e459 = call %struct.Memory* @routine_je_.L_43e50e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e459, i8* %BRANCH_TAKEN, i64 181, i64 6, i64 6)
  store %struct.Memory* %call_43e459, %struct.Memory** %MEMORY

  %loadBr_43e459 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e459 = icmp eq i8 %loadBr_43e459, 1
  br i1 %cmpBr_43e459, label %block_.L_43e50e, label %block_43e45f

block_43e45f:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e45f	 Bytes: 4
  %loadMem_43e45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e45f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e45f)
  store %struct.Memory* %call_43e45f, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e463	 Bytes: 4
  %loadMem_43e463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e463 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e463)
  store %struct.Memory* %call_43e463, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e467	 Bytes: 4
  %loadMem_43e467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e467 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e467)
  store %struct.Memory* %call_43e467, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 43e46b	 Bytes: 3
  %loadMem_43e46b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e46b = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e46b)
  store %struct.Memory* %call_43e46b, %struct.Memory** %MEMORY

  ; Code: je .L_43e50e	 RIP: 43e46e	 Bytes: 6
  %loadMem_43e46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e46e = call %struct.Memory* @routine_je_.L_43e50e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e46e, i8* %BRANCH_TAKEN, i64 160, i64 6, i64 6)
  store %struct.Memory* %call_43e46e, %struct.Memory** %MEMORY

  %loadBr_43e46e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e46e = icmp eq i8 %loadBr_43e46e, 1
  br i1 %cmpBr_43e46e, label %block_.L_43e50e, label %block_43e474

block_43e474:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e474	 Bytes: 4
  %loadMem_43e474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e474 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e474)
  store %struct.Memory* %call_43e474, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e478	 Bytes: 4
  %loadMem_43e478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e478 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e478)
  store %struct.Memory* %call_43e478, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e47c	 Bytes: 4
  %loadMem_43e47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e47c = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e47c)
  store %struct.Memory* %call_43e47c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 43e480	 Bytes: 3
  %loadMem_43e480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e480 = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e480)
  store %struct.Memory* %call_43e480, %struct.Memory** %MEMORY

  ; Code: je .L_43e50e	 RIP: 43e483	 Bytes: 6
  %loadMem_43e483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e483 = call %struct.Memory* @routine_je_.L_43e50e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e483, i8* %BRANCH_TAKEN, i64 139, i64 6, i64 6)
  store %struct.Memory* %call_43e483, %struct.Memory** %MEMORY

  %loadBr_43e483 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e483 = icmp eq i8 %loadBr_43e483, 1
  br i1 %cmpBr_43e483, label %block_.L_43e50e, label %block_43e489

block_43e489:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 43e489	 Bytes: 4
  %loadMem_43e489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e489 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e489)
  store %struct.Memory* %call_43e489, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e48d	 Bytes: 4
  %loadMem_43e48d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e48d = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e48d)
  store %struct.Memory* %call_43e48d, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e491	 Bytes: 4
  %loadMem_43e491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e491 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e491)
  store %struct.Memory* %call_43e491, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 43e495	 Bytes: 3
  %loadMem_43e495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e495 = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e495)
  store %struct.Memory* %call_43e495, %struct.Memory** %MEMORY

  ; Code: je .L_43e50e	 RIP: 43e498	 Bytes: 6
  %loadMem_43e498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e498 = call %struct.Memory* @routine_je_.L_43e50e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e498, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_43e498, %struct.Memory** %MEMORY

  %loadBr_43e498 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e498 = icmp eq i8 %loadBr_43e498, 1
  br i1 %cmpBr_43e498, label %block_.L_43e50e, label %block_43e49e

block_43e49e:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 43e49e	 Bytes: 4
  %loadMem_43e49e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e49e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e49e)
  store %struct.Memory* %call_43e49e, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e4a2	 Bytes: 4
  %loadMem_43e4a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4a2 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4a2)
  store %struct.Memory* %call_43e4a2, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e4a6	 Bytes: 4
  %loadMem_43e4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4a6 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4a6)
  store %struct.Memory* %call_43e4a6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 43e4aa	 Bytes: 3
  %loadMem_43e4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4aa = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4aa)
  store %struct.Memory* %call_43e4aa, %struct.Memory** %MEMORY

  ; Code: je .L_43e50e	 RIP: 43e4ad	 Bytes: 6
  %loadMem_43e4ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4ad = call %struct.Memory* @routine_je_.L_43e50e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4ad, i8* %BRANCH_TAKEN, i64 97, i64 6, i64 6)
  store %struct.Memory* %call_43e4ad, %struct.Memory** %MEMORY

  %loadBr_43e4ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e4ad = icmp eq i8 %loadBr_43e4ad, 1
  br i1 %cmpBr_43e4ad, label %block_.L_43e50e, label %block_43e4b3

block_43e4b3:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 43e4b3	 Bytes: 4
  %loadMem_43e4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4b3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4b3)
  store %struct.Memory* %call_43e4b3, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e4b7	 Bytes: 4
  %loadMem_43e4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4b7 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4b7)
  store %struct.Memory* %call_43e4b7, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e4bb	 Bytes: 4
  %loadMem_43e4bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4bb = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4bb)
  store %struct.Memory* %call_43e4bb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 43e4bf	 Bytes: 3
  %loadMem_43e4bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4bf = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4bf)
  store %struct.Memory* %call_43e4bf, %struct.Memory** %MEMORY

  ; Code: je .L_43e50e	 RIP: 43e4c2	 Bytes: 6
  %loadMem_43e4c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4c2 = call %struct.Memory* @routine_je_.L_43e50e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4c2, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_43e4c2, %struct.Memory** %MEMORY

  %loadBr_43e4c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e4c2 = icmp eq i8 %loadBr_43e4c2, 1
  br i1 %cmpBr_43e4c2, label %block_.L_43e50e, label %block_43e4c8

block_43e4c8:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 43e4c8	 Bytes: 4
  %loadMem_43e4c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4c8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4c8)
  store %struct.Memory* %call_43e4c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e4cc	 Bytes: 4
  %loadMem_43e4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4cc = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4cc)
  store %struct.Memory* %call_43e4cc, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e4d0	 Bytes: 4
  %loadMem_43e4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4d0 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4d0)
  store %struct.Memory* %call_43e4d0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 43e4d4	 Bytes: 3
  %loadMem_43e4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4d4 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4d4)
  store %struct.Memory* %call_43e4d4, %struct.Memory** %MEMORY

  ; Code: je .L_43e50e	 RIP: 43e4d7	 Bytes: 6
  %loadMem_43e4d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4d7 = call %struct.Memory* @routine_je_.L_43e50e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4d7, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_43e4d7, %struct.Memory** %MEMORY

  %loadBr_43e4d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e4d7 = icmp eq i8 %loadBr_43e4d7, 1
  br i1 %cmpBr_43e4d7, label %block_.L_43e50e, label %block_43e4dd

block_43e4dd:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 43e4dd	 Bytes: 4
  %loadMem_43e4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4dd = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4dd)
  store %struct.Memory* %call_43e4dd, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e4e1	 Bytes: 4
  %loadMem_43e4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4e1 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4e1)
  store %struct.Memory* %call_43e4e1, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e4e5	 Bytes: 4
  %loadMem_43e4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4e5 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4e5)
  store %struct.Memory* %call_43e4e5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 43e4e9	 Bytes: 3
  %loadMem_43e4e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4e9 = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4e9)
  store %struct.Memory* %call_43e4e9, %struct.Memory** %MEMORY

  ; Code: je .L_43e50e	 RIP: 43e4ec	 Bytes: 6
  %loadMem_43e4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4ec = call %struct.Memory* @routine_je_.L_43e50e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4ec, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_43e4ec, %struct.Memory** %MEMORY

  %loadBr_43e4ec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e4ec = icmp eq i8 %loadBr_43e4ec, 1
  br i1 %cmpBr_43e4ec, label %block_.L_43e50e, label %block_43e4f2

block_43e4f2:
  ; Code: movl -0x50(%rbp), %eax	 RIP: 43e4f2	 Bytes: 3
  %loadMem_43e4f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4f2 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4f2)
  store %struct.Memory* %call_43e4f2, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 43e4f5	 Bytes: 4
  %loadMem_43e4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4f5 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4f5)
  store %struct.Memory* %call_43e4f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rdx	 RIP: 43e4f9	 Bytes: 4
  %loadMem_43e4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4f9 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4f9)
  store %struct.Memory* %call_43e4f9, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 43e4fd	 Bytes: 3
  %loadMem_43e4fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e4fd = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e4fd)
  store %struct.Memory* %call_43e4fd, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %eax	 RIP: 43e500	 Bytes: 3
  %loadMem_43e500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e500 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e500)
  store %struct.Memory* %call_43e500, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43e503	 Bytes: 3
  %loadMem_43e503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e503 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e503)
  store %struct.Memory* %call_43e503, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 43e506	 Bytes: 3
  %loadMem_43e506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e506 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e506)
  store %struct.Memory* %call_43e506, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43e61d	 RIP: 43e509	 Bytes: 5
  %loadMem_43e509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e509 = call %struct.Memory* @routine_jmpq_.L_43e61d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e509, i64 276, i64 5)
  store %struct.Memory* %call_43e509, %struct.Memory** %MEMORY

  br label %block_.L_43e61d

  ; Code: .L_43e50e:	 RIP: 43e50e	 Bytes: 0
block_.L_43e50e:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e50e	 Bytes: 4
  %loadMem_43e50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e50e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e50e)
  store %struct.Memory* %call_43e50e, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e512	 Bytes: 4
  %loadMem_43e512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e512 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e512)
  store %struct.Memory* %call_43e512, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e516	 Bytes: 4
  %loadMem_43e516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e516 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e516)
  store %struct.Memory* %call_43e516, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 43e51a	 Bytes: 3
  %loadMem_43e51a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e51a = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e51a)
  store %struct.Memory* %call_43e51a, %struct.Memory** %MEMORY

  ; Code: je .L_43e577	 RIP: 43e51d	 Bytes: 6
  %loadMem_43e51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e51d = call %struct.Memory* @routine_je_.L_43e577(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e51d, i8* %BRANCH_TAKEN, i64 90, i64 6, i64 6)
  store %struct.Memory* %call_43e51d, %struct.Memory** %MEMORY

  %loadBr_43e51d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e51d = icmp eq i8 %loadBr_43e51d, 1
  br i1 %cmpBr_43e51d, label %block_.L_43e577, label %block_43e523

block_43e523:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e523	 Bytes: 4
  %loadMem_43e523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e523 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e523)
  store %struct.Memory* %call_43e523, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e527	 Bytes: 4
  %loadMem_43e527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e527 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e527)
  store %struct.Memory* %call_43e527, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e52b	 Bytes: 4
  %loadMem_43e52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e52b = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e52b)
  store %struct.Memory* %call_43e52b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 43e52f	 Bytes: 3
  %loadMem_43e52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e52f = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e52f)
  store %struct.Memory* %call_43e52f, %struct.Memory** %MEMORY

  ; Code: je .L_43e577	 RIP: 43e532	 Bytes: 6
  %loadMem_43e532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e532 = call %struct.Memory* @routine_je_.L_43e577(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e532, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_43e532, %struct.Memory** %MEMORY

  %loadBr_43e532 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e532 = icmp eq i8 %loadBr_43e532, 1
  br i1 %cmpBr_43e532, label %block_.L_43e577, label %block_43e538

block_43e538:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e538	 Bytes: 4
  %loadMem_43e538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e538 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e538)
  store %struct.Memory* %call_43e538, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e53c	 Bytes: 4
  %loadMem_43e53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e53c = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e53c)
  store %struct.Memory* %call_43e53c, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e540	 Bytes: 4
  %loadMem_43e540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e540 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e540)
  store %struct.Memory* %call_43e540, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 43e544	 Bytes: 3
  %loadMem_43e544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e544 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e544)
  store %struct.Memory* %call_43e544, %struct.Memory** %MEMORY

  ; Code: je .L_43e577	 RIP: 43e547	 Bytes: 6
  %loadMem_43e547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e547 = call %struct.Memory* @routine_je_.L_43e577(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e547, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_43e547, %struct.Memory** %MEMORY

  %loadBr_43e547 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e547 = icmp eq i8 %loadBr_43e547, 1
  br i1 %cmpBr_43e547, label %block_.L_43e577, label %block_43e54d

block_43e54d:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e54d	 Bytes: 4
  %loadMem_43e54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e54d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e54d)
  store %struct.Memory* %call_43e54d, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e551	 Bytes: 4
  %loadMem_43e551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e551 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e551)
  store %struct.Memory* %call_43e551, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e555	 Bytes: 4
  %loadMem_43e555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e555 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e555)
  store %struct.Memory* %call_43e555, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 43e559	 Bytes: 3
  %loadMem_43e559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e559 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e559)
  store %struct.Memory* %call_43e559, %struct.Memory** %MEMORY

  ; Code: je .L_43e577	 RIP: 43e55c	 Bytes: 6
  %loadMem_43e55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e55c = call %struct.Memory* @routine_je_.L_43e577(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e55c, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43e55c, %struct.Memory** %MEMORY

  %loadBr_43e55c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e55c = icmp eq i8 %loadBr_43e55c, 1
  br i1 %cmpBr_43e55c, label %block_.L_43e577, label %block_43e562

block_43e562:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 43e562	 Bytes: 4
  %loadMem_43e562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e562 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e562)
  store %struct.Memory* %call_43e562, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e566	 Bytes: 4
  %loadMem_43e566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e566 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e566)
  store %struct.Memory* %call_43e566, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e56a	 Bytes: 4
  %loadMem_43e56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e56a = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e56a)
  store %struct.Memory* %call_43e56a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 43e56e	 Bytes: 3
  %loadMem_43e56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e56e = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e56e)
  store %struct.Memory* %call_43e56e, %struct.Memory** %MEMORY

  ; Code: jne .L_43e593	 RIP: 43e571	 Bytes: 6
  %loadMem_43e571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e571 = call %struct.Memory* @routine_jne_.L_43e593(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e571, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_43e571, %struct.Memory** %MEMORY

  %loadBr_43e571 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e571 = icmp eq i8 %loadBr_43e571, 1
  br i1 %cmpBr_43e571, label %block_.L_43e593, label %block_.L_43e577

  ; Code: .L_43e577:	 RIP: 43e577	 Bytes: 0
block_.L_43e577:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 43e577	 Bytes: 3
  %loadMem_43e577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e577 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e577)
  store %struct.Memory* %call_43e577, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 43e57a	 Bytes: 4
  %loadMem_43e57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e57a = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e57a)
  store %struct.Memory* %call_43e57a, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 43e57e	 Bytes: 4
  %loadMem_43e57e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e57e = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e57e)
  store %struct.Memory* %call_43e57e, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 43e582	 Bytes: 3
  %loadMem_43e582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e582 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e582)
  store %struct.Memory* %call_43e582, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43e585	 Bytes: 3
  %loadMem_43e585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e585 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e585)
  store %struct.Memory* %call_43e585, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43e588	 Bytes: 3
  %loadMem_43e588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e588 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e588)
  store %struct.Memory* %call_43e588, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43e58b	 Bytes: 3
  %loadMem_43e58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e58b = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e58b)
  store %struct.Memory* %call_43e58b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43e618	 RIP: 43e58e	 Bytes: 5
  %loadMem_43e58e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e58e = call %struct.Memory* @routine_jmpq_.L_43e618(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e58e, i64 138, i64 5)
  store %struct.Memory* %call_43e58e, %struct.Memory** %MEMORY

  br label %block_.L_43e618

  ; Code: .L_43e593:	 RIP: 43e593	 Bytes: 0
block_.L_43e593:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 43e593	 Bytes: 4
  %loadMem_43e593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e593 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e593)
  store %struct.Memory* %call_43e593, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e597	 Bytes: 4
  %loadMem_43e597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e597 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e597)
  store %struct.Memory* %call_43e597, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e59b	 Bytes: 4
  %loadMem_43e59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e59b = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e59b)
  store %struct.Memory* %call_43e59b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 43e59f	 Bytes: 3
  %loadMem_43e59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e59f = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e59f)
  store %struct.Memory* %call_43e59f, %struct.Memory** %MEMORY

  ; Code: je .L_43e5fc	 RIP: 43e5a2	 Bytes: 6
  %loadMem_43e5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5a2 = call %struct.Memory* @routine_je_.L_43e5fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5a2, i8* %BRANCH_TAKEN, i64 90, i64 6, i64 6)
  store %struct.Memory* %call_43e5a2, %struct.Memory** %MEMORY

  %loadBr_43e5a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e5a2 = icmp eq i8 %loadBr_43e5a2, 1
  br i1 %cmpBr_43e5a2, label %block_.L_43e5fc, label %block_43e5a8

block_43e5a8:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 43e5a8	 Bytes: 4
  %loadMem_43e5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5a8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5a8)
  store %struct.Memory* %call_43e5a8, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e5ac	 Bytes: 4
  %loadMem_43e5ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5ac = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5ac)
  store %struct.Memory* %call_43e5ac, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e5b0	 Bytes: 4
  %loadMem_43e5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5b0 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5b0)
  store %struct.Memory* %call_43e5b0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 43e5b4	 Bytes: 3
  %loadMem_43e5b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5b4 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5b4)
  store %struct.Memory* %call_43e5b4, %struct.Memory** %MEMORY

  ; Code: je .L_43e5fc	 RIP: 43e5b7	 Bytes: 6
  %loadMem_43e5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5b7 = call %struct.Memory* @routine_je_.L_43e5fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5b7, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_43e5b7, %struct.Memory** %MEMORY

  %loadBr_43e5b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e5b7 = icmp eq i8 %loadBr_43e5b7, 1
  br i1 %cmpBr_43e5b7, label %block_.L_43e5fc, label %block_43e5bd

block_43e5bd:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 43e5bd	 Bytes: 4
  %loadMem_43e5bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5bd = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5bd)
  store %struct.Memory* %call_43e5bd, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e5c1	 Bytes: 4
  %loadMem_43e5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5c1 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5c1)
  store %struct.Memory* %call_43e5c1, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e5c5	 Bytes: 4
  %loadMem_43e5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5c5 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5c5)
  store %struct.Memory* %call_43e5c5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 43e5c9	 Bytes: 3
  %loadMem_43e5c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5c9 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5c9)
  store %struct.Memory* %call_43e5c9, %struct.Memory** %MEMORY

  ; Code: je .L_43e5fc	 RIP: 43e5cc	 Bytes: 6
  %loadMem_43e5cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5cc = call %struct.Memory* @routine_je_.L_43e5fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5cc, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_43e5cc, %struct.Memory** %MEMORY

  %loadBr_43e5cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e5cc = icmp eq i8 %loadBr_43e5cc, 1
  br i1 %cmpBr_43e5cc, label %block_.L_43e5fc, label %block_43e5d2

block_43e5d2:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 43e5d2	 Bytes: 4
  %loadMem_43e5d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5d2 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5d2)
  store %struct.Memory* %call_43e5d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e5d6	 Bytes: 4
  %loadMem_43e5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5d6 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5d6)
  store %struct.Memory* %call_43e5d6, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e5da	 Bytes: 4
  %loadMem_43e5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5da = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5da)
  store %struct.Memory* %call_43e5da, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 43e5de	 Bytes: 3
  %loadMem_43e5de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5de = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5de)
  store %struct.Memory* %call_43e5de, %struct.Memory** %MEMORY

  ; Code: je .L_43e5fc	 RIP: 43e5e1	 Bytes: 6
  %loadMem_43e5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5e1 = call %struct.Memory* @routine_je_.L_43e5fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5e1, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43e5e1, %struct.Memory** %MEMORY

  %loadBr_43e5e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e5e1 = icmp eq i8 %loadBr_43e5e1, 1
  br i1 %cmpBr_43e5e1, label %block_.L_43e5fc, label %block_43e5e7

block_43e5e7:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 43e5e7	 Bytes: 4
  %loadMem_43e5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5e7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5e7)
  store %struct.Memory* %call_43e5e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 43e5eb	 Bytes: 4
  %loadMem_43e5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5eb = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5eb)
  store %struct.Memory* %call_43e5eb, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 43e5ef	 Bytes: 4
  %loadMem_43e5ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5ef = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5ef)
  store %struct.Memory* %call_43e5ef, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 43e5f3	 Bytes: 3
  %loadMem_43e5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5f3 = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5f3)
  store %struct.Memory* %call_43e5f3, %struct.Memory** %MEMORY

  ; Code: jne .L_43e613	 RIP: 43e5f6	 Bytes: 6
  %loadMem_43e5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5f6 = call %struct.Memory* @routine_jne_.L_43e613(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5f6, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_43e5f6, %struct.Memory** %MEMORY

  %loadBr_43e5f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e5f6 = icmp eq i8 %loadBr_43e5f6, 1
  br i1 %cmpBr_43e5f6, label %block_.L_43e613, label %block_.L_43e5fc

  ; Code: .L_43e5fc:	 RIP: 43e5fc	 Bytes: 0
block_.L_43e5fc:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 43e5fc	 Bytes: 3
  %loadMem_43e5fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5fc = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5fc)
  store %struct.Memory* %call_43e5fc, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 43e5ff	 Bytes: 4
  %loadMem_43e5ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e5ff = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e5ff)
  store %struct.Memory* %call_43e5ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rdx	 RIP: 43e603	 Bytes: 4
  %loadMem_43e603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e603 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e603)
  store %struct.Memory* %call_43e603, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 43e607	 Bytes: 3
  %loadMem_43e607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e607 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e607)
  store %struct.Memory* %call_43e607, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43e60a	 Bytes: 3
  %loadMem_43e60a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e60a = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e60a)
  store %struct.Memory* %call_43e60a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43e60d	 Bytes: 3
  %loadMem_43e60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e60d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e60d)
  store %struct.Memory* %call_43e60d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 43e610	 Bytes: 3
  %loadMem_43e610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e610 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e610)
  store %struct.Memory* %call_43e610, %struct.Memory** %MEMORY

  ; Code: .L_43e613:	 RIP: 43e613	 Bytes: 0
  br label %block_.L_43e613
block_.L_43e613:

  ; Code: jmpq .L_43e618	 RIP: 43e613	 Bytes: 5
  %loadMem_43e613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e613 = call %struct.Memory* @routine_jmpq_.L_43e618(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e613, i64 5, i64 5)
  store %struct.Memory* %call_43e613, %struct.Memory** %MEMORY

  br label %block_.L_43e618

  ; Code: .L_43e618:	 RIP: 43e618	 Bytes: 0
block_.L_43e618:

  ; Code: jmpq .L_43e61d	 RIP: 43e618	 Bytes: 5
  %loadMem_43e618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e618 = call %struct.Memory* @routine_jmpq_.L_43e61d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e618, i64 5, i64 5)
  store %struct.Memory* %call_43e618, %struct.Memory** %MEMORY

  br label %block_.L_43e61d

  ; Code: .L_43e61d:	 RIP: 43e61d	 Bytes: 0
block_.L_43e61d:

  ; Code: jmpq .L_43e622	 RIP: 43e61d	 Bytes: 5
  %loadMem_43e61d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e61d = call %struct.Memory* @routine_jmpq_.L_43e622(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e61d, i64 5, i64 5)
  store %struct.Memory* %call_43e61d, %struct.Memory** %MEMORY

  br label %block_.L_43e622

  ; Code: .L_43e622:	 RIP: 43e622	 Bytes: 0
block_.L_43e622:

  ; Code: jmpq .L_43e627	 RIP: 43e622	 Bytes: 5
  %loadMem_43e622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e622 = call %struct.Memory* @routine_jmpq_.L_43e627(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e622, i64 5, i64 5)
  store %struct.Memory* %call_43e622, %struct.Memory** %MEMORY

  br label %block_.L_43e627

  ; Code: .L_43e627:	 RIP: 43e627	 Bytes: 0
block_.L_43e627:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 43e627	 Bytes: 3
  %loadMem_43e627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e627 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e627)
  store %struct.Memory* %call_43e627, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43e62a	 Bytes: 3
  %loadMem_43e62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e62a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e62a)
  store %struct.Memory* %call_43e62a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 43e62d	 Bytes: 3
  %loadMem_43e62d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e62d = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e62d)
  store %struct.Memory* %call_43e62d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43e33d	 RIP: 43e630	 Bytes: 5
  %loadMem_43e630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e630 = call %struct.Memory* @routine_jmpq_.L_43e33d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e630, i64 -755, i64 5)
  store %struct.Memory* %call_43e630, %struct.Memory** %MEMORY

  br label %block_.L_43e33d

  ; Code: .L_43e635:	 RIP: 43e635	 Bytes: 0
block_.L_43e635:

  ; Code: jmpq .L_43e63a	 RIP: 43e635	 Bytes: 5
  %loadMem_43e635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e635 = call %struct.Memory* @routine_jmpq_.L_43e63a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e635, i64 5, i64 5)
  store %struct.Memory* %call_43e635, %struct.Memory** %MEMORY

  br label %block_.L_43e63a

  ; Code: .L_43e63a:	 RIP: 43e63a	 Bytes: 0
block_.L_43e63a:

  ; Code: cmpl $0x1, -0x44(%rbp)	 RIP: 43e63a	 Bytes: 4
  %loadMem_43e63a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e63a = call %struct.Memory* @routine_cmpl__0x1__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e63a)
  store %struct.Memory* %call_43e63a, %struct.Memory** %MEMORY

  ; Code: jle .L_43e76f	 RIP: 43e63e	 Bytes: 6
  %loadMem_43e63e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e63e = call %struct.Memory* @routine_jle_.L_43e76f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e63e, i8* %BRANCH_TAKEN, i64 305, i64 6, i64 6)
  store %struct.Memory* %call_43e63e, %struct.Memory** %MEMORY

  %loadBr_43e63e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e63e = icmp eq i8 %loadBr_43e63e, 1
  br i1 %cmpBr_43e63e, label %block_.L_43e76f, label %block_43e644

block_43e644:
  ; Code: callq .sre_random	 RIP: 43e644	 Bytes: 5
  %loadMem1_43e644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e644 = call %struct.Memory* @routine_callq_.sre_random(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e644, i64 28092, i64 5, i64 5)
  store %struct.Memory* %call1_43e644, %struct.Memory** %MEMORY

  %loadMem2_43e644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e644 = load i64, i64* %3
  %call2_43e644 = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64  %loadPC_43e644, %struct.Memory* %loadMem2_43e644)
  store %struct.Memory* %call2_43e644, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x44(%rbp), %xmm1	 RIP: 43e649	 Bytes: 5
  %loadMem_43e649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e649 = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x44__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e649)
  store %struct.Memory* %call_43e649, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 43e64e	 Bytes: 4
  %loadMem_43e64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e64e = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e64e)
  store %struct.Memory* %call_43e64e, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %eax	 RIP: 43e652	 Bytes: 4
  %loadMem_43e652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e652 = call %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e652)
  store %struct.Memory* %call_43e652, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 43e656	 Bytes: 3
  %loadMem_43e656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e656 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e656)
  store %struct.Memory* %call_43e656, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43e659	 Bytes: 4
  %loadMem_43e659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e659 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e659)
  store %struct.Memory* %call_43e659, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 43e65d	 Bytes: 4
  %loadMem_43e65d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e65d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e65d)
  store %struct.Memory* %call_43e65d, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rsi	 RIP: 43e661	 Bytes: 4
  %loadMem_43e661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e661 = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e661)
  store %struct.Memory* %call_43e661, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e665	 Bytes: 4
  %loadMem_43e665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e665 = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e665)
  store %struct.Memory* %call_43e665, %struct.Memory** %MEMORY

  ; Code: movb (%rcx,%rdx,1), %dil	 RIP: 43e669	 Bytes: 4
  %loadMem_43e669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e669 = call %struct.Memory* @routine_movb___rcx__rdx_1____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e669)
  store %struct.Memory* %call_43e669, %struct.Memory** %MEMORY

  ; Code: movb %dil, -0x59(%rbp)	 RIP: 43e66d	 Bytes: 4
  %loadMem_43e66d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e66d = call %struct.Memory* @routine_movb__dil__MINUS0x59__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e66d)
  store %struct.Memory* %call_43e66d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43e671	 Bytes: 4
  %loadMem_43e671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e671 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e671)
  store %struct.Memory* %call_43e671, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 43e675	 Bytes: 4
  %loadMem_43e675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e675 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e675)
  store %struct.Memory* %call_43e675, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rsi	 RIP: 43e679	 Bytes: 4
  %loadMem_43e679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e679 = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e679)
  store %struct.Memory* %call_43e679, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e67d	 Bytes: 4
  %loadMem_43e67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e67d = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e67d)
  store %struct.Memory* %call_43e67d, %struct.Memory** %MEMORY

  ; Code: movb (%rcx,%rdx,1), %dil	 RIP: 43e681	 Bytes: 4
  %loadMem_43e681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e681 = call %struct.Memory* @routine_movb___rcx__rdx_1____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e681)
  store %struct.Memory* %call_43e681, %struct.Memory** %MEMORY

  ; Code: movb %dil, -0x5a(%rbp)	 RIP: 43e685	 Bytes: 4
  %loadMem_43e685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e685 = call %struct.Memory* @routine_movb__dil__MINUS0x5a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e685)
  store %struct.Memory* %call_43e685, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 43e689	 Bytes: 4
  %loadMem_43e689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e689 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e689)
  store %struct.Memory* %call_43e689, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rdx	 RIP: 43e68d	 Bytes: 4
  %loadMem_43e68d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e68d = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e68d)
  store %struct.Memory* %call_43e68d, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 43e691	 Bytes: 3
  %loadMem_43e691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e691 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e691)
  store %struct.Memory* %call_43e691, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 43e694	 Bytes: 3
  %loadMem_43e694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e694 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e694)
  store %struct.Memory* %call_43e694, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43e697	 Bytes: 4
  %loadMem_43e697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e697 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e697)
  store %struct.Memory* %call_43e697, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 43e69b	 Bytes: 4
  %loadMem_43e69b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e69b = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e69b)
  store %struct.Memory* %call_43e69b, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %eax	 RIP: 43e69f	 Bytes: 3
  %loadMem_43e69f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e69f = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e69f)
  store %struct.Memory* %call_43e69f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e6a2	 Bytes: 3
  %loadMem_43e6a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6a2 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6a2)
  store %struct.Memory* %call_43e6a2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43e6a5	 Bytes: 3
  %loadMem_43e6a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6a5 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6a5)
  store %struct.Memory* %call_43e6a5, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e6a8	 Bytes: 4
  %loadMem_43e6a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6a8 = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6a8)
  store %struct.Memory* %call_43e6a8, %struct.Memory** %MEMORY

  ; Code: movb (%rcx,%rdx,1), %dil	 RIP: 43e6ac	 Bytes: 4
  %loadMem_43e6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6ac = call %struct.Memory* @routine_movb___rcx__rdx_1____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6ac)
  store %struct.Memory* %call_43e6ac, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43e6b0	 Bytes: 4
  %loadMem_43e6b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6b0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6b0)
  store %struct.Memory* %call_43e6b0, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 43e6b4	 Bytes: 4
  %loadMem_43e6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6b4 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6b4)
  store %struct.Memory* %call_43e6b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rsi	 RIP: 43e6b8	 Bytes: 4
  %loadMem_43e6b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6b8 = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6b8)
  store %struct.Memory* %call_43e6b8, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e6bc	 Bytes: 4
  %loadMem_43e6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6bc = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6bc)
  store %struct.Memory* %call_43e6bc, %struct.Memory** %MEMORY

  ; Code: movb %dil, (%rcx,%rdx,1)	 RIP: 43e6c0	 Bytes: 4
  %loadMem_43e6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6c0 = call %struct.Memory* @routine_movb__dil____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6c0)
  store %struct.Memory* %call_43e6c0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43e6c4	 Bytes: 4
  %loadMem_43e6c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6c4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6c4)
  store %struct.Memory* %call_43e6c4, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 43e6c8	 Bytes: 4
  %loadMem_43e6c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6c8 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6c8)
  store %struct.Memory* %call_43e6c8, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %eax	 RIP: 43e6cc	 Bytes: 3
  %loadMem_43e6cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6cc = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6cc)
  store %struct.Memory* %call_43e6cc, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e6cf	 Bytes: 3
  %loadMem_43e6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6cf = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6cf)
  store %struct.Memory* %call_43e6cf, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43e6d2	 Bytes: 3
  %loadMem_43e6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6d2 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6d2)
  store %struct.Memory* %call_43e6d2, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e6d5	 Bytes: 4
  %loadMem_43e6d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6d5 = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6d5)
  store %struct.Memory* %call_43e6d5, %struct.Memory** %MEMORY

  ; Code: movb (%rcx,%rdx,1), %dil	 RIP: 43e6d9	 Bytes: 4
  %loadMem_43e6d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6d9 = call %struct.Memory* @routine_movb___rcx__rdx_1____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6d9)
  store %struct.Memory* %call_43e6d9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43e6dd	 Bytes: 4
  %loadMem_43e6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6dd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6dd)
  store %struct.Memory* %call_43e6dd, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 43e6e1	 Bytes: 4
  %loadMem_43e6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6e1 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6e1)
  store %struct.Memory* %call_43e6e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rsi	 RIP: 43e6e5	 Bytes: 4
  %loadMem_43e6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6e5 = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6e5)
  store %struct.Memory* %call_43e6e5, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e6e9	 Bytes: 4
  %loadMem_43e6e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6e9 = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6e9)
  store %struct.Memory* %call_43e6e9, %struct.Memory** %MEMORY

  ; Code: movb %dil, (%rcx,%rdx,1)	 RIP: 43e6ed	 Bytes: 4
  %loadMem_43e6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6ed = call %struct.Memory* @routine_movb__dil____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6ed)
  store %struct.Memory* %call_43e6ed, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 43e6f1	 Bytes: 4
  %loadMem_43e6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6f1 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6f1)
  store %struct.Memory* %call_43e6f1, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %eax	 RIP: 43e6f5	 Bytes: 3
  %loadMem_43e6f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6f5 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6f5)
  store %struct.Memory* %call_43e6f5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e6f8	 Bytes: 3
  %loadMem_43e6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6f8 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6f8)
  store %struct.Memory* %call_43e6f8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 43e6fb	 Bytes: 3
  %loadMem_43e6fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6fb = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6fb)
  store %struct.Memory* %call_43e6fb, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 43e6fe	 Bytes: 3
  %loadMem_43e6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e6fe = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e6fe)
  store %struct.Memory* %call_43e6fe, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 43e701	 Bytes: 4
  %loadMem_43e701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e701 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e701)
  store %struct.Memory* %call_43e701, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rdx	 RIP: 43e705	 Bytes: 4
  %loadMem_43e705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e705 = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e705)
  store %struct.Memory* %call_43e705, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 43e709	 Bytes: 3
  %loadMem_43e709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e709 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e709)
  store %struct.Memory* %call_43e709, %struct.Memory** %MEMORY

  ; Code: movb -0x59(%rbp), %dil	 RIP: 43e70c	 Bytes: 4
  %loadMem_43e70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e70c = call %struct.Memory* @routine_movb_MINUS0x59__rbp____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e70c)
  store %struct.Memory* %call_43e70c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43e710	 Bytes: 4
  %loadMem_43e710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e710 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e710)
  store %struct.Memory* %call_43e710, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 43e714	 Bytes: 4
  %loadMem_43e714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e714 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e714)
  store %struct.Memory* %call_43e714, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %eax	 RIP: 43e718	 Bytes: 3
  %loadMem_43e718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e718 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e718)
  store %struct.Memory* %call_43e718, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e71b	 Bytes: 3
  %loadMem_43e71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e71b = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e71b)
  store %struct.Memory* %call_43e71b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43e71e	 Bytes: 3
  %loadMem_43e71e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e71e = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e71e)
  store %struct.Memory* %call_43e71e, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e721	 Bytes: 4
  %loadMem_43e721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e721 = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e721)
  store %struct.Memory* %call_43e721, %struct.Memory** %MEMORY

  ; Code: movb %dil, (%rcx,%rdx,1)	 RIP: 43e725	 Bytes: 4
  %loadMem_43e725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e725 = call %struct.Memory* @routine_movb__dil____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e725)
  store %struct.Memory* %call_43e725, %struct.Memory** %MEMORY

  ; Code: movb -0x5a(%rbp), %dil	 RIP: 43e729	 Bytes: 4
  %loadMem_43e729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e729 = call %struct.Memory* @routine_movb_MINUS0x5a__rbp____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e729)
  store %struct.Memory* %call_43e729, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43e72d	 Bytes: 4
  %loadMem_43e72d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e72d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e72d)
  store %struct.Memory* %call_43e72d, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 43e731	 Bytes: 4
  %loadMem_43e731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e731 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e731)
  store %struct.Memory* %call_43e731, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %eax	 RIP: 43e735	 Bytes: 3
  %loadMem_43e735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e735 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e735)
  store %struct.Memory* %call_43e735, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e738	 Bytes: 3
  %loadMem_43e738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e738 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e738)
  store %struct.Memory* %call_43e738, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43e73b	 Bytes: 3
  %loadMem_43e73b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e73b = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e73b)
  store %struct.Memory* %call_43e73b, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e73e	 Bytes: 4
  %loadMem_43e73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e73e = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e73e)
  store %struct.Memory* %call_43e73e, %struct.Memory** %MEMORY

  ; Code: movb %dil, (%rcx,%rdx,1)	 RIP: 43e742	 Bytes: 4
  %loadMem_43e742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e742 = call %struct.Memory* @routine_movb__dil____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e742)
  store %struct.Memory* %call_43e742, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 43e746	 Bytes: 4
  %loadMem_43e746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e746 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e746)
  store %struct.Memory* %call_43e746, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %eax	 RIP: 43e74a	 Bytes: 3
  %loadMem_43e74a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e74a = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e74a)
  store %struct.Memory* %call_43e74a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e74d	 Bytes: 3
  %loadMem_43e74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e74d = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e74d)
  store %struct.Memory* %call_43e74d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 43e750	 Bytes: 3
  %loadMem_43e750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e750 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e750)
  store %struct.Memory* %call_43e750, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 43e753	 Bytes: 3
  %loadMem_43e753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e753 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e753)
  store %struct.Memory* %call_43e753, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 43e756	 Bytes: 4
  %loadMem_43e756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e756 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e756)
  store %struct.Memory* %call_43e756, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rdx	 RIP: 43e75a	 Bytes: 4
  %loadMem_43e75a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e75a = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e75a)
  store %struct.Memory* %call_43e75a, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 43e75e	 Bytes: 3
  %loadMem_43e75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e75e = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e75e)
  store %struct.Memory* %call_43e75e, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %eax	 RIP: 43e761	 Bytes: 3
  %loadMem_43e761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e761 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e761)
  store %struct.Memory* %call_43e761, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 43e764	 Bytes: 3
  %loadMem_43e764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e764 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e764)
  store %struct.Memory* %call_43e764, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 43e767	 Bytes: 3
  %loadMem_43e767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e767 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e767)
  store %struct.Memory* %call_43e767, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43e63a	 RIP: 43e76a	 Bytes: 5
  %loadMem_43e76a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e76a = call %struct.Memory* @routine_jmpq_.L_43e63a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e76a, i64 -304, i64 5)
  store %struct.Memory* %call_43e76a, %struct.Memory** %MEMORY

  br label %block_.L_43e63a

  ; Code: .L_43e76f:	 RIP: 43e76f	 Bytes: 0
block_.L_43e76f:

  ; Code: jmpq .L_43e774	 RIP: 43e76f	 Bytes: 5
  %loadMem_43e76f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e76f = call %struct.Memory* @routine_jmpq_.L_43e774(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e76f, i64 5, i64 5)
  store %struct.Memory* %call_43e76f, %struct.Memory** %MEMORY

  br label %block_.L_43e774

  ; Code: .L_43e774:	 RIP: 43e774	 Bytes: 0
block_.L_43e774:

  ; Code: cmpl $0x1, -0x48(%rbp)	 RIP: 43e774	 Bytes: 4
  %loadMem_43e774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e774 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e774)
  store %struct.Memory* %call_43e774, %struct.Memory** %MEMORY

  ; Code: jle .L_43e8a3	 RIP: 43e778	 Bytes: 6
  %loadMem_43e778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e778 = call %struct.Memory* @routine_jle_.L_43e8a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e778, i8* %BRANCH_TAKEN, i64 299, i64 6, i64 6)
  store %struct.Memory* %call_43e778, %struct.Memory** %MEMORY

  %loadBr_43e778 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e778 = icmp eq i8 %loadBr_43e778, 1
  br i1 %cmpBr_43e778, label %block_.L_43e8a3, label %block_43e77e

block_43e77e:
  ; Code: callq .sre_random	 RIP: 43e77e	 Bytes: 5
  %loadMem1_43e77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e77e = call %struct.Memory* @routine_callq_.sre_random(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e77e, i64 27778, i64 5, i64 5)
  store %struct.Memory* %call1_43e77e, %struct.Memory** %MEMORY

  %loadMem2_43e77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e77e = load i64, i64* %3
  %call2_43e77e = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64  %loadPC_43e77e, %struct.Memory* %loadMem2_43e77e)
  store %struct.Memory* %call2_43e77e, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x48(%rbp), %xmm1	 RIP: 43e783	 Bytes: 5
  %loadMem_43e783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e783 = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e783)
  store %struct.Memory* %call_43e783, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 43e788	 Bytes: 4
  %loadMem_43e788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e788 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e788)
  store %struct.Memory* %call_43e788, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %eax	 RIP: 43e78c	 Bytes: 4
  %loadMem_43e78c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e78c = call %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e78c)
  store %struct.Memory* %call_43e78c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 43e790	 Bytes: 3
  %loadMem_43e790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e790 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e790)
  store %struct.Memory* %call_43e790, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43e793	 Bytes: 4
  %loadMem_43e793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e793 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e793)
  store %struct.Memory* %call_43e793, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 43e797	 Bytes: 4
  %loadMem_43e797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e797 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e797)
  store %struct.Memory* %call_43e797, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rsi	 RIP: 43e79b	 Bytes: 4
  %loadMem_43e79b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e79b = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e79b)
  store %struct.Memory* %call_43e79b, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e79f	 Bytes: 4
  %loadMem_43e79f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e79f = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e79f)
  store %struct.Memory* %call_43e79f, %struct.Memory** %MEMORY

  ; Code: movb (%rcx,%rdx,1), %dil	 RIP: 43e7a3	 Bytes: 4
  %loadMem_43e7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7a3 = call %struct.Memory* @routine_movb___rcx__rdx_1____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7a3)
  store %struct.Memory* %call_43e7a3, %struct.Memory** %MEMORY

  ; Code: movb %dil, -0x59(%rbp)	 RIP: 43e7a7	 Bytes: 4
  %loadMem_43e7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7a7 = call %struct.Memory* @routine_movb__dil__MINUS0x59__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7a7)
  store %struct.Memory* %call_43e7a7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43e7ab	 Bytes: 4
  %loadMem_43e7ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7ab = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7ab)
  store %struct.Memory* %call_43e7ab, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 43e7af	 Bytes: 4
  %loadMem_43e7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7af = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7af)
  store %struct.Memory* %call_43e7af, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rsi	 RIP: 43e7b3	 Bytes: 4
  %loadMem_43e7b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7b3 = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7b3)
  store %struct.Memory* %call_43e7b3, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e7b7	 Bytes: 4
  %loadMem_43e7b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7b7 = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7b7)
  store %struct.Memory* %call_43e7b7, %struct.Memory** %MEMORY

  ; Code: movb (%rcx,%rdx,1), %dil	 RIP: 43e7bb	 Bytes: 4
  %loadMem_43e7bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7bb = call %struct.Memory* @routine_movb___rcx__rdx_1____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7bb)
  store %struct.Memory* %call_43e7bb, %struct.Memory** %MEMORY

  ; Code: movb %dil, -0x5a(%rbp)	 RIP: 43e7bf	 Bytes: 4
  %loadMem_43e7bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7bf = call %struct.Memory* @routine_movb__dil__MINUS0x5a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7bf)
  store %struct.Memory* %call_43e7bf, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 43e7c3	 Bytes: 4
  %loadMem_43e7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7c3 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7c3)
  store %struct.Memory* %call_43e7c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rdx	 RIP: 43e7c7	 Bytes: 4
  %loadMem_43e7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7c7 = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7c7)
  store %struct.Memory* %call_43e7c7, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 43e7cb	 Bytes: 3
  %loadMem_43e7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7cb = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7cb)
  store %struct.Memory* %call_43e7cb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 43e7ce	 Bytes: 3
  %loadMem_43e7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7ce = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7ce)
  store %struct.Memory* %call_43e7ce, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43e7d1	 Bytes: 4
  %loadMem_43e7d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7d1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7d1)
  store %struct.Memory* %call_43e7d1, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 43e7d5	 Bytes: 4
  %loadMem_43e7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7d5 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7d5)
  store %struct.Memory* %call_43e7d5, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43e7d9	 Bytes: 3
  %loadMem_43e7d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7d9 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7d9)
  store %struct.Memory* %call_43e7d9, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e7dc	 Bytes: 3
  %loadMem_43e7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7dc = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7dc)
  store %struct.Memory* %call_43e7dc, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43e7df	 Bytes: 3
  %loadMem_43e7df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7df = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7df)
  store %struct.Memory* %call_43e7df, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e7e2	 Bytes: 4
  %loadMem_43e7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7e2 = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7e2)
  store %struct.Memory* %call_43e7e2, %struct.Memory** %MEMORY

  ; Code: movb (%rcx,%rdx,1), %dil	 RIP: 43e7e6	 Bytes: 4
  %loadMem_43e7e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7e6 = call %struct.Memory* @routine_movb___rcx__rdx_1____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7e6)
  store %struct.Memory* %call_43e7e6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43e7ea	 Bytes: 4
  %loadMem_43e7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7ea = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7ea)
  store %struct.Memory* %call_43e7ea, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 43e7ee	 Bytes: 4
  %loadMem_43e7ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7ee = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7ee)
  store %struct.Memory* %call_43e7ee, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rsi	 RIP: 43e7f2	 Bytes: 4
  %loadMem_43e7f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7f2 = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7f2)
  store %struct.Memory* %call_43e7f2, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e7f6	 Bytes: 4
  %loadMem_43e7f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7f6 = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7f6)
  store %struct.Memory* %call_43e7f6, %struct.Memory** %MEMORY

  ; Code: movb %dil, (%rcx,%rdx,1)	 RIP: 43e7fa	 Bytes: 4
  %loadMem_43e7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7fa = call %struct.Memory* @routine_movb__dil____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7fa)
  store %struct.Memory* %call_43e7fa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43e7fe	 Bytes: 4
  %loadMem_43e7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e7fe = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e7fe)
  store %struct.Memory* %call_43e7fe, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 43e802	 Bytes: 4
  %loadMem_43e802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e802 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e802)
  store %struct.Memory* %call_43e802, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43e806	 Bytes: 3
  %loadMem_43e806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e806 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e806)
  store %struct.Memory* %call_43e806, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e809	 Bytes: 3
  %loadMem_43e809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e809 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e809)
  store %struct.Memory* %call_43e809, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43e80c	 Bytes: 3
  %loadMem_43e80c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e80c = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e80c)
  store %struct.Memory* %call_43e80c, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e80f	 Bytes: 4
  %loadMem_43e80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e80f = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e80f)
  store %struct.Memory* %call_43e80f, %struct.Memory** %MEMORY

  ; Code: movb (%rcx,%rdx,1), %dil	 RIP: 43e813	 Bytes: 4
  %loadMem_43e813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e813 = call %struct.Memory* @routine_movb___rcx__rdx_1____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e813)
  store %struct.Memory* %call_43e813, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43e817	 Bytes: 4
  %loadMem_43e817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e817 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e817)
  store %struct.Memory* %call_43e817, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 43e81b	 Bytes: 4
  %loadMem_43e81b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e81b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e81b)
  store %struct.Memory* %call_43e81b, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rsi	 RIP: 43e81f	 Bytes: 4
  %loadMem_43e81f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e81f = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e81f)
  store %struct.Memory* %call_43e81f, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e823	 Bytes: 4
  %loadMem_43e823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e823 = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e823)
  store %struct.Memory* %call_43e823, %struct.Memory** %MEMORY

  ; Code: movb %dil, (%rcx,%rdx,1)	 RIP: 43e827	 Bytes: 4
  %loadMem_43e827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e827 = call %struct.Memory* @routine_movb__dil____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e827)
  store %struct.Memory* %call_43e827, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 43e82b	 Bytes: 4
  %loadMem_43e82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e82b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e82b)
  store %struct.Memory* %call_43e82b, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43e82f	 Bytes: 3
  %loadMem_43e82f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e82f = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e82f)
  store %struct.Memory* %call_43e82f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e832	 Bytes: 3
  %loadMem_43e832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e832 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e832)
  store %struct.Memory* %call_43e832, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 43e835	 Bytes: 3
  %loadMem_43e835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e835 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e835)
  store %struct.Memory* %call_43e835, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 43e838	 Bytes: 3
  %loadMem_43e838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e838 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e838)
  store %struct.Memory* %call_43e838, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 43e83b	 Bytes: 4
  %loadMem_43e83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e83b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e83b)
  store %struct.Memory* %call_43e83b, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rdx	 RIP: 43e83f	 Bytes: 4
  %loadMem_43e83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e83f = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e83f)
  store %struct.Memory* %call_43e83f, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 43e843	 Bytes: 3
  %loadMem_43e843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e843 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e843)
  store %struct.Memory* %call_43e843, %struct.Memory** %MEMORY

  ; Code: movb -0x59(%rbp), %dil	 RIP: 43e846	 Bytes: 4
  %loadMem_43e846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e846 = call %struct.Memory* @routine_movb_MINUS0x59__rbp____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e846)
  store %struct.Memory* %call_43e846, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43e84a	 Bytes: 4
  %loadMem_43e84a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e84a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e84a)
  store %struct.Memory* %call_43e84a, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 43e84e	 Bytes: 4
  %loadMem_43e84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e84e = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e84e)
  store %struct.Memory* %call_43e84e, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43e852	 Bytes: 3
  %loadMem_43e852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e852 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e852)
  store %struct.Memory* %call_43e852, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e855	 Bytes: 3
  %loadMem_43e855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e855 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e855)
  store %struct.Memory* %call_43e855, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43e858	 Bytes: 3
  %loadMem_43e858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e858 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e858)
  store %struct.Memory* %call_43e858, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e85b	 Bytes: 4
  %loadMem_43e85b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e85b = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e85b)
  store %struct.Memory* %call_43e85b, %struct.Memory** %MEMORY

  ; Code: movb %dil, (%rcx,%rdx,1)	 RIP: 43e85f	 Bytes: 4
  %loadMem_43e85f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e85f = call %struct.Memory* @routine_movb__dil____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e85f)
  store %struct.Memory* %call_43e85f, %struct.Memory** %MEMORY

  ; Code: movb -0x5a(%rbp), %dil	 RIP: 43e863	 Bytes: 4
  %loadMem_43e863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e863 = call %struct.Memory* @routine_movb_MINUS0x5a__rbp____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e863)
  store %struct.Memory* %call_43e863, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43e867	 Bytes: 4
  %loadMem_43e867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e867 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e867)
  store %struct.Memory* %call_43e867, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 43e86b	 Bytes: 4
  %loadMem_43e86b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e86b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e86b)
  store %struct.Memory* %call_43e86b, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43e86f	 Bytes: 3
  %loadMem_43e86f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e86f = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e86f)
  store %struct.Memory* %call_43e86f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e872	 Bytes: 3
  %loadMem_43e872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e872 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e872)
  store %struct.Memory* %call_43e872, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43e875	 Bytes: 3
  %loadMem_43e875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e875 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e875)
  store %struct.Memory* %call_43e875, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e878	 Bytes: 4
  %loadMem_43e878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e878 = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e878)
  store %struct.Memory* %call_43e878, %struct.Memory** %MEMORY

  ; Code: movb %dil, (%rcx,%rdx,1)	 RIP: 43e87c	 Bytes: 4
  %loadMem_43e87c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e87c = call %struct.Memory* @routine_movb__dil____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e87c)
  store %struct.Memory* %call_43e87c, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %eax	 RIP: 43e880	 Bytes: 3
  %loadMem_43e880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e880 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e880)
  store %struct.Memory* %call_43e880, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 43e883	 Bytes: 4
  %loadMem_43e883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e883 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e883)
  store %struct.Memory* %call_43e883, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %r8d	 RIP: 43e887	 Bytes: 4
  %loadMem_43e887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e887 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e887)
  store %struct.Memory* %call_43e887, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %r8d	 RIP: 43e88b	 Bytes: 4
  %loadMem_43e88b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e88b = call %struct.Memory* @routine_subl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e88b)
  store %struct.Memory* %call_43e88b, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 43e88f	 Bytes: 3
  %loadMem_43e88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e88f = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e88f)
  store %struct.Memory* %call_43e88f, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 43e892	 Bytes: 3
  %loadMem_43e892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e892 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e892)
  store %struct.Memory* %call_43e892, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43e895	 Bytes: 3
  %loadMem_43e895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e895 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e895)
  store %struct.Memory* %call_43e895, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 43e898	 Bytes: 3
  %loadMem_43e898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e898 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e898)
  store %struct.Memory* %call_43e898, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 43e89b	 Bytes: 3
  %loadMem_43e89b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e89b = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e89b)
  store %struct.Memory* %call_43e89b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43e774	 RIP: 43e89e	 Bytes: 5
  %loadMem_43e89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e89e = call %struct.Memory* @routine_jmpq_.L_43e774(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e89e, i64 -298, i64 5)
  store %struct.Memory* %call_43e89e, %struct.Memory** %MEMORY

  br label %block_.L_43e774

  ; Code: .L_43e8a3:	 RIP: 43e8a3	 Bytes: 0
block_.L_43e8a3:

  ; Code: jmpq .L_43e8a8	 RIP: 43e8a3	 Bytes: 5
  %loadMem_43e8a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8a3 = call %struct.Memory* @routine_jmpq_.L_43e8a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8a3, i64 5, i64 5)
  store %struct.Memory* %call_43e8a3, %struct.Memory** %MEMORY

  br label %block_.L_43e8a8

  ; Code: .L_43e8a8:	 RIP: 43e8a8	 Bytes: 0
block_.L_43e8a8:

  ; Code: cmpl $0x1, -0x4c(%rbp)	 RIP: 43e8a8	 Bytes: 4
  %loadMem_43e8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8a8 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8a8)
  store %struct.Memory* %call_43e8a8, %struct.Memory** %MEMORY

  ; Code: jle .L_43e9d7	 RIP: 43e8ac	 Bytes: 6
  %loadMem_43e8ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8ac = call %struct.Memory* @routine_jle_.L_43e9d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8ac, i8* %BRANCH_TAKEN, i64 299, i64 6, i64 6)
  store %struct.Memory* %call_43e8ac, %struct.Memory** %MEMORY

  %loadBr_43e8ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e8ac = icmp eq i8 %loadBr_43e8ac, 1
  br i1 %cmpBr_43e8ac, label %block_.L_43e9d7, label %block_43e8b2

block_43e8b2:
  ; Code: callq .sre_random	 RIP: 43e8b2	 Bytes: 5
  %loadMem1_43e8b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e8b2 = call %struct.Memory* @routine_callq_.sre_random(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e8b2, i64 27470, i64 5, i64 5)
  store %struct.Memory* %call1_43e8b2, %struct.Memory** %MEMORY

  %loadMem2_43e8b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e8b2 = load i64, i64* %3
  %call2_43e8b2 = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64  %loadPC_43e8b2, %struct.Memory* %loadMem2_43e8b2)
  store %struct.Memory* %call2_43e8b2, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x4c(%rbp), %xmm1	 RIP: 43e8b7	 Bytes: 5
  %loadMem_43e8b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8b7 = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x4c__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8b7)
  store %struct.Memory* %call_43e8b7, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 43e8bc	 Bytes: 4
  %loadMem_43e8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8bc = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8bc)
  store %struct.Memory* %call_43e8bc, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %eax	 RIP: 43e8c0	 Bytes: 4
  %loadMem_43e8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8c0 = call %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8c0)
  store %struct.Memory* %call_43e8c0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 43e8c4	 Bytes: 3
  %loadMem_43e8c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8c4 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8c4)
  store %struct.Memory* %call_43e8c4, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43e8c7	 Bytes: 4
  %loadMem_43e8c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8c7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8c7)
  store %struct.Memory* %call_43e8c7, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 43e8cb	 Bytes: 4
  %loadMem_43e8cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8cb = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8cb)
  store %struct.Memory* %call_43e8cb, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rsi	 RIP: 43e8cf	 Bytes: 4
  %loadMem_43e8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8cf = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8cf)
  store %struct.Memory* %call_43e8cf, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e8d3	 Bytes: 4
  %loadMem_43e8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8d3 = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8d3)
  store %struct.Memory* %call_43e8d3, %struct.Memory** %MEMORY

  ; Code: movb (%rcx,%rdx,1), %dil	 RIP: 43e8d7	 Bytes: 4
  %loadMem_43e8d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8d7 = call %struct.Memory* @routine_movb___rcx__rdx_1____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8d7)
  store %struct.Memory* %call_43e8d7, %struct.Memory** %MEMORY

  ; Code: movb %dil, -0x59(%rbp)	 RIP: 43e8db	 Bytes: 4
  %loadMem_43e8db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8db = call %struct.Memory* @routine_movb__dil__MINUS0x59__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8db)
  store %struct.Memory* %call_43e8db, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43e8df	 Bytes: 4
  %loadMem_43e8df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8df = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8df)
  store %struct.Memory* %call_43e8df, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 43e8e3	 Bytes: 4
  %loadMem_43e8e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8e3 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8e3)
  store %struct.Memory* %call_43e8e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rsi	 RIP: 43e8e7	 Bytes: 4
  %loadMem_43e8e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8e7 = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8e7)
  store %struct.Memory* %call_43e8e7, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e8eb	 Bytes: 4
  %loadMem_43e8eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8eb = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8eb)
  store %struct.Memory* %call_43e8eb, %struct.Memory** %MEMORY

  ; Code: movb (%rcx,%rdx,1), %dil	 RIP: 43e8ef	 Bytes: 4
  %loadMem_43e8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8ef = call %struct.Memory* @routine_movb___rcx__rdx_1____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8ef)
  store %struct.Memory* %call_43e8ef, %struct.Memory** %MEMORY

  ; Code: movb %dil, -0x5a(%rbp)	 RIP: 43e8f3	 Bytes: 4
  %loadMem_43e8f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8f3 = call %struct.Memory* @routine_movb__dil__MINUS0x5a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8f3)
  store %struct.Memory* %call_43e8f3, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 43e8f7	 Bytes: 4
  %loadMem_43e8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8f7 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8f7)
  store %struct.Memory* %call_43e8f7, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rdx	 RIP: 43e8fb	 Bytes: 4
  %loadMem_43e8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8fb = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8fb)
  store %struct.Memory* %call_43e8fb, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 43e8ff	 Bytes: 3
  %loadMem_43e8ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e8ff = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e8ff)
  store %struct.Memory* %call_43e8ff, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 43e902	 Bytes: 3
  %loadMem_43e902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e902 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e902)
  store %struct.Memory* %call_43e902, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43e905	 Bytes: 4
  %loadMem_43e905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e905 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e905)
  store %struct.Memory* %call_43e905, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 43e909	 Bytes: 4
  %loadMem_43e909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e909 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e909)
  store %struct.Memory* %call_43e909, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43e90d	 Bytes: 3
  %loadMem_43e90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e90d = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e90d)
  store %struct.Memory* %call_43e90d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e910	 Bytes: 3
  %loadMem_43e910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e910 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e910)
  store %struct.Memory* %call_43e910, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43e913	 Bytes: 3
  %loadMem_43e913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e913 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e913)
  store %struct.Memory* %call_43e913, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e916	 Bytes: 4
  %loadMem_43e916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e916 = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e916)
  store %struct.Memory* %call_43e916, %struct.Memory** %MEMORY

  ; Code: movb (%rcx,%rdx,1), %dil	 RIP: 43e91a	 Bytes: 4
  %loadMem_43e91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e91a = call %struct.Memory* @routine_movb___rcx__rdx_1____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e91a)
  store %struct.Memory* %call_43e91a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43e91e	 Bytes: 4
  %loadMem_43e91e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e91e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e91e)
  store %struct.Memory* %call_43e91e, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 43e922	 Bytes: 4
  %loadMem_43e922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e922 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e922)
  store %struct.Memory* %call_43e922, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rsi	 RIP: 43e926	 Bytes: 4
  %loadMem_43e926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e926 = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e926)
  store %struct.Memory* %call_43e926, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e92a	 Bytes: 4
  %loadMem_43e92a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e92a = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e92a)
  store %struct.Memory* %call_43e92a, %struct.Memory** %MEMORY

  ; Code: movb %dil, (%rcx,%rdx,1)	 RIP: 43e92e	 Bytes: 4
  %loadMem_43e92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e92e = call %struct.Memory* @routine_movb__dil____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e92e)
  store %struct.Memory* %call_43e92e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43e932	 Bytes: 4
  %loadMem_43e932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e932 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e932)
  store %struct.Memory* %call_43e932, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 43e936	 Bytes: 4
  %loadMem_43e936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e936 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e936)
  store %struct.Memory* %call_43e936, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43e93a	 Bytes: 3
  %loadMem_43e93a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e93a = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e93a)
  store %struct.Memory* %call_43e93a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e93d	 Bytes: 3
  %loadMem_43e93d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e93d = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e93d)
  store %struct.Memory* %call_43e93d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43e940	 Bytes: 3
  %loadMem_43e940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e940 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e940)
  store %struct.Memory* %call_43e940, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e943	 Bytes: 4
  %loadMem_43e943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e943 = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e943)
  store %struct.Memory* %call_43e943, %struct.Memory** %MEMORY

  ; Code: movb (%rcx,%rdx,1), %dil	 RIP: 43e947	 Bytes: 4
  %loadMem_43e947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e947 = call %struct.Memory* @routine_movb___rcx__rdx_1____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e947)
  store %struct.Memory* %call_43e947, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43e94b	 Bytes: 4
  %loadMem_43e94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e94b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e94b)
  store %struct.Memory* %call_43e94b, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 43e94f	 Bytes: 4
  %loadMem_43e94f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e94f = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e94f)
  store %struct.Memory* %call_43e94f, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rsi	 RIP: 43e953	 Bytes: 4
  %loadMem_43e953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e953 = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e953)
  store %struct.Memory* %call_43e953, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e957	 Bytes: 4
  %loadMem_43e957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e957 = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e957)
  store %struct.Memory* %call_43e957, %struct.Memory** %MEMORY

  ; Code: movb %dil, (%rcx,%rdx,1)	 RIP: 43e95b	 Bytes: 4
  %loadMem_43e95b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e95b = call %struct.Memory* @routine_movb__dil____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e95b)
  store %struct.Memory* %call_43e95b, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 43e95f	 Bytes: 4
  %loadMem_43e95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e95f = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e95f)
  store %struct.Memory* %call_43e95f, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43e963	 Bytes: 3
  %loadMem_43e963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e963 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e963)
  store %struct.Memory* %call_43e963, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e966	 Bytes: 3
  %loadMem_43e966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e966 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e966)
  store %struct.Memory* %call_43e966, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 43e969	 Bytes: 3
  %loadMem_43e969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e969 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e969)
  store %struct.Memory* %call_43e969, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 43e96c	 Bytes: 3
  %loadMem_43e96c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e96c = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e96c)
  store %struct.Memory* %call_43e96c, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 43e96f	 Bytes: 4
  %loadMem_43e96f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e96f = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e96f)
  store %struct.Memory* %call_43e96f, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rdx	 RIP: 43e973	 Bytes: 4
  %loadMem_43e973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e973 = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e973)
  store %struct.Memory* %call_43e973, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 43e977	 Bytes: 3
  %loadMem_43e977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e977 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e977)
  store %struct.Memory* %call_43e977, %struct.Memory** %MEMORY

  ; Code: movb -0x59(%rbp), %dil	 RIP: 43e97a	 Bytes: 4
  %loadMem_43e97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e97a = call %struct.Memory* @routine_movb_MINUS0x59__rbp____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e97a)
  store %struct.Memory* %call_43e97a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43e97e	 Bytes: 4
  %loadMem_43e97e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e97e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e97e)
  store %struct.Memory* %call_43e97e, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 43e982	 Bytes: 4
  %loadMem_43e982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e982 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e982)
  store %struct.Memory* %call_43e982, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43e986	 Bytes: 3
  %loadMem_43e986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e986 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e986)
  store %struct.Memory* %call_43e986, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e989	 Bytes: 3
  %loadMem_43e989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e989 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e989)
  store %struct.Memory* %call_43e989, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43e98c	 Bytes: 3
  %loadMem_43e98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e98c = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e98c)
  store %struct.Memory* %call_43e98c, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e98f	 Bytes: 4
  %loadMem_43e98f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e98f = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e98f)
  store %struct.Memory* %call_43e98f, %struct.Memory** %MEMORY

  ; Code: movb %dil, (%rcx,%rdx,1)	 RIP: 43e993	 Bytes: 4
  %loadMem_43e993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e993 = call %struct.Memory* @routine_movb__dil____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e993)
  store %struct.Memory* %call_43e993, %struct.Memory** %MEMORY

  ; Code: movb -0x5a(%rbp), %dil	 RIP: 43e997	 Bytes: 4
  %loadMem_43e997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e997 = call %struct.Memory* @routine_movb_MINUS0x5a__rbp____dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e997)
  store %struct.Memory* %call_43e997, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43e99b	 Bytes: 4
  %loadMem_43e99b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e99b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e99b)
  store %struct.Memory* %call_43e99b, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 43e99f	 Bytes: 4
  %loadMem_43e99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e99f = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e99f)
  store %struct.Memory* %call_43e99f, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43e9a3	 Bytes: 3
  %loadMem_43e9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9a3 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9a3)
  store %struct.Memory* %call_43e9a3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43e9a6	 Bytes: 3
  %loadMem_43e9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9a6 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9a6)
  store %struct.Memory* %call_43e9a6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43e9a9	 Bytes: 3
  %loadMem_43e9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9a9 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9a9)
  store %struct.Memory* %call_43e9a9, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rsi,4), %rdx	 RIP: 43e9ac	 Bytes: 4
  %loadMem_43e9ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9ac = call %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9ac)
  store %struct.Memory* %call_43e9ac, %struct.Memory** %MEMORY

  ; Code: movb %dil, (%rcx,%rdx,1)	 RIP: 43e9b0	 Bytes: 4
  %loadMem_43e9b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9b0 = call %struct.Memory* @routine_movb__dil____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9b0)
  store %struct.Memory* %call_43e9b0, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %eax	 RIP: 43e9b4	 Bytes: 3
  %loadMem_43e9b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9b4 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9b4)
  store %struct.Memory* %call_43e9b4, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 43e9b7	 Bytes: 4
  %loadMem_43e9b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9b7 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9b7)
  store %struct.Memory* %call_43e9b7, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %r8d	 RIP: 43e9bb	 Bytes: 4
  %loadMem_43e9bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9bb = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9bb)
  store %struct.Memory* %call_43e9bb, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %r8d	 RIP: 43e9bf	 Bytes: 4
  %loadMem_43e9bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9bf = call %struct.Memory* @routine_subl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9bf)
  store %struct.Memory* %call_43e9bf, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 43e9c3	 Bytes: 3
  %loadMem_43e9c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9c3 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9c3)
  store %struct.Memory* %call_43e9c3, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 43e9c6	 Bytes: 3
  %loadMem_43e9c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9c6 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9c6)
  store %struct.Memory* %call_43e9c6, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43e9c9	 Bytes: 3
  %loadMem_43e9c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9c9 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9c9)
  store %struct.Memory* %call_43e9c9, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 43e9cc	 Bytes: 3
  %loadMem_43e9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9cc = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9cc)
  store %struct.Memory* %call_43e9cc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43e9cf	 Bytes: 3
  %loadMem_43e9cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9cf = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9cf)
  store %struct.Memory* %call_43e9cf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43e8a8	 RIP: 43e9d2	 Bytes: 5
  %loadMem_43e9d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9d2 = call %struct.Memory* @routine_jmpq_.L_43e8a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9d2, i64 -298, i64 5)
  store %struct.Memory* %call_43e9d2, %struct.Memory** %MEMORY

  br label %block_.L_43e8a8

  ; Code: .L_43e9d7:	 RIP: 43e9d7	 Bytes: 0
block_.L_43e9d7:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 43e9d7	 Bytes: 4
  %loadMem_43e9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9d7 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9d7)
  store %struct.Memory* %call_43e9d7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 43e9db	 Bytes: 3
  %loadMem_43e9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9db = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9db)
  store %struct.Memory* %call_43e9db, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 43e9de	 Bytes: 5
  %loadMem1_43e9de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e9de = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e9de, i64 -251486, i64 5, i64 5)
  store %struct.Memory* %call1_43e9de, %struct.Memory** %MEMORY

  %loadMem2_43e9de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e9de = load i64, i64* %3
  %call2_43e9de = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_43e9de, %struct.Memory* %loadMem2_43e9de)
  store %struct.Memory* %call2_43e9de, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 43e9e3	 Bytes: 4
  %loadMem_43e9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9e3 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9e3)
  store %struct.Memory* %call_43e9e3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 43e9e7	 Bytes: 3
  %loadMem_43e9e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9e7 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9e7)
  store %struct.Memory* %call_43e9e7, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 43e9ea	 Bytes: 5
  %loadMem1_43e9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e9ea = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e9ea, i64 -251498, i64 5, i64 5)
  store %struct.Memory* %call1_43e9ea, %struct.Memory** %MEMORY

  %loadMem2_43e9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e9ea = load i64, i64* %3
  %call2_43e9ea = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_43e9ea, %struct.Memory* %loadMem2_43e9ea)
  store %struct.Memory* %call2_43e9ea, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 43e9ef	 Bytes: 4
  %loadMem_43e9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9ef = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9ef)
  store %struct.Memory* %call_43e9ef, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 43e9f3	 Bytes: 3
  %loadMem_43e9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9f3 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9f3)
  store %struct.Memory* %call_43e9f3, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 43e9f6	 Bytes: 5
  %loadMem1_43e9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e9f6 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e9f6, i64 -251510, i64 5, i64 5)
  store %struct.Memory* %call1_43e9f6, %struct.Memory** %MEMORY

  %loadMem2_43e9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e9f6 = load i64, i64* %3
  %call2_43e9f6 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_43e9f6, %struct.Memory* %loadMem2_43e9f6)
  store %struct.Memory* %call2_43e9f6, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 43e9fb	 Bytes: 5
  %loadMem_43e9fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e9fb = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e9fb)
  store %struct.Memory* %call_43e9fb, %struct.Memory** %MEMORY

  ; Code: addq $0x80, %rsp	 RIP: 43ea00	 Bytes: 7
  %loadMem_43ea00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ea00 = call %struct.Memory* @routine_addq__0x80___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ea00)
  store %struct.Memory* %call_43ea00, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 43ea07	 Bytes: 1
  %loadMem_43ea07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ea07 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ea07)
  store %struct.Memory* %call_43ea07, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 43ea08	 Bytes: 1
  %loadMem_43ea08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ea08 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ea08)
  store %struct.Memory* %call_43ea08, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_43ea08
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

define %struct.Memory* @routine_subq__0x80___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 128)
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


define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  %7 = sub i64 %2, %6
  %8 = icmp ugt i64 %6, %2
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
  %18 = xor i64 %6, %2
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
  %30 = lshr i64 %2, 63
  %31 = lshr i64 %6, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add   i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_je_.L_43e27a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_callq_.strcpy_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_je_.L_43e299(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x459d41___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x459d41_type* @G__0x459d41 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x23c___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 572)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq__rdi__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi__MINUS0x7c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.strlen_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_movq_MINUS0x78__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
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

define %struct.Memory* @routine_movl_MINUS0x7c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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




define %struct.Memory* @routine_movl__0x23d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 573)
  ret %struct.Memory* %11
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












define %struct.Memory* @routine_movl__0x23e___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 574)
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










define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 36
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

define %struct.Memory* @routine_jge_.L_43e635(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %17)
  ret %struct.Memory* %20
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

define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 32)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43e3b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 46)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 95)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 45)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 126)
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

define %struct.Memory* @routine_jne_.L_43e420(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_43e41b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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









































define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_43e627(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_je_.L_43e50e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






























































































define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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


define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_jmpq_.L_43e61d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_je_.L_43e577(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








































define %struct.Memory* @routine_jne_.L_43e593(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_43e618(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_je_.L_43e5fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








































define %struct.Memory* @routine_jne_.L_43e613(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_jmpq_.L_43e622(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43e33d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43e63a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_jle_.L_43e76f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.sre_random(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sitofp i32 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x44__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fmul double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = tail call double @llvm.trunc.f64(double %6) #22
  %8 = tail call double @llvm.fabs.f64(double %7) #22
  %9 = fcmp ogt double %8, 0x41DFFFFFFFC00000
  %10 = fptosi double %7 to i32
  %11 = zext i32 %10 to i64
  %12 = select i1 %9, i64 2147483648, i64 %11
  store i64 %12, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb___rcx__rdx_1____dil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DIL, i64 %18)
  ret %struct.Memory* %21
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__dil__MINUS0x59__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 89
  %15 = load i8, i8* %DIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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










define %struct.Memory* @routine_movb__dil__MINUS0x5a__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 90
  %15 = load i8, i8* %DIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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














define %struct.Memory* @routine_movb__dil____rcx__rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %DIL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
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










define %struct.Memory* @routine_movb_MINUS0x59__rbp____dil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 89
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DIL, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_movb_MINUS0x5a__rbp____dil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 90
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DIL, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_jmpq_.L_43e774(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_43e8a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cvtsi2sdl_MINUS0x48__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






























































































































define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x48__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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












define %struct.Memory* @routine_jmpq_.L_43e8a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_43e9d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cvtsi2sdl_MINUS0x4c__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


































































































































define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
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


define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addq__0x80___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 128)
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

