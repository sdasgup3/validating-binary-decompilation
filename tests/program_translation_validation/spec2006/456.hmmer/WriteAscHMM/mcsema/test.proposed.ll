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

declare %struct.Memory* @sub_4232d0.multiline(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_423370.prob2ascii(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x314f4__rip__type = type <{ [4 x i8] }>
@G_0x314f4__rip_= global %G_0x314f4__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x3153b__rip__type = type <{ [4 x i8] }>
@G_0x3153b__rip_= global %G_0x3153b__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x315bc__rip__type = type <{ [4 x i8] }>
@G_0x315bc__rip_= global %G_0x315bc__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x31909__rip__type = type <{ [4 x i8] }>
@G_0x31909__rip_= global %G_0x31909__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x3196e__rip__type = type <{ [4 x i8] }>
@G_0x3196e__rip_= global %G_0x3196e__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x31b65__rip__type = type <{ [4 x i8] }>
@G_0x31b65__rip_= global %G_0x31b65__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x31bf0__rip__type = type <{ [4 x i8] }>
@G_0x31bf0__rip_= global %G_0x31bf0__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x31c35__rip__type = type <{ [4 x i8] }>
@G_0x31c35__rip_= global %G_0x31c35__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x31ca0__rip__type = type <{ [8 x i8] }>
@G_0x31ca0__rip_= global %G_0x31ca0__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x31cdb__rip__type = type <{ [4 x i8] }>
@G_0x31cdb__rip_= global %G_0x31cdb__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x676d90_type = type <{ [1 x i8] }>
@G_0x676d90= global %G_0x676d90_type <{ [1 x i8] c"\00" }>
%G_0x677060_type = type <{ [4 x i8] }>
@G_0x677060= global %G_0x677060_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45653b_type = type <{ [8 x i8] }>
@G__0x45653b= global %G__0x45653b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x456fbb_type = type <{ [8 x i8] }>
@G__0x456fbb= global %G__0x456fbb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45756f_type = type <{ [8 x i8] }>
@G__0x45756f= global %G__0x45756f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457914_type = type <{ [8 x i8] }>
@G__0x457914= global %G__0x457914_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4579fb_type = type <{ [8 x i8] }>
@G__0x4579fb= global %G__0x4579fb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a0b_type = type <{ [8 x i8] }>
@G__0x457a0b= global %G__0x457a0b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a15_type = type <{ [8 x i8] }>
@G__0x457a15= global %G__0x457a15_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a1f_type = type <{ [8 x i8] }>
@G__0x457a1f= global %G__0x457a1f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a29_type = type <{ [8 x i8] }>
@G__0x457a29= global %G__0x457a29_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a33_type = type <{ [8 x i8] }>
@G__0x457a33= global %G__0x457a33_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a36_type = type <{ [8 x i8] }>
@G__0x457a36= global %G__0x457a36_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a39_type = type <{ [8 x i8] }>
@G__0x457a39= global %G__0x457a39_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a41_type = type <{ [8 x i8] }>
@G__0x457a41= global %G__0x457a41_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a4b_type = type <{ [8 x i8] }>
@G__0x457a4b= global %G__0x457a4b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a55_type = type <{ [8 x i8] }>
@G__0x457a55= global %G__0x457a55_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a5f_type = type <{ [8 x i8] }>
@G__0x457a5f= global %G__0x457a5f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a69_type = type <{ [8 x i8] }>
@G__0x457a69= global %G__0x457a69_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a70_type = type <{ [8 x i8] }>
@G__0x457a70= global %G__0x457a70_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a7a_type = type <{ [8 x i8] }>
@G__0x457a7a= global %G__0x457a7a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a84_type = type <{ [8 x i8] }>
@G__0x457a84= global %G__0x457a84_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a8e_type = type <{ [8 x i8] }>
@G__0x457a8e= global %G__0x457a8e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a96_type = type <{ [8 x i8] }>
@G__0x457a96= global %G__0x457a96_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457a9d_type = type <{ [8 x i8] }>
@G__0x457a9d= global %G__0x457a9d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457aa4_type = type <{ [8 x i8] }>
@G__0x457aa4= global %G__0x457aa4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457ab5_type = type <{ [8 x i8] }>
@G__0x457ab5= global %G__0x457ab5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457abf_type = type <{ [8 x i8] }>
@G__0x457abf= global %G__0x457abf_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457ac8_type = type <{ [8 x i8] }>
@G__0x457ac8= global %G__0x457ac8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457af4_type = type <{ [8 x i8] }>
@G__0x457af4= global %G__0x457af4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457af9_type = type <{ [8 x i8] }>
@G__0x457af9= global %G__0x457af9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457afe_type = type <{ [8 x i8] }>
@G__0x457afe= global %G__0x457afe_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457b03_type = type <{ [8 x i8] }>
@G__0x457b03= global %G__0x457b03_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457b08_type = type <{ [8 x i8] }>
@G__0x457b08= global %G__0x457b08_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457b0d_type = type <{ [8 x i8] }>
@G__0x457b0d= global %G__0x457b0d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457b12_type = type <{ [8 x i8] }>
@G__0x457b12= global %G__0x457b12_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457b17_type = type <{ [8 x i8] }>
@G__0x457b17= global %G__0x457b17_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457b1c_type = type <{ [8 x i8] }>
@G__0x457b1c= global %G__0x457b1c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457b21_type = type <{ [8 x i8] }>
@G__0x457b21= global %G__0x457b21_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457b2c_type = type <{ [8 x i8] }>
@G__0x457b2c= global %G__0x457b2c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457b31_type = type <{ [8 x i8] }>
@G__0x457b31= global %G__0x457b31_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457b37_type = type <{ [8 x i8] }>
@G__0x457b37= global %G__0x457b37_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457b3b_type = type <{ [8 x i8] }>
@G__0x457b3b= global %G__0x457b3b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4583b0_type = type <{ [8 x i8] }>
@G__0x4583b0= global %G__0x4583b0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
@G__0x45a1f7= global %G__0x45a1f7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b045_type = type <{ [8 x i8] }>
@G__0x45b045= global %G__0x45b045_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b06c_type = type <{ [8 x i8] }>
@G__0x45b06c= global %G__0x45b06c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b093_type = type <{ [8 x i8] }>
@G__0x45b093= global %G__0x45b093_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @WriteAscHMM(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .WriteAscHMM:	 RIP: 4226c0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4226c0	 Bytes: 1
  %loadMem_4226c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4226c0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4226c0)
  store %struct.Memory* %call_4226c0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4226c1	 Bytes: 3
  %loadMem_4226c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4226c1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4226c1)
  store %struct.Memory* %call_4226c1, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 4226c4	 Bytes: 2
  %loadMem_4226c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4226c4 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4226c4)
  store %struct.Memory* %call_4226c4, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 4226c6	 Bytes: 2
  %loadMem_4226c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4226c6 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4226c6)
  store %struct.Memory* %call_4226c6, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 4226c8	 Bytes: 1
  %loadMem_4226c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4226c8 = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4226c8)
  store %struct.Memory* %call_4226c8, %struct.Memory** %MEMORY

  ; Code: subq $0x1b8, %rsp	 RIP: 4226c9	 Bytes: 7
  %loadMem_4226c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4226c9 = call %struct.Memory* @routine_subq__0x1b8___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4226c9)
  store %struct.Memory* %call_4226c9, %struct.Memory** %MEMORY

  ; Code: movq $0x4579fb, %rax	 RIP: 4226d0	 Bytes: 10
  %loadMem_4226d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4226d0 = call %struct.Memory* @routine_movq__0x4579fb___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4226d0)
  store %struct.Memory* %call_4226d0, %struct.Memory** %MEMORY

  ; Code: movq $0x45653b, %rdx	 RIP: 4226da	 Bytes: 10
  %loadMem_4226da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4226da = call %struct.Memory* @routine_movq__0x45653b___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4226da)
  store %struct.Memory* %call_4226da, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x20(%rbp)	 RIP: 4226e4	 Bytes: 4
  %loadMem_4226e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4226e4 = call %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4226e4)
  store %struct.Memory* %call_4226e4, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x28(%rbp)	 RIP: 4226e8	 Bytes: 4
  %loadMem_4226e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4226e8 = call %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4226e8)
  store %struct.Memory* %call_4226e8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4226ec	 Bytes: 4
  %loadMem_4226ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4226ec = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4226ec)
  store %struct.Memory* %call_4226ec, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4226f0	 Bytes: 3
  %loadMem_4226f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4226f0 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4226f0)
  store %struct.Memory* %call_4226f0, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4226f3	 Bytes: 2
  %loadMem_4226f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4226f3 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4226f3)
  store %struct.Memory* %call_4226f3, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4226f5	 Bytes: 5
  %loadMem1_4226f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4226f5 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4226f5, i64 -135557, i64 5, i64 5)
  store %struct.Memory* %call1_4226f5, %struct.Memory** %MEMORY

  %loadMem2_4226f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4226f5 = load i64, i64* %3
  %call2_4226f5 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4226f5, %struct.Memory* %loadMem2_4226f5)
  store %struct.Memory* %call2_4226f5, %struct.Memory** %MEMORY

  ; Code: movq $0x457a0b, %rsi	 RIP: 4226fa	 Bytes: 10
  %loadMem_4226fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4226fa = call %struct.Memory* @routine_movq__0x457a0b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4226fa)
  store %struct.Memory* %call_4226fa, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422704	 Bytes: 4
  %loadMem_422704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422704 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422704)
  store %struct.Memory* %call_422704, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 422708	 Bytes: 4
  %loadMem_422708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422708 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422708)
  store %struct.Memory* %call_422708, %struct.Memory** %MEMORY

  ; Code: movq (%rdx), %rdx	 RIP: 42270c	 Bytes: 3
  %loadMem_42270c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42270c = call %struct.Memory* @routine_movq___rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42270c)
  store %struct.Memory* %call_42270c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 42270f	 Bytes: 3
  %loadMem_42270f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42270f = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42270f)
  store %struct.Memory* %call_42270f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422712	 Bytes: 2
  %loadMem_422712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422712 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422712)
  store %struct.Memory* %call_422712, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422714	 Bytes: 5
  %loadMem1_422714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422714 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422714, i64 -135588, i64 5, i64 5)
  store %struct.Memory* %call1_422714, %struct.Memory** %MEMORY

  %loadMem2_422714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422714 = load i64, i64* %3
  %call2_422714 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422714, %struct.Memory* %loadMem2_422714)
  store %struct.Memory* %call2_422714, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 422719	 Bytes: 4
  %loadMem_422719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422719 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422719)
  store %struct.Memory* %call_422719, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rdx), %ecx	 RIP: 42271d	 Bytes: 6
  %loadMem_42271d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42271d = call %struct.Memory* @routine_movl_0x1c8__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42271d)
  store %struct.Memory* %call_42271d, %struct.Memory** %MEMORY

  ; Code: andl $0x200, %ecx	 RIP: 422723	 Bytes: 6
  %loadMem_422723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422723 = call %struct.Memory* @routine_andl__0x200___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422723)
  store %struct.Memory* %call_422723, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 422729	 Bytes: 3
  %loadMem_422729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422729 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422729)
  store %struct.Memory* %call_422729, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 42272c	 Bytes: 3
  %loadMem_42272c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42272c = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42272c)
  store %struct.Memory* %call_42272c, %struct.Memory** %MEMORY

  ; Code: je .L_422755	 RIP: 42272f	 Bytes: 6
  %loadMem_42272f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42272f = call %struct.Memory* @routine_je_.L_422755(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42272f, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_42272f, %struct.Memory** %MEMORY

  %loadBr_42272f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42272f = icmp eq i8 %loadBr_42272f, 1
  br i1 %cmpBr_42272f, label %block_.L_422755, label %block_422735

block_422735:
  ; Code: movq $0x457a15, %rsi	 RIP: 422735	 Bytes: 10
  %loadMem_422735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422735 = call %struct.Memory* @routine_movq__0x457a15___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422735)
  store %struct.Memory* %call_422735, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 42273f	 Bytes: 4
  %loadMem_42273f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42273f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42273f)
  store %struct.Memory* %call_42273f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 422743	 Bytes: 4
  %loadMem_422743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422743 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422743)
  store %struct.Memory* %call_422743, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rdx	 RIP: 422747	 Bytes: 4
  %loadMem_422747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422747 = call %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422747)
  store %struct.Memory* %call_422747, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42274b	 Bytes: 2
  %loadMem_42274b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42274b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42274b)
  store %struct.Memory* %call_42274b, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 42274d	 Bytes: 5
  %loadMem1_42274d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42274d = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42274d, i64 -135645, i64 5, i64 5)
  store %struct.Memory* %call1_42274d, %struct.Memory** %MEMORY

  %loadMem2_42274d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42274d = load i64, i64* %3
  %call2_42274d = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_42274d, %struct.Memory* %loadMem2_42274d)
  store %struct.Memory* %call2_42274d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 422752	 Bytes: 3
  %loadMem_422752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422752 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422752)
  store %struct.Memory* %call_422752, %struct.Memory** %MEMORY

  ; Code: .L_422755:	 RIP: 422755	 Bytes: 0
  br label %block_.L_422755
block_.L_422755:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 422755	 Bytes: 4
  %loadMem_422755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422755 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422755)
  store %struct.Memory* %call_422755, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 422759	 Bytes: 6
  %loadMem_422759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422759 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422759)
  store %struct.Memory* %call_422759, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %ecx	 RIP: 42275f	 Bytes: 3
  %loadMem_42275f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42275f = call %struct.Memory* @routine_andl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42275f)
  store %struct.Memory* %call_42275f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 422762	 Bytes: 3
  %loadMem_422762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422762 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422762)
  store %struct.Memory* %call_422762, %struct.Memory** %MEMORY

  ; Code: je .L_42278b	 RIP: 422765	 Bytes: 6
  %loadMem_422765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422765 = call %struct.Memory* @routine_je_.L_42278b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422765, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_422765, %struct.Memory** %MEMORY

  %loadBr_422765 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422765 = icmp eq i8 %loadBr_422765, 1
  br i1 %cmpBr_422765, label %block_.L_42278b, label %block_42276b

block_42276b:
  ; Code: movq $0x457a1f, %rsi	 RIP: 42276b	 Bytes: 10
  %loadMem_42276b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42276b = call %struct.Memory* @routine_movq__0x457a1f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42276b)
  store %struct.Memory* %call_42276b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422775	 Bytes: 4
  %loadMem_422775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422775 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422775)
  store %struct.Memory* %call_422775, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 422779	 Bytes: 4
  %loadMem_422779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422779 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422779)
  store %struct.Memory* %call_422779, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rdx	 RIP: 42277d	 Bytes: 4
  %loadMem_42277d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42277d = call %struct.Memory* @routine_movq_0x10__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42277d)
  store %struct.Memory* %call_42277d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422781	 Bytes: 2
  %loadMem_422781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422781 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422781)
  store %struct.Memory* %call_422781, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422783	 Bytes: 5
  %loadMem1_422783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422783 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422783, i64 -135699, i64 5, i64 5)
  store %struct.Memory* %call1_422783, %struct.Memory** %MEMORY

  %loadMem2_422783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422783 = load i64, i64* %3
  %call2_422783 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422783, %struct.Memory* %loadMem2_422783)
  store %struct.Memory* %call2_422783, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 422788	 Bytes: 3
  %loadMem_422788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422788 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422788)
  store %struct.Memory* %call_422788, %struct.Memory** %MEMORY

  ; Code: .L_42278b:	 RIP: 42278b	 Bytes: 0
  br label %block_.L_42278b
