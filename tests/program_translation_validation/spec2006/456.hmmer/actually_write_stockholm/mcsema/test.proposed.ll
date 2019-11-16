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
declare %struct.Memory* @sub_446650.sre_strtok(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0x45756f_type = type <{ [8 x i8] }>
@G__0x45756f= global %G__0x45756f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459933_type = type <{ [8 x i8] }>
@G__0x459933= global %G__0x459933_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x459c9f_type = type <{ [8 x i8] }>
@G__0x459c9f= global %G__0x459c9f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
@G__0x45a1f7= global %G__0x45a1f7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45af2f_type = type <{ [8 x i8] }>
@G__0x45af2f= global %G__0x45af2f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45afe0_type = type <{ [8 x i8] }>
@G__0x45afe0= global %G__0x45afe0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45afe8_type = type <{ [8 x i8] }>
@G__0x45afe8= global %G__0x45afe8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45aff3_type = type <{ [8 x i8] }>
@G__0x45aff3= global %G__0x45aff3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b004_type = type <{ [8 x i8] }>
@G__0x45b004= global %G__0x45b004_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b013_type = type <{ [8 x i8] }>
@G__0x45b013= global %G__0x45b013_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b022_type = type <{ [8 x i8] }>
@G__0x45b022= global %G__0x45b022_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b031_type = type <{ [8 x i8] }>
@G__0x45b031= global %G__0x45b031_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b040_type = type <{ [8 x i8] }>
@G__0x45b040= global %G__0x45b040_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b056_type = type <{ [8 x i8] }>
@G__0x45b056= global %G__0x45b056_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b067_type = type <{ [8 x i8] }>
@G__0x45b067= global %G__0x45b067_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b07d_type = type <{ [8 x i8] }>
@G__0x45b07d= global %G__0x45b07d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b08e_type = type <{ [8 x i8] }>
@G__0x45b08e= global %G__0x45b08e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b0a4_type = type <{ [8 x i8] }>
@G__0x45b0a4= global %G__0x45b0a4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b0b5_type = type <{ [8 x i8] }>
@G__0x45b0b5= global %G__0x45b0b5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b0c3_type = type <{ [8 x i8] }>
@G__0x45b0c3= global %G__0x45b0c3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b0db_type = type <{ [8 x i8] }>
@G__0x45b0db= global %G__0x45b0db_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b0f1_type = type <{ [8 x i8] }>
@G__0x45b0f1= global %G__0x45b0f1_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b106_type = type <{ [8 x i8] }>
@G__0x45b106= global %G__0x45b106_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b119_type = type <{ [8 x i8] }>
@G__0x45b119= global %G__0x45b119_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b125_type = type <{ [8 x i8] }>
@G__0x45b125= global %G__0x45b125_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b13c_type = type <{ [8 x i8] }>
@G__0x45b13c= global %G__0x45b13c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b153_type = type <{ [8 x i8] }>
@G__0x45b153= global %G__0x45b153_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45b168_type = type <{ [8 x i8] }>
@G__0x45b168= global %G__0x45b168_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @actually_write_stockholm(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .actually_write_stockholm:	 RIP: 44b6f0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 44b6f0	 Bytes: 1
  %loadMem_44b6f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6f0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6f0)
  store %struct.Memory* %call_44b6f0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 44b6f1	 Bytes: 3
  %loadMem_44b6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6f1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6f1)
  store %struct.Memory* %call_44b6f1, %struct.Memory** %MEMORY

  ; Code: subq $0x170, %rsp	 RIP: 44b6f4	 Bytes: 7
  %loadMem_44b6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6f4 = call %struct.Memory* @routine_subq__0x170___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6f4)
  store %struct.Memory* %call_44b6f4, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 44b6fb	 Bytes: 4
  %loadMem_44b6fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6fb = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6fb)
  store %struct.Memory* %call_44b6fb, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 44b6ff	 Bytes: 4
  %loadMem_44b6ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6ff = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6ff)
  store %struct.Memory* %call_44b6ff, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x14(%rbp)	 RIP: 44b703	 Bytes: 3
  %loadMem_44b703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b703 = call %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b703)
  store %struct.Memory* %call_44b703, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 44b706	 Bytes: 7
  %loadMem_44b706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b706 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b706)
  store %struct.Memory* %call_44b706, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 44b70d	 Bytes: 7
  %loadMem_44b70d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b70d = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b70d)
  store %struct.Memory* %call_44b70d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 44b714	 Bytes: 7
  %loadMem_44b714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b714 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b714)
  store %struct.Memory* %call_44b714, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 44b71b	 Bytes: 7
  %loadMem_44b71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b71b = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b71b)
  store %struct.Memory* %call_44b71b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 44b722	 Bytes: 7
  %loadMem_44b722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b722 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b722)
  store %struct.Memory* %call_44b722, %struct.Memory** %MEMORY

  ; Code: .L_44b729:	 RIP: 44b729	 Bytes: 0
  br label %block_.L_44b729
block_.L_44b729:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44b729	 Bytes: 3
  %loadMem_44b729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b729 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b729)
  store %struct.Memory* %call_44b729, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44b72c	 Bytes: 4
  %loadMem_44b72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b72c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b72c)
  store %struct.Memory* %call_44b72c, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 44b730	 Bytes: 3
  %loadMem_44b730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b730 = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b730)
  store %struct.Memory* %call_44b730, %struct.Memory** %MEMORY

  ; Code: jge .L_44b775	 RIP: 44b733	 Bytes: 6
  %loadMem_44b733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b733 = call %struct.Memory* @routine_jge_.L_44b775(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b733, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_44b733, %struct.Memory** %MEMORY

  %loadBr_44b733 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b733 = icmp eq i8 %loadBr_44b733, 1
  br i1 %cmpBr_44b733, label %block_.L_44b775, label %block_44b739

block_44b739:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 44b739	 Bytes: 4
  %loadMem_44b739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b739 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b739)
  store %struct.Memory* %call_44b739, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 44b73d	 Bytes: 4
  %loadMem_44b73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b73d = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b73d)
  store %struct.Memory* %call_44b73d, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44b741	 Bytes: 4
  %loadMem_44b741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b741 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b741)
  store %struct.Memory* %call_44b741, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdi	 RIP: 44b745	 Bytes: 4
  %loadMem_44b745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b745 = call %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b745)
  store %struct.Memory* %call_44b745, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 44b749	 Bytes: 5
  %loadMem1_44b749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b749 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b749, i64 -303849, i64 5, i64 5)
  store %struct.Memory* %call1_44b749, %struct.Memory** %MEMORY

  %loadMem2_44b749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b749 = load i64, i64* %3
  %call2_44b749 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_44b749, %struct.Memory* %loadMem2_44b749)
  store %struct.Memory* %call2_44b749, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44b74e	 Bytes: 2
  %loadMem_44b74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b74e = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b74e)
  store %struct.Memory* %call_44b74e, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x20(%rbp)	 RIP: 44b750	 Bytes: 3
  %loadMem_44b750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b750 = call %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b750)
  store %struct.Memory* %call_44b750, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %edx	 RIP: 44b753	 Bytes: 3
  %loadMem_44b753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b753 = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b753)
  store %struct.Memory* %call_44b753, %struct.Memory** %MEMORY

  ; Code: jle .L_44b762	 RIP: 44b756	 Bytes: 6
  %loadMem_44b756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b756 = call %struct.Memory* @routine_jle_.L_44b762(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b756, i8* %BRANCH_TAKEN, i64 12, i64 6, i64 6)
  store %struct.Memory* %call_44b756, %struct.Memory** %MEMORY

  %loadBr_44b756 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b756 = icmp eq i8 %loadBr_44b756, 1
  br i1 %cmpBr_44b756, label %block_.L_44b762, label %block_44b75c

block_44b75c:
  ; Code: movl -0x20(%rbp), %eax	 RIP: 44b75c	 Bytes: 3
  %loadMem_44b75c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b75c = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b75c)
  store %struct.Memory* %call_44b75c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 44b75f	 Bytes: 3
  %loadMem_44b75f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b75f = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b75f)
  store %struct.Memory* %call_44b75f, %struct.Memory** %MEMORY

  ; Code: .L_44b762:	 RIP: 44b762	 Bytes: 0
  br label %block_.L_44b762
block_.L_44b762:

  ; Code: jmpq .L_44b767	 RIP: 44b762	 Bytes: 5
  %loadMem_44b762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b762 = call %struct.Memory* @routine_jmpq_.L_44b767(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b762, i64 5, i64 5)
  store %struct.Memory* %call_44b762, %struct.Memory** %MEMORY

  br label %block_.L_44b767

  ; Code: .L_44b767:	 RIP: 44b767	 Bytes: 0
block_.L_44b767:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44b767	 Bytes: 3
  %loadMem_44b767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b767 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b767)
  store %struct.Memory* %call_44b767, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44b76a	 Bytes: 3
  %loadMem_44b76a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b76a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b76a)
  store %struct.Memory* %call_44b76a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44b76d	 Bytes: 3
  %loadMem_44b76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b76d = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b76d)
  store %struct.Memory* %call_44b76d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44b729	 RIP: 44b770	 Bytes: 5
  %loadMem_44b770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b770 = call %struct.Memory* @routine_jmpq_.L_44b729(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b770, i64 -71, i64 5)
  store %struct.Memory* %call_44b770, %struct.Memory** %MEMORY

  br label %block_.L_44b729

  ; Code: .L_44b775:	 RIP: 44b775	 Bytes: 0
block_.L_44b775:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44b775	 Bytes: 4
  %loadMem_44b775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b775 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b775)
  store %struct.Memory* %call_44b775, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x70(%rax)	 RIP: 44b779	 Bytes: 5
  %loadMem_44b779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b779 = call %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b779)
  store %struct.Memory* %call_44b779, %struct.Memory** %MEMORY

  ; Code: je .L_44b792	 RIP: 44b77e	 Bytes: 6
  %loadMem_44b77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b77e = call %struct.Memory* @routine_je_.L_44b792(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b77e, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_44b77e, %struct.Memory** %MEMORY

  %loadBr_44b77e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b77e = icmp eq i8 %loadBr_44b77e, 1
  br i1 %cmpBr_44b77e, label %block_.L_44b792, label %block_44b784

block_44b784:
  ; Code: movl $0x4, -0x2c(%rbp)	 RIP: 44b784	 Bytes: 7
  %loadMem_44b784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b784 = call %struct.Memory* @routine_movl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b784)
  store %struct.Memory* %call_44b784, %struct.Memory** %MEMORY

  ; Code: movl $0x2, -0x28(%rbp)	 RIP: 44b78b	 Bytes: 7
  %loadMem_44b78b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b78b = call %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b78b)
  store %struct.Memory* %call_44b78b, %struct.Memory** %MEMORY

  ; Code: .L_44b792:	 RIP: 44b792	 Bytes: 0
  br label %block_.L_44b792
block_.L_44b792:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44b792	 Bytes: 4
  %loadMem_44b792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b792 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b792)
  store %struct.Memory* %call_44b792, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x78(%rax)	 RIP: 44b796	 Bytes: 5
  %loadMem_44b796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b796 = call %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b796)
  store %struct.Memory* %call_44b796, %struct.Memory** %MEMORY

  ; Code: je .L_44b7af	 RIP: 44b79b	 Bytes: 6
  %loadMem_44b79b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b79b = call %struct.Memory* @routine_je_.L_44b7af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b79b, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_44b79b, %struct.Memory** %MEMORY

  %loadBr_44b79b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b79b = icmp eq i8 %loadBr_44b79b, 1
  br i1 %cmpBr_44b79b, label %block_.L_44b7af, label %block_44b7a1

block_44b7a1:
  ; Code: movl $0x4, -0x2c(%rbp)	 RIP: 44b7a1	 Bytes: 7
  %loadMem_44b7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7a1 = call %struct.Memory* @routine_movl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7a1)
  store %struct.Memory* %call_44b7a1, %struct.Memory** %MEMORY

  ; Code: movl $0x2, -0x28(%rbp)	 RIP: 44b7a8	 Bytes: 7
  %loadMem_44b7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7a8 = call %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7a8)
  store %struct.Memory* %call_44b7a8, %struct.Memory** %MEMORY

  ; Code: .L_44b7af:	 RIP: 44b7af	 Bytes: 0
  br label %block_.L_44b7af
block_.L_44b7af:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 44b7af	 Bytes: 7
  %loadMem_44b7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7af = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7af)
  store %struct.Memory* %call_44b7af, %struct.Memory** %MEMORY

  ; Code: .L_44b7b6:	 RIP: 44b7b6	 Bytes: 0
  br label %block_.L_44b7b6
block_.L_44b7b6:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44b7b6	 Bytes: 3
  %loadMem_44b7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7b6 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7b6)
  store %struct.Memory* %call_44b7b6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44b7b9	 Bytes: 4
  %loadMem_44b7b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7b9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7b9)
  store %struct.Memory* %call_44b7b9, %struct.Memory** %MEMORY

  ; Code: cmpl 0x130(%rcx), %eax	 RIP: 44b7bd	 Bytes: 6
  %loadMem_44b7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7bd = call %struct.Memory* @routine_cmpl_0x130__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7bd)
  store %struct.Memory* %call_44b7bd, %struct.Memory** %MEMORY

  ; Code: jge .L_44b808	 RIP: 44b7c3	 Bytes: 6
  %loadMem_44b7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7c3 = call %struct.Memory* @routine_jge_.L_44b808(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7c3, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_44b7c3, %struct.Memory** %MEMORY

  %loadBr_44b7c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b7c3 = icmp eq i8 %loadBr_44b7c3, 1
  br i1 %cmpBr_44b7c3, label %block_.L_44b808, label %block_44b7c9

block_44b7c9:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 44b7c9	 Bytes: 4
  %loadMem_44b7c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7c9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7c9)
  store %struct.Memory* %call_44b7c9, %struct.Memory** %MEMORY

  ; Code: movq 0x118(%rax), %rax	 RIP: 44b7cd	 Bytes: 7
  %loadMem_44b7cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7cd = call %struct.Memory* @routine_movq_0x118__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7cd)
  store %struct.Memory* %call_44b7cd, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44b7d4	 Bytes: 4
  %loadMem_44b7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7d4 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7d4)
  store %struct.Memory* %call_44b7d4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdi	 RIP: 44b7d8	 Bytes: 4
  %loadMem_44b7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7d8 = call %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7d8)
  store %struct.Memory* %call_44b7d8, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 44b7dc	 Bytes: 5
  %loadMem1_44b7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b7dc = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b7dc, i64 -303996, i64 5, i64 5)
  store %struct.Memory* %call1_44b7dc, %struct.Memory** %MEMORY

  %loadMem2_44b7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b7dc = load i64, i64* %3
  %call2_44b7dc = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_44b7dc, %struct.Memory* %loadMem2_44b7dc)
  store %struct.Memory* %call2_44b7dc, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44b7e1	 Bytes: 2
  %loadMem_44b7e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7e1 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7e1)
  store %struct.Memory* %call_44b7e1, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x20(%rbp)	 RIP: 44b7e3	 Bytes: 3
  %loadMem_44b7e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7e3 = call %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7e3)
  store %struct.Memory* %call_44b7e3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %edx	 RIP: 44b7e6	 Bytes: 3
  %loadMem_44b7e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7e6 = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7e6)
  store %struct.Memory* %call_44b7e6, %struct.Memory** %MEMORY

  ; Code: jle .L_44b7f5	 RIP: 44b7e9	 Bytes: 6
  %loadMem_44b7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7e9 = call %struct.Memory* @routine_jle_.L_44b7f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7e9, i8* %BRANCH_TAKEN, i64 12, i64 6, i64 6)
  store %struct.Memory* %call_44b7e9, %struct.Memory** %MEMORY

  %loadBr_44b7e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b7e9 = icmp eq i8 %loadBr_44b7e9, 1
  br i1 %cmpBr_44b7e9, label %block_.L_44b7f5, label %block_44b7ef

block_44b7ef:
  ; Code: movl -0x20(%rbp), %eax	 RIP: 44b7ef	 Bytes: 3
  %loadMem_44b7ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7ef = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7ef)
  store %struct.Memory* %call_44b7ef, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 44b7f2	 Bytes: 3
  %loadMem_44b7f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7f2 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7f2)
  store %struct.Memory* %call_44b7f2, %struct.Memory** %MEMORY

  ; Code: .L_44b7f5:	 RIP: 44b7f5	 Bytes: 0
  br label %block_.L_44b7f5
block_.L_44b7f5:

  ; Code: jmpq .L_44b7fa	 RIP: 44b7f5	 Bytes: 5
  %loadMem_44b7f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7f5 = call %struct.Memory* @routine_jmpq_.L_44b7fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7f5, i64 5, i64 5)
  store %struct.Memory* %call_44b7f5, %struct.Memory** %MEMORY

  br label %block_.L_44b7fa

  ; Code: .L_44b7fa:	 RIP: 44b7fa	 Bytes: 0
block_.L_44b7fa:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44b7fa	 Bytes: 3
  %loadMem_44b7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7fa = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7fa)
  store %struct.Memory* %call_44b7fa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44b7fd	 Bytes: 3
  %loadMem_44b7fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7fd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7fd)
  store %struct.Memory* %call_44b7fd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44b800	 Bytes: 3
  %loadMem_44b800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b800 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b800)
  store %struct.Memory* %call_44b800, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44b7b6	 RIP: 44b803	 Bytes: 5
  %loadMem_44b803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b803 = call %struct.Memory* @routine_jmpq_.L_44b7b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b803, i64 -77, i64 5)
  store %struct.Memory* %call_44b803, %struct.Memory** %MEMORY

  br label %block_.L_44b7b6

  ; Code: .L_44b808:	 RIP: 44b808	 Bytes: 0
block_.L_44b808:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44b808	 Bytes: 4
  %loadMem_44b808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b808 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b808)
  store %struct.Memory* %call_44b808, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x58(%rax)	 RIP: 44b80c	 Bytes: 5
  %loadMem_44b80c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b80c = call %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b80c)
  store %struct.Memory* %call_44b80c, %struct.Memory** %MEMORY

  ; Code: je .L_44b834	 RIP: 44b811	 Bytes: 6
  %loadMem_44b811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b811 = call %struct.Memory* @routine_je_.L_44b834(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b811, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_44b811, %struct.Memory** %MEMORY

  %loadBr_44b811 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b811 = icmp eq i8 %loadBr_44b811, 1
  br i1 %cmpBr_44b811, label %block_.L_44b834, label %block_44b817

block_44b817:
  ; Code: movl $0x4, -0x2c(%rbp)	 RIP: 44b817	 Bytes: 7
  %loadMem_44b817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b817 = call %struct.Memory* @routine_movl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b817)
  store %struct.Memory* %call_44b817, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x28(%rbp)	 RIP: 44b81e	 Bytes: 4
  %loadMem_44b81e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b81e = call %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b81e)
  store %struct.Memory* %call_44b81e, %struct.Memory** %MEMORY

  ; Code: jge .L_44b82f	 RIP: 44b822	 Bytes: 6
  %loadMem_44b822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b822 = call %struct.Memory* @routine_jge_.L_44b82f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b822, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_44b822, %struct.Memory** %MEMORY

  %loadBr_44b822 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b822 = icmp eq i8 %loadBr_44b822, 1
  br i1 %cmpBr_44b822, label %block_.L_44b82f, label %block_44b828

block_44b828:
  ; Code: movl $0x2, -0x28(%rbp)	 RIP: 44b828	 Bytes: 7
  %loadMem_44b828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b828 = call %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b828)
  store %struct.Memory* %call_44b828, %struct.Memory** %MEMORY

  ; Code: .L_44b82f:	 RIP: 44b82f	 Bytes: 0
  br label %block_.L_44b82f
block_.L_44b82f:

  ; Code: jmpq .L_44b834	 RIP: 44b82f	 Bytes: 5
  %loadMem_44b82f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b82f = call %struct.Memory* @routine_jmpq_.L_44b834(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b82f, i64 5, i64 5)
  store %struct.Memory* %call_44b82f, %struct.Memory** %MEMORY

  br label %block_.L_44b834

  ; Code: .L_44b834:	 RIP: 44b834	 Bytes: 0
block_.L_44b834:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44b834	 Bytes: 4
  %loadMem_44b834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b834 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b834)
  store %struct.Memory* %call_44b834, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x48(%rax)	 RIP: 44b838	 Bytes: 5
  %loadMem_44b838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b838 = call %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b838)
  store %struct.Memory* %call_44b838, %struct.Memory** %MEMORY

  ; Code: je .L_44b860	 RIP: 44b83d	 Bytes: 6
  %loadMem_44b83d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b83d = call %struct.Memory* @routine_je_.L_44b860(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b83d, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_44b83d, %struct.Memory** %MEMORY

  %loadBr_44b83d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b83d = icmp eq i8 %loadBr_44b83d, 1
  br i1 %cmpBr_44b83d, label %block_.L_44b860, label %block_44b843

block_44b843:
  ; Code: movl $0x4, -0x2c(%rbp)	 RIP: 44b843	 Bytes: 7
  %loadMem_44b843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b843 = call %struct.Memory* @routine_movl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b843)
  store %struct.Memory* %call_44b843, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7, -0x28(%rbp)	 RIP: 44b84a	 Bytes: 4
  %loadMem_44b84a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b84a = call %struct.Memory* @routine_cmpl__0x7__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b84a)
  store %struct.Memory* %call_44b84a, %struct.Memory** %MEMORY

  ; Code: jge .L_44b85b	 RIP: 44b84e	 Bytes: 6
  %loadMem_44b84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b84e = call %struct.Memory* @routine_jge_.L_44b85b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b84e, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_44b84e, %struct.Memory** %MEMORY

  %loadBr_44b84e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b84e = icmp eq i8 %loadBr_44b84e, 1
  br i1 %cmpBr_44b84e, label %block_.L_44b85b, label %block_44b854

block_44b854:
  ; Code: movl $0x7, -0x28(%rbp)	 RIP: 44b854	 Bytes: 7
  %loadMem_44b854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b854 = call %struct.Memory* @routine_movl__0x7__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b854)
  store %struct.Memory* %call_44b854, %struct.Memory** %MEMORY

  ; Code: .L_44b85b:	 RIP: 44b85b	 Bytes: 0
  br label %block_.L_44b85b
block_.L_44b85b:

  ; Code: jmpq .L_44b860	 RIP: 44b85b	 Bytes: 5
  %loadMem_44b85b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b85b = call %struct.Memory* @routine_jmpq_.L_44b860(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b85b, i64 5, i64 5)
  store %struct.Memory* %call_44b85b, %struct.Memory** %MEMORY

  br label %block_.L_44b860

  ; Code: .L_44b860:	 RIP: 44b860	 Bytes: 0
block_.L_44b860:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44b860	 Bytes: 4
  %loadMem_44b860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b860 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b860)
  store %struct.Memory* %call_44b860, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x50(%rax)	 RIP: 44b864	 Bytes: 5
  %loadMem_44b864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b864 = call %struct.Memory* @routine_cmpq__0x0__0x50__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b864)
  store %struct.Memory* %call_44b864, %struct.Memory** %MEMORY

  ; Code: je .L_44b88c	 RIP: 44b869	 Bytes: 6
  %loadMem_44b869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b869 = call %struct.Memory* @routine_je_.L_44b88c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b869, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_44b869, %struct.Memory** %MEMORY

  %loadBr_44b869 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b869 = icmp eq i8 %loadBr_44b869, 1
  br i1 %cmpBr_44b869, label %block_.L_44b88c, label %block_44b86f

block_44b86f:
  ; Code: movl $0x4, -0x2c(%rbp)	 RIP: 44b86f	 Bytes: 7
  %loadMem_44b86f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b86f = call %struct.Memory* @routine_movl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b86f)
  store %struct.Memory* %call_44b86f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7, -0x28(%rbp)	 RIP: 44b876	 Bytes: 4
  %loadMem_44b876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b876 = call %struct.Memory* @routine_cmpl__0x7__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b876)
  store %struct.Memory* %call_44b876, %struct.Memory** %MEMORY

  ; Code: jge .L_44b887	 RIP: 44b87a	 Bytes: 6
  %loadMem_44b87a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b87a = call %struct.Memory* @routine_jge_.L_44b887(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b87a, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_44b87a, %struct.Memory** %MEMORY

  %loadBr_44b87a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b87a = icmp eq i8 %loadBr_44b87a, 1
  br i1 %cmpBr_44b87a, label %block_.L_44b887, label %block_44b880

block_44b880:
  ; Code: movl $0x7, -0x28(%rbp)	 RIP: 44b880	 Bytes: 7
  %loadMem_44b880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b880 = call %struct.Memory* @routine_movl__0x7__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b880)
  store %struct.Memory* %call_44b880, %struct.Memory** %MEMORY

  ; Code: .L_44b887:	 RIP: 44b887	 Bytes: 0
  br label %block_.L_44b887
