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
declare %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42a6c0.trace_doctor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0x45863c_type = type <{ [8 x i8] }>
@G__0x45863c= global %G__0x45863c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @fake_tracebacks(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .fake_tracebacks:	 RIP: 4295b0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4295b0	 Bytes: 1
  %loadMem_4295b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295b0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295b0)
  store %struct.Memory* %call_4295b0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4295b1	 Bytes: 3
  %loadMem_4295b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295b1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295b1)
  store %struct.Memory* %call_4295b1, %struct.Memory** %MEMORY

  ; Code: subq $0x40, %rsp	 RIP: 4295b4	 Bytes: 4
  %loadMem_4295b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295b4 = call %struct.Memory* @routine_subq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295b4)
  store %struct.Memory* %call_4295b4, %struct.Memory** %MEMORY

  ; Code: movq $0x45863c, %rax	 RIP: 4295b8	 Bytes: 10
  %loadMem_4295b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295b8 = call %struct.Memory* @routine_movq__0x45863c___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295b8)
  store %struct.Memory* %call_4295b8, %struct.Memory** %MEMORY

  ; Code: movl $0x25f, %r9d	 RIP: 4295c2	 Bytes: 6
  %loadMem_4295c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295c2 = call %struct.Memory* @routine_movl__0x25f___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295c2)
  store %struct.Memory* %call_4295c2, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 4295c8	 Bytes: 4
  %loadMem_4295c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295c8 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295c8)
  store %struct.Memory* %call_4295c8, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 4295cc	 Bytes: 3
  %loadMem_4295cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295cc = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295cc)
  store %struct.Memory* %call_4295cc, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x10(%rbp)	 RIP: 4295cf	 Bytes: 3
  %loadMem_4295cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295cf = call %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295cf)
  store %struct.Memory* %call_4295cf, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x18(%rbp)	 RIP: 4295d2	 Bytes: 4
  %loadMem_4295d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295d2 = call %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295d2)
  store %struct.Memory* %call_4295d2, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x20(%rbp)	 RIP: 4295d6	 Bytes: 4
  %loadMem_4295d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295d6 = call %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295d6)
  store %struct.Memory* %call_4295d6, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4295da	 Bytes: 4
  %loadMem_4295da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295da = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295da)
  store %struct.Memory* %call_4295da, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rcx	 RIP: 4295de	 Bytes: 4
  %loadMem_4295de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295de = call %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295de)
  store %struct.Memory* %call_4295de, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4295e2	 Bytes: 3
  %loadMem_4295e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295e2 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295e2)
  store %struct.Memory* %call_4295e2, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %esi	 RIP: 4295e5	 Bytes: 3
  %loadMem_4295e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295e5 = call %struct.Memory* @routine_movl__r9d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295e5)
  store %struct.Memory* %call_4295e5, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 4295e8	 Bytes: 3
  %loadMem_4295e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295e8 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295e8)
  store %struct.Memory* %call_4295e8, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 4295eb	 Bytes: 5
  %loadMem1_4295eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4295eb = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4295eb, i64 117365, i64 5, i64 5)
  store %struct.Memory* %call1_4295eb, %struct.Memory** %MEMORY

  %loadMem2_4295eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4295eb = load i64, i64* %3
  %call2_4295eb = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_4295eb, %struct.Memory* %loadMem2_4295eb)
  store %struct.Memory* %call2_4295eb, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x28(%rbp)	 RIP: 4295f0	 Bytes: 4
  %loadMem_4295f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295f0 = call %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295f0)
  store %struct.Memory* %call_4295f0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 4295f4	 Bytes: 7
  %loadMem_4295f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295f4 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295f4)
  store %struct.Memory* %call_4295f4, %struct.Memory** %MEMORY

  ; Code: .L_4295fb:	 RIP: 4295fb	 Bytes: 0
  br label %block_.L_4295fb
block_.L_4295fb:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 4295fb	 Bytes: 3
  %loadMem_4295fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295fb = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295fb)
  store %struct.Memory* %call_4295fb, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4295fe	 Bytes: 3
  %loadMem_4295fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4295fe = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4295fe)
  store %struct.Memory* %call_4295fe, %struct.Memory** %MEMORY

  ; Code: jge .L_429de2	 RIP: 429601	 Bytes: 6
  %loadMem_429601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429601 = call %struct.Memory* @routine_jge_.L_429de2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429601, i8* %BRANCH_TAKEN, i64 2017, i64 6, i64 6)
  store %struct.Memory* %call_429601, %struct.Memory** %MEMORY

  %loadBr_429601 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429601 = icmp eq i8 %loadBr_429601, 1
  br i1 %cmpBr_429601, label %block_.L_429de2, label %block_429607

block_429607:
  ; Code: movl -0x10(%rbp), %eax	 RIP: 429607	 Bytes: 3
  %loadMem_429607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429607 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429607)
  store %struct.Memory* %call_429607, %struct.Memory** %MEMORY

  ; Code: addl $0x6, %eax	 RIP: 42960a	 Bytes: 3
  %loadMem_42960a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42960a = call %struct.Memory* @routine_addl__0x6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42960a)
  store %struct.Memory* %call_42960a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42960d	 Bytes: 4
  %loadMem_42960d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42960d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42960d)
  store %struct.Memory* %call_42960d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 429611	 Bytes: 4
  %loadMem_429611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429611 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429611)
  store %struct.Memory* %call_429611, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 429615	 Bytes: 4
  %loadMem_429615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429615 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429615)
  store %struct.Memory* %call_429615, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 429619	 Bytes: 3
  %loadMem_429619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429619 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429619)
  store %struct.Memory* %call_429619, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 42961c	 Bytes: 2
  %loadMem_42961c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42961c = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42961c)
  store %struct.Memory* %call_42961c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 42961e	 Bytes: 3
  %loadMem_42961e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42961e = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42961e)
  store %struct.Memory* %call_42961e, %struct.Memory** %MEMORY

  ; Code: callq .P7AllocTrace	 RIP: 429621	 Bytes: 5
  %loadMem1_429621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_429621 = call %struct.Memory* @routine_callq_.P7AllocTrace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_429621, i64 147359, i64 5, i64 5)
  store %struct.Memory* %call1_429621, %struct.Memory** %MEMORY

  %loadMem2_429621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_429621 = load i64, i64* %3
  %call2_429621 = call %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* %0, i64  %loadPC_429621, %struct.Memory* %loadMem2_429621)
  store %struct.Memory* %call2_429621, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 429626	 Bytes: 4
  %loadMem_429626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429626 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429626)
  store %struct.Memory* %call_429626, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 42962a	 Bytes: 4
  %loadMem_42962a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42962a = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42962a)
  store %struct.Memory* %call_42962a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42962e	 Bytes: 4
  %loadMem_42962e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42962e = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42962e)
  store %struct.Memory* %call_42962e, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 429632	 Bytes: 4
  %loadMem_429632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429632 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429632)
  store %struct.Memory* %call_429632, %struct.Memory** %MEMORY

  ; Code: movb $0x4, (%rcx)	 RIP: 429636	 Bytes: 3
  %loadMem_429636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429636 = call %struct.Memory* @routine_movb__0x4____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429636)
  store %struct.Memory* %call_429636, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 429639	 Bytes: 4
  %loadMem_429639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429639 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429639)
  store %struct.Memory* %call_429639, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 42963d	 Bytes: 4
  %loadMem_42963d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42963d = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42963d)
  store %struct.Memory* %call_42963d, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 429641	 Bytes: 4
  %loadMem_429641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429641 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429641)
  store %struct.Memory* %call_429641, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rcx), %rcx	 RIP: 429645	 Bytes: 4
  %loadMem_429645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429645 = call %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429645)
  store %struct.Memory* %call_429645, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx)	 RIP: 429649	 Bytes: 6
  %loadMem_429649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429649 = call %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429649)
  store %struct.Memory* %call_429649, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42964f	 Bytes: 4
  %loadMem_42964f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42964f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42964f)
  store %struct.Memory* %call_42964f, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 429653	 Bytes: 4
  %loadMem_429653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429653 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429653)
  store %struct.Memory* %call_429653, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 429657	 Bytes: 4
  %loadMem_429657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429657 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429657)
  store %struct.Memory* %call_429657, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rcx), %rcx	 RIP: 42965b	 Bytes: 4
  %loadMem_42965b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42965b = call %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42965b)
  store %struct.Memory* %call_42965b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx)	 RIP: 42965f	 Bytes: 6
  %loadMem_42965f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42965f = call %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42965f)
  store %struct.Memory* %call_42965f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 429665	 Bytes: 4
  %loadMem_429665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429665 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429665)
  store %struct.Memory* %call_429665, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 429669	 Bytes: 4
  %loadMem_429669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429669 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429669)
  store %struct.Memory* %call_429669, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42966d	 Bytes: 4
  %loadMem_42966d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42966d = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42966d)
  store %struct.Memory* %call_42966d, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 429671	 Bytes: 4
  %loadMem_429671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429671 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429671)
  store %struct.Memory* %call_429671, %struct.Memory** %MEMORY

  ; Code: movb $0x5, 0x1(%rcx)	 RIP: 429675	 Bytes: 4
  %loadMem_429675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429675 = call %struct.Memory* @routine_movb__0x5__0x1__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429675)
  store %struct.Memory* %call_429675, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 429679	 Bytes: 4
  %loadMem_429679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429679 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429679)
  store %struct.Memory* %call_429679, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 42967d	 Bytes: 4
  %loadMem_42967d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42967d = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42967d)
  store %struct.Memory* %call_42967d, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 429681	 Bytes: 4
  %loadMem_429681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429681 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429681)
  store %struct.Memory* %call_429681, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rcx), %rcx	 RIP: 429685	 Bytes: 4
  %loadMem_429685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429685 = call %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429685)
  store %struct.Memory* %call_429685, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x4(%rcx)	 RIP: 429689	 Bytes: 7
  %loadMem_429689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429689 = call %struct.Memory* @routine_movl__0x0__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429689)
  store %struct.Memory* %call_429689, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 429690	 Bytes: 4
  %loadMem_429690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429690 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429690)
  store %struct.Memory* %call_429690, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 429694	 Bytes: 4
  %loadMem_429694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429694 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429694)
  store %struct.Memory* %call_429694, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 429698	 Bytes: 4
  %loadMem_429698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429698 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429698)
  store %struct.Memory* %call_429698, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rcx), %rcx	 RIP: 42969c	 Bytes: 4
  %loadMem_42969c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42969c = call %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42969c)
  store %struct.Memory* %call_42969c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x4(%rcx)	 RIP: 4296a0	 Bytes: 7
  %loadMem_4296a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296a0 = call %struct.Memory* @routine_movl__0x0__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296a0)
  store %struct.Memory* %call_4296a0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x30(%rbp)	 RIP: 4296a7	 Bytes: 7
  %loadMem_4296a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296a7 = call %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296a7)
  store %struct.Memory* %call_4296a7, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x34(%rbp)	 RIP: 4296ae	 Bytes: 7
  %loadMem_4296ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296ae = call %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296ae)
  store %struct.Memory* %call_4296ae, %struct.Memory** %MEMORY

  ; Code: movl $0x2, -0x3c(%rbp)	 RIP: 4296b5	 Bytes: 7
  %loadMem_4296b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296b5 = call %struct.Memory* @routine_movl__0x2__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296b5)
  store %struct.Memory* %call_4296b5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x38(%rbp)	 RIP: 4296bc	 Bytes: 7
  %loadMem_4296bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296bc = call %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296bc)
  store %struct.Memory* %call_4296bc, %struct.Memory** %MEMORY

  ; Code: .L_4296c3:	 RIP: 4296c3	 Bytes: 0
  br label %block_.L_4296c3