block_.L_42278b:

  ; Code: movq $0x457a29, %rsi	 RIP: 42278b	 Bytes: 10
  %loadMem_42278b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42278b = call %struct.Memory* @routine_movq__0x457a29___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42278b)
  store %struct.Memory* %call_42278b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422795	 Bytes: 4
  %loadMem_422795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422795 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422795)
  store %struct.Memory* %call_422795, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 422799	 Bytes: 4
  %loadMem_422799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422799 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422799)
  store %struct.Memory* %call_422799, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rax), %edx	 RIP: 42279d	 Bytes: 6
  %loadMem_42279d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42279d = call %struct.Memory* @routine_movl_0x88__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42279d)
  store %struct.Memory* %call_42279d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4227a3	 Bytes: 2
  %loadMem_4227a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4227a3 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4227a3)
  store %struct.Memory* %call_4227a3, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4227a5	 Bytes: 5
  %loadMem1_4227a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4227a5 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4227a5, i64 -135733, i64 5, i64 5)
  store %struct.Memory* %call1_4227a5, %struct.Memory** %MEMORY

  %loadMem2_4227a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4227a5 = load i64, i64* %3
  %call2_4227a5 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4227a5, %struct.Memory* %loadMem2_4227a5)
  store %struct.Memory* %call2_4227a5, %struct.Memory** %MEMORY

  ; Code: movq $0x457a41, %rsi	 RIP: 4227aa	 Bytes: 10
  %loadMem_4227aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4227aa = call %struct.Memory* @routine_movq__0x457a41___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4227aa)
  store %struct.Memory* %call_4227aa, %struct.Memory** %MEMORY

  ; Code: movq $0x457a39, %rdi	 RIP: 4227b4	 Bytes: 10
  %loadMem_4227b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4227b4 = call %struct.Memory* @routine_movq__0x457a39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4227b4)
  store %struct.Memory* %call_4227b4, %struct.Memory** %MEMORY

  ; Code: movq $0x457a33, %rcx	 RIP: 4227be	 Bytes: 10
  %loadMem_4227be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4227be = call %struct.Memory* @routine_movq__0x457a33___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4227be)
  store %struct.Memory* %call_4227be, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %r8	 RIP: 4227c8	 Bytes: 4
  %loadMem_4227c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4227c8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4227c8)
  store %struct.Memory* %call_4227c8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x676d90	 RIP: 4227cc	 Bytes: 8
  %loadMem_4227cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4227cc = call %struct.Memory* @routine_cmpl__0x3__0x676d90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4227cc)
  store %struct.Memory* %call_4227cc, %struct.Memory** %MEMORY

  ; Code: cmoveq %rcx, %rdi	 RIP: 4227d4	 Bytes: 4
  %loadMem_4227d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4227d4 = call %struct.Memory* @routine_cmoveq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4227d4)
  store %struct.Memory* %call_4227d4, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x50(%rbp)	 RIP: 4227d8	 Bytes: 4
  %loadMem_4227d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4227d8 = call %struct.Memory* @routine_movq__rdi__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4227d8)
  store %struct.Memory* %call_4227d8, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rdi	 RIP: 4227dc	 Bytes: 3
  %loadMem_4227dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4227dc = call %struct.Memory* @routine_movq__r8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4227dc)
  store %struct.Memory* %call_4227dc, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdx	 RIP: 4227df	 Bytes: 4
  %loadMem_4227df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4227df = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4227df)
  store %struct.Memory* %call_4227df, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 4227e3	 Bytes: 3
  %loadMem_4227e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4227e3 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4227e3)
  store %struct.Memory* %call_4227e3, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4227e6	 Bytes: 2
  %loadMem_4227e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4227e6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4227e6)
  store %struct.Memory* %call_4227e6, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4227e8	 Bytes: 5
  %loadMem1_4227e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4227e8 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4227e8, i64 -135800, i64 5, i64 5)
  store %struct.Memory* %call1_4227e8, %struct.Memory** %MEMORY

  %loadMem2_4227e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4227e8 = load i64, i64* %3
  %call2_4227e8 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4227e8, %struct.Memory* %loadMem2_4227e8)
  store %struct.Memory* %call2_4227e8, %struct.Memory** %MEMORY

  ; Code: movq $0x457a4b, %rsi	 RIP: 4227ed	 Bytes: 10
  %loadMem_4227ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4227ed = call %struct.Memory* @routine_movq__0x457a4b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4227ed)
  store %struct.Memory* %call_4227ed, %struct.Memory** %MEMORY

  ; Code: movq $0x457a36, %rcx	 RIP: 4227f7	 Bytes: 10
  %loadMem_4227f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4227f7 = call %struct.Memory* @routine_movq__0x457a36___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4227f7)
  store %struct.Memory* %call_4227f7, %struct.Memory** %MEMORY

  ; Code: movq $0x457914, %rdx	 RIP: 422801	 Bytes: 10
  %loadMem_422801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422801 = call %struct.Memory* @routine_movq__0x457914___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422801)
  store %struct.Memory* %call_422801, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 42280b	 Bytes: 4
  %loadMem_42280b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42280b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42280b)
  store %struct.Memory* %call_42280b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %r8	 RIP: 42280f	 Bytes: 4
  %loadMem_42280f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42280f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42280f)
  store %struct.Memory* %call_42280f, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%r8), %r9d	 RIP: 422813	 Bytes: 7
  %loadMem_422813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422813 = call %struct.Memory* @routine_movl_0x1c8__r8____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422813)
  store %struct.Memory* %call_422813, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %r9d	 RIP: 42281a	 Bytes: 4
  %loadMem_42281a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42281a = call %struct.Memory* @routine_andl__0x4___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42281a)
  store %struct.Memory* %call_42281a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %r9d	 RIP: 42281e	 Bytes: 4
  %loadMem_42281e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42281e = call %struct.Memory* @routine_cmpl__0x0___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42281e)
  store %struct.Memory* %call_42281e, %struct.Memory** %MEMORY

  ; Code: cmovneq %rdx, %rcx	 RIP: 422822	 Bytes: 4
  %loadMem_422822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422822 = call %struct.Memory* @routine_cmovneq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422822)
  store %struct.Memory* %call_422822, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 422826	 Bytes: 3
  %loadMem_422826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422826 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422826)
  store %struct.Memory* %call_422826, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 422829	 Bytes: 3
  %loadMem_422829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422829 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422829)
  store %struct.Memory* %call_422829, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42282c	 Bytes: 2
  %loadMem_42282c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42282c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42282c)
  store %struct.Memory* %call_42282c, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 42282e	 Bytes: 5
  %loadMem1_42282e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42282e = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42282e, i64 -135870, i64 5, i64 5)
  store %struct.Memory* %call1_42282e, %struct.Memory** %MEMORY

  %loadMem2_42282e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42282e = load i64, i64* %3
  %call2_42282e = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_42282e, %struct.Memory* %loadMem2_42282e)
  store %struct.Memory* %call2_42282e, %struct.Memory** %MEMORY

  ; Code: movq $0x457a55, %rsi	 RIP: 422833	 Bytes: 10
  %loadMem_422833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422833 = call %struct.Memory* @routine_movq__0x457a55___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422833)
  store %struct.Memory* %call_422833, %struct.Memory** %MEMORY

  ; Code: movq $0x457a36, %rcx	 RIP: 42283d	 Bytes: 10
  %loadMem_42283d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42283d = call %struct.Memory* @routine_movq__0x457a36___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42283d)
  store %struct.Memory* %call_42283d, %struct.Memory** %MEMORY

  ; Code: movq $0x457914, %rdx	 RIP: 422847	 Bytes: 10
  %loadMem_422847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422847 = call %struct.Memory* @routine_movq__0x457914___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422847)
  store %struct.Memory* %call_422847, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422851	 Bytes: 4
  %loadMem_422851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422851 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422851)
  store %struct.Memory* %call_422851, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %r8	 RIP: 422855	 Bytes: 4
  %loadMem_422855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422855 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422855)
  store %struct.Memory* %call_422855, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%r8), %r9d	 RIP: 422859	 Bytes: 7
  %loadMem_422859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422859 = call %struct.Memory* @routine_movl_0x1c8__r8____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422859)
  store %struct.Memory* %call_422859, %struct.Memory** %MEMORY

  ; Code: andl $0x8, %r9d	 RIP: 422860	 Bytes: 4
  %loadMem_422860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422860 = call %struct.Memory* @routine_andl__0x8___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422860)
  store %struct.Memory* %call_422860, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %r9d	 RIP: 422864	 Bytes: 4
  %loadMem_422864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422864 = call %struct.Memory* @routine_cmpl__0x0___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422864)
  store %struct.Memory* %call_422864, %struct.Memory** %MEMORY

  ; Code: cmovneq %rdx, %rcx	 RIP: 422868	 Bytes: 4
  %loadMem_422868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422868 = call %struct.Memory* @routine_cmovneq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422868)
  store %struct.Memory* %call_422868, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 42286c	 Bytes: 3
  %loadMem_42286c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42286c = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42286c)
  store %struct.Memory* %call_42286c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 42286f	 Bytes: 3
  %loadMem_42286f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42286f = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42286f)
  store %struct.Memory* %call_42286f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422872	 Bytes: 2
  %loadMem_422872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422872 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422872)
  store %struct.Memory* %call_422872, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422874	 Bytes: 5
  %loadMem1_422874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422874 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422874, i64 -135940, i64 5, i64 5)
  store %struct.Memory* %call1_422874, %struct.Memory** %MEMORY

  %loadMem2_422874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422874 = load i64, i64* %3
  %call2_422874 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422874, %struct.Memory* %loadMem2_422874)
  store %struct.Memory* %call2_422874, %struct.Memory** %MEMORY

  ; Code: movq $0x457a5f, %rsi	 RIP: 422879	 Bytes: 10
  %loadMem_422879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422879 = call %struct.Memory* @routine_movq__0x457a5f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422879)
  store %struct.Memory* %call_422879, %struct.Memory** %MEMORY

  ; Code: movq $0x457a36, %rcx	 RIP: 422883	 Bytes: 10
  %loadMem_422883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422883 = call %struct.Memory* @routine_movq__0x457a36___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422883)
  store %struct.Memory* %call_422883, %struct.Memory** %MEMORY

  ; Code: movq $0x457914, %rdx	 RIP: 42288d	 Bytes: 10
  %loadMem_42288d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42288d = call %struct.Memory* @routine_movq__0x457914___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42288d)
  store %struct.Memory* %call_42288d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422897	 Bytes: 4
  %loadMem_422897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422897 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422897)
  store %struct.Memory* %call_422897, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %r8	 RIP: 42289b	 Bytes: 4
  %loadMem_42289b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42289b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42289b)
  store %struct.Memory* %call_42289b, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%r8), %r9d	 RIP: 42289f	 Bytes: 7
  %loadMem_42289f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42289f = call %struct.Memory* @routine_movl_0x1c8__r8____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42289f)
  store %struct.Memory* %call_42289f, %struct.Memory** %MEMORY

  ; Code: andl $0x100, %r9d	 RIP: 4228a6	 Bytes: 7
  %loadMem_4228a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228a6 = call %struct.Memory* @routine_andl__0x100___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228a6)
  store %struct.Memory* %call_4228a6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %r9d	 RIP: 4228ad	 Bytes: 4
  %loadMem_4228ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228ad = call %struct.Memory* @routine_cmpl__0x0___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228ad)
  store %struct.Memory* %call_4228ad, %struct.Memory** %MEMORY

  ; Code: cmovneq %rdx, %rcx	 RIP: 4228b1	 Bytes: 4
  %loadMem_4228b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228b1 = call %struct.Memory* @routine_cmovneq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228b1)
  store %struct.Memory* %call_4228b1, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 4228b5	 Bytes: 3
  %loadMem_4228b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228b5 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228b5)
  store %struct.Memory* %call_4228b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 4228b8	 Bytes: 3
  %loadMem_4228b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228b8 = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228b8)
  store %struct.Memory* %call_4228b8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4228bb	 Bytes: 2
  %loadMem_4228bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228bb = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228bb)
  store %struct.Memory* %call_4228bb, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4228bd	 Bytes: 5
  %loadMem1_4228bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4228bd = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4228bd, i64 -136013, i64 5, i64 5)
  store %struct.Memory* %call1_4228bd, %struct.Memory** %MEMORY

  %loadMem2_4228bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4228bd = load i64, i64* %3
  %call2_4228bd = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4228bd, %struct.Memory* %loadMem2_4228bd)
  store %struct.Memory* %call2_4228bd, %struct.Memory** %MEMORY

  ; Code: movq $0x457a69, %rsi	 RIP: 4228c2	 Bytes: 10
  %loadMem_4228c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228c2 = call %struct.Memory* @routine_movq__0x457a69___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228c2)
  store %struct.Memory* %call_4228c2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4228cc	 Bytes: 4
  %loadMem_4228cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228cc = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228cc)
  store %struct.Memory* %call_4228cc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4228d0	 Bytes: 4
  %loadMem_4228d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228d0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228d0)
  store %struct.Memory* %call_4228d0, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rdx	 RIP: 4228d4	 Bytes: 4
  %loadMem_4228d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228d4 = call %struct.Memory* @routine_movq_0x30__rcx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228d4)
  store %struct.Memory* %call_4228d4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x64(%rbp)	 RIP: 4228d8	 Bytes: 3
  %loadMem_4228d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228d8 = call %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228d8)
  store %struct.Memory* %call_4228d8, %struct.Memory** %MEMORY

  ; Code: callq .multiline	 RIP: 4228db	 Bytes: 5
  %loadMem1_4228db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4228db = call %struct.Memory* @routine_callq_.multiline(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4228db, i64 2549, i64 5, i64 5)
  store %struct.Memory* %call1_4228db, %struct.Memory** %MEMORY

  %loadMem2_4228db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4228db = load i64, i64* %3
  %call2_4228db = call %struct.Memory* @sub_4232d0.multiline(%struct.State* %0, i64  %loadPC_4228db, %struct.Memory* %loadMem2_4228db)
  store %struct.Memory* %call2_4228db, %struct.Memory** %MEMORY

  ; Code: movq $0x457a70, %rsi	 RIP: 4228e0	 Bytes: 10
  %loadMem_4228e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228e0 = call %struct.Memory* @routine_movq__0x457a70___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228e0)
  store %struct.Memory* %call_4228e0, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4228ea	 Bytes: 4
  %loadMem_4228ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228ea = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228ea)
  store %struct.Memory* %call_4228ea, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4228ee	 Bytes: 4
  %loadMem_4228ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228ee = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228ee)
  store %struct.Memory* %call_4228ee, %struct.Memory** %MEMORY

  ; Code: movl 0x38(%rcx), %edx	 RIP: 4228f2	 Bytes: 3
  %loadMem_4228f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228f2 = call %struct.Memory* @routine_movl_0x38__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228f2)
  store %struct.Memory* %call_4228f2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4228f5	 Bytes: 2
  %loadMem_4228f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228f5 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228f5)
  store %struct.Memory* %call_4228f5, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4228f7	 Bytes: 5
  %loadMem1_4228f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4228f7 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4228f7, i64 -136071, i64 5, i64 5)
  store %struct.Memory* %call1_4228f7, %struct.Memory** %MEMORY

  %loadMem2_4228f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4228f7 = load i64, i64* %3
  %call2_4228f7 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4228f7, %struct.Memory* %loadMem2_4228f7)
  store %struct.Memory* %call2_4228f7, %struct.Memory** %MEMORY

  ; Code: movq $0x457a7a, %rsi	 RIP: 4228fc	 Bytes: 10
  %loadMem_4228fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4228fc = call %struct.Memory* @routine_movq__0x457a7a___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4228fc)
  store %struct.Memory* %call_4228fc, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422906	 Bytes: 4
  %loadMem_422906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422906 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422906)
  store %struct.Memory* %call_422906, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42290a	 Bytes: 4
  %loadMem_42290a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42290a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42290a)
  store %struct.Memory* %call_42290a, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rcx), %rdx	 RIP: 42290e	 Bytes: 4
  %loadMem_42290e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42290e = call %struct.Memory* @routine_movq_0x40__rcx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42290e)
  store %struct.Memory* %call_42290e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 422912	 Bytes: 3
  %loadMem_422912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422912 = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422912)
  store %struct.Memory* %call_422912, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422915	 Bytes: 2
  %loadMem_422915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422915 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422915)
  store %struct.Memory* %call_422915, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422917	 Bytes: 5
  %loadMem1_422917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422917 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422917, i64 -136103, i64 5, i64 5)
  store %struct.Memory* %call1_422917, %struct.Memory** %MEMORY

  %loadMem2_422917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422917 = load i64, i64* %3
  %call2_422917 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422917, %struct.Memory* %loadMem2_422917)
  store %struct.Memory* %call2_422917, %struct.Memory** %MEMORY

  ; Code: movq $0x457a84, %rsi	 RIP: 42291c	 Bytes: 10
  %loadMem_42291c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42291c = call %struct.Memory* @routine_movq__0x457a84___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42291c)
  store %struct.Memory* %call_42291c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422926	 Bytes: 4
  %loadMem_422926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422926 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422926)
  store %struct.Memory* %call_422926, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42292a	 Bytes: 4
  %loadMem_42292a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42292a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42292a)
  store %struct.Memory* %call_42292a, %struct.Memory** %MEMORY

  ; Code: movl 0x50(%rcx), %edx	 RIP: 42292e	 Bytes: 3
  %loadMem_42292e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42292e = call %struct.Memory* @routine_movl_0x50__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42292e)
  store %struct.Memory* %call_42292e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 422931	 Bytes: 3
  %loadMem_422931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422931 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422931)
  store %struct.Memory* %call_422931, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422934	 Bytes: 2
  %loadMem_422934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422934 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422934)
  store %struct.Memory* %call_422934, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422936	 Bytes: 5
  %loadMem1_422936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422936 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422936, i64 -136134, i64 5, i64 5)
  store %struct.Memory* %call1_422936, %struct.Memory** %MEMORY

  %loadMem2_422936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422936 = load i64, i64* %3
  %call2_422936 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422936, %struct.Memory* %loadMem2_422936)
  store %struct.Memory* %call2_422936, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42293b	 Bytes: 4
  %loadMem_42293b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42293b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42293b)
  store %struct.Memory* %call_42293b, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rcx), %edx	 RIP: 42293f	 Bytes: 6
  %loadMem_42293f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42293f = call %struct.Memory* @routine_movl_0x1c8__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42293f)
  store %struct.Memory* %call_42293f, %struct.Memory** %MEMORY

  ; Code: andl $0x400, %edx	 RIP: 422945	 Bytes: 6
  %loadMem_422945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422945 = call %struct.Memory* @routine_andl__0x400___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422945)
  store %struct.Memory* %call_422945, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42294b	 Bytes: 3
  %loadMem_42294b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42294b = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42294b)
  store %struct.Memory* %call_42294b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 42294e	 Bytes: 3
  %loadMem_42294e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42294e = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42294e)
  store %struct.Memory* %call_42294e, %struct.Memory** %MEMORY

  ; Code: je .L_422981	 RIP: 422951	 Bytes: 6
  %loadMem_422951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422951 = call %struct.Memory* @routine_je_.L_422981(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422951, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_422951, %struct.Memory** %MEMORY

  %loadBr_422951 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422951 = icmp eq i8 %loadBr_422951, 1
  br i1 %cmpBr_422951, label %block_.L_422981, label %block_422957

block_422957:
  ; Code: movq $0x45b045, %rsi	 RIP: 422957	 Bytes: 10
  %loadMem_422957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422957 = call %struct.Memory* @routine_movq__0x45b045___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422957)
  store %struct.Memory* %call_422957, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422961	 Bytes: 4
  %loadMem_422961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422961 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422961)
  store %struct.Memory* %call_422961, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 422965	 Bytes: 4
  %loadMem_422965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422965 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422965)
  store %struct.Memory* %call_422965, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x70(%rax), %xmm0	 RIP: 422969	 Bytes: 5
  %loadMem_422969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422969 = call %struct.Memory* @routine_cvtss2sd_0x70__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422969)
  store %struct.Memory* %call_422969, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 42296e	 Bytes: 4
  %loadMem_42296e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42296e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42296e)
  store %struct.Memory* %call_42296e, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x74(%rax), %xmm1	 RIP: 422972	 Bytes: 5
  %loadMem_422972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422972 = call %struct.Memory* @routine_cvtss2sd_0x74__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422972)
  store %struct.Memory* %call_422972, %struct.Memory** %MEMORY

  ; Code: movb $0x2, %al	 RIP: 422977	 Bytes: 2
  %loadMem_422977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422977 = call %struct.Memory* @routine_movb__0x2___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422977)
  store %struct.Memory* %call_422977, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422979	 Bytes: 5
  %loadMem1_422979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422979 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422979, i64 -136201, i64 5, i64 5)
  store %struct.Memory* %call1_422979, %struct.Memory** %MEMORY

  %loadMem2_422979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422979 = load i64, i64* %3
  %call2_422979 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422979, %struct.Memory* %loadMem2_422979)
  store %struct.Memory* %call2_422979, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 42297e	 Bytes: 3
  %loadMem_42297e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42297e = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42297e)
  store %struct.Memory* %call_42297e, %struct.Memory** %MEMORY

  ; Code: .L_422981:	 RIP: 422981	 Bytes: 0
  br label %block_.L_422981
block_.L_422981:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 422981	 Bytes: 4
  %loadMem_422981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422981 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422981)
  store %struct.Memory* %call_422981, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 422985	 Bytes: 6
  %loadMem_422985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422985 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422985)
  store %struct.Memory* %call_422985, %struct.Memory** %MEMORY

  ; Code: andl $0x800, %ecx	 RIP: 42298b	 Bytes: 6
  %loadMem_42298b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42298b = call %struct.Memory* @routine_andl__0x800___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42298b)
  store %struct.Memory* %call_42298b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 422991	 Bytes: 3
  %loadMem_422991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422991 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422991)
  store %struct.Memory* %call_422991, %struct.Memory** %MEMORY

  ; Code: je .L_4229c4	 RIP: 422994	 Bytes: 6
  %loadMem_422994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422994 = call %struct.Memory* @routine_je_.L_4229c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422994, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_422994, %struct.Memory** %MEMORY

  %loadBr_422994 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422994 = icmp eq i8 %loadBr_422994, 1
  br i1 %cmpBr_422994, label %block_.L_4229c4, label %block_42299a