block_.L_44b887:

  ; Code: jmpq .L_44b88c	 RIP: 44b887	 Bytes: 5
  %loadMem_44b887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b887 = call %struct.Memory* @routine_jmpq_.L_44b88c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b887, i64 5, i64 5)
  store %struct.Memory* %call_44b887, %struct.Memory** %MEMORY

  br label %block_.L_44b88c

  ; Code: .L_44b88c:	 RIP: 44b88c	 Bytes: 0
block_.L_44b88c:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 44b88c	 Bytes: 7
  %loadMem_44b88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b88c = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b88c)
  store %struct.Memory* %call_44b88c, %struct.Memory** %MEMORY

  ; Code: .L_44b893:	 RIP: 44b893	 Bytes: 0
  br label %block_.L_44b893
block_.L_44b893:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44b893	 Bytes: 3
  %loadMem_44b893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b893 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b893)
  store %struct.Memory* %call_44b893, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44b896	 Bytes: 4
  %loadMem_44b896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b896 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b896)
  store %struct.Memory* %call_44b896, %struct.Memory** %MEMORY

  ; Code: cmpl 0x110(%rcx), %eax	 RIP: 44b89a	 Bytes: 6
  %loadMem_44b89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b89a = call %struct.Memory* @routine_cmpl_0x110__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b89a)
  store %struct.Memory* %call_44b89a, %struct.Memory** %MEMORY

  ; Code: jge .L_44b8e5	 RIP: 44b8a0	 Bytes: 6
  %loadMem_44b8a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8a0 = call %struct.Memory* @routine_jge_.L_44b8e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8a0, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_44b8a0, %struct.Memory** %MEMORY

  %loadBr_44b8a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b8a0 = icmp eq i8 %loadBr_44b8a0, 1
  br i1 %cmpBr_44b8a0, label %block_.L_44b8e5, label %block_44b8a6

block_44b8a6:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 44b8a6	 Bytes: 4
  %loadMem_44b8a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8a6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8a6)
  store %struct.Memory* %call_44b8a6, %struct.Memory** %MEMORY

  ; Code: movq 0xf8(%rax), %rax	 RIP: 44b8aa	 Bytes: 7
  %loadMem_44b8aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8aa = call %struct.Memory* @routine_movq_0xf8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8aa)
  store %struct.Memory* %call_44b8aa, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44b8b1	 Bytes: 4
  %loadMem_44b8b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8b1 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8b1)
  store %struct.Memory* %call_44b8b1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdi	 RIP: 44b8b5	 Bytes: 4
  %loadMem_44b8b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8b5 = call %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8b5)
  store %struct.Memory* %call_44b8b5, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 44b8b9	 Bytes: 5
  %loadMem1_44b8b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b8b9 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b8b9, i64 -304217, i64 5, i64 5)
  store %struct.Memory* %call1_44b8b9, %struct.Memory** %MEMORY

  %loadMem2_44b8b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b8b9 = load i64, i64* %3
  %call2_44b8b9 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_44b8b9, %struct.Memory* %loadMem2_44b8b9)
  store %struct.Memory* %call2_44b8b9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44b8be	 Bytes: 2
  %loadMem_44b8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8be = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8be)
  store %struct.Memory* %call_44b8be, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x20(%rbp)	 RIP: 44b8c0	 Bytes: 3
  %loadMem_44b8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8c0 = call %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8c0)
  store %struct.Memory* %call_44b8c0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %edx	 RIP: 44b8c3	 Bytes: 3
  %loadMem_44b8c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8c3 = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8c3)
  store %struct.Memory* %call_44b8c3, %struct.Memory** %MEMORY

  ; Code: jle .L_44b8d2	 RIP: 44b8c6	 Bytes: 6
  %loadMem_44b8c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8c6 = call %struct.Memory* @routine_jle_.L_44b8d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8c6, i8* %BRANCH_TAKEN, i64 12, i64 6, i64 6)
  store %struct.Memory* %call_44b8c6, %struct.Memory** %MEMORY

  %loadBr_44b8c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b8c6 = icmp eq i8 %loadBr_44b8c6, 1
  br i1 %cmpBr_44b8c6, label %block_.L_44b8d2, label %block_44b8cc

block_44b8cc:
  ; Code: movl -0x20(%rbp), %eax	 RIP: 44b8cc	 Bytes: 3
  %loadMem_44b8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8cc = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8cc)
  store %struct.Memory* %call_44b8cc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 44b8cf	 Bytes: 3
  %loadMem_44b8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8cf = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8cf)
  store %struct.Memory* %call_44b8cf, %struct.Memory** %MEMORY

  ; Code: .L_44b8d2:	 RIP: 44b8d2	 Bytes: 0
  br label %block_.L_44b8d2
block_.L_44b8d2:

  ; Code: jmpq .L_44b8d7	 RIP: 44b8d2	 Bytes: 5
  %loadMem_44b8d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8d2 = call %struct.Memory* @routine_jmpq_.L_44b8d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8d2, i64 5, i64 5)
  store %struct.Memory* %call_44b8d2, %struct.Memory** %MEMORY

  br label %block_.L_44b8d7

  ; Code: .L_44b8d7:	 RIP: 44b8d7	 Bytes: 0
block_.L_44b8d7:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44b8d7	 Bytes: 3
  %loadMem_44b8d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8d7 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8d7)
  store %struct.Memory* %call_44b8d7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44b8da	 Bytes: 3
  %loadMem_44b8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8da = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8da)
  store %struct.Memory* %call_44b8da, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44b8dd	 Bytes: 3
  %loadMem_44b8dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8dd = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8dd)
  store %struct.Memory* %call_44b8dd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44b893	 RIP: 44b8e0	 Bytes: 5
  %loadMem_44b8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8e0 = call %struct.Memory* @routine_jmpq_.L_44b893(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8e0, i64 -77, i64 5)
  store %struct.Memory* %call_44b8e0, %struct.Memory** %MEMORY

  br label %block_.L_44b893

  ; Code: .L_44b8e5:	 RIP: 44b8e5	 Bytes: 0
block_.L_44b8e5:

  ; Code: movq $0x45af2f, %rdi	 RIP: 44b8e5	 Bytes: 10
  %loadMem_44b8e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8e5 = call %struct.Memory* @routine_movq__0x45af2f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8e5)
  store %struct.Memory* %call_44b8e5, %struct.Memory** %MEMORY

  ; Code: movl $0xfb, %esi	 RIP: 44b8ef	 Bytes: 5
  %loadMem_44b8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8ef = call %struct.Memory* @routine_movl__0xfb___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8ef)
  store %struct.Memory* %call_44b8ef, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44b8f4	 Bytes: 3
  %loadMem_44b8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8f4 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8f4)
  store %struct.Memory* %call_44b8f4, %struct.Memory** %MEMORY

  ; Code: addl -0x24(%rbp), %eax	 RIP: 44b8f7	 Bytes: 3
  %loadMem_44b8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8f7 = call %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8f7)
  store %struct.Memory* %call_44b8f7, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %eax	 RIP: 44b8fa	 Bytes: 3
  %loadMem_44b8fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8fa = call %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8fa)
  store %struct.Memory* %call_44b8fa, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %eax	 RIP: 44b8fd	 Bytes: 3
  %loadMem_44b8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8fd = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8fd)
  store %struct.Memory* %call_44b8fd, %struct.Memory** %MEMORY

  ; Code: addl $0x3d, %eax	 RIP: 44b900	 Bytes: 3
  %loadMem_44b900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b900 = call %struct.Memory* @routine_addl__0x3d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b900)
  store %struct.Memory* %call_44b900, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 44b903	 Bytes: 3
  %loadMem_44b903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b903 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b903)
  store %struct.Memory* %call_44b903, %struct.Memory** %MEMORY

  ; Code: shlq $0x0, %rcx	 RIP: 44b906	 Bytes: 4
  %loadMem_44b906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b906 = call %struct.Memory* @routine_shlq__0x0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b906)
  store %struct.Memory* %call_44b906, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 44b90a	 Bytes: 3
  %loadMem_44b90a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b90a = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b90a)
  store %struct.Memory* %call_44b90a, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 44b90d	 Bytes: 5
  %loadMem1_44b90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b90d = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b90d, i64 -22701, i64 5, i64 5)
  store %struct.Memory* %call1_44b90d, %struct.Memory** %MEMORY

  %loadMem2_44b90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b90d = load i64, i64* %3
  %call2_44b90d = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_44b90d, %struct.Memory* %loadMem2_44b90d)
  store %struct.Memory* %call2_44b90d, %struct.Memory** %MEMORY

  ; Code: movq $0x45aff3, %rsi	 RIP: 44b912	 Bytes: 10
  %loadMem_44b912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b912 = call %struct.Memory* @routine_movq__0x45aff3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b912)
  store %struct.Memory* %call_44b912, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 44b91c	 Bytes: 4
  %loadMem_44b91c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b91c = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b91c)
  store %struct.Memory* %call_44b91c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44b920	 Bytes: 4
  %loadMem_44b920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b920 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b920)
  store %struct.Memory* %call_44b920, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44b924	 Bytes: 2
  %loadMem_44b924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b924 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b924)
  store %struct.Memory* %call_44b924, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44b926	 Bytes: 5
  %loadMem1_44b926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b926 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b926, i64 -304054, i64 5, i64 5)
  store %struct.Memory* %call1_44b926, %struct.Memory** %MEMORY

  %loadMem2_44b926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b926 = load i64, i64* %3
  %call2_44b926 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44b926, %struct.Memory* %loadMem2_44b926)
  store %struct.Memory* %call2_44b926, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 44b92b	 Bytes: 7
  %loadMem_44b92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b92b = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b92b)
  store %struct.Memory* %call_44b92b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 44b932	 Bytes: 3
  %loadMem_44b932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b932 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b932)
  store %struct.Memory* %call_44b932, %struct.Memory** %MEMORY

  ; Code: .L_44b935:	 RIP: 44b935	 Bytes: 0
  br label %block_.L_44b935
block_.L_44b935:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44b935	 Bytes: 3
  %loadMem_44b935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b935 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b935)
  store %struct.Memory* %call_44b935, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44b938	 Bytes: 4
  %loadMem_44b938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b938 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b938)
  store %struct.Memory* %call_44b938, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8(%rcx), %eax	 RIP: 44b93c	 Bytes: 6
  %loadMem_44b93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b93c = call %struct.Memory* @routine_cmpl_0xb8__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b93c)
  store %struct.Memory* %call_44b93c, %struct.Memory** %MEMORY

  ; Code: jge .L_44b981	 RIP: 44b942	 Bytes: 6
  %loadMem_44b942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b942 = call %struct.Memory* @routine_jge_.L_44b981(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b942, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_44b942, %struct.Memory** %MEMORY

  %loadBr_44b942 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b942 = icmp eq i8 %loadBr_44b942, 1
  br i1 %cmpBr_44b942, label %block_.L_44b981, label %block_44b948

block_44b948:
  ; Code: movq $0x459c9f, %rsi	 RIP: 44b948	 Bytes: 10
  %loadMem_44b948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b948 = call %struct.Memory* @routine_movq__0x459c9f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b948)
  store %struct.Memory* %call_44b948, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44b952	 Bytes: 4
  %loadMem_44b952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b952 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b952)
  store %struct.Memory* %call_44b952, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44b956	 Bytes: 4
  %loadMem_44b956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b956 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b956)
  store %struct.Memory* %call_44b956, %struct.Memory** %MEMORY

  ; Code: movq 0xb0(%rax), %rax	 RIP: 44b95a	 Bytes: 7
  %loadMem_44b95a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b95a = call %struct.Memory* @routine_movq_0xb0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b95a)
  store %struct.Memory* %call_44b95a, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44b961	 Bytes: 4
  %loadMem_44b961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b961 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b961)
  store %struct.Memory* %call_44b961, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdx	 RIP: 44b965	 Bytes: 4
  %loadMem_44b965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b965 = call %struct.Memory* @routine_movq___rax__rcx_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b965)
  store %struct.Memory* %call_44b965, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44b969	 Bytes: 2
  %loadMem_44b969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b969 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b969)
  store %struct.Memory* %call_44b969, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44b96b	 Bytes: 5
  %loadMem1_44b96b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b96b = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b96b, i64 -304123, i64 5, i64 5)
  store %struct.Memory* %call1_44b96b, %struct.Memory** %MEMORY

  %loadMem2_44b96b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b96b = load i64, i64* %3
  %call2_44b96b = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44b96b, %struct.Memory* %loadMem2_44b96b)
  store %struct.Memory* %call2_44b96b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 44b970	 Bytes: 3
  %loadMem_44b970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b970 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b970)
  store %struct.Memory* %call_44b970, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44b973	 Bytes: 3
  %loadMem_44b973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b973 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b973)
  store %struct.Memory* %call_44b973, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44b976	 Bytes: 3
  %loadMem_44b976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b976 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b976)
  store %struct.Memory* %call_44b976, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44b979	 Bytes: 3
  %loadMem_44b979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b979 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b979)
  store %struct.Memory* %call_44b979, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44b935	 RIP: 44b97c	 Bytes: 5
  %loadMem_44b97c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b97c = call %struct.Memory* @routine_jmpq_.L_44b935(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b97c, i64 -71, i64 5)
  store %struct.Memory* %call_44b97c, %struct.Memory** %MEMORY

  br label %block_.L_44b935

  ; Code: .L_44b981:	 RIP: 44b981	 Bytes: 0
block_.L_44b981:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44b981	 Bytes: 4
  %loadMem_44b981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b981 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b981)
  store %struct.Memory* %call_44b981, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb8(%rax)	 RIP: 44b985	 Bytes: 7
  %loadMem_44b985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b985 = call %struct.Memory* @routine_cmpl__0x0__0xb8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b985)
  store %struct.Memory* %call_44b985, %struct.Memory** %MEMORY

  ; Code: jle .L_44b9aa	 RIP: 44b98c	 Bytes: 6
  %loadMem_44b98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b98c = call %struct.Memory* @routine_jle_.L_44b9aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b98c, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_44b98c, %struct.Memory** %MEMORY

  %loadBr_44b98c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b98c = icmp eq i8 %loadBr_44b98c, 1
  br i1 %cmpBr_44b98c, label %block_.L_44b9aa, label %block_44b992

block_44b992:
  ; Code: movq $0x45a1f7, %rsi	 RIP: 44b992	 Bytes: 10
  %loadMem_44b992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b992 = call %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b992)
  store %struct.Memory* %call_44b992, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44b99c	 Bytes: 4
  %loadMem_44b99c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b99c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b99c)
  store %struct.Memory* %call_44b99c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44b9a0	 Bytes: 2
  %loadMem_44b9a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9a0 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9a0)
  store %struct.Memory* %call_44b9a0, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44b9a2	 Bytes: 5
  %loadMem1_44b9a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b9a2 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b9a2, i64 -304178, i64 5, i64 5)
  store %struct.Memory* %call1_44b9a2, %struct.Memory** %MEMORY

  %loadMem2_44b9a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b9a2 = load i64, i64* %3
  %call2_44b9a2 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44b9a2, %struct.Memory* %loadMem2_44b9a2)
  store %struct.Memory* %call2_44b9a2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 44b9a7	 Bytes: 3
  %loadMem_44b9a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9a7 = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9a7)
  store %struct.Memory* %call_44b9a7, %struct.Memory** %MEMORY

  ; Code: .L_44b9aa:	 RIP: 44b9aa	 Bytes: 0
  br label %block_.L_44b9aa
block_.L_44b9aa:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44b9aa	 Bytes: 4
  %loadMem_44b9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9aa = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9aa)
  store %struct.Memory* %call_44b9aa, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x28(%rax)	 RIP: 44b9ae	 Bytes: 5
  %loadMem_44b9ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9ae = call %struct.Memory* @routine_cmpq__0x0__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9ae)
  store %struct.Memory* %call_44b9ae, %struct.Memory** %MEMORY

  ; Code: je .L_44b9d9	 RIP: 44b9b3	 Bytes: 6
  %loadMem_44b9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9b3 = call %struct.Memory* @routine_je_.L_44b9d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9b3, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_44b9b3, %struct.Memory** %MEMORY

  %loadBr_44b9b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b9b3 = icmp eq i8 %loadBr_44b9b3, 1
  br i1 %cmpBr_44b9b3, label %block_.L_44b9d9, label %block_44b9b9

block_44b9b9:
  ; Code: movq $0x45b004, %rsi	 RIP: 44b9b9	 Bytes: 10
  %loadMem_44b9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9b9 = call %struct.Memory* @routine_movq__0x45b004___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9b9)
  store %struct.Memory* %call_44b9b9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44b9c3	 Bytes: 4
  %loadMem_44b9c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9c3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9c3)
  store %struct.Memory* %call_44b9c3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44b9c7	 Bytes: 4
  %loadMem_44b9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9c7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9c7)
  store %struct.Memory* %call_44b9c7, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rdx	 RIP: 44b9cb	 Bytes: 4
  %loadMem_44b9cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9cb = call %struct.Memory* @routine_movq_0x28__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9cb)
  store %struct.Memory* %call_44b9cb, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44b9cf	 Bytes: 2
  %loadMem_44b9cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9cf = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9cf)
  store %struct.Memory* %call_44b9cf, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44b9d1	 Bytes: 5
  %loadMem1_44b9d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b9d1 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b9d1, i64 -304225, i64 5, i64 5)
  store %struct.Memory* %call1_44b9d1, %struct.Memory** %MEMORY

  %loadMem2_44b9d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b9d1 = load i64, i64* %3
  %call2_44b9d1 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44b9d1, %struct.Memory* %loadMem2_44b9d1)
  store %struct.Memory* %call2_44b9d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 44b9d6	 Bytes: 3
  %loadMem_44b9d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9d6 = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9d6)
  store %struct.Memory* %call_44b9d6, %struct.Memory** %MEMORY

  ; Code: .L_44b9d9:	 RIP: 44b9d9	 Bytes: 0
  br label %block_.L_44b9d9
block_.L_44b9d9:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44b9d9	 Bytes: 4
  %loadMem_44b9d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9d9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9d9)
  store %struct.Memory* %call_44b9d9, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x38(%rax)	 RIP: 44b9dd	 Bytes: 5
  %loadMem_44b9dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9dd = call %struct.Memory* @routine_cmpq__0x0__0x38__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9dd)
  store %struct.Memory* %call_44b9dd, %struct.Memory** %MEMORY

  ; Code: je .L_44ba08	 RIP: 44b9e2	 Bytes: 6
  %loadMem_44b9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9e2 = call %struct.Memory* @routine_je_.L_44ba08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9e2, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_44b9e2, %struct.Memory** %MEMORY

  %loadBr_44b9e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b9e2 = icmp eq i8 %loadBr_44b9e2, 1
  br i1 %cmpBr_44b9e2, label %block_.L_44ba08, label %block_44b9e8

block_44b9e8:
  ; Code: movq $0x45b013, %rsi	 RIP: 44b9e8	 Bytes: 10
  %loadMem_44b9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9e8 = call %struct.Memory* @routine_movq__0x45b013___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9e8)
  store %struct.Memory* %call_44b9e8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44b9f2	 Bytes: 4
  %loadMem_44b9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9f2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9f2)
  store %struct.Memory* %call_44b9f2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44b9f6	 Bytes: 4
  %loadMem_44b9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9f6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9f6)
  store %struct.Memory* %call_44b9f6, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rdx	 RIP: 44b9fa	 Bytes: 4
  %loadMem_44b9fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9fa = call %struct.Memory* @routine_movq_0x38__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9fa)
  store %struct.Memory* %call_44b9fa, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44b9fe	 Bytes: 2
  %loadMem_44b9fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9fe = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9fe)
  store %struct.Memory* %call_44b9fe, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44ba00	 Bytes: 5
  %loadMem1_44ba00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ba00 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ba00, i64 -304272, i64 5, i64 5)
  store %struct.Memory* %call1_44ba00, %struct.Memory** %MEMORY

  %loadMem2_44ba00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ba00 = load i64, i64* %3
  %call2_44ba00 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44ba00, %struct.Memory* %loadMem2_44ba00)
  store %struct.Memory* %call2_44ba00, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x64(%rbp)	 RIP: 44ba05	 Bytes: 3
  %loadMem_44ba05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba05 = call %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba05)
  store %struct.Memory* %call_44ba05, %struct.Memory** %MEMORY

  ; Code: .L_44ba08:	 RIP: 44ba08	 Bytes: 0
  br label %block_.L_44ba08
block_.L_44ba08:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44ba08	 Bytes: 4
  %loadMem_44ba08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba08 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba08)
  store %struct.Memory* %call_44ba08, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x30(%rax)	 RIP: 44ba0c	 Bytes: 5
  %loadMem_44ba0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba0c = call %struct.Memory* @routine_cmpq__0x0__0x30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba0c)
  store %struct.Memory* %call_44ba0c, %struct.Memory** %MEMORY

  ; Code: je .L_44ba37	 RIP: 44ba11	 Bytes: 6
  %loadMem_44ba11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba11 = call %struct.Memory* @routine_je_.L_44ba37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba11, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_44ba11, %struct.Memory** %MEMORY

  %loadBr_44ba11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ba11 = icmp eq i8 %loadBr_44ba11, 1
  br i1 %cmpBr_44ba11, label %block_.L_44ba37, label %block_44ba17

block_44ba17:
  ; Code: movq $0x45b022, %rsi	 RIP: 44ba17	 Bytes: 10
  %loadMem_44ba17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba17 = call %struct.Memory* @routine_movq__0x45b022___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba17)
  store %struct.Memory* %call_44ba17, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44ba21	 Bytes: 4
  %loadMem_44ba21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba21 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba21)
  store %struct.Memory* %call_44ba21, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44ba25	 Bytes: 4
  %loadMem_44ba25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba25 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba25)
  store %struct.Memory* %call_44ba25, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rdx	 RIP: 44ba29	 Bytes: 4
  %loadMem_44ba29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba29 = call %struct.Memory* @routine_movq_0x30__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba29)
  store %struct.Memory* %call_44ba29, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44ba2d	 Bytes: 2
  %loadMem_44ba2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba2d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba2d)
  store %struct.Memory* %call_44ba2d, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44ba2f	 Bytes: 5
  %loadMem1_44ba2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ba2f = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ba2f, i64 -304319, i64 5, i64 5)
  store %struct.Memory* %call1_44ba2f, %struct.Memory** %MEMORY

  %loadMem2_44ba2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ba2f = load i64, i64* %3
  %call2_44ba2f = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44ba2f, %struct.Memory* %loadMem2_44ba2f)
  store %struct.Memory* %call2_44ba2f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 44ba34	 Bytes: 3
  %loadMem_44ba34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba34 = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba34)
  store %struct.Memory* %call_44ba34, %struct.Memory** %MEMORY

  ; Code: .L_44ba37:	 RIP: 44ba37	 Bytes: 0
  br label %block_.L_44ba37
block_.L_44ba37:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44ba37	 Bytes: 4
  %loadMem_44ba37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba37 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba37)
  store %struct.Memory* %call_44ba37, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x40(%rax)	 RIP: 44ba3b	 Bytes: 5
  %loadMem_44ba3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba3b = call %struct.Memory* @routine_cmpq__0x0__0x40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba3b)
  store %struct.Memory* %call_44ba3b, %struct.Memory** %MEMORY

  ; Code: je .L_44ba66	 RIP: 44ba40	 Bytes: 6
  %loadMem_44ba40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba40 = call %struct.Memory* @routine_je_.L_44ba66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba40, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_44ba40, %struct.Memory** %MEMORY

  %loadBr_44ba40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ba40 = icmp eq i8 %loadBr_44ba40, 1
  br i1 %cmpBr_44ba40, label %block_.L_44ba66, label %block_44ba46