block_.L_4296c3:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4296c3	 Bytes: 3
  %loadMem_4296c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296c3 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296c3)
  store %struct.Memory* %call_4296c3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 4296c6	 Bytes: 3
  %loadMem_4296c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296c6 = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296c6)
  store %struct.Memory* %call_4296c6, %struct.Memory** %MEMORY

  ; Code: jge .L_429d54	 RIP: 4296c9	 Bytes: 6
  %loadMem_4296c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296c9 = call %struct.Memory* @routine_jge_.L_429d54(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296c9, i8* %BRANCH_TAKEN, i64 1675, i64 6, i64 6)
  store %struct.Memory* %call_4296c9, %struct.Memory** %MEMORY

  %loadBr_4296c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4296c9 = icmp eq i8 %loadBr_4296c9, 1
  br i1 %cmpBr_4296c9, label %block_.L_429d54, label %block_4296cf

block_4296cf:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 4296cf	 Bytes: 4
  %loadMem_4296cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296cf = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296cf)
  store %struct.Memory* %call_4296cf, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4296d3	 Bytes: 4
  %loadMem_4296d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296d3 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296d3)
  store %struct.Memory* %call_4296d3, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4296d7	 Bytes: 4
  %loadMem_4296d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296d7 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296d7)
  store %struct.Memory* %call_4296d7, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 4296db	 Bytes: 4
  %loadMem_4296db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296db = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296db)
  store %struct.Memory* %call_4296db, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 4296df	 Bytes: 4
  %loadMem_4296df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296df = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296df)
  store %struct.Memory* %call_4296df, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 4296e3	 Bytes: 4
  %loadMem_4296e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296e3 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296e3)
  store %struct.Memory* %call_4296e3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4296e7	 Bytes: 4
  %loadMem_4296e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296e7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296e7)
  store %struct.Memory* %call_4296e7, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 4296eb	 Bytes: 3
  %loadMem_4296eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296eb = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296eb)
  store %struct.Memory* %call_4296eb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4296ee	 Bytes: 3
  %loadMem_4296ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296ee = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296ee)
  store %struct.Memory* %call_4296ee, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4296f1	 Bytes: 3
  %loadMem_4296f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296f1 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296f1)
  store %struct.Memory* %call_4296f1, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 4296f4	 Bytes: 3
  %loadMem_4296f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296f4 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296f4)
  store %struct.Memory* %call_4296f4, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %edx	 RIP: 4296f7	 Bytes: 3
  %loadMem_4296f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296f7 = call %struct.Memory* @routine_andl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296f7)
  store %struct.Memory* %call_4296f7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 4296fa	 Bytes: 3
  %loadMem_4296fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296fa = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296fa)
  store %struct.Memory* %call_4296fa, %struct.Memory** %MEMORY

  ; Code: je .L_42975a	 RIP: 4296fd	 Bytes: 6
  %loadMem_4296fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4296fd = call %struct.Memory* @routine_je_.L_42975a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4296fd, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_4296fd, %struct.Memory** %MEMORY

  %loadBr_4296fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4296fd = icmp eq i8 %loadBr_4296fd, 1
  br i1 %cmpBr_4296fd, label %block_.L_42975a, label %block_429703

block_429703:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 429703	 Bytes: 4
  %loadMem_429703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429703 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429703)
  store %struct.Memory* %call_429703, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429707	 Bytes: 4
  %loadMem_429707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429707 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429707)
  store %struct.Memory* %call_429707, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42970b	 Bytes: 4
  %loadMem_42970b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42970b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42970b)
  store %struct.Memory* %call_42970b, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42970f	 Bytes: 4
  %loadMem_42970f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42970f = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42970f)
  store %struct.Memory* %call_42970f, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429713	 Bytes: 4
  %loadMem_429713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429713 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429713)
  store %struct.Memory* %call_429713, %struct.Memory** %MEMORY

  ; Code: movb $0x6, (%rax,%rcx,1)	 RIP: 429717	 Bytes: 4
  %loadMem_429717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429717 = call %struct.Memory* @routine_movb__0x6____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429717)
  store %struct.Memory* %call_429717, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 42971b	 Bytes: 4
  %loadMem_42971b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42971b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42971b)
  store %struct.Memory* %call_42971b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 42971f	 Bytes: 4
  %loadMem_42971f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42971f = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42971f)
  store %struct.Memory* %call_42971f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429723	 Bytes: 4
  %loadMem_429723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429723 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429723)
  store %struct.Memory* %call_429723, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 429727	 Bytes: 4
  %loadMem_429727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429727 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429727)
  store %struct.Memory* %call_429727, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 42972b	 Bytes: 4
  %loadMem_42972b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42972b = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42972b)
  store %struct.Memory* %call_42972b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 42972f	 Bytes: 7
  %loadMem_42972f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42972f = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42972f)
  store %struct.Memory* %call_42972f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 429736	 Bytes: 4
  %loadMem_429736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429736 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429736)
  store %struct.Memory* %call_429736, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 42973a	 Bytes: 4
  %loadMem_42973a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42973a = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42973a)
  store %struct.Memory* %call_42973a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42973e	 Bytes: 4
  %loadMem_42973e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42973e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42973e)
  store %struct.Memory* %call_42973e, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 429742	 Bytes: 4
  %loadMem_429742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429742 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429742)
  store %struct.Memory* %call_429742, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429746	 Bytes: 4
  %loadMem_429746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429746 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429746)
  store %struct.Memory* %call_429746, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 42974a	 Bytes: 7
  %loadMem_42974a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42974a = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42974a)
  store %struct.Memory* %call_42974a, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 429751	 Bytes: 3
  %loadMem_429751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429751 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429751)
  store %struct.Memory* %call_429751, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 429754	 Bytes: 3
  %loadMem_429754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429754 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429754)
  store %struct.Memory* %call_429754, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3c(%rbp)	 RIP: 429757	 Bytes: 3
  %loadMem_429757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429757 = call %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429757)
  store %struct.Memory* %call_429757, %struct.Memory** %MEMORY

  ; Code: .L_42975a:	 RIP: 42975a	 Bytes: 0
  br label %block_.L_42975a
block_.L_42975a:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 42975a	 Bytes: 4
  %loadMem_42975a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42975a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42975a)
  store %struct.Memory* %call_42975a, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 42975e	 Bytes: 3
  %loadMem_42975e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42975e = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42975e)
  store %struct.Memory* %call_42975e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 429761	 Bytes: 3
  %loadMem_429761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429761 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429761)
  store %struct.Memory* %call_429761, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 429764	 Bytes: 3
  %loadMem_429764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429764 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429764)
  store %struct.Memory* %call_429764, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 429767	 Bytes: 3
  %loadMem_429767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429767 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429767)
  store %struct.Memory* %call_429767, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %ecx	 RIP: 42976a	 Bytes: 3
  %loadMem_42976a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42976a = call %struct.Memory* @routine_andl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42976a)
  store %struct.Memory* %call_42976a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 42976d	 Bytes: 3
  %loadMem_42976d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42976d = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42976d)
  store %struct.Memory* %call_42976d, %struct.Memory** %MEMORY

  ; Code: je .L_429873	 RIP: 429770	 Bytes: 6
  %loadMem_429770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429770 = call %struct.Memory* @routine_je_.L_429873(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429770, i8* %BRANCH_TAKEN, i64 259, i64 6, i64 6)
  store %struct.Memory* %call_429770, %struct.Memory** %MEMORY

  %loadBr_429770 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429770 = icmp eq i8 %loadBr_429770, 1
  br i1 %cmpBr_429770, label %block_.L_429873, label %block_429776

block_429776:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429776	 Bytes: 4
  %loadMem_429776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429776 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429776)
  store %struct.Memory* %call_429776, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 42977a	 Bytes: 4
  %loadMem_42977a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42977a = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42977a)
  store %struct.Memory* %call_42977a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42977e	 Bytes: 4
  %loadMem_42977e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42977e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42977e)
  store %struct.Memory* %call_42977e, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 429782	 Bytes: 4
  %loadMem_429782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429782 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429782)
  store %struct.Memory* %call_429782, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 429786	 Bytes: 4
  %loadMem_429786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429786 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429786)
  store %struct.Memory* %call_429786, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 42978a	 Bytes: 3
  %loadMem_42978a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42978a = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42978a)
  store %struct.Memory* %call_42978a, %struct.Memory** %MEMORY

  ; Code: je .L_429873	 RIP: 42978d	 Bytes: 6
  %loadMem_42978d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42978d = call %struct.Memory* @routine_je_.L_429873(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42978d, i8* %BRANCH_TAKEN, i64 230, i64 6, i64 6)
  store %struct.Memory* %call_42978d, %struct.Memory** %MEMORY

  %loadBr_42978d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42978d = icmp eq i8 %loadBr_42978d, 1
  br i1 %cmpBr_42978d, label %block_.L_429873, label %block_429793

block_429793:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429793	 Bytes: 4
  %loadMem_429793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429793 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429793)
  store %struct.Memory* %call_429793, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429797	 Bytes: 4
  %loadMem_429797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429797 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429797)
  store %struct.Memory* %call_429797, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42979b	 Bytes: 4
  %loadMem_42979b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42979b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42979b)
  store %struct.Memory* %call_42979b, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 42979f	 Bytes: 4
  %loadMem_42979f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42979f = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42979f)
  store %struct.Memory* %call_42979f, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 4297a3	 Bytes: 4
  %loadMem_4297a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297a3 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297a3)
  store %struct.Memory* %call_4297a3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 4297a7	 Bytes: 3
  %loadMem_4297a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297a7 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297a7)
  store %struct.Memory* %call_4297a7, %struct.Memory** %MEMORY

  ; Code: je .L_429873	 RIP: 4297aa	 Bytes: 6
  %loadMem_4297aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297aa = call %struct.Memory* @routine_je_.L_429873(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297aa, i8* %BRANCH_TAKEN, i64 201, i64 6, i64 6)
  store %struct.Memory* %call_4297aa, %struct.Memory** %MEMORY

  %loadBr_4297aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4297aa = icmp eq i8 %loadBr_4297aa, 1
  br i1 %cmpBr_4297aa, label %block_.L_429873, label %block_4297b0

block_4297b0:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4297b0	 Bytes: 4
  %loadMem_4297b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297b0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297b0)
  store %struct.Memory* %call_4297b0, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4297b4	 Bytes: 4
  %loadMem_4297b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297b4 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297b4)
  store %struct.Memory* %call_4297b4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4297b8	 Bytes: 4
  %loadMem_4297b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297b8 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297b8)
  store %struct.Memory* %call_4297b8, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 4297bc	 Bytes: 4
  %loadMem_4297bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297bc = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297bc)
  store %struct.Memory* %call_4297bc, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 4297c0	 Bytes: 4
  %loadMem_4297c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297c0 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297c0)
  store %struct.Memory* %call_4297c0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 4297c4	 Bytes: 3
  %loadMem_4297c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297c4 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297c4)
  store %struct.Memory* %call_4297c4, %struct.Memory** %MEMORY

  ; Code: je .L_429873	 RIP: 4297c7	 Bytes: 6
  %loadMem_4297c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297c7 = call %struct.Memory* @routine_je_.L_429873(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297c7, i8* %BRANCH_TAKEN, i64 172, i64 6, i64 6)
  store %struct.Memory* %call_4297c7, %struct.Memory** %MEMORY

  %loadBr_4297c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4297c7 = icmp eq i8 %loadBr_4297c7, 1
  br i1 %cmpBr_4297c7, label %block_.L_429873, label %block_4297cd