block_42299a:
  ; Code: movq $0x45b093, %rsi	 RIP: 42299a	 Bytes: 10
  %loadMem_42299a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42299a = call %struct.Memory* @routine_movq__0x45b093___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42299a)
  store %struct.Memory* %call_42299a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4229a4	 Bytes: 4
  %loadMem_4229a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229a4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229a4)
  store %struct.Memory* %call_4229a4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4229a8	 Bytes: 4
  %loadMem_4229a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229a8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229a8)
  store %struct.Memory* %call_4229a8, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x78(%rax), %xmm0	 RIP: 4229ac	 Bytes: 5
  %loadMem_4229ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229ac = call %struct.Memory* @routine_cvtss2sd_0x78__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229ac)
  store %struct.Memory* %call_4229ac, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4229b1	 Bytes: 4
  %loadMem_4229b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229b1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229b1)
  store %struct.Memory* %call_4229b1, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x7c(%rax), %xmm1	 RIP: 4229b5	 Bytes: 5
  %loadMem_4229b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229b5 = call %struct.Memory* @routine_cvtss2sd_0x7c__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229b5)
  store %struct.Memory* %call_4229b5, %struct.Memory** %MEMORY

  ; Code: movb $0x2, %al	 RIP: 4229ba	 Bytes: 2
  %loadMem_4229ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229ba = call %struct.Memory* @routine_movb__0x2___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229ba)
  store %struct.Memory* %call_4229ba, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4229bc	 Bytes: 5
  %loadMem1_4229bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4229bc = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4229bc, i64 -136268, i64 5, i64 5)
  store %struct.Memory* %call1_4229bc, %struct.Memory** %MEMORY

  %loadMem2_4229bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4229bc = load i64, i64* %3
  %call2_4229bc = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4229bc, %struct.Memory* %loadMem2_4229bc)
  store %struct.Memory* %call2_4229bc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 4229c1	 Bytes: 3
  %loadMem_4229c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229c1 = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229c1)
  store %struct.Memory* %call_4229c1, %struct.Memory** %MEMORY

  ; Code: .L_4229c4:	 RIP: 4229c4	 Bytes: 0
  br label %block_.L_4229c4
block_.L_4229c4:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4229c4	 Bytes: 4
  %loadMem_4229c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229c4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229c4)
  store %struct.Memory* %call_4229c4, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 4229c8	 Bytes: 6
  %loadMem_4229c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229c8 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229c8)
  store %struct.Memory* %call_4229c8, %struct.Memory** %MEMORY

  ; Code: andl $0x1000, %ecx	 RIP: 4229ce	 Bytes: 6
  %loadMem_4229ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229ce = call %struct.Memory* @routine_andl__0x1000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229ce)
  store %struct.Memory* %call_4229ce, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4229d4	 Bytes: 3
  %loadMem_4229d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229d4 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229d4)
  store %struct.Memory* %call_4229d4, %struct.Memory** %MEMORY

  ; Code: je .L_422a0d	 RIP: 4229d7	 Bytes: 6
  %loadMem_4229d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229d7 = call %struct.Memory* @routine_je_.L_422a0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229d7, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_4229d7, %struct.Memory** %MEMORY

  %loadBr_4229d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4229d7 = icmp eq i8 %loadBr_4229d7, 1
  br i1 %cmpBr_4229d7, label %block_.L_422a0d, label %block_4229dd

block_4229dd:
  ; Code: movq $0x45b06c, %rsi	 RIP: 4229dd	 Bytes: 10
  %loadMem_4229dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229dd = call %struct.Memory* @routine_movq__0x45b06c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229dd)
  store %struct.Memory* %call_4229dd, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4229e7	 Bytes: 4
  %loadMem_4229e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229e7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229e7)
  store %struct.Memory* %call_4229e7, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4229eb	 Bytes: 4
  %loadMem_4229eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229eb = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229eb)
  store %struct.Memory* %call_4229eb, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x80(%rax), %xmm0	 RIP: 4229ef	 Bytes: 8
  %loadMem_4229ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229ef = call %struct.Memory* @routine_cvtss2sd_0x80__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229ef)
  store %struct.Memory* %call_4229ef, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4229f7	 Bytes: 4
  %loadMem_4229f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229f7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229f7)
  store %struct.Memory* %call_4229f7, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x84(%rax), %xmm1	 RIP: 4229fb	 Bytes: 8
  %loadMem_4229fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4229fb = call %struct.Memory* @routine_cvtss2sd_0x84__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4229fb)
  store %struct.Memory* %call_4229fb, %struct.Memory** %MEMORY

  ; Code: movb $0x2, %al	 RIP: 422a03	 Bytes: 2
  %loadMem_422a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a03 = call %struct.Memory* @routine_movb__0x2___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a03)
  store %struct.Memory* %call_422a03, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422a05	 Bytes: 5
  %loadMem1_422a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422a05 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422a05, i64 -136341, i64 5, i64 5)
  store %struct.Memory* %call1_422a05, %struct.Memory** %MEMORY

  %loadMem2_422a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422a05 = load i64, i64* %3
  %call2_422a05 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422a05, %struct.Memory* %loadMem2_422a05)
  store %struct.Memory* %call2_422a05, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 422a0a	 Bytes: 3
  %loadMem_422a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a0a = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a0a)
  store %struct.Memory* %call_422a0a, %struct.Memory** %MEMORY

  ; Code: .L_422a0d:	 RIP: 422a0d	 Bytes: 0
  br label %block_.L_422a0d
block_.L_422a0d:

  ; Code: movq $0x457a8e, %rdi	 RIP: 422a0d	 Bytes: 10
  %loadMem_422a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a0d = call %struct.Memory* @routine_movq__0x457a8e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a0d)
  store %struct.Memory* %call_422a0d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 422a17	 Bytes: 4
  %loadMem_422a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a17 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a17)
  store %struct.Memory* %call_422a17, %struct.Memory** %MEMORY

  ; Code: callq .fputs_plt	 RIP: 422a1b	 Bytes: 5
  %loadMem1_422a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422a1b = call %struct.Memory* @routine_callq_.fputs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422a1b, i64 -136539, i64 5, i64 5)
  store %struct.Memory* %call1_422a1b, %struct.Memory** %MEMORY

  %loadMem2_422a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422a1b = load i64, i64* %3
  %call2_422a1b = call %struct.Memory* @ext_fputs(%struct.State* %0, i64  %loadPC_422a1b, %struct.Memory* %loadMem2_422a1b)
  store %struct.Memory* %call2_422a1b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 422a20	 Bytes: 7
  %loadMem_422a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a20 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a20)
  store %struct.Memory* %call_422a20, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 422a27	 Bytes: 3
  %loadMem_422a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a27 = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a27)
  store %struct.Memory* %call_422a27, %struct.Memory** %MEMORY

  ; Code: .L_422a2a:	 RIP: 422a2a	 Bytes: 0
  br label %block_.L_422a2a
block_.L_422a2a:

  ; Code: cmpl $0x4, -0x2c(%rbp)	 RIP: 422a2a	 Bytes: 4
  %loadMem_422a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a2a = call %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a2a)
  store %struct.Memory* %call_422a2a, %struct.Memory** %MEMORY

  ; Code: jge .L_422abd	 RIP: 422a2e	 Bytes: 6
  %loadMem_422a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a2e = call %struct.Memory* @routine_jge_.L_422abd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a2e, i8* %BRANCH_TAKEN, i64 143, i64 6, i64 6)
  store %struct.Memory* %call_422a2e, %struct.Memory** %MEMORY

  %loadBr_422a2e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422a2e = icmp eq i8 %loadBr_422a2e, 1
  br i1 %cmpBr_422a2e, label %block_.L_422abd, label %block_422a34

block_422a34:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 422a34	 Bytes: 7
  %loadMem_422a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a34 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a34)
  store %struct.Memory* %call_422a34, %struct.Memory** %MEMORY

  ; Code: .L_422a3b:	 RIP: 422a3b	 Bytes: 0
  br label %block_.L_422a3b
block_.L_422a3b:

  ; Code: cmpl $0x2, -0x30(%rbp)	 RIP: 422a3b	 Bytes: 4
  %loadMem_422a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a3b = call %struct.Memory* @routine_cmpl__0x2__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a3b)
  store %struct.Memory* %call_422a3b, %struct.Memory** %MEMORY

  ; Code: jge .L_422aaa	 RIP: 422a3f	 Bytes: 6
  %loadMem_422a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a3f = call %struct.Memory* @routine_jge_.L_422aaa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a3f, i8* %BRANCH_TAKEN, i64 107, i64 6, i64 6)
  store %struct.Memory* %call_422a3f, %struct.Memory** %MEMORY

  %loadBr_422a3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422a3f = icmp eq i8 %loadBr_422a3f, 1
  br i1 %cmpBr_422a3f, label %block_.L_422aaa, label %block_422a45

block_422a45:
  ; Code: movss 0x31cdb(%rip), %xmm1	 RIP: 422a45	 Bytes: 8
  %loadMem_422a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a45 = call %struct.Memory* @routine_movss_0x31cdb__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a45)
  store %struct.Memory* %call_422a45, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422a4d	 Bytes: 4
  %loadMem_422a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a4d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a4d)
  store %struct.Memory* %call_422a4d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 422a51	 Bytes: 4
  %loadMem_422a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a51 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a51)
  store %struct.Memory* %call_422a51, %struct.Memory** %MEMORY

  ; Code: addq $0xac, %rax	 RIP: 422a55	 Bytes: 6
  %loadMem_422a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a55 = call %struct.Memory* @routine_addq__0xac___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a55)
  store %struct.Memory* %call_422a55, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 422a5b	 Bytes: 4
  %loadMem_422a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a5b = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a5b)
  store %struct.Memory* %call_422a5b, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rcx	 RIP: 422a5f	 Bytes: 4
  %loadMem_422a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a5f = call %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a5f)
  store %struct.Memory* %call_422a5f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 422a63	 Bytes: 3
  %loadMem_422a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a63 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a63)
  store %struct.Memory* %call_422a63, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 422a66	 Bytes: 4
  %loadMem_422a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a66 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a66)
  store %struct.Memory* %call_422a66, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 422a6a	 Bytes: 5
  %loadMem_422a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a6a = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a6a)
  store %struct.Memory* %call_422a6a, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x88(%rbp)	 RIP: 422a6f	 Bytes: 7
  %loadMem_422a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a6f = call %struct.Memory* @routine_movq__rdi__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a6f)
  store %struct.Memory* %call_422a6f, %struct.Memory** %MEMORY

  ; Code: callq .prob2ascii	 RIP: 422a76	 Bytes: 5
  %loadMem1_422a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422a76 = call %struct.Memory* @routine_callq_.prob2ascii(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422a76, i64 2298, i64 5, i64 5)
  store %struct.Memory* %call1_422a76, %struct.Memory** %MEMORY

  %loadMem2_422a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422a76 = load i64, i64* %3
  %call2_422a76 = call %struct.Memory* @sub_423370.prob2ascii(%struct.State* %0, i64  %loadPC_422a76, %struct.Memory* %loadMem2_422a76)
  store %struct.Memory* %call2_422a76, %struct.Memory** %MEMORY

  ; Code: movq $0x457b2c, %rsi	 RIP: 422a7b	 Bytes: 10
  %loadMem_422a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a7b = call %struct.Memory* @routine_movq__0x457b2c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a7b)
  store %struct.Memory* %call_422a7b, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rdi	 RIP: 422a85	 Bytes: 7
  %loadMem_422a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a85 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a85)
  store %struct.Memory* %call_422a85, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 422a8c	 Bytes: 3
  %loadMem_422a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a8c = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a8c)
  store %struct.Memory* %call_422a8c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422a8f	 Bytes: 2
  %loadMem_422a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a8f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a8f)
  store %struct.Memory* %call_422a8f, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422a91	 Bytes: 5
  %loadMem1_422a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422a91 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422a91, i64 -136481, i64 5, i64 5)
  store %struct.Memory* %call1_422a91, %struct.Memory** %MEMORY

  %loadMem2_422a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422a91 = load i64, i64* %3
  %call2_422a91 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422a91, %struct.Memory* %loadMem2_422a91)
  store %struct.Memory* %call2_422a91, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8c(%rbp)	 RIP: 422a96	 Bytes: 6
  %loadMem_422a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a96 = call %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a96)
  store %struct.Memory* %call_422a96, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 422a9c	 Bytes: 3
  %loadMem_422a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a9c = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a9c)
  store %struct.Memory* %call_422a9c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 422a9f	 Bytes: 3
  %loadMem_422a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422a9f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422a9f)
  store %struct.Memory* %call_422a9f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 422aa2	 Bytes: 3
  %loadMem_422aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422aa2 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422aa2)
  store %struct.Memory* %call_422aa2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422a3b	 RIP: 422aa5	 Bytes: 5
  %loadMem_422aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422aa5 = call %struct.Memory* @routine_jmpq_.L_422a3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422aa5, i64 -106, i64 5)
  store %struct.Memory* %call_422aa5, %struct.Memory** %MEMORY

  br label %block_.L_422a3b

  ; Code: .L_422aaa:	 RIP: 422aaa	 Bytes: 0
block_.L_422aaa:

  ; Code: jmpq .L_422aaf	 RIP: 422aaa	 Bytes: 5
  %loadMem_422aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422aaa = call %struct.Memory* @routine_jmpq_.L_422aaf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422aaa, i64 5, i64 5)
  store %struct.Memory* %call_422aaa, %struct.Memory** %MEMORY

  br label %block_.L_422aaf

  ; Code: .L_422aaf:	 RIP: 422aaf	 Bytes: 0
block_.L_422aaf:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 422aaf	 Bytes: 3
  %loadMem_422aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422aaf = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422aaf)
  store %struct.Memory* %call_422aaf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 422ab2	 Bytes: 3
  %loadMem_422ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ab2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ab2)
  store %struct.Memory* %call_422ab2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 422ab5	 Bytes: 3
  %loadMem_422ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ab5 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ab5)
  store %struct.Memory* %call_422ab5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422a2a	 RIP: 422ab8	 Bytes: 5
  %loadMem_422ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ab8 = call %struct.Memory* @routine_jmpq_.L_422a2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ab8, i64 -142, i64 5)
  store %struct.Memory* %call_422ab8, %struct.Memory** %MEMORY

  br label %block_.L_422a2a

  ; Code: .L_422abd:	 RIP: 422abd	 Bytes: 0
block_.L_422abd:

  ; Code: movq $0x45a1f7, %rdi	 RIP: 422abd	 Bytes: 10
  %loadMem_422abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422abd = call %struct.Memory* @routine_movq__0x45a1f7___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422abd)
  store %struct.Memory* %call_422abd, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 422ac7	 Bytes: 4
  %loadMem_422ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ac7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ac7)
  store %struct.Memory* %call_422ac7, %struct.Memory** %MEMORY

  ; Code: callq .fputs_plt	 RIP: 422acb	 Bytes: 5
  %loadMem1_422acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422acb = call %struct.Memory* @routine_callq_.fputs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422acb, i64 -136715, i64 5, i64 5)
  store %struct.Memory* %call1_422acb, %struct.Memory** %MEMORY

  %loadMem2_422acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422acb = load i64, i64* %3
  %call2_422acb = call %struct.Memory* @ext_fputs(%struct.State* %0, i64  %loadPC_422acb, %struct.Memory* %loadMem2_422acb)
  store %struct.Memory* %call2_422acb, %struct.Memory** %MEMORY

  ; Code: movq $0x457a96, %rsi	 RIP: 422ad0	 Bytes: 10
  %loadMem_422ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ad0 = call %struct.Memory* @routine_movq__0x457a96___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ad0)
  store %struct.Memory* %call_422ad0, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422ada	 Bytes: 4
  %loadMem_422ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ada = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ada)
  store %struct.Memory* %call_422ada, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x90(%rbp)	 RIP: 422ade	 Bytes: 6
  %loadMem_422ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ade = call %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ade)
  store %struct.Memory* %call_422ade, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422ae4	 Bytes: 2
  %loadMem_422ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ae4 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ae4)
  store %struct.Memory* %call_422ae4, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422ae6	 Bytes: 5
  %loadMem1_422ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422ae6 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422ae6, i64 -136566, i64 5, i64 5)
  store %struct.Memory* %call1_422ae6, %struct.Memory** %MEMORY

  %loadMem2_422ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422ae6 = load i64, i64* %3
  %call2_422ae6 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422ae6, %struct.Memory* %loadMem2_422ae6)
  store %struct.Memory* %call2_422ae6, %struct.Memory** %MEMORY

  ; Code: movss 0x31c35(%rip), %xmm1	 RIP: 422aeb	 Bytes: 8
  %loadMem_422aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422aeb = call %struct.Memory* @routine_movss_0x31c35__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422aeb)
  store %struct.Memory* %call_422aeb, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422af3	 Bytes: 4
  %loadMem_422af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422af3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422af3)
  store %struct.Memory* %call_422af3, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rsi	 RIP: 422af7	 Bytes: 4
  %loadMem_422af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422af7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422af7)
  store %struct.Memory* %call_422af7, %struct.Memory** %MEMORY

  ; Code: movss 0x130(%rsi), %xmm0	 RIP: 422afb	 Bytes: 8
  %loadMem_422afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422afb = call %struct.Memory* @routine_movss_0x130__rsi____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422afb)
  store %struct.Memory* %call_422afb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x94(%rbp)	 RIP: 422b03	 Bytes: 6
  %loadMem_422b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b03 = call %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b03)
  store %struct.Memory* %call_422b03, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xa0(%rbp)	 RIP: 422b09	 Bytes: 7
  %loadMem_422b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b09 = call %struct.Memory* @routine_movq__rdi__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b09)
  store %struct.Memory* %call_422b09, %struct.Memory** %MEMORY

  ; Code: callq .prob2ascii	 RIP: 422b10	 Bytes: 5
  %loadMem1_422b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422b10 = call %struct.Memory* @routine_callq_.prob2ascii(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422b10, i64 2144, i64 5, i64 5)
  store %struct.Memory* %call1_422b10, %struct.Memory** %MEMORY

  %loadMem2_422b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422b10 = load i64, i64* %3
  %call2_422b10 = call %struct.Memory* @sub_423370.prob2ascii(%struct.State* %0, i64  %loadPC_422b10, %struct.Memory* %loadMem2_422b10)
  store %struct.Memory* %call2_422b10, %struct.Memory** %MEMORY

  ; Code: movq $0x457b2c, %rsi	 RIP: 422b15	 Bytes: 10
  %loadMem_422b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b15 = call %struct.Memory* @routine_movq__0x457b2c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b15)
  store %struct.Memory* %call_422b15, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rdi	 RIP: 422b1f	 Bytes: 7
  %loadMem_422b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b1f = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b1f)
  store %struct.Memory* %call_422b1f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 422b26	 Bytes: 3
  %loadMem_422b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b26 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b26)
  store %struct.Memory* %call_422b26, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422b29	 Bytes: 2
  %loadMem_422b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b29 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b29)
  store %struct.Memory* %call_422b29, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422b2b	 Bytes: 5
  %loadMem1_422b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422b2b = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422b2b, i64 -136635, i64 5, i64 5)
  store %struct.Memory* %call1_422b2b, %struct.Memory** %MEMORY

  %loadMem2_422b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422b2b = load i64, i64* %3
  %call2_422b2b = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422b2b, %struct.Memory* %loadMem2_422b2b)
  store %struct.Memory* %call2_422b2b, %struct.Memory** %MEMORY

  ; Code: movss 0x31bf0(%rip), %xmm1	 RIP: 422b30	 Bytes: 8
  %loadMem_422b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b30 = call %struct.Memory* @routine_movss_0x31bf0__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b30)
  store %struct.Memory* %call_422b30, %struct.Memory** %MEMORY

  ; Code: movsd 0x31ca0(%rip), %xmm0	 RIP: 422b38	 Bytes: 8
  %loadMem_422b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b38 = call %struct.Memory* @routine_movsd_0x31ca0__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b38)
  store %struct.Memory* %call_422b38, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422b40	 Bytes: 4
  %loadMem_422b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b40 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b40)
  store %struct.Memory* %call_422b40, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 422b44	 Bytes: 4
  %loadMem_422b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b44 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b44)
  store %struct.Memory* %call_422b44, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x130(%rdx), %xmm2	 RIP: 422b48	 Bytes: 8
  %loadMem_422b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b48 = call %struct.Memory* @routine_cvtss2sd_0x130__rdx____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b48)
  store %struct.Memory* %call_422b48, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm0	 RIP: 422b50	 Bytes: 4
  %loadMem_422b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b50 = call %struct.Memory* @routine_subsd__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b50)
  store %struct.Memory* %call_422b50, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 422b54	 Bytes: 4
  %loadMem_422b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b54 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b54)
  store %struct.Memory* %call_422b54, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa4(%rbp)	 RIP: 422b58	 Bytes: 6
  %loadMem_422b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b58 = call %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b58)
  store %struct.Memory* %call_422b58, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xb0(%rbp)	 RIP: 422b5e	 Bytes: 7
  %loadMem_422b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b5e = call %struct.Memory* @routine_movq__rdi__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b5e)
  store %struct.Memory* %call_422b5e, %struct.Memory** %MEMORY

  ; Code: callq .prob2ascii	 RIP: 422b65	 Bytes: 5
  %loadMem1_422b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422b65 = call %struct.Memory* @routine_callq_.prob2ascii(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422b65, i64 2059, i64 5, i64 5)
  store %struct.Memory* %call1_422b65, %struct.Memory** %MEMORY

  %loadMem2_422b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422b65 = load i64, i64* %3
  %call2_422b65 = call %struct.Memory* @sub_423370.prob2ascii(%struct.State* %0, i64  %loadPC_422b65, %struct.Memory* %loadMem2_422b65)
  store %struct.Memory* %call2_422b65, %struct.Memory** %MEMORY

  ; Code: movq $0x456fbb, %rsi	 RIP: 422b6a	 Bytes: 10
  %loadMem_422b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b6a = call %struct.Memory* @routine_movq__0x456fbb___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b6a)
  store %struct.Memory* %call_422b6a, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rdi	 RIP: 422b74	 Bytes: 7
  %loadMem_422b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b74 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b74)
  store %struct.Memory* %call_422b74, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 422b7b	 Bytes: 3
  %loadMem_422b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b7b = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b7b)
  store %struct.Memory* %call_422b7b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422b7e	 Bytes: 2
  %loadMem_422b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b7e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b7e)
  store %struct.Memory* %call_422b7e, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422b80	 Bytes: 5
  %loadMem1_422b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422b80 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422b80, i64 -136720, i64 5, i64 5)
  store %struct.Memory* %call1_422b80, %struct.Memory** %MEMORY

  %loadMem2_422b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422b80 = load i64, i64* %3
  %call2_422b80 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422b80, %struct.Memory* %loadMem2_422b80)
  store %struct.Memory* %call2_422b80, %struct.Memory** %MEMORY

  ; Code: movq $0x457a9d, %rdi	 RIP: 422b85	 Bytes: 10
  %loadMem_422b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b85 = call %struct.Memory* @routine_movq__0x457a9d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b85)
  store %struct.Memory* %call_422b85, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 422b8f	 Bytes: 4
  %loadMem_422b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b8f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b8f)
  store %struct.Memory* %call_422b8f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb4(%rbp)	 RIP: 422b93	 Bytes: 6
  %loadMem_422b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b93 = call %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b93)
  store %struct.Memory* %call_422b93, %struct.Memory** %MEMORY

  ; Code: callq .fputs_plt	 RIP: 422b99	 Bytes: 5
  %loadMem1_422b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422b99 = call %struct.Memory* @routine_callq_.fputs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422b99, i64 -136921, i64 5, i64 5)
  store %struct.Memory* %call1_422b99, %struct.Memory** %MEMORY

  %loadMem2_422b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422b99 = load i64, i64* %3
  %call2_422b99 = call %struct.Memory* @ext_fputs(%struct.State* %0, i64  %loadPC_422b99, %struct.Memory* %loadMem2_422b99)
  store %struct.Memory* %call2_422b99, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 422b9e	 Bytes: 7
  %loadMem_422b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422b9e = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422b9e)
  store %struct.Memory* %call_422b9e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb8(%rbp)	 RIP: 422ba5	 Bytes: 6
  %loadMem_422ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ba5 = call %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ba5)
  store %struct.Memory* %call_422ba5, %struct.Memory** %MEMORY

  ; Code: .L_422bab:	 RIP: 422bab	 Bytes: 0
  br label %block_.L_422bab