block_44ba46:
  ; Code: movq $0x45b031, %rsi	 RIP: 44ba46	 Bytes: 10
  %loadMem_44ba46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba46 = call %struct.Memory* @routine_movq__0x45b031___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba46)
  store %struct.Memory* %call_44ba46, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44ba50	 Bytes: 4
  %loadMem_44ba50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba50 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba50)
  store %struct.Memory* %call_44ba50, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44ba54	 Bytes: 4
  %loadMem_44ba54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba54 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba54)
  store %struct.Memory* %call_44ba54, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rax), %rdx	 RIP: 44ba58	 Bytes: 4
  %loadMem_44ba58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba58 = call %struct.Memory* @routine_movq_0x40__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba58)
  store %struct.Memory* %call_44ba58, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44ba5c	 Bytes: 2
  %loadMem_44ba5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba5c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba5c)
  store %struct.Memory* %call_44ba5c, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44ba5e	 Bytes: 5
  %loadMem1_44ba5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ba5e = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ba5e, i64 -304366, i64 5, i64 5)
  store %struct.Memory* %call1_44ba5e, %struct.Memory** %MEMORY

  %loadMem2_44ba5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ba5e = load i64, i64* %3
  %call2_44ba5e = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44ba5e, %struct.Memory* %loadMem2_44ba5e)
  store %struct.Memory* %call2_44ba5e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 44ba63	 Bytes: 3
  %loadMem_44ba63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba63 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba63)
  store %struct.Memory* %call_44ba63, %struct.Memory** %MEMORY

  ; Code: .L_44ba66:	 RIP: 44ba66	 Bytes: 0
  br label %block_.L_44ba66
block_.L_44ba66:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44ba66	 Bytes: 4
  %loadMem_44ba66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba66 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba66)
  store %struct.Memory* %call_44ba66, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xa0(%rax)	 RIP: 44ba6a	 Bytes: 7
  %loadMem_44ba6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba6a = call %struct.Memory* @routine_cmpl__0x0__0xa0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba6a)
  store %struct.Memory* %call_44ba6a, %struct.Memory** %MEMORY

  ; Code: je .L_44babd	 RIP: 44ba71	 Bytes: 6
  %loadMem_44ba71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba71 = call %struct.Memory* @routine_je_.L_44babd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba71, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_44ba71, %struct.Memory** %MEMORY

  %loadBr_44ba71 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ba71 = icmp eq i8 %loadBr_44ba71, 1
  br i1 %cmpBr_44ba71, label %block_.L_44babd, label %block_44ba77

block_44ba77:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 44ba77	 Bytes: 4
  %loadMem_44ba77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba77 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba77)
  store %struct.Memory* %call_44ba77, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xa4(%rax)	 RIP: 44ba7b	 Bytes: 7
  %loadMem_44ba7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba7b = call %struct.Memory* @routine_cmpl__0x0__0xa4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba7b)
  store %struct.Memory* %call_44ba7b, %struct.Memory** %MEMORY

  ; Code: je .L_44babd	 RIP: 44ba82	 Bytes: 6
  %loadMem_44ba82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba82 = call %struct.Memory* @routine_je_.L_44babd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba82, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_44ba82, %struct.Memory** %MEMORY

  %loadBr_44ba82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ba82 = icmp eq i8 %loadBr_44ba82, 1
  br i1 %cmpBr_44ba82, label %block_.L_44babd, label %block_44ba88

block_44ba88:
  ; Code: movq $0x45b040, %rsi	 RIP: 44ba88	 Bytes: 10
  %loadMem_44ba88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba88 = call %struct.Memory* @routine_movq__0x45b040___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba88)
  store %struct.Memory* %call_44ba88, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44ba92	 Bytes: 4
  %loadMem_44ba92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba92 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba92)
  store %struct.Memory* %call_44ba92, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44ba96	 Bytes: 4
  %loadMem_44ba96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba96 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba96)
  store %struct.Memory* %call_44ba96, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x88(%rax), %xmm0	 RIP: 44ba9a	 Bytes: 8
  %loadMem_44ba9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba9a = call %struct.Memory* @routine_cvtss2sd_0x88__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba9a)
  store %struct.Memory* %call_44ba9a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44baa2	 Bytes: 4
  %loadMem_44baa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44baa2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44baa2)
  store %struct.Memory* %call_44baa2, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x8c(%rax), %xmm1	 RIP: 44baa6	 Bytes: 8
  %loadMem_44baa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44baa6 = call %struct.Memory* @routine_cvtss2sd_0x8c__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44baa6)
  store %struct.Memory* %call_44baa6, %struct.Memory** %MEMORY

  ; Code: movb $0x2, %al	 RIP: 44baae	 Bytes: 2
  %loadMem_44baae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44baae = call %struct.Memory* @routine_movb__0x2___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44baae)
  store %struct.Memory* %call_44baae, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44bab0	 Bytes: 5
  %loadMem1_44bab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bab0 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bab0, i64 -304448, i64 5, i64 5)
  store %struct.Memory* %call1_44bab0, %struct.Memory** %MEMORY

  %loadMem2_44bab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bab0 = load i64, i64* %3
  %call2_44bab0 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44bab0, %struct.Memory* %loadMem2_44bab0)
  store %struct.Memory* %call2_44bab0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 44bab5	 Bytes: 3
  %loadMem_44bab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bab5 = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bab5)
  store %struct.Memory* %call_44bab5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44baf7	 RIP: 44bab8	 Bytes: 5
  %loadMem_44bab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bab8 = call %struct.Memory* @routine_jmpq_.L_44baf7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bab8, i64 63, i64 5)
  store %struct.Memory* %call_44bab8, %struct.Memory** %MEMORY

  br label %block_.L_44baf7

  ; Code: .L_44babd:	 RIP: 44babd	 Bytes: 0
block_.L_44babd:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44babd	 Bytes: 4
  %loadMem_44babd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44babd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44babd)
  store %struct.Memory* %call_44babd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xa0(%rax)	 RIP: 44bac1	 Bytes: 7
  %loadMem_44bac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bac1 = call %struct.Memory* @routine_cmpl__0x0__0xa0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bac1)
  store %struct.Memory* %call_44bac1, %struct.Memory** %MEMORY

  ; Code: je .L_44baf2	 RIP: 44bac8	 Bytes: 6
  %loadMem_44bac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bac8 = call %struct.Memory* @routine_je_.L_44baf2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bac8, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_44bac8, %struct.Memory** %MEMORY

  %loadBr_44bac8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bac8 = icmp eq i8 %loadBr_44bac8, 1
  br i1 %cmpBr_44bac8, label %block_.L_44baf2, label %block_44bace

block_44bace:
  ; Code: movq $0x45b056, %rsi	 RIP: 44bace	 Bytes: 10
  %loadMem_44bace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bace = call %struct.Memory* @routine_movq__0x45b056___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bace)
  store %struct.Memory* %call_44bace, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44bad8	 Bytes: 4
  %loadMem_44bad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bad8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bad8)
  store %struct.Memory* %call_44bad8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44badc	 Bytes: 4
  %loadMem_44badc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44badc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44badc)
  store %struct.Memory* %call_44badc, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x88(%rax), %xmm0	 RIP: 44bae0	 Bytes: 8
  %loadMem_44bae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bae0 = call %struct.Memory* @routine_cvtss2sd_0x88__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bae0)
  store %struct.Memory* %call_44bae0, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 44bae8	 Bytes: 2
  %loadMem_44bae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bae8 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bae8)
  store %struct.Memory* %call_44bae8, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44baea	 Bytes: 5
  %loadMem1_44baea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44baea = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44baea, i64 -304506, i64 5, i64 5)
  store %struct.Memory* %call1_44baea, %struct.Memory** %MEMORY

  %loadMem2_44baea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44baea = load i64, i64* %3
  %call2_44baea = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44baea, %struct.Memory* %loadMem2_44baea)
  store %struct.Memory* %call2_44baea, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 44baef	 Bytes: 3
  %loadMem_44baef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44baef = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44baef)
  store %struct.Memory* %call_44baef, %struct.Memory** %MEMORY

  ; Code: .L_44baf2:	 RIP: 44baf2	 Bytes: 0
  br label %block_.L_44baf2
block_.L_44baf2:

  ; Code: jmpq .L_44baf7	 RIP: 44baf2	 Bytes: 5
  %loadMem_44baf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44baf2 = call %struct.Memory* @routine_jmpq_.L_44baf7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44baf2, i64 5, i64 5)
  store %struct.Memory* %call_44baf2, %struct.Memory** %MEMORY

  br label %block_.L_44baf7

  ; Code: .L_44baf7:	 RIP: 44baf7	 Bytes: 0
block_.L_44baf7:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44baf7	 Bytes: 4
  %loadMem_44baf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44baf7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44baf7)
  store %struct.Memory* %call_44baf7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xa8(%rax)	 RIP: 44bafb	 Bytes: 7
  %loadMem_44bafb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bafb = call %struct.Memory* @routine_cmpl__0x0__0xa8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bafb)
  store %struct.Memory* %call_44bafb, %struct.Memory** %MEMORY

  ; Code: je .L_44bb4e	 RIP: 44bb02	 Bytes: 6
  %loadMem_44bb02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb02 = call %struct.Memory* @routine_je_.L_44bb4e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb02, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_44bb02, %struct.Memory** %MEMORY

  %loadBr_44bb02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bb02 = icmp eq i8 %loadBr_44bb02, 1
  br i1 %cmpBr_44bb02, label %block_.L_44bb4e, label %block_44bb08

block_44bb08:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bb08	 Bytes: 4
  %loadMem_44bb08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb08 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb08)
  store %struct.Memory* %call_44bb08, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xac(%rax)	 RIP: 44bb0c	 Bytes: 7
  %loadMem_44bb0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb0c = call %struct.Memory* @routine_cmpl__0x0__0xac__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb0c)
  store %struct.Memory* %call_44bb0c, %struct.Memory** %MEMORY

  ; Code: je .L_44bb4e	 RIP: 44bb13	 Bytes: 6
  %loadMem_44bb13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb13 = call %struct.Memory* @routine_je_.L_44bb4e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb13, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_44bb13, %struct.Memory** %MEMORY

  %loadBr_44bb13 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bb13 = icmp eq i8 %loadBr_44bb13, 1
  br i1 %cmpBr_44bb13, label %block_.L_44bb4e, label %block_44bb19

block_44bb19:
  ; Code: movq $0x45b067, %rsi	 RIP: 44bb19	 Bytes: 10
  %loadMem_44bb19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb19 = call %struct.Memory* @routine_movq__0x45b067___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb19)
  store %struct.Memory* %call_44bb19, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44bb23	 Bytes: 4
  %loadMem_44bb23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb23 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb23)
  store %struct.Memory* %call_44bb23, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bb27	 Bytes: 4
  %loadMem_44bb27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb27 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb27)
  store %struct.Memory* %call_44bb27, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x90(%rax), %xmm0	 RIP: 44bb2b	 Bytes: 8
  %loadMem_44bb2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb2b = call %struct.Memory* @routine_cvtss2sd_0x90__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb2b)
  store %struct.Memory* %call_44bb2b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bb33	 Bytes: 4
  %loadMem_44bb33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb33 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb33)
  store %struct.Memory* %call_44bb33, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x94(%rax), %xmm1	 RIP: 44bb37	 Bytes: 8
  %loadMem_44bb37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb37 = call %struct.Memory* @routine_cvtss2sd_0x94__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb37)
  store %struct.Memory* %call_44bb37, %struct.Memory** %MEMORY

  ; Code: movb $0x2, %al	 RIP: 44bb3f	 Bytes: 2
  %loadMem_44bb3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb3f = call %struct.Memory* @routine_movb__0x2___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb3f)
  store %struct.Memory* %call_44bb3f, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44bb41	 Bytes: 5
  %loadMem1_44bb41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bb41 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bb41, i64 -304593, i64 5, i64 5)
  store %struct.Memory* %call1_44bb41, %struct.Memory** %MEMORY

  %loadMem2_44bb41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bb41 = load i64, i64* %3
  %call2_44bb41 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44bb41, %struct.Memory* %loadMem2_44bb41)
  store %struct.Memory* %call2_44bb41, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 44bb46	 Bytes: 3
  %loadMem_44bb46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb46 = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb46)
  store %struct.Memory* %call_44bb46, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44bb88	 RIP: 44bb49	 Bytes: 5
  %loadMem_44bb49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb49 = call %struct.Memory* @routine_jmpq_.L_44bb88(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb49, i64 63, i64 5)
  store %struct.Memory* %call_44bb49, %struct.Memory** %MEMORY

  br label %block_.L_44bb88

  ; Code: .L_44bb4e:	 RIP: 44bb4e	 Bytes: 0
block_.L_44bb4e:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bb4e	 Bytes: 4
  %loadMem_44bb4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb4e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb4e)
  store %struct.Memory* %call_44bb4e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xa8(%rax)	 RIP: 44bb52	 Bytes: 7
  %loadMem_44bb52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb52 = call %struct.Memory* @routine_cmpl__0x0__0xa8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb52)
  store %struct.Memory* %call_44bb52, %struct.Memory** %MEMORY

  ; Code: je .L_44bb83	 RIP: 44bb59	 Bytes: 6
  %loadMem_44bb59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb59 = call %struct.Memory* @routine_je_.L_44bb83(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb59, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_44bb59, %struct.Memory** %MEMORY

  %loadBr_44bb59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bb59 = icmp eq i8 %loadBr_44bb59, 1
  br i1 %cmpBr_44bb59, label %block_.L_44bb83, label %block_44bb5f

block_44bb5f:
  ; Code: movq $0x45b07d, %rsi	 RIP: 44bb5f	 Bytes: 10
  %loadMem_44bb5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb5f = call %struct.Memory* @routine_movq__0x45b07d___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb5f)
  store %struct.Memory* %call_44bb5f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44bb69	 Bytes: 4
  %loadMem_44bb69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb69 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb69)
  store %struct.Memory* %call_44bb69, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bb6d	 Bytes: 4
  %loadMem_44bb6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb6d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb6d)
  store %struct.Memory* %call_44bb6d, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x90(%rax), %xmm0	 RIP: 44bb71	 Bytes: 8
  %loadMem_44bb71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb71 = call %struct.Memory* @routine_cvtss2sd_0x90__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb71)
  store %struct.Memory* %call_44bb71, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 44bb79	 Bytes: 2
  %loadMem_44bb79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb79 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb79)
  store %struct.Memory* %call_44bb79, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44bb7b	 Bytes: 5
  %loadMem1_44bb7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bb7b = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bb7b, i64 -304651, i64 5, i64 5)
  store %struct.Memory* %call1_44bb7b, %struct.Memory** %MEMORY

  %loadMem2_44bb7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bb7b = load i64, i64* %3
  %call2_44bb7b = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44bb7b, %struct.Memory* %loadMem2_44bb7b)
  store %struct.Memory* %call2_44bb7b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 44bb80	 Bytes: 3
  %loadMem_44bb80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb80 = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb80)
  store %struct.Memory* %call_44bb80, %struct.Memory** %MEMORY

  ; Code: .L_44bb83:	 RIP: 44bb83	 Bytes: 0
  br label %block_.L_44bb83
block_.L_44bb83:

  ; Code: jmpq .L_44bb88	 RIP: 44bb83	 Bytes: 5
  %loadMem_44bb83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb83 = call %struct.Memory* @routine_jmpq_.L_44bb88(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb83, i64 5, i64 5)
  store %struct.Memory* %call_44bb83, %struct.Memory** %MEMORY

  br label %block_.L_44bb88

  ; Code: .L_44bb88:	 RIP: 44bb88	 Bytes: 0
block_.L_44bb88:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bb88	 Bytes: 4
  %loadMem_44bb88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb88 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb88)
  store %struct.Memory* %call_44bb88, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x98(%rax)	 RIP: 44bb8c	 Bytes: 7
  %loadMem_44bb8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb8c = call %struct.Memory* @routine_cmpl__0x0__0x98__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb8c)
  store %struct.Memory* %call_44bb8c, %struct.Memory** %MEMORY

  ; Code: je .L_44bbdf	 RIP: 44bb93	 Bytes: 6
  %loadMem_44bb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb93 = call %struct.Memory* @routine_je_.L_44bbdf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb93, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_44bb93, %struct.Memory** %MEMORY

  %loadBr_44bb93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bb93 = icmp eq i8 %loadBr_44bb93, 1
  br i1 %cmpBr_44bb93, label %block_.L_44bbdf, label %block_44bb99

block_44bb99:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bb99	 Bytes: 4
  %loadMem_44bb99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb99 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb99)
  store %struct.Memory* %call_44bb99, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x9c(%rax)	 RIP: 44bb9d	 Bytes: 7
  %loadMem_44bb9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb9d = call %struct.Memory* @routine_cmpl__0x0__0x9c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb9d)
  store %struct.Memory* %call_44bb9d, %struct.Memory** %MEMORY

  ; Code: je .L_44bbdf	 RIP: 44bba4	 Bytes: 6
  %loadMem_44bba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bba4 = call %struct.Memory* @routine_je_.L_44bbdf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bba4, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_44bba4, %struct.Memory** %MEMORY

  %loadBr_44bba4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bba4 = icmp eq i8 %loadBr_44bba4, 1
  br i1 %cmpBr_44bba4, label %block_.L_44bbdf, label %block_44bbaa

block_44bbaa:
  ; Code: movq $0x45b08e, %rsi	 RIP: 44bbaa	 Bytes: 10
  %loadMem_44bbaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbaa = call %struct.Memory* @routine_movq__0x45b08e___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbaa)
  store %struct.Memory* %call_44bbaa, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44bbb4	 Bytes: 4
  %loadMem_44bbb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbb4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbb4)
  store %struct.Memory* %call_44bbb4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bbb8	 Bytes: 4
  %loadMem_44bbb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbb8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbb8)
  store %struct.Memory* %call_44bbb8, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x80(%rax), %xmm0	 RIP: 44bbbc	 Bytes: 8
  %loadMem_44bbbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbbc = call %struct.Memory* @routine_cvtss2sd_0x80__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbbc)
  store %struct.Memory* %call_44bbbc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bbc4	 Bytes: 4
  %loadMem_44bbc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbc4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbc4)
  store %struct.Memory* %call_44bbc4, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x84(%rax), %xmm1	 RIP: 44bbc8	 Bytes: 8
  %loadMem_44bbc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbc8 = call %struct.Memory* @routine_cvtss2sd_0x84__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbc8)
  store %struct.Memory* %call_44bbc8, %struct.Memory** %MEMORY

  ; Code: movb $0x2, %al	 RIP: 44bbd0	 Bytes: 2
  %loadMem_44bbd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbd0 = call %struct.Memory* @routine_movb__0x2___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbd0)
  store %struct.Memory* %call_44bbd0, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44bbd2	 Bytes: 5
  %loadMem1_44bbd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bbd2 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bbd2, i64 -304738, i64 5, i64 5)
  store %struct.Memory* %call1_44bbd2, %struct.Memory** %MEMORY

  %loadMem2_44bbd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bbd2 = load i64, i64* %3
  %call2_44bbd2 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44bbd2, %struct.Memory* %loadMem2_44bbd2)
  store %struct.Memory* %call2_44bbd2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 44bbd7	 Bytes: 3
  %loadMem_44bbd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbd7 = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbd7)
  store %struct.Memory* %call_44bbd7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44bc1c	 RIP: 44bbda	 Bytes: 5
  %loadMem_44bbda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbda = call %struct.Memory* @routine_jmpq_.L_44bc1c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbda, i64 66, i64 5)
  store %struct.Memory* %call_44bbda, %struct.Memory** %MEMORY

  br label %block_.L_44bc1c

  ; Code: .L_44bbdf:	 RIP: 44bbdf	 Bytes: 0
block_.L_44bbdf:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bbdf	 Bytes: 4
  %loadMem_44bbdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbdf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbdf)
  store %struct.Memory* %call_44bbdf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x98(%rax)	 RIP: 44bbe3	 Bytes: 7
  %loadMem_44bbe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbe3 = call %struct.Memory* @routine_cmpl__0x0__0x98__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbe3)
  store %struct.Memory* %call_44bbe3, %struct.Memory** %MEMORY

  ; Code: je .L_44bc17	 RIP: 44bbea	 Bytes: 6
  %loadMem_44bbea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbea = call %struct.Memory* @routine_je_.L_44bc17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbea, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_44bbea, %struct.Memory** %MEMORY

  %loadBr_44bbea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bbea = icmp eq i8 %loadBr_44bbea, 1
  br i1 %cmpBr_44bbea, label %block_.L_44bc17, label %block_44bbf0

block_44bbf0:
  ; Code: movq $0x45b0a4, %rsi	 RIP: 44bbf0	 Bytes: 10
  %loadMem_44bbf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbf0 = call %struct.Memory* @routine_movq__0x45b0a4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbf0)
  store %struct.Memory* %call_44bbf0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44bbfa	 Bytes: 4
  %loadMem_44bbfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbfa = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbfa)
  store %struct.Memory* %call_44bbfa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bbfe	 Bytes: 4
  %loadMem_44bbfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbfe = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbfe)
  store %struct.Memory* %call_44bbfe, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x80(%rax), %xmm0	 RIP: 44bc02	 Bytes: 8
  %loadMem_44bc02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc02 = call %struct.Memory* @routine_cvtss2sd_0x80__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc02)
  store %struct.Memory* %call_44bc02, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 44bc0a	 Bytes: 2
  %loadMem_44bc0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc0a = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc0a)
  store %struct.Memory* %call_44bc0a, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44bc0c	 Bytes: 5
  %loadMem1_44bc0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bc0c = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bc0c, i64 -304796, i64 5, i64 5)
  store %struct.Memory* %call1_44bc0c, %struct.Memory** %MEMORY

  %loadMem2_44bc0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bc0c = load i64, i64* %3
  %call2_44bc0c = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44bc0c, %struct.Memory* %loadMem2_44bc0c)
  store %struct.Memory* %call2_44bc0c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x84(%rbp)	 RIP: 44bc11	 Bytes: 6
  %loadMem_44bc11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc11 = call %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc11)
  store %struct.Memory* %call_44bc11, %struct.Memory** %MEMORY

  ; Code: .L_44bc17:	 RIP: 44bc17	 Bytes: 0
  br label %block_.L_44bc17
block_.L_44bc17:

  ; Code: jmpq .L_44bc1c	 RIP: 44bc17	 Bytes: 5
  %loadMem_44bc17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc17 = call %struct.Memory* @routine_jmpq_.L_44bc1c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc17, i64 5, i64 5)
  store %struct.Memory* %call_44bc17, %struct.Memory** %MEMORY

  br label %block_.L_44bc1c

  ; Code: .L_44bc1c:	 RIP: 44bc1c	 Bytes: 0
block_.L_44bc1c:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 44bc1c	 Bytes: 7
  %loadMem_44bc1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc1c = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc1c)
  store %struct.Memory* %call_44bc1c, %struct.Memory** %MEMORY

  ; Code: .L_44bc23:	 RIP: 44bc23	 Bytes: 0
  br label %block_.L_44bc23
block_.L_44bc23:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44bc23	 Bytes: 3
  %loadMem_44bc23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc23 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc23)
  store %struct.Memory* %call_44bc23, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44bc26	 Bytes: 4
  %loadMem_44bc26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc26 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc26)
  store %struct.Memory* %call_44bc26, %struct.Memory** %MEMORY

  ; Code: cmpl 0xd0(%rcx), %eax	 RIP: 44bc2a	 Bytes: 6
  %loadMem_44bc2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc2a = call %struct.Memory* @routine_cmpl_0xd0__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc2a)
  store %struct.Memory* %call_44bc2a, %struct.Memory** %MEMORY

  ; Code: jge .L_44bc85	 RIP: 44bc30	 Bytes: 6
  %loadMem_44bc30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc30 = call %struct.Memory* @routine_jge_.L_44bc85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc30, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_44bc30, %struct.Memory** %MEMORY

  %loadBr_44bc30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bc30 = icmp eq i8 %loadBr_44bc30, 1
  br i1 %cmpBr_44bc30, label %block_.L_44bc85, label %block_44bc36