block_4297cd:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4297cd	 Bytes: 4
  %loadMem_4297cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297cd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297cd)
  store %struct.Memory* %call_4297cd, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4297d1	 Bytes: 4
  %loadMem_4297d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297d1 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297d1)
  store %struct.Memory* %call_4297d1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4297d5	 Bytes: 4
  %loadMem_4297d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297d5 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297d5)
  store %struct.Memory* %call_4297d5, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 4297d9	 Bytes: 4
  %loadMem_4297d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297d9 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297d9)
  store %struct.Memory* %call_4297d9, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 4297dd	 Bytes: 4
  %loadMem_4297dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297dd = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297dd)
  store %struct.Memory* %call_4297dd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 4297e1	 Bytes: 3
  %loadMem_4297e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297e1 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297e1)
  store %struct.Memory* %call_4297e1, %struct.Memory** %MEMORY

  ; Code: je .L_429873	 RIP: 4297e4	 Bytes: 6
  %loadMem_4297e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297e4 = call %struct.Memory* @routine_je_.L_429873(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297e4, i8* %BRANCH_TAKEN, i64 143, i64 6, i64 6)
  store %struct.Memory* %call_4297e4, %struct.Memory** %MEMORY

  %loadBr_4297e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4297e4 = icmp eq i8 %loadBr_4297e4, 1
  br i1 %cmpBr_4297e4, label %block_.L_429873, label %block_4297ea

block_4297ea:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4297ea	 Bytes: 4
  %loadMem_4297ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297ea = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297ea)
  store %struct.Memory* %call_4297ea, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4297ee	 Bytes: 4
  %loadMem_4297ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297ee = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297ee)
  store %struct.Memory* %call_4297ee, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4297f2	 Bytes: 4
  %loadMem_4297f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297f2 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297f2)
  store %struct.Memory* %call_4297f2, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 4297f6	 Bytes: 4
  %loadMem_4297f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297f6 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297f6)
  store %struct.Memory* %call_4297f6, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 4297fa	 Bytes: 4
  %loadMem_4297fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297fa = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297fa)
  store %struct.Memory* %call_4297fa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 4297fe	 Bytes: 3
  %loadMem_4297fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4297fe = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4297fe)
  store %struct.Memory* %call_4297fe, %struct.Memory** %MEMORY

  ; Code: je .L_429873	 RIP: 429801	 Bytes: 6
  %loadMem_429801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429801 = call %struct.Memory* @routine_je_.L_429873(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429801, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_429801, %struct.Memory** %MEMORY

  %loadBr_429801 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429801 = icmp eq i8 %loadBr_429801, 1
  br i1 %cmpBr_429801, label %block_.L_429873, label %block_429807

block_429807:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 429807	 Bytes: 3
  %loadMem_429807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429807 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429807)
  store %struct.Memory* %call_429807, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42980a	 Bytes: 3
  %loadMem_42980a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42980a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42980a)
  store %struct.Memory* %call_42980a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 42980d	 Bytes: 3
  %loadMem_42980d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42980d = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42980d)
  store %struct.Memory* %call_42980d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 429810	 Bytes: 4
  %loadMem_429810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429810 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429810)
  store %struct.Memory* %call_429810, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 429814	 Bytes: 4
  %loadMem_429814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429814 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429814)
  store %struct.Memory* %call_429814, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 429818	 Bytes: 4
  %loadMem_429818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429818 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429818)
  store %struct.Memory* %call_429818, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 42981c	 Bytes: 4
  %loadMem_42981c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42981c = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42981c)
  store %struct.Memory* %call_42981c, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rdx	 RIP: 429820	 Bytes: 4
  %loadMem_429820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429820 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429820)
  store %struct.Memory* %call_429820, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rcx,%rdx,1)	 RIP: 429824	 Bytes: 4
  %loadMem_429824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429824 = call %struct.Memory* @routine_movb__0x1____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429824)
  store %struct.Memory* %call_429824, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 429828	 Bytes: 3
  %loadMem_429828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429828 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429828)
  store %struct.Memory* %call_429828, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42982b	 Bytes: 4
  %loadMem_42982b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42982b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42982b)
  store %struct.Memory* %call_42982b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 42982f	 Bytes: 4
  %loadMem_42982f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42982f = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42982f)
  store %struct.Memory* %call_42982f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 429833	 Bytes: 4
  %loadMem_429833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429833 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429833)
  store %struct.Memory* %call_429833, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rcx), %rcx	 RIP: 429837	 Bytes: 4
  %loadMem_429837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429837 = call %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429837)
  store %struct.Memory* %call_429837, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rdx	 RIP: 42983b	 Bytes: 4
  %loadMem_42983b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42983b = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42983b)
  store %struct.Memory* %call_42983b, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 42983f	 Bytes: 3
  %loadMem_42983f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42983f = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42983f)
  store %struct.Memory* %call_42983f, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 429842	 Bytes: 3
  %loadMem_429842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429842 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429842)
  store %struct.Memory* %call_429842, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 429845	 Bytes: 4
  %loadMem_429845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429845 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429845)
  store %struct.Memory* %call_429845, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 429849	 Bytes: 4
  %loadMem_429849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429849 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429849)
  store %struct.Memory* %call_429849, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42984d	 Bytes: 4
  %loadMem_42984d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42984d = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42984d)
  store %struct.Memory* %call_42984d, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rcx), %rcx	 RIP: 429851	 Bytes: 4
  %loadMem_429851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429851 = call %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429851)
  store %struct.Memory* %call_429851, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rdx	 RIP: 429855	 Bytes: 4
  %loadMem_429855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429855 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429855)
  store %struct.Memory* %call_429855, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 429859	 Bytes: 3
  %loadMem_429859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429859 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429859)
  store %struct.Memory* %call_429859, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 42985c	 Bytes: 3
  %loadMem_42985c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42985c = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42985c)
  store %struct.Memory* %call_42985c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42985f	 Bytes: 3
  %loadMem_42985f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42985f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42985f)
  store %struct.Memory* %call_42985f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 429862	 Bytes: 3
  %loadMem_429862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429862 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429862)
  store %struct.Memory* %call_429862, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 429865	 Bytes: 3
  %loadMem_429865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429865 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429865)
  store %struct.Memory* %call_429865, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 429868	 Bytes: 3
  %loadMem_429868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429868 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429868)
  store %struct.Memory* %call_429868, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 42986b	 Bytes: 3
  %loadMem_42986b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42986b = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42986b)
  store %struct.Memory* %call_42986b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_429c3e	 RIP: 42986e	 Bytes: 5
  %loadMem_42986e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42986e = call %struct.Memory* @routine_jmpq_.L_429c3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42986e, i64 976, i64 5)
  store %struct.Memory* %call_42986e, %struct.Memory** %MEMORY

  br label %block_.L_429c3e

  ; Code: .L_429873:	 RIP: 429873	 Bytes: 0
block_.L_429873:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 429873	 Bytes: 4
  %loadMem_429873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429873 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429873)
  store %struct.Memory* %call_429873, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 429877	 Bytes: 3
  %loadMem_429877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429877 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429877)
  store %struct.Memory* %call_429877, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 42987a	 Bytes: 3
  %loadMem_42987a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42987a = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42987a)
  store %struct.Memory* %call_42987a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42987d	 Bytes: 3
  %loadMem_42987d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42987d = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42987d)
  store %struct.Memory* %call_42987d, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 429880	 Bytes: 3
  %loadMem_429880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429880 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429880)
  store %struct.Memory* %call_429880, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %ecx	 RIP: 429883	 Bytes: 3
  %loadMem_429883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429883 = call %struct.Memory* @routine_andl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429883)
  store %struct.Memory* %call_429883, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 429886	 Bytes: 3
  %loadMem_429886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429886 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429886)
  store %struct.Memory* %call_429886, %struct.Memory** %MEMORY

  ; Code: je .L_429919	 RIP: 429889	 Bytes: 6
  %loadMem_429889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429889 = call %struct.Memory* @routine_je_.L_429919(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429889, i8* %BRANCH_TAKEN, i64 144, i64 6, i64 6)
  store %struct.Memory* %call_429889, %struct.Memory** %MEMORY

  %loadBr_429889 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429889 = icmp eq i8 %loadBr_429889, 1
  br i1 %cmpBr_429889, label %block_.L_429919, label %block_42988f

block_42988f:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 42988f	 Bytes: 3
  %loadMem_42988f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42988f = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42988f)
  store %struct.Memory* %call_42988f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 429892	 Bytes: 3
  %loadMem_429892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429892 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429892)
  store %struct.Memory* %call_429892, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 429895	 Bytes: 3
  %loadMem_429895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429895 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429895)
  store %struct.Memory* %call_429895, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 429898	 Bytes: 4
  %loadMem_429898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429898 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429898)
  store %struct.Memory* %call_429898, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 42989c	 Bytes: 4
  %loadMem_42989c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42989c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42989c)
  store %struct.Memory* %call_42989c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4298a0	 Bytes: 4
  %loadMem_4298a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298a0 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298a0)
  store %struct.Memory* %call_4298a0, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 4298a4	 Bytes: 4
  %loadMem_4298a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298a4 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298a4)
  store %struct.Memory* %call_4298a4, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 4298a8	 Bytes: 3
  %loadMem_4298a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298a8 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298a8)
  store %struct.Memory* %call_4298a8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4298ab	 Bytes: 3
  %loadMem_4298ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298ab = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298ab)
  store %struct.Memory* %call_4298ab, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4298ae	 Bytes: 3
  %loadMem_4298ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298ae = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298ae)
  store %struct.Memory* %call_4298ae, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rdx,1), %eax	 RIP: 4298b1	 Bytes: 4
  %loadMem_4298b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298b1 = call %struct.Memory* @routine_movsbl___rcx__rdx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298b1)
  store %struct.Memory* %call_4298b1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x6, %eax	 RIP: 4298b5	 Bytes: 3
  %loadMem_4298b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298b5 = call %struct.Memory* @routine_cmpl__0x6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298b5)
  store %struct.Memory* %call_4298b5, %struct.Memory** %MEMORY

  ; Code: je .L_429914	 RIP: 4298b8	 Bytes: 6
  %loadMem_4298b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298b8 = call %struct.Memory* @routine_je_.L_429914(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298b8, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_4298b8, %struct.Memory** %MEMORY

  %loadBr_4298b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4298b8 = icmp eq i8 %loadBr_4298b8, 1
  br i1 %cmpBr_4298b8, label %block_.L_429914, label %block_4298be

block_4298be:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 4298be	 Bytes: 4
  %loadMem_4298be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298be = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298be)
  store %struct.Memory* %call_4298be, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4298c2	 Bytes: 4
  %loadMem_4298c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298c2 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298c2)
  store %struct.Memory* %call_4298c2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4298c6	 Bytes: 4
  %loadMem_4298c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298c6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298c6)
  store %struct.Memory* %call_4298c6, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 4298ca	 Bytes: 4
  %loadMem_4298ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298ca = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298ca)
  store %struct.Memory* %call_4298ca, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 4298ce	 Bytes: 4
  %loadMem_4298ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298ce = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298ce)
  store %struct.Memory* %call_4298ce, %struct.Memory** %MEMORY

  ; Code: movb $0x2, (%rax,%rcx,1)	 RIP: 4298d2	 Bytes: 4
  %loadMem_4298d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298d2 = call %struct.Memory* @routine_movb__0x2____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298d2)
  store %struct.Memory* %call_4298d2, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 4298d6	 Bytes: 3
  %loadMem_4298d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298d6 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298d6)
  store %struct.Memory* %call_4298d6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4298d9	 Bytes: 4
  %loadMem_4298d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298d9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298d9)
  store %struct.Memory* %call_4298d9, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4298dd	 Bytes: 4
  %loadMem_4298dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298dd = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298dd)
  store %struct.Memory* %call_4298dd, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4298e1	 Bytes: 4
  %loadMem_4298e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298e1 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298e1)
  store %struct.Memory* %call_4298e1, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 4298e5	 Bytes: 4
  %loadMem_4298e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298e5 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298e5)
  store %struct.Memory* %call_4298e5, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 4298e9	 Bytes: 4
  %loadMem_4298e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298e9 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298e9)
  store %struct.Memory* %call_4298e9, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 4298ed	 Bytes: 3
  %loadMem_4298ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298ed = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298ed)
  store %struct.Memory* %call_4298ed, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4298f0	 Bytes: 4
  %loadMem_4298f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298f0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298f0)
  store %struct.Memory* %call_4298f0, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4298f4	 Bytes: 4
  %loadMem_4298f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298f4 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298f4)
  store %struct.Memory* %call_4298f4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4298f8	 Bytes: 4
  %loadMem_4298f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298f8 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298f8)
  store %struct.Memory* %call_4298f8, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 4298fc	 Bytes: 4
  %loadMem_4298fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4298fc = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4298fc)
  store %struct.Memory* %call_4298fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429900	 Bytes: 4
  %loadMem_429900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429900 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429900)
  store %struct.Memory* %call_429900, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 429904	 Bytes: 7
  %loadMem_429904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429904 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429904)
  store %struct.Memory* %call_429904, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 42990b	 Bytes: 3
  %loadMem_42990b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42990b = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42990b)
  store %struct.Memory* %call_42990b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42990e	 Bytes: 3
  %loadMem_42990e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42990e = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42990e)
  store %struct.Memory* %call_42990e, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3c(%rbp)	 RIP: 429911	 Bytes: 3
  %loadMem_429911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429911 = call %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429911)
  store %struct.Memory* %call_429911, %struct.Memory** %MEMORY

  ; Code: .L_429914:	 RIP: 429914	 Bytes: 0
  br label %block_.L_429914