block_.L_422bab:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 422bab	 Bytes: 3
  %loadMem_422bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422bab = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422bab)
  store %struct.Memory* %call_422bab, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 422bae	 Bytes: 7
  %loadMem_422bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422bae = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422bae)
  store %struct.Memory* %call_422bae, %struct.Memory** %MEMORY

  ; Code: jge .L_422c33	 RIP: 422bb5	 Bytes: 6
  %loadMem_422bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422bb5 = call %struct.Memory* @routine_jge_.L_422c33(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422bb5, i8* %BRANCH_TAKEN, i64 126, i64 6, i64 6)
  store %struct.Memory* %call_422bb5, %struct.Memory** %MEMORY

  %loadBr_422bb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422bb5 = icmp eq i8 %loadBr_422bb5, 1
  br i1 %cmpBr_422bb5, label %block_.L_422c33, label %block_422bbb

block_422bbb:
  ; Code: movss 0x31b65(%rip), %xmm0	 RIP: 422bbb	 Bytes: 8
  %loadMem_422bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422bbb = call %struct.Memory* @routine_movss_0x31b65__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422bbb)
  store %struct.Memory* %call_422bbb, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422bc3	 Bytes: 4
  %loadMem_422bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422bc3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422bc3)
  store %struct.Memory* %call_422bc3, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 422bc7	 Bytes: 4
  %loadMem_422bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422bc7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422bc7)
  store %struct.Memory* %call_422bc7, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 422bcb	 Bytes: 4
  %loadMem_422bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422bcb = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422bcb)
  store %struct.Memory* %call_422bcb, %struct.Memory** %MEMORY

  ; Code: movss 0xe0(%rax,%rcx,4), %xmm1	 RIP: 422bcf	 Bytes: 9
  %loadMem_422bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422bcf = call %struct.Memory* @routine_movss_0xe0__rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422bcf)
  store %struct.Memory* %call_422bcf, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x677060, %xmm2	 RIP: 422bd8	 Bytes: 9
  %loadMem_422bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422bd8 = call %struct.Memory* @routine_cvtsi2ssl_0x677060___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422bd8)
  store %struct.Memory* %call_422bd8, %struct.Memory** %MEMORY

  ; Code: divss %xmm2, %xmm0	 RIP: 422be1	 Bytes: 4
  %loadMem_422be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422be1 = call %struct.Memory* @routine_divss__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422be1)
  store %struct.Memory* %call_422be1, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0xbc(%rbp)	 RIP: 422be5	 Bytes: 8
  %loadMem_422be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422be5 = call %struct.Memory* @routine_movss__xmm0__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422be5)
  store %struct.Memory* %call_422be5, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 422bed	 Bytes: 3
  %loadMem_422bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422bed = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422bed)
  store %struct.Memory* %call_422bed, %struct.Memory** %MEMORY

  ; Code: movss -0xbc(%rbp), %xmm1	 RIP: 422bf0	 Bytes: 8
  %loadMem_422bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422bf0 = call %struct.Memory* @routine_movss_MINUS0xbc__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422bf0)
  store %struct.Memory* %call_422bf0, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xc8(%rbp)	 RIP: 422bf8	 Bytes: 7
  %loadMem_422bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422bf8 = call %struct.Memory* @routine_movq__rdi__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422bf8)
  store %struct.Memory* %call_422bf8, %struct.Memory** %MEMORY

  ; Code: callq .prob2ascii	 RIP: 422bff	 Bytes: 5
  %loadMem1_422bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422bff = call %struct.Memory* @routine_callq_.prob2ascii(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422bff, i64 1905, i64 5, i64 5)
  store %struct.Memory* %call1_422bff, %struct.Memory** %MEMORY

  %loadMem2_422bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422bff = load i64, i64* %3
  %call2_422bff = call %struct.Memory* @sub_423370.prob2ascii(%struct.State* %0, i64  %loadPC_422bff, %struct.Memory* %loadMem2_422bff)
  store %struct.Memory* %call2_422bff, %struct.Memory** %MEMORY

  ; Code: movq $0x457b2c, %rsi	 RIP: 422c04	 Bytes: 10
  %loadMem_422c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c04 = call %struct.Memory* @routine_movq__0x457b2c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c04)
  store %struct.Memory* %call_422c04, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rdi	 RIP: 422c0e	 Bytes: 7
  %loadMem_422c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c0e = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c0e)
  store %struct.Memory* %call_422c0e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 422c15	 Bytes: 3
  %loadMem_422c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c15 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c15)
  store %struct.Memory* %call_422c15, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422c18	 Bytes: 2
  %loadMem_422c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c18 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c18)
  store %struct.Memory* %call_422c18, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422c1a	 Bytes: 5
  %loadMem1_422c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422c1a = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422c1a, i64 -136874, i64 5, i64 5)
  store %struct.Memory* %call1_422c1a, %struct.Memory** %MEMORY

  %loadMem2_422c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422c1a = load i64, i64* %3
  %call2_422c1a = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422c1a, %struct.Memory* %loadMem2_422c1a)
  store %struct.Memory* %call2_422c1a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xcc(%rbp)	 RIP: 422c1f	 Bytes: 6
  %loadMem_422c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c1f = call %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c1f)
  store %struct.Memory* %call_422c1f, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 422c25	 Bytes: 3
  %loadMem_422c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c25 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c25)
  store %struct.Memory* %call_422c25, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 422c28	 Bytes: 3
  %loadMem_422c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c28 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c28)
  store %struct.Memory* %call_422c28, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 422c2b	 Bytes: 3
  %loadMem_422c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c2b = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c2b)
  store %struct.Memory* %call_422c2b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422bab	 RIP: 422c2e	 Bytes: 5
  %loadMem_422c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c2e = call %struct.Memory* @routine_jmpq_.L_422bab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c2e, i64 -131, i64 5)
  store %struct.Memory* %call_422c2e, %struct.Memory** %MEMORY

  br label %block_.L_422bab

  ; Code: .L_422c33:	 RIP: 422c33	 Bytes: 0
block_.L_422c33:

  ; Code: movq $0x45a1f7, %rdi	 RIP: 422c33	 Bytes: 10
  %loadMem_422c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c33 = call %struct.Memory* @routine_movq__0x45a1f7___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c33)
  store %struct.Memory* %call_422c33, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 422c3d	 Bytes: 4
  %loadMem_422c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c3d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c3d)
  store %struct.Memory* %call_422c3d, %struct.Memory** %MEMORY

  ; Code: callq .fputs_plt	 RIP: 422c41	 Bytes: 5
  %loadMem1_422c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422c41 = call %struct.Memory* @routine_callq_.fputs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422c41, i64 -137089, i64 5, i64 5)
  store %struct.Memory* %call1_422c41, %struct.Memory** %MEMORY

  %loadMem2_422c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422c41 = load i64, i64* %3
  %call2_422c41 = call %struct.Memory* @ext_fputs(%struct.State* %0, i64  %loadPC_422c41, %struct.Memory* %loadMem2_422c41)
  store %struct.Memory* %call2_422c41, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rsi	 RIP: 422c46	 Bytes: 4
  %loadMem_422c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c46 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c46)
  store %struct.Memory* %call_422c46, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rsi), %ecx	 RIP: 422c4a	 Bytes: 6
  %loadMem_422c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c4a = call %struct.Memory* @routine_movl_0x1c8__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c4a)
  store %struct.Memory* %call_422c4a, %struct.Memory** %MEMORY

  ; Code: andl $0x80, %ecx	 RIP: 422c50	 Bytes: 6
  %loadMem_422c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c50 = call %struct.Memory* @routine_andl__0x80___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c50)
  store %struct.Memory* %call_422c50, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 422c56	 Bytes: 3
  %loadMem_422c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c56 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c56)
  store %struct.Memory* %call_422c56, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd0(%rbp)	 RIP: 422c59	 Bytes: 6
  %loadMem_422c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c59 = call %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c59)
  store %struct.Memory* %call_422c59, %struct.Memory** %MEMORY

  ; Code: je .L_422c98	 RIP: 422c5f	 Bytes: 6
  %loadMem_422c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c5f = call %struct.Memory* @routine_je_.L_422c98(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c5f, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_422c5f, %struct.Memory** %MEMORY

  %loadBr_422c5f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422c5f = icmp eq i8 %loadBr_422c5f, 1
  br i1 %cmpBr_422c5f, label %block_.L_422c98, label %block_422c65

block_422c65:
  ; Code: movq $0x457aa4, %rsi	 RIP: 422c65	 Bytes: 10
  %loadMem_422c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c65 = call %struct.Memory* @routine_movq__0x457aa4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c65)
  store %struct.Memory* %call_422c65, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422c6f	 Bytes: 4
  %loadMem_422c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c6f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c6f)
  store %struct.Memory* %call_422c6f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 422c73	 Bytes: 4
  %loadMem_422c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c73 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c73)
  store %struct.Memory* %call_422c73, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x1c0(%rax), %xmm0	 RIP: 422c77	 Bytes: 8
  %loadMem_422c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c77 = call %struct.Memory* @routine_cvtss2sd_0x1c0__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c77)
  store %struct.Memory* %call_422c77, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 422c7f	 Bytes: 4
  %loadMem_422c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c7f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c7f)
  store %struct.Memory* %call_422c7f, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x1c4(%rax), %xmm1	 RIP: 422c83	 Bytes: 8
  %loadMem_422c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c83 = call %struct.Memory* @routine_cvtss2sd_0x1c4__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c83)
  store %struct.Memory* %call_422c83, %struct.Memory** %MEMORY

  ; Code: movb $0x2, %al	 RIP: 422c8b	 Bytes: 2
  %loadMem_422c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c8b = call %struct.Memory* @routine_movb__0x2___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c8b)
  store %struct.Memory* %call_422c8b, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422c8d	 Bytes: 5
  %loadMem1_422c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422c8d = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422c8d, i64 -136989, i64 5, i64 5)
  store %struct.Memory* %call1_422c8d, %struct.Memory** %MEMORY

  %loadMem2_422c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422c8d = load i64, i64* %3
  %call2_422c8d = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422c8d, %struct.Memory* %loadMem2_422c8d)
  store %struct.Memory* %call2_422c8d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd4(%rbp)	 RIP: 422c92	 Bytes: 6
  %loadMem_422c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c92 = call %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c92)
  store %struct.Memory* %call_422c92, %struct.Memory** %MEMORY

  ; Code: .L_422c98:	 RIP: 422c98	 Bytes: 0
  br label %block_.L_422c98
block_.L_422c98:

  ; Code: movq $0x457ab5, %rsi	 RIP: 422c98	 Bytes: 10
  %loadMem_422c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422c98 = call %struct.Memory* @routine_movq__0x457ab5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422c98)
  store %struct.Memory* %call_422c98, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422ca2	 Bytes: 4
  %loadMem_422ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ca2 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ca2)
  store %struct.Memory* %call_422ca2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422ca6	 Bytes: 2
  %loadMem_422ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ca6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ca6)
  store %struct.Memory* %call_422ca6, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422ca8	 Bytes: 5
  %loadMem1_422ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422ca8 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422ca8, i64 -137016, i64 5, i64 5)
  store %struct.Memory* %call1_422ca8, %struct.Memory** %MEMORY

  %loadMem2_422ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422ca8 = load i64, i64* %3
  %call2_422ca8 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422ca8, %struct.Memory* %loadMem2_422ca8)
  store %struct.Memory* %call2_422ca8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 422cad	 Bytes: 7
  %loadMem_422cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422cad = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422cad)
  store %struct.Memory* %call_422cad, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd8(%rbp)	 RIP: 422cb4	 Bytes: 6
  %loadMem_422cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422cb4 = call %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422cb4)
  store %struct.Memory* %call_422cb4, %struct.Memory** %MEMORY

  ; Code: .L_422cba:	 RIP: 422cba	 Bytes: 0
  br label %block_.L_422cba
block_.L_422cba:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 422cba	 Bytes: 3
  %loadMem_422cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422cba = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422cba)
  store %struct.Memory* %call_422cba, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 422cbd	 Bytes: 7
  %loadMem_422cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422cbd = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422cbd)
  store %struct.Memory* %call_422cbd, %struct.Memory** %MEMORY

  ; Code: jge .L_422cff	 RIP: 422cc4	 Bytes: 6
  %loadMem_422cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422cc4 = call %struct.Memory* @routine_jge_.L_422cff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422cc4, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_422cc4, %struct.Memory** %MEMORY

  %loadBr_422cc4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422cc4 = icmp eq i8 %loadBr_422cc4, 1
  br i1 %cmpBr_422cc4, label %block_.L_422cff, label %block_422cca

block_422cca:
  ; Code: movq $0x457abf, %rsi	 RIP: 422cca	 Bytes: 10
  %loadMem_422cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422cca = call %struct.Memory* @routine_movq__0x457abf___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422cca)
  store %struct.Memory* %call_422cca, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422cd4	 Bytes: 4
  %loadMem_422cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422cd4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422cd4)
  store %struct.Memory* %call_422cd4, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rax	 RIP: 422cd8	 Bytes: 4
  %loadMem_422cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422cd8 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422cd8)
  store %struct.Memory* %call_422cd8, %struct.Memory** %MEMORY

  ; Code: movsbl 0x676fe0(,%rax,1), %edx	 RIP: 422cdc	 Bytes: 8
  %loadMem_422cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422cdc = call %struct.Memory* @routine_movsbl_0x676fe0___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422cdc)
  store %struct.Memory* %call_422cdc, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422ce4	 Bytes: 2
  %loadMem_422ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ce4 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ce4)
  store %struct.Memory* %call_422ce4, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422ce6	 Bytes: 5
  %loadMem1_422ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422ce6 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422ce6, i64 -137078, i64 5, i64 5)
  store %struct.Memory* %call1_422ce6, %struct.Memory** %MEMORY

  %loadMem2_422ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422ce6 = load i64, i64* %3
  %call2_422ce6 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422ce6, %struct.Memory* %loadMem2_422ce6)
  store %struct.Memory* %call2_422ce6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xdc(%rbp)	 RIP: 422ceb	 Bytes: 6
  %loadMem_422ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ceb = call %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ceb)
  store %struct.Memory* %call_422ceb, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 422cf1	 Bytes: 3
  %loadMem_422cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422cf1 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422cf1)
  store %struct.Memory* %call_422cf1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 422cf4	 Bytes: 3
  %loadMem_422cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422cf4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422cf4)
  store %struct.Memory* %call_422cf4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 422cf7	 Bytes: 3
  %loadMem_422cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422cf7 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422cf7)
  store %struct.Memory* %call_422cf7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422cba	 RIP: 422cfa	 Bytes: 5
  %loadMem_422cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422cfa = call %struct.Memory* @routine_jmpq_.L_422cba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422cfa, i64 -64, i64 5)
  store %struct.Memory* %call_422cfa, %struct.Memory** %MEMORY

  br label %block_.L_422cba

  ; Code: .L_422cff:	 RIP: 422cff	 Bytes: 0