block_44bc36:
  ; Code: movq $0x45b0b5, %rsi	 RIP: 44bc36	 Bytes: 10
  %loadMem_44bc36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc36 = call %struct.Memory* @routine_movq__0x45b0b5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc36)
  store %struct.Memory* %call_44bc36, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44bc40	 Bytes: 4
  %loadMem_44bc40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc40 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc40)
  store %struct.Memory* %call_44bc40, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bc44	 Bytes: 4
  %loadMem_44bc44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc44 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc44)
  store %struct.Memory* %call_44bc44, %struct.Memory** %MEMORY

  ; Code: movq 0xc0(%rax), %rax	 RIP: 44bc48	 Bytes: 7
  %loadMem_44bc48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc48 = call %struct.Memory* @routine_movq_0xc0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc48)
  store %struct.Memory* %call_44bc48, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44bc4f	 Bytes: 4
  %loadMem_44bc4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc4f = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc4f)
  store %struct.Memory* %call_44bc4f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdx	 RIP: 44bc53	 Bytes: 4
  %loadMem_44bc53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc53 = call %struct.Memory* @routine_movq___rax__rcx_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc53)
  store %struct.Memory* %call_44bc53, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bc57	 Bytes: 4
  %loadMem_44bc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc57 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc57)
  store %struct.Memory* %call_44bc57, %struct.Memory** %MEMORY

  ; Code: movq 0xc8(%rax), %rax	 RIP: 44bc5b	 Bytes: 7
  %loadMem_44bc5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc5b = call %struct.Memory* @routine_movq_0xc8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc5b)
  store %struct.Memory* %call_44bc5b, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44bc62	 Bytes: 4
  %loadMem_44bc62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc62 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc62)
  store %struct.Memory* %call_44bc62, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rcx	 RIP: 44bc66	 Bytes: 4
  %loadMem_44bc66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc66 = call %struct.Memory* @routine_movq___rax__rcx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc66)
  store %struct.Memory* %call_44bc66, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44bc6a	 Bytes: 2
  %loadMem_44bc6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc6a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc6a)
  store %struct.Memory* %call_44bc6a, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44bc6c	 Bytes: 5
  %loadMem1_44bc6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bc6c = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bc6c, i64 -304892, i64 5, i64 5)
  store %struct.Memory* %call1_44bc6c, %struct.Memory** %MEMORY

  %loadMem2_44bc6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bc6c = load i64, i64* %3
  %call2_44bc6c = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44bc6c, %struct.Memory* %loadMem2_44bc6c)
  store %struct.Memory* %call2_44bc6c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x88(%rbp)	 RIP: 44bc71	 Bytes: 6
  %loadMem_44bc71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc71 = call %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc71)
  store %struct.Memory* %call_44bc71, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44bc77	 Bytes: 3
  %loadMem_44bc77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc77 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc77)
  store %struct.Memory* %call_44bc77, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44bc7a	 Bytes: 3
  %loadMem_44bc7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc7a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc7a)
  store %struct.Memory* %call_44bc7a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44bc7d	 Bytes: 3
  %loadMem_44bc7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc7d = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc7d)
  store %struct.Memory* %call_44bc7d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44bc23	 RIP: 44bc80	 Bytes: 5
  %loadMem_44bc80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc80 = call %struct.Memory* @routine_jmpq_.L_44bc23(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc80, i64 -93, i64 5)
  store %struct.Memory* %call_44bc80, %struct.Memory** %MEMORY

  br label %block_.L_44bc23

  ; Code: .L_44bc85:	 RIP: 44bc85	 Bytes: 0
block_.L_44bc85:

  ; Code: movq $0x45a1f7, %rsi	 RIP: 44bc85	 Bytes: 10
  %loadMem_44bc85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc85 = call %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc85)
  store %struct.Memory* %call_44bc85, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44bc8f	 Bytes: 4
  %loadMem_44bc8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc8f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc8f)
  store %struct.Memory* %call_44bc8f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44bc93	 Bytes: 2
  %loadMem_44bc93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc93 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc93)
  store %struct.Memory* %call_44bc93, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44bc95	 Bytes: 5
  %loadMem1_44bc95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bc95 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bc95, i64 -304933, i64 5, i64 5)
  store %struct.Memory* %call1_44bc95, %struct.Memory** %MEMORY

  %loadMem2_44bc95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bc95 = load i64, i64* %3
  %call2_44bc95 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44bc95, %struct.Memory* %loadMem2_44bc95)
  store %struct.Memory* %call2_44bc95, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 44bc9a	 Bytes: 4
  %loadMem_44bc9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc9a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc9a)
  store %struct.Memory* %call_44bc9a, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rsi), %ecx	 RIP: 44bc9e	 Bytes: 3
  %loadMem_44bc9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc9e = call %struct.Memory* @routine_movl_0x20__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc9e)
  store %struct.Memory* %call_44bc9e, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %ecx	 RIP: 44bca1	 Bytes: 3
  %loadMem_44bca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bca1 = call %struct.Memory* @routine_andl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bca1)
  store %struct.Memory* %call_44bca1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 44bca4	 Bytes: 3
  %loadMem_44bca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bca4 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bca4)
  store %struct.Memory* %call_44bca4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8c(%rbp)	 RIP: 44bca7	 Bytes: 6
  %loadMem_44bca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bca7 = call %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bca7)
  store %struct.Memory* %call_44bca7, %struct.Memory** %MEMORY

  ; Code: je .L_44bd36	 RIP: 44bcad	 Bytes: 6
  %loadMem_44bcad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcad = call %struct.Memory* @routine_je_.L_44bd36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcad, i8* %BRANCH_TAKEN, i64 137, i64 6, i64 6)
  store %struct.Memory* %call_44bcad, %struct.Memory** %MEMORY

  %loadBr_44bcad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bcad = icmp eq i8 %loadBr_44bcad, 1
  br i1 %cmpBr_44bcad, label %block_.L_44bd36, label %block_44bcb3

block_44bcb3:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 44bcb3	 Bytes: 7
  %loadMem_44bcb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcb3 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcb3)
  store %struct.Memory* %call_44bcb3, %struct.Memory** %MEMORY

  ; Code: .L_44bcba:	 RIP: 44bcba	 Bytes: 0
  br label %block_.L_44bcba
block_.L_44bcba:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44bcba	 Bytes: 3
  %loadMem_44bcba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcba = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcba)
  store %struct.Memory* %call_44bcba, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44bcbd	 Bytes: 4
  %loadMem_44bcbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcbd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcbd)
  store %struct.Memory* %call_44bcbd, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 44bcc1	 Bytes: 3
  %loadMem_44bcc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcc1 = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcc1)
  store %struct.Memory* %call_44bcc1, %struct.Memory** %MEMORY

  ; Code: jge .L_44bd1b	 RIP: 44bcc4	 Bytes: 6
  %loadMem_44bcc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcc4 = call %struct.Memory* @routine_jge_.L_44bd1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcc4, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_44bcc4, %struct.Memory** %MEMORY

  %loadBr_44bcc4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bcc4 = icmp eq i8 %loadBr_44bcc4, 1
  br i1 %cmpBr_44bcc4, label %block_.L_44bd1b, label %block_44bcca

block_44bcca:
  ; Code: movq $0x45b0c3, %rsi	 RIP: 44bcca	 Bytes: 10
  %loadMem_44bcca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcca = call %struct.Memory* @routine_movq__0x45b0c3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcca)
  store %struct.Memory* %call_44bcca, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44bcd4	 Bytes: 4
  %loadMem_44bcd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcd4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcd4)
  store %struct.Memory* %call_44bcd4, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 44bcd8	 Bytes: 3
  %loadMem_44bcd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcd8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcd8)
  store %struct.Memory* %call_44bcd8, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44bcdb	 Bytes: 3
  %loadMem_44bcdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcdb = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcdb)
  store %struct.Memory* %call_44bcdb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bcde	 Bytes: 4
  %loadMem_44bcde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcde = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcde)
  store %struct.Memory* %call_44bcde, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 44bce2	 Bytes: 4
  %loadMem_44bce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bce2 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bce2)
  store %struct.Memory* %call_44bce2, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r8	 RIP: 44bce6	 Bytes: 4
  %loadMem_44bce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bce6 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bce6)
  store %struct.Memory* %call_44bce6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%r8,8), %r8	 RIP: 44bcea	 Bytes: 4
  %loadMem_44bcea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcea = call %struct.Memory* @routine_movq___rax__r8_8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcea)
  store %struct.Memory* %call_44bcea, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bcee	 Bytes: 4
  %loadMem_44bcee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcee = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcee)
  store %struct.Memory* %call_44bcee, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 44bcf2	 Bytes: 4
  %loadMem_44bcf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcf2 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcf2)
  store %struct.Memory* %call_44bcf2, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r9	 RIP: 44bcf6	 Bytes: 4
  %loadMem_44bcf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcf6 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcf6)
  store %struct.Memory* %call_44bcf6, %struct.Memory** %MEMORY

  ; Code: cvtss2sd (%rax,%r9,4), %xmm0	 RIP: 44bcfa	 Bytes: 6
  %loadMem_44bcfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcfa = call %struct.Memory* @routine_cvtss2sd___rax__r9_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcfa)
  store %struct.Memory* %call_44bcfa, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 44bd00	 Bytes: 2
  %loadMem_44bd00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd00 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd00)
  store %struct.Memory* %call_44bd00, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44bd02	 Bytes: 5
  %loadMem1_44bd02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bd02 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bd02, i64 -305042, i64 5, i64 5)
  store %struct.Memory* %call1_44bd02, %struct.Memory** %MEMORY

  %loadMem2_44bd02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bd02 = load i64, i64* %3
  %call2_44bd02 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44bd02, %struct.Memory* %loadMem2_44bd02)
  store %struct.Memory* %call2_44bd02, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x90(%rbp)	 RIP: 44bd07	 Bytes: 6
  %loadMem_44bd07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd07 = call %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd07)
  store %struct.Memory* %call_44bd07, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44bd0d	 Bytes: 3
  %loadMem_44bd0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd0d = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd0d)
  store %struct.Memory* %call_44bd0d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44bd10	 Bytes: 3
  %loadMem_44bd10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd10 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd10)
  store %struct.Memory* %call_44bd10, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44bd13	 Bytes: 3
  %loadMem_44bd13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd13 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd13)
  store %struct.Memory* %call_44bd13, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44bcba	 RIP: 44bd16	 Bytes: 5
  %loadMem_44bd16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd16 = call %struct.Memory* @routine_jmpq_.L_44bcba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd16, i64 -92, i64 5)
  store %struct.Memory* %call_44bd16, %struct.Memory** %MEMORY

  br label %block_.L_44bcba

  ; Code: .L_44bd1b:	 RIP: 44bd1b	 Bytes: 0
block_.L_44bd1b:

  ; Code: movq $0x45a1f7, %rsi	 RIP: 44bd1b	 Bytes: 10
  %loadMem_44bd1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd1b = call %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd1b)
  store %struct.Memory* %call_44bd1b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44bd25	 Bytes: 4
  %loadMem_44bd25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd25 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd25)
  store %struct.Memory* %call_44bd25, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44bd29	 Bytes: 2
  %loadMem_44bd29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd29 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd29)
  store %struct.Memory* %call_44bd29, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44bd2b	 Bytes: 5
  %loadMem1_44bd2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bd2b = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bd2b, i64 -305083, i64 5, i64 5)
  store %struct.Memory* %call1_44bd2b, %struct.Memory** %MEMORY

  %loadMem2_44bd2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bd2b = load i64, i64* %3
  %call2_44bd2b = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44bd2b, %struct.Memory* %loadMem2_44bd2b)
  store %struct.Memory* %call2_44bd2b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x94(%rbp)	 RIP: 44bd30	 Bytes: 6
  %loadMem_44bd30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd30 = call %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd30)
  store %struct.Memory* %call_44bd30, %struct.Memory** %MEMORY

  ; Code: .L_44bd36:	 RIP: 44bd36	 Bytes: 0
  br label %block_.L_44bd36
block_.L_44bd36:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bd36	 Bytes: 4
  %loadMem_44bd36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd36 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd36)
  store %struct.Memory* %call_44bd36, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x60(%rax)	 RIP: 44bd3a	 Bytes: 5
  %loadMem_44bd3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd3a = call %struct.Memory* @routine_cmpq__0x0__0x60__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd3a)
  store %struct.Memory* %call_44bd3a, %struct.Memory** %MEMORY

  ; Code: je .L_44bde2	 RIP: 44bd3f	 Bytes: 6
  %loadMem_44bd3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd3f = call %struct.Memory* @routine_je_.L_44bde2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd3f, i8* %BRANCH_TAKEN, i64 163, i64 6, i64 6)
  store %struct.Memory* %call_44bd3f, %struct.Memory** %MEMORY

  %loadBr_44bd3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bd3f = icmp eq i8 %loadBr_44bd3f, 1
  br i1 %cmpBr_44bd3f, label %block_.L_44bde2, label %block_44bd45

block_44bd45:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 44bd45	 Bytes: 7
  %loadMem_44bd45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd45 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd45)
  store %struct.Memory* %call_44bd45, %struct.Memory** %MEMORY

  ; Code: .L_44bd4c:	 RIP: 44bd4c	 Bytes: 0
  br label %block_.L_44bd4c
block_.L_44bd4c:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44bd4c	 Bytes: 3
  %loadMem_44bd4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd4c = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd4c)
  store %struct.Memory* %call_44bd4c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44bd4f	 Bytes: 4
  %loadMem_44bd4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd4f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd4f)
  store %struct.Memory* %call_44bd4f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 44bd53	 Bytes: 3
  %loadMem_44bd53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd53 = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd53)
  store %struct.Memory* %call_44bd53, %struct.Memory** %MEMORY

  ; Code: jge .L_44bdc7	 RIP: 44bd56	 Bytes: 6
  %loadMem_44bd56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd56 = call %struct.Memory* @routine_jge_.L_44bdc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd56, i8* %BRANCH_TAKEN, i64 113, i64 6, i64 6)
  store %struct.Memory* %call_44bd56, %struct.Memory** %MEMORY

  %loadBr_44bd56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bd56 = icmp eq i8 %loadBr_44bd56, 1
  br i1 %cmpBr_44bd56, label %block_.L_44bdc7, label %block_44bd5c

block_44bd5c:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bd5c	 Bytes: 4
  %loadMem_44bd5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd5c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd5c)
  store %struct.Memory* %call_44bd5c, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rax), %rax	 RIP: 44bd60	 Bytes: 4
  %loadMem_44bd60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd60 = call %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd60)
  store %struct.Memory* %call_44bd60, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44bd64	 Bytes: 4
  %loadMem_44bd64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd64 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd64)
  store %struct.Memory* %call_44bd64, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax,%rcx,8)	 RIP: 44bd68	 Bytes: 5
  %loadMem_44bd68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd68 = call %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd68)
  store %struct.Memory* %call_44bd68, %struct.Memory** %MEMORY

  ; Code: je .L_44bdb4	 RIP: 44bd6d	 Bytes: 6
  %loadMem_44bd6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd6d = call %struct.Memory* @routine_je_.L_44bdb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd6d, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_44bd6d, %struct.Memory** %MEMORY

  %loadBr_44bd6d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bd6d = icmp eq i8 %loadBr_44bd6d, 1
  br i1 %cmpBr_44bd6d, label %block_.L_44bdb4, label %block_44bd73

block_44bd73:
  ; Code: movq $0x45b0db, %rsi	 RIP: 44bd73	 Bytes: 10
  %loadMem_44bd73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd73 = call %struct.Memory* @routine_movq__0x45b0db___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd73)
  store %struct.Memory* %call_44bd73, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44bd7d	 Bytes: 4
  %loadMem_44bd7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd7d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd7d)
  store %struct.Memory* %call_44bd7d, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 44bd81	 Bytes: 3
  %loadMem_44bd81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd81 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd81)
  store %struct.Memory* %call_44bd81, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44bd84	 Bytes: 3
  %loadMem_44bd84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd84 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd84)
  store %struct.Memory* %call_44bd84, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bd87	 Bytes: 4
  %loadMem_44bd87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd87 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd87)
  store %struct.Memory* %call_44bd87, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 44bd8b	 Bytes: 4
  %loadMem_44bd8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd8b = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd8b)
  store %struct.Memory* %call_44bd8b, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r8	 RIP: 44bd8f	 Bytes: 4
  %loadMem_44bd8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd8f = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd8f)
  store %struct.Memory* %call_44bd8f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%r8,8), %r8	 RIP: 44bd93	 Bytes: 4
  %loadMem_44bd93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd93 = call %struct.Memory* @routine_movq___rax__r8_8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd93)
  store %struct.Memory* %call_44bd93, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bd97	 Bytes: 4
  %loadMem_44bd97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd97 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd97)
  store %struct.Memory* %call_44bd97, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rax), %rax	 RIP: 44bd9b	 Bytes: 4
  %loadMem_44bd9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd9b = call %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd9b)
  store %struct.Memory* %call_44bd9b, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r9	 RIP: 44bd9f	 Bytes: 4
  %loadMem_44bd9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd9f = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd9f)
  store %struct.Memory* %call_44bd9f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%r9,8), %r9	 RIP: 44bda3	 Bytes: 4
  %loadMem_44bda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bda3 = call %struct.Memory* @routine_movq___rax__r9_8____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bda3)
  store %struct.Memory* %call_44bda3, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44bda7	 Bytes: 2
  %loadMem_44bda7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bda7 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bda7)
  store %struct.Memory* %call_44bda7, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44bda9	 Bytes: 5
  %loadMem1_44bda9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bda9 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bda9, i64 -305209, i64 5, i64 5)
  store %struct.Memory* %call1_44bda9, %struct.Memory** %MEMORY

  %loadMem2_44bda9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bda9 = load i64, i64* %3
  %call2_44bda9 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44bda9, %struct.Memory* %loadMem2_44bda9)
  store %struct.Memory* %call2_44bda9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x98(%rbp)	 RIP: 44bdae	 Bytes: 6
  %loadMem_44bdae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdae = call %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdae)
  store %struct.Memory* %call_44bdae, %struct.Memory** %MEMORY

  ; Code: .L_44bdb4:	 RIP: 44bdb4	 Bytes: 0
  br label %block_.L_44bdb4
block_.L_44bdb4:

  ; Code: jmpq .L_44bdb9	 RIP: 44bdb4	 Bytes: 5
  %loadMem_44bdb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdb4 = call %struct.Memory* @routine_jmpq_.L_44bdb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdb4, i64 5, i64 5)
  store %struct.Memory* %call_44bdb4, %struct.Memory** %MEMORY

  br label %block_.L_44bdb9

  ; Code: .L_44bdb9:	 RIP: 44bdb9	 Bytes: 0
block_.L_44bdb9:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44bdb9	 Bytes: 3
  %loadMem_44bdb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdb9 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdb9)
  store %struct.Memory* %call_44bdb9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44bdbc	 Bytes: 3
  %loadMem_44bdbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdbc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdbc)
  store %struct.Memory* %call_44bdbc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44bdbf	 Bytes: 3
  %loadMem_44bdbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdbf = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdbf)
  store %struct.Memory* %call_44bdbf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44bd4c	 RIP: 44bdc2	 Bytes: 5
  %loadMem_44bdc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdc2 = call %struct.Memory* @routine_jmpq_.L_44bd4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdc2, i64 -118, i64 5)
  store %struct.Memory* %call_44bdc2, %struct.Memory** %MEMORY

  br label %block_.L_44bd4c

  ; Code: .L_44bdc7:	 RIP: 44bdc7	 Bytes: 0
block_.L_44bdc7:

  ; Code: movq $0x45a1f7, %rsi	 RIP: 44bdc7	 Bytes: 10
  %loadMem_44bdc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdc7 = call %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdc7)
  store %struct.Memory* %call_44bdc7, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44bdd1	 Bytes: 4
  %loadMem_44bdd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdd1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdd1)
  store %struct.Memory* %call_44bdd1, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44bdd5	 Bytes: 2
  %loadMem_44bdd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdd5 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdd5)
  store %struct.Memory* %call_44bdd5, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44bdd7	 Bytes: 5
  %loadMem1_44bdd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bdd7 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bdd7, i64 -305255, i64 5, i64 5)
  store %struct.Memory* %call1_44bdd7, %struct.Memory** %MEMORY

  %loadMem2_44bdd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bdd7 = load i64, i64* %3
  %call2_44bdd7 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44bdd7, %struct.Memory* %loadMem2_44bdd7)
  store %struct.Memory* %call2_44bdd7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x9c(%rbp)	 RIP: 44bddc	 Bytes: 6
  %loadMem_44bddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bddc = call %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bddc)
  store %struct.Memory* %call_44bddc, %struct.Memory** %MEMORY

  ; Code: .L_44bde2:	 RIP: 44bde2	 Bytes: 0
  br label %block_.L_44bde2
block_.L_44bde2:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bde2	 Bytes: 4
  %loadMem_44bde2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bde2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bde2)
  store %struct.Memory* %call_44bde2, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x68(%rax)	 RIP: 44bde6	 Bytes: 5
  %loadMem_44bde6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bde6 = call %struct.Memory* @routine_cmpq__0x0__0x68__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bde6)
  store %struct.Memory* %call_44bde6, %struct.Memory** %MEMORY

  ; Code: je .L_44be8e	 RIP: 44bdeb	 Bytes: 6
  %loadMem_44bdeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdeb = call %struct.Memory* @routine_je_.L_44be8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdeb, i8* %BRANCH_TAKEN, i64 163, i64 6, i64 6)
  store %struct.Memory* %call_44bdeb, %struct.Memory** %MEMORY

  %loadBr_44bdeb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bdeb = icmp eq i8 %loadBr_44bdeb, 1
  br i1 %cmpBr_44bdeb, label %block_.L_44be8e, label %block_44bdf1

block_44bdf1:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 44bdf1	 Bytes: 7
  %loadMem_44bdf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdf1 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdf1)
  store %struct.Memory* %call_44bdf1, %struct.Memory** %MEMORY

  ; Code: .L_44bdf8:	 RIP: 44bdf8	 Bytes: 0
  br label %block_.L_44bdf8
block_.L_44bdf8:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44bdf8	 Bytes: 3
  %loadMem_44bdf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdf8 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdf8)
  store %struct.Memory* %call_44bdf8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44bdfb	 Bytes: 4
  %loadMem_44bdfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdfb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdfb)
  store %struct.Memory* %call_44bdfb, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 44bdff	 Bytes: 3
  %loadMem_44bdff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdff = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdff)
  store %struct.Memory* %call_44bdff, %struct.Memory** %MEMORY

  ; Code: jge .L_44be73	 RIP: 44be02	 Bytes: 6
  %loadMem_44be02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be02 = call %struct.Memory* @routine_jge_.L_44be73(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be02, i8* %BRANCH_TAKEN, i64 113, i64 6, i64 6)
  store %struct.Memory* %call_44be02, %struct.Memory** %MEMORY

  %loadBr_44be02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44be02 = icmp eq i8 %loadBr_44be02, 1
  br i1 %cmpBr_44be02, label %block_.L_44be73, label %block_44be08

block_44be08:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 44be08	 Bytes: 4
  %loadMem_44be08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be08 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be08)
  store %struct.Memory* %call_44be08, %struct.Memory** %MEMORY

  ; Code: movq 0x68(%rax), %rax	 RIP: 44be0c	 Bytes: 4
  %loadMem_44be0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be0c = call %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be0c)
  store %struct.Memory* %call_44be0c, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44be10	 Bytes: 4
  %loadMem_44be10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be10 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be10)
  store %struct.Memory* %call_44be10, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax,%rcx,8)	 RIP: 44be14	 Bytes: 5
  %loadMem_44be14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be14 = call %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be14)
  store %struct.Memory* %call_44be14, %struct.Memory** %MEMORY

  ; Code: je .L_44be60	 RIP: 44be19	 Bytes: 6
  %loadMem_44be19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be19 = call %struct.Memory* @routine_je_.L_44be60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be19, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_44be19, %struct.Memory** %MEMORY

  %loadBr_44be19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44be19 = icmp eq i8 %loadBr_44be19, 1
  br i1 %cmpBr_44be19, label %block_.L_44be60, label %block_44be1f