block_.L_429914:

  ; Code: jmpq .L_429c39	 RIP: 429914	 Bytes: 5
  %loadMem_429914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429914 = call %struct.Memory* @routine_jmpq_.L_429c39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429914, i64 805, i64 5)
  store %struct.Memory* %call_429914, %struct.Memory** %MEMORY

  br label %block_.L_429c39

  ; Code: .L_429919:	 RIP: 429919	 Bytes: 0
block_.L_429919:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 429919	 Bytes: 4
  %loadMem_429919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429919 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429919)
  store %struct.Memory* %call_429919, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 42991d	 Bytes: 3
  %loadMem_42991d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42991d = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42991d)
  store %struct.Memory* %call_42991d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 429920	 Bytes: 3
  %loadMem_429920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429920 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429920)
  store %struct.Memory* %call_429920, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 429923	 Bytes: 3
  %loadMem_429923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429923 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429923)
  store %struct.Memory* %call_429923, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 429926	 Bytes: 3
  %loadMem_429926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429926 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429926)
  store %struct.Memory* %call_429926, %struct.Memory** %MEMORY

  ; Code: andl $0x10, %ecx	 RIP: 429929	 Bytes: 3
  %loadMem_429929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429929 = call %struct.Memory* @routine_andl__0x10___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429929)
  store %struct.Memory* %call_429929, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 42992c	 Bytes: 3
  %loadMem_42992c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42992c = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42992c)
  store %struct.Memory* %call_42992c, %struct.Memory** %MEMORY

  ; Code: je .L_429a2a	 RIP: 42992f	 Bytes: 6
  %loadMem_42992f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42992f = call %struct.Memory* @routine_je_.L_429a2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42992f, i8* %BRANCH_TAKEN, i64 251, i64 6, i64 6)
  store %struct.Memory* %call_42992f, %struct.Memory** %MEMORY

  %loadBr_42992f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42992f = icmp eq i8 %loadBr_42992f, 1
  br i1 %cmpBr_42992f, label %block_.L_429a2a, label %block_429935

block_429935:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429935	 Bytes: 4
  %loadMem_429935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429935 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429935)
  store %struct.Memory* %call_429935, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429939	 Bytes: 4
  %loadMem_429939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429939 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429939)
  store %struct.Memory* %call_429939, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42993d	 Bytes: 4
  %loadMem_42993d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42993d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42993d)
  store %struct.Memory* %call_42993d, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 429941	 Bytes: 4
  %loadMem_429941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429941 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429941)
  store %struct.Memory* %call_429941, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 429945	 Bytes: 4
  %loadMem_429945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429945 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429945)
  store %struct.Memory* %call_429945, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 429949	 Bytes: 3
  %loadMem_429949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429949 = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429949)
  store %struct.Memory* %call_429949, %struct.Memory** %MEMORY

  ; Code: je .L_429a2a	 RIP: 42994c	 Bytes: 6
  %loadMem_42994c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42994c = call %struct.Memory* @routine_je_.L_429a2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42994c, i8* %BRANCH_TAKEN, i64 222, i64 6, i64 6)
  store %struct.Memory* %call_42994c, %struct.Memory** %MEMORY

  %loadBr_42994c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42994c = icmp eq i8 %loadBr_42994c, 1
  br i1 %cmpBr_42994c, label %block_.L_429a2a, label %block_429952

block_429952:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429952	 Bytes: 4
  %loadMem_429952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429952 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429952)
  store %struct.Memory* %call_429952, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429956	 Bytes: 4
  %loadMem_429956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429956 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429956)
  store %struct.Memory* %call_429956, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42995a	 Bytes: 4
  %loadMem_42995a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42995a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42995a)
  store %struct.Memory* %call_42995a, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 42995e	 Bytes: 4
  %loadMem_42995e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42995e = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42995e)
  store %struct.Memory* %call_42995e, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 429962	 Bytes: 4
  %loadMem_429962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429962 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429962)
  store %struct.Memory* %call_429962, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 429966	 Bytes: 3
  %loadMem_429966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429966 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429966)
  store %struct.Memory* %call_429966, %struct.Memory** %MEMORY

  ; Code: je .L_429a2a	 RIP: 429969	 Bytes: 6
  %loadMem_429969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429969 = call %struct.Memory* @routine_je_.L_429a2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429969, i8* %BRANCH_TAKEN, i64 193, i64 6, i64 6)
  store %struct.Memory* %call_429969, %struct.Memory** %MEMORY

  %loadBr_429969 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429969 = icmp eq i8 %loadBr_429969, 1
  br i1 %cmpBr_429969, label %block_.L_429a2a, label %block_42996f

block_42996f:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42996f	 Bytes: 4
  %loadMem_42996f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42996f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42996f)
  store %struct.Memory* %call_42996f, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429973	 Bytes: 4
  %loadMem_429973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429973 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429973)
  store %struct.Memory* %call_429973, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429977	 Bytes: 4
  %loadMem_429977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429977 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429977)
  store %struct.Memory* %call_429977, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 42997b	 Bytes: 4
  %loadMem_42997b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42997b = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42997b)
  store %struct.Memory* %call_42997b, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42997f	 Bytes: 4
  %loadMem_42997f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42997f = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42997f)
  store %struct.Memory* %call_42997f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 429983	 Bytes: 3
  %loadMem_429983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429983 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429983)
  store %struct.Memory* %call_429983, %struct.Memory** %MEMORY

  ; Code: je .L_429a2a	 RIP: 429986	 Bytes: 6
  %loadMem_429986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429986 = call %struct.Memory* @routine_je_.L_429a2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429986, i8* %BRANCH_TAKEN, i64 164, i64 6, i64 6)
  store %struct.Memory* %call_429986, %struct.Memory** %MEMORY

  %loadBr_429986 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429986 = icmp eq i8 %loadBr_429986, 1
  br i1 %cmpBr_429986, label %block_.L_429a2a, label %block_42998c

block_42998c:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42998c	 Bytes: 4
  %loadMem_42998c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42998c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42998c)
  store %struct.Memory* %call_42998c, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429990	 Bytes: 4
  %loadMem_429990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429990 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429990)
  store %struct.Memory* %call_429990, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429994	 Bytes: 4
  %loadMem_429994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429994 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429994)
  store %struct.Memory* %call_429994, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 429998	 Bytes: 4
  %loadMem_429998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429998 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429998)
  store %struct.Memory* %call_429998, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42999c	 Bytes: 4
  %loadMem_42999c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42999c = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42999c)
  store %struct.Memory* %call_42999c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 4299a0	 Bytes: 3
  %loadMem_4299a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299a0 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299a0)
  store %struct.Memory* %call_4299a0, %struct.Memory** %MEMORY

  ; Code: je .L_429a2a	 RIP: 4299a3	 Bytes: 6
  %loadMem_4299a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299a3 = call %struct.Memory* @routine_je_.L_429a2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299a3, i8* %BRANCH_TAKEN, i64 135, i64 6, i64 6)
  store %struct.Memory* %call_4299a3, %struct.Memory** %MEMORY

  %loadBr_4299a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4299a3 = icmp eq i8 %loadBr_4299a3, 1
  br i1 %cmpBr_4299a3, label %block_.L_429a2a, label %block_4299a9

block_4299a9:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4299a9	 Bytes: 4
  %loadMem_4299a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299a9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299a9)
  store %struct.Memory* %call_4299a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4299ad	 Bytes: 4
  %loadMem_4299ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299ad = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299ad)
  store %struct.Memory* %call_4299ad, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4299b1	 Bytes: 4
  %loadMem_4299b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299b1 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299b1)
  store %struct.Memory* %call_4299b1, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 4299b5	 Bytes: 4
  %loadMem_4299b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299b5 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299b5)
  store %struct.Memory* %call_4299b5, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 4299b9	 Bytes: 4
  %loadMem_4299b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299b9 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299b9)
  store %struct.Memory* %call_4299b9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 4299bd	 Bytes: 3
  %loadMem_4299bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299bd = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299bd)
  store %struct.Memory* %call_4299bd, %struct.Memory** %MEMORY

  ; Code: je .L_429a2a	 RIP: 4299c0	 Bytes: 6
  %loadMem_4299c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299c0 = call %struct.Memory* @routine_je_.L_429a2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299c0, i8* %BRANCH_TAKEN, i64 106, i64 6, i64 6)
  store %struct.Memory* %call_4299c0, %struct.Memory** %MEMORY

  %loadBr_4299c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4299c0 = icmp eq i8 %loadBr_4299c0, 1
  br i1 %cmpBr_4299c0, label %block_.L_429a2a, label %block_4299c6