block_.L_422cff:

  ; Code: movq $0x45a1f7, %rsi	 RIP: 422cff	 Bytes: 10
  %loadMem_422cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422cff = call %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422cff)
  store %struct.Memory* %call_422cff, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422d09	 Bytes: 4
  %loadMem_422d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d09 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d09)
  store %struct.Memory* %call_422d09, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422d0d	 Bytes: 2
  %loadMem_422d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d0d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d0d)
  store %struct.Memory* %call_422d0d, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422d0f	 Bytes: 5
  %loadMem1_422d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422d0f = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422d0f, i64 -137119, i64 5, i64 5)
  store %struct.Memory* %call1_422d0f, %struct.Memory** %MEMORY

  %loadMem2_422d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422d0f = load i64, i64* %3
  %call2_422d0f = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422d0f, %struct.Memory* %loadMem2_422d0f)
  store %struct.Memory* %call2_422d0f, %struct.Memory** %MEMORY

  ; Code: movq $0x457ac8, %rsi	 RIP: 422d14	 Bytes: 10
  %loadMem_422d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d14 = call %struct.Memory* @routine_movq__0x457ac8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d14)
  store %struct.Memory* %call_422d14, %struct.Memory** %MEMORY

  ; Code: movq $0x457af4, %rdx	 RIP: 422d1e	 Bytes: 10
  %loadMem_422d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d1e = call %struct.Memory* @routine_movq__0x457af4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d1e)
  store %struct.Memory* %call_422d1e, %struct.Memory** %MEMORY

  ; Code: movq $0x457af9, %rcx	 RIP: 422d28	 Bytes: 10
  %loadMem_422d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d28 = call %struct.Memory* @routine_movq__0x457af9___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d28)
  store %struct.Memory* %call_422d28, %struct.Memory** %MEMORY

  ; Code: movq $0x457afe, %r8	 RIP: 422d32	 Bytes: 10
  %loadMem_422d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d32 = call %struct.Memory* @routine_movq__0x457afe___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d32)
  store %struct.Memory* %call_422d32, %struct.Memory** %MEMORY

  ; Code: movq $0x457b03, %r9	 RIP: 422d3c	 Bytes: 10
  %loadMem_422d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d3c = call %struct.Memory* @routine_movq__0x457b03___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d3c)
  store %struct.Memory* %call_422d3c, %struct.Memory** %MEMORY

  ; Code: movq $0x457b08, %rdi	 RIP: 422d46	 Bytes: 10
  %loadMem_422d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d46 = call %struct.Memory* @routine_movq__0x457b08___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d46)
  store %struct.Memory* %call_422d46, %struct.Memory** %MEMORY

  ; Code: movq $0x457b0d, %r10	 RIP: 422d50	 Bytes: 10
  %loadMem_422d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d50 = call %struct.Memory* @routine_movq__0x457b0d___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d50)
  store %struct.Memory* %call_422d50, %struct.Memory** %MEMORY

  ; Code: movq $0x457b12, %r11	 RIP: 422d5a	 Bytes: 10
  %loadMem_422d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d5a = call %struct.Memory* @routine_movq__0x457b12___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d5a)
  store %struct.Memory* %call_422d5a, %struct.Memory** %MEMORY

  ; Code: movq $0x457b17, %rbx	 RIP: 422d64	 Bytes: 10
  %loadMem_422d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d64 = call %struct.Memory* @routine_movq__0x457b17___rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d64)
  store %struct.Memory* %call_422d64, %struct.Memory** %MEMORY

  ; Code: movq $0x457b1c, %r14	 RIP: 422d6e	 Bytes: 10
  %loadMem_422d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d6e = call %struct.Memory* @routine_movq__0x457b1c___r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d6e)
  store %struct.Memory* %call_422d6e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %r15	 RIP: 422d78	 Bytes: 4
  %loadMem_422d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d78 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d78)
  store %struct.Memory* %call_422d78, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xe8(%rbp)	 RIP: 422d7c	 Bytes: 7
  %loadMem_422d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d7c = call %struct.Memory* @routine_movq__rdi__MINUS0xe8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d7c)
  store %struct.Memory* %call_422d7c, %struct.Memory** %MEMORY

  ; Code: movq %r15, %rdi	 RIP: 422d83	 Bytes: 3
  %loadMem_422d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d83 = call %struct.Memory* @routine_movq__r15___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d83)
  store %struct.Memory* %call_422d83, %struct.Memory** %MEMORY

  ; Code: movq -0xe8(%rbp), %r15	 RIP: 422d86	 Bytes: 7
  %loadMem_422d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d86 = call %struct.Memory* @routine_movq_MINUS0xe8__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d86)
  store %struct.Memory* %call_422d86, %struct.Memory** %MEMORY

  ; Code: movq %r15, (%rsp)	 RIP: 422d8d	 Bytes: 4
  %loadMem_422d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d8d = call %struct.Memory* @routine_movq__r15____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d8d)
  store %struct.Memory* %call_422d8d, %struct.Memory** %MEMORY

  ; Code: movq %r10, 0x8(%rsp)	 RIP: 422d91	 Bytes: 5
  %loadMem_422d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d91 = call %struct.Memory* @routine_movq__r10__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d91)
  store %struct.Memory* %call_422d91, %struct.Memory** %MEMORY

  ; Code: movq %r11, 0x10(%rsp)	 RIP: 422d96	 Bytes: 5
  %loadMem_422d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d96 = call %struct.Memory* @routine_movq__r11__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d96)
  store %struct.Memory* %call_422d96, %struct.Memory** %MEMORY

  ; Code: movq %rbx, 0x18(%rsp)	 RIP: 422d9b	 Bytes: 5
  %loadMem_422d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422d9b = call %struct.Memory* @routine_movq__rbx__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422d9b)
  store %struct.Memory* %call_422d9b, %struct.Memory** %MEMORY

  ; Code: movq %r14, 0x20(%rsp)	 RIP: 422da0	 Bytes: 5
  %loadMem_422da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422da0 = call %struct.Memory* @routine_movq__r14__0x20__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422da0)
  store %struct.Memory* %call_422da0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xec(%rbp)	 RIP: 422da5	 Bytes: 6
  %loadMem_422da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422da5 = call %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422da5)
  store %struct.Memory* %call_422da5, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422dab	 Bytes: 2
  %loadMem_422dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422dab = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422dab)
  store %struct.Memory* %call_422dab, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422dad	 Bytes: 5
  %loadMem1_422dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422dad = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422dad, i64 -137277, i64 5, i64 5)
  store %struct.Memory* %call1_422dad, %struct.Memory** %MEMORY

  %loadMem2_422dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422dad = load i64, i64* %3
  %call2_422dad = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422dad, %struct.Memory* %loadMem2_422dad)
  store %struct.Memory* %call2_422dad, %struct.Memory** %MEMORY

  ; Code: movss 0x3196e(%rip), %xmm0	 RIP: 422db2	 Bytes: 8
  %loadMem_422db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422db2 = call %struct.Memory* @routine_movss_0x3196e__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422db2)
  store %struct.Memory* %call_422db2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422dba	 Bytes: 4
  %loadMem_422dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422dba = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422dba)
  store %struct.Memory* %call_422dba, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 422dbe	 Bytes: 4
  %loadMem_422dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422dbe = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422dbe)
  store %struct.Memory* %call_422dbe, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 422dc2	 Bytes: 3
  %loadMem_422dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422dc2 = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422dc2)
  store %struct.Memory* %call_422dc2, %struct.Memory** %MEMORY

  ; Code: subss 0xa8(%rcx), %xmm1	 RIP: 422dc5	 Bytes: 8
  %loadMem_422dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422dc5 = call %struct.Memory* @routine_subss_0xa8__rcx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422dc5)
  store %struct.Memory* %call_422dc5, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0xf0(%rbp)	 RIP: 422dcd	 Bytes: 8
  %loadMem_422dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422dcd = call %struct.Memory* @routine_movss__xmm0__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422dcd)
  store %struct.Memory* %call_422dcd, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 422dd5	 Bytes: 3
  %loadMem_422dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422dd5 = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422dd5)
  store %struct.Memory* %call_422dd5, %struct.Memory** %MEMORY

  ; Code: movss -0xf0(%rbp), %xmm1	 RIP: 422dd8	 Bytes: 8
  %loadMem_422dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422dd8 = call %struct.Memory* @routine_movss_MINUS0xf0__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422dd8)
  store %struct.Memory* %call_422dd8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xf4(%rbp)	 RIP: 422de0	 Bytes: 6
  %loadMem_422de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422de0 = call %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422de0)
  store %struct.Memory* %call_422de0, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x100(%rbp)	 RIP: 422de6	 Bytes: 7
  %loadMem_422de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422de6 = call %struct.Memory* @routine_movq__rdi__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422de6)
  store %struct.Memory* %call_422de6, %struct.Memory** %MEMORY

  ; Code: callq .prob2ascii	 RIP: 422ded	 Bytes: 5
  %loadMem1_422ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422ded = call %struct.Memory* @routine_callq_.prob2ascii(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422ded, i64 1411, i64 5, i64 5)
  store %struct.Memory* %call1_422ded, %struct.Memory** %MEMORY

  %loadMem2_422ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422ded = load i64, i64* %3
  %call2_422ded = call %struct.Memory* @sub_423370.prob2ascii(%struct.State* %0, i64  %loadPC_422ded, %struct.Memory* %loadMem2_422ded)
  store %struct.Memory* %call2_422ded, %struct.Memory** %MEMORY

  ; Code: movq $0x457b21, %rsi	 RIP: 422df2	 Bytes: 10
  %loadMem_422df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422df2 = call %struct.Memory* @routine_movq__0x457b21___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422df2)
  store %struct.Memory* %call_422df2, %struct.Memory** %MEMORY

  ; Code: movq $0x4583b0, %rcx	 RIP: 422dfc	 Bytes: 10
  %loadMem_422dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422dfc = call %struct.Memory* @routine_movq__0x4583b0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422dfc)
  store %struct.Memory* %call_422dfc, %struct.Memory** %MEMORY

  ; Code: movq -0x100(%rbp), %rdi	 RIP: 422e06	 Bytes: 7
  %loadMem_422e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e06 = call %struct.Memory* @routine_movq_MINUS0x100__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e06)
  store %struct.Memory* %call_422e06, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 422e0d	 Bytes: 3
  %loadMem_422e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e0d = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e0d)
  store %struct.Memory* %call_422e0d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422e10	 Bytes: 2
  %loadMem_422e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e10 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e10)
  store %struct.Memory* %call_422e10, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422e12	 Bytes: 5
  %loadMem1_422e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422e12 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422e12, i64 -137378, i64 5, i64 5)
  store %struct.Memory* %call1_422e12, %struct.Memory** %MEMORY

  %loadMem2_422e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422e12 = load i64, i64* %3
  %call2_422e12 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422e12, %struct.Memory* %loadMem2_422e12)
  store %struct.Memory* %call2_422e12, %struct.Memory** %MEMORY

  ; Code: movss 0x31909(%rip), %xmm1	 RIP: 422e17	 Bytes: 8
  %loadMem_422e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e17 = call %struct.Memory* @routine_movss_0x31909__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e17)
  store %struct.Memory* %call_422e17, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422e1f	 Bytes: 4
  %loadMem_422e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e1f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e1f)
  store %struct.Memory* %call_422e1f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 422e23	 Bytes: 4
  %loadMem_422e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e23 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e23)
  store %struct.Memory* %call_422e23, %struct.Memory** %MEMORY

  ; Code: movss 0xa8(%rcx), %xmm0	 RIP: 422e27	 Bytes: 8
  %loadMem_422e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e27 = call %struct.Memory* @routine_movss_0xa8__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e27)
  store %struct.Memory* %call_422e27, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x104(%rbp)	 RIP: 422e2f	 Bytes: 6
  %loadMem_422e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e2f = call %struct.Memory* @routine_movl__eax__MINUS0x104__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e2f)
  store %struct.Memory* %call_422e2f, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x110(%rbp)	 RIP: 422e35	 Bytes: 7
  %loadMem_422e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e35 = call %struct.Memory* @routine_movq__rdi__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e35)
  store %struct.Memory* %call_422e35, %struct.Memory** %MEMORY

  ; Code: callq .prob2ascii	 RIP: 422e3c	 Bytes: 5
  %loadMem1_422e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422e3c = call %struct.Memory* @routine_callq_.prob2ascii(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422e3c, i64 1332, i64 5, i64 5)
  store %struct.Memory* %call1_422e3c, %struct.Memory** %MEMORY

  %loadMem2_422e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422e3c = load i64, i64* %3
  %call2_422e3c = call %struct.Memory* @sub_423370.prob2ascii(%struct.State* %0, i64  %loadPC_422e3c, %struct.Memory* %loadMem2_422e3c)
  store %struct.Memory* %call2_422e3c, %struct.Memory** %MEMORY

  ; Code: movq $0x456fbb, %rsi	 RIP: 422e41	 Bytes: 10
  %loadMem_422e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e41 = call %struct.Memory* @routine_movq__0x456fbb___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e41)
  store %struct.Memory* %call_422e41, %struct.Memory** %MEMORY

  ; Code: movq -0x110(%rbp), %rdi	 RIP: 422e4b	 Bytes: 7
  %loadMem_422e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e4b = call %struct.Memory* @routine_movq_MINUS0x110__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e4b)
  store %struct.Memory* %call_422e4b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 422e52	 Bytes: 3
  %loadMem_422e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e52 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e52)
  store %struct.Memory* %call_422e52, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422e55	 Bytes: 2
  %loadMem_422e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e55 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e55)
  store %struct.Memory* %call_422e55, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422e57	 Bytes: 5
  %loadMem1_422e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422e57 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422e57, i64 -137447, i64 5, i64 5)
  store %struct.Memory* %call1_422e57, %struct.Memory** %MEMORY

  %loadMem2_422e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422e57 = load i64, i64* %3
  %call2_422e57 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422e57, %struct.Memory* %loadMem2_422e57)
  store %struct.Memory* %call2_422e57, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x2c(%rbp)	 RIP: 422e5c	 Bytes: 7
  %loadMem_422e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e5c = call %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e5c)
  store %struct.Memory* %call_422e5c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x114(%rbp)	 RIP: 422e63	 Bytes: 6
  %loadMem_422e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e63 = call %struct.Memory* @routine_movl__eax__MINUS0x114__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e63)
  store %struct.Memory* %call_422e63, %struct.Memory** %MEMORY

  ; Code: .L_422e69:	 RIP: 422e69	 Bytes: 0
  br label %block_.L_422e69
block_.L_422e69:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 422e69	 Bytes: 3
  %loadMem_422e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e69 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e69)
  store %struct.Memory* %call_422e69, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 422e6c	 Bytes: 4
  %loadMem_422e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e6c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e6c)
  store %struct.Memory* %call_422e6c, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 422e70	 Bytes: 6
  %loadMem_422e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e70 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e70)
  store %struct.Memory* %call_422e70, %struct.Memory** %MEMORY

  ; Code: jg .L_4232a6	 RIP: 422e76	 Bytes: 6
  %loadMem_422e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e76 = call %struct.Memory* @routine_jg_.L_4232a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e76, i8* %BRANCH_TAKEN, i64 1072, i64 6, i64 6)
  store %struct.Memory* %call_422e76, %struct.Memory** %MEMORY

  %loadBr_422e76 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422e76 = icmp eq i8 %loadBr_422e76, 1
  br i1 %cmpBr_422e76, label %block_.L_4232a6, label %block_422e7c

block_422e7c:
  ; Code: movq $0x457b31, %rsi	 RIP: 422e7c	 Bytes: 10
  %loadMem_422e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e7c = call %struct.Memory* @routine_movq__0x457b31___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e7c)
  store %struct.Memory* %call_422e7c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422e86	 Bytes: 4
  %loadMem_422e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e86 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e86)
  store %struct.Memory* %call_422e86, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 422e8a	 Bytes: 3
  %loadMem_422e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e8a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e8a)
  store %struct.Memory* %call_422e8a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422e8d	 Bytes: 2
  %loadMem_422e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e8d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e8d)
  store %struct.Memory* %call_422e8d, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422e8f	 Bytes: 5
  %loadMem1_422e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422e8f = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422e8f, i64 -137503, i64 5, i64 5)
  store %struct.Memory* %call1_422e8f, %struct.Memory** %MEMORY

  %loadMem2_422e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422e8f = load i64, i64* %3
  %call2_422e8f = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422e8f, %struct.Memory* %loadMem2_422e8f)
  store %struct.Memory* %call2_422e8f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 422e94	 Bytes: 7
  %loadMem_422e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e94 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e94)
  store %struct.Memory* %call_422e94, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x118(%rbp)	 RIP: 422e9b	 Bytes: 6
  %loadMem_422e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422e9b = call %struct.Memory* @routine_movl__eax__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422e9b)
  store %struct.Memory* %call_422e9b, %struct.Memory** %MEMORY

  ; Code: .L_422ea1:	 RIP: 422ea1	 Bytes: 0
  br label %block_.L_422ea1
block_.L_422ea1:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 422ea1	 Bytes: 3
  %loadMem_422ea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ea1 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ea1)
  store %struct.Memory* %call_422ea1, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 422ea4	 Bytes: 7
  %loadMem_422ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ea4 = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ea4)
  store %struct.Memory* %call_422ea4, %struct.Memory** %MEMORY

  ; Code: jge .L_422f1d	 RIP: 422eab	 Bytes: 6
  %loadMem_422eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422eab = call %struct.Memory* @routine_jge_.L_422f1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422eab, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_422eab, %struct.Memory** %MEMORY

  %loadBr_422eab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422eab = icmp eq i8 %loadBr_422eab, 1
  br i1 %cmpBr_422eab, label %block_.L_422f1d, label %block_422eb1