block_44be1f:
  ; Code: movq $0x45b0f1, %rsi	 RIP: 44be1f	 Bytes: 10
  %loadMem_44be1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be1f = call %struct.Memory* @routine_movq__0x45b0f1___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be1f)
  store %struct.Memory* %call_44be1f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44be29	 Bytes: 4
  %loadMem_44be29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be29 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be29)
  store %struct.Memory* %call_44be29, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 44be2d	 Bytes: 3
  %loadMem_44be2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be2d = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be2d)
  store %struct.Memory* %call_44be2d, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44be30	 Bytes: 3
  %loadMem_44be30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be30 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be30)
  store %struct.Memory* %call_44be30, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44be33	 Bytes: 4
  %loadMem_44be33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be33 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be33)
  store %struct.Memory* %call_44be33, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 44be37	 Bytes: 4
  %loadMem_44be37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be37 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be37)
  store %struct.Memory* %call_44be37, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r8	 RIP: 44be3b	 Bytes: 4
  %loadMem_44be3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be3b = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be3b)
  store %struct.Memory* %call_44be3b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%r8,8), %r8	 RIP: 44be3f	 Bytes: 4
  %loadMem_44be3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be3f = call %struct.Memory* @routine_movq___rax__r8_8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be3f)
  store %struct.Memory* %call_44be3f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44be43	 Bytes: 4
  %loadMem_44be43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be43 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be43)
  store %struct.Memory* %call_44be43, %struct.Memory** %MEMORY

  ; Code: movq 0x68(%rax), %rax	 RIP: 44be47	 Bytes: 4
  %loadMem_44be47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be47 = call %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be47)
  store %struct.Memory* %call_44be47, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r9	 RIP: 44be4b	 Bytes: 4
  %loadMem_44be4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be4b = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be4b)
  store %struct.Memory* %call_44be4b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%r9,8), %r9	 RIP: 44be4f	 Bytes: 4
  %loadMem_44be4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be4f = call %struct.Memory* @routine_movq___rax__r9_8____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be4f)
  store %struct.Memory* %call_44be4f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44be53	 Bytes: 2
  %loadMem_44be53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be53 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be53)
  store %struct.Memory* %call_44be53, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44be55	 Bytes: 5
  %loadMem1_44be55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44be55 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44be55, i64 -305381, i64 5, i64 5)
  store %struct.Memory* %call1_44be55, %struct.Memory** %MEMORY

  %loadMem2_44be55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44be55 = load i64, i64* %3
  %call2_44be55 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44be55, %struct.Memory* %loadMem2_44be55)
  store %struct.Memory* %call2_44be55, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa0(%rbp)	 RIP: 44be5a	 Bytes: 6
  %loadMem_44be5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be5a = call %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be5a)
  store %struct.Memory* %call_44be5a, %struct.Memory** %MEMORY

  ; Code: .L_44be60:	 RIP: 44be60	 Bytes: 0
  br label %block_.L_44be60
block_.L_44be60:

  ; Code: jmpq .L_44be65	 RIP: 44be60	 Bytes: 5
  %loadMem_44be60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be60 = call %struct.Memory* @routine_jmpq_.L_44be65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be60, i64 5, i64 5)
  store %struct.Memory* %call_44be60, %struct.Memory** %MEMORY

  br label %block_.L_44be65

  ; Code: .L_44be65:	 RIP: 44be65	 Bytes: 0
block_.L_44be65:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44be65	 Bytes: 3
  %loadMem_44be65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be65 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be65)
  store %struct.Memory* %call_44be65, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44be68	 Bytes: 3
  %loadMem_44be68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be68 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be68)
  store %struct.Memory* %call_44be68, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44be6b	 Bytes: 3
  %loadMem_44be6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be6b = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be6b)
  store %struct.Memory* %call_44be6b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44bdf8	 RIP: 44be6e	 Bytes: 5
  %loadMem_44be6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be6e = call %struct.Memory* @routine_jmpq_.L_44bdf8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be6e, i64 -118, i64 5)
  store %struct.Memory* %call_44be6e, %struct.Memory** %MEMORY

  br label %block_.L_44bdf8

  ; Code: .L_44be73:	 RIP: 44be73	 Bytes: 0
block_.L_44be73:

  ; Code: movq $0x45a1f7, %rsi	 RIP: 44be73	 Bytes: 10
  %loadMem_44be73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be73 = call %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be73)
  store %struct.Memory* %call_44be73, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44be7d	 Bytes: 4
  %loadMem_44be7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be7d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be7d)
  store %struct.Memory* %call_44be7d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44be81	 Bytes: 2
  %loadMem_44be81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be81 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be81)
  store %struct.Memory* %call_44be81, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44be83	 Bytes: 5
  %loadMem1_44be83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44be83 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44be83, i64 -305427, i64 5, i64 5)
  store %struct.Memory* %call1_44be83, %struct.Memory** %MEMORY

  %loadMem2_44be83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44be83 = load i64, i64* %3
  %call2_44be83 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44be83, %struct.Memory* %loadMem2_44be83)
  store %struct.Memory* %call2_44be83, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa4(%rbp)	 RIP: 44be88	 Bytes: 6
  %loadMem_44be88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be88 = call %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be88)
  store %struct.Memory* %call_44be88, %struct.Memory** %MEMORY

  ; Code: .L_44be8e:	 RIP: 44be8e	 Bytes: 0
  br label %block_.L_44be8e
block_.L_44be8e:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 44be8e	 Bytes: 7
  %loadMem_44be8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be8e = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be8e)
  store %struct.Memory* %call_44be8e, %struct.Memory** %MEMORY

  ; Code: .L_44be95:	 RIP: 44be95	 Bytes: 0
  br label %block_.L_44be95
block_.L_44be95:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44be95	 Bytes: 3
  %loadMem_44be95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be95 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be95)
  store %struct.Memory* %call_44be95, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44be98	 Bytes: 4
  %loadMem_44be98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be98 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be98)
  store %struct.Memory* %call_44be98, %struct.Memory** %MEMORY

  ; Code: cmpl 0xf0(%rcx), %eax	 RIP: 44be9c	 Bytes: 6
  %loadMem_44be9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be9c = call %struct.Memory* @routine_cmpl_0xf0__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be9c)
  store %struct.Memory* %call_44be9c, %struct.Memory** %MEMORY

  ; Code: jge .L_44bfb7	 RIP: 44bea2	 Bytes: 6
  %loadMem_44bea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bea2 = call %struct.Memory* @routine_jge_.L_44bfb7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bea2, i8* %BRANCH_TAKEN, i64 277, i64 6, i64 6)
  store %struct.Memory* %call_44bea2, %struct.Memory** %MEMORY

  %loadBr_44bea2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bea2 = icmp eq i8 %loadBr_44bea2, 1
  br i1 %cmpBr_44bea2, label %block_.L_44bfb7, label %block_44bea8

block_44bea8:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 44bea8	 Bytes: 7
  %loadMem_44bea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bea8 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bea8)
  store %struct.Memory* %call_44bea8, %struct.Memory** %MEMORY

  ; Code: .L_44beaf:	 RIP: 44beaf	 Bytes: 0
  br label %block_.L_44beaf
block_.L_44beaf:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 44beaf	 Bytes: 3
  %loadMem_44beaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44beaf = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44beaf)
  store %struct.Memory* %call_44beaf, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44beb2	 Bytes: 4
  %loadMem_44beb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44beb2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44beb2)
  store %struct.Memory* %call_44beb2, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 44beb6	 Bytes: 3
  %loadMem_44beb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44beb6 = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44beb6)
  store %struct.Memory* %call_44beb6, %struct.Memory** %MEMORY

  ; Code: jge .L_44bf8e	 RIP: 44beb9	 Bytes: 6
  %loadMem_44beb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44beb9 = call %struct.Memory* @routine_jge_.L_44bf8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44beb9, i8* %BRANCH_TAKEN, i64 213, i64 6, i64 6)
  store %struct.Memory* %call_44beb9, %struct.Memory** %MEMORY

  %loadBr_44beb9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44beb9 = icmp eq i8 %loadBr_44beb9, 1
  br i1 %cmpBr_44beb9, label %block_.L_44bf8e, label %block_44bebf

block_44bebf:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bebf	 Bytes: 4
  %loadMem_44bebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bebf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bebf)
  store %struct.Memory* %call_44bebf, %struct.Memory** %MEMORY

  ; Code: movq 0xe0(%rax), %rax	 RIP: 44bec3	 Bytes: 7
  %loadMem_44bec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bec3 = call %struct.Memory* @routine_movq_0xe0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bec3)
  store %struct.Memory* %call_44bec3, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44beca	 Bytes: 4
  %loadMem_44beca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44beca = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44beca)
  store %struct.Memory* %call_44beca, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44bece	 Bytes: 4
  %loadMem_44bece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bece = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bece)
  store %struct.Memory* %call_44bece, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 44bed2	 Bytes: 4
  %loadMem_44bed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bed2 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bed2)
  store %struct.Memory* %call_44bed2, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax,%rcx,8)	 RIP: 44bed6	 Bytes: 5
  %loadMem_44bed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bed6 = call %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bed6)
  store %struct.Memory* %call_44bed6, %struct.Memory** %MEMORY

  ; Code: je .L_44bf7b	 RIP: 44bedb	 Bytes: 6
  %loadMem_44bedb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bedb = call %struct.Memory* @routine_je_.L_44bf7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bedb, i8* %BRANCH_TAKEN, i64 160, i64 6, i64 6)
  store %struct.Memory* %call_44bedb, %struct.Memory** %MEMORY

  %loadBr_44bedb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bedb = icmp eq i8 %loadBr_44bedb, 1
  br i1 %cmpBr_44bedb, label %block_.L_44bf7b, label %block_44bee1

block_44bee1:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bee1	 Bytes: 4
  %loadMem_44bee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bee1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bee1)
  store %struct.Memory* %call_44bee1, %struct.Memory** %MEMORY

  ; Code: movq 0xe0(%rax), %rax	 RIP: 44bee5	 Bytes: 7
  %loadMem_44bee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bee5 = call %struct.Memory* @routine_movq_0xe0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bee5)
  store %struct.Memory* %call_44bee5, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44beec	 Bytes: 4
  %loadMem_44beec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44beec = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44beec)
  store %struct.Memory* %call_44beec, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44bef0	 Bytes: 4
  %loadMem_44bef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bef0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bef0)
  store %struct.Memory* %call_44bef0, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 44bef4	 Bytes: 4
  %loadMem_44bef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bef4 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bef4)
  store %struct.Memory* %call_44bef4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44bef8	 Bytes: 4
  %loadMem_44bef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bef8 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bef8)
  store %struct.Memory* %call_44bef8, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 44befc	 Bytes: 4
  %loadMem_44befc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44befc = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44befc)
  store %struct.Memory* %call_44befc, %struct.Memory** %MEMORY

  ; Code: .L_44bf00:	 RIP: 44bf00	 Bytes: 0
  br label %block_.L_44bf00
block_.L_44bf00:

  ; Code: leaq -0x48(%rbp), %rdi	 RIP: 44bf00	 Bytes: 4
  %loadMem_44bf00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf00 = call %struct.Memory* @routine_leaq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf00)
  store %struct.Memory* %call_44bf00, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f7, %rsi	 RIP: 44bf04	 Bytes: 10
  %loadMem_44bf04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf04 = call %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf04)
  store %struct.Memory* %call_44bf04, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 44bf0e	 Bytes: 2
  %loadMem_44bf0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf0e = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf0e)
  store %struct.Memory* %call_44bf0e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44bf10	 Bytes: 2
  %loadMem_44bf10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf10 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf10)
  store %struct.Memory* %call_44bf10, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 44bf12	 Bytes: 5
  %loadMem1_44bf12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bf12 = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bf12, i64 -22722, i64 5, i64 5)
  store %struct.Memory* %call1_44bf12, %struct.Memory** %MEMORY

  %loadMem2_44bf12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bf12 = load i64, i64* %3
  %call2_44bf12 = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_44bf12, %struct.Memory* %loadMem2_44bf12)
  store %struct.Memory* %call2_44bf12, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x50(%rbp)	 RIP: 44bf17	 Bytes: 4
  %loadMem_44bf17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf17 = call %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf17)
  store %struct.Memory* %call_44bf17, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 44bf1b	 Bytes: 4
  %loadMem_44bf1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf1b = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf1b)
  store %struct.Memory* %call_44bf1b, %struct.Memory** %MEMORY

  ; Code: je .L_44bf76	 RIP: 44bf1f	 Bytes: 6
  %loadMem_44bf1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf1f = call %struct.Memory* @routine_je_.L_44bf76(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf1f, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_44bf1f, %struct.Memory** %MEMORY

  %loadBr_44bf1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bf1f = icmp eq i8 %loadBr_44bf1f, 1
  br i1 %cmpBr_44bf1f, label %block_.L_44bf76, label %block_44bf25

block_44bf25:
  ; Code: movq $0x45b106, %rsi	 RIP: 44bf25	 Bytes: 10
  %loadMem_44bf25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf25 = call %struct.Memory* @routine_movq__0x45b106___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf25)
  store %struct.Memory* %call_44bf25, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44bf2f	 Bytes: 4
  %loadMem_44bf2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf2f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf2f)
  store %struct.Memory* %call_44bf2f, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 44bf33	 Bytes: 3
  %loadMem_44bf33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf33 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf33)
  store %struct.Memory* %call_44bf33, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44bf36	 Bytes: 3
  %loadMem_44bf36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf36 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf36)
  store %struct.Memory* %call_44bf36, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bf39	 Bytes: 4
  %loadMem_44bf39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf39 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf39)
  store %struct.Memory* %call_44bf39, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 44bf3d	 Bytes: 4
  %loadMem_44bf3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf3d = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf3d)
  store %struct.Memory* %call_44bf3d, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %r8	 RIP: 44bf41	 Bytes: 4
  %loadMem_44bf41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf41 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf41)
  store %struct.Memory* %call_44bf41, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%r8,8), %r8	 RIP: 44bf45	 Bytes: 4
  %loadMem_44bf45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf45 = call %struct.Memory* @routine_movq___rax__r8_8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf45)
  store %struct.Memory* %call_44bf45, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44bf49	 Bytes: 4
  %loadMem_44bf49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf49 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf49)
  store %struct.Memory* %call_44bf49, %struct.Memory** %MEMORY

  ; Code: movq 0xd8(%rax), %rax	 RIP: 44bf4d	 Bytes: 7
  %loadMem_44bf4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf4d = call %struct.Memory* @routine_movq_0xd8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf4d)
  store %struct.Memory* %call_44bf4d, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r9	 RIP: 44bf54	 Bytes: 4
  %loadMem_44bf54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf54 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf54)
  store %struct.Memory* %call_44bf54, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%r9,8), %r9	 RIP: 44bf58	 Bytes: 4
  %loadMem_44bf58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf58 = call %struct.Memory* @routine_movq___rax__r9_8____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf58)
  store %struct.Memory* %call_44bf58, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 44bf5c	 Bytes: 4
  %loadMem_44bf5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf5c = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf5c)
  store %struct.Memory* %call_44bf5c, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rsp)	 RIP: 44bf60	 Bytes: 4
  %loadMem_44bf60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf60 = call %struct.Memory* @routine_movq__rax____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf60)
  store %struct.Memory* %call_44bf60, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44bf64	 Bytes: 2
  %loadMem_44bf64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf64 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf64)
  store %struct.Memory* %call_44bf64, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44bf66	 Bytes: 5
  %loadMem1_44bf66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bf66 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bf66, i64 -305654, i64 5, i64 5)
  store %struct.Memory* %call1_44bf66, %struct.Memory** %MEMORY

  %loadMem2_44bf66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bf66 = load i64, i64* %3
  %call2_44bf66 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44bf66, %struct.Memory* %loadMem2_44bf66)
  store %struct.Memory* %call2_44bf66, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa8(%rbp)	 RIP: 44bf6b	 Bytes: 6
  %loadMem_44bf6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf6b = call %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf6b)
  store %struct.Memory* %call_44bf6b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44bf00	 RIP: 44bf71	 Bytes: 5
  %loadMem_44bf71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf71 = call %struct.Memory* @routine_jmpq_.L_44bf00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf71, i64 -113, i64 5)
  store %struct.Memory* %call_44bf71, %struct.Memory** %MEMORY

  br label %block_.L_44bf00

  ; Code: .L_44bf76:	 RIP: 44bf76	 Bytes: 0
block_.L_44bf76:

  ; Code: jmpq .L_44bf7b	 RIP: 44bf76	 Bytes: 5
  %loadMem_44bf76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf76 = call %struct.Memory* @routine_jmpq_.L_44bf7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf76, i64 5, i64 5)
  store %struct.Memory* %call_44bf76, %struct.Memory** %MEMORY

  br label %block_.L_44bf7b

  ; Code: .L_44bf7b:	 RIP: 44bf7b	 Bytes: 0
block_.L_44bf7b:

  ; Code: jmpq .L_44bf80	 RIP: 44bf7b	 Bytes: 5
  %loadMem_44bf7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf7b = call %struct.Memory* @routine_jmpq_.L_44bf80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf7b, i64 5, i64 5)
  store %struct.Memory* %call_44bf7b, %struct.Memory** %MEMORY

  br label %block_.L_44bf80

  ; Code: .L_44bf80:	 RIP: 44bf80	 Bytes: 0
block_.L_44bf80:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 44bf80	 Bytes: 3
  %loadMem_44bf80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf80 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf80)
  store %struct.Memory* %call_44bf80, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44bf83	 Bytes: 3
  %loadMem_44bf83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf83 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf83)
  store %struct.Memory* %call_44bf83, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 44bf86	 Bytes: 3
  %loadMem_44bf86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf86 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf86)
  store %struct.Memory* %call_44bf86, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44beaf	 RIP: 44bf89	 Bytes: 5
  %loadMem_44bf89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf89 = call %struct.Memory* @routine_jmpq_.L_44beaf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf89, i64 -218, i64 5)
  store %struct.Memory* %call_44bf89, %struct.Memory** %MEMORY

  br label %block_.L_44beaf

  ; Code: .L_44bf8e:	 RIP: 44bf8e	 Bytes: 0
block_.L_44bf8e:

  ; Code: movq $0x45a1f7, %rsi	 RIP: 44bf8e	 Bytes: 10
  %loadMem_44bf8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf8e = call %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf8e)
  store %struct.Memory* %call_44bf8e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44bf98	 Bytes: 4
  %loadMem_44bf98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf98 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf98)
  store %struct.Memory* %call_44bf98, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44bf9c	 Bytes: 2
  %loadMem_44bf9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf9c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf9c)
  store %struct.Memory* %call_44bf9c, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44bf9e	 Bytes: 5
  %loadMem1_44bf9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bf9e = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bf9e, i64 -305710, i64 5, i64 5)
  store %struct.Memory* %call1_44bf9e, %struct.Memory** %MEMORY

  %loadMem2_44bf9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bf9e = load i64, i64* %3
  %call2_44bf9e = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44bf9e, %struct.Memory* %loadMem2_44bf9e)
  store %struct.Memory* %call2_44bf9e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xac(%rbp)	 RIP: 44bfa3	 Bytes: 6
  %loadMem_44bfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfa3 = call %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfa3)
  store %struct.Memory* %call_44bfa3, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44bfa9	 Bytes: 3
  %loadMem_44bfa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfa9 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfa9)
  store %struct.Memory* %call_44bfa9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44bfac	 Bytes: 3
  %loadMem_44bfac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfac = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfac)
  store %struct.Memory* %call_44bfac, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44bfaf	 Bytes: 3
  %loadMem_44bfaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfaf = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfaf)
  store %struct.Memory* %call_44bfaf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44be95	 RIP: 44bfb2	 Bytes: 5
  %loadMem_44bfb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfb2 = call %struct.Memory* @routine_jmpq_.L_44be95(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfb2, i64 -285, i64 5)
  store %struct.Memory* %call_44bfb2, %struct.Memory** %MEMORY

  br label %block_.L_44be95

  ; Code: .L_44bfb7:	 RIP: 44bfb7	 Bytes: 0
block_.L_44bfb7:

  ; Code: movl $0x0, -0x3c(%rbp)	 RIP: 44bfb7	 Bytes: 7
  %loadMem_44bfb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfb7 = call %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfb7)
  store %struct.Memory* %call_44bfb7, %struct.Memory** %MEMORY

  ; Code: .L_44bfbe:	 RIP: 44bfbe	 Bytes: 0
  br label %block_.L_44bfbe
block_.L_44bfbe:

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 44bfbe	 Bytes: 3
  %loadMem_44bfbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfbe = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfbe)
  store %struct.Memory* %call_44bfbe, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44bfc1	 Bytes: 4
  %loadMem_44bfc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfc1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfc1)
  store %struct.Memory* %call_44bfc1, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 44bfc5	 Bytes: 3
  %loadMem_44bfc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfc5 = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfc5)
  store %struct.Memory* %call_44bfc5, %struct.Memory** %MEMORY

  ; Code: jge .L_44c54f	 RIP: 44bfc8	 Bytes: 6
  %loadMem_44bfc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfc8 = call %struct.Memory* @routine_jge_.L_44c54f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfc8, i8* %BRANCH_TAKEN, i64 1415, i64 6, i64 6)
  store %struct.Memory* %call_44bfc8, %struct.Memory** %MEMORY

  %loadBr_44bfc8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bfc8 = icmp eq i8 %loadBr_44bfc8, 1
  br i1 %cmpBr_44bfc8, label %block_.L_44c54f, label %block_44bfce

block_44bfce:
  ; Code: cmpl $0x0, -0x3c(%rbp)	 RIP: 44bfce	 Bytes: 4
  %loadMem_44bfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfce = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfce)
  store %struct.Memory* %call_44bfce, %struct.Memory** %MEMORY

  ; Code: jle .L_44bff3	 RIP: 44bfd2	 Bytes: 6
  %loadMem_44bfd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfd2 = call %struct.Memory* @routine_jle_.L_44bff3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfd2, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_44bfd2, %struct.Memory** %MEMORY

  %loadBr_44bfd2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bfd2 = icmp eq i8 %loadBr_44bfd2, 1
  br i1 %cmpBr_44bfd2, label %block_.L_44bff3, label %block_44bfd8

block_44bfd8:
  ; Code: movq $0x45a1f7, %rsi	 RIP: 44bfd8	 Bytes: 10
  %loadMem_44bfd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfd8 = call %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfd8)
  store %struct.Memory* %call_44bfd8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44bfe2	 Bytes: 4
  %loadMem_44bfe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfe2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfe2)
  store %struct.Memory* %call_44bfe2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44bfe6	 Bytes: 2
  %loadMem_44bfe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfe6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfe6)
  store %struct.Memory* %call_44bfe6, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44bfe8	 Bytes: 5
  %loadMem1_44bfe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bfe8 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bfe8, i64 -305784, i64 5, i64 5)
  store %struct.Memory* %call1_44bfe8, %struct.Memory** %MEMORY

  %loadMem2_44bfe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bfe8 = load i64, i64* %3
  %call2_44bfe8 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44bfe8, %struct.Memory* %loadMem2_44bfe8)
  store %struct.Memory* %call2_44bfe8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb0(%rbp)	 RIP: 44bfed	 Bytes: 6
  %loadMem_44bfed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfed = call %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfed)
  store %struct.Memory* %call_44bfed, %struct.Memory** %MEMORY

  ; Code: .L_44bff3:	 RIP: 44bff3	 Bytes: 0
  br label %block_.L_44bff3
block_.L_44bff3:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 44bff3	 Bytes: 7
  %loadMem_44bff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bff3 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bff3)
  store %struct.Memory* %call_44bff3, %struct.Memory** %MEMORY

  ; Code: .L_44bffa:	 RIP: 44bffa	 Bytes: 0
  br label %block_.L_44bffa
block_.L_44bffa:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44bffa	 Bytes: 3
  %loadMem_44bffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bffa = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bffa)
  store %struct.Memory* %call_44bffa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44bffd	 Bytes: 4
  %loadMem_44bffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bffd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bffd)
  store %struct.Memory* %call_44bffd, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 44c001	 Bytes: 3
  %loadMem_44c001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c001 = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c001)
  store %struct.Memory* %call_44c001, %struct.Memory** %MEMORY

  ; Code: jge .L_44c2c9	 RIP: 44c004	 Bytes: 6
  %loadMem_44c004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c004 = call %struct.Memory* @routine_jge_.L_44c2c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c004, i8* %BRANCH_TAKEN, i64 709, i64 6, i64 6)
  store %struct.Memory* %call_44c004, %struct.Memory** %MEMORY

  %loadBr_44c004 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c004 = icmp eq i8 %loadBr_44c004, 1
  br i1 %cmpBr_44c004, label %block_.L_44c2c9, label %block_44c00a