block_4299c6:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 4299c6	 Bytes: 4
  %loadMem_4299c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299c6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299c6)
  store %struct.Memory* %call_4299c6, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4299ca	 Bytes: 4
  %loadMem_4299ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299ca = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299ca)
  store %struct.Memory* %call_4299ca, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4299ce	 Bytes: 4
  %loadMem_4299ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299ce = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299ce)
  store %struct.Memory* %call_4299ce, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 4299d2	 Bytes: 4
  %loadMem_4299d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299d2 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299d2)
  store %struct.Memory* %call_4299d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 4299d6	 Bytes: 4
  %loadMem_4299d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299d6 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299d6)
  store %struct.Memory* %call_4299d6, %struct.Memory** %MEMORY

  ; Code: movb $0x5, (%rax,%rcx,1)	 RIP: 4299da	 Bytes: 4
  %loadMem_4299da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299da = call %struct.Memory* @routine_movb__0x5____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299da)
  store %struct.Memory* %call_4299da, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4299de	 Bytes: 4
  %loadMem_4299de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299de = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299de)
  store %struct.Memory* %call_4299de, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4299e2	 Bytes: 4
  %loadMem_4299e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299e2 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299e2)
  store %struct.Memory* %call_4299e2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4299e6	 Bytes: 4
  %loadMem_4299e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299e6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299e6)
  store %struct.Memory* %call_4299e6, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 4299ea	 Bytes: 4
  %loadMem_4299ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299ea = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299ea)
  store %struct.Memory* %call_4299ea, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 4299ee	 Bytes: 4
  %loadMem_4299ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299ee = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299ee)
  store %struct.Memory* %call_4299ee, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 4299f2	 Bytes: 7
  %loadMem_4299f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299f2 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299f2)
  store %struct.Memory* %call_4299f2, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edx	 RIP: 4299f9	 Bytes: 3
  %loadMem_4299f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299f9 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299f9)
  store %struct.Memory* %call_4299f9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4299fc	 Bytes: 4
  %loadMem_4299fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4299fc = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4299fc)
  store %struct.Memory* %call_4299fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429a00	 Bytes: 4
  %loadMem_429a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a00 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a00)
  store %struct.Memory* %call_429a00, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429a04	 Bytes: 4
  %loadMem_429a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a04 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a04)
  store %struct.Memory* %call_429a04, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 429a08	 Bytes: 4
  %loadMem_429a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a08 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a08)
  store %struct.Memory* %call_429a08, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429a0c	 Bytes: 4
  %loadMem_429a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a0c = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a0c)
  store %struct.Memory* %call_429a0c, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 429a10	 Bytes: 3
  %loadMem_429a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a10 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a10)
  store %struct.Memory* %call_429a10, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edx	 RIP: 429a13	 Bytes: 3
  %loadMem_429a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a13 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a13)
  store %struct.Memory* %call_429a13, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 429a16	 Bytes: 3
  %loadMem_429a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a16 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a16)
  store %struct.Memory* %call_429a16, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x30(%rbp)	 RIP: 429a19	 Bytes: 3
  %loadMem_429a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a19 = call %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a19)
  store %struct.Memory* %call_429a19, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 429a1c	 Bytes: 3
  %loadMem_429a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a1c = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a1c)
  store %struct.Memory* %call_429a1c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 429a1f	 Bytes: 3
  %loadMem_429a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a1f = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a1f)
  store %struct.Memory* %call_429a1f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3c(%rbp)	 RIP: 429a22	 Bytes: 3
  %loadMem_429a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a22 = call %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a22)
  store %struct.Memory* %call_429a22, %struct.Memory** %MEMORY

  ; Code: jmpq .L_429c34	 RIP: 429a25	 Bytes: 5
  %loadMem_429a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a25 = call %struct.Memory* @routine_jmpq_.L_429c34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a25, i64 527, i64 5)
  store %struct.Memory* %call_429a25, %struct.Memory** %MEMORY

  br label %block_.L_429c34

  ; Code: .L_429a2a:	 RIP: 429a2a	 Bytes: 0
block_.L_429a2a:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 429a2a	 Bytes: 4
  %loadMem_429a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a2a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a2a)
  store %struct.Memory* %call_429a2a, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 429a2e	 Bytes: 3
  %loadMem_429a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a2e = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a2e)
  store %struct.Memory* %call_429a2e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 429a31	 Bytes: 3
  %loadMem_429a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a31 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a31)
  store %struct.Memory* %call_429a31, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 429a34	 Bytes: 3
  %loadMem_429a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a34 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a34)
  store %struct.Memory* %call_429a34, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 429a37	 Bytes: 3
  %loadMem_429a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a37 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a37)
  store %struct.Memory* %call_429a37, %struct.Memory** %MEMORY

  ; Code: andl $0x20, %ecx	 RIP: 429a3a	 Bytes: 3
  %loadMem_429a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a3a = call %struct.Memory* @routine_andl__0x20___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a3a)
  store %struct.Memory* %call_429a3a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 429a3d	 Bytes: 3
  %loadMem_429a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a3d = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a3d)
  store %struct.Memory* %call_429a3d, %struct.Memory** %MEMORY

  ; Code: je .L_429b3b	 RIP: 429a40	 Bytes: 6
  %loadMem_429a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a40 = call %struct.Memory* @routine_je_.L_429b3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a40, i8* %BRANCH_TAKEN, i64 251, i64 6, i64 6)
  store %struct.Memory* %call_429a40, %struct.Memory** %MEMORY

  %loadBr_429a40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429a40 = icmp eq i8 %loadBr_429a40, 1
  br i1 %cmpBr_429a40, label %block_.L_429b3b, label %block_429a46

block_429a46:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429a46	 Bytes: 4
  %loadMem_429a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a46 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a46)
  store %struct.Memory* %call_429a46, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429a4a	 Bytes: 4
  %loadMem_429a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a4a = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a4a)
  store %struct.Memory* %call_429a4a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429a4e	 Bytes: 4
  %loadMem_429a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a4e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a4e)
  store %struct.Memory* %call_429a4e, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 429a52	 Bytes: 4
  %loadMem_429a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a52 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a52)
  store %struct.Memory* %call_429a52, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 429a56	 Bytes: 4
  %loadMem_429a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a56 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a56)
  store %struct.Memory* %call_429a56, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 429a5a	 Bytes: 3
  %loadMem_429a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a5a = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a5a)
  store %struct.Memory* %call_429a5a, %struct.Memory** %MEMORY

  ; Code: je .L_429b3b	 RIP: 429a5d	 Bytes: 6
  %loadMem_429a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a5d = call %struct.Memory* @routine_je_.L_429b3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a5d, i8* %BRANCH_TAKEN, i64 222, i64 6, i64 6)
  store %struct.Memory* %call_429a5d, %struct.Memory** %MEMORY

  %loadBr_429a5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429a5d = icmp eq i8 %loadBr_429a5d, 1
  br i1 %cmpBr_429a5d, label %block_.L_429b3b, label %block_429a63

block_429a63:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429a63	 Bytes: 4
  %loadMem_429a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a63 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a63)
  store %struct.Memory* %call_429a63, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429a67	 Bytes: 4
  %loadMem_429a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a67 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a67)
  store %struct.Memory* %call_429a67, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429a6b	 Bytes: 4
  %loadMem_429a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a6b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a6b)
  store %struct.Memory* %call_429a6b, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 429a6f	 Bytes: 4
  %loadMem_429a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a6f = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a6f)
  store %struct.Memory* %call_429a6f, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 429a73	 Bytes: 4
  %loadMem_429a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a73 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a73)
  store %struct.Memory* %call_429a73, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 429a77	 Bytes: 3
  %loadMem_429a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a77 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a77)
  store %struct.Memory* %call_429a77, %struct.Memory** %MEMORY

  ; Code: je .L_429b3b	 RIP: 429a7a	 Bytes: 6
  %loadMem_429a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a7a = call %struct.Memory* @routine_je_.L_429b3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a7a, i8* %BRANCH_TAKEN, i64 193, i64 6, i64 6)
  store %struct.Memory* %call_429a7a, %struct.Memory** %MEMORY

  %loadBr_429a7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429a7a = icmp eq i8 %loadBr_429a7a, 1
  br i1 %cmpBr_429a7a, label %block_.L_429b3b, label %block_429a80

block_429a80:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429a80	 Bytes: 4
  %loadMem_429a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a80 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a80)
  store %struct.Memory* %call_429a80, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429a84	 Bytes: 4
  %loadMem_429a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a84 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a84)
  store %struct.Memory* %call_429a84, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429a88	 Bytes: 4
  %loadMem_429a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a88 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a88)
  store %struct.Memory* %call_429a88, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 429a8c	 Bytes: 4
  %loadMem_429a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a8c = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a8c)
  store %struct.Memory* %call_429a8c, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 429a90	 Bytes: 4
  %loadMem_429a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a90 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a90)
  store %struct.Memory* %call_429a90, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 429a94	 Bytes: 3
  %loadMem_429a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a94 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a94)
  store %struct.Memory* %call_429a94, %struct.Memory** %MEMORY

  ; Code: je .L_429b3b	 RIP: 429a97	 Bytes: 6
  %loadMem_429a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a97 = call %struct.Memory* @routine_je_.L_429b3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a97, i8* %BRANCH_TAKEN, i64 164, i64 6, i64 6)
  store %struct.Memory* %call_429a97, %struct.Memory** %MEMORY

  %loadBr_429a97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429a97 = icmp eq i8 %loadBr_429a97, 1
  br i1 %cmpBr_429a97, label %block_.L_429b3b, label %block_429a9d

block_429a9d:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429a9d	 Bytes: 4
  %loadMem_429a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429a9d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429a9d)
  store %struct.Memory* %call_429a9d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429aa1	 Bytes: 4
  %loadMem_429aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429aa1 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429aa1)
  store %struct.Memory* %call_429aa1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429aa5	 Bytes: 4
  %loadMem_429aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429aa5 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429aa5)
  store %struct.Memory* %call_429aa5, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 429aa9	 Bytes: 4
  %loadMem_429aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429aa9 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429aa9)
  store %struct.Memory* %call_429aa9, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 429aad	 Bytes: 4
  %loadMem_429aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429aad = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429aad)
  store %struct.Memory* %call_429aad, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 429ab1	 Bytes: 3
  %loadMem_429ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ab1 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ab1)
  store %struct.Memory* %call_429ab1, %struct.Memory** %MEMORY

  ; Code: je .L_429b3b	 RIP: 429ab4	 Bytes: 6
  %loadMem_429ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ab4 = call %struct.Memory* @routine_je_.L_429b3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ab4, i8* %BRANCH_TAKEN, i64 135, i64 6, i64 6)
  store %struct.Memory* %call_429ab4, %struct.Memory** %MEMORY

  %loadBr_429ab4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429ab4 = icmp eq i8 %loadBr_429ab4, 1
  br i1 %cmpBr_429ab4, label %block_.L_429b3b, label %block_429aba

block_429aba:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429aba	 Bytes: 4
  %loadMem_429aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429aba = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429aba)
  store %struct.Memory* %call_429aba, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429abe	 Bytes: 4
  %loadMem_429abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429abe = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429abe)
  store %struct.Memory* %call_429abe, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429ac2	 Bytes: 4
  %loadMem_429ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ac2 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ac2)
  store %struct.Memory* %call_429ac2, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 429ac6	 Bytes: 4
  %loadMem_429ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ac6 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ac6)
  store %struct.Memory* %call_429ac6, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 429aca	 Bytes: 4
  %loadMem_429aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429aca = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429aca)
  store %struct.Memory* %call_429aca, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 429ace	 Bytes: 3
  %loadMem_429ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ace = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ace)
  store %struct.Memory* %call_429ace, %struct.Memory** %MEMORY

  ; Code: je .L_429b3b	 RIP: 429ad1	 Bytes: 6
  %loadMem_429ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ad1 = call %struct.Memory* @routine_je_.L_429b3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ad1, i8* %BRANCH_TAKEN, i64 106, i64 6, i64 6)
  store %struct.Memory* %call_429ad1, %struct.Memory** %MEMORY

  %loadBr_429ad1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429ad1 = icmp eq i8 %loadBr_429ad1, 1
  br i1 %cmpBr_429ad1, label %block_.L_429b3b, label %block_429ad7