block_422eb1:
  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422eb1	 Bytes: 4
  %loadMem_422eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422eb1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422eb1)
  store %struct.Memory* %call_422eb1, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 422eb5	 Bytes: 4
  %loadMem_422eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422eb5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422eb5)
  store %struct.Memory* %call_422eb5, %struct.Memory** %MEMORY

  ; Code: movq 0x98(%rax), %rax	 RIP: 422eb9	 Bytes: 7
  %loadMem_422eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422eb9 = call %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422eb9)
  store %struct.Memory* %call_422eb9, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 422ec0	 Bytes: 4
  %loadMem_422ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ec0 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ec0)
  store %struct.Memory* %call_422ec0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 422ec4	 Bytes: 4
  %loadMem_422ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ec4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ec4)
  store %struct.Memory* %call_422ec4, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 422ec8	 Bytes: 4
  %loadMem_422ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ec8 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ec8)
  store %struct.Memory* %call_422ec8, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 422ecc	 Bytes: 5
  %loadMem_422ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ecc = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ecc)
  store %struct.Memory* %call_422ecc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 422ed1	 Bytes: 4
  %loadMem_422ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ed1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ed1)
  store %struct.Memory* %call_422ed1, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 422ed5	 Bytes: 4
  %loadMem_422ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ed5 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ed5)
  store %struct.Memory* %call_422ed5, %struct.Memory** %MEMORY

  ; Code: movss 0xe0(%rax,%rcx,4), %xmm1	 RIP: 422ed9	 Bytes: 9
  %loadMem_422ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ed9 = call %struct.Memory* @routine_movss_0xe0__rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ed9)
  store %struct.Memory* %call_422ed9, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x120(%rbp)	 RIP: 422ee2	 Bytes: 7
  %loadMem_422ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ee2 = call %struct.Memory* @routine_movq__rdi__MINUS0x120__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ee2)
  store %struct.Memory* %call_422ee2, %struct.Memory** %MEMORY

  ; Code: callq .prob2ascii	 RIP: 422ee9	 Bytes: 5
  %loadMem1_422ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422ee9 = call %struct.Memory* @routine_callq_.prob2ascii(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422ee9, i64 1159, i64 5, i64 5)
  store %struct.Memory* %call1_422ee9, %struct.Memory** %MEMORY

  %loadMem2_422ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422ee9 = load i64, i64* %3
  %call2_422ee9 = call %struct.Memory* @sub_423370.prob2ascii(%struct.State* %0, i64  %loadPC_422ee9, %struct.Memory* %loadMem2_422ee9)
  store %struct.Memory* %call2_422ee9, %struct.Memory** %MEMORY

  ; Code: movq $0x457b2c, %rsi	 RIP: 422eee	 Bytes: 10
  %loadMem_422eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422eee = call %struct.Memory* @routine_movq__0x457b2c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422eee)
  store %struct.Memory* %call_422eee, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %rdi	 RIP: 422ef8	 Bytes: 7
  %loadMem_422ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ef8 = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ef8)
  store %struct.Memory* %call_422ef8, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 422eff	 Bytes: 3
  %loadMem_422eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422eff = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422eff)
  store %struct.Memory* %call_422eff, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422f02	 Bytes: 2
  %loadMem_422f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f02 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f02)
  store %struct.Memory* %call_422f02, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422f04	 Bytes: 5
  %loadMem1_422f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422f04 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422f04, i64 -137620, i64 5, i64 5)
  store %struct.Memory* %call1_422f04, %struct.Memory** %MEMORY

  %loadMem2_422f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422f04 = load i64, i64* %3
  %call2_422f04 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422f04, %struct.Memory* %loadMem2_422f04)
  store %struct.Memory* %call2_422f04, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x124(%rbp)	 RIP: 422f09	 Bytes: 6
  %loadMem_422f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f09 = call %struct.Memory* @routine_movl__eax__MINUS0x124__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f09)
  store %struct.Memory* %call_422f09, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 422f0f	 Bytes: 3
  %loadMem_422f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f0f = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f0f)
  store %struct.Memory* %call_422f0f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 422f12	 Bytes: 3
  %loadMem_422f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f12 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f12)
  store %struct.Memory* %call_422f12, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 422f15	 Bytes: 3
  %loadMem_422f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f15 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f15)
  store %struct.Memory* %call_422f15, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422ea1	 RIP: 422f18	 Bytes: 5
  %loadMem_422f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f18 = call %struct.Memory* @routine_jmpq_.L_422ea1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f18, i64 -119, i64 5)
  store %struct.Memory* %call_422f18, %struct.Memory** %MEMORY

  br label %block_.L_422ea1

  ; Code: .L_422f1d:	 RIP: 422f1d	 Bytes: 0
block_.L_422f1d:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 422f1d	 Bytes: 4
  %loadMem_422f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f1d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f1d)
  store %struct.Memory* %call_422f1d, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 422f21	 Bytes: 6
  %loadMem_422f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f21 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f21)
  store %struct.Memory* %call_422f21, %struct.Memory** %MEMORY

  ; Code: andl $0x100, %ecx	 RIP: 422f27	 Bytes: 6
  %loadMem_422f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f27 = call %struct.Memory* @routine_andl__0x100___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f27)
  store %struct.Memory* %call_422f27, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 422f2d	 Bytes: 3
  %loadMem_422f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f2d = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f2d)
  store %struct.Memory* %call_422f2d, %struct.Memory** %MEMORY

  ; Code: je .L_422f60	 RIP: 422f30	 Bytes: 6
  %loadMem_422f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f30 = call %struct.Memory* @routine_je_.L_422f60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f30, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_422f30, %struct.Memory** %MEMORY

  %loadBr_422f30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422f30 = icmp eq i8 %loadBr_422f30, 1
  br i1 %cmpBr_422f30, label %block_.L_422f60, label %block_422f36

block_422f36:
  ; Code: movq $0x457b37, %rsi	 RIP: 422f36	 Bytes: 10
  %loadMem_422f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f36 = call %struct.Memory* @routine_movq__0x457b37___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f36)
  store %struct.Memory* %call_422f36, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422f40	 Bytes: 4
  %loadMem_422f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f40 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f40)
  store %struct.Memory* %call_422f40, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 422f44	 Bytes: 4
  %loadMem_422f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f44 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f44)
  store %struct.Memory* %call_422f44, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rax), %rax	 RIP: 422f48	 Bytes: 4
  %loadMem_422f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f48 = call %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f48)
  store %struct.Memory* %call_422f48, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 422f4c	 Bytes: 4
  %loadMem_422f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f4c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f4c)
  store %struct.Memory* %call_422f4c, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 422f50	 Bytes: 3
  %loadMem_422f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f50 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f50)
  store %struct.Memory* %call_422f50, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422f53	 Bytes: 2
  %loadMem_422f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f53 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f53)
  store %struct.Memory* %call_422f53, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422f55	 Bytes: 5
  %loadMem1_422f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422f55 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422f55, i64 -137701, i64 5, i64 5)
  store %struct.Memory* %call1_422f55, %struct.Memory** %MEMORY

  %loadMem2_422f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422f55 = load i64, i64* %3
  %call2_422f55 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422f55, %struct.Memory* %loadMem2_422f55)
  store %struct.Memory* %call2_422f55, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x128(%rbp)	 RIP: 422f5a	 Bytes: 6
  %loadMem_422f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f5a = call %struct.Memory* @routine_movl__eax__MINUS0x128__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f5a)
  store %struct.Memory* %call_422f5a, %struct.Memory** %MEMORY

  ; Code: .L_422f60:	 RIP: 422f60	 Bytes: 0
  br label %block_.L_422f60
block_.L_422f60:

  ; Code: movq $0x45a1f7, %rdi	 RIP: 422f60	 Bytes: 10
  %loadMem_422f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f60 = call %struct.Memory* @routine_movq__0x45a1f7___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f60)
  store %struct.Memory* %call_422f60, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 422f6a	 Bytes: 4
  %loadMem_422f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f6a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f6a)
  store %struct.Memory* %call_422f6a, %struct.Memory** %MEMORY

  ; Code: callq .fputs_plt	 RIP: 422f6e	 Bytes: 5
  %loadMem1_422f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422f6e = call %struct.Memory* @routine_callq_.fputs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422f6e, i64 -137902, i64 5, i64 5)
  store %struct.Memory* %call1_422f6e, %struct.Memory** %MEMORY

  %loadMem2_422f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422f6e = load i64, i64* %3
  %call2_422f6e = call %struct.Memory* @ext_fputs(%struct.State* %0, i64  %loadPC_422f6e, %struct.Memory* %loadMem2_422f6e)
  store %struct.Memory* %call2_422f6e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422f73	 Bytes: 4
  %loadMem_422f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f73 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f73)
  store %struct.Memory* %call_422f73, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rsi	 RIP: 422f77	 Bytes: 4
  %loadMem_422f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f77 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f77)
  store %struct.Memory* %call_422f77, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rsi), %ecx	 RIP: 422f7b	 Bytes: 6
  %loadMem_422f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f7b = call %struct.Memory* @routine_movl_0x1c8__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f7b)
  store %struct.Memory* %call_422f7b, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %ecx	 RIP: 422f81	 Bytes: 3
  %loadMem_422f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f81 = call %struct.Memory* @routine_andl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f81)
  store %struct.Memory* %call_422f81, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 422f84	 Bytes: 3
  %loadMem_422f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f84 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f84)
  store %struct.Memory* %call_422f84, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x12c(%rbp)	 RIP: 422f87	 Bytes: 6
  %loadMem_422f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f87 = call %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f87)
  store %struct.Memory* %call_422f87, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x138(%rbp)	 RIP: 422f8d	 Bytes: 7
  %loadMem_422f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f8d = call %struct.Memory* @routine_movq__rdi__MINUS0x138__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f8d)
  store %struct.Memory* %call_422f8d, %struct.Memory** %MEMORY

  ; Code: je .L_422fb5	 RIP: 422f94	 Bytes: 6
  %loadMem_422f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f94 = call %struct.Memory* @routine_je_.L_422fb5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f94, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_422f94, %struct.Memory** %MEMORY

  %loadBr_422f94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422f94 = icmp eq i8 %loadBr_422f94, 1
  br i1 %cmpBr_422f94, label %block_.L_422fb5, label %block_422f9a

block_422f9a:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 422f9a	 Bytes: 4
  %loadMem_422f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f9a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f9a)
  store %struct.Memory* %call_422f9a, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 422f9e	 Bytes: 4
  %loadMem_422f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422f9e = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422f9e)
  store %struct.Memory* %call_422f9e, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 422fa2	 Bytes: 4
  %loadMem_422fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422fa2 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422fa2)
  store %struct.Memory* %call_422fa2, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 422fa6	 Bytes: 4
  %loadMem_422fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422fa6 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422fa6)
  store %struct.Memory* %call_422fa6, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x13c(%rbp)	 RIP: 422faa	 Bytes: 6
  %loadMem_422faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422faa = call %struct.Memory* @routine_movl__edx__MINUS0x13c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422faa)
  store %struct.Memory* %call_422faa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422fc5	 RIP: 422fb0	 Bytes: 5
  %loadMem_422fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422fb0 = call %struct.Memory* @routine_jmpq_.L_422fc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422fb0, i64 21, i64 5)
  store %struct.Memory* %call_422fb0, %struct.Memory** %MEMORY

  br label %block_.L_422fc5

  ; Code: .L_422fb5:	 RIP: 422fb5	 Bytes: 0
block_.L_422fb5:

  ; Code: movl $0x2d, %eax	 RIP: 422fb5	 Bytes: 5
  %loadMem_422fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422fb5 = call %struct.Memory* @routine_movl__0x2d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422fb5)
  store %struct.Memory* %call_422fb5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x13c(%rbp)	 RIP: 422fba	 Bytes: 6
  %loadMem_422fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422fba = call %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422fba)
  store %struct.Memory* %call_422fba, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422fc5	 RIP: 422fc0	 Bytes: 5
  %loadMem_422fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422fc0 = call %struct.Memory* @routine_jmpq_.L_422fc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422fc0, i64 5, i64 5)
  store %struct.Memory* %call_422fc0, %struct.Memory** %MEMORY

  br label %block_.L_422fc5

  ; Code: .L_422fc5:	 RIP: 422fc5	 Bytes: 0
block_.L_422fc5:

  ; Code: movl -0x13c(%rbp), %eax	 RIP: 422fc5	 Bytes: 6
  %loadMem_422fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422fc5 = call %struct.Memory* @routine_movl_MINUS0x13c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422fc5)
  store %struct.Memory* %call_422fc5, %struct.Memory** %MEMORY

  ; Code: movq $0x457b3b, %rsi	 RIP: 422fcb	 Bytes: 10
  %loadMem_422fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422fcb = call %struct.Memory* @routine_movq__0x457b3b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422fcb)
  store %struct.Memory* %call_422fcb, %struct.Memory** %MEMORY

  ; Code: movq -0x138(%rbp), %rdi	 RIP: 422fd5	 Bytes: 7
  %loadMem_422fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422fd5 = call %struct.Memory* @routine_movq_MINUS0x138__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422fd5)
  store %struct.Memory* %call_422fd5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 422fdc	 Bytes: 2
  %loadMem_422fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422fdc = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422fdc)
  store %struct.Memory* %call_422fdc, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 422fde	 Bytes: 2
  %loadMem_422fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422fde = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422fde)
  store %struct.Memory* %call_422fde, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 422fe0	 Bytes: 5
  %loadMem1_422fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422fe0 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422fe0, i64 -137840, i64 5, i64 5)
  store %struct.Memory* %call1_422fe0, %struct.Memory** %MEMORY

  %loadMem2_422fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422fe0 = load i64, i64* %3
  %call2_422fe0 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_422fe0, %struct.Memory* %loadMem2_422fe0)
  store %struct.Memory* %call2_422fe0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 422fe5	 Bytes: 7
  %loadMem_422fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422fe5 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422fe5)
  store %struct.Memory* %call_422fe5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x140(%rbp)	 RIP: 422fec	 Bytes: 6
  %loadMem_422fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422fec = call %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422fec)
  store %struct.Memory* %call_422fec, %struct.Memory** %MEMORY

  ; Code: .L_422ff2:	 RIP: 422ff2	 Bytes: 0
  br label %block_.L_422ff2
block_.L_422ff2:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 422ff2	 Bytes: 3
  %loadMem_422ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ff2 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ff2)
  store %struct.Memory* %call_422ff2, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 422ff5	 Bytes: 7
  %loadMem_422ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ff5 = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ff5)
  store %struct.Memory* %call_422ff5, %struct.Memory** %MEMORY

  ; Code: jge .L_4230aa	 RIP: 422ffc	 Bytes: 6
  %loadMem_422ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422ffc = call %struct.Memory* @routine_jge_.L_4230aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422ffc, i8* %BRANCH_TAKEN, i64 174, i64 6, i64 6)
  store %struct.Memory* %call_422ffc, %struct.Memory** %MEMORY

  %loadBr_422ffc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422ffc = icmp eq i8 %loadBr_422ffc, 1
  br i1 %cmpBr_422ffc, label %block_.L_4230aa, label %block_423002

block_423002:
  ; Code: movq -0x20(%rbp), %rdi	 RIP: 423002	 Bytes: 4
  %loadMem_423002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423002 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423002)
  store %struct.Memory* %call_423002, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 423006	 Bytes: 3
  %loadMem_423006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423006 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423006)
  store %struct.Memory* %call_423006, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 423009	 Bytes: 4
  %loadMem_423009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423009 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423009)
  store %struct.Memory* %call_423009, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 42300d	 Bytes: 6
  %loadMem_42300d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42300d = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42300d)
  store %struct.Memory* %call_42300d, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x148(%rbp)	 RIP: 423013	 Bytes: 7
  %loadMem_423013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423013 = call %struct.Memory* @routine_movq__rdi__MINUS0x148__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423013)
  store %struct.Memory* %call_423013, %struct.Memory** %MEMORY

  ; Code: jge .L_42305e	 RIP: 42301a	 Bytes: 6
  %loadMem_42301a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42301a = call %struct.Memory* @routine_jge_.L_42305e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42301a, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_42301a, %struct.Memory** %MEMORY

  %loadBr_42301a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42301a = icmp eq i8 %loadBr_42301a, 1
  br i1 %cmpBr_42301a, label %block_.L_42305e, label %block_423020

block_423020:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 423020	 Bytes: 4
  %loadMem_423020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423020 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423020)
  store %struct.Memory* %call_423020, %struct.Memory** %MEMORY

  ; Code: movq 0xa0(%rax), %rax	 RIP: 423024	 Bytes: 7
  %loadMem_423024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423024 = call %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423024)
  store %struct.Memory* %call_423024, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 42302b	 Bytes: 4
  %loadMem_42302b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42302b = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42302b)
  store %struct.Memory* %call_42302b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42302f	 Bytes: 4
  %loadMem_42302f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42302f = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42302f)
  store %struct.Memory* %call_42302f, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 423033	 Bytes: 4
  %loadMem_423033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423033 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423033)
  store %struct.Memory* %call_423033, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 423037	 Bytes: 5
  %loadMem_423037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423037 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423037)
  store %struct.Memory* %call_423037, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 42303c	 Bytes: 4
  %loadMem_42303c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42303c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42303c)
  store %struct.Memory* %call_42303c, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 423040	 Bytes: 4
  %loadMem_423040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423040 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423040)
  store %struct.Memory* %call_423040, %struct.Memory** %MEMORY

  ; Code: movss 0xe0(%rax,%rcx,4), %xmm1	 RIP: 423044	 Bytes: 9
  %loadMem_423044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423044 = call %struct.Memory* @routine_movss_0xe0__rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423044)
  store %struct.Memory* %call_423044, %struct.Memory** %MEMORY

  ; Code: callq .prob2ascii	 RIP: 42304d	 Bytes: 5
  %loadMem1_42304d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42304d = call %struct.Memory* @routine_callq_.prob2ascii(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42304d, i64 803, i64 5, i64 5)
  store %struct.Memory* %call1_42304d, %struct.Memory** %MEMORY

  %loadMem2_42304d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42304d = load i64, i64* %3
  %call2_42304d = call %struct.Memory* @sub_423370.prob2ascii(%struct.State* %0, i64  %loadPC_42304d, %struct.Memory* %loadMem2_42304d)
  store %struct.Memory* %call2_42304d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x150(%rbp)	 RIP: 423052	 Bytes: 7
  %loadMem_423052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423052 = call %struct.Memory* @routine_movq__rax__MINUS0x150__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423052)
  store %struct.Memory* %call_423052, %struct.Memory** %MEMORY

  ; Code: jmpq .L_423074	 RIP: 423059	 Bytes: 5
  %loadMem_423059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423059 = call %struct.Memory* @routine_jmpq_.L_423074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423059, i64 27, i64 5)
  store %struct.Memory* %call_423059, %struct.Memory** %MEMORY

  br label %block_.L_423074

  ; Code: .L_42305e:	 RIP: 42305e	 Bytes: 0
block_.L_42305e:

  ; Code: movq $0x4583b0, %rax	 RIP: 42305e	 Bytes: 10
  %loadMem_42305e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42305e = call %struct.Memory* @routine_movq__0x4583b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42305e)
  store %struct.Memory* %call_42305e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x150(%rbp)	 RIP: 423068	 Bytes: 7
  %loadMem_423068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423068 = call %struct.Memory* @routine_movq__rax__MINUS0x150__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423068)
  store %struct.Memory* %call_423068, %struct.Memory** %MEMORY

  ; Code: jmpq .L_423074	 RIP: 42306f	 Bytes: 5
  %loadMem_42306f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42306f = call %struct.Memory* @routine_jmpq_.L_423074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42306f, i64 5, i64 5)
  store %struct.Memory* %call_42306f, %struct.Memory** %MEMORY

  br label %block_.L_423074

  ; Code: .L_423074:	 RIP: 423074	 Bytes: 0