block_44c00a:
  ; Code: movq -0x38(%rbp), %rdi	 RIP: 44c00a	 Bytes: 4
  %loadMem_44c00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c00a = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c00a)
  store %struct.Memory* %call_44c00a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44c00e	 Bytes: 4
  %loadMem_44c00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c00e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c00e)
  store %struct.Memory* %call_44c00e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 44c012	 Bytes: 3
  %loadMem_44c012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c012 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c012)
  store %struct.Memory* %call_44c012, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44c015	 Bytes: 4
  %loadMem_44c015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c015 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c015)
  store %struct.Memory* %call_44c015, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44c019	 Bytes: 4
  %loadMem_44c019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c019 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c019)
  store %struct.Memory* %call_44c019, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 44c01d	 Bytes: 4
  %loadMem_44c01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c01d = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c01d)
  store %struct.Memory* %call_44c01d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c021	 Bytes: 3
  %loadMem_44c021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c021 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c021)
  store %struct.Memory* %call_44c021, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c024	 Bytes: 4
  %loadMem_44c024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c024 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c024)
  store %struct.Memory* %call_44c024, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 44c028	 Bytes: 3
  %loadMem_44c028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c028 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c028)
  store %struct.Memory* %call_44c028, %struct.Memory** %MEMORY

  ; Code: callq .strncpy_plt	 RIP: 44c02b	 Bytes: 5
  %loadMem1_44c02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c02b = call %struct.Memory* @routine_callq_.strncpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c02b, i64 -306299, i64 5, i64 5)
  store %struct.Memory* %call1_44c02b, %struct.Memory** %MEMORY

  %loadMem2_44c02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c02b = load i64, i64* %3
  %call2_44c02b = call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* %0, i64  %loadPC_44c02b, %struct.Memory* %loadMem2_44c02b)
  store %struct.Memory* %call2_44c02b, %struct.Memory** %MEMORY

  ; Code: movq $0x45b119, %rsi	 RIP: 44c030	 Bytes: 10
  %loadMem_44c030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c030 = call %struct.Memory* @routine_movq__0x45b119___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c030)
  store %struct.Memory* %call_44c030, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 44c03a	 Bytes: 4
  %loadMem_44c03a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c03a = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c03a)
  store %struct.Memory* %call_44c03a, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c03e	 Bytes: 4
  %loadMem_44c03e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c03e = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c03e)
  store %struct.Memory* %call_44c03e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rcx,%rdx,1)	 RIP: 44c042	 Bytes: 4
  %loadMem_44c042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c042 = call %struct.Memory* @routine_movb__0x0____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c042)
  store %struct.Memory* %call_44c042, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44c046	 Bytes: 4
  %loadMem_44c046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c046 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c046)
  store %struct.Memory* %call_44c046, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r8d	 RIP: 44c04a	 Bytes: 4
  %loadMem_44c04a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c04a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c04a)
  store %struct.Memory* %call_44c04a, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %r8d	 RIP: 44c04e	 Bytes: 4
  %loadMem_44c04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c04e = call %struct.Memory* @routine_addl_MINUS0x28__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c04e)
  store %struct.Memory* %call_44c04e, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %r8d	 RIP: 44c052	 Bytes: 4
  %loadMem_44c052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c052 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c052)
  store %struct.Memory* %call_44c052, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r9d	 RIP: 44c056	 Bytes: 4
  %loadMem_44c056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c056 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c056)
  store %struct.Memory* %call_44c056, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %r9d	 RIP: 44c05a	 Bytes: 4
  %loadMem_44c05a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c05a = call %struct.Memory* @routine_addl_MINUS0x28__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c05a)
  store %struct.Memory* %call_44c05a, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %r9d	 RIP: 44c05e	 Bytes: 4
  %loadMem_44c05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c05e = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c05e)
  store %struct.Memory* %call_44c05e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44c062	 Bytes: 4
  %loadMem_44c062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c062 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c062)
  store %struct.Memory* %call_44c062, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 44c066	 Bytes: 4
  %loadMem_44c066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c066 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c066)
  store %struct.Memory* %call_44c066, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 44c06a	 Bytes: 4
  %loadMem_44c06a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c06a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c06a)
  store %struct.Memory* %call_44c06a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 44c06e	 Bytes: 4
  %loadMem_44c06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c06e = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c06e)
  store %struct.Memory* %call_44c06e, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 44c072	 Bytes: 4
  %loadMem_44c072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c072 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c072)
  store %struct.Memory* %call_44c072, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0xb8(%rbp)	 RIP: 44c076	 Bytes: 7
  %loadMem_44c076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c076 = call %struct.Memory* @routine_movq__rdx__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c076)
  store %struct.Memory* %call_44c076, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %edx	 RIP: 44c07d	 Bytes: 3
  %loadMem_44c07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c07d = call %struct.Memory* @routine_movl__r8d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c07d)
  store %struct.Memory* %call_44c07d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xc0(%rbp)	 RIP: 44c080	 Bytes: 7
  %loadMem_44c080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c080 = call %struct.Memory* @routine_movq__rcx__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c080)
  store %struct.Memory* %call_44c080, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %ecx	 RIP: 44c087	 Bytes: 3
  %loadMem_44c087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c087 = call %struct.Memory* @routine_movl__r9d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c087)
  store %struct.Memory* %call_44c087, %struct.Memory** %MEMORY

  ; Code: movq -0xc0(%rbp), %r8	 RIP: 44c08a	 Bytes: 7
  %loadMem_44c08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c08a = call %struct.Memory* @routine_movq_MINUS0xc0__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c08a)
  store %struct.Memory* %call_44c08a, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %r9	 RIP: 44c091	 Bytes: 7
  %loadMem_44c091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c091 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c091)
  store %struct.Memory* %call_44c091, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xc8(%rbp)	 RIP: 44c098	 Bytes: 7
  %loadMem_44c098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c098 = call %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c098)
  store %struct.Memory* %call_44c098, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44c09f	 Bytes: 2
  %loadMem_44c09f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c09f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c09f)
  store %struct.Memory* %call_44c09f, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44c0a1	 Bytes: 5
  %loadMem1_44c0a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c0a1 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c0a1, i64 -305969, i64 5, i64 5)
  store %struct.Memory* %call1_44c0a1, %struct.Memory** %MEMORY

  %loadMem2_44c0a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c0a1 = load i64, i64* %3
  %call2_44c0a1 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44c0a1, %struct.Memory* %loadMem2_44c0a1)
  store %struct.Memory* %call2_44c0a1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 44c0a6	 Bytes: 4
  %loadMem_44c0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0a6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0a6)
  store %struct.Memory* %call_44c0a6, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x70(%rsi)	 RIP: 44c0aa	 Bytes: 5
  %loadMem_44c0aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0aa = call %struct.Memory* @routine_cmpq__0x0__0x70__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0aa)
  store %struct.Memory* %call_44c0aa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xcc(%rbp)	 RIP: 44c0af	 Bytes: 6
  %loadMem_44c0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0af = call %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0af)
  store %struct.Memory* %call_44c0af, %struct.Memory** %MEMORY

  ; Code: je .L_44c141	 RIP: 44c0b5	 Bytes: 6
  %loadMem_44c0b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0b5 = call %struct.Memory* @routine_je_.L_44c141(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0b5, i8* %BRANCH_TAKEN, i64 140, i64 6, i64 6)
  store %struct.Memory* %call_44c0b5, %struct.Memory** %MEMORY

  %loadBr_44c0b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c0b5 = icmp eq i8 %loadBr_44c0b5, 1
  br i1 %cmpBr_44c0b5, label %block_.L_44c141, label %block_44c0bb

block_44c0bb:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 44c0bb	 Bytes: 4
  %loadMem_44c0bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0bb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0bb)
  store %struct.Memory* %call_44c0bb, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rax	 RIP: 44c0bf	 Bytes: 4
  %loadMem_44c0bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0bf = call %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0bf)
  store %struct.Memory* %call_44c0bf, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44c0c3	 Bytes: 4
  %loadMem_44c0c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0c3 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0c3)
  store %struct.Memory* %call_44c0c3, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax,%rcx,8)	 RIP: 44c0c7	 Bytes: 5
  %loadMem_44c0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0c7 = call %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0c7)
  store %struct.Memory* %call_44c0c7, %struct.Memory** %MEMORY

  ; Code: je .L_44c141	 RIP: 44c0cc	 Bytes: 6
  %loadMem_44c0cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0cc = call %struct.Memory* @routine_je_.L_44c141(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0cc, i8* %BRANCH_TAKEN, i64 117, i64 6, i64 6)
  store %struct.Memory* %call_44c0cc, %struct.Memory** %MEMORY

  %loadBr_44c0cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c0cc = icmp eq i8 %loadBr_44c0cc, 1
  br i1 %cmpBr_44c0cc, label %block_.L_44c141, label %block_44c0d2

block_44c0d2:
  ; Code: movq -0x38(%rbp), %rdi	 RIP: 44c0d2	 Bytes: 4
  %loadMem_44c0d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0d2 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0d2)
  store %struct.Memory* %call_44c0d2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44c0d6	 Bytes: 4
  %loadMem_44c0d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0d6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0d6)
  store %struct.Memory* %call_44c0d6, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rax	 RIP: 44c0da	 Bytes: 4
  %loadMem_44c0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0da = call %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0da)
  store %struct.Memory* %call_44c0da, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44c0de	 Bytes: 4
  %loadMem_44c0de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0de = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0de)
  store %struct.Memory* %call_44c0de, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44c0e2	 Bytes: 4
  %loadMem_44c0e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0e2 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0e2)
  store %struct.Memory* %call_44c0e2, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 44c0e6	 Bytes: 4
  %loadMem_44c0e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0e6 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0e6)
  store %struct.Memory* %call_44c0e6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c0ea	 Bytes: 3
  %loadMem_44c0ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0ea = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0ea)
  store %struct.Memory* %call_44c0ea, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c0ed	 Bytes: 4
  %loadMem_44c0ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0ed = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0ed)
  store %struct.Memory* %call_44c0ed, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 44c0f1	 Bytes: 3
  %loadMem_44c0f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0f1 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0f1)
  store %struct.Memory* %call_44c0f1, %struct.Memory** %MEMORY

  ; Code: callq .strncpy_plt	 RIP: 44c0f4	 Bytes: 5
  %loadMem1_44c0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c0f4 = call %struct.Memory* @routine_callq_.strncpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c0f4, i64 -306500, i64 5, i64 5)
  store %struct.Memory* %call1_44c0f4, %struct.Memory** %MEMORY

  %loadMem2_44c0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c0f4 = load i64, i64* %3
  %call2_44c0f4 = call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* %0, i64  %loadPC_44c0f4, %struct.Memory* %loadMem2_44c0f4)
  store %struct.Memory* %call2_44c0f4, %struct.Memory** %MEMORY

  ; Code: movq $0x45b125, %rsi	 RIP: 44c0f9	 Bytes: 10
  %loadMem_44c0f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0f9 = call %struct.Memory* @routine_movq__0x45b125___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0f9)
  store %struct.Memory* %call_44c0f9, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 44c103	 Bytes: 4
  %loadMem_44c103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c103 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c103)
  store %struct.Memory* %call_44c103, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c107	 Bytes: 4
  %loadMem_44c107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c107 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c107)
  store %struct.Memory* %call_44c107, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rcx,%rdx,1)	 RIP: 44c10b	 Bytes: 4
  %loadMem_44c10b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c10b = call %struct.Memory* @routine_movb__0x0____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c10b)
  store %struct.Memory* %call_44c10b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44c10f	 Bytes: 4
  %loadMem_44c10f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c10f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c10f)
  store %struct.Memory* %call_44c10f, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 44c113	 Bytes: 3
  %loadMem_44c113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c113 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c113)
  store %struct.Memory* %call_44c113, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44c116	 Bytes: 3
  %loadMem_44c116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c116 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c116)
  store %struct.Memory* %call_44c116, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %r8	 RIP: 44c119	 Bytes: 4
  %loadMem_44c119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c119 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c119)
  store %struct.Memory* %call_44c119, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%r8), %r8	 RIP: 44c11d	 Bytes: 4
  %loadMem_44c11d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c11d = call %struct.Memory* @routine_movq_0x8__r8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c11d)
  store %struct.Memory* %call_44c11d, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r9	 RIP: 44c121	 Bytes: 4
  %loadMem_44c121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c121 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c121)
  store %struct.Memory* %call_44c121, %struct.Memory** %MEMORY

  ; Code: movq (%r8,%r9,8), %r8	 RIP: 44c125	 Bytes: 4
  %loadMem_44c125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c125 = call %struct.Memory* @routine_movq___r8__r9_8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c125)
  store %struct.Memory* %call_44c125, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %r9	 RIP: 44c129	 Bytes: 4
  %loadMem_44c129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c129 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c129)
  store %struct.Memory* %call_44c129, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xd8(%rbp)	 RIP: 44c12d	 Bytes: 7
  %loadMem_44c12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c12d = call %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c12d)
  store %struct.Memory* %call_44c12d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44c134	 Bytes: 2
  %loadMem_44c134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c134 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c134)
  store %struct.Memory* %call_44c134, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44c136	 Bytes: 5
  %loadMem1_44c136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c136 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c136, i64 -306118, i64 5, i64 5)
  store %struct.Memory* %call1_44c136, %struct.Memory** %MEMORY

  %loadMem2_44c136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c136 = load i64, i64* %3
  %call2_44c136 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44c136, %struct.Memory* %loadMem2_44c136)
  store %struct.Memory* %call2_44c136, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xdc(%rbp)	 RIP: 44c13b	 Bytes: 6
  %loadMem_44c13b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c13b = call %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c13b)
  store %struct.Memory* %call_44c13b, %struct.Memory** %MEMORY

  ; Code: .L_44c141:	 RIP: 44c141	 Bytes: 0
  br label %block_.L_44c141
block_.L_44c141:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44c141	 Bytes: 4
  %loadMem_44c141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c141 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c141)
  store %struct.Memory* %call_44c141, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x78(%rax)	 RIP: 44c145	 Bytes: 5
  %loadMem_44c145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c145 = call %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c145)
  store %struct.Memory* %call_44c145, %struct.Memory** %MEMORY

  ; Code: je .L_44c1d6	 RIP: 44c14a	 Bytes: 6
  %loadMem_44c14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c14a = call %struct.Memory* @routine_je_.L_44c1d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c14a, i8* %BRANCH_TAKEN, i64 140, i64 6, i64 6)
  store %struct.Memory* %call_44c14a, %struct.Memory** %MEMORY

  %loadBr_44c14a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c14a = icmp eq i8 %loadBr_44c14a, 1
  br i1 %cmpBr_44c14a, label %block_.L_44c1d6, label %block_44c150

block_44c150:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 44c150	 Bytes: 4
  %loadMem_44c150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c150 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c150)
  store %struct.Memory* %call_44c150, %struct.Memory** %MEMORY

  ; Code: movq 0x78(%rax), %rax	 RIP: 44c154	 Bytes: 4
  %loadMem_44c154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c154 = call %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c154)
  store %struct.Memory* %call_44c154, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44c158	 Bytes: 4
  %loadMem_44c158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c158 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c158)
  store %struct.Memory* %call_44c158, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax,%rcx,8)	 RIP: 44c15c	 Bytes: 5
  %loadMem_44c15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c15c = call %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c15c)
  store %struct.Memory* %call_44c15c, %struct.Memory** %MEMORY

  ; Code: je .L_44c1d6	 RIP: 44c161	 Bytes: 6
  %loadMem_44c161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c161 = call %struct.Memory* @routine_je_.L_44c1d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c161, i8* %BRANCH_TAKEN, i64 117, i64 6, i64 6)
  store %struct.Memory* %call_44c161, %struct.Memory** %MEMORY

  %loadBr_44c161 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c161 = icmp eq i8 %loadBr_44c161, 1
  br i1 %cmpBr_44c161, label %block_.L_44c1d6, label %block_44c167

block_44c167:
  ; Code: movq -0x38(%rbp), %rdi	 RIP: 44c167	 Bytes: 4
  %loadMem_44c167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c167 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c167)
  store %struct.Memory* %call_44c167, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44c16b	 Bytes: 4
  %loadMem_44c16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c16b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c16b)
  store %struct.Memory* %call_44c16b, %struct.Memory** %MEMORY

  ; Code: movq 0x78(%rax), %rax	 RIP: 44c16f	 Bytes: 4
  %loadMem_44c16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c16f = call %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c16f)
  store %struct.Memory* %call_44c16f, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44c173	 Bytes: 4
  %loadMem_44c173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c173 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c173)
  store %struct.Memory* %call_44c173, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44c177	 Bytes: 4
  %loadMem_44c177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c177 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c177)
  store %struct.Memory* %call_44c177, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 44c17b	 Bytes: 4
  %loadMem_44c17b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c17b = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c17b)
  store %struct.Memory* %call_44c17b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c17f	 Bytes: 3
  %loadMem_44c17f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c17f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c17f)
  store %struct.Memory* %call_44c17f, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c182	 Bytes: 4
  %loadMem_44c182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c182 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c182)
  store %struct.Memory* %call_44c182, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 44c186	 Bytes: 3
  %loadMem_44c186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c186 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c186)
  store %struct.Memory* %call_44c186, %struct.Memory** %MEMORY

  ; Code: callq .strncpy_plt	 RIP: 44c189	 Bytes: 5
  %loadMem1_44c189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c189 = call %struct.Memory* @routine_callq_.strncpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c189, i64 -306649, i64 5, i64 5)
  store %struct.Memory* %call1_44c189, %struct.Memory** %MEMORY

  %loadMem2_44c189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c189 = load i64, i64* %3
  %call2_44c189 = call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* %0, i64  %loadPC_44c189, %struct.Memory* %loadMem2_44c189)
  store %struct.Memory* %call2_44c189, %struct.Memory** %MEMORY

  ; Code: movq $0x45b13c, %rsi	 RIP: 44c18e	 Bytes: 10
  %loadMem_44c18e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c18e = call %struct.Memory* @routine_movq__0x45b13c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c18e)
  store %struct.Memory* %call_44c18e, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 44c198	 Bytes: 4
  %loadMem_44c198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c198 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c198)
  store %struct.Memory* %call_44c198, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c19c	 Bytes: 4
  %loadMem_44c19c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c19c = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c19c)
  store %struct.Memory* %call_44c19c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rcx,%rdx,1)	 RIP: 44c1a0	 Bytes: 4
  %loadMem_44c1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1a0 = call %struct.Memory* @routine_movb__0x0____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1a0)
  store %struct.Memory* %call_44c1a0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44c1a4	 Bytes: 4
  %loadMem_44c1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1a4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1a4)
  store %struct.Memory* %call_44c1a4, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 44c1a8	 Bytes: 3
  %loadMem_44c1a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1a8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1a8)
  store %struct.Memory* %call_44c1a8, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44c1ab	 Bytes: 3
  %loadMem_44c1ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1ab = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1ab)
  store %struct.Memory* %call_44c1ab, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %r8	 RIP: 44c1ae	 Bytes: 4
  %loadMem_44c1ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1ae = call %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1ae)
  store %struct.Memory* %call_44c1ae, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%r8), %r8	 RIP: 44c1b2	 Bytes: 4
  %loadMem_44c1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1b2 = call %struct.Memory* @routine_movq_0x8__r8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1b2)
  store %struct.Memory* %call_44c1b2, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r9	 RIP: 44c1b6	 Bytes: 4
  %loadMem_44c1b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1b6 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1b6)
  store %struct.Memory* %call_44c1b6, %struct.Memory** %MEMORY

  ; Code: movq (%r8,%r9,8), %r8	 RIP: 44c1ba	 Bytes: 4
  %loadMem_44c1ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1ba = call %struct.Memory* @routine_movq___r8__r9_8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1ba)
  store %struct.Memory* %call_44c1ba, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %r9	 RIP: 44c1be	 Bytes: 4
  %loadMem_44c1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1be = call %struct.Memory* @routine_movq_MINUS0x38__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1be)
  store %struct.Memory* %call_44c1be, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xe8(%rbp)	 RIP: 44c1c2	 Bytes: 7
  %loadMem_44c1c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1c2 = call %struct.Memory* @routine_movq__rax__MINUS0xe8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1c2)
  store %struct.Memory* %call_44c1c2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44c1c9	 Bytes: 2
  %loadMem_44c1c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1c9 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1c9)
  store %struct.Memory* %call_44c1c9, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44c1cb	 Bytes: 5
  %loadMem1_44c1cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c1cb = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c1cb, i64 -306267, i64 5, i64 5)
  store %struct.Memory* %call1_44c1cb, %struct.Memory** %MEMORY

  %loadMem2_44c1cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c1cb = load i64, i64* %3
  %call2_44c1cb = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44c1cb, %struct.Memory* %loadMem2_44c1cb)
  store %struct.Memory* %call2_44c1cb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xec(%rbp)	 RIP: 44c1d0	 Bytes: 6
  %loadMem_44c1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1d0 = call %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1d0)
  store %struct.Memory* %call_44c1d0, %struct.Memory** %MEMORY

  ; Code: .L_44c1d6:	 RIP: 44c1d6	 Bytes: 0
  br label %block_.L_44c1d6
block_.L_44c1d6:

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 44c1d6	 Bytes: 7
  %loadMem_44c1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1d6 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1d6)
  store %struct.Memory* %call_44c1d6, %struct.Memory** %MEMORY

  ; Code: .L_44c1dd:	 RIP: 44c1dd	 Bytes: 0
  br label %block_.L_44c1dd
block_.L_44c1dd:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 44c1dd	 Bytes: 3
  %loadMem_44c1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1dd = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1dd)
  store %struct.Memory* %call_44c1dd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44c1e0	 Bytes: 4
  %loadMem_44c1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1e0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1e0)
  store %struct.Memory* %call_44c1e0, %struct.Memory** %MEMORY

  ; Code: cmpl 0x130(%rcx), %eax	 RIP: 44c1e4	 Bytes: 6
  %loadMem_44c1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1e4 = call %struct.Memory* @routine_cmpl_0x130__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1e4)
  store %struct.Memory* %call_44c1e4, %struct.Memory** %MEMORY

  ; Code: jge .L_44c2b6	 RIP: 44c1ea	 Bytes: 6
  %loadMem_44c1ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1ea = call %struct.Memory* @routine_jge_.L_44c2b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1ea, i8* %BRANCH_TAKEN, i64 204, i64 6, i64 6)
  store %struct.Memory* %call_44c1ea, %struct.Memory** %MEMORY

  %loadBr_44c1ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c1ea = icmp eq i8 %loadBr_44c1ea, 1
  br i1 %cmpBr_44c1ea, label %block_.L_44c2b6, label %block_44c1f0

block_44c1f0:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 44c1f0	 Bytes: 4
  %loadMem_44c1f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1f0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1f0)
  store %struct.Memory* %call_44c1f0, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rax), %rax	 RIP: 44c1f4	 Bytes: 7
  %loadMem_44c1f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1f4 = call %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1f4)
  store %struct.Memory* %call_44c1f4, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 44c1fb	 Bytes: 4
  %loadMem_44c1fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1fb = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1fb)
  store %struct.Memory* %call_44c1fb, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44c1ff	 Bytes: 4
  %loadMem_44c1ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1ff = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1ff)
  store %struct.Memory* %call_44c1ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44c203	 Bytes: 4
  %loadMem_44c203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c203 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c203)
  store %struct.Memory* %call_44c203, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax,%rcx,8)	 RIP: 44c207	 Bytes: 5
  %loadMem_44c207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c207 = call %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c207)
  store %struct.Memory* %call_44c207, %struct.Memory** %MEMORY

  ; Code: je .L_44c2a3	 RIP: 44c20c	 Bytes: 6
  %loadMem_44c20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c20c = call %struct.Memory* @routine_je_.L_44c2a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c20c, i8* %BRANCH_TAKEN, i64 151, i64 6, i64 6)
  store %struct.Memory* %call_44c20c, %struct.Memory** %MEMORY

  %loadBr_44c20c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c20c = icmp eq i8 %loadBr_44c20c, 1
  br i1 %cmpBr_44c20c, label %block_.L_44c2a3, label %block_44c212