block_429ad7:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 429ad7	 Bytes: 4
  %loadMem_429ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ad7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ad7)
  store %struct.Memory* %call_429ad7, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429adb	 Bytes: 4
  %loadMem_429adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429adb = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429adb)
  store %struct.Memory* %call_429adb, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429adf	 Bytes: 4
  %loadMem_429adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429adf = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429adf)
  store %struct.Memory* %call_429adf, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 429ae3	 Bytes: 4
  %loadMem_429ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ae3 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ae3)
  store %struct.Memory* %call_429ae3, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429ae7	 Bytes: 4
  %loadMem_429ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ae7 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ae7)
  store %struct.Memory* %call_429ae7, %struct.Memory** %MEMORY

  ; Code: movb $0x8, (%rax,%rcx,1)	 RIP: 429aeb	 Bytes: 4
  %loadMem_429aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429aeb = call %struct.Memory* @routine_movb__0x8____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429aeb)
  store %struct.Memory* %call_429aeb, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 429aef	 Bytes: 4
  %loadMem_429aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429aef = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429aef)
  store %struct.Memory* %call_429aef, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429af3	 Bytes: 4
  %loadMem_429af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429af3 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429af3)
  store %struct.Memory* %call_429af3, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429af7	 Bytes: 4
  %loadMem_429af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429af7 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429af7)
  store %struct.Memory* %call_429af7, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 429afb	 Bytes: 4
  %loadMem_429afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429afb = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429afb)
  store %struct.Memory* %call_429afb, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429aff	 Bytes: 4
  %loadMem_429aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429aff = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429aff)
  store %struct.Memory* %call_429aff, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 429b03	 Bytes: 7
  %loadMem_429b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b03 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b03)
  store %struct.Memory* %call_429b03, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edx	 RIP: 429b0a	 Bytes: 3
  %loadMem_429b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b0a = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b0a)
  store %struct.Memory* %call_429b0a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 429b0d	 Bytes: 4
  %loadMem_429b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b0d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b0d)
  store %struct.Memory* %call_429b0d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429b11	 Bytes: 4
  %loadMem_429b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b11 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b11)
  store %struct.Memory* %call_429b11, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429b15	 Bytes: 4
  %loadMem_429b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b15 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b15)
  store %struct.Memory* %call_429b15, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 429b19	 Bytes: 4
  %loadMem_429b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b19 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b19)
  store %struct.Memory* %call_429b19, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429b1d	 Bytes: 4
  %loadMem_429b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b1d = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b1d)
  store %struct.Memory* %call_429b1d, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 429b21	 Bytes: 3
  %loadMem_429b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b21 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b21)
  store %struct.Memory* %call_429b21, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edx	 RIP: 429b24	 Bytes: 3
  %loadMem_429b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b24 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b24)
  store %struct.Memory* %call_429b24, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 429b27	 Bytes: 3
  %loadMem_429b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b27 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b27)
  store %struct.Memory* %call_429b27, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x30(%rbp)	 RIP: 429b2a	 Bytes: 3
  %loadMem_429b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b2a = call %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b2a)
  store %struct.Memory* %call_429b2a, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 429b2d	 Bytes: 3
  %loadMem_429b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b2d = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b2d)
  store %struct.Memory* %call_429b2d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 429b30	 Bytes: 3
  %loadMem_429b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b30 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b30)
  store %struct.Memory* %call_429b30, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3c(%rbp)	 RIP: 429b33	 Bytes: 3
  %loadMem_429b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b33 = call %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b33)
  store %struct.Memory* %call_429b33, %struct.Memory** %MEMORY

  ; Code: jmpq .L_429c2f	 RIP: 429b36	 Bytes: 5
  %loadMem_429b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b36 = call %struct.Memory* @routine_jmpq_.L_429c2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b36, i64 249, i64 5)
  store %struct.Memory* %call_429b36, %struct.Memory** %MEMORY

  br label %block_.L_429c2f

  ; Code: .L_429b3b:	 RIP: 429b3b	 Bytes: 0
block_.L_429b3b:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 429b3b	 Bytes: 4
  %loadMem_429b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b3b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b3b)
  store %struct.Memory* %call_429b3b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429b3f	 Bytes: 4
  %loadMem_429b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b3f = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b3f)
  store %struct.Memory* %call_429b3f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429b43	 Bytes: 4
  %loadMem_429b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b43 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b43)
  store %struct.Memory* %call_429b43, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 429b47	 Bytes: 4
  %loadMem_429b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b47 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b47)
  store %struct.Memory* %call_429b47, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 429b4b	 Bytes: 4
  %loadMem_429b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b4b = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b4b)
  store %struct.Memory* %call_429b4b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 429b4f	 Bytes: 3
  %loadMem_429b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b4f = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b4f)
  store %struct.Memory* %call_429b4f, %struct.Memory** %MEMORY

  ; Code: je .L_429c2a	 RIP: 429b52	 Bytes: 6
  %loadMem_429b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b52 = call %struct.Memory* @routine_je_.L_429c2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b52, i8* %BRANCH_TAKEN, i64 216, i64 6, i64 6)
  store %struct.Memory* %call_429b52, %struct.Memory** %MEMORY

  %loadBr_429b52 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429b52 = icmp eq i8 %loadBr_429b52, 1
  br i1 %cmpBr_429b52, label %block_.L_429c2a, label %block_429b58

block_429b58:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429b58	 Bytes: 4
  %loadMem_429b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b58 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b58)
  store %struct.Memory* %call_429b58, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429b5c	 Bytes: 4
  %loadMem_429b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b5c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b5c)
  store %struct.Memory* %call_429b5c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429b60	 Bytes: 4
  %loadMem_429b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b60 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b60)
  store %struct.Memory* %call_429b60, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 429b64	 Bytes: 4
  %loadMem_429b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b64 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b64)
  store %struct.Memory* %call_429b64, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 429b68	 Bytes: 4
  %loadMem_429b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b68 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b68)
  store %struct.Memory* %call_429b68, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 429b6c	 Bytes: 3
  %loadMem_429b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b6c = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b6c)
  store %struct.Memory* %call_429b6c, %struct.Memory** %MEMORY

  ; Code: je .L_429c2a	 RIP: 429b6f	 Bytes: 6
  %loadMem_429b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b6f = call %struct.Memory* @routine_je_.L_429c2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b6f, i8* %BRANCH_TAKEN, i64 187, i64 6, i64 6)
  store %struct.Memory* %call_429b6f, %struct.Memory** %MEMORY

  %loadBr_429b6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429b6f = icmp eq i8 %loadBr_429b6f, 1
  br i1 %cmpBr_429b6f, label %block_.L_429c2a, label %block_429b75

block_429b75:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429b75	 Bytes: 4
  %loadMem_429b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b75 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b75)
  store %struct.Memory* %call_429b75, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429b79	 Bytes: 4
  %loadMem_429b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b79 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b79)
  store %struct.Memory* %call_429b79, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429b7d	 Bytes: 4
  %loadMem_429b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b7d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b7d)
  store %struct.Memory* %call_429b7d, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 429b81	 Bytes: 4
  %loadMem_429b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b81 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b81)
  store %struct.Memory* %call_429b81, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 429b85	 Bytes: 4
  %loadMem_429b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b85 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b85)
  store %struct.Memory* %call_429b85, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 429b89	 Bytes: 3
  %loadMem_429b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b89 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b89)
  store %struct.Memory* %call_429b89, %struct.Memory** %MEMORY

  ; Code: je .L_429c2a	 RIP: 429b8c	 Bytes: 6
  %loadMem_429b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b8c = call %struct.Memory* @routine_je_.L_429c2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b8c, i8* %BRANCH_TAKEN, i64 158, i64 6, i64 6)
  store %struct.Memory* %call_429b8c, %struct.Memory** %MEMORY

  %loadBr_429b8c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429b8c = icmp eq i8 %loadBr_429b8c, 1
  br i1 %cmpBr_429b8c, label %block_.L_429c2a, label %block_429b92

block_429b92:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429b92	 Bytes: 4
  %loadMem_429b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b92 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b92)
  store %struct.Memory* %call_429b92, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429b96	 Bytes: 4
  %loadMem_429b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b96 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b96)
  store %struct.Memory* %call_429b96, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429b9a	 Bytes: 4
  %loadMem_429b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b9a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b9a)
  store %struct.Memory* %call_429b9a, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 429b9e	 Bytes: 4
  %loadMem_429b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429b9e = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429b9e)
  store %struct.Memory* %call_429b9e, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 429ba2	 Bytes: 4
  %loadMem_429ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ba2 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ba2)
  store %struct.Memory* %call_429ba2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 429ba6	 Bytes: 3
  %loadMem_429ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ba6 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ba6)
  store %struct.Memory* %call_429ba6, %struct.Memory** %MEMORY

  ; Code: je .L_429c2a	 RIP: 429ba9	 Bytes: 6
  %loadMem_429ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ba9 = call %struct.Memory* @routine_je_.L_429c2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ba9, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_429ba9, %struct.Memory** %MEMORY

  %loadBr_429ba9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429ba9 = icmp eq i8 %loadBr_429ba9, 1
  br i1 %cmpBr_429ba9, label %block_.L_429c2a, label %block_429baf

block_429baf:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429baf	 Bytes: 4
  %loadMem_429baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429baf = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429baf)
  store %struct.Memory* %call_429baf, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429bb3	 Bytes: 4
  %loadMem_429bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bb3 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bb3)
  store %struct.Memory* %call_429bb3, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429bb7	 Bytes: 4
  %loadMem_429bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bb7 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bb7)
  store %struct.Memory* %call_429bb7, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 429bbb	 Bytes: 4
  %loadMem_429bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bbb = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bbb)
  store %struct.Memory* %call_429bbb, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 429bbf	 Bytes: 4
  %loadMem_429bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bbf = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bbf)
  store %struct.Memory* %call_429bbf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 429bc3	 Bytes: 3
  %loadMem_429bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bc3 = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bc3)
  store %struct.Memory* %call_429bc3, %struct.Memory** %MEMORY

  ; Code: je .L_429c2a	 RIP: 429bc6	 Bytes: 6
  %loadMem_429bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bc6 = call %struct.Memory* @routine_je_.L_429c2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bc6, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_429bc6, %struct.Memory** %MEMORY

  %loadBr_429bc6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429bc6 = icmp eq i8 %loadBr_429bc6, 1
  br i1 %cmpBr_429bc6, label %block_.L_429c2a, label %block_429bcc

block_429bcc:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 429bcc	 Bytes: 4
  %loadMem_429bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bcc = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bcc)
  store %struct.Memory* %call_429bcc, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429bd0	 Bytes: 4
  %loadMem_429bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bd0 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bd0)
  store %struct.Memory* %call_429bd0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429bd4	 Bytes: 4
  %loadMem_429bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bd4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bd4)
  store %struct.Memory* %call_429bd4, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 429bd8	 Bytes: 4
  %loadMem_429bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bd8 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bd8)
  store %struct.Memory* %call_429bd8, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429bdc	 Bytes: 4
  %loadMem_429bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bdc = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bdc)
  store %struct.Memory* %call_429bdc, %struct.Memory** %MEMORY

  ; Code: movb $0x3, (%rax,%rcx,1)	 RIP: 429be0	 Bytes: 4
  %loadMem_429be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429be0 = call %struct.Memory* @routine_movb__0x3____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429be0)
  store %struct.Memory* %call_429be0, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 429be4	 Bytes: 3
  %loadMem_429be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429be4 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429be4)
  store %struct.Memory* %call_429be4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 429be7	 Bytes: 4
  %loadMem_429be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429be7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429be7)
  store %struct.Memory* %call_429be7, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429beb	 Bytes: 4
  %loadMem_429beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429beb = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429beb)
  store %struct.Memory* %call_429beb, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429bef	 Bytes: 4
  %loadMem_429bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bef = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bef)
  store %struct.Memory* %call_429bef, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 429bf3	 Bytes: 4
  %loadMem_429bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bf3 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bf3)
  store %struct.Memory* %call_429bf3, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429bf7	 Bytes: 4
  %loadMem_429bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bf7 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bf7)
  store %struct.Memory* %call_429bf7, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 429bfb	 Bytes: 3
  %loadMem_429bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bfb = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bfb)
  store %struct.Memory* %call_429bfb, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edx	 RIP: 429bfe	 Bytes: 3
  %loadMem_429bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429bfe = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429bfe)
  store %struct.Memory* %call_429bfe, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 429c01	 Bytes: 4
  %loadMem_429c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c01 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c01)
  store %struct.Memory* %call_429c01, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429c05	 Bytes: 4
  %loadMem_429c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c05 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c05)
  store %struct.Memory* %call_429c05, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429c09	 Bytes: 4
  %loadMem_429c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c09 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c09)
  store %struct.Memory* %call_429c09, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 429c0d	 Bytes: 4
  %loadMem_429c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c0d = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c0d)
  store %struct.Memory* %call_429c0d, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429c11	 Bytes: 4
  %loadMem_429c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c11 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c11)
  store %struct.Memory* %call_429c11, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 429c15	 Bytes: 3
  %loadMem_429c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c15 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c15)
  store %struct.Memory* %call_429c15, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edx	 RIP: 429c18	 Bytes: 3
  %loadMem_429c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c18 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c18)
  store %struct.Memory* %call_429c18, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 429c1b	 Bytes: 3
  %loadMem_429c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c1b = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c1b)
  store %struct.Memory* %call_429c1b, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x30(%rbp)	 RIP: 429c1e	 Bytes: 3
  %loadMem_429c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c1e = call %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c1e)
  store %struct.Memory* %call_429c1e, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 429c21	 Bytes: 3
  %loadMem_429c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c21 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c21)
  store %struct.Memory* %call_429c21, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 429c24	 Bytes: 3
  %loadMem_429c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c24 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c24)
  store %struct.Memory* %call_429c24, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3c(%rbp)	 RIP: 429c27	 Bytes: 3
  %loadMem_429c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c27 = call %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c27)
  store %struct.Memory* %call_429c27, %struct.Memory** %MEMORY

  ; Code: .L_429c2a:	 RIP: 429c2a	 Bytes: 0
  br label %block_.L_429c2a