block_.L_423074:

  ; Code: movq -0x150(%rbp), %rax	 RIP: 423074	 Bytes: 7
  %loadMem_423074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423074 = call %struct.Memory* @routine_movq_MINUS0x150__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423074)
  store %struct.Memory* %call_423074, %struct.Memory** %MEMORY

  ; Code: movq $0x457b2c, %rsi	 RIP: 42307b	 Bytes: 10
  %loadMem_42307b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42307b = call %struct.Memory* @routine_movq__0x457b2c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42307b)
  store %struct.Memory* %call_42307b, %struct.Memory** %MEMORY

  ; Code: movq -0x148(%rbp), %rdi	 RIP: 423085	 Bytes: 7
  %loadMem_423085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423085 = call %struct.Memory* @routine_movq_MINUS0x148__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423085)
  store %struct.Memory* %call_423085, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42308c	 Bytes: 3
  %loadMem_42308c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42308c = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42308c)
  store %struct.Memory* %call_42308c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42308f	 Bytes: 2
  %loadMem_42308f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42308f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42308f)
  store %struct.Memory* %call_42308f, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 423091	 Bytes: 5
  %loadMem1_423091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423091 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423091, i64 -138017, i64 5, i64 5)
  store %struct.Memory* %call1_423091, %struct.Memory** %MEMORY

  %loadMem2_423091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423091 = load i64, i64* %3
  %call2_423091 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_423091, %struct.Memory* %loadMem2_423091)
  store %struct.Memory* %call2_423091, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x154(%rbp)	 RIP: 423096	 Bytes: 6
  %loadMem_423096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423096 = call %struct.Memory* @routine_movl__eax__MINUS0x154__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423096)
  store %struct.Memory* %call_423096, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 42309c	 Bytes: 3
  %loadMem_42309c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42309c = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42309c)
  store %struct.Memory* %call_42309c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42309f	 Bytes: 3
  %loadMem_42309f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42309f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42309f)
  store %struct.Memory* %call_42309f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 4230a2	 Bytes: 3
  %loadMem_4230a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230a2 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230a2)
  store %struct.Memory* %call_4230a2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422ff2	 RIP: 4230a5	 Bytes: 5
  %loadMem_4230a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230a5 = call %struct.Memory* @routine_jmpq_.L_422ff2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230a5, i64 -179, i64 5)
  store %struct.Memory* %call_4230a5, %struct.Memory** %MEMORY

  br label %block_.L_422ff2

  ; Code: .L_4230aa:	 RIP: 4230aa	 Bytes: 0
block_.L_4230aa:

  ; Code: movq $0x45a1f7, %rdi	 RIP: 4230aa	 Bytes: 10
  %loadMem_4230aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230aa = call %struct.Memory* @routine_movq__0x45a1f7___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230aa)
  store %struct.Memory* %call_4230aa, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 4230b4	 Bytes: 4
  %loadMem_4230b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230b4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230b4)
  store %struct.Memory* %call_4230b4, %struct.Memory** %MEMORY

  ; Code: callq .fputs_plt	 RIP: 4230b8	 Bytes: 5
  %loadMem1_4230b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4230b8 = call %struct.Memory* @routine_callq_.fputs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4230b8, i64 -138232, i64 5, i64 5)
  store %struct.Memory* %call1_4230b8, %struct.Memory** %MEMORY

  %loadMem2_4230b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4230b8 = load i64, i64* %3
  %call2_4230b8 = call %struct.Memory* @ext_fputs(%struct.State* %0, i64  %loadPC_4230b8, %struct.Memory* %loadMem2_4230b8)
  store %struct.Memory* %call2_4230b8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4230bd	 Bytes: 4
  %loadMem_4230bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230bd = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230bd)
  store %struct.Memory* %call_4230bd, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rsi	 RIP: 4230c1	 Bytes: 4
  %loadMem_4230c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230c1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230c1)
  store %struct.Memory* %call_4230c1, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rsi), %ecx	 RIP: 4230c5	 Bytes: 6
  %loadMem_4230c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230c5 = call %struct.Memory* @routine_movl_0x1c8__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230c5)
  store %struct.Memory* %call_4230c5, %struct.Memory** %MEMORY

  ; Code: andl $0x8, %ecx	 RIP: 4230cb	 Bytes: 3
  %loadMem_4230cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230cb = call %struct.Memory* @routine_andl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230cb)
  store %struct.Memory* %call_4230cb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4230ce	 Bytes: 3
  %loadMem_4230ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230ce = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230ce)
  store %struct.Memory* %call_4230ce, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x158(%rbp)	 RIP: 4230d1	 Bytes: 6
  %loadMem_4230d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230d1 = call %struct.Memory* @routine_movl__eax__MINUS0x158__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230d1)
  store %struct.Memory* %call_4230d1, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x160(%rbp)	 RIP: 4230d7	 Bytes: 7
  %loadMem_4230d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230d7 = call %struct.Memory* @routine_movq__rdi__MINUS0x160__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230d7)
  store %struct.Memory* %call_4230d7, %struct.Memory** %MEMORY

  ; Code: je .L_4230ff	 RIP: 4230de	 Bytes: 6
  %loadMem_4230de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230de = call %struct.Memory* @routine_je_.L_4230ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230de, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_4230de, %struct.Memory** %MEMORY

  %loadBr_4230de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4230de = icmp eq i8 %loadBr_4230de, 1
  br i1 %cmpBr_4230de, label %block_.L_4230ff, label %block_4230e4

block_4230e4:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 4230e4	 Bytes: 4
  %loadMem_4230e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230e4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230e4)
  store %struct.Memory* %call_4230e4, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 4230e8	 Bytes: 4
  %loadMem_4230e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230e8 = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230e8)
  store %struct.Memory* %call_4230e8, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4230ec	 Bytes: 4
  %loadMem_4230ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230ec = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230ec)
  store %struct.Memory* %call_4230ec, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 4230f0	 Bytes: 4
  %loadMem_4230f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230f0 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230f0)
  store %struct.Memory* %call_4230f0, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x164(%rbp)	 RIP: 4230f4	 Bytes: 6
  %loadMem_4230f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230f4 = call %struct.Memory* @routine_movl__edx__MINUS0x164__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230f4)
  store %struct.Memory* %call_4230f4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42310f	 RIP: 4230fa	 Bytes: 5
  %loadMem_4230fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230fa = call %struct.Memory* @routine_jmpq_.L_42310f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230fa, i64 21, i64 5)
  store %struct.Memory* %call_4230fa, %struct.Memory** %MEMORY

  br label %block_.L_42310f

  ; Code: .L_4230ff:	 RIP: 4230ff	 Bytes: 0
block_.L_4230ff:

  ; Code: movl $0x2d, %eax	 RIP: 4230ff	 Bytes: 5
  %loadMem_4230ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4230ff = call %struct.Memory* @routine_movl__0x2d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4230ff)
  store %struct.Memory* %call_4230ff, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x164(%rbp)	 RIP: 423104	 Bytes: 6
  %loadMem_423104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423104 = call %struct.Memory* @routine_movl__eax__MINUS0x164__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423104)
  store %struct.Memory* %call_423104, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42310f	 RIP: 42310a	 Bytes: 5
  %loadMem_42310a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42310a = call %struct.Memory* @routine_jmpq_.L_42310f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42310a, i64 5, i64 5)
  store %struct.Memory* %call_42310a, %struct.Memory** %MEMORY

  br label %block_.L_42310f

  ; Code: .L_42310f:	 RIP: 42310f	 Bytes: 0
block_.L_42310f:

  ; Code: movl -0x164(%rbp), %eax	 RIP: 42310f	 Bytes: 6
  %loadMem_42310f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42310f = call %struct.Memory* @routine_movl_MINUS0x164__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42310f)
  store %struct.Memory* %call_42310f, %struct.Memory** %MEMORY

  ; Code: movq $0x457b3b, %rsi	 RIP: 423115	 Bytes: 10
  %loadMem_423115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423115 = call %struct.Memory* @routine_movq__0x457b3b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423115)
  store %struct.Memory* %call_423115, %struct.Memory** %MEMORY

  ; Code: movq -0x160(%rbp), %rdi	 RIP: 42311f	 Bytes: 7
  %loadMem_42311f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42311f = call %struct.Memory* @routine_movq_MINUS0x160__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42311f)
  store %struct.Memory* %call_42311f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 423126	 Bytes: 2
  %loadMem_423126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423126 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423126)
  store %struct.Memory* %call_423126, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 423128	 Bytes: 2
  %loadMem_423128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423128 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423128)
  store %struct.Memory* %call_423128, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 42312a	 Bytes: 5
  %loadMem1_42312a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42312a = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42312a, i64 -138170, i64 5, i64 5)
  store %struct.Memory* %call1_42312a, %struct.Memory** %MEMORY

  %loadMem2_42312a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42312a = load i64, i64* %3
  %call2_42312a = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_42312a, %struct.Memory* %loadMem2_42312a)
  store %struct.Memory* %call2_42312a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x34(%rbp)	 RIP: 42312f	 Bytes: 7
  %loadMem_42312f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42312f = call %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42312f)
  store %struct.Memory* %call_42312f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x168(%rbp)	 RIP: 423136	 Bytes: 6
  %loadMem_423136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423136 = call %struct.Memory* @routine_movl__eax__MINUS0x168__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423136)
  store %struct.Memory* %call_423136, %struct.Memory** %MEMORY

  ; Code: .L_42313c:	 RIP: 42313c	 Bytes: 0
  br label %block_.L_42313c
block_.L_42313c:

  ; Code: cmpl $0x7, -0x34(%rbp)	 RIP: 42313c	 Bytes: 4
  %loadMem_42313c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42313c = call %struct.Memory* @routine_cmpl__0x7__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42313c)
  store %struct.Memory* %call_42313c, %struct.Memory** %MEMORY

  ; Code: jge .L_4231e5	 RIP: 423140	 Bytes: 6
  %loadMem_423140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423140 = call %struct.Memory* @routine_jge_.L_4231e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423140, i8* %BRANCH_TAKEN, i64 165, i64 6, i64 6)
  store %struct.Memory* %call_423140, %struct.Memory** %MEMORY

  %loadBr_423140 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423140 = icmp eq i8 %loadBr_423140, 1
  br i1 %cmpBr_423140, label %block_.L_4231e5, label %block_423146

block_423146:
  ; Code: movq -0x20(%rbp), %rdi	 RIP: 423146	 Bytes: 4
  %loadMem_423146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423146 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423146)
  store %struct.Memory* %call_423146, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 42314a	 Bytes: 3
  %loadMem_42314a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42314a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42314a)
  store %struct.Memory* %call_42314a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42314d	 Bytes: 4
  %loadMem_42314d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42314d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42314d)
  store %struct.Memory* %call_42314d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 423151	 Bytes: 6
  %loadMem_423151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423151 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423151)
  store %struct.Memory* %call_423151, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x170(%rbp)	 RIP: 423157	 Bytes: 7
  %loadMem_423157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423157 = call %struct.Memory* @routine_movq__rdi__MINUS0x170__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423157)
  store %struct.Memory* %call_423157, %struct.Memory** %MEMORY

  ; Code: jge .L_423199	 RIP: 42315e	 Bytes: 6
  %loadMem_42315e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42315e = call %struct.Memory* @routine_jge_.L_423199(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42315e, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_42315e, %struct.Memory** %MEMORY

  %loadBr_42315e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42315e = icmp eq i8 %loadBr_42315e, 1
  br i1 %cmpBr_42315e, label %block_.L_423199, label %block_423164

block_423164:
  ; Code: movss 0x315bc(%rip), %xmm1	 RIP: 423164	 Bytes: 8
  %loadMem_423164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423164 = call %struct.Memory* @routine_movss_0x315bc__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423164)
  store %struct.Memory* %call_423164, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 42316c	 Bytes: 4
  %loadMem_42316c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42316c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42316c)
  store %struct.Memory* %call_42316c, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 423170	 Bytes: 7
  %loadMem_423170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423170 = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423170)
  store %struct.Memory* %call_423170, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 423177	 Bytes: 4
  %loadMem_423177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423177 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423177)
  store %struct.Memory* %call_423177, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42317b	 Bytes: 4
  %loadMem_42317b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42317b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42317b)
  store %struct.Memory* %call_42317b, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 42317f	 Bytes: 4
  %loadMem_42317f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42317f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42317f)
  store %struct.Memory* %call_42317f, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 423183	 Bytes: 5
  %loadMem_423183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423183 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423183)
  store %struct.Memory* %call_423183, %struct.Memory** %MEMORY

  ; Code: callq .prob2ascii	 RIP: 423188	 Bytes: 5
  %loadMem1_423188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423188 = call %struct.Memory* @routine_callq_.prob2ascii(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423188, i64 488, i64 5, i64 5)
  store %struct.Memory* %call1_423188, %struct.Memory** %MEMORY

  %loadMem2_423188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423188 = load i64, i64* %3
  %call2_423188 = call %struct.Memory* @sub_423370.prob2ascii(%struct.State* %0, i64  %loadPC_423188, %struct.Memory* %loadMem2_423188)
  store %struct.Memory* %call2_423188, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x178(%rbp)	 RIP: 42318d	 Bytes: 7
  %loadMem_42318d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42318d = call %struct.Memory* @routine_movq__rax__MINUS0x178__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42318d)
  store %struct.Memory* %call_42318d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4231af	 RIP: 423194	 Bytes: 5
  %loadMem_423194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423194 = call %struct.Memory* @routine_jmpq_.L_4231af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423194, i64 27, i64 5)
  store %struct.Memory* %call_423194, %struct.Memory** %MEMORY

  br label %block_.L_4231af

  ; Code: .L_423199:	 RIP: 423199	 Bytes: 0
block_.L_423199:

  ; Code: movq $0x4583b0, %rax	 RIP: 423199	 Bytes: 10
  %loadMem_423199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423199 = call %struct.Memory* @routine_movq__0x4583b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423199)
  store %struct.Memory* %call_423199, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x178(%rbp)	 RIP: 4231a3	 Bytes: 7
  %loadMem_4231a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231a3 = call %struct.Memory* @routine_movq__rax__MINUS0x178__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231a3)
  store %struct.Memory* %call_4231a3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4231af	 RIP: 4231aa	 Bytes: 5
  %loadMem_4231aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231aa = call %struct.Memory* @routine_jmpq_.L_4231af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231aa, i64 5, i64 5)
  store %struct.Memory* %call_4231aa, %struct.Memory** %MEMORY

  br label %block_.L_4231af

  ; Code: .L_4231af:	 RIP: 4231af	 Bytes: 0
block_.L_4231af:

  ; Code: movq -0x178(%rbp), %rax	 RIP: 4231af	 Bytes: 7
  %loadMem_4231af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231af = call %struct.Memory* @routine_movq_MINUS0x178__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231af)
  store %struct.Memory* %call_4231af, %struct.Memory** %MEMORY

  ; Code: movq $0x457b2c, %rsi	 RIP: 4231b6	 Bytes: 10
  %loadMem_4231b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231b6 = call %struct.Memory* @routine_movq__0x457b2c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231b6)
  store %struct.Memory* %call_4231b6, %struct.Memory** %MEMORY

  ; Code: movq -0x170(%rbp), %rdi	 RIP: 4231c0	 Bytes: 7
  %loadMem_4231c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231c0 = call %struct.Memory* @routine_movq_MINUS0x170__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231c0)
  store %struct.Memory* %call_4231c0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4231c7	 Bytes: 3
  %loadMem_4231c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231c7 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231c7)
  store %struct.Memory* %call_4231c7, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4231ca	 Bytes: 2
  %loadMem_4231ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231ca = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231ca)
  store %struct.Memory* %call_4231ca, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4231cc	 Bytes: 5
  %loadMem1_4231cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4231cc = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4231cc, i64 -138332, i64 5, i64 5)
  store %struct.Memory* %call1_4231cc, %struct.Memory** %MEMORY

  %loadMem2_4231cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4231cc = load i64, i64* %3
  %call2_4231cc = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4231cc, %struct.Memory* %loadMem2_4231cc)
  store %struct.Memory* %call2_4231cc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x17c(%rbp)	 RIP: 4231d1	 Bytes: 6
  %loadMem_4231d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231d1 = call %struct.Memory* @routine_movl__eax__MINUS0x17c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231d1)
  store %struct.Memory* %call_4231d1, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4231d7	 Bytes: 3
  %loadMem_4231d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231d7 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231d7)
  store %struct.Memory* %call_4231d7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4231da	 Bytes: 3
  %loadMem_4231da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231da = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231da)
  store %struct.Memory* %call_4231da, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 4231dd	 Bytes: 3
  %loadMem_4231dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231dd = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231dd)
  store %struct.Memory* %call_4231dd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42313c	 RIP: 4231e0	 Bytes: 5
  %loadMem_4231e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231e0 = call %struct.Memory* @routine_jmpq_.L_42313c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231e0, i64 -164, i64 5)
  store %struct.Memory* %call_4231e0, %struct.Memory** %MEMORY

  br label %block_.L_42313c

  ; Code: .L_4231e5:	 RIP: 4231e5	 Bytes: 0