block_44c212:
  ; Code: movq -0x38(%rbp), %rdi	 RIP: 44c212	 Bytes: 4
  %loadMem_44c212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c212 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c212)
  store %struct.Memory* %call_44c212, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44c216	 Bytes: 4
  %loadMem_44c216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c216 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c216)
  store %struct.Memory* %call_44c216, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rax), %rax	 RIP: 44c21a	 Bytes: 7
  %loadMem_44c21a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c21a = call %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c21a)
  store %struct.Memory* %call_44c21a, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 44c221	 Bytes: 4
  %loadMem_44c221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c221 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c221)
  store %struct.Memory* %call_44c221, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44c225	 Bytes: 4
  %loadMem_44c225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c225 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c225)
  store %struct.Memory* %call_44c225, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44c229	 Bytes: 4
  %loadMem_44c229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c229 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c229)
  store %struct.Memory* %call_44c229, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44c22d	 Bytes: 4
  %loadMem_44c22d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c22d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c22d)
  store %struct.Memory* %call_44c22d, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 44c231	 Bytes: 4
  %loadMem_44c231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c231 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c231)
  store %struct.Memory* %call_44c231, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c235	 Bytes: 3
  %loadMem_44c235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c235 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c235)
  store %struct.Memory* %call_44c235, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c238	 Bytes: 4
  %loadMem_44c238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c238 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c238)
  store %struct.Memory* %call_44c238, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 44c23c	 Bytes: 3
  %loadMem_44c23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c23c = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c23c)
  store %struct.Memory* %call_44c23c, %struct.Memory** %MEMORY

  ; Code: callq .strncpy_plt	 RIP: 44c23f	 Bytes: 5
  %loadMem1_44c23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c23f = call %struct.Memory* @routine_callq_.strncpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c23f, i64 -306831, i64 5, i64 5)
  store %struct.Memory* %call1_44c23f, %struct.Memory** %MEMORY

  %loadMem2_44c23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c23f = load i64, i64* %3
  %call2_44c23f = call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* %0, i64  %loadPC_44c23f, %struct.Memory* %loadMem2_44c23f)
  store %struct.Memory* %call2_44c23f, %struct.Memory** %MEMORY

  ; Code: movq $0x45b153, %rsi	 RIP: 44c244	 Bytes: 10
  %loadMem_44c244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c244 = call %struct.Memory* @routine_movq__0x45b153___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c244)
  store %struct.Memory* %call_44c244, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 44c24e	 Bytes: 4
  %loadMem_44c24e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c24e = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c24e)
  store %struct.Memory* %call_44c24e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c252	 Bytes: 4
  %loadMem_44c252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c252 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c252)
  store %struct.Memory* %call_44c252, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rcx,%rdx,1)	 RIP: 44c256	 Bytes: 4
  %loadMem_44c256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c256 = call %struct.Memory* @routine_movb__0x0____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c256)
  store %struct.Memory* %call_44c256, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44c25a	 Bytes: 4
  %loadMem_44c25a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c25a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c25a)
  store %struct.Memory* %call_44c25a, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 44c25e	 Bytes: 3
  %loadMem_44c25e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c25e = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c25e)
  store %struct.Memory* %call_44c25e, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44c261	 Bytes: 3
  %loadMem_44c261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c261 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c261)
  store %struct.Memory* %call_44c261, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %r8	 RIP: 44c264	 Bytes: 4
  %loadMem_44c264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c264 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c264)
  store %struct.Memory* %call_44c264, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%r8), %r8	 RIP: 44c268	 Bytes: 4
  %loadMem_44c268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c268 = call %struct.Memory* @routine_movq_0x8__r8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c268)
  store %struct.Memory* %call_44c268, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r9	 RIP: 44c26c	 Bytes: 4
  %loadMem_44c26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c26c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c26c)
  store %struct.Memory* %call_44c26c, %struct.Memory** %MEMORY

  ; Code: movq (%r8,%r9,8), %r8	 RIP: 44c270	 Bytes: 4
  %loadMem_44c270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c270 = call %struct.Memory* @routine_movq___r8__r9_8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c270)
  store %struct.Memory* %call_44c270, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %r9	 RIP: 44c274	 Bytes: 4
  %loadMem_44c274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c274 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c274)
  store %struct.Memory* %call_44c274, %struct.Memory** %MEMORY

  ; Code: movq 0x118(%r9), %r9	 RIP: 44c278	 Bytes: 7
  %loadMem_44c278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c278 = call %struct.Memory* @routine_movq_0x118__r9____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c278)
  store %struct.Memory* %call_44c278, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %r10	 RIP: 44c27f	 Bytes: 4
  %loadMem_44c27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c27f = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c27f)
  store %struct.Memory* %call_44c27f, %struct.Memory** %MEMORY

  ; Code: movq (%r9,%r10,8), %r9	 RIP: 44c283	 Bytes: 4
  %loadMem_44c283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c283 = call %struct.Memory* @routine_movq___r9__r10_8____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c283)
  store %struct.Memory* %call_44c283, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %r10	 RIP: 44c287	 Bytes: 4
  %loadMem_44c287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c287 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c287)
  store %struct.Memory* %call_44c287, %struct.Memory** %MEMORY

  ; Code: movq %r10, (%rsp)	 RIP: 44c28b	 Bytes: 4
  %loadMem_44c28b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c28b = call %struct.Memory* @routine_movq__r10____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c28b)
  store %struct.Memory* %call_44c28b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xf8(%rbp)	 RIP: 44c28f	 Bytes: 7
  %loadMem_44c28f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c28f = call %struct.Memory* @routine_movq__rax__MINUS0xf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c28f)
  store %struct.Memory* %call_44c28f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44c296	 Bytes: 2
  %loadMem_44c296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c296 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c296)
  store %struct.Memory* %call_44c296, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44c298	 Bytes: 5
  %loadMem1_44c298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c298 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c298, i64 -306472, i64 5, i64 5)
  store %struct.Memory* %call1_44c298, %struct.Memory** %MEMORY

  %loadMem2_44c298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c298 = load i64, i64* %3
  %call2_44c298 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44c298, %struct.Memory* %loadMem2_44c298)
  store %struct.Memory* %call2_44c298, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xfc(%rbp)	 RIP: 44c29d	 Bytes: 6
  %loadMem_44c29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c29d = call %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c29d)
  store %struct.Memory* %call_44c29d, %struct.Memory** %MEMORY

  ; Code: .L_44c2a3:	 RIP: 44c2a3	 Bytes: 0
  br label %block_.L_44c2a3
block_.L_44c2a3:

  ; Code: jmpq .L_44c2a8	 RIP: 44c2a3	 Bytes: 5
  %loadMem_44c2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2a3 = call %struct.Memory* @routine_jmpq_.L_44c2a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2a3, i64 5, i64 5)
  store %struct.Memory* %call_44c2a3, %struct.Memory** %MEMORY

  br label %block_.L_44c2a8

  ; Code: .L_44c2a8:	 RIP: 44c2a8	 Bytes: 0
block_.L_44c2a8:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 44c2a8	 Bytes: 3
  %loadMem_44c2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2a8 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2a8)
  store %struct.Memory* %call_44c2a8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44c2ab	 Bytes: 3
  %loadMem_44c2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2ab = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2ab)
  store %struct.Memory* %call_44c2ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 44c2ae	 Bytes: 3
  %loadMem_44c2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2ae = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2ae)
  store %struct.Memory* %call_44c2ae, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44c1dd	 RIP: 44c2b1	 Bytes: 5
  %loadMem_44c2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2b1 = call %struct.Memory* @routine_jmpq_.L_44c1dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2b1, i64 -212, i64 5)
  store %struct.Memory* %call_44c2b1, %struct.Memory** %MEMORY

  br label %block_.L_44c1dd

  ; Code: .L_44c2b6:	 RIP: 44c2b6	 Bytes: 0
block_.L_44c2b6:

  ; Code: jmpq .L_44c2bb	 RIP: 44c2b6	 Bytes: 5
  %loadMem_44c2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2b6 = call %struct.Memory* @routine_jmpq_.L_44c2bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2b6, i64 5, i64 5)
  store %struct.Memory* %call_44c2b6, %struct.Memory** %MEMORY

  br label %block_.L_44c2bb

  ; Code: .L_44c2bb:	 RIP: 44c2bb	 Bytes: 0
block_.L_44c2bb:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44c2bb	 Bytes: 3
  %loadMem_44c2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2bb = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2bb)
  store %struct.Memory* %call_44c2bb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44c2be	 Bytes: 3
  %loadMem_44c2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2be = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2be)
  store %struct.Memory* %call_44c2be, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44c2c1	 Bytes: 3
  %loadMem_44c2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2c1 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2c1)
  store %struct.Memory* %call_44c2c1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44bffa	 RIP: 44c2c4	 Bytes: 5
  %loadMem_44c2c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2c4 = call %struct.Memory* @routine_jmpq_.L_44bffa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2c4, i64 -714, i64 5)
  store %struct.Memory* %call_44c2c4, %struct.Memory** %MEMORY

  br label %block_.L_44bffa

  ; Code: .L_44c2c9:	 RIP: 44c2c9	 Bytes: 0
block_.L_44c2c9:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44c2c9	 Bytes: 4
  %loadMem_44c2c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2c9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2c9)
  store %struct.Memory* %call_44c2c9, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x48(%rax)	 RIP: 44c2cd	 Bytes: 5
  %loadMem_44c2cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2cd = call %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2cd)
  store %struct.Memory* %call_44c2cd, %struct.Memory** %MEMORY

  ; Code: je .L_44c357	 RIP: 44c2d2	 Bytes: 6
  %loadMem_44c2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2d2 = call %struct.Memory* @routine_je_.L_44c357(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2d2, i8* %BRANCH_TAKEN, i64 133, i64 6, i64 6)
  store %struct.Memory* %call_44c2d2, %struct.Memory** %MEMORY

  %loadBr_44c2d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c2d2 = icmp eq i8 %loadBr_44c2d2, 1
  br i1 %cmpBr_44c2d2, label %block_.L_44c357, label %block_44c2d8

block_44c2d8:
  ; Code: movq -0x38(%rbp), %rdi	 RIP: 44c2d8	 Bytes: 4
  %loadMem_44c2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2d8 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2d8)
  store %struct.Memory* %call_44c2d8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44c2dc	 Bytes: 4
  %loadMem_44c2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2dc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2dc)
  store %struct.Memory* %call_44c2dc, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rax), %rax	 RIP: 44c2e0	 Bytes: 4
  %loadMem_44c2e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2e0 = call %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2e0)
  store %struct.Memory* %call_44c2e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 44c2e4	 Bytes: 4
  %loadMem_44c2e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2e4 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2e4)
  store %struct.Memory* %call_44c2e4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c2e8	 Bytes: 3
  %loadMem_44c2e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2e8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2e8)
  store %struct.Memory* %call_44c2e8, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c2eb	 Bytes: 4
  %loadMem_44c2eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2eb = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2eb)
  store %struct.Memory* %call_44c2eb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 44c2ef	 Bytes: 3
  %loadMem_44c2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2ef = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2ef)
  store %struct.Memory* %call_44c2ef, %struct.Memory** %MEMORY

  ; Code: callq .strncpy_plt	 RIP: 44c2f2	 Bytes: 5
  %loadMem1_44c2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c2f2 = call %struct.Memory* @routine_callq_.strncpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c2f2, i64 -307010, i64 5, i64 5)
  store %struct.Memory* %call1_44c2f2, %struct.Memory** %MEMORY

  %loadMem2_44c2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c2f2 = load i64, i64* %3
  %call2_44c2f2 = call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* %0, i64  %loadPC_44c2f2, %struct.Memory* %loadMem2_44c2f2)
  store %struct.Memory* %call2_44c2f2, %struct.Memory** %MEMORY

  ; Code: movq $0x45b168, %rsi	 RIP: 44c2f7	 Bytes: 10
  %loadMem_44c2f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2f7 = call %struct.Memory* @routine_movq__0x45b168___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2f7)
  store %struct.Memory* %call_44c2f7, %struct.Memory** %MEMORY

  ; Code: movq $0x45afe0, %r8	 RIP: 44c301	 Bytes: 10
  %loadMem_44c301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c301 = call %struct.Memory* @routine_movq__0x45afe0___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c301)
  store %struct.Memory* %call_44c301, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 44c30b	 Bytes: 4
  %loadMem_44c30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c30b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c30b)
  store %struct.Memory* %call_44c30b, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c30f	 Bytes: 4
  %loadMem_44c30f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c30f = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c30f)
  store %struct.Memory* %call_44c30f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rcx,%rdx,1)	 RIP: 44c313	 Bytes: 4
  %loadMem_44c313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c313 = call %struct.Memory* @routine_movb__0x0____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c313)
  store %struct.Memory* %call_44c313, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44c317	 Bytes: 4
  %loadMem_44c317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c317 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c317)
  store %struct.Memory* %call_44c317, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r9d	 RIP: 44c31b	 Bytes: 4
  %loadMem_44c31b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c31b = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c31b)
  store %struct.Memory* %call_44c31b, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %r9d	 RIP: 44c31f	 Bytes: 4
  %loadMem_44c31f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c31f = call %struct.Memory* @routine_addl_MINUS0x28__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c31f)
  store %struct.Memory* %call_44c31f, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r10d	 RIP: 44c323	 Bytes: 4
  %loadMem_44c323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c323 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c323)
  store %struct.Memory* %call_44c323, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %r10d	 RIP: 44c327	 Bytes: 4
  %loadMem_44c327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c327 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c327)
  store %struct.Memory* %call_44c327, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 44c32b	 Bytes: 4
  %loadMem_44c32b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c32b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c32b)
  store %struct.Memory* %call_44c32b, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edx	 RIP: 44c32f	 Bytes: 3
  %loadMem_44c32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c32f = call %struct.Memory* @routine_movl__r9d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c32f)
  store %struct.Memory* %call_44c32f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x108(%rbp)	 RIP: 44c332	 Bytes: 7
  %loadMem_44c332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c332 = call %struct.Memory* @routine_movq__rcx__MINUS0x108__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c332)
  store %struct.Memory* %call_44c332, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %ecx	 RIP: 44c339	 Bytes: 3
  %loadMem_44c339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c339 = call %struct.Memory* @routine_movl__r10d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c339)
  store %struct.Memory* %call_44c339, %struct.Memory** %MEMORY

  ; Code: movq -0x108(%rbp), %r9	 RIP: 44c33c	 Bytes: 7
  %loadMem_44c33c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c33c = call %struct.Memory* @routine_movq_MINUS0x108__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c33c)
  store %struct.Memory* %call_44c33c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x110(%rbp)	 RIP: 44c343	 Bytes: 7
  %loadMem_44c343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c343 = call %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c343)
  store %struct.Memory* %call_44c343, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44c34a	 Bytes: 2
  %loadMem_44c34a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c34a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c34a)
  store %struct.Memory* %call_44c34a, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44c34c	 Bytes: 5
  %loadMem1_44c34c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c34c = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c34c, i64 -306652, i64 5, i64 5)
  store %struct.Memory* %call1_44c34c, %struct.Memory** %MEMORY

  %loadMem2_44c34c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c34c = load i64, i64* %3
  %call2_44c34c = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44c34c, %struct.Memory* %loadMem2_44c34c)
  store %struct.Memory* %call2_44c34c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x114(%rbp)	 RIP: 44c351	 Bytes: 6
  %loadMem_44c351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c351 = call %struct.Memory* @routine_movl__eax__MINUS0x114__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c351)
  store %struct.Memory* %call_44c351, %struct.Memory** %MEMORY

  ; Code: .L_44c357:	 RIP: 44c357	 Bytes: 0
  br label %block_.L_44c357
block_.L_44c357:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44c357	 Bytes: 4
  %loadMem_44c357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c357 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c357)
  store %struct.Memory* %call_44c357, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x50(%rax)	 RIP: 44c35b	 Bytes: 5
  %loadMem_44c35b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c35b = call %struct.Memory* @routine_cmpq__0x0__0x50__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c35b)
  store %struct.Memory* %call_44c35b, %struct.Memory** %MEMORY

  ; Code: je .L_44c3e5	 RIP: 44c360	 Bytes: 6
  %loadMem_44c360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c360 = call %struct.Memory* @routine_je_.L_44c3e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c360, i8* %BRANCH_TAKEN, i64 133, i64 6, i64 6)
  store %struct.Memory* %call_44c360, %struct.Memory** %MEMORY

  %loadBr_44c360 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c360 = icmp eq i8 %loadBr_44c360, 1
  br i1 %cmpBr_44c360, label %block_.L_44c3e5, label %block_44c366

block_44c366:
  ; Code: movq -0x38(%rbp), %rdi	 RIP: 44c366	 Bytes: 4
  %loadMem_44c366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c366 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c366)
  store %struct.Memory* %call_44c366, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44c36a	 Bytes: 4
  %loadMem_44c36a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c36a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c36a)
  store %struct.Memory* %call_44c36a, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rax), %rax	 RIP: 44c36e	 Bytes: 4
  %loadMem_44c36e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c36e = call %struct.Memory* @routine_movq_0x50__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c36e)
  store %struct.Memory* %call_44c36e, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 44c372	 Bytes: 4
  %loadMem_44c372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c372 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c372)
  store %struct.Memory* %call_44c372, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c376	 Bytes: 3
  %loadMem_44c376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c376 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c376)
  store %struct.Memory* %call_44c376, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c379	 Bytes: 4
  %loadMem_44c379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c379 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c379)
  store %struct.Memory* %call_44c379, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 44c37d	 Bytes: 3
  %loadMem_44c37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c37d = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c37d)
  store %struct.Memory* %call_44c37d, %struct.Memory** %MEMORY

  ; Code: callq .strncpy_plt	 RIP: 44c380	 Bytes: 5
  %loadMem1_44c380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c380 = call %struct.Memory* @routine_callq_.strncpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c380, i64 -307152, i64 5, i64 5)
  store %struct.Memory* %call1_44c380, %struct.Memory** %MEMORY

  %loadMem2_44c380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c380 = load i64, i64* %3
  %call2_44c380 = call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* %0, i64  %loadPC_44c380, %struct.Memory* %loadMem2_44c380)
  store %struct.Memory* %call2_44c380, %struct.Memory** %MEMORY

  ; Code: movq $0x45b168, %rsi	 RIP: 44c385	 Bytes: 10
  %loadMem_44c385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c385 = call %struct.Memory* @routine_movq__0x45b168___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c385)
  store %struct.Memory* %call_44c385, %struct.Memory** %MEMORY

  ; Code: movq $0x45afe8, %r8	 RIP: 44c38f	 Bytes: 10
  %loadMem_44c38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c38f = call %struct.Memory* @routine_movq__0x45afe8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c38f)
  store %struct.Memory* %call_44c38f, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 44c399	 Bytes: 4
  %loadMem_44c399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c399 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c399)
  store %struct.Memory* %call_44c399, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c39d	 Bytes: 4
  %loadMem_44c39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c39d = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c39d)
  store %struct.Memory* %call_44c39d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rcx,%rdx,1)	 RIP: 44c3a1	 Bytes: 4
  %loadMem_44c3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3a1 = call %struct.Memory* @routine_movb__0x0____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3a1)
  store %struct.Memory* %call_44c3a1, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44c3a5	 Bytes: 4
  %loadMem_44c3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3a5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3a5)
  store %struct.Memory* %call_44c3a5, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r9d	 RIP: 44c3a9	 Bytes: 4
  %loadMem_44c3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3a9 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3a9)
  store %struct.Memory* %call_44c3a9, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %r9d	 RIP: 44c3ad	 Bytes: 4
  %loadMem_44c3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3ad = call %struct.Memory* @routine_addl_MINUS0x28__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3ad)
  store %struct.Memory* %call_44c3ad, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r10d	 RIP: 44c3b1	 Bytes: 4
  %loadMem_44c3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3b1 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3b1)
  store %struct.Memory* %call_44c3b1, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %r10d	 RIP: 44c3b5	 Bytes: 4
  %loadMem_44c3b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3b5 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3b5)
  store %struct.Memory* %call_44c3b5, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 44c3b9	 Bytes: 4
  %loadMem_44c3b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3b9 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3b9)
  store %struct.Memory* %call_44c3b9, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edx	 RIP: 44c3bd	 Bytes: 3
  %loadMem_44c3bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3bd = call %struct.Memory* @routine_movl__r9d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3bd)
  store %struct.Memory* %call_44c3bd, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x120(%rbp)	 RIP: 44c3c0	 Bytes: 7
  %loadMem_44c3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3c0 = call %struct.Memory* @routine_movq__rcx__MINUS0x120__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3c0)
  store %struct.Memory* %call_44c3c0, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %ecx	 RIP: 44c3c7	 Bytes: 3
  %loadMem_44c3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3c7 = call %struct.Memory* @routine_movl__r10d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3c7)
  store %struct.Memory* %call_44c3c7, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %r9	 RIP: 44c3ca	 Bytes: 7
  %loadMem_44c3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3ca = call %struct.Memory* @routine_movq_MINUS0x120__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3ca)
  store %struct.Memory* %call_44c3ca, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x128(%rbp)	 RIP: 44c3d1	 Bytes: 7
  %loadMem_44c3d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3d1 = call %struct.Memory* @routine_movq__rax__MINUS0x128__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3d1)
  store %struct.Memory* %call_44c3d1, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44c3d8	 Bytes: 2
  %loadMem_44c3d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3d8 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3d8)
  store %struct.Memory* %call_44c3d8, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44c3da	 Bytes: 5
  %loadMem1_44c3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c3da = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c3da, i64 -306794, i64 5, i64 5)
  store %struct.Memory* %call1_44c3da, %struct.Memory** %MEMORY

  %loadMem2_44c3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c3da = load i64, i64* %3
  %call2_44c3da = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44c3da, %struct.Memory* %loadMem2_44c3da)
  store %struct.Memory* %call2_44c3da, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x12c(%rbp)	 RIP: 44c3df	 Bytes: 6
  %loadMem_44c3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3df = call %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3df)
  store %struct.Memory* %call_44c3df, %struct.Memory** %MEMORY

  ; Code: .L_44c3e5:	 RIP: 44c3e5	 Bytes: 0
  br label %block_.L_44c3e5
block_.L_44c3e5:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44c3e5	 Bytes: 4
  %loadMem_44c3e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3e5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3e5)
  store %struct.Memory* %call_44c3e5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x58(%rax)	 RIP: 44c3e9	 Bytes: 5
  %loadMem_44c3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3e9 = call %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3e9)
  store %struct.Memory* %call_44c3e9, %struct.Memory** %MEMORY

  ; Code: je .L_44c473	 RIP: 44c3ee	 Bytes: 6
  %loadMem_44c3ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3ee = call %struct.Memory* @routine_je_.L_44c473(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3ee, i8* %BRANCH_TAKEN, i64 133, i64 6, i64 6)
  store %struct.Memory* %call_44c3ee, %struct.Memory** %MEMORY

  %loadBr_44c3ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c3ee = icmp eq i8 %loadBr_44c3ee, 1
  br i1 %cmpBr_44c3ee, label %block_.L_44c473, label %block_44c3f4