block_.L_429c2a:

  ; Code: jmpq .L_429c2f	 RIP: 429c2a	 Bytes: 5
  %loadMem_429c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c2a = call %struct.Memory* @routine_jmpq_.L_429c2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c2a, i64 5, i64 5)
  store %struct.Memory* %call_429c2a, %struct.Memory** %MEMORY

  br label %block_.L_429c2f

  ; Code: .L_429c2f:	 RIP: 429c2f	 Bytes: 0
block_.L_429c2f:

  ; Code: jmpq .L_429c34	 RIP: 429c2f	 Bytes: 5
  %loadMem_429c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c2f = call %struct.Memory* @routine_jmpq_.L_429c34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c2f, i64 5, i64 5)
  store %struct.Memory* %call_429c2f, %struct.Memory** %MEMORY

  br label %block_.L_429c34

  ; Code: .L_429c34:	 RIP: 429c34	 Bytes: 0
block_.L_429c34:

  ; Code: jmpq .L_429c39	 RIP: 429c34	 Bytes: 5
  %loadMem_429c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c34 = call %struct.Memory* @routine_jmpq_.L_429c39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c34, i64 5, i64 5)
  store %struct.Memory* %call_429c34, %struct.Memory** %MEMORY

  br label %block_.L_429c39

  ; Code: .L_429c39:	 RIP: 429c39	 Bytes: 0
block_.L_429c39:

  ; Code: jmpq .L_429c3e	 RIP: 429c39	 Bytes: 5
  %loadMem_429c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c39 = call %struct.Memory* @routine_jmpq_.L_429c3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c39, i64 5, i64 5)
  store %struct.Memory* %call_429c39, %struct.Memory** %MEMORY

  br label %block_.L_429c3e

  ; Code: .L_429c3e:	 RIP: 429c3e	 Bytes: 0
block_.L_429c3e:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 429c3e	 Bytes: 4
  %loadMem_429c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c3e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c3e)
  store %struct.Memory* %call_429c3e, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 429c42	 Bytes: 3
  %loadMem_429c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c42 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c42)
  store %struct.Memory* %call_429c42, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 429c45	 Bytes: 3
  %loadMem_429c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c45 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c45)
  store %struct.Memory* %call_429c45, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 429c48	 Bytes: 3
  %loadMem_429c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c48 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c48)
  store %struct.Memory* %call_429c48, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 429c4b	 Bytes: 3
  %loadMem_429c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c4b = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c4b)
  store %struct.Memory* %call_429c4b, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %ecx	 RIP: 429c4e	 Bytes: 3
  %loadMem_429c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c4e = call %struct.Memory* @routine_andl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c4e)
  store %struct.Memory* %call_429c4e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 429c51	 Bytes: 3
  %loadMem_429c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c51 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c51)
  store %struct.Memory* %call_429c51, %struct.Memory** %MEMORY

  ; Code: je .L_429d41	 RIP: 429c54	 Bytes: 6
  %loadMem_429c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c54 = call %struct.Memory* @routine_je_.L_429d41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c54, i8* %BRANCH_TAKEN, i64 237, i64 6, i64 6)
  store %struct.Memory* %call_429c54, %struct.Memory** %MEMORY

  %loadBr_429c54 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429c54 = icmp eq i8 %loadBr_429c54, 1
  br i1 %cmpBr_429c54, label %block_.L_429d41, label %block_429c5a

block_429c5a:
  ; Code: jmpq .L_429c5f	 RIP: 429c5a	 Bytes: 5
  %loadMem_429c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c5a = call %struct.Memory* @routine_jmpq_.L_429c5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c5a, i64 5, i64 5)
  store %struct.Memory* %call_429c5a, %struct.Memory** %MEMORY

  br label %block_.L_429c5f

  ; Code: .L_429c5f:	 RIP: 429c5f	 Bytes: 0
block_.L_429c5f:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 429c5f	 Bytes: 4
  %loadMem_429c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c5f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c5f)
  store %struct.Memory* %call_429c5f, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429c63	 Bytes: 4
  %loadMem_429c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c63 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c63)
  store %struct.Memory* %call_429c63, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429c67	 Bytes: 4
  %loadMem_429c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c67 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c67)
  store %struct.Memory* %call_429c67, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 429c6b	 Bytes: 4
  %loadMem_429c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c6b = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c6b)
  store %struct.Memory* %call_429c6b, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 429c6f	 Bytes: 3
  %loadMem_429c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c6f = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c6f)
  store %struct.Memory* %call_429c6f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 429c72	 Bytes: 3
  %loadMem_429c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c72 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c72)
  store %struct.Memory* %call_429c72, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 429c75	 Bytes: 3
  %loadMem_429c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c75 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c75)
  store %struct.Memory* %call_429c75, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 429c78	 Bytes: 4
  %loadMem_429c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c78 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c78)
  store %struct.Memory* %call_429c78, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %edx	 RIP: 429c7c	 Bytes: 3
  %loadMem_429c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c7c = call %struct.Memory* @routine_cmpl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c7c)
  store %struct.Memory* %call_429c7c, %struct.Memory** %MEMORY

  ; Code: jne .L_429c93	 RIP: 429c7f	 Bytes: 6
  %loadMem_429c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c7f = call %struct.Memory* @routine_jne_.L_429c93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c7f, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_429c7f, %struct.Memory** %MEMORY

  %loadBr_429c7f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429c7f = icmp eq i8 %loadBr_429c7f, 1
  br i1 %cmpBr_429c7f, label %block_.L_429c93, label %block_429c85

block_429c85:
  ; Code: movl -0x3c(%rbp), %eax	 RIP: 429c85	 Bytes: 3
  %loadMem_429c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c85 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c85)
  store %struct.Memory* %call_429c85, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 429c88	 Bytes: 3
  %loadMem_429c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c88 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c88)
  store %struct.Memory* %call_429c88, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 429c8b	 Bytes: 3
  %loadMem_429c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c8b = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c8b)
  store %struct.Memory* %call_429c8b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_429c5f	 RIP: 429c8e	 Bytes: 5
  %loadMem_429c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c8e = call %struct.Memory* @routine_jmpq_.L_429c5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c8e, i64 -47, i64 5)
  store %struct.Memory* %call_429c8e, %struct.Memory** %MEMORY

  br label %block_.L_429c5f

  ; Code: .L_429c93:	 RIP: 429c93	 Bytes: 0
block_.L_429c93:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 429c93	 Bytes: 4
  %loadMem_429c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c93 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c93)
  store %struct.Memory* %call_429c93, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429c97	 Bytes: 4
  %loadMem_429c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c97 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c97)
  store %struct.Memory* %call_429c97, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429c9b	 Bytes: 4
  %loadMem_429c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c9b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c9b)
  store %struct.Memory* %call_429c9b, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 429c9f	 Bytes: 4
  %loadMem_429c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429c9f = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429c9f)
  store %struct.Memory* %call_429c9f, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429ca3	 Bytes: 4
  %loadMem_429ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ca3 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ca3)
  store %struct.Memory* %call_429ca3, %struct.Memory** %MEMORY

  ; Code: movb $0x7, (%rax,%rcx,1)	 RIP: 429ca7	 Bytes: 4
  %loadMem_429ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ca7 = call %struct.Memory* @routine_movb__0x7____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ca7)
  store %struct.Memory* %call_429ca7, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 429cab	 Bytes: 4
  %loadMem_429cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cab = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cab)
  store %struct.Memory* %call_429cab, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429caf	 Bytes: 4
  %loadMem_429caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429caf = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429caf)
  store %struct.Memory* %call_429caf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429cb3	 Bytes: 4
  %loadMem_429cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cb3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cb3)
  store %struct.Memory* %call_429cb3, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 429cb7	 Bytes: 4
  %loadMem_429cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cb7 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cb7)
  store %struct.Memory* %call_429cb7, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429cbb	 Bytes: 4
  %loadMem_429cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cbb = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cbb)
  store %struct.Memory* %call_429cbb, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 429cbf	 Bytes: 7
  %loadMem_429cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cbf = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cbf)
  store %struct.Memory* %call_429cbf, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 429cc6	 Bytes: 4
  %loadMem_429cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cc6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cc6)
  store %struct.Memory* %call_429cc6, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429cca	 Bytes: 4
  %loadMem_429cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cca = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cca)
  store %struct.Memory* %call_429cca, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429cce	 Bytes: 4
  %loadMem_429cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cce = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cce)
  store %struct.Memory* %call_429cce, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 429cd2	 Bytes: 4
  %loadMem_429cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cd2 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cd2)
  store %struct.Memory* %call_429cd2, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429cd6	 Bytes: 4
  %loadMem_429cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cd6 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cd6)
  store %struct.Memory* %call_429cd6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 429cda	 Bytes: 7
  %loadMem_429cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cda = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cda)
  store %struct.Memory* %call_429cda, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 429ce1	 Bytes: 3
  %loadMem_429ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ce1 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ce1)
  store %struct.Memory* %call_429ce1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 429ce4	 Bytes: 3
  %loadMem_429ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ce4 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ce4)
  store %struct.Memory* %call_429ce4, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3c(%rbp)	 RIP: 429ce7	 Bytes: 3
  %loadMem_429ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ce7 = call %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ce7)
  store %struct.Memory* %call_429ce7, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 429cea	 Bytes: 4
  %loadMem_429cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cea = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cea)
  store %struct.Memory* %call_429cea, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429cee	 Bytes: 4
  %loadMem_429cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cee = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cee)
  store %struct.Memory* %call_429cee, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429cf2	 Bytes: 4
  %loadMem_429cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cf2 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cf2)
  store %struct.Memory* %call_429cf2, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 429cf6	 Bytes: 4
  %loadMem_429cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cf6 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cf6)
  store %struct.Memory* %call_429cf6, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429cfa	 Bytes: 4
  %loadMem_429cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cfa = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cfa)
  store %struct.Memory* %call_429cfa, %struct.Memory** %MEMORY

  ; Code: movb $0x8, (%rax,%rcx,1)	 RIP: 429cfe	 Bytes: 4
  %loadMem_429cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429cfe = call %struct.Memory* @routine_movb__0x8____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429cfe)
  store %struct.Memory* %call_429cfe, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 429d02	 Bytes: 4
  %loadMem_429d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d02 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d02)
  store %struct.Memory* %call_429d02, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429d06	 Bytes: 4
  %loadMem_429d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d06 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d06)
  store %struct.Memory* %call_429d06, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429d0a	 Bytes: 4
  %loadMem_429d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d0a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d0a)
  store %struct.Memory* %call_429d0a, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 429d0e	 Bytes: 4
  %loadMem_429d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d0e = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d0e)
  store %struct.Memory* %call_429d0e, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429d12	 Bytes: 4
  %loadMem_429d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d12 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d12)
  store %struct.Memory* %call_429d12, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 429d16	 Bytes: 7
  %loadMem_429d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d16 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d16)
  store %struct.Memory* %call_429d16, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 429d1d	 Bytes: 4
  %loadMem_429d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d1d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d1d)
  store %struct.Memory* %call_429d1d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 429d21	 Bytes: 4
  %loadMem_429d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d21 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d21)
  store %struct.Memory* %call_429d21, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 429d25	 Bytes: 4
  %loadMem_429d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d25 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d25)
  store %struct.Memory* %call_429d25, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 429d29	 Bytes: 4
  %loadMem_429d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d29 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d29)
  store %struct.Memory* %call_429d29, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 429d2d	 Bytes: 4
  %loadMem_429d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d2d = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d2d)
  store %struct.Memory* %call_429d2d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 429d31	 Bytes: 7
  %loadMem_429d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d31 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d31)
  store %struct.Memory* %call_429d31, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 429d38	 Bytes: 3
  %loadMem_429d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d38 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d38)
  store %struct.Memory* %call_429d38, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 429d3b	 Bytes: 3
  %loadMem_429d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d3b = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d3b)
  store %struct.Memory* %call_429d3b, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3c(%rbp)	 RIP: 429d3e	 Bytes: 3
  %loadMem_429d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d3e = call %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d3e)
  store %struct.Memory* %call_429d3e, %struct.Memory** %MEMORY

  ; Code: .L_429d41:	 RIP: 429d41	 Bytes: 0
  br label %block_.L_429d41