block_.L_4231e5:

  ; Code: movss 0x3153b(%rip), %xmm1	 RIP: 4231e5	 Bytes: 8
  %loadMem_4231e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231e5 = call %struct.Memory* @routine_movss_0x3153b__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231e5)
  store %struct.Memory* %call_4231e5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4231ed	 Bytes: 4
  %loadMem_4231ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231ed = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231ed)
  store %struct.Memory* %call_4231ed, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4231f1	 Bytes: 4
  %loadMem_4231f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231f1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231f1)
  store %struct.Memory* %call_4231f1, %struct.Memory** %MEMORY

  ; Code: movq 0xd0(%rax), %rax	 RIP: 4231f5	 Bytes: 7
  %loadMem_4231f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231f5 = call %struct.Memory* @routine_movq_0xd0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231f5)
  store %struct.Memory* %call_4231f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4231fc	 Bytes: 4
  %loadMem_4231fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4231fc = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4231fc)
  store %struct.Memory* %call_4231fc, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 423200	 Bytes: 5
  %loadMem_423200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423200 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423200)
  store %struct.Memory* %call_423200, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x188(%rbp)	 RIP: 423205	 Bytes: 7
  %loadMem_423205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423205 = call %struct.Memory* @routine_movq__rdi__MINUS0x188__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423205)
  store %struct.Memory* %call_423205, %struct.Memory** %MEMORY

  ; Code: callq .prob2ascii	 RIP: 42320c	 Bytes: 5
  %loadMem1_42320c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42320c = call %struct.Memory* @routine_callq_.prob2ascii(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42320c, i64 356, i64 5, i64 5)
  store %struct.Memory* %call1_42320c, %struct.Memory** %MEMORY

  %loadMem2_42320c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42320c = load i64, i64* %3
  %call2_42320c = call %struct.Memory* @sub_423370.prob2ascii(%struct.State* %0, i64  %loadPC_42320c, %struct.Memory* %loadMem2_42320c)
  store %struct.Memory* %call2_42320c, %struct.Memory** %MEMORY

  ; Code: movq $0x457b2c, %rsi	 RIP: 423211	 Bytes: 10
  %loadMem_423211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423211 = call %struct.Memory* @routine_movq__0x457b2c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423211)
  store %struct.Memory* %call_423211, %struct.Memory** %MEMORY

  ; Code: movq -0x188(%rbp), %rdi	 RIP: 42321b	 Bytes: 7
  %loadMem_42321b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42321b = call %struct.Memory* @routine_movq_MINUS0x188__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42321b)
  store %struct.Memory* %call_42321b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 423222	 Bytes: 3
  %loadMem_423222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423222 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423222)
  store %struct.Memory* %call_423222, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 423225	 Bytes: 2
  %loadMem_423225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423225 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423225)
  store %struct.Memory* %call_423225, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 423227	 Bytes: 5
  %loadMem1_423227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423227 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423227, i64 -138423, i64 5, i64 5)
  store %struct.Memory* %call1_423227, %struct.Memory** %MEMORY

  %loadMem2_423227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423227 = load i64, i64* %3
  %call2_423227 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_423227, %struct.Memory* %loadMem2_423227)
  store %struct.Memory* %call2_423227, %struct.Memory** %MEMORY

  ; Code: movss 0x314f4(%rip), %xmm1	 RIP: 42322c	 Bytes: 8
  %loadMem_42322c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42322c = call %struct.Memory* @routine_movss_0x314f4__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42322c)
  store %struct.Memory* %call_42322c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 423234	 Bytes: 4
  %loadMem_423234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423234 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423234)
  store %struct.Memory* %call_423234, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 423238	 Bytes: 4
  %loadMem_423238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423238 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423238)
  store %struct.Memory* %call_423238, %struct.Memory** %MEMORY

  ; Code: movq 0xd8(%rcx), %rcx	 RIP: 42323c	 Bytes: 7
  %loadMem_42323c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42323c = call %struct.Memory* @routine_movq_0xd8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42323c)
  store %struct.Memory* %call_42323c, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 423243	 Bytes: 4
  %loadMem_423243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423243 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423243)
  store %struct.Memory* %call_423243, %struct.Memory** %MEMORY

  ; Code: movss (%rcx,%rdx,4), %xmm0	 RIP: 423247	 Bytes: 5
  %loadMem_423247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423247 = call %struct.Memory* @routine_movss___rcx__rdx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423247)
  store %struct.Memory* %call_423247, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18c(%rbp)	 RIP: 42324c	 Bytes: 6
  %loadMem_42324c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42324c = call %struct.Memory* @routine_movl__eax__MINUS0x18c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42324c)
  store %struct.Memory* %call_42324c, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x198(%rbp)	 RIP: 423252	 Bytes: 7
  %loadMem_423252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423252 = call %struct.Memory* @routine_movq__rdi__MINUS0x198__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423252)
  store %struct.Memory* %call_423252, %struct.Memory** %MEMORY

  ; Code: callq .prob2ascii	 RIP: 423259	 Bytes: 5
  %loadMem1_423259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423259 = call %struct.Memory* @routine_callq_.prob2ascii(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423259, i64 279, i64 5, i64 5)
  store %struct.Memory* %call1_423259, %struct.Memory** %MEMORY

  %loadMem2_423259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423259 = load i64, i64* %3
  %call2_423259 = call %struct.Memory* @sub_423370.prob2ascii(%struct.State* %0, i64  %loadPC_423259, %struct.Memory* %loadMem2_423259)
  store %struct.Memory* %call2_423259, %struct.Memory** %MEMORY

  ; Code: movq $0x457b2c, %rsi	 RIP: 42325e	 Bytes: 10
  %loadMem_42325e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42325e = call %struct.Memory* @routine_movq__0x457b2c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42325e)
  store %struct.Memory* %call_42325e, %struct.Memory** %MEMORY

  ; Code: movq -0x198(%rbp), %rdi	 RIP: 423268	 Bytes: 7
  %loadMem_423268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423268 = call %struct.Memory* @routine_movq_MINUS0x198__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423268)
  store %struct.Memory* %call_423268, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42326f	 Bytes: 3
  %loadMem_42326f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42326f = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42326f)
  store %struct.Memory* %call_42326f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 423272	 Bytes: 2
  %loadMem_423272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423272 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423272)
  store %struct.Memory* %call_423272, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 423274	 Bytes: 5
  %loadMem1_423274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423274 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423274, i64 -138500, i64 5, i64 5)
  store %struct.Memory* %call1_423274, %struct.Memory** %MEMORY

  %loadMem2_423274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423274 = load i64, i64* %3
  %call2_423274 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_423274, %struct.Memory* %loadMem2_423274)
  store %struct.Memory* %call2_423274, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f7, %rdi	 RIP: 423279	 Bytes: 10
  %loadMem_423279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423279 = call %struct.Memory* @routine_movq__0x45a1f7___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423279)
  store %struct.Memory* %call_423279, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 423283	 Bytes: 4
  %loadMem_423283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423283 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423283)
  store %struct.Memory* %call_423283, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x19c(%rbp)	 RIP: 423287	 Bytes: 6
  %loadMem_423287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423287 = call %struct.Memory* @routine_movl__eax__MINUS0x19c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423287)
  store %struct.Memory* %call_423287, %struct.Memory** %MEMORY

  ; Code: callq .fputs_plt	 RIP: 42328d	 Bytes: 5
  %loadMem1_42328d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42328d = call %struct.Memory* @routine_callq_.fputs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42328d, i64 -138701, i64 5, i64 5)
  store %struct.Memory* %call1_42328d, %struct.Memory** %MEMORY

  %loadMem2_42328d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42328d = load i64, i64* %3
  %call2_42328d = call %struct.Memory* @ext_fputs(%struct.State* %0, i64  %loadPC_42328d, %struct.Memory* %loadMem2_42328d)
  store %struct.Memory* %call2_42328d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1a0(%rbp)	 RIP: 423292	 Bytes: 6
  %loadMem_423292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423292 = call %struct.Memory* @routine_movl__eax__MINUS0x1a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423292)
  store %struct.Memory* %call_423292, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 423298	 Bytes: 3
  %loadMem_423298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423298 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423298)
  store %struct.Memory* %call_423298, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42329b	 Bytes: 3
  %loadMem_42329b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42329b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42329b)
  store %struct.Memory* %call_42329b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 42329e	 Bytes: 3
  %loadMem_42329e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42329e = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42329e)
  store %struct.Memory* %call_42329e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422e69	 RIP: 4232a1	 Bytes: 5
  %loadMem_4232a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4232a1 = call %struct.Memory* @routine_jmpq_.L_422e69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4232a1, i64 -1080, i64 5)
  store %struct.Memory* %call_4232a1, %struct.Memory** %MEMORY

  br label %block_.L_422e69

  ; Code: .L_4232a6:	 RIP: 4232a6	 Bytes: 0
block_.L_4232a6:

  ; Code: movq $0x45756f, %rdi	 RIP: 4232a6	 Bytes: 10
  %loadMem_4232a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4232a6 = call %struct.Memory* @routine_movq__0x45756f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4232a6)
  store %struct.Memory* %call_4232a6, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 4232b0	 Bytes: 4
  %loadMem_4232b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4232b0 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4232b0)
  store %struct.Memory* %call_4232b0, %struct.Memory** %MEMORY

  ; Code: callq .fputs_plt	 RIP: 4232b4	 Bytes: 5
  %loadMem1_4232b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4232b4 = call %struct.Memory* @routine_callq_.fputs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4232b4, i64 -138740, i64 5, i64 5)
  store %struct.Memory* %call1_4232b4, %struct.Memory** %MEMORY

  %loadMem2_4232b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4232b4 = load i64, i64* %3
  %call2_4232b4 = call %struct.Memory* @ext_fputs(%struct.State* %0, i64  %loadPC_4232b4, %struct.Memory* %loadMem2_4232b4)
  store %struct.Memory* %call2_4232b4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1a4(%rbp)	 RIP: 4232b9	 Bytes: 6
  %loadMem_4232b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4232b9 = call %struct.Memory* @routine_movl__eax__MINUS0x1a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4232b9)
  store %struct.Memory* %call_4232b9, %struct.Memory** %MEMORY

  ; Code: addq $0x1b8, %rsp	 RIP: 4232bf	 Bytes: 7
  %loadMem_4232bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4232bf = call %struct.Memory* @routine_addq__0x1b8___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4232bf)
  store %struct.Memory* %call_4232bf, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 4232c6	 Bytes: 1
  %loadMem_4232c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4232c6 = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4232c6)
  store %struct.Memory* %call_4232c6, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 4232c7	 Bytes: 2
  %loadMem_4232c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4232c7 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4232c7)
  store %struct.Memory* %call_4232c7, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 4232c9	 Bytes: 2
  %loadMem_4232c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4232c9 = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4232c9)
  store %struct.Memory* %call_4232c9, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4232cb	 Bytes: 1
  %loadMem_4232cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4232cb = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4232cb)
  store %struct.Memory* %call_4232cb, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4232cc	 Bytes: 1
  %loadMem_4232cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4232cc = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4232cc)
  store %struct.Memory* %call_4232cc, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4232cc
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

define %struct.Memory* @routine_subq__0x1b8___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 440)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x4579fb___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4579fb_type* @G__0x4579fb to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x45653b___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x45653b_type* @G__0x45653b to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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


define %struct.Memory* @routine_movq__0x457a0b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457a0b_type* @G__0x457a0b to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq___rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x1c8__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_andl__0x200___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 512)
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

define %struct.Memory* @routine_je_.L_422755(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x457a15___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457a15_type* @G__0x457a15 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_andl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_42278b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x457a1f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457a1f_type* @G__0x457a1f to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0x10__rax____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__0x457a29___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457a29_type* @G__0x457a29 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x88__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x457a41___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457a41_type* @G__0x457a41 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x457a39___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457a39_type* @G__0x457a39 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x457a33___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x457a33_type* @G__0x457a33 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
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

define %struct.Memory* @routine_cmpl__0x3__0x676d90(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x676d90_type* @G_0x676d90 to i64), i64 3)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMOVZI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  %8 = load i64, i64* %2, align 8
  %9 = select i1 %7, i64 %3, i64 %8
  store i64 %9, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmoveq__rcx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMOVZI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rdi__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
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






define %struct.Memory* @routine_movq__0x457a4b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457a4b_type* @G__0x457a4b to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x457a36___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x457a36_type* @G__0x457a36 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x457914___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x457914_type* @G__0x457914 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_MINUS0x28__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x1c8__r8____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %R8
  %14 = add i64 %13, 456
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_andl__0x4___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 4)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_cmpl__0x0___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R9D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %6 = load i8, i8* %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = load i64, i64* %2, align 8
  %9 = select i1 %7, i64 %3, i64 %8
  store i64 %9, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmovneq__rdx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
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






define %struct.Memory* @routine_movq__0x457a55___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457a55_type* @G__0x457a55 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_andl__0x8___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 8)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x457a5f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457a5f_type* @G__0x457a5f to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_andl__0x100___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 7
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 256)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x457a69___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457a69_type* @G__0x457a69 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x30__rcx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.multiline(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x457a70___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457a70_type* @G__0x457a70 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x38__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x457a7a___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457a7a_type* @G__0x457a7a to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0x40__rcx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x457a84___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457a84_type* @G__0x457a84 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x50__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_0x1c8__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_andl__0x400___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1024)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_422981(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b045___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b045_type* @G__0x45b045 to i64))
  ret %struct.Memory* %11
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = fpext float %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd_0x70__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtss2sd_0x74__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__0x2___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 2)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_andl__0x800___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2048)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_4229c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b093___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b093_type* @G__0x45b093 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_cvtss2sd_0x78__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtss2sd_0x7c__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_andl__0x1000___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4096)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_422a0d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b06c___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b06c_type* @G__0x45b06c to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_cvtss2sd_0x80__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtss2sd_0x84__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__0x457a8e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457a8e_type* @G__0x457a8e to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_callq_.fputs_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
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

define %struct.Memory* @routine_jge_.L_422abd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x2__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_422aaa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0x31cdb__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x31cdb__rip__type* @G_0x31cdb__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_addq__0xac___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 172)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movq__rdi__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.prob2ascii(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x457b2c___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457b2c_type* @G__0x457b2c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x88__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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






define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_422a3b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_422aaf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_422a2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x45a1f7___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x45a1f7_type* @G__0x45a1f7 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__0x457a96___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457a96_type* @G__0x457a96 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movss_0x31c35__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x31c35__rip__type* @G_0x31c35__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_0x130__rsi____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rdi__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movss_0x31bf0__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x31bf0__rip__type* @G_0x31bf0__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to double*
  %6 = load double, double* %5
  %7 = bitcast i8* %2 to double*
  store double %6, double* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 8
  %9 = bitcast i8* %8 to double*
  store double 0.000000e+00, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd_0x31ca0__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x31ca0__rip__type* @G_0x31ca0__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_cvtss2sd_0x130__rdx____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fsub double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subsd__xmm2___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = bitcast i8* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = fptrunc double %11 to float
  %13 = bitcast i8* %2 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %6, i32 1
  %15 = getelementptr inbounds i8, i8* %2, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 0
  %18 = bitcast i8* %7 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %9, i32 1
  %20 = getelementptr inbounds i8, i8* %2, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rdi__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__0x456fbb___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x456fbb_type* @G__0x456fbb to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq__0x457a9d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457a9d_type* @G__0x457a9d to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x677060_type* @G_0x677060 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_422c33(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_0x31b65__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x31b65__rip__type* @G_0x31b65__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movss_0xe0__rax__rcx_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 224
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = inttoptr i64 %3 to i32*
  %11 = load i32, i32* %10
  %12 = sitofp i32 %11 to float
  %13 = bitcast i8* %2 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %6, i32 1
  %15 = getelementptr inbounds i8, i8* %2, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 0
  %18 = bitcast i8* %7 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %9, i32 1
  %20 = getelementptr inbounds i8, i8* %2, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2ssl_0x677060___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x677060_type* @G_0x677060 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fdiv float %13, %14
  %16 = bitcast i8* %2 to float*
  store float %15, float* %16, align 1
  %17 = bitcast <2 x float> %7 to <2 x i32>
  %18 = extractelement <2 x i32> %17, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %10, i32 0
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %10, i32 1
  %25 = getelementptr inbounds i8, i8* %2, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divss__xmm2___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__MINUS0xbc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 188
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %3, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = extractelement <2 x i32> %6, i32 0
  %11 = bitcast i8* %2 to i32*
  store i32 %10, i32* %11, align 1
  %12 = extractelement <2 x i32> %6, i32 1
  %13 = getelementptr inbounds i8, i8* %2, i64 4
  %14 = bitcast i8* %13 to i32*
  store i32 %12, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 0
  %16 = getelementptr inbounds i8, i8* %2, i64 8
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %9, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 12
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movss_MINUS0xbc__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdi__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_422bab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_movl_0x1c8__rsi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_andl__0x80___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 128)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_422c98(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x457aa4___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457aa4_type* @G__0x457aa4 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_cvtss2sd_0x1c0__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtss2sd_0x1c4__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 452
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 212
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__0x457ab5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457ab5_type* @G__0x457ab5 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jge_.L_422cff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x457abf___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457abf_type* @G__0x457abf to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_movsbl_0x676fe0___rax_1____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 6778848
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 220
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_422cba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45a1f7_type* @G__0x45a1f7 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movq__0x457ac8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457ac8_type* @G__0x457ac8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x457af4___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x457af4_type* @G__0x457af4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x457af9___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x457af9_type* @G__0x457af9 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x457afe___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x457afe_type* @G__0x457afe to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x457b03___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G__0x457b03_type* @G__0x457b03 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x457b08___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457b08_type* @G__0x457b08 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x457b0d___r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 ptrtoint( %G__0x457b0d_type* @G__0x457b0d to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x457b12___r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 ptrtoint( %G__0x457b12_type* @G__0x457b12 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x457b17___rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 ptrtoint( %G__0x457b17_type* @G__0x457b17 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x457b1c___r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 ptrtoint( %G__0x457b1c_type* @G__0x457b1c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdi__MINUS0xe8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r15___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R15
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq_MINUS0xe8__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r15____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %R15
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r10__0x8__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r11__0x10__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rbx__0x18__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 24
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r14__0x20__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 32
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 236
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movss_0x3196e__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x3196e__rip__type* @G_0x3196e__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fsub float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subss_0xa8__rcx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm0__MINUS0xf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 240
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_MINUS0xf0__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 244
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rdi__MINUS0x100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__0x457b21___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457b21_type* @G__0x457b21 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x4583b0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x4583b0_type* @G__0x4583b0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x100__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movss_0x31909__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x31909__rip__type* @G_0x31909__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movss_0xa8__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x104__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 260
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rdi__MINUS0x110__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq_MINUS0x110__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x114__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 276
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jg_.L_4232a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x457b31___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457b31_type* @G__0x457b31 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0x118__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 280
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jge_.L_422f1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movq__rdi__MINUS0x120__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq_MINUS0x120__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0x124__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 292
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_422ea1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_andl__0x100___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 256)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_422f60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x457b37___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457b37_type* @G__0x457b37 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_movl__eax__MINUS0x128__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 296
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 300
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rdi__MINUS0x138__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 312
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_je_.L_422fb5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__edx__MINUS0x13c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 316
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_422fc5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x2d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 45)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 316
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x13c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 316
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x457b3b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x457b3b_type* @G__0x457b3b to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x138__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 312
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 320
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jge_.L_4230aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq__rdi__MINUS0x148__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 328
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jge_.L_42305e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movq__rax__MINUS0x150__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 336
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_423074(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4583b0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4583b0_type* @G__0x4583b0 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_MINUS0x150__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x148__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 328
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0x154__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 340
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_422ff2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_andl__0x8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 8)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__eax__MINUS0x158__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 344
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rdi__MINUS0x160__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 352
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_je_.L_4230ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__edx__MINUS0x164__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 356
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_42310f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__eax__MINUS0x164__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 356
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x164__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 356
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x160__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 352
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x168__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 360
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x7__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4231e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq__rdi__MINUS0x170__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 368
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jge_.L_423199(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_0x315bc__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x315bc__rip__type* @G_0x315bc__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
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






define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__rax__MINUS0x178__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 376
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_4231af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movq_MINUS0x178__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 376
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x170__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 368
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0x17c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 380
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_42313c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movss_0x3153b__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x3153b__rip__type* @G_0x3153b__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movq_0xd0__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movq__rdi__MINUS0x188__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 392
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq_MINUS0x188__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 392
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movss_0x314f4__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x314f4__rip__type* @G_0x314f4__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movq_0xd8__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 216
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movss___rcx__rdx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movl__eax__MINUS0x18c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 396
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rdi__MINUS0x198__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 408
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq_MINUS0x198__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 408
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl__eax__MINUS0x19c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 412
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__eax__MINUS0x1a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 416
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_422e69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x45756f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x45756f_type* @G__0x45756f to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x1a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 420
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_addq__0x1b8___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 440)
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