block_44c3f4:
  ; Code: movq -0x38(%rbp), %rdi	 RIP: 44c3f4	 Bytes: 4
  %loadMem_44c3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3f4 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3f4)
  store %struct.Memory* %call_44c3f4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44c3f8	 Bytes: 4
  %loadMem_44c3f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3f8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3f8)
  store %struct.Memory* %call_44c3f8, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rax), %rax	 RIP: 44c3fc	 Bytes: 4
  %loadMem_44c3fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3fc = call %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3fc)
  store %struct.Memory* %call_44c3fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 44c400	 Bytes: 4
  %loadMem_44c400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c400 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c400)
  store %struct.Memory* %call_44c400, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c404	 Bytes: 3
  %loadMem_44c404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c404 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c404)
  store %struct.Memory* %call_44c404, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c407	 Bytes: 4
  %loadMem_44c407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c407 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c407)
  store %struct.Memory* %call_44c407, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 44c40b	 Bytes: 3
  %loadMem_44c40b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c40b = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c40b)
  store %struct.Memory* %call_44c40b, %struct.Memory** %MEMORY

  ; Code: callq .strncpy_plt	 RIP: 44c40e	 Bytes: 5
  %loadMem1_44c40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c40e = call %struct.Memory* @routine_callq_.strncpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c40e, i64 -307294, i64 5, i64 5)
  store %struct.Memory* %call1_44c40e, %struct.Memory** %MEMORY

  %loadMem2_44c40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c40e = load i64, i64* %3
  %call2_44c40e = call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* %0, i64  %loadPC_44c40e, %struct.Memory* %loadMem2_44c40e)
  store %struct.Memory* %call2_44c40e, %struct.Memory** %MEMORY

  ; Code: movq $0x45b168, %rsi	 RIP: 44c413	 Bytes: 10
  %loadMem_44c413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c413 = call %struct.Memory* @routine_movq__0x45b168___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c413)
  store %struct.Memory* %call_44c413, %struct.Memory** %MEMORY

  ; Code: movq $0x459933, %r8	 RIP: 44c41d	 Bytes: 10
  %loadMem_44c41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c41d = call %struct.Memory* @routine_movq__0x459933___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c41d)
  store %struct.Memory* %call_44c41d, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 44c427	 Bytes: 4
  %loadMem_44c427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c427 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c427)
  store %struct.Memory* %call_44c427, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c42b	 Bytes: 4
  %loadMem_44c42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c42b = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c42b)
  store %struct.Memory* %call_44c42b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rcx,%rdx,1)	 RIP: 44c42f	 Bytes: 4
  %loadMem_44c42f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c42f = call %struct.Memory* @routine_movb__0x0____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c42f)
  store %struct.Memory* %call_44c42f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44c433	 Bytes: 4
  %loadMem_44c433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c433 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c433)
  store %struct.Memory* %call_44c433, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r9d	 RIP: 44c437	 Bytes: 4
  %loadMem_44c437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c437 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c437)
  store %struct.Memory* %call_44c437, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %r9d	 RIP: 44c43b	 Bytes: 4
  %loadMem_44c43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c43b = call %struct.Memory* @routine_addl_MINUS0x28__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c43b)
  store %struct.Memory* %call_44c43b, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r10d	 RIP: 44c43f	 Bytes: 4
  %loadMem_44c43f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c43f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c43f)
  store %struct.Memory* %call_44c43f, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %r10d	 RIP: 44c443	 Bytes: 4
  %loadMem_44c443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c443 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c443)
  store %struct.Memory* %call_44c443, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 44c447	 Bytes: 4
  %loadMem_44c447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c447 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c447)
  store %struct.Memory* %call_44c447, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edx	 RIP: 44c44b	 Bytes: 3
  %loadMem_44c44b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c44b = call %struct.Memory* @routine_movl__r9d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c44b)
  store %struct.Memory* %call_44c44b, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x138(%rbp)	 RIP: 44c44e	 Bytes: 7
  %loadMem_44c44e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c44e = call %struct.Memory* @routine_movq__rcx__MINUS0x138__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c44e)
  store %struct.Memory* %call_44c44e, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %ecx	 RIP: 44c455	 Bytes: 3
  %loadMem_44c455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c455 = call %struct.Memory* @routine_movl__r10d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c455)
  store %struct.Memory* %call_44c455, %struct.Memory** %MEMORY

  ; Code: movq -0x138(%rbp), %r9	 RIP: 44c458	 Bytes: 7
  %loadMem_44c458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c458 = call %struct.Memory* @routine_movq_MINUS0x138__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c458)
  store %struct.Memory* %call_44c458, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x140(%rbp)	 RIP: 44c45f	 Bytes: 7
  %loadMem_44c45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c45f = call %struct.Memory* @routine_movq__rax__MINUS0x140__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c45f)
  store %struct.Memory* %call_44c45f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44c466	 Bytes: 2
  %loadMem_44c466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c466 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c466)
  store %struct.Memory* %call_44c466, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44c468	 Bytes: 5
  %loadMem1_44c468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c468 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c468, i64 -306936, i64 5, i64 5)
  store %struct.Memory* %call1_44c468, %struct.Memory** %MEMORY

  %loadMem2_44c468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c468 = load i64, i64* %3
  %call2_44c468 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44c468, %struct.Memory* %loadMem2_44c468)
  store %struct.Memory* %call2_44c468, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x144(%rbp)	 RIP: 44c46d	 Bytes: 6
  %loadMem_44c46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c46d = call %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c46d)
  store %struct.Memory* %call_44c46d, %struct.Memory** %MEMORY

  ; Code: .L_44c473:	 RIP: 44c473	 Bytes: 0
  br label %block_.L_44c473
block_.L_44c473:

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 44c473	 Bytes: 7
  %loadMem_44c473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c473 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c473)
  store %struct.Memory* %call_44c473, %struct.Memory** %MEMORY

  ; Code: .L_44c47a:	 RIP: 44c47a	 Bytes: 0
  br label %block_.L_44c47a
block_.L_44c47a:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 44c47a	 Bytes: 3
  %loadMem_44c47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c47a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c47a)
  store %struct.Memory* %call_44c47a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44c47d	 Bytes: 4
  %loadMem_44c47d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c47d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c47d)
  store %struct.Memory* %call_44c47d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x110(%rcx), %eax	 RIP: 44c481	 Bytes: 6
  %loadMem_44c481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c481 = call %struct.Memory* @routine_cmpl_0x110__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c481)
  store %struct.Memory* %call_44c481, %struct.Memory** %MEMORY

  ; Code: jge .L_44c53c	 RIP: 44c487	 Bytes: 6
  %loadMem_44c487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c487 = call %struct.Memory* @routine_jge_.L_44c53c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c487, i8* %BRANCH_TAKEN, i64 181, i64 6, i64 6)
  store %struct.Memory* %call_44c487, %struct.Memory** %MEMORY

  %loadBr_44c487 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c487 = icmp eq i8 %loadBr_44c487, 1
  br i1 %cmpBr_44c487, label %block_.L_44c53c, label %block_44c48d

block_44c48d:
  ; Code: movq -0x38(%rbp), %rdi	 RIP: 44c48d	 Bytes: 4
  %loadMem_44c48d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c48d = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c48d)
  store %struct.Memory* %call_44c48d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 44c491	 Bytes: 4
  %loadMem_44c491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c491 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c491)
  store %struct.Memory* %call_44c491, %struct.Memory** %MEMORY

  ; Code: movq 0x100(%rax), %rax	 RIP: 44c495	 Bytes: 7
  %loadMem_44c495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c495 = call %struct.Memory* @routine_movq_0x100__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c495)
  store %struct.Memory* %call_44c495, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 44c49c	 Bytes: 4
  %loadMem_44c49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c49c = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c49c)
  store %struct.Memory* %call_44c49c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44c4a0	 Bytes: 4
  %loadMem_44c4a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4a0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4a0)
  store %struct.Memory* %call_44c4a0, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 44c4a4	 Bytes: 4
  %loadMem_44c4a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4a4 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4a4)
  store %struct.Memory* %call_44c4a4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c4a8	 Bytes: 3
  %loadMem_44c4a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4a8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4a8)
  store %struct.Memory* %call_44c4a8, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c4ab	 Bytes: 4
  %loadMem_44c4ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4ab = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4ab)
  store %struct.Memory* %call_44c4ab, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 44c4af	 Bytes: 3
  %loadMem_44c4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4af = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4af)
  store %struct.Memory* %call_44c4af, %struct.Memory** %MEMORY

  ; Code: callq .strncpy_plt	 RIP: 44c4b2	 Bytes: 5
  %loadMem1_44c4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c4b2 = call %struct.Memory* @routine_callq_.strncpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c4b2, i64 -307458, i64 5, i64 5)
  store %struct.Memory* %call1_44c4b2, %struct.Memory** %MEMORY

  %loadMem2_44c4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c4b2 = load i64, i64* %3
  %call2_44c4b2 = call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* %0, i64  %loadPC_44c4b2, %struct.Memory* %loadMem2_44c4b2)
  store %struct.Memory* %call2_44c4b2, %struct.Memory** %MEMORY

  ; Code: movq $0x45b168, %rsi	 RIP: 44c4b7	 Bytes: 10
  %loadMem_44c4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4b7 = call %struct.Memory* @routine_movq__0x45b168___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4b7)
  store %struct.Memory* %call_44c4b7, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 44c4c1	 Bytes: 4
  %loadMem_44c4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4c1 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4c1)
  store %struct.Memory* %call_44c4c1, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44c4c5	 Bytes: 4
  %loadMem_44c4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4c5 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4c5)
  store %struct.Memory* %call_44c4c5, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rcx,%rdx,1)	 RIP: 44c4c9	 Bytes: 4
  %loadMem_44c4c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4c9 = call %struct.Memory* @routine_movb__0x0____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4c9)
  store %struct.Memory* %call_44c4c9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44c4cd	 Bytes: 4
  %loadMem_44c4cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4cd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4cd)
  store %struct.Memory* %call_44c4cd, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r8d	 RIP: 44c4d1	 Bytes: 4
  %loadMem_44c4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4d1 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4d1)
  store %struct.Memory* %call_44c4d1, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %r8d	 RIP: 44c4d5	 Bytes: 4
  %loadMem_44c4d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4d5 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4d5)
  store %struct.Memory* %call_44c4d5, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r9d	 RIP: 44c4d9	 Bytes: 4
  %loadMem_44c4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4d9 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4d9)
  store %struct.Memory* %call_44c4d9, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %r9d	 RIP: 44c4dd	 Bytes: 4
  %loadMem_44c4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4dd = call %struct.Memory* @routine_addl_MINUS0x28__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4dd)
  store %struct.Memory* %call_44c4dd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44c4e1	 Bytes: 4
  %loadMem_44c4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4e1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4e1)
  store %struct.Memory* %call_44c4e1, %struct.Memory** %MEMORY

  ; Code: movq 0xf8(%rcx), %rcx	 RIP: 44c4e5	 Bytes: 7
  %loadMem_44c4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4e5 = call %struct.Memory* @routine_movq_0xf8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4e5)
  store %struct.Memory* %call_44c4e5, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 44c4ec	 Bytes: 4
  %loadMem_44c4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4ec = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4ec)
  store %struct.Memory* %call_44c4ec, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 44c4f0	 Bytes: 4
  %loadMem_44c4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4f0 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4f0)
  store %struct.Memory* %call_44c4f0, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 44c4f4	 Bytes: 4
  %loadMem_44c4f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4f4 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4f4)
  store %struct.Memory* %call_44c4f4, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x150(%rbp)	 RIP: 44c4f8	 Bytes: 7
  %loadMem_44c4f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4f8 = call %struct.Memory* @routine_movq__rdx__MINUS0x150__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4f8)
  store %struct.Memory* %call_44c4f8, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %edx	 RIP: 44c4ff	 Bytes: 3
  %loadMem_44c4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4ff = call %struct.Memory* @routine_movl__r8d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4ff)
  store %struct.Memory* %call_44c4ff, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x158(%rbp)	 RIP: 44c502	 Bytes: 7
  %loadMem_44c502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c502 = call %struct.Memory* @routine_movq__rcx__MINUS0x158__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c502)
  store %struct.Memory* %call_44c502, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %ecx	 RIP: 44c509	 Bytes: 3
  %loadMem_44c509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c509 = call %struct.Memory* @routine_movl__r9d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c509)
  store %struct.Memory* %call_44c509, %struct.Memory** %MEMORY

  ; Code: movq -0x158(%rbp), %r8	 RIP: 44c50c	 Bytes: 7
  %loadMem_44c50c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c50c = call %struct.Memory* @routine_movq_MINUS0x158__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c50c)
  store %struct.Memory* %call_44c50c, %struct.Memory** %MEMORY

  ; Code: movq -0x150(%rbp), %r9	 RIP: 44c513	 Bytes: 7
  %loadMem_44c513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c513 = call %struct.Memory* @routine_movq_MINUS0x150__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c513)
  store %struct.Memory* %call_44c513, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x160(%rbp)	 RIP: 44c51a	 Bytes: 7
  %loadMem_44c51a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c51a = call %struct.Memory* @routine_movq__rax__MINUS0x160__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c51a)
  store %struct.Memory* %call_44c51a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44c521	 Bytes: 2
  %loadMem_44c521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c521 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c521)
  store %struct.Memory* %call_44c521, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44c523	 Bytes: 5
  %loadMem1_44c523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c523 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c523, i64 -307123, i64 5, i64 5)
  store %struct.Memory* %call1_44c523, %struct.Memory** %MEMORY

  %loadMem2_44c523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c523 = load i64, i64* %3
  %call2_44c523 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44c523, %struct.Memory* %loadMem2_44c523)
  store %struct.Memory* %call2_44c523, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x164(%rbp)	 RIP: 44c528	 Bytes: 6
  %loadMem_44c528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c528 = call %struct.Memory* @routine_movl__eax__MINUS0x164__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c528)
  store %struct.Memory* %call_44c528, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 44c52e	 Bytes: 3
  %loadMem_44c52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c52e = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c52e)
  store %struct.Memory* %call_44c52e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44c531	 Bytes: 3
  %loadMem_44c531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c531 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c531)
  store %struct.Memory* %call_44c531, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 44c534	 Bytes: 3
  %loadMem_44c534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c534 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c534)
  store %struct.Memory* %call_44c534, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44c47a	 RIP: 44c537	 Bytes: 5
  %loadMem_44c537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c537 = call %struct.Memory* @routine_jmpq_.L_44c47a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c537, i64 -189, i64 5)
  store %struct.Memory* %call_44c537, %struct.Memory** %MEMORY

  br label %block_.L_44c47a

  ; Code: .L_44c53c:	 RIP: 44c53c	 Bytes: 0
block_.L_44c53c:

  ; Code: jmpq .L_44c541	 RIP: 44c53c	 Bytes: 5
  %loadMem_44c53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c53c = call %struct.Memory* @routine_jmpq_.L_44c541(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c53c, i64 5, i64 5)
  store %struct.Memory* %call_44c53c, %struct.Memory** %MEMORY

  br label %block_.L_44c541

  ; Code: .L_44c541:	 RIP: 44c541	 Bytes: 0
block_.L_44c541:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44c541	 Bytes: 3
  %loadMem_44c541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c541 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c541)
  store %struct.Memory* %call_44c541, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %eax	 RIP: 44c544	 Bytes: 3
  %loadMem_44c544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c544 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c544)
  store %struct.Memory* %call_44c544, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 44c547	 Bytes: 3
  %loadMem_44c547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c547 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c547)
  store %struct.Memory* %call_44c547, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44bfbe	 RIP: 44c54a	 Bytes: 5
  %loadMem_44c54a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c54a = call %struct.Memory* @routine_jmpq_.L_44bfbe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c54a, i64 -1420, i64 5)
  store %struct.Memory* %call_44c54a, %struct.Memory** %MEMORY

  br label %block_.L_44bfbe

  ; Code: .L_44c54f:	 RIP: 44c54f	 Bytes: 0
block_.L_44c54f:

  ; Code: movq $0x45756f, %rsi	 RIP: 44c54f	 Bytes: 10
  %loadMem_44c54f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c54f = call %struct.Memory* @routine_movq__0x45756f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c54f)
  store %struct.Memory* %call_44c54f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 44c559	 Bytes: 4
  %loadMem_44c559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c559 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c559)
  store %struct.Memory* %call_44c559, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44c55d	 Bytes: 2
  %loadMem_44c55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c55d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c55d)
  store %struct.Memory* %call_44c55d, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 44c55f	 Bytes: 5
  %loadMem1_44c55f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c55f = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c55f, i64 -307183, i64 5, i64 5)
  store %struct.Memory* %call1_44c55f, %struct.Memory** %MEMORY

  %loadMem2_44c55f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c55f = load i64, i64* %3
  %call2_44c55f = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_44c55f, %struct.Memory* %loadMem2_44c55f)
  store %struct.Memory* %call2_44c55f, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 44c564	 Bytes: 4
  %loadMem_44c564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c564 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c564)
  store %struct.Memory* %call_44c564, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x168(%rbp)	 RIP: 44c568	 Bytes: 6
  %loadMem_44c568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c568 = call %struct.Memory* @routine_movl__eax__MINUS0x168__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c568)
  store %struct.Memory* %call_44c568, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 44c56e	 Bytes: 5
  %loadMem1_44c56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c56e = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c56e, i64 -307694, i64 5, i64 5)
  store %struct.Memory* %call1_44c56e, %struct.Memory** %MEMORY

  %loadMem2_44c56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c56e = load i64, i64* %3
  %call2_44c56e = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_44c56e, %struct.Memory* %loadMem2_44c56e)
  store %struct.Memory* %call2_44c56e, %struct.Memory** %MEMORY

  ; Code: addq $0x170, %rsp	 RIP: 44c573	 Bytes: 7
  %loadMem_44c573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c573 = call %struct.Memory* @routine_addq__0x170___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c573)
  store %struct.Memory* %call_44c573, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 44c57a	 Bytes: 1
  %loadMem_44c57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c57a = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c57a)
  store %struct.Memory* %call_44c57a, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 44c57b	 Bytes: 1
  %loadMem_44c57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c57b = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c57b)
  store %struct.Memory* %call_44c57b, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_44c57b
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

define %struct.Memory* @routine_subq__0x170___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 368)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 28
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

define %struct.Memory* @routine_jge_.L_44b775(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 36
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_jle_.L_44b762(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_jmpq_.L_44b767(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44b729(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_44b792(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x4__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_je_.L_44b7af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jge_.L_44b808(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x118__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 280
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 40
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_44b7f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_44b7fa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44b7b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44b834(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_44b82f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_44b834(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44b860(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x7__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_44b85b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x7__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_44b860(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpq__0x0__0x50__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44b88c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_44b887(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_44b88c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_cmpl_0x110__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 272
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_44b8e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0xf8__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 248
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_jle_.L_44b8d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_44b8d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44b893(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x45af2f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x45af2f_type* @G__0x45af2f to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0xfb___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 251)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl__0x3d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 61)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_shlq__0x0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 0)
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


define %struct.Memory* @routine_movq__0x45aff3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45aff3_type* @G__0x45aff3 to i64))
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






define %struct.Memory* @routine_cmpl_0xb8__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 184
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_44b981(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x459c9f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x459c9f_type* @G__0x459c9f to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0xb0__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 176
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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








define %struct.Memory* @routine_jmpq_.L_44b935(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x0__0xb8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 184
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_44b9aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpq__0x0__0x28__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44b9d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b004___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b004_type* @G__0x45b004 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0x28__rax____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_cmpq__0x0__0x38__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44ba08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b013___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b013_type* @G__0x45b013 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0x38__rax____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 56
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




define %struct.Memory* @routine_cmpq__0x0__0x30__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44ba37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b022___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b022_type* @G__0x45b022 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0x30__rax____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 48
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




define %struct.Memory* @routine_cmpq__0x0__0x40__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44ba66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b031___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b031_type* @G__0x45b031 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0x40__rax____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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




define %struct.Memory* @routine_cmpl__0x0__0xa0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44babd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0xa4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 164
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x45b040___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b040_type* @G__0x45b040 to i64))
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

define %struct.Memory* @routine_cvtss2sd_0x88__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtss2sd_0x8c__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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


define %struct.Memory* @routine_jmpq_.L_44baf7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_je_.L_44baf2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b056___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b056_type* @G__0x45b056 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 1)
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






define %struct.Memory* @routine_cmpl__0x0__0xa8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44bb4e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0xac__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 172
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x45b067___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b067_type* @G__0x45b067 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_cvtss2sd_0x90__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtss2sd_0x94__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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


define %struct.Memory* @routine_jmpq_.L_44bb88(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_je_.L_44bb83(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b07d___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b07d_type* @G__0x45b07d to i64))
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_cmpl__0x0__0x98__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44bbdf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x9c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x45b08e___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b08e_type* @G__0x45b08e to i64))
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


define %struct.Memory* @routine_jmpq_.L_44bc1c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_je_.L_44bc17(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b0a4___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b0a4_type* @G__0x45b0a4 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_cmpl_0xd0__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 208
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_44bc85(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b0b5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b0b5_type* @G__0x45b0b5 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0xc0__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 192
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movq_0xc8__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 200
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq___rax__rcx_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_44bc23(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x20__rsi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_andl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
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


define %struct.Memory* @routine_je_.L_44bd36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_44bd1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b0c3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b0c3_type* @G__0x45b0c3 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rax__r8_8____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtss2sd___rax__r9_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %R9
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 6
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
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








define %struct.Memory* @routine_jmpq_.L_44bcba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_je_.L_44bde2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_44bdc7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_44bdb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b0db___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b0db_type* @G__0x45b0db to i64))
  ret %struct.Memory* %11
}






















define %struct.Memory* @routine_movq___rax__r9_8____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %R9
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jmpq_.L_44bdb9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44bd4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_je_.L_44be8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_44be73(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_44be60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b0f1___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b0f1_type* @G__0x45b0f1 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_44be65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44bdf8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jge_.L_44bfb7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jge_.L_44bf8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_je_.L_44bf7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x48__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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




define %struct.Memory* @routine_callq_.sre_strtok(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = sub i64 %2, %3
  %6 = icmp ult i64 %2, %3
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %7, i8* %8, align 1
  %9 = trunc i64 %5 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i64 %3, %2
  %17 = xor i64 %16, %5
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %5, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %5, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %2, 63
  %29 = lshr i64 %3, 63
  %30 = xor i64 %29, %28
  %31 = xor i64 %25, %28
  %32 = add   i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_je_.L_44bf76(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b106___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b106_type* @G__0x45b106 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_0xd8__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 216
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44bf00(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44bf7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44bf80(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44beaf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44be95(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 24
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_44c54f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_44bff3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_44c2c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_callq_.strncpy_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45b119___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b119_type* @G__0x45b119 to i64))
  ret %struct.Memory* %11
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x0____rcx__rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 0)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x24__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl_MINUS0x28__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 40
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_addl_MINUS0x2c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 44
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_addl_MINUS0x28__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R9D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 40
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_addl_MINUS0x2c__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R9D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 44
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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


define %struct.Memory* @routine_movq__rdx__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r8d___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r9d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0xc0__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0xb8__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_cmpq__0x0__0x70__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_je_.L_44c141(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_movq__0x45b125___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b125_type* @G__0x45b125 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x8__r8____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq___r8__r9_8____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %R9
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x38__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_je_.L_44c1d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_movq__0x45b13c___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b13c_type* @G__0x45b13c to i64))
  ret %struct.Memory* %11
}
























define %struct.Memory* @routine_movq__rax__MINUS0xe8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
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










define %struct.Memory* @routine_jge_.L_44c2b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_44c2a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_movq__0x45b153___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b153_type* @G__0x45b153 to i64))
  ret %struct.Memory* %11
}






















define %struct.Memory* @routine_movq_MINUS0x10__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x118__r9____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R9
  %10 = add i64 %9, 280
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___r9__r10_8____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %R10
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x38__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r10____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %R10
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0xf8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 252
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44c2a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44c1dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44c2bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44bffa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_je_.L_44c357(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movq__0x45b168___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45b168_type* @G__0x45b168 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x45afe0___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x45afe0_type* @G__0x45afe0 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movl_MINUS0x24__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl_MINUS0x28__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 40
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_movq__rcx__MINUS0x108__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 264
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r10d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x108__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_je_.L_44c3e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_0x50__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movq__0x45afe8___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x45afe8_type* @G__0x45afe8 to i64))
  ret %struct.Memory* %11
}






















define %struct.Memory* @routine_movq__rcx__MINUS0x120__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x120__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x128__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 296
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_je_.L_44c473(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movq__0x459933___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x459933_type* @G__0x459933 to i64))
  ret %struct.Memory* %11
}






















define %struct.Memory* @routine_movq__rcx__MINUS0x138__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 312
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x138__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 312
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x140__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 320
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 324
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jge_.L_44c53c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_0x100__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 256
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




































define %struct.Memory* @routine_movq_0xf8__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 248
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__rdx__MINUS0x150__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 336
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rcx__MINUS0x158__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 344
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x158__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 344
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x150__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x160__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 352
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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








define %struct.Memory* @routine_jmpq_.L_44c47a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44c541(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jmpq_.L_44bfbe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x45756f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45756f_type* @G__0x45756f to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addq__0x170___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 368)
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