block_.L_429d41:

  ; Code: jmpq .L_429d46	 RIP: 429d41	 Bytes: 5
  %loadMem_429d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d41 = call %struct.Memory* @routine_jmpq_.L_429d46(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d41, i64 5, i64 5)
  store %struct.Memory* %call_429d41, %struct.Memory** %MEMORY

  br label %block_.L_429d46

  ; Code: .L_429d46:	 RIP: 429d46	 Bytes: 0
block_.L_429d46:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 429d46	 Bytes: 3
  %loadMem_429d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d46 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d46)
  store %struct.Memory* %call_429d46, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 429d49	 Bytes: 3
  %loadMem_429d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d49 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d49)
  store %struct.Memory* %call_429d49, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 429d4c	 Bytes: 3
  %loadMem_429d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d4c = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d4c)
  store %struct.Memory* %call_429d4c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4296c3	 RIP: 429d4f	 Bytes: 5
  %loadMem_429d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d4f = call %struct.Memory* @routine_jmpq_.L_4296c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d4f, i64 -1676, i64 5)
  store %struct.Memory* %call_429d4f, %struct.Memory** %MEMORY

  br label %block_.L_4296c3

  ; Code: .L_429d54:	 RIP: 429d54	 Bytes: 0
block_.L_429d54:

  ; Code: xorl %eax, %eax	 RIP: 429d54	 Bytes: 2
  %loadMem_429d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d54 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d54)
  store %struct.Memory* %call_429d54, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 429d56	 Bytes: 2
  %loadMem_429d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d56 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d56)
  store %struct.Memory* %call_429d56, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 429d58	 Bytes: 4
  %loadMem_429d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d58 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d58)
  store %struct.Memory* %call_429d58, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 429d5c	 Bytes: 4
  %loadMem_429d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d5c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d5c)
  store %struct.Memory* %call_429d5c, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 429d60	 Bytes: 4
  %loadMem_429d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d60 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d60)
  store %struct.Memory* %call_429d60, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 429d64	 Bytes: 4
  %loadMem_429d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d64 = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d64)
  store %struct.Memory* %call_429d64, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rsi	 RIP: 429d68	 Bytes: 4
  %loadMem_429d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d68 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d68)
  store %struct.Memory* %call_429d68, %struct.Memory** %MEMORY

  ; Code: movb $0x9, (%rdx,%rsi,1)	 RIP: 429d6c	 Bytes: 4
  %loadMem_429d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d6c = call %struct.Memory* @routine_movb__0x9____rdx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d6c)
  store %struct.Memory* %call_429d6c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 429d70	 Bytes: 4
  %loadMem_429d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d70 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d70)
  store %struct.Memory* %call_429d70, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 429d74	 Bytes: 4
  %loadMem_429d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d74 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d74)
  store %struct.Memory* %call_429d74, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 429d78	 Bytes: 4
  %loadMem_429d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d78 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d78)
  store %struct.Memory* %call_429d78, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rdx), %rdx	 RIP: 429d7c	 Bytes: 4
  %loadMem_429d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d7c = call %struct.Memory* @routine_movq_0x10__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d7c)
  store %struct.Memory* %call_429d7c, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rsi	 RIP: 429d80	 Bytes: 4
  %loadMem_429d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d80 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d80)
  store %struct.Memory* %call_429d80, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rdx,%rsi,4)	 RIP: 429d84	 Bytes: 7
  %loadMem_429d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d84 = call %struct.Memory* @routine_movl__0x0____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d84)
  store %struct.Memory* %call_429d84, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 429d8b	 Bytes: 4
  %loadMem_429d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d8b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d8b)
  store %struct.Memory* %call_429d8b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 429d8f	 Bytes: 4
  %loadMem_429d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d8f = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d8f)
  store %struct.Memory* %call_429d8f, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 429d93	 Bytes: 4
  %loadMem_429d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d93 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d93)
  store %struct.Memory* %call_429d93, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rdx), %rdx	 RIP: 429d97	 Bytes: 4
  %loadMem_429d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d97 = call %struct.Memory* @routine_movq_0x18__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d97)
  store %struct.Memory* %call_429d97, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rsi	 RIP: 429d9b	 Bytes: 4
  %loadMem_429d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d9b = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d9b)
  store %struct.Memory* %call_429d9b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rdx,%rsi,4)	 RIP: 429d9f	 Bytes: 7
  %loadMem_429d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429d9f = call %struct.Memory* @routine_movl__0x0____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429d9f)
  store %struct.Memory* %call_429d9f, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 429da6	 Bytes: 3
  %loadMem_429da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429da6 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429da6)
  store %struct.Memory* %call_429da6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 429da9	 Bytes: 3
  %loadMem_429da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429da9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429da9)
  store %struct.Memory* %call_429da9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 429dac	 Bytes: 3
  %loadMem_429dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429dac = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429dac)
  store %struct.Memory* %call_429dac, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 429daf	 Bytes: 4
  %loadMem_429daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429daf = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429daf)
  store %struct.Memory* %call_429daf, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 429db3	 Bytes: 4
  %loadMem_429db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429db3 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429db3)
  store %struct.Memory* %call_429db3, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 429db7	 Bytes: 4
  %loadMem_429db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429db7 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429db7)
  store %struct.Memory* %call_429db7, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx)	 RIP: 429dbb	 Bytes: 2
  %loadMem_429dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429dbb = call %struct.Memory* @routine_movl__eax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429dbb)
  store %struct.Memory* %call_429dbb, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 429dbd	 Bytes: 4
  %loadMem_429dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429dbd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429dbd)
  store %struct.Memory* %call_429dbd, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 429dc1	 Bytes: 4
  %loadMem_429dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429dc1 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429dc1)
  store %struct.Memory* %call_429dc1, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdi	 RIP: 429dc5	 Bytes: 4
  %loadMem_429dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429dc5 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429dc5)
  store %struct.Memory* %call_429dc5, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 429dc9	 Bytes: 3
  %loadMem_429dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429dc9 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429dc9)
  store %struct.Memory* %call_429dc9, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 429dcc	 Bytes: 3
  %loadMem_429dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429dcc = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429dcc)
  store %struct.Memory* %call_429dcc, %struct.Memory** %MEMORY

  ; Code: callq .trace_doctor	 RIP: 429dcf	 Bytes: 5
  %loadMem1_429dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_429dcf = call %struct.Memory* @routine_callq_.trace_doctor(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_429dcf, i64 2289, i64 5, i64 5)
  store %struct.Memory* %call1_429dcf, %struct.Memory** %MEMORY

  %loadMem2_429dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_429dcf = load i64, i64* %3
  %call2_429dcf = call %struct.Memory* @sub_42a6c0.trace_doctor(%struct.State* %0, i64  %loadPC_429dcf, %struct.Memory* %loadMem2_429dcf)
  store %struct.Memory* %call2_429dcf, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 429dd4	 Bytes: 3
  %loadMem_429dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429dd4 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429dd4)
  store %struct.Memory* %call_429dd4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 429dd7	 Bytes: 3
  %loadMem_429dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429dd7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429dd7)
  store %struct.Memory* %call_429dd7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 429dda	 Bytes: 3
  %loadMem_429dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429dda = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429dda)
  store %struct.Memory* %call_429dda, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4295fb	 RIP: 429ddd	 Bytes: 5
  %loadMem_429ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ddd = call %struct.Memory* @routine_jmpq_.L_4295fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ddd, i64 -2018, i64 5)
  store %struct.Memory* %call_429ddd, %struct.Memory** %MEMORY

  br label %block_.L_4295fb

  ; Code: .L_429de2:	 RIP: 429de2	 Bytes: 0
block_.L_429de2:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 429de2	 Bytes: 4
  %loadMem_429de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429de2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429de2)
  store %struct.Memory* %call_429de2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 429de6	 Bytes: 4
  %loadMem_429de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429de6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429de6)
  store %struct.Memory* %call_429de6, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 429dea	 Bytes: 3
  %loadMem_429dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429dea = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429dea)
  store %struct.Memory* %call_429dea, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rsp	 RIP: 429ded	 Bytes: 4
  %loadMem_429ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ded = call %struct.Memory* @routine_addq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ded)
  store %struct.Memory* %call_429ded, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 429df1	 Bytes: 1
  %loadMem_429df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429df1 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429df1)
  store %struct.Memory* %call_429df1, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 429df2	 Bytes: 1
  %loadMem_429df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429df2 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429df2)
  store %struct.Memory* %call_429df2, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_429df2
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

define %struct.Memory* @routine_subq__0x40___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 64)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x45863c___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45863c_type* @G__0x45863c to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x25f___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 607)
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


define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %R8
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


define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_jge_.L_429de2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addl__0x6___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 6)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_addq__rdx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__rcx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x4____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 4)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
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












define %struct.Memory* @routine_movb__0x5__0x1__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movl__0x0__0x4__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl__0x2__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 16
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_429d54(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 0)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_andl__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2)
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

define %struct.Memory* @routine_je_.L_42975a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movb__0x6____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 6)
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






define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_je_.L_429873(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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










define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__0x1____rcx__rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 1)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_429c3e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_je_.L_429919(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsbl___rcx__rdx_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %17)
  ret %struct.Memory* %20
}


define %struct.Memory* @routine_cmpl__0x6___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_429914(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movb__0x2____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 2)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}




















define %struct.Memory* @routine_jmpq_.L_429c39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_andl__0x10___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 16)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_429a2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















































































define %struct.Memory* @routine_movb__0x5____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 5)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_429c34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_andl__0x20___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 32)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_429b3b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















































































define %struct.Memory* @routine_movb__0x8____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 8)
  ret %struct.Memory* %17
}








































define %struct.Memory* @routine_jmpq_.L_429c2f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_je_.L_429c2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




































































define %struct.Memory* @routine_movb__0x3____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 3)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_je_.L_429d41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_429c5f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_cmpl__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jne_.L_429c93(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_movb__0x7____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 7)
  ret %struct.Memory* %17
}










































































define %struct.Memory* @routine_jmpq_.L_429d46(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4296c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__0x9____rdx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 9)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movq_0x10__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0____rdx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movq_0x18__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


















define %struct.Memory* @routine_movl__eax____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq___rdx__rsi_8____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.trace_doctor(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4295fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x40___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 64)
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

