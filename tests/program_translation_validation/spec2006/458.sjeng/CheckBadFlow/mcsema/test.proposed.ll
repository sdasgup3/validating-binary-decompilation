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

declare %struct.Memory* @sub_4098e0.in_check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_407e30.gen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40b730.make(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_406680.check_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40c7a0.unmake(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x62daf0_type = type <{ [4 x i8] }>
@G_0x62daf0= global %G_0x62daf0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62daf4_type = type <{ [4 x i8] }>
@G_0x62daf4= global %G_0x62daf4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62daf8_type = type <{ [4 x i8] }>
@G_0x62daf8= global %G_0x62daf8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62dafc_type = type <{ [4 x i8] }>
@G_0x62dafc= global %G_0x62dafc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62db00_type = type <{ [4 x i8] }>
@G_0x62db00= global %G_0x62db00_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x85f150_type = type <{ [4 x i8] }>
@G_0x85f150= global %G_0x85f150_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8661bc_type = type <{ [1 x i8] }>
@G_0x8661bc= global %G_0x8661bc_type <{ [1 x i8] c"\00" }>
%G_0x86bd74_type = type <{ [4 x i8] }>
@G_0x86bd74= global %G_0x86bd74_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x886a60_type = type <{ [4 x i8] }>
@G_0x886a60= global %G_0x886a60_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x428cdb_type = type <{ [8 x i8] }>
@G__0x428cdb= global %G__0x428cdb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428d04_type = type <{ [8 x i8] }>
@G__0x428d04= global %G__0x428d04_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428d2d_type = type <{ [8 x i8] }>
@G__0x428d2d= global %G__0x428d2d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428d56_type = type <{ [8 x i8] }>
@G__0x428d56= global %G__0x428d56_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428d7f_type = type <{ [8 x i8] }>
@G__0x428d7f= global %G__0x428d7f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428da8_type = type <{ [8 x i8] }>
@G__0x428da8= global %G__0x428da8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428dbc_type = type <{ [8 x i8] }>
@G__0x428dbc= global %G__0x428dbc_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428dd0_type = type <{ [8 x i8] }>
@G__0x428dd0= global %G__0x428dd0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428de4_type = type <{ [8 x i8] }>
@G__0x428de4= global %G__0x428de4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428df8_type = type <{ [8 x i8] }>
@G__0x428df8= global %G__0x428df8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428e0c_type = type <{ [8 x i8] }>
@G__0x428e0c= global %G__0x428e0c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428e1d_type = type <{ [8 x i8] }>
@G__0x428e1d= global %G__0x428e1d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x85f170_type = type <{ [8 x i8] }>
@G__0x85f170= global %G__0x85f170_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @CheckBadFlow(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .CheckBadFlow:	 RIP: 411880	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 411880	 Bytes: 1
  %loadMem_411880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411880 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411880)
  store %struct.Memory* %call_411880, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 411881	 Bytes: 3
  %loadMem_411881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411881 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411881)
  store %struct.Memory* %call_411881, %struct.Memory** %MEMORY

  ; Code: subq $0x6090, %rsp	 RIP: 411884	 Bytes: 7
  %loadMem_411884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411884 = call %struct.Memory* @routine_subq__0x6090___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411884)
  store %struct.Memory* %call_411884, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 41188b	 Bytes: 3
  %loadMem_41188b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41188b = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41188b)
  store %struct.Memory* %call_41188b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x602c(%rbp)	 RIP: 41188e	 Bytes: 10
  %loadMem_41188e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41188e = call %struct.Memory* @routine_movl__0x0__MINUS0x602c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41188e)
  store %struct.Memory* %call_41188e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6030(%rbp)	 RIP: 411898	 Bytes: 10
  %loadMem_411898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411898 = call %struct.Memory* @routine_movl__0x0__MINUS0x6030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411898)
  store %struct.Memory* %call_411898, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6034(%rbp)	 RIP: 4118a2	 Bytes: 10
  %loadMem_4118a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4118a2 = call %struct.Memory* @routine_movl__0x0__MINUS0x6034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4118a2)
  store %struct.Memory* %call_4118a2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6038(%rbp)	 RIP: 4118ac	 Bytes: 10
  %loadMem_4118ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4118ac = call %struct.Memory* @routine_movl__0x0__MINUS0x6038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4118ac)
  store %struct.Memory* %call_4118ac, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x603c(%rbp)	 RIP: 4118b6	 Bytes: 10
  %loadMem_4118b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4118b6 = call %struct.Memory* @routine_movl__0x0__MINUS0x603c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4118b6)
  store %struct.Memory* %call_4118b6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6040(%rbp)	 RIP: 4118c0	 Bytes: 10
  %loadMem_4118c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4118c0 = call %struct.Memory* @routine_movl__0x0__MINUS0x6040__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4118c0)
  store %struct.Memory* %call_4118c0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6044(%rbp)	 RIP: 4118ca	 Bytes: 10
  %loadMem_4118ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4118ca = call %struct.Memory* @routine_movl__0x0__MINUS0x6044__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4118ca)
  store %struct.Memory* %call_4118ca, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6048(%rbp)	 RIP: 4118d4	 Bytes: 10
  %loadMem_4118d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4118d4 = call %struct.Memory* @routine_movl__0x0__MINUS0x6048__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4118d4)
  store %struct.Memory* %call_4118d4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x604c(%rbp)	 RIP: 4118de	 Bytes: 10
  %loadMem_4118de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4118de = call %struct.Memory* @routine_movl__0x0__MINUS0x604c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4118de)
  store %struct.Memory* %call_4118de, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6050(%rbp)	 RIP: 4118e8	 Bytes: 10
  %loadMem_4118e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4118e8 = call %struct.Memory* @routine_movl__0x0__MINUS0x6050__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4118e8)
  store %struct.Memory* %call_4118e8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6054(%rbp)	 RIP: 4118f2	 Bytes: 10
  %loadMem_4118f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4118f2 = call %struct.Memory* @routine_movl__0x0__MINUS0x6054__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4118f2)
  store %struct.Memory* %call_4118f2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x4(%rbp)	 RIP: 4118fc	 Bytes: 4
  %loadMem_4118fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4118fc = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4118fc)
  store %struct.Memory* %call_4118fc, %struct.Memory** %MEMORY

  ; Code: je .L_411942	 RIP: 411900	 Bytes: 6
  %loadMem_411900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411900 = call %struct.Memory* @routine_je_.L_411942(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411900, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_411900, %struct.Memory** %MEMORY

  %loadBr_411900 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411900 = icmp eq i8 %loadBr_411900, 1
  br i1 %cmpBr_411900, label %block_.L_411942, label %block_411906

block_411906:
  ; Code: movl $0x0, 0x62daf0	 RIP: 411906	 Bytes: 11
  %loadMem_411906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411906 = call %struct.Memory* @routine_movl__0x0__0x62daf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411906)
  store %struct.Memory* %call_411906, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62daf4	 RIP: 411911	 Bytes: 11
  %loadMem_411911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411911 = call %struct.Memory* @routine_movl__0x0__0x62daf4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411911)
  store %struct.Memory* %call_411911, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62daf8	 RIP: 41191c	 Bytes: 11
  %loadMem_41191c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41191c = call %struct.Memory* @routine_movl__0x0__0x62daf8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41191c)
  store %struct.Memory* %call_41191c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62dafc	 RIP: 411927	 Bytes: 11
  %loadMem_411927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411927 = call %struct.Memory* @routine_movl__0x0__0x62dafc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411927)
  store %struct.Memory* %call_411927, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62db00	 RIP: 411932	 Bytes: 11
  %loadMem_411932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411932 = call %struct.Memory* @routine_movl__0x0__0x62db00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411932)
  store %struct.Memory* %call_411932, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412906	 RIP: 41193d	 Bytes: 5
  %loadMem_41193d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41193d = call %struct.Memory* @routine_jmpq_.L_412906(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41193d, i64 4041, i64 5)
  store %struct.Memory* %call_41193d, %struct.Memory** %MEMORY

  br label %block_.L_412906

  ; Code: .L_411942:	 RIP: 411942	 Bytes: 0
block_.L_411942:

  ; Code: callq .in_check	 RIP: 411942	 Bytes: 5
  %loadMem1_411942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411942 = call %struct.Memory* @routine_callq_.in_check(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411942, i64 -32866, i64 5, i64 5)
  store %struct.Memory* %call1_411942, %struct.Memory** %MEMORY

  %loadMem2_411942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411942 = load i64, i64* %3
  %call2_411942 = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64  %loadPC_411942, %struct.Memory* %loadMem2_411942)
  store %struct.Memory* %call2_411942, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %ecx	 RIP: 411947	 Bytes: 5
  %loadMem_411947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411947 = call %struct.Memory* @routine_movl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411947)
  store %struct.Memory* %call_411947, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edx	 RIP: 41194c	 Bytes: 5
  %loadMem_41194c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41194c = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41194c)
  store %struct.Memory* %call_41194c, %struct.Memory** %MEMORY

  ; Code: movq $0x85f170, %rsi	 RIP: 411951	 Bytes: 10
  %loadMem_411951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411951 = call %struct.Memory* @routine_movq__0x85f170___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411951)
  store %struct.Memory* %call_411951, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6024(%rbp)	 RIP: 41195b	 Bytes: 6
  %loadMem_41195b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41195b = call %struct.Memory* @routine_movl__eax__MINUS0x6024__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41195b)
  store %struct.Memory* %call_41195b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 411961	 Bytes: 8
  %loadMem_411961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411961 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411961)
  store %struct.Memory* %call_411961, %struct.Memory** %MEMORY

  ; Code: setne %dil	 RIP: 411969	 Bytes: 4
  %loadMem_411969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411969 = call %struct.Memory* @routine_setne__dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411969)
  store %struct.Memory* %call_411969, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %dil	 RIP: 41196d	 Bytes: 4
  %loadMem_41196d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41196d = call %struct.Memory* @routine_xorb__0xff___dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41196d)
  store %struct.Memory* %call_41196d, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %dil	 RIP: 411971	 Bytes: 4
  %loadMem_411971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411971 = call %struct.Memory* @routine_andb__0x1___dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411971)
  store %struct.Memory* %call_411971, %struct.Memory** %MEMORY

  ; Code: movzbl %dil, %eax	 RIP: 411975	 Bytes: 4
  %loadMem_411975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411975 = call %struct.Memory* @routine_movzbl__dil___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411975)
  store %struct.Memory* %call_411975, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 411979	 Bytes: 3
  %loadMem_411979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411979 = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411979)
  store %struct.Memory* %call_411979, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 41197c	 Bytes: 4
  %loadMem_41197c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41197c = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41197c)
  store %struct.Memory* %call_41197c, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rsi	 RIP: 411980	 Bytes: 3
  %loadMem_411980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411980 = call %struct.Memory* @routine_addq__r8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411980)
  store %struct.Memory* %call_411980, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 411983	 Bytes: 8
  %loadMem_411983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411983 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411983)
  store %struct.Memory* %call_411983, %struct.Memory** %MEMORY

  ; Code: cmovnel %edx, %ecx	 RIP: 41198b	 Bytes: 3
  %loadMem_41198b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41198b = call %struct.Memory* @routine_cmovnel__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41198b)
  store %struct.Memory* %call_41198b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 41198e	 Bytes: 3
  %loadMem_41198e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41198e = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41198e)
  store %struct.Memory* %call_41198e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rsi,%r8,4)	 RIP: 411991	 Bytes: 5
  %loadMem_411991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411991 = call %struct.Memory* @routine_cmpl__0x0____rsi__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411991)
  store %struct.Memory* %call_411991, %struct.Memory** %MEMORY

  ; Code: jne .L_411b96	 RIP: 411996	 Bytes: 6
  %loadMem_411996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411996 = call %struct.Memory* @routine_jne_.L_411b96(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411996, i8* %BRANCH_TAKEN, i64 512, i64 6, i64 6)
  store %struct.Memory* %call_411996, %struct.Memory** %MEMORY

  %loadBr_411996 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411996 = icmp eq i8 %loadBr_411996, 1
  br i1 %cmpBr_411996, label %block_.L_411b96, label %block_41199c

block_41199c:
  ; Code: movl $0x2, %eax	 RIP: 41199c	 Bytes: 5
  %loadMem_41199c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41199c = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41199c)
  store %struct.Memory* %call_41199c, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 4119a1	 Bytes: 5
  %loadMem_4119a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119a1 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119a1)
  store %struct.Memory* %call_4119a1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 4119a6	 Bytes: 8
  %loadMem_4119a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119a6 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119a6)
  store %struct.Memory* %call_4119a6, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 4119ae	 Bytes: 3
  %loadMem_4119ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119ae = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119ae)
  store %struct.Memory* %call_4119ae, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 4119b1	 Bytes: 8
  %loadMem_4119b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119b1 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119b1)
  store %struct.Memory* %call_4119b1, %struct.Memory** %MEMORY

  ; Code: setne %dl	 RIP: 4119b9	 Bytes: 3
  %loadMem_4119b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119b9 = call %struct.Memory* @routine_setne__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119b9)
  store %struct.Memory* %call_4119b9, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %dl	 RIP: 4119bc	 Bytes: 3
  %loadMem_4119bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119bc = call %struct.Memory* @routine_xorb__0xff___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119bc)
  store %struct.Memory* %call_4119bc, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %dl	 RIP: 4119bf	 Bytes: 3
  %loadMem_4119bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119bf = call %struct.Memory* @routine_andb__0x1___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119bf)
  store %struct.Memory* %call_4119bf, %struct.Memory** %MEMORY

  ; Code: movzbl %dl, %esi	 RIP: 4119c2	 Bytes: 3
  %loadMem_4119c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119c2 = call %struct.Memory* @routine_movzbl__dl___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119c2)
  store %struct.Memory* %call_4119c2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 4119c5	 Bytes: 2
  %loadMem_4119c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119c5 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119c5)
  store %struct.Memory* %call_4119c5, %struct.Memory** %MEMORY

  ; Code: callq .DropaddHolding	 RIP: 4119c7	 Bytes: 5
  %loadMem1_4119c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4119c7 = call %struct.Memory* @routine_callq_.DropaddHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4119c7, i64 -62199, i64 5, i64 5)
  store %struct.Memory* %call1_4119c7, %struct.Memory** %MEMORY

  %loadMem2_4119c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4119c7 = load i64, i64* %3
  %call2_4119c7 = call %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* %0, i64  %loadPC_4119c7, %struct.Memory* %loadMem2_4119c7)
  store %struct.Memory* %call2_4119c7, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 4119cc	 Bytes: 7
  %loadMem_4119cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119cc = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119cc)
  store %struct.Memory* %call_4119cc, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 4119d3	 Bytes: 5
  %loadMem1_4119d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4119d3 = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4119d3, i64 -39843, i64 5, i64 5)
  store %struct.Memory* %call1_4119d3, %struct.Memory** %MEMORY

  %loadMem2_4119d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4119d3 = load i64, i64* %3
  %call2_4119d3 = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_4119d3, %struct.Memory* %loadMem2_4119d3)
  store %struct.Memory* %call2_4119d3, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 4119d8	 Bytes: 7
  %loadMem_4119d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119d8 = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119d8)
  store %struct.Memory* %call_4119d8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6014(%rbp)	 RIP: 4119df	 Bytes: 6
  %loadMem_4119df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119df = call %struct.Memory* @routine_movl__eax__MINUS0x6014__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119df)
  store %struct.Memory* %call_4119df, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6020(%rbp)	 RIP: 4119e5	 Bytes: 10
  %loadMem_4119e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119e5 = call %struct.Memory* @routine_movl__0x0__MINUS0x6020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119e5)
  store %struct.Memory* %call_4119e5, %struct.Memory** %MEMORY

  ; Code: .L_4119ef:	 RIP: 4119ef	 Bytes: 0
  br label %block_.L_4119ef
block_.L_4119ef:

  ; Code: xorl %eax, %eax	 RIP: 4119ef	 Bytes: 2
  %loadMem_4119ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119ef = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119ef)
  store %struct.Memory* %call_4119ef, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 4119f1	 Bytes: 2
  %loadMem_4119f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119f1 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119f1)
  store %struct.Memory* %call_4119f1, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %eax	 RIP: 4119f3	 Bytes: 6
  %loadMem_4119f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119f3 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119f3)
  store %struct.Memory* %call_4119f3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x6014(%rbp), %eax	 RIP: 4119f9	 Bytes: 6
  %loadMem_4119f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119f9 = call %struct.Memory* @routine_cmpl_MINUS0x6014__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119f9)
  store %struct.Memory* %call_4119f9, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x6055(%rbp)	 RIP: 4119ff	 Bytes: 6
  %loadMem_4119ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4119ff = call %struct.Memory* @routine_movb__cl__MINUS0x6055__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4119ff)
  store %struct.Memory* %call_4119ff, %struct.Memory** %MEMORY

  ; Code: jge .L_411a1b	 RIP: 411a05	 Bytes: 6
  %loadMem_411a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a05 = call %struct.Memory* @routine_jge_.L_411a1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a05, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_411a05, %struct.Memory** %MEMORY

  %loadBr_411a05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411a05 = icmp eq i8 %loadBr_411a05, 1
  br i1 %cmpBr_411a05, label %block_.L_411a1b, label %block_411a0b

block_411a0b:
  ; Code: cmpl $0x0, -0x6030(%rbp)	 RIP: 411a0b	 Bytes: 7
  %loadMem_411a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a0b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a0b)
  store %struct.Memory* %call_411a0b, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 411a12	 Bytes: 3
  %loadMem_411a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a12 = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a12)
  store %struct.Memory* %call_411a12, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x6055(%rbp)	 RIP: 411a15	 Bytes: 6
  %loadMem_411a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a15 = call %struct.Memory* @routine_movb__al__MINUS0x6055__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a15)
  store %struct.Memory* %call_411a15, %struct.Memory** %MEMORY

  ; Code: .L_411a1b:	 RIP: 411a1b	 Bytes: 0
  br label %block_.L_411a1b
block_.L_411a1b:

  ; Code: movb -0x6055(%rbp), %al	 RIP: 411a1b	 Bytes: 6
  %loadMem_411a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a1b = call %struct.Memory* @routine_movb_MINUS0x6055__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a1b)
  store %struct.Memory* %call_411a1b, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 411a21	 Bytes: 2
  %loadMem_411a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a21 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a21)
  store %struct.Memory* %call_411a21, %struct.Memory** %MEMORY

  ; Code: jne .L_411a2e	 RIP: 411a23	 Bytes: 6
  %loadMem_411a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a23 = call %struct.Memory* @routine_jne_.L_411a2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a23, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_411a23, %struct.Memory** %MEMORY

  %loadBr_411a23 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411a23 = icmp eq i8 %loadBr_411a23, 1
  br i1 %cmpBr_411a23, label %block_.L_411a2e, label %block_411a29

block_411a29:
  ; Code: jmpq .L_411b66	 RIP: 411a29	 Bytes: 5
  %loadMem_411a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a29 = call %struct.Memory* @routine_jmpq_.L_411b66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a29, i64 317, i64 5)
  store %struct.Memory* %call_411a29, %struct.Memory** %MEMORY

  br label %block_.L_411b66

  ; Code: .L_411a2e:	 RIP: 411a2e	 Bytes: 0
block_.L_411a2e:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 411a2e	 Bytes: 7
  %loadMem_411a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a2e = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a2e)
  store %struct.Memory* %call_411a2e, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %esi	 RIP: 411a35	 Bytes: 6
  %loadMem_411a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a35 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a35)
  store %struct.Memory* %call_411a35, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 411a3b	 Bytes: 5
  %loadMem1_411a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411a3b = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411a3b, i64 -25355, i64 5, i64 5)
  store %struct.Memory* %call1_411a3b, %struct.Memory** %MEMORY

  %loadMem2_411a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411a3b = load i64, i64* %3
  %call2_411a3b = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_411a3b, %struct.Memory* %loadMem2_411a3b)
  store %struct.Memory* %call2_411a3b, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 411a40	 Bytes: 7
  %loadMem_411a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a40 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a40)
  store %struct.Memory* %call_411a40, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %esi	 RIP: 411a47	 Bytes: 6
  %loadMem_411a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a47 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a47)
  store %struct.Memory* %call_411a47, %struct.Memory** %MEMORY

  ; Code: movl -0x6024(%rbp), %edx	 RIP: 411a4d	 Bytes: 6
  %loadMem_411a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a4d = call %struct.Memory* @routine_movl_MINUS0x6024__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a4d)
  store %struct.Memory* %call_411a4d, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 411a53	 Bytes: 5
  %loadMem1_411a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411a53 = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411a53, i64 -46035, i64 5, i64 5)
  store %struct.Memory* %call1_411a53, %struct.Memory** %MEMORY

  %loadMem2_411a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411a53 = load i64, i64* %3
  %call2_411a53 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_411a53, %struct.Memory* %loadMem2_411a53)
  store %struct.Memory* %call2_411a53, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 411a58	 Bytes: 3
  %loadMem_411a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a58 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a58)
  store %struct.Memory* %call_411a58, %struct.Memory** %MEMORY

  ; Code: je .L_411b40	 RIP: 411a5b	 Bytes: 6
  %loadMem_411a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a5b = call %struct.Memory* @routine_je_.L_411b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a5b, i8* %BRANCH_TAKEN, i64 229, i64 6, i64 6)
  store %struct.Memory* %call_411a5b, %struct.Memory** %MEMORY

  %loadBr_411a5b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411a5b = icmp eq i8 %loadBr_411a5b, 1
  br i1 %cmpBr_411a5b, label %block_.L_411b40, label %block_411a61

block_411a61:
  ; Code: movl $0x3, -0x6030(%rbp)	 RIP: 411a61	 Bytes: 10
  %loadMem_411a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a61 = call %struct.Memory* @routine_movl__0x3__MINUS0x6030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a61)
  store %struct.Memory* %call_411a61, %struct.Memory** %MEMORY

  ; Code: callq .in_check	 RIP: 411a6b	 Bytes: 5
  %loadMem1_411a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411a6b = call %struct.Memory* @routine_callq_.in_check(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411a6b, i64 -33163, i64 5, i64 5)
  store %struct.Memory* %call1_411a6b, %struct.Memory** %MEMORY

  %loadMem2_411a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411a6b = load i64, i64* %3
  %call2_411a6b = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64  %loadPC_411a6b, %struct.Memory* %loadMem2_411a6b)
  store %struct.Memory* %call2_411a6b, %struct.Memory** %MEMORY

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 411a70	 Bytes: 7
  %loadMem_411a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a70 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a70)
  store %struct.Memory* %call_411a70, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6028(%rbp)	 RIP: 411a77	 Bytes: 6
  %loadMem_411a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a77 = call %struct.Memory* @routine_movl__eax__MINUS0x6028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a77)
  store %struct.Memory* %call_411a77, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 411a7d	 Bytes: 5
  %loadMem1_411a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411a7d = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411a7d, i64 -40013, i64 5, i64 5)
  store %struct.Memory* %call1_411a7d, %struct.Memory** %MEMORY

  %loadMem2_411a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411a7d = load i64, i64* %3
  %call2_411a7d = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_411a7d, %struct.Memory* %loadMem2_411a7d)
  store %struct.Memory* %call2_411a7d, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 411a82	 Bytes: 7
  %loadMem_411a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a82 = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a82)
  store %struct.Memory* %call_411a82, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6018(%rbp)	 RIP: 411a89	 Bytes: 6
  %loadMem_411a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a89 = call %struct.Memory* @routine_movl__eax__MINUS0x6018__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a89)
  store %struct.Memory* %call_411a89, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x601c(%rbp)	 RIP: 411a8f	 Bytes: 10
  %loadMem_411a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a8f = call %struct.Memory* @routine_movl__0x0__MINUS0x601c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a8f)
  store %struct.Memory* %call_411a8f, %struct.Memory** %MEMORY

  ; Code: .L_411a99:	 RIP: 411a99	 Bytes: 0
  br label %block_.L_411a99
block_.L_411a99:

  ; Code: xorl %eax, %eax	 RIP: 411a99	 Bytes: 2
  %loadMem_411a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a99 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a99)
  store %struct.Memory* %call_411a99, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 411a9b	 Bytes: 2
  %loadMem_411a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a9b = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a9b)
  store %struct.Memory* %call_411a9b, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %eax	 RIP: 411a9d	 Bytes: 6
  %loadMem_411a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411a9d = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411a9d)
  store %struct.Memory* %call_411a9d, %struct.Memory** %MEMORY

  ; Code: cmpl -0x6018(%rbp), %eax	 RIP: 411aa3	 Bytes: 6
  %loadMem_411aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411aa3 = call %struct.Memory* @routine_cmpl_MINUS0x6018__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411aa3)
  store %struct.Memory* %call_411aa3, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x6056(%rbp)	 RIP: 411aa9	 Bytes: 6
  %loadMem_411aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411aa9 = call %struct.Memory* @routine_movb__cl__MINUS0x6056__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411aa9)
  store %struct.Memory* %call_411aa9, %struct.Memory** %MEMORY

  ; Code: jge .L_411ac5	 RIP: 411aaf	 Bytes: 6
  %loadMem_411aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411aaf = call %struct.Memory* @routine_jge_.L_411ac5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411aaf, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_411aaf, %struct.Memory** %MEMORY

  %loadBr_411aaf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411aaf = icmp eq i8 %loadBr_411aaf, 1
  br i1 %cmpBr_411aaf, label %block_.L_411ac5, label %block_411ab5

block_411ab5:
  ; Code: cmpl $0x0, -0x6030(%rbp)	 RIP: 411ab5	 Bytes: 7
  %loadMem_411ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ab5 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ab5)
  store %struct.Memory* %call_411ab5, %struct.Memory** %MEMORY

  ; Code: setne %al	 RIP: 411abc	 Bytes: 3
  %loadMem_411abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411abc = call %struct.Memory* @routine_setne__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411abc)
  store %struct.Memory* %call_411abc, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x6056(%rbp)	 RIP: 411abf	 Bytes: 6
  %loadMem_411abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411abf = call %struct.Memory* @routine_movb__al__MINUS0x6056__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411abf)
  store %struct.Memory* %call_411abf, %struct.Memory** %MEMORY

  ; Code: .L_411ac5:	 RIP: 411ac5	 Bytes: 0
  br label %block_.L_411ac5
block_.L_411ac5:

  ; Code: movb -0x6056(%rbp), %al	 RIP: 411ac5	 Bytes: 6
  %loadMem_411ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ac5 = call %struct.Memory* @routine_movb_MINUS0x6056__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ac5)
  store %struct.Memory* %call_411ac5, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 411acb	 Bytes: 2
  %loadMem_411acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411acb = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411acb)
  store %struct.Memory* %call_411acb, %struct.Memory** %MEMORY

  ; Code: jne .L_411ad8	 RIP: 411acd	 Bytes: 6
  %loadMem_411acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411acd = call %struct.Memory* @routine_jne_.L_411ad8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411acd, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_411acd, %struct.Memory** %MEMORY

  %loadBr_411acd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411acd = icmp eq i8 %loadBr_411acd, 1
  br i1 %cmpBr_411acd, label %block_.L_411ad8, label %block_411ad3

block_411ad3:
  ; Code: jmpq .L_411b3b	 RIP: 411ad3	 Bytes: 5
  %loadMem_411ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ad3 = call %struct.Memory* @routine_jmpq_.L_411b3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ad3, i64 104, i64 5)
  store %struct.Memory* %call_411ad3, %struct.Memory** %MEMORY

  br label %block_.L_411b3b

  ; Code: .L_411ad8:	 RIP: 411ad8	 Bytes: 0
block_.L_411ad8:

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 411ad8	 Bytes: 7
  %loadMem_411ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ad8 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ad8)
  store %struct.Memory* %call_411ad8, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %esi	 RIP: 411adf	 Bytes: 6
  %loadMem_411adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411adf = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411adf)
  store %struct.Memory* %call_411adf, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 411ae5	 Bytes: 5
  %loadMem1_411ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411ae5 = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411ae5, i64 -25525, i64 5, i64 5)
  store %struct.Memory* %call1_411ae5, %struct.Memory** %MEMORY

  %loadMem2_411ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411ae5 = load i64, i64* %3
  %call2_411ae5 = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_411ae5, %struct.Memory* %loadMem2_411ae5)
  store %struct.Memory* %call2_411ae5, %struct.Memory** %MEMORY

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 411aea	 Bytes: 7
  %loadMem_411aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411aea = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411aea)
  store %struct.Memory* %call_411aea, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %esi	 RIP: 411af1	 Bytes: 6
  %loadMem_411af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411af1 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411af1)
  store %struct.Memory* %call_411af1, %struct.Memory** %MEMORY

  ; Code: movl -0x6028(%rbp), %edx	 RIP: 411af7	 Bytes: 6
  %loadMem_411af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411af7 = call %struct.Memory* @routine_movl_MINUS0x6028__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411af7)
  store %struct.Memory* %call_411af7, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 411afd	 Bytes: 5
  %loadMem1_411afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411afd = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411afd, i64 -46205, i64 5, i64 5)
  store %struct.Memory* %call1_411afd, %struct.Memory** %MEMORY

  %loadMem2_411afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411afd = load i64, i64* %3
  %call2_411afd = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_411afd, %struct.Memory* %loadMem2_411afd)
  store %struct.Memory* %call2_411afd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 411b02	 Bytes: 3
  %loadMem_411b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b02 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b02)
  store %struct.Memory* %call_411b02, %struct.Memory** %MEMORY

  ; Code: je .L_411b15	 RIP: 411b05	 Bytes: 6
  %loadMem_411b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b05 = call %struct.Memory* @routine_je_.L_411b15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b05, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_411b05, %struct.Memory** %MEMORY

  %loadBr_411b05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411b05 = icmp eq i8 %loadBr_411b05, 1
  br i1 %cmpBr_411b05, label %block_.L_411b15, label %block_411b0b

block_411b0b:
  ; Code: movl $0x0, -0x6030(%rbp)	 RIP: 411b0b	 Bytes: 10
  %loadMem_411b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b0b = call %struct.Memory* @routine_movl__0x0__MINUS0x6030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b0b)
  store %struct.Memory* %call_411b0b, %struct.Memory** %MEMORY

  ; Code: .L_411b15:	 RIP: 411b15	 Bytes: 0
  br label %block_.L_411b15
block_.L_411b15:

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 411b15	 Bytes: 7
  %loadMem_411b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b15 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b15)
  store %struct.Memory* %call_411b15, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %esi	 RIP: 411b1c	 Bytes: 6
  %loadMem_411b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b1c = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b1c)
  store %struct.Memory* %call_411b1c, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 411b22	 Bytes: 5
  %loadMem1_411b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411b22 = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411b22, i64 -21378, i64 5, i64 5)
  store %struct.Memory* %call1_411b22, %struct.Memory** %MEMORY

  %loadMem2_411b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411b22 = load i64, i64* %3
  %call2_411b22 = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_411b22, %struct.Memory* %loadMem2_411b22)
  store %struct.Memory* %call2_411b22, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %eax	 RIP: 411b27	 Bytes: 6
  %loadMem_411b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b27 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b27)
  store %struct.Memory* %call_411b27, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 411b2d	 Bytes: 3
  %loadMem_411b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b2d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b2d)
  store %struct.Memory* %call_411b2d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x601c(%rbp)	 RIP: 411b30	 Bytes: 6
  %loadMem_411b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b30 = call %struct.Memory* @routine_movl__eax__MINUS0x601c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b30)
  store %struct.Memory* %call_411b30, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411a99	 RIP: 411b36	 Bytes: 5
  %loadMem_411b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b36 = call %struct.Memory* @routine_jmpq_.L_411a99(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b36, i64 -157, i64 5)
  store %struct.Memory* %call_411b36, %struct.Memory** %MEMORY

  br label %block_.L_411a99

  ; Code: .L_411b3b:	 RIP: 411b3b	 Bytes: 0
block_.L_411b3b:

  ; Code: jmpq .L_411b40	 RIP: 411b3b	 Bytes: 5
  %loadMem_411b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b3b = call %struct.Memory* @routine_jmpq_.L_411b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b3b, i64 5, i64 5)
  store %struct.Memory* %call_411b3b, %struct.Memory** %MEMORY

  br label %block_.L_411b40

  ; Code: .L_411b40:	 RIP: 411b40	 Bytes: 0
block_.L_411b40:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 411b40	 Bytes: 7
  %loadMem_411b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b40 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b40)
  store %struct.Memory* %call_411b40, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %esi	 RIP: 411b47	 Bytes: 6
  %loadMem_411b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b47 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b47)
  store %struct.Memory* %call_411b47, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 411b4d	 Bytes: 5
  %loadMem1_411b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411b4d = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411b4d, i64 -21421, i64 5, i64 5)
  store %struct.Memory* %call1_411b4d, %struct.Memory** %MEMORY

  %loadMem2_411b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411b4d = load i64, i64* %3
  %call2_411b4d = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_411b4d, %struct.Memory* %loadMem2_411b4d)
  store %struct.Memory* %call2_411b4d, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %eax	 RIP: 411b52	 Bytes: 6
  %loadMem_411b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b52 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b52)
  store %struct.Memory* %call_411b52, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 411b58	 Bytes: 3
  %loadMem_411b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b58 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b58)
  store %struct.Memory* %call_411b58, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6020(%rbp)	 RIP: 411b5b	 Bytes: 6
  %loadMem_411b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b5b = call %struct.Memory* @routine_movl__eax__MINUS0x6020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b5b)
  store %struct.Memory* %call_411b5b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4119ef	 RIP: 411b61	 Bytes: 5
  %loadMem_411b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b61 = call %struct.Memory* @routine_jmpq_.L_4119ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b61, i64 -370, i64 5)
  store %struct.Memory* %call_411b61, %struct.Memory** %MEMORY

  br label %block_.L_4119ef

  ; Code: .L_411b66:	 RIP: 411b66	 Bytes: 0
block_.L_411b66:

  ; Code: movl $0x2, %eax	 RIP: 411b66	 Bytes: 5
  %loadMem_411b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b66 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b66)
  store %struct.Memory* %call_411b66, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 411b6b	 Bytes: 5
  %loadMem_411b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b6b = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b6b)
  store %struct.Memory* %call_411b6b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 411b70	 Bytes: 8
  %loadMem_411b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b70 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b70)
  store %struct.Memory* %call_411b70, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 411b78	 Bytes: 3
  %loadMem_411b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b78 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b78)
  store %struct.Memory* %call_411b78, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 411b7b	 Bytes: 8
  %loadMem_411b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b7b = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b7b)
  store %struct.Memory* %call_411b7b, %struct.Memory** %MEMORY

  ; Code: setne %dl	 RIP: 411b83	 Bytes: 3
  %loadMem_411b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b83 = call %struct.Memory* @routine_setne__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b83)
  store %struct.Memory* %call_411b83, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %dl	 RIP: 411b86	 Bytes: 3
  %loadMem_411b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b86 = call %struct.Memory* @routine_xorb__0xff___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b86)
  store %struct.Memory* %call_411b86, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %dl	 RIP: 411b89	 Bytes: 3
  %loadMem_411b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b89 = call %struct.Memory* @routine_andb__0x1___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b89)
  store %struct.Memory* %call_411b89, %struct.Memory** %MEMORY

  ; Code: movzbl %dl, %esi	 RIP: 411b8c	 Bytes: 3
  %loadMem_411b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b8c = call %struct.Memory* @routine_movzbl__dl___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b8c)
  store %struct.Memory* %call_411b8c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 411b8f	 Bytes: 2
  %loadMem_411b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b8f = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b8f)
  store %struct.Memory* %call_411b8f, %struct.Memory** %MEMORY

  ; Code: callq .DropremoveHolding	 RIP: 411b91	 Bytes: 5
  %loadMem1_411b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411b91 = call %struct.Memory* @routine_callq_.DropremoveHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411b91, i64 -62433, i64 5, i64 5)
  store %struct.Memory* %call1_411b91, %struct.Memory** %MEMORY

  %loadMem2_411b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411b91 = load i64, i64* %3
  %call2_411b91 = call %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* %0, i64  %loadPC_411b91, %struct.Memory* %loadMem2_411b91)
  store %struct.Memory* %call2_411b91, %struct.Memory** %MEMORY

  ; Code: .L_411b96:	 RIP: 411b96	 Bytes: 0
  br label %block_.L_411b96
block_.L_411b96:

  ; Code: movl $0x4, %eax	 RIP: 411b96	 Bytes: 5
  %loadMem_411b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b96 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b96)
  store %struct.Memory* %call_411b96, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 411b9b	 Bytes: 5
  %loadMem_411b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411b9b = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411b9b)
  store %struct.Memory* %call_411b9b, %struct.Memory** %MEMORY

  ; Code: movq $0x85f170, %rdx	 RIP: 411ba0	 Bytes: 10
  %loadMem_411ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ba0 = call %struct.Memory* @routine_movq__0x85f170___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ba0)
  store %struct.Memory* %call_411ba0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 411baa	 Bytes: 8
  %loadMem_411baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411baa = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411baa)
  store %struct.Memory* %call_411baa, %struct.Memory** %MEMORY

  ; Code: setne %sil	 RIP: 411bb2	 Bytes: 4
  %loadMem_411bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bb2 = call %struct.Memory* @routine_setne__sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bb2)
  store %struct.Memory* %call_411bb2, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %sil	 RIP: 411bb6	 Bytes: 4
  %loadMem_411bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bb6 = call %struct.Memory* @routine_xorb__0xff___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bb6)
  store %struct.Memory* %call_411bb6, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %sil	 RIP: 411bba	 Bytes: 4
  %loadMem_411bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bba = call %struct.Memory* @routine_andb__0x1___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bba)
  store %struct.Memory* %call_411bba, %struct.Memory** %MEMORY

  ; Code: movzbl %sil, %edi	 RIP: 411bbe	 Bytes: 4
  %loadMem_411bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bbe = call %struct.Memory* @routine_movzbl__sil___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bbe)
  store %struct.Memory* %call_411bbe, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 411bc2	 Bytes: 3
  %loadMem_411bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bc2 = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bc2)
  store %struct.Memory* %call_411bc2, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 411bc5	 Bytes: 4
  %loadMem_411bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bc5 = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bc5)
  store %struct.Memory* %call_411bc5, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rdx	 RIP: 411bc9	 Bytes: 3
  %loadMem_411bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bc9 = call %struct.Memory* @routine_addq__r8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bc9)
  store %struct.Memory* %call_411bc9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 411bcc	 Bytes: 8
  %loadMem_411bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bcc = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bcc)
  store %struct.Memory* %call_411bcc, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 411bd4	 Bytes: 3
  %loadMem_411bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bd4 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bd4)
  store %struct.Memory* %call_411bd4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 411bd7	 Bytes: 3
  %loadMem_411bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bd7 = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bd7)
  store %struct.Memory* %call_411bd7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rdx,%r8,4)	 RIP: 411bda	 Bytes: 5
  %loadMem_411bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bda = call %struct.Memory* @routine_cmpl__0x0____rdx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bda)
  store %struct.Memory* %call_411bda, %struct.Memory** %MEMORY

  ; Code: jne .L_411ddf	 RIP: 411bdf	 Bytes: 6
  %loadMem_411bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bdf = call %struct.Memory* @routine_jne_.L_411ddf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bdf, i8* %BRANCH_TAKEN, i64 512, i64 6, i64 6)
  store %struct.Memory* %call_411bdf, %struct.Memory** %MEMORY

  %loadBr_411bdf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411bdf = icmp eq i8 %loadBr_411bdf, 1
  br i1 %cmpBr_411bdf, label %block_.L_411ddf, label %block_411be5

block_411be5:
  ; Code: movl $0x4, %eax	 RIP: 411be5	 Bytes: 5
  %loadMem_411be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411be5 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411be5)
  store %struct.Memory* %call_411be5, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 411bea	 Bytes: 5
  %loadMem_411bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bea = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bea)
  store %struct.Memory* %call_411bea, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 411bef	 Bytes: 8
  %loadMem_411bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bef = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bef)
  store %struct.Memory* %call_411bef, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 411bf7	 Bytes: 3
  %loadMem_411bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bf7 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bf7)
  store %struct.Memory* %call_411bf7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 411bfa	 Bytes: 8
  %loadMem_411bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411bfa = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411bfa)
  store %struct.Memory* %call_411bfa, %struct.Memory** %MEMORY

  ; Code: setne %dl	 RIP: 411c02	 Bytes: 3
  %loadMem_411c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c02 = call %struct.Memory* @routine_setne__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c02)
  store %struct.Memory* %call_411c02, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %dl	 RIP: 411c05	 Bytes: 3
  %loadMem_411c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c05 = call %struct.Memory* @routine_xorb__0xff___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c05)
  store %struct.Memory* %call_411c05, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %dl	 RIP: 411c08	 Bytes: 3
  %loadMem_411c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c08 = call %struct.Memory* @routine_andb__0x1___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c08)
  store %struct.Memory* %call_411c08, %struct.Memory** %MEMORY

  ; Code: movzbl %dl, %esi	 RIP: 411c0b	 Bytes: 3
  %loadMem_411c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c0b = call %struct.Memory* @routine_movzbl__dl___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c0b)
  store %struct.Memory* %call_411c0b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 411c0e	 Bytes: 2
  %loadMem_411c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c0e = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c0e)
  store %struct.Memory* %call_411c0e, %struct.Memory** %MEMORY

  ; Code: callq .DropaddHolding	 RIP: 411c10	 Bytes: 5
  %loadMem1_411c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411c10 = call %struct.Memory* @routine_callq_.DropaddHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411c10, i64 -62784, i64 5, i64 5)
  store %struct.Memory* %call1_411c10, %struct.Memory** %MEMORY

  %loadMem2_411c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411c10 = load i64, i64* %3
  %call2_411c10 = call %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* %0, i64  %loadPC_411c10, %struct.Memory* %loadMem2_411c10)
  store %struct.Memory* %call2_411c10, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 411c15	 Bytes: 7
  %loadMem_411c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c15 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c15)
  store %struct.Memory* %call_411c15, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 411c1c	 Bytes: 5
  %loadMem1_411c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411c1c = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411c1c, i64 -40428, i64 5, i64 5)
  store %struct.Memory* %call1_411c1c, %struct.Memory** %MEMORY

  %loadMem2_411c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411c1c = load i64, i64* %3
  %call2_411c1c = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_411c1c, %struct.Memory* %loadMem2_411c1c)
  store %struct.Memory* %call2_411c1c, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 411c21	 Bytes: 7
  %loadMem_411c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c21 = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c21)
  store %struct.Memory* %call_411c21, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6014(%rbp)	 RIP: 411c28	 Bytes: 6
  %loadMem_411c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c28 = call %struct.Memory* @routine_movl__eax__MINUS0x6014__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c28)
  store %struct.Memory* %call_411c28, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6020(%rbp)	 RIP: 411c2e	 Bytes: 10
  %loadMem_411c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c2e = call %struct.Memory* @routine_movl__0x0__MINUS0x6020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c2e)
  store %struct.Memory* %call_411c2e, %struct.Memory** %MEMORY

  ; Code: .L_411c38:	 RIP: 411c38	 Bytes: 0
  br label %block_.L_411c38
block_.L_411c38:

  ; Code: xorl %eax, %eax	 RIP: 411c38	 Bytes: 2
  %loadMem_411c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c38 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c38)
  store %struct.Memory* %call_411c38, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 411c3a	 Bytes: 2
  %loadMem_411c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c3a = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c3a)
  store %struct.Memory* %call_411c3a, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %eax	 RIP: 411c3c	 Bytes: 6
  %loadMem_411c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c3c = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c3c)
  store %struct.Memory* %call_411c3c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x6014(%rbp), %eax	 RIP: 411c42	 Bytes: 6
  %loadMem_411c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c42 = call %struct.Memory* @routine_cmpl_MINUS0x6014__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c42)
  store %struct.Memory* %call_411c42, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x6057(%rbp)	 RIP: 411c48	 Bytes: 6
  %loadMem_411c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c48 = call %struct.Memory* @routine_movb__cl__MINUS0x6057__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c48)
  store %struct.Memory* %call_411c48, %struct.Memory** %MEMORY

  ; Code: jge .L_411c64	 RIP: 411c4e	 Bytes: 6
  %loadMem_411c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c4e = call %struct.Memory* @routine_jge_.L_411c64(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c4e, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_411c4e, %struct.Memory** %MEMORY

  %loadBr_411c4e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411c4e = icmp eq i8 %loadBr_411c4e, 1
  br i1 %cmpBr_411c4e, label %block_.L_411c64, label %block_411c54

block_411c54:
  ; Code: cmpl $0x0, -0x6034(%rbp)	 RIP: 411c54	 Bytes: 7
  %loadMem_411c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c54 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c54)
  store %struct.Memory* %call_411c54, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 411c5b	 Bytes: 3
  %loadMem_411c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c5b = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c5b)
  store %struct.Memory* %call_411c5b, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x6057(%rbp)	 RIP: 411c5e	 Bytes: 6
  %loadMem_411c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c5e = call %struct.Memory* @routine_movb__al__MINUS0x6057__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c5e)
  store %struct.Memory* %call_411c5e, %struct.Memory** %MEMORY

  ; Code: .L_411c64:	 RIP: 411c64	 Bytes: 0
  br label %block_.L_411c64
block_.L_411c64:

  ; Code: movb -0x6057(%rbp), %al	 RIP: 411c64	 Bytes: 6
  %loadMem_411c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c64 = call %struct.Memory* @routine_movb_MINUS0x6057__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c64)
  store %struct.Memory* %call_411c64, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 411c6a	 Bytes: 2
  %loadMem_411c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c6a = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c6a)
  store %struct.Memory* %call_411c6a, %struct.Memory** %MEMORY

  ; Code: jne .L_411c77	 RIP: 411c6c	 Bytes: 6
  %loadMem_411c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c6c = call %struct.Memory* @routine_jne_.L_411c77(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c6c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_411c6c, %struct.Memory** %MEMORY

  %loadBr_411c6c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411c6c = icmp eq i8 %loadBr_411c6c, 1
  br i1 %cmpBr_411c6c, label %block_.L_411c77, label %block_411c72

block_411c72:
  ; Code: jmpq .L_411daf	 RIP: 411c72	 Bytes: 5
  %loadMem_411c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c72 = call %struct.Memory* @routine_jmpq_.L_411daf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c72, i64 317, i64 5)
  store %struct.Memory* %call_411c72, %struct.Memory** %MEMORY

  br label %block_.L_411daf

  ; Code: .L_411c77:	 RIP: 411c77	 Bytes: 0
block_.L_411c77:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 411c77	 Bytes: 7
  %loadMem_411c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c77 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c77)
  store %struct.Memory* %call_411c77, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %esi	 RIP: 411c7e	 Bytes: 6
  %loadMem_411c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c7e = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c7e)
  store %struct.Memory* %call_411c7e, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 411c84	 Bytes: 5
  %loadMem1_411c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411c84 = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411c84, i64 -25940, i64 5, i64 5)
  store %struct.Memory* %call1_411c84, %struct.Memory** %MEMORY

  %loadMem2_411c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411c84 = load i64, i64* %3
  %call2_411c84 = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_411c84, %struct.Memory* %loadMem2_411c84)
  store %struct.Memory* %call2_411c84, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 411c89	 Bytes: 7
  %loadMem_411c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c89 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c89)
  store %struct.Memory* %call_411c89, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %esi	 RIP: 411c90	 Bytes: 6
  %loadMem_411c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c90 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c90)
  store %struct.Memory* %call_411c90, %struct.Memory** %MEMORY

  ; Code: movl -0x6024(%rbp), %edx	 RIP: 411c96	 Bytes: 6
  %loadMem_411c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411c96 = call %struct.Memory* @routine_movl_MINUS0x6024__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411c96)
  store %struct.Memory* %call_411c96, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 411c9c	 Bytes: 5
  %loadMem1_411c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411c9c = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411c9c, i64 -46620, i64 5, i64 5)
  store %struct.Memory* %call1_411c9c, %struct.Memory** %MEMORY

  %loadMem2_411c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411c9c = load i64, i64* %3
  %call2_411c9c = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_411c9c, %struct.Memory* %loadMem2_411c9c)
  store %struct.Memory* %call2_411c9c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 411ca1	 Bytes: 3
  %loadMem_411ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ca1 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ca1)
  store %struct.Memory* %call_411ca1, %struct.Memory** %MEMORY

  ; Code: je .L_411d89	 RIP: 411ca4	 Bytes: 6
  %loadMem_411ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ca4 = call %struct.Memory* @routine_je_.L_411d89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ca4, i8* %BRANCH_TAKEN, i64 229, i64 6, i64 6)
  store %struct.Memory* %call_411ca4, %struct.Memory** %MEMORY

  %loadBr_411ca4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411ca4 = icmp eq i8 %loadBr_411ca4, 1
  br i1 %cmpBr_411ca4, label %block_.L_411d89, label %block_411caa

block_411caa:
  ; Code: movl $0x3, -0x6034(%rbp)	 RIP: 411caa	 Bytes: 10
  %loadMem_411caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411caa = call %struct.Memory* @routine_movl__0x3__MINUS0x6034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411caa)
  store %struct.Memory* %call_411caa, %struct.Memory** %MEMORY

  ; Code: callq .in_check	 RIP: 411cb4	 Bytes: 5
  %loadMem1_411cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411cb4 = call %struct.Memory* @routine_callq_.in_check(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411cb4, i64 -33748, i64 5, i64 5)
  store %struct.Memory* %call1_411cb4, %struct.Memory** %MEMORY

  %loadMem2_411cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411cb4 = load i64, i64* %3
  %call2_411cb4 = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64  %loadPC_411cb4, %struct.Memory* %loadMem2_411cb4)
  store %struct.Memory* %call2_411cb4, %struct.Memory** %MEMORY

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 411cb9	 Bytes: 7
  %loadMem_411cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411cb9 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411cb9)
  store %struct.Memory* %call_411cb9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6028(%rbp)	 RIP: 411cc0	 Bytes: 6
  %loadMem_411cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411cc0 = call %struct.Memory* @routine_movl__eax__MINUS0x6028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411cc0)
  store %struct.Memory* %call_411cc0, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 411cc6	 Bytes: 5
  %loadMem1_411cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411cc6 = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411cc6, i64 -40598, i64 5, i64 5)
  store %struct.Memory* %call1_411cc6, %struct.Memory** %MEMORY

  %loadMem2_411cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411cc6 = load i64, i64* %3
  %call2_411cc6 = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_411cc6, %struct.Memory* %loadMem2_411cc6)
  store %struct.Memory* %call2_411cc6, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 411ccb	 Bytes: 7
  %loadMem_411ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ccb = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ccb)
  store %struct.Memory* %call_411ccb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6018(%rbp)	 RIP: 411cd2	 Bytes: 6
  %loadMem_411cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411cd2 = call %struct.Memory* @routine_movl__eax__MINUS0x6018__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411cd2)
  store %struct.Memory* %call_411cd2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x601c(%rbp)	 RIP: 411cd8	 Bytes: 10
  %loadMem_411cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411cd8 = call %struct.Memory* @routine_movl__0x0__MINUS0x601c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411cd8)
  store %struct.Memory* %call_411cd8, %struct.Memory** %MEMORY

  ; Code: .L_411ce2:	 RIP: 411ce2	 Bytes: 0
  br label %block_.L_411ce2
block_.L_411ce2:

  ; Code: xorl %eax, %eax	 RIP: 411ce2	 Bytes: 2
  %loadMem_411ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ce2 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ce2)
  store %struct.Memory* %call_411ce2, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 411ce4	 Bytes: 2
  %loadMem_411ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ce4 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ce4)
  store %struct.Memory* %call_411ce4, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %eax	 RIP: 411ce6	 Bytes: 6
  %loadMem_411ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ce6 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ce6)
  store %struct.Memory* %call_411ce6, %struct.Memory** %MEMORY

  ; Code: cmpl -0x6018(%rbp), %eax	 RIP: 411cec	 Bytes: 6
  %loadMem_411cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411cec = call %struct.Memory* @routine_cmpl_MINUS0x6018__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411cec)
  store %struct.Memory* %call_411cec, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x6058(%rbp)	 RIP: 411cf2	 Bytes: 6
  %loadMem_411cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411cf2 = call %struct.Memory* @routine_movb__cl__MINUS0x6058__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411cf2)
  store %struct.Memory* %call_411cf2, %struct.Memory** %MEMORY

  ; Code: jge .L_411d0e	 RIP: 411cf8	 Bytes: 6
  %loadMem_411cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411cf8 = call %struct.Memory* @routine_jge_.L_411d0e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411cf8, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_411cf8, %struct.Memory** %MEMORY

  %loadBr_411cf8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411cf8 = icmp eq i8 %loadBr_411cf8, 1
  br i1 %cmpBr_411cf8, label %block_.L_411d0e, label %block_411cfe

block_411cfe:
  ; Code: cmpl $0x0, -0x6034(%rbp)	 RIP: 411cfe	 Bytes: 7
  %loadMem_411cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411cfe = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411cfe)
  store %struct.Memory* %call_411cfe, %struct.Memory** %MEMORY

  ; Code: setne %al	 RIP: 411d05	 Bytes: 3
  %loadMem_411d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d05 = call %struct.Memory* @routine_setne__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d05)
  store %struct.Memory* %call_411d05, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x6058(%rbp)	 RIP: 411d08	 Bytes: 6
  %loadMem_411d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d08 = call %struct.Memory* @routine_movb__al__MINUS0x6058__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d08)
  store %struct.Memory* %call_411d08, %struct.Memory** %MEMORY

  ; Code: .L_411d0e:	 RIP: 411d0e	 Bytes: 0
  br label %block_.L_411d0e
block_.L_411d0e:

  ; Code: movb -0x6058(%rbp), %al	 RIP: 411d0e	 Bytes: 6
  %loadMem_411d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d0e = call %struct.Memory* @routine_movb_MINUS0x6058__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d0e)
  store %struct.Memory* %call_411d0e, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 411d14	 Bytes: 2
  %loadMem_411d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d14 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d14)
  store %struct.Memory* %call_411d14, %struct.Memory** %MEMORY

  ; Code: jne .L_411d21	 RIP: 411d16	 Bytes: 6
  %loadMem_411d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d16 = call %struct.Memory* @routine_jne_.L_411d21(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d16, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_411d16, %struct.Memory** %MEMORY

  %loadBr_411d16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411d16 = icmp eq i8 %loadBr_411d16, 1
  br i1 %cmpBr_411d16, label %block_.L_411d21, label %block_411d1c

block_411d1c:
  ; Code: jmpq .L_411d84	 RIP: 411d1c	 Bytes: 5
  %loadMem_411d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d1c = call %struct.Memory* @routine_jmpq_.L_411d84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d1c, i64 104, i64 5)
  store %struct.Memory* %call_411d1c, %struct.Memory** %MEMORY

  br label %block_.L_411d84

  ; Code: .L_411d21:	 RIP: 411d21	 Bytes: 0
block_.L_411d21:

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 411d21	 Bytes: 7
  %loadMem_411d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d21 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d21)
  store %struct.Memory* %call_411d21, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %esi	 RIP: 411d28	 Bytes: 6
  %loadMem_411d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d28 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d28)
  store %struct.Memory* %call_411d28, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 411d2e	 Bytes: 5
  %loadMem1_411d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411d2e = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411d2e, i64 -26110, i64 5, i64 5)
  store %struct.Memory* %call1_411d2e, %struct.Memory** %MEMORY

  %loadMem2_411d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411d2e = load i64, i64* %3
  %call2_411d2e = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_411d2e, %struct.Memory* %loadMem2_411d2e)
  store %struct.Memory* %call2_411d2e, %struct.Memory** %MEMORY

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 411d33	 Bytes: 7
  %loadMem_411d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d33 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d33)
  store %struct.Memory* %call_411d33, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %esi	 RIP: 411d3a	 Bytes: 6
  %loadMem_411d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d3a = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d3a)
  store %struct.Memory* %call_411d3a, %struct.Memory** %MEMORY

  ; Code: movl -0x6028(%rbp), %edx	 RIP: 411d40	 Bytes: 6
  %loadMem_411d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d40 = call %struct.Memory* @routine_movl_MINUS0x6028__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d40)
  store %struct.Memory* %call_411d40, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 411d46	 Bytes: 5
  %loadMem1_411d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411d46 = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411d46, i64 -46790, i64 5, i64 5)
  store %struct.Memory* %call1_411d46, %struct.Memory** %MEMORY

  %loadMem2_411d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411d46 = load i64, i64* %3
  %call2_411d46 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_411d46, %struct.Memory* %loadMem2_411d46)
  store %struct.Memory* %call2_411d46, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 411d4b	 Bytes: 3
  %loadMem_411d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d4b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d4b)
  store %struct.Memory* %call_411d4b, %struct.Memory** %MEMORY

  ; Code: je .L_411d5e	 RIP: 411d4e	 Bytes: 6
  %loadMem_411d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d4e = call %struct.Memory* @routine_je_.L_411d5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d4e, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_411d4e, %struct.Memory** %MEMORY

  %loadBr_411d4e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411d4e = icmp eq i8 %loadBr_411d4e, 1
  br i1 %cmpBr_411d4e, label %block_.L_411d5e, label %block_411d54

block_411d54:
  ; Code: movl $0x0, -0x6034(%rbp)	 RIP: 411d54	 Bytes: 10
  %loadMem_411d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d54 = call %struct.Memory* @routine_movl__0x0__MINUS0x6034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d54)
  store %struct.Memory* %call_411d54, %struct.Memory** %MEMORY

  ; Code: .L_411d5e:	 RIP: 411d5e	 Bytes: 0
  br label %block_.L_411d5e
block_.L_411d5e:

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 411d5e	 Bytes: 7
  %loadMem_411d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d5e = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d5e)
  store %struct.Memory* %call_411d5e, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %esi	 RIP: 411d65	 Bytes: 6
  %loadMem_411d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d65 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d65)
  store %struct.Memory* %call_411d65, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 411d6b	 Bytes: 5
  %loadMem1_411d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411d6b = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411d6b, i64 -21963, i64 5, i64 5)
  store %struct.Memory* %call1_411d6b, %struct.Memory** %MEMORY

  %loadMem2_411d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411d6b = load i64, i64* %3
  %call2_411d6b = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_411d6b, %struct.Memory* %loadMem2_411d6b)
  store %struct.Memory* %call2_411d6b, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %eax	 RIP: 411d70	 Bytes: 6
  %loadMem_411d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d70 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d70)
  store %struct.Memory* %call_411d70, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 411d76	 Bytes: 3
  %loadMem_411d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d76 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d76)
  store %struct.Memory* %call_411d76, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x601c(%rbp)	 RIP: 411d79	 Bytes: 6
  %loadMem_411d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d79 = call %struct.Memory* @routine_movl__eax__MINUS0x601c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d79)
  store %struct.Memory* %call_411d79, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411ce2	 RIP: 411d7f	 Bytes: 5
  %loadMem_411d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d7f = call %struct.Memory* @routine_jmpq_.L_411ce2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d7f, i64 -157, i64 5)
  store %struct.Memory* %call_411d7f, %struct.Memory** %MEMORY

  br label %block_.L_411ce2

  ; Code: .L_411d84:	 RIP: 411d84	 Bytes: 0
block_.L_411d84:

  ; Code: jmpq .L_411d89	 RIP: 411d84	 Bytes: 5
  %loadMem_411d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d84 = call %struct.Memory* @routine_jmpq_.L_411d89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d84, i64 5, i64 5)
  store %struct.Memory* %call_411d84, %struct.Memory** %MEMORY

  br label %block_.L_411d89

  ; Code: .L_411d89:	 RIP: 411d89	 Bytes: 0
block_.L_411d89:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 411d89	 Bytes: 7
  %loadMem_411d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d89 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d89)
  store %struct.Memory* %call_411d89, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %esi	 RIP: 411d90	 Bytes: 6
  %loadMem_411d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d90 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d90)
  store %struct.Memory* %call_411d90, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 411d96	 Bytes: 5
  %loadMem1_411d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411d96 = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411d96, i64 -22006, i64 5, i64 5)
  store %struct.Memory* %call1_411d96, %struct.Memory** %MEMORY

  %loadMem2_411d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411d96 = load i64, i64* %3
  %call2_411d96 = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_411d96, %struct.Memory* %loadMem2_411d96)
  store %struct.Memory* %call2_411d96, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %eax	 RIP: 411d9b	 Bytes: 6
  %loadMem_411d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411d9b = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411d9b)
  store %struct.Memory* %call_411d9b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 411da1	 Bytes: 3
  %loadMem_411da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411da1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411da1)
  store %struct.Memory* %call_411da1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6020(%rbp)	 RIP: 411da4	 Bytes: 6
  %loadMem_411da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411da4 = call %struct.Memory* @routine_movl__eax__MINUS0x6020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411da4)
  store %struct.Memory* %call_411da4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411c38	 RIP: 411daa	 Bytes: 5
  %loadMem_411daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411daa = call %struct.Memory* @routine_jmpq_.L_411c38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411daa, i64 -370, i64 5)
  store %struct.Memory* %call_411daa, %struct.Memory** %MEMORY

  br label %block_.L_411c38

  ; Code: .L_411daf:	 RIP: 411daf	 Bytes: 0
block_.L_411daf:

  ; Code: movl $0x4, %eax	 RIP: 411daf	 Bytes: 5
  %loadMem_411daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411daf = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411daf)
  store %struct.Memory* %call_411daf, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 411db4	 Bytes: 5
  %loadMem_411db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411db4 = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411db4)
  store %struct.Memory* %call_411db4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 411db9	 Bytes: 8
  %loadMem_411db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411db9 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411db9)
  store %struct.Memory* %call_411db9, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 411dc1	 Bytes: 3
  %loadMem_411dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411dc1 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411dc1)
  store %struct.Memory* %call_411dc1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 411dc4	 Bytes: 8
  %loadMem_411dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411dc4 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411dc4)
  store %struct.Memory* %call_411dc4, %struct.Memory** %MEMORY

  ; Code: setne %dl	 RIP: 411dcc	 Bytes: 3
  %loadMem_411dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411dcc = call %struct.Memory* @routine_setne__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411dcc)
  store %struct.Memory* %call_411dcc, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %dl	 RIP: 411dcf	 Bytes: 3
  %loadMem_411dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411dcf = call %struct.Memory* @routine_xorb__0xff___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411dcf)
  store %struct.Memory* %call_411dcf, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %dl	 RIP: 411dd2	 Bytes: 3
  %loadMem_411dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411dd2 = call %struct.Memory* @routine_andb__0x1___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411dd2)
  store %struct.Memory* %call_411dd2, %struct.Memory** %MEMORY

  ; Code: movzbl %dl, %esi	 RIP: 411dd5	 Bytes: 3
  %loadMem_411dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411dd5 = call %struct.Memory* @routine_movzbl__dl___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411dd5)
  store %struct.Memory* %call_411dd5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 411dd8	 Bytes: 2
  %loadMem_411dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411dd8 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411dd8)
  store %struct.Memory* %call_411dd8, %struct.Memory** %MEMORY

  ; Code: callq .DropremoveHolding	 RIP: 411dda	 Bytes: 5
  %loadMem1_411dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411dda = call %struct.Memory* @routine_callq_.DropremoveHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411dda, i64 -63018, i64 5, i64 5)
  store %struct.Memory* %call1_411dda, %struct.Memory** %MEMORY

  %loadMem2_411dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411dda = load i64, i64* %3
  %call2_411dda = call %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* %0, i64  %loadPC_411dda, %struct.Memory* %loadMem2_411dda)
  store %struct.Memory* %call2_411dda, %struct.Memory** %MEMORY

  ; Code: .L_411ddf:	 RIP: 411ddf	 Bytes: 0
  br label %block_.L_411ddf
block_.L_411ddf:

  ; Code: movl $0xc, %eax	 RIP: 411ddf	 Bytes: 5
  %loadMem_411ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ddf = call %struct.Memory* @routine_movl__0xc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ddf)
  store %struct.Memory* %call_411ddf, %struct.Memory** %MEMORY

  ; Code: movl $0xb, %ecx	 RIP: 411de4	 Bytes: 5
  %loadMem_411de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411de4 = call %struct.Memory* @routine_movl__0xb___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411de4)
  store %struct.Memory* %call_411de4, %struct.Memory** %MEMORY

  ; Code: movq $0x85f170, %rdx	 RIP: 411de9	 Bytes: 10
  %loadMem_411de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411de9 = call %struct.Memory* @routine_movq__0x85f170___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411de9)
  store %struct.Memory* %call_411de9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 411df3	 Bytes: 8
  %loadMem_411df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411df3 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411df3)
  store %struct.Memory* %call_411df3, %struct.Memory** %MEMORY

  ; Code: setne %sil	 RIP: 411dfb	 Bytes: 4
  %loadMem_411dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411dfb = call %struct.Memory* @routine_setne__sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411dfb)
  store %struct.Memory* %call_411dfb, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %sil	 RIP: 411dff	 Bytes: 4
  %loadMem_411dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411dff = call %struct.Memory* @routine_xorb__0xff___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411dff)
  store %struct.Memory* %call_411dff, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %sil	 RIP: 411e03	 Bytes: 4
  %loadMem_411e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e03 = call %struct.Memory* @routine_andb__0x1___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e03)
  store %struct.Memory* %call_411e03, %struct.Memory** %MEMORY

  ; Code: movzbl %sil, %edi	 RIP: 411e07	 Bytes: 4
  %loadMem_411e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e07 = call %struct.Memory* @routine_movzbl__sil___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e07)
  store %struct.Memory* %call_411e07, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 411e0b	 Bytes: 3
  %loadMem_411e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e0b = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e0b)
  store %struct.Memory* %call_411e0b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 411e0e	 Bytes: 4
  %loadMem_411e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e0e = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e0e)
  store %struct.Memory* %call_411e0e, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rdx	 RIP: 411e12	 Bytes: 3
  %loadMem_411e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e12 = call %struct.Memory* @routine_addq__r8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e12)
  store %struct.Memory* %call_411e12, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 411e15	 Bytes: 8
  %loadMem_411e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e15 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e15)
  store %struct.Memory* %call_411e15, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 411e1d	 Bytes: 3
  %loadMem_411e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e1d = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e1d)
  store %struct.Memory* %call_411e1d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 411e20	 Bytes: 3
  %loadMem_411e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e20 = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e20)
  store %struct.Memory* %call_411e20, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rdx,%r8,4)	 RIP: 411e23	 Bytes: 5
  %loadMem_411e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e23 = call %struct.Memory* @routine_cmpl__0x0____rdx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e23)
  store %struct.Memory* %call_411e23, %struct.Memory** %MEMORY

  ; Code: jne .L_412028	 RIP: 411e28	 Bytes: 6
  %loadMem_411e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e28 = call %struct.Memory* @routine_jne_.L_412028(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e28, i8* %BRANCH_TAKEN, i64 512, i64 6, i64 6)
  store %struct.Memory* %call_411e28, %struct.Memory** %MEMORY

  %loadBr_411e28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411e28 = icmp eq i8 %loadBr_411e28, 1
  br i1 %cmpBr_411e28, label %block_.L_412028, label %block_411e2e

block_411e2e:
  ; Code: movl $0xc, %eax	 RIP: 411e2e	 Bytes: 5
  %loadMem_411e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e2e = call %struct.Memory* @routine_movl__0xc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e2e)
  store %struct.Memory* %call_411e2e, %struct.Memory** %MEMORY

  ; Code: movl $0xb, %ecx	 RIP: 411e33	 Bytes: 5
  %loadMem_411e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e33 = call %struct.Memory* @routine_movl__0xb___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e33)
  store %struct.Memory* %call_411e33, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 411e38	 Bytes: 8
  %loadMem_411e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e38 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e38)
  store %struct.Memory* %call_411e38, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 411e40	 Bytes: 3
  %loadMem_411e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e40 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e40)
  store %struct.Memory* %call_411e40, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 411e43	 Bytes: 8
  %loadMem_411e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e43 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e43)
  store %struct.Memory* %call_411e43, %struct.Memory** %MEMORY

  ; Code: setne %dl	 RIP: 411e4b	 Bytes: 3
  %loadMem_411e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e4b = call %struct.Memory* @routine_setne__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e4b)
  store %struct.Memory* %call_411e4b, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %dl	 RIP: 411e4e	 Bytes: 3
  %loadMem_411e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e4e = call %struct.Memory* @routine_xorb__0xff___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e4e)
  store %struct.Memory* %call_411e4e, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %dl	 RIP: 411e51	 Bytes: 3
  %loadMem_411e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e51 = call %struct.Memory* @routine_andb__0x1___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e51)
  store %struct.Memory* %call_411e51, %struct.Memory** %MEMORY

  ; Code: movzbl %dl, %esi	 RIP: 411e54	 Bytes: 3
  %loadMem_411e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e54 = call %struct.Memory* @routine_movzbl__dl___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e54)
  store %struct.Memory* %call_411e54, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 411e57	 Bytes: 2
  %loadMem_411e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e57 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e57)
  store %struct.Memory* %call_411e57, %struct.Memory** %MEMORY

  ; Code: callq .DropaddHolding	 RIP: 411e59	 Bytes: 5
  %loadMem1_411e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411e59 = call %struct.Memory* @routine_callq_.DropaddHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411e59, i64 -63369, i64 5, i64 5)
  store %struct.Memory* %call1_411e59, %struct.Memory** %MEMORY

  %loadMem2_411e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411e59 = load i64, i64* %3
  %call2_411e59 = call %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* %0, i64  %loadPC_411e59, %struct.Memory* %loadMem2_411e59)
  store %struct.Memory* %call2_411e59, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 411e5e	 Bytes: 7
  %loadMem_411e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e5e = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e5e)
  store %struct.Memory* %call_411e5e, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 411e65	 Bytes: 5
  %loadMem1_411e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411e65 = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411e65, i64 -41013, i64 5, i64 5)
  store %struct.Memory* %call1_411e65, %struct.Memory** %MEMORY

  %loadMem2_411e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411e65 = load i64, i64* %3
  %call2_411e65 = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_411e65, %struct.Memory* %loadMem2_411e65)
  store %struct.Memory* %call2_411e65, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 411e6a	 Bytes: 7
  %loadMem_411e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e6a = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e6a)
  store %struct.Memory* %call_411e6a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6014(%rbp)	 RIP: 411e71	 Bytes: 6
  %loadMem_411e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e71 = call %struct.Memory* @routine_movl__eax__MINUS0x6014__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e71)
  store %struct.Memory* %call_411e71, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6020(%rbp)	 RIP: 411e77	 Bytes: 10
  %loadMem_411e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e77 = call %struct.Memory* @routine_movl__0x0__MINUS0x6020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e77)
  store %struct.Memory* %call_411e77, %struct.Memory** %MEMORY

  ; Code: .L_411e81:	 RIP: 411e81	 Bytes: 0
  br label %block_.L_411e81
block_.L_411e81:

  ; Code: xorl %eax, %eax	 RIP: 411e81	 Bytes: 2
  %loadMem_411e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e81 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e81)
  store %struct.Memory* %call_411e81, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 411e83	 Bytes: 2
  %loadMem_411e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e83 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e83)
  store %struct.Memory* %call_411e83, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %eax	 RIP: 411e85	 Bytes: 6
  %loadMem_411e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e85 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e85)
  store %struct.Memory* %call_411e85, %struct.Memory** %MEMORY

  ; Code: cmpl -0x6014(%rbp), %eax	 RIP: 411e8b	 Bytes: 6
  %loadMem_411e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e8b = call %struct.Memory* @routine_cmpl_MINUS0x6014__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e8b)
  store %struct.Memory* %call_411e8b, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x6059(%rbp)	 RIP: 411e91	 Bytes: 6
  %loadMem_411e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e91 = call %struct.Memory* @routine_movb__cl__MINUS0x6059__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e91)
  store %struct.Memory* %call_411e91, %struct.Memory** %MEMORY

  ; Code: jge .L_411ead	 RIP: 411e97	 Bytes: 6
  %loadMem_411e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e97 = call %struct.Memory* @routine_jge_.L_411ead(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e97, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_411e97, %struct.Memory** %MEMORY

  %loadBr_411e97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411e97 = icmp eq i8 %loadBr_411e97, 1
  br i1 %cmpBr_411e97, label %block_.L_411ead, label %block_411e9d

block_411e9d:
  ; Code: cmpl $0x0, -0x6038(%rbp)	 RIP: 411e9d	 Bytes: 7
  %loadMem_411e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411e9d = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411e9d)
  store %struct.Memory* %call_411e9d, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 411ea4	 Bytes: 3
  %loadMem_411ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ea4 = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ea4)
  store %struct.Memory* %call_411ea4, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x6059(%rbp)	 RIP: 411ea7	 Bytes: 6
  %loadMem_411ea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ea7 = call %struct.Memory* @routine_movb__al__MINUS0x6059__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ea7)
  store %struct.Memory* %call_411ea7, %struct.Memory** %MEMORY

  ; Code: .L_411ead:	 RIP: 411ead	 Bytes: 0
  br label %block_.L_411ead
block_.L_411ead:

  ; Code: movb -0x6059(%rbp), %al	 RIP: 411ead	 Bytes: 6
  %loadMem_411ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ead = call %struct.Memory* @routine_movb_MINUS0x6059__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ead)
  store %struct.Memory* %call_411ead, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 411eb3	 Bytes: 2
  %loadMem_411eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411eb3 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411eb3)
  store %struct.Memory* %call_411eb3, %struct.Memory** %MEMORY

  ; Code: jne .L_411ec0	 RIP: 411eb5	 Bytes: 6
  %loadMem_411eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411eb5 = call %struct.Memory* @routine_jne_.L_411ec0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411eb5, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_411eb5, %struct.Memory** %MEMORY

  %loadBr_411eb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411eb5 = icmp eq i8 %loadBr_411eb5, 1
  br i1 %cmpBr_411eb5, label %block_.L_411ec0, label %block_411ebb

block_411ebb:
  ; Code: jmpq .L_411ff8	 RIP: 411ebb	 Bytes: 5
  %loadMem_411ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ebb = call %struct.Memory* @routine_jmpq_.L_411ff8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ebb, i64 317, i64 5)
  store %struct.Memory* %call_411ebb, %struct.Memory** %MEMORY

  br label %block_.L_411ff8

  ; Code: .L_411ec0:	 RIP: 411ec0	 Bytes: 0
block_.L_411ec0:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 411ec0	 Bytes: 7
  %loadMem_411ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ec0 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ec0)
  store %struct.Memory* %call_411ec0, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %esi	 RIP: 411ec7	 Bytes: 6
  %loadMem_411ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ec7 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ec7)
  store %struct.Memory* %call_411ec7, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 411ecd	 Bytes: 5
  %loadMem1_411ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411ecd = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411ecd, i64 -26525, i64 5, i64 5)
  store %struct.Memory* %call1_411ecd, %struct.Memory** %MEMORY

  %loadMem2_411ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411ecd = load i64, i64* %3
  %call2_411ecd = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_411ecd, %struct.Memory* %loadMem2_411ecd)
  store %struct.Memory* %call2_411ecd, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 411ed2	 Bytes: 7
  %loadMem_411ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ed2 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ed2)
  store %struct.Memory* %call_411ed2, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %esi	 RIP: 411ed9	 Bytes: 6
  %loadMem_411ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ed9 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ed9)
  store %struct.Memory* %call_411ed9, %struct.Memory** %MEMORY

  ; Code: movl -0x6024(%rbp), %edx	 RIP: 411edf	 Bytes: 6
  %loadMem_411edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411edf = call %struct.Memory* @routine_movl_MINUS0x6024__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411edf)
  store %struct.Memory* %call_411edf, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 411ee5	 Bytes: 5
  %loadMem1_411ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411ee5 = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411ee5, i64 -47205, i64 5, i64 5)
  store %struct.Memory* %call1_411ee5, %struct.Memory** %MEMORY

  %loadMem2_411ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411ee5 = load i64, i64* %3
  %call2_411ee5 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_411ee5, %struct.Memory* %loadMem2_411ee5)
  store %struct.Memory* %call2_411ee5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 411eea	 Bytes: 3
  %loadMem_411eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411eea = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411eea)
  store %struct.Memory* %call_411eea, %struct.Memory** %MEMORY

  ; Code: je .L_411fd2	 RIP: 411eed	 Bytes: 6
  %loadMem_411eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411eed = call %struct.Memory* @routine_je_.L_411fd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411eed, i8* %BRANCH_TAKEN, i64 229, i64 6, i64 6)
  store %struct.Memory* %call_411eed, %struct.Memory** %MEMORY

  %loadBr_411eed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411eed = icmp eq i8 %loadBr_411eed, 1
  br i1 %cmpBr_411eed, label %block_.L_411fd2, label %block_411ef3

block_411ef3:
  ; Code: movl $0x3, -0x6038(%rbp)	 RIP: 411ef3	 Bytes: 10
  %loadMem_411ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ef3 = call %struct.Memory* @routine_movl__0x3__MINUS0x6038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ef3)
  store %struct.Memory* %call_411ef3, %struct.Memory** %MEMORY

  ; Code: callq .in_check	 RIP: 411efd	 Bytes: 5
  %loadMem1_411efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411efd = call %struct.Memory* @routine_callq_.in_check(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411efd, i64 -34333, i64 5, i64 5)
  store %struct.Memory* %call1_411efd, %struct.Memory** %MEMORY

  %loadMem2_411efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411efd = load i64, i64* %3
  %call2_411efd = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64  %loadPC_411efd, %struct.Memory* %loadMem2_411efd)
  store %struct.Memory* %call2_411efd, %struct.Memory** %MEMORY

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 411f02	 Bytes: 7
  %loadMem_411f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f02 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f02)
  store %struct.Memory* %call_411f02, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6028(%rbp)	 RIP: 411f09	 Bytes: 6
  %loadMem_411f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f09 = call %struct.Memory* @routine_movl__eax__MINUS0x6028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f09)
  store %struct.Memory* %call_411f09, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 411f0f	 Bytes: 5
  %loadMem1_411f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411f0f = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411f0f, i64 -41183, i64 5, i64 5)
  store %struct.Memory* %call1_411f0f, %struct.Memory** %MEMORY

  %loadMem2_411f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411f0f = load i64, i64* %3
  %call2_411f0f = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_411f0f, %struct.Memory* %loadMem2_411f0f)
  store %struct.Memory* %call2_411f0f, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 411f14	 Bytes: 7
  %loadMem_411f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f14 = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f14)
  store %struct.Memory* %call_411f14, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6018(%rbp)	 RIP: 411f1b	 Bytes: 6
  %loadMem_411f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f1b = call %struct.Memory* @routine_movl__eax__MINUS0x6018__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f1b)
  store %struct.Memory* %call_411f1b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x601c(%rbp)	 RIP: 411f21	 Bytes: 10
  %loadMem_411f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f21 = call %struct.Memory* @routine_movl__0x0__MINUS0x601c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f21)
  store %struct.Memory* %call_411f21, %struct.Memory** %MEMORY

  ; Code: .L_411f2b:	 RIP: 411f2b	 Bytes: 0
  br label %block_.L_411f2b
block_.L_411f2b:

  ; Code: xorl %eax, %eax	 RIP: 411f2b	 Bytes: 2
  %loadMem_411f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f2b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f2b)
  store %struct.Memory* %call_411f2b, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 411f2d	 Bytes: 2
  %loadMem_411f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f2d = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f2d)
  store %struct.Memory* %call_411f2d, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %eax	 RIP: 411f2f	 Bytes: 6
  %loadMem_411f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f2f = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f2f)
  store %struct.Memory* %call_411f2f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x6018(%rbp), %eax	 RIP: 411f35	 Bytes: 6
  %loadMem_411f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f35 = call %struct.Memory* @routine_cmpl_MINUS0x6018__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f35)
  store %struct.Memory* %call_411f35, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x605a(%rbp)	 RIP: 411f3b	 Bytes: 6
  %loadMem_411f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f3b = call %struct.Memory* @routine_movb__cl__MINUS0x605a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f3b)
  store %struct.Memory* %call_411f3b, %struct.Memory** %MEMORY

  ; Code: jge .L_411f57	 RIP: 411f41	 Bytes: 6
  %loadMem_411f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f41 = call %struct.Memory* @routine_jge_.L_411f57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f41, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_411f41, %struct.Memory** %MEMORY

  %loadBr_411f41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411f41 = icmp eq i8 %loadBr_411f41, 1
  br i1 %cmpBr_411f41, label %block_.L_411f57, label %block_411f47

block_411f47:
  ; Code: cmpl $0x0, -0x6038(%rbp)	 RIP: 411f47	 Bytes: 7
  %loadMem_411f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f47 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f47)
  store %struct.Memory* %call_411f47, %struct.Memory** %MEMORY

  ; Code: setne %al	 RIP: 411f4e	 Bytes: 3
  %loadMem_411f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f4e = call %struct.Memory* @routine_setne__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f4e)
  store %struct.Memory* %call_411f4e, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x605a(%rbp)	 RIP: 411f51	 Bytes: 6
  %loadMem_411f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f51 = call %struct.Memory* @routine_movb__al__MINUS0x605a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f51)
  store %struct.Memory* %call_411f51, %struct.Memory** %MEMORY

  ; Code: .L_411f57:	 RIP: 411f57	 Bytes: 0
  br label %block_.L_411f57
block_.L_411f57:

  ; Code: movb -0x605a(%rbp), %al	 RIP: 411f57	 Bytes: 6
  %loadMem_411f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f57 = call %struct.Memory* @routine_movb_MINUS0x605a__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f57)
  store %struct.Memory* %call_411f57, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 411f5d	 Bytes: 2
  %loadMem_411f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f5d = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f5d)
  store %struct.Memory* %call_411f5d, %struct.Memory** %MEMORY

  ; Code: jne .L_411f6a	 RIP: 411f5f	 Bytes: 6
  %loadMem_411f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f5f = call %struct.Memory* @routine_jne_.L_411f6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f5f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_411f5f, %struct.Memory** %MEMORY

  %loadBr_411f5f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411f5f = icmp eq i8 %loadBr_411f5f, 1
  br i1 %cmpBr_411f5f, label %block_.L_411f6a, label %block_411f65

block_411f65:
  ; Code: jmpq .L_411fcd	 RIP: 411f65	 Bytes: 5
  %loadMem_411f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f65 = call %struct.Memory* @routine_jmpq_.L_411fcd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f65, i64 104, i64 5)
  store %struct.Memory* %call_411f65, %struct.Memory** %MEMORY

  br label %block_.L_411fcd

  ; Code: .L_411f6a:	 RIP: 411f6a	 Bytes: 0
block_.L_411f6a:

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 411f6a	 Bytes: 7
  %loadMem_411f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f6a = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f6a)
  store %struct.Memory* %call_411f6a, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %esi	 RIP: 411f71	 Bytes: 6
  %loadMem_411f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f71 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f71)
  store %struct.Memory* %call_411f71, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 411f77	 Bytes: 5
  %loadMem1_411f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411f77 = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411f77, i64 -26695, i64 5, i64 5)
  store %struct.Memory* %call1_411f77, %struct.Memory** %MEMORY

  %loadMem2_411f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411f77 = load i64, i64* %3
  %call2_411f77 = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_411f77, %struct.Memory* %loadMem2_411f77)
  store %struct.Memory* %call2_411f77, %struct.Memory** %MEMORY

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 411f7c	 Bytes: 7
  %loadMem_411f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f7c = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f7c)
  store %struct.Memory* %call_411f7c, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %esi	 RIP: 411f83	 Bytes: 6
  %loadMem_411f83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f83 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f83)
  store %struct.Memory* %call_411f83, %struct.Memory** %MEMORY

  ; Code: movl -0x6028(%rbp), %edx	 RIP: 411f89	 Bytes: 6
  %loadMem_411f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f89 = call %struct.Memory* @routine_movl_MINUS0x6028__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f89)
  store %struct.Memory* %call_411f89, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 411f8f	 Bytes: 5
  %loadMem1_411f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411f8f = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411f8f, i64 -47375, i64 5, i64 5)
  store %struct.Memory* %call1_411f8f, %struct.Memory** %MEMORY

  %loadMem2_411f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411f8f = load i64, i64* %3
  %call2_411f8f = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_411f8f, %struct.Memory* %loadMem2_411f8f)
  store %struct.Memory* %call2_411f8f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 411f94	 Bytes: 3
  %loadMem_411f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f94 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f94)
  store %struct.Memory* %call_411f94, %struct.Memory** %MEMORY

  ; Code: je .L_411fa7	 RIP: 411f97	 Bytes: 6
  %loadMem_411f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f97 = call %struct.Memory* @routine_je_.L_411fa7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f97, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_411f97, %struct.Memory** %MEMORY

  %loadBr_411f97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411f97 = icmp eq i8 %loadBr_411f97, 1
  br i1 %cmpBr_411f97, label %block_.L_411fa7, label %block_411f9d

block_411f9d:
  ; Code: movl $0x0, -0x6038(%rbp)	 RIP: 411f9d	 Bytes: 10
  %loadMem_411f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411f9d = call %struct.Memory* @routine_movl__0x0__MINUS0x6038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411f9d)
  store %struct.Memory* %call_411f9d, %struct.Memory** %MEMORY

  ; Code: .L_411fa7:	 RIP: 411fa7	 Bytes: 0
  br label %block_.L_411fa7
block_.L_411fa7:

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 411fa7	 Bytes: 7
  %loadMem_411fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411fa7 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411fa7)
  store %struct.Memory* %call_411fa7, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %esi	 RIP: 411fae	 Bytes: 6
  %loadMem_411fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411fae = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411fae)
  store %struct.Memory* %call_411fae, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 411fb4	 Bytes: 5
  %loadMem1_411fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411fb4 = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411fb4, i64 -22548, i64 5, i64 5)
  store %struct.Memory* %call1_411fb4, %struct.Memory** %MEMORY

  %loadMem2_411fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411fb4 = load i64, i64* %3
  %call2_411fb4 = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_411fb4, %struct.Memory* %loadMem2_411fb4)
  store %struct.Memory* %call2_411fb4, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %eax	 RIP: 411fb9	 Bytes: 6
  %loadMem_411fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411fb9 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411fb9)
  store %struct.Memory* %call_411fb9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 411fbf	 Bytes: 3
  %loadMem_411fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411fbf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411fbf)
  store %struct.Memory* %call_411fbf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x601c(%rbp)	 RIP: 411fc2	 Bytes: 6
  %loadMem_411fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411fc2 = call %struct.Memory* @routine_movl__eax__MINUS0x601c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411fc2)
  store %struct.Memory* %call_411fc2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411f2b	 RIP: 411fc8	 Bytes: 5
  %loadMem_411fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411fc8 = call %struct.Memory* @routine_jmpq_.L_411f2b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411fc8, i64 -157, i64 5)
  store %struct.Memory* %call_411fc8, %struct.Memory** %MEMORY

  br label %block_.L_411f2b

  ; Code: .L_411fcd:	 RIP: 411fcd	 Bytes: 0
block_.L_411fcd:

  ; Code: jmpq .L_411fd2	 RIP: 411fcd	 Bytes: 5
  %loadMem_411fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411fcd = call %struct.Memory* @routine_jmpq_.L_411fd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411fcd, i64 5, i64 5)
  store %struct.Memory* %call_411fcd, %struct.Memory** %MEMORY

  br label %block_.L_411fd2

  ; Code: .L_411fd2:	 RIP: 411fd2	 Bytes: 0
block_.L_411fd2:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 411fd2	 Bytes: 7
  %loadMem_411fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411fd2 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411fd2)
  store %struct.Memory* %call_411fd2, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %esi	 RIP: 411fd9	 Bytes: 6
  %loadMem_411fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411fd9 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411fd9)
  store %struct.Memory* %call_411fd9, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 411fdf	 Bytes: 5
  %loadMem1_411fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411fdf = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411fdf, i64 -22591, i64 5, i64 5)
  store %struct.Memory* %call1_411fdf, %struct.Memory** %MEMORY

  %loadMem2_411fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411fdf = load i64, i64* %3
  %call2_411fdf = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_411fdf, %struct.Memory* %loadMem2_411fdf)
  store %struct.Memory* %call2_411fdf, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %eax	 RIP: 411fe4	 Bytes: 6
  %loadMem_411fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411fe4 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411fe4)
  store %struct.Memory* %call_411fe4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 411fea	 Bytes: 3
  %loadMem_411fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411fea = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411fea)
  store %struct.Memory* %call_411fea, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6020(%rbp)	 RIP: 411fed	 Bytes: 6
  %loadMem_411fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411fed = call %struct.Memory* @routine_movl__eax__MINUS0x6020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411fed)
  store %struct.Memory* %call_411fed, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411e81	 RIP: 411ff3	 Bytes: 5
  %loadMem_411ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ff3 = call %struct.Memory* @routine_jmpq_.L_411e81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ff3, i64 -370, i64 5)
  store %struct.Memory* %call_411ff3, %struct.Memory** %MEMORY

  br label %block_.L_411e81

  ; Code: .L_411ff8:	 RIP: 411ff8	 Bytes: 0
block_.L_411ff8:

  ; Code: movl $0xc, %eax	 RIP: 411ff8	 Bytes: 5
  %loadMem_411ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ff8 = call %struct.Memory* @routine_movl__0xc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ff8)
  store %struct.Memory* %call_411ff8, %struct.Memory** %MEMORY

  ; Code: movl $0xb, %ecx	 RIP: 411ffd	 Bytes: 5
  %loadMem_411ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411ffd = call %struct.Memory* @routine_movl__0xb___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411ffd)
  store %struct.Memory* %call_411ffd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 412002	 Bytes: 8
  %loadMem_412002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412002 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412002)
  store %struct.Memory* %call_412002, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 41200a	 Bytes: 3
  %loadMem_41200a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41200a = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41200a)
  store %struct.Memory* %call_41200a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 41200d	 Bytes: 8
  %loadMem_41200d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41200d = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41200d)
  store %struct.Memory* %call_41200d, %struct.Memory** %MEMORY

  ; Code: setne %dl	 RIP: 412015	 Bytes: 3
  %loadMem_412015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412015 = call %struct.Memory* @routine_setne__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412015)
  store %struct.Memory* %call_412015, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %dl	 RIP: 412018	 Bytes: 3
  %loadMem_412018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412018 = call %struct.Memory* @routine_xorb__0xff___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412018)
  store %struct.Memory* %call_412018, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %dl	 RIP: 41201b	 Bytes: 3
  %loadMem_41201b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41201b = call %struct.Memory* @routine_andb__0x1___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41201b)
  store %struct.Memory* %call_41201b, %struct.Memory** %MEMORY

  ; Code: movzbl %dl, %esi	 RIP: 41201e	 Bytes: 3
  %loadMem_41201e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41201e = call %struct.Memory* @routine_movzbl__dl___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41201e)
  store %struct.Memory* %call_41201e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 412021	 Bytes: 2
  %loadMem_412021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412021 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412021)
  store %struct.Memory* %call_412021, %struct.Memory** %MEMORY

  ; Code: callq .DropremoveHolding	 RIP: 412023	 Bytes: 5
  %loadMem1_412023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412023 = call %struct.Memory* @routine_callq_.DropremoveHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412023, i64 -63603, i64 5, i64 5)
  store %struct.Memory* %call1_412023, %struct.Memory** %MEMORY

  %loadMem2_412023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412023 = load i64, i64* %3
  %call2_412023 = call %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* %0, i64  %loadPC_412023, %struct.Memory* %loadMem2_412023)
  store %struct.Memory* %call2_412023, %struct.Memory** %MEMORY

  ; Code: .L_412028:	 RIP: 412028	 Bytes: 0
  br label %block_.L_412028
block_.L_412028:

  ; Code: movl $0x8, %eax	 RIP: 412028	 Bytes: 5
  %loadMem_412028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412028 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412028)
  store %struct.Memory* %call_412028, %struct.Memory** %MEMORY

  ; Code: movl $0x7, %ecx	 RIP: 41202d	 Bytes: 5
  %loadMem_41202d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41202d = call %struct.Memory* @routine_movl__0x7___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41202d)
  store %struct.Memory* %call_41202d, %struct.Memory** %MEMORY

  ; Code: movq $0x85f170, %rdx	 RIP: 412032	 Bytes: 10
  %loadMem_412032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412032 = call %struct.Memory* @routine_movq__0x85f170___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412032)
  store %struct.Memory* %call_412032, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 41203c	 Bytes: 8
  %loadMem_41203c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41203c = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41203c)
  store %struct.Memory* %call_41203c, %struct.Memory** %MEMORY

  ; Code: setne %sil	 RIP: 412044	 Bytes: 4
  %loadMem_412044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412044 = call %struct.Memory* @routine_setne__sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412044)
  store %struct.Memory* %call_412044, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %sil	 RIP: 412048	 Bytes: 4
  %loadMem_412048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412048 = call %struct.Memory* @routine_xorb__0xff___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412048)
  store %struct.Memory* %call_412048, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %sil	 RIP: 41204c	 Bytes: 4
  %loadMem_41204c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41204c = call %struct.Memory* @routine_andb__0x1___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41204c)
  store %struct.Memory* %call_41204c, %struct.Memory** %MEMORY

  ; Code: movzbl %sil, %edi	 RIP: 412050	 Bytes: 4
  %loadMem_412050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412050 = call %struct.Memory* @routine_movzbl__sil___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412050)
  store %struct.Memory* %call_412050, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 412054	 Bytes: 3
  %loadMem_412054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412054 = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412054)
  store %struct.Memory* %call_412054, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 412057	 Bytes: 4
  %loadMem_412057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412057 = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412057)
  store %struct.Memory* %call_412057, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rdx	 RIP: 41205b	 Bytes: 3
  %loadMem_41205b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41205b = call %struct.Memory* @routine_addq__r8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41205b)
  store %struct.Memory* %call_41205b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 41205e	 Bytes: 8
  %loadMem_41205e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41205e = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41205e)
  store %struct.Memory* %call_41205e, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 412066	 Bytes: 3
  %loadMem_412066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412066 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412066)
  store %struct.Memory* %call_412066, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 412069	 Bytes: 3
  %loadMem_412069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412069 = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412069)
  store %struct.Memory* %call_412069, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rdx,%r8,4)	 RIP: 41206c	 Bytes: 5
  %loadMem_41206c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41206c = call %struct.Memory* @routine_cmpl__0x0____rdx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41206c)
  store %struct.Memory* %call_41206c, %struct.Memory** %MEMORY

  ; Code: jne .L_412271	 RIP: 412071	 Bytes: 6
  %loadMem_412071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412071 = call %struct.Memory* @routine_jne_.L_412271(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412071, i8* %BRANCH_TAKEN, i64 512, i64 6, i64 6)
  store %struct.Memory* %call_412071, %struct.Memory** %MEMORY

  %loadBr_412071 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412071 = icmp eq i8 %loadBr_412071, 1
  br i1 %cmpBr_412071, label %block_.L_412271, label %block_412077

block_412077:
  ; Code: movl $0x8, %eax	 RIP: 412077	 Bytes: 5
  %loadMem_412077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412077 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412077)
  store %struct.Memory* %call_412077, %struct.Memory** %MEMORY

  ; Code: movl $0x7, %ecx	 RIP: 41207c	 Bytes: 5
  %loadMem_41207c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41207c = call %struct.Memory* @routine_movl__0x7___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41207c)
  store %struct.Memory* %call_41207c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 412081	 Bytes: 8
  %loadMem_412081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412081 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412081)
  store %struct.Memory* %call_412081, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 412089	 Bytes: 3
  %loadMem_412089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412089 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412089)
  store %struct.Memory* %call_412089, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 41208c	 Bytes: 8
  %loadMem_41208c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41208c = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41208c)
  store %struct.Memory* %call_41208c, %struct.Memory** %MEMORY

  ; Code: setne %dl	 RIP: 412094	 Bytes: 3
  %loadMem_412094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412094 = call %struct.Memory* @routine_setne__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412094)
  store %struct.Memory* %call_412094, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %dl	 RIP: 412097	 Bytes: 3
  %loadMem_412097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412097 = call %struct.Memory* @routine_xorb__0xff___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412097)
  store %struct.Memory* %call_412097, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %dl	 RIP: 41209a	 Bytes: 3
  %loadMem_41209a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41209a = call %struct.Memory* @routine_andb__0x1___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41209a)
  store %struct.Memory* %call_41209a, %struct.Memory** %MEMORY

  ; Code: movzbl %dl, %esi	 RIP: 41209d	 Bytes: 3
  %loadMem_41209d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41209d = call %struct.Memory* @routine_movzbl__dl___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41209d)
  store %struct.Memory* %call_41209d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 4120a0	 Bytes: 2
  %loadMem_4120a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120a0 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120a0)
  store %struct.Memory* %call_4120a0, %struct.Memory** %MEMORY

  ; Code: callq .DropaddHolding	 RIP: 4120a2	 Bytes: 5
  %loadMem1_4120a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4120a2 = call %struct.Memory* @routine_callq_.DropaddHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4120a2, i64 -63954, i64 5, i64 5)
  store %struct.Memory* %call1_4120a2, %struct.Memory** %MEMORY

  %loadMem2_4120a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4120a2 = load i64, i64* %3
  %call2_4120a2 = call %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* %0, i64  %loadPC_4120a2, %struct.Memory* %loadMem2_4120a2)
  store %struct.Memory* %call2_4120a2, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 4120a7	 Bytes: 7
  %loadMem_4120a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120a7 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120a7)
  store %struct.Memory* %call_4120a7, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 4120ae	 Bytes: 5
  %loadMem1_4120ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4120ae = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4120ae, i64 -41598, i64 5, i64 5)
  store %struct.Memory* %call1_4120ae, %struct.Memory** %MEMORY

  %loadMem2_4120ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4120ae = load i64, i64* %3
  %call2_4120ae = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_4120ae, %struct.Memory* %loadMem2_4120ae)
  store %struct.Memory* %call2_4120ae, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 4120b3	 Bytes: 7
  %loadMem_4120b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120b3 = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120b3)
  store %struct.Memory* %call_4120b3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6014(%rbp)	 RIP: 4120ba	 Bytes: 6
  %loadMem_4120ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120ba = call %struct.Memory* @routine_movl__eax__MINUS0x6014__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120ba)
  store %struct.Memory* %call_4120ba, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6020(%rbp)	 RIP: 4120c0	 Bytes: 10
  %loadMem_4120c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120c0 = call %struct.Memory* @routine_movl__0x0__MINUS0x6020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120c0)
  store %struct.Memory* %call_4120c0, %struct.Memory** %MEMORY

  ; Code: .L_4120ca:	 RIP: 4120ca	 Bytes: 0
  br label %block_.L_4120ca
block_.L_4120ca:

  ; Code: xorl %eax, %eax	 RIP: 4120ca	 Bytes: 2
  %loadMem_4120ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120ca = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120ca)
  store %struct.Memory* %call_4120ca, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 4120cc	 Bytes: 2
  %loadMem_4120cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120cc = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120cc)
  store %struct.Memory* %call_4120cc, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %eax	 RIP: 4120ce	 Bytes: 6
  %loadMem_4120ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120ce = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120ce)
  store %struct.Memory* %call_4120ce, %struct.Memory** %MEMORY

  ; Code: cmpl -0x6014(%rbp), %eax	 RIP: 4120d4	 Bytes: 6
  %loadMem_4120d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120d4 = call %struct.Memory* @routine_cmpl_MINUS0x6014__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120d4)
  store %struct.Memory* %call_4120d4, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x605b(%rbp)	 RIP: 4120da	 Bytes: 6
  %loadMem_4120da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120da = call %struct.Memory* @routine_movb__cl__MINUS0x605b__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120da)
  store %struct.Memory* %call_4120da, %struct.Memory** %MEMORY

  ; Code: jge .L_4120f6	 RIP: 4120e0	 Bytes: 6
  %loadMem_4120e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120e0 = call %struct.Memory* @routine_jge_.L_4120f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120e0, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4120e0, %struct.Memory** %MEMORY

  %loadBr_4120e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4120e0 = icmp eq i8 %loadBr_4120e0, 1
  br i1 %cmpBr_4120e0, label %block_.L_4120f6, label %block_4120e6

block_4120e6:
  ; Code: cmpl $0x0, -0x603c(%rbp)	 RIP: 4120e6	 Bytes: 7
  %loadMem_4120e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120e6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x603c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120e6)
  store %struct.Memory* %call_4120e6, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 4120ed	 Bytes: 3
  %loadMem_4120ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120ed = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120ed)
  store %struct.Memory* %call_4120ed, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x605b(%rbp)	 RIP: 4120f0	 Bytes: 6
  %loadMem_4120f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120f0 = call %struct.Memory* @routine_movb__al__MINUS0x605b__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120f0)
  store %struct.Memory* %call_4120f0, %struct.Memory** %MEMORY

  ; Code: .L_4120f6:	 RIP: 4120f6	 Bytes: 0
  br label %block_.L_4120f6
block_.L_4120f6:

  ; Code: movb -0x605b(%rbp), %al	 RIP: 4120f6	 Bytes: 6
  %loadMem_4120f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120f6 = call %struct.Memory* @routine_movb_MINUS0x605b__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120f6)
  store %struct.Memory* %call_4120f6, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 4120fc	 Bytes: 2
  %loadMem_4120fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120fc = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120fc)
  store %struct.Memory* %call_4120fc, %struct.Memory** %MEMORY

  ; Code: jne .L_412109	 RIP: 4120fe	 Bytes: 6
  %loadMem_4120fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120fe = call %struct.Memory* @routine_jne_.L_412109(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120fe, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4120fe, %struct.Memory** %MEMORY

  %loadBr_4120fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4120fe = icmp eq i8 %loadBr_4120fe, 1
  br i1 %cmpBr_4120fe, label %block_.L_412109, label %block_412104

block_412104:
  ; Code: jmpq .L_412241	 RIP: 412104	 Bytes: 5
  %loadMem_412104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412104 = call %struct.Memory* @routine_jmpq_.L_412241(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412104, i64 317, i64 5)
  store %struct.Memory* %call_412104, %struct.Memory** %MEMORY

  br label %block_.L_412241

  ; Code: .L_412109:	 RIP: 412109	 Bytes: 0
block_.L_412109:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 412109	 Bytes: 7
  %loadMem_412109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412109 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412109)
  store %struct.Memory* %call_412109, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %esi	 RIP: 412110	 Bytes: 6
  %loadMem_412110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412110 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412110)
  store %struct.Memory* %call_412110, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 412116	 Bytes: 5
  %loadMem1_412116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412116 = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412116, i64 -27110, i64 5, i64 5)
  store %struct.Memory* %call1_412116, %struct.Memory** %MEMORY

  %loadMem2_412116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412116 = load i64, i64* %3
  %call2_412116 = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_412116, %struct.Memory* %loadMem2_412116)
  store %struct.Memory* %call2_412116, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 41211b	 Bytes: 7
  %loadMem_41211b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41211b = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41211b)
  store %struct.Memory* %call_41211b, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %esi	 RIP: 412122	 Bytes: 6
  %loadMem_412122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412122 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412122)
  store %struct.Memory* %call_412122, %struct.Memory** %MEMORY

  ; Code: movl -0x6024(%rbp), %edx	 RIP: 412128	 Bytes: 6
  %loadMem_412128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412128 = call %struct.Memory* @routine_movl_MINUS0x6024__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412128)
  store %struct.Memory* %call_412128, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 41212e	 Bytes: 5
  %loadMem1_41212e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41212e = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41212e, i64 -47790, i64 5, i64 5)
  store %struct.Memory* %call1_41212e, %struct.Memory** %MEMORY

  %loadMem2_41212e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41212e = load i64, i64* %3
  %call2_41212e = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_41212e, %struct.Memory* %loadMem2_41212e)
  store %struct.Memory* %call2_41212e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 412133	 Bytes: 3
  %loadMem_412133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412133 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412133)
  store %struct.Memory* %call_412133, %struct.Memory** %MEMORY

  ; Code: je .L_41221b	 RIP: 412136	 Bytes: 6
  %loadMem_412136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412136 = call %struct.Memory* @routine_je_.L_41221b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412136, i8* %BRANCH_TAKEN, i64 229, i64 6, i64 6)
  store %struct.Memory* %call_412136, %struct.Memory** %MEMORY

  %loadBr_412136 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412136 = icmp eq i8 %loadBr_412136, 1
  br i1 %cmpBr_412136, label %block_.L_41221b, label %block_41213c

block_41213c:
  ; Code: movl $0x3, -0x603c(%rbp)	 RIP: 41213c	 Bytes: 10
  %loadMem_41213c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41213c = call %struct.Memory* @routine_movl__0x3__MINUS0x603c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41213c)
  store %struct.Memory* %call_41213c, %struct.Memory** %MEMORY

  ; Code: callq .in_check	 RIP: 412146	 Bytes: 5
  %loadMem1_412146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412146 = call %struct.Memory* @routine_callq_.in_check(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412146, i64 -34918, i64 5, i64 5)
  store %struct.Memory* %call1_412146, %struct.Memory** %MEMORY

  %loadMem2_412146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412146 = load i64, i64* %3
  %call2_412146 = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64  %loadPC_412146, %struct.Memory* %loadMem2_412146)
  store %struct.Memory* %call2_412146, %struct.Memory** %MEMORY

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 41214b	 Bytes: 7
  %loadMem_41214b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41214b = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41214b)
  store %struct.Memory* %call_41214b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6028(%rbp)	 RIP: 412152	 Bytes: 6
  %loadMem_412152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412152 = call %struct.Memory* @routine_movl__eax__MINUS0x6028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412152)
  store %struct.Memory* %call_412152, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 412158	 Bytes: 5
  %loadMem1_412158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412158 = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412158, i64 -41768, i64 5, i64 5)
  store %struct.Memory* %call1_412158, %struct.Memory** %MEMORY

  %loadMem2_412158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412158 = load i64, i64* %3
  %call2_412158 = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_412158, %struct.Memory* %loadMem2_412158)
  store %struct.Memory* %call2_412158, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 41215d	 Bytes: 7
  %loadMem_41215d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41215d = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41215d)
  store %struct.Memory* %call_41215d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6018(%rbp)	 RIP: 412164	 Bytes: 6
  %loadMem_412164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412164 = call %struct.Memory* @routine_movl__eax__MINUS0x6018__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412164)
  store %struct.Memory* %call_412164, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x601c(%rbp)	 RIP: 41216a	 Bytes: 10
  %loadMem_41216a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41216a = call %struct.Memory* @routine_movl__0x0__MINUS0x601c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41216a)
  store %struct.Memory* %call_41216a, %struct.Memory** %MEMORY

  ; Code: .L_412174:	 RIP: 412174	 Bytes: 0
  br label %block_.L_412174
block_.L_412174:

  ; Code: xorl %eax, %eax	 RIP: 412174	 Bytes: 2
  %loadMem_412174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412174 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412174)
  store %struct.Memory* %call_412174, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 412176	 Bytes: 2
  %loadMem_412176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412176 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412176)
  store %struct.Memory* %call_412176, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %eax	 RIP: 412178	 Bytes: 6
  %loadMem_412178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412178 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412178)
  store %struct.Memory* %call_412178, %struct.Memory** %MEMORY

  ; Code: cmpl -0x6018(%rbp), %eax	 RIP: 41217e	 Bytes: 6
  %loadMem_41217e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41217e = call %struct.Memory* @routine_cmpl_MINUS0x6018__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41217e)
  store %struct.Memory* %call_41217e, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x605c(%rbp)	 RIP: 412184	 Bytes: 6
  %loadMem_412184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412184 = call %struct.Memory* @routine_movb__cl__MINUS0x605c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412184)
  store %struct.Memory* %call_412184, %struct.Memory** %MEMORY

  ; Code: jge .L_4121a0	 RIP: 41218a	 Bytes: 6
  %loadMem_41218a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41218a = call %struct.Memory* @routine_jge_.L_4121a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41218a, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41218a, %struct.Memory** %MEMORY

  %loadBr_41218a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41218a = icmp eq i8 %loadBr_41218a, 1
  br i1 %cmpBr_41218a, label %block_.L_4121a0, label %block_412190

block_412190:
  ; Code: cmpl $0x0, -0x603c(%rbp)	 RIP: 412190	 Bytes: 7
  %loadMem_412190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412190 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x603c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412190)
  store %struct.Memory* %call_412190, %struct.Memory** %MEMORY

  ; Code: setne %al	 RIP: 412197	 Bytes: 3
  %loadMem_412197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412197 = call %struct.Memory* @routine_setne__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412197)
  store %struct.Memory* %call_412197, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x605c(%rbp)	 RIP: 41219a	 Bytes: 6
  %loadMem_41219a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41219a = call %struct.Memory* @routine_movb__al__MINUS0x605c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41219a)
  store %struct.Memory* %call_41219a, %struct.Memory** %MEMORY

  ; Code: .L_4121a0:	 RIP: 4121a0	 Bytes: 0
  br label %block_.L_4121a0
block_.L_4121a0:

  ; Code: movb -0x605c(%rbp), %al	 RIP: 4121a0	 Bytes: 6
  %loadMem_4121a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121a0 = call %struct.Memory* @routine_movb_MINUS0x605c__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121a0)
  store %struct.Memory* %call_4121a0, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 4121a6	 Bytes: 2
  %loadMem_4121a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121a6 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121a6)
  store %struct.Memory* %call_4121a6, %struct.Memory** %MEMORY

  ; Code: jne .L_4121b3	 RIP: 4121a8	 Bytes: 6
  %loadMem_4121a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121a8 = call %struct.Memory* @routine_jne_.L_4121b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121a8, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4121a8, %struct.Memory** %MEMORY

  %loadBr_4121a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4121a8 = icmp eq i8 %loadBr_4121a8, 1
  br i1 %cmpBr_4121a8, label %block_.L_4121b3, label %block_4121ae

block_4121ae:
  ; Code: jmpq .L_412216	 RIP: 4121ae	 Bytes: 5
  %loadMem_4121ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121ae = call %struct.Memory* @routine_jmpq_.L_412216(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121ae, i64 104, i64 5)
  store %struct.Memory* %call_4121ae, %struct.Memory** %MEMORY

  br label %block_.L_412216

  ; Code: .L_4121b3:	 RIP: 4121b3	 Bytes: 0
block_.L_4121b3:

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 4121b3	 Bytes: 7
  %loadMem_4121b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121b3 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121b3)
  store %struct.Memory* %call_4121b3, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %esi	 RIP: 4121ba	 Bytes: 6
  %loadMem_4121ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121ba = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121ba)
  store %struct.Memory* %call_4121ba, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 4121c0	 Bytes: 5
  %loadMem1_4121c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4121c0 = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4121c0, i64 -27280, i64 5, i64 5)
  store %struct.Memory* %call1_4121c0, %struct.Memory** %MEMORY

  %loadMem2_4121c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4121c0 = load i64, i64* %3
  %call2_4121c0 = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_4121c0, %struct.Memory* %loadMem2_4121c0)
  store %struct.Memory* %call2_4121c0, %struct.Memory** %MEMORY

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 4121c5	 Bytes: 7
  %loadMem_4121c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121c5 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121c5)
  store %struct.Memory* %call_4121c5, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %esi	 RIP: 4121cc	 Bytes: 6
  %loadMem_4121cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121cc = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121cc)
  store %struct.Memory* %call_4121cc, %struct.Memory** %MEMORY

  ; Code: movl -0x6028(%rbp), %edx	 RIP: 4121d2	 Bytes: 6
  %loadMem_4121d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121d2 = call %struct.Memory* @routine_movl_MINUS0x6028__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121d2)
  store %struct.Memory* %call_4121d2, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 4121d8	 Bytes: 5
  %loadMem1_4121d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4121d8 = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4121d8, i64 -47960, i64 5, i64 5)
  store %struct.Memory* %call1_4121d8, %struct.Memory** %MEMORY

  %loadMem2_4121d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4121d8 = load i64, i64* %3
  %call2_4121d8 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_4121d8, %struct.Memory* %loadMem2_4121d8)
  store %struct.Memory* %call2_4121d8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4121dd	 Bytes: 3
  %loadMem_4121dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121dd = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121dd)
  store %struct.Memory* %call_4121dd, %struct.Memory** %MEMORY

  ; Code: je .L_4121f0	 RIP: 4121e0	 Bytes: 6
  %loadMem_4121e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121e0 = call %struct.Memory* @routine_je_.L_4121f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121e0, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_4121e0, %struct.Memory** %MEMORY

  %loadBr_4121e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4121e0 = icmp eq i8 %loadBr_4121e0, 1
  br i1 %cmpBr_4121e0, label %block_.L_4121f0, label %block_4121e6

block_4121e6:
  ; Code: movl $0x0, -0x603c(%rbp)	 RIP: 4121e6	 Bytes: 10
  %loadMem_4121e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121e6 = call %struct.Memory* @routine_movl__0x0__MINUS0x603c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121e6)
  store %struct.Memory* %call_4121e6, %struct.Memory** %MEMORY

  ; Code: .L_4121f0:	 RIP: 4121f0	 Bytes: 0
  br label %block_.L_4121f0
block_.L_4121f0:

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 4121f0	 Bytes: 7
  %loadMem_4121f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121f0 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121f0)
  store %struct.Memory* %call_4121f0, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %esi	 RIP: 4121f7	 Bytes: 6
  %loadMem_4121f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121f7 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121f7)
  store %struct.Memory* %call_4121f7, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 4121fd	 Bytes: 5
  %loadMem1_4121fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4121fd = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4121fd, i64 -23133, i64 5, i64 5)
  store %struct.Memory* %call1_4121fd, %struct.Memory** %MEMORY

  %loadMem2_4121fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4121fd = load i64, i64* %3
  %call2_4121fd = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_4121fd, %struct.Memory* %loadMem2_4121fd)
  store %struct.Memory* %call2_4121fd, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %eax	 RIP: 412202	 Bytes: 6
  %loadMem_412202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412202 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412202)
  store %struct.Memory* %call_412202, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 412208	 Bytes: 3
  %loadMem_412208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412208 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412208)
  store %struct.Memory* %call_412208, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x601c(%rbp)	 RIP: 41220b	 Bytes: 6
  %loadMem_41220b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41220b = call %struct.Memory* @routine_movl__eax__MINUS0x601c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41220b)
  store %struct.Memory* %call_41220b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412174	 RIP: 412211	 Bytes: 5
  %loadMem_412211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412211 = call %struct.Memory* @routine_jmpq_.L_412174(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412211, i64 -157, i64 5)
  store %struct.Memory* %call_412211, %struct.Memory** %MEMORY

  br label %block_.L_412174

  ; Code: .L_412216:	 RIP: 412216	 Bytes: 0
block_.L_412216:

  ; Code: jmpq .L_41221b	 RIP: 412216	 Bytes: 5
  %loadMem_412216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412216 = call %struct.Memory* @routine_jmpq_.L_41221b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412216, i64 5, i64 5)
  store %struct.Memory* %call_412216, %struct.Memory** %MEMORY

  br label %block_.L_41221b

  ; Code: .L_41221b:	 RIP: 41221b	 Bytes: 0
block_.L_41221b:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 41221b	 Bytes: 7
  %loadMem_41221b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41221b = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41221b)
  store %struct.Memory* %call_41221b, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %esi	 RIP: 412222	 Bytes: 6
  %loadMem_412222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412222 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412222)
  store %struct.Memory* %call_412222, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 412228	 Bytes: 5
  %loadMem1_412228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412228 = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412228, i64 -23176, i64 5, i64 5)
  store %struct.Memory* %call1_412228, %struct.Memory** %MEMORY

  %loadMem2_412228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412228 = load i64, i64* %3
  %call2_412228 = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_412228, %struct.Memory* %loadMem2_412228)
  store %struct.Memory* %call2_412228, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %eax	 RIP: 41222d	 Bytes: 6
  %loadMem_41222d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41222d = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41222d)
  store %struct.Memory* %call_41222d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 412233	 Bytes: 3
  %loadMem_412233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412233 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412233)
  store %struct.Memory* %call_412233, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6020(%rbp)	 RIP: 412236	 Bytes: 6
  %loadMem_412236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412236 = call %struct.Memory* @routine_movl__eax__MINUS0x6020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412236)
  store %struct.Memory* %call_412236, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4120ca	 RIP: 41223c	 Bytes: 5
  %loadMem_41223c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41223c = call %struct.Memory* @routine_jmpq_.L_4120ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41223c, i64 -370, i64 5)
  store %struct.Memory* %call_41223c, %struct.Memory** %MEMORY

  br label %block_.L_4120ca

  ; Code: .L_412241:	 RIP: 412241	 Bytes: 0
block_.L_412241:

  ; Code: movl $0x8, %eax	 RIP: 412241	 Bytes: 5
  %loadMem_412241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412241 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412241)
  store %struct.Memory* %call_412241, %struct.Memory** %MEMORY

  ; Code: movl $0x7, %ecx	 RIP: 412246	 Bytes: 5
  %loadMem_412246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412246 = call %struct.Memory* @routine_movl__0x7___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412246)
  store %struct.Memory* %call_412246, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 41224b	 Bytes: 8
  %loadMem_41224b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41224b = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41224b)
  store %struct.Memory* %call_41224b, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 412253	 Bytes: 3
  %loadMem_412253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412253 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412253)
  store %struct.Memory* %call_412253, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 412256	 Bytes: 8
  %loadMem_412256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412256 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412256)
  store %struct.Memory* %call_412256, %struct.Memory** %MEMORY

  ; Code: setne %dl	 RIP: 41225e	 Bytes: 3
  %loadMem_41225e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41225e = call %struct.Memory* @routine_setne__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41225e)
  store %struct.Memory* %call_41225e, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %dl	 RIP: 412261	 Bytes: 3
  %loadMem_412261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412261 = call %struct.Memory* @routine_xorb__0xff___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412261)
  store %struct.Memory* %call_412261, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %dl	 RIP: 412264	 Bytes: 3
  %loadMem_412264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412264 = call %struct.Memory* @routine_andb__0x1___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412264)
  store %struct.Memory* %call_412264, %struct.Memory** %MEMORY

  ; Code: movzbl %dl, %esi	 RIP: 412267	 Bytes: 3
  %loadMem_412267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412267 = call %struct.Memory* @routine_movzbl__dl___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412267)
  store %struct.Memory* %call_412267, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 41226a	 Bytes: 2
  %loadMem_41226a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41226a = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41226a)
  store %struct.Memory* %call_41226a, %struct.Memory** %MEMORY

  ; Code: callq .DropremoveHolding	 RIP: 41226c	 Bytes: 5
  %loadMem1_41226c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41226c = call %struct.Memory* @routine_callq_.DropremoveHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41226c, i64 -64188, i64 5, i64 5)
  store %struct.Memory* %call1_41226c, %struct.Memory** %MEMORY

  %loadMem2_41226c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41226c = load i64, i64* %3
  %call2_41226c = call %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* %0, i64  %loadPC_41226c, %struct.Memory* %loadMem2_41226c)
  store %struct.Memory* %call2_41226c, %struct.Memory** %MEMORY

  ; Code: .L_412271:	 RIP: 412271	 Bytes: 0
  br label %block_.L_412271
block_.L_412271:

  ; Code: movl $0xa, %eax	 RIP: 412271	 Bytes: 5
  %loadMem_412271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412271 = call %struct.Memory* @routine_movl__0xa___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412271)
  store %struct.Memory* %call_412271, %struct.Memory** %MEMORY

  ; Code: movl $0x9, %ecx	 RIP: 412276	 Bytes: 5
  %loadMem_412276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412276 = call %struct.Memory* @routine_movl__0x9___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412276)
  store %struct.Memory* %call_412276, %struct.Memory** %MEMORY

  ; Code: movq $0x85f170, %rdx	 RIP: 41227b	 Bytes: 10
  %loadMem_41227b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41227b = call %struct.Memory* @routine_movq__0x85f170___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41227b)
  store %struct.Memory* %call_41227b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 412285	 Bytes: 8
  %loadMem_412285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412285 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412285)
  store %struct.Memory* %call_412285, %struct.Memory** %MEMORY

  ; Code: setne %sil	 RIP: 41228d	 Bytes: 4
  %loadMem_41228d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41228d = call %struct.Memory* @routine_setne__sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41228d)
  store %struct.Memory* %call_41228d, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %sil	 RIP: 412291	 Bytes: 4
  %loadMem_412291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412291 = call %struct.Memory* @routine_xorb__0xff___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412291)
  store %struct.Memory* %call_412291, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %sil	 RIP: 412295	 Bytes: 4
  %loadMem_412295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412295 = call %struct.Memory* @routine_andb__0x1___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412295)
  store %struct.Memory* %call_412295, %struct.Memory** %MEMORY

  ; Code: movzbl %sil, %edi	 RIP: 412299	 Bytes: 4
  %loadMem_412299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412299 = call %struct.Memory* @routine_movzbl__sil___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412299)
  store %struct.Memory* %call_412299, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 41229d	 Bytes: 3
  %loadMem_41229d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41229d = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41229d)
  store %struct.Memory* %call_41229d, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 4122a0	 Bytes: 4
  %loadMem_4122a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122a0 = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122a0)
  store %struct.Memory* %call_4122a0, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rdx	 RIP: 4122a4	 Bytes: 3
  %loadMem_4122a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122a4 = call %struct.Memory* @routine_addq__r8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122a4)
  store %struct.Memory* %call_4122a4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 4122a7	 Bytes: 8
  %loadMem_4122a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122a7 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122a7)
  store %struct.Memory* %call_4122a7, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 4122af	 Bytes: 3
  %loadMem_4122af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122af = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122af)
  store %struct.Memory* %call_4122af, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 4122b2	 Bytes: 3
  %loadMem_4122b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122b2 = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122b2)
  store %struct.Memory* %call_4122b2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rdx,%r8,4)	 RIP: 4122b5	 Bytes: 5
  %loadMem_4122b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122b5 = call %struct.Memory* @routine_cmpl__0x0____rdx__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122b5)
  store %struct.Memory* %call_4122b5, %struct.Memory** %MEMORY

  ; Code: jne .L_4124ba	 RIP: 4122ba	 Bytes: 6
  %loadMem_4122ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122ba = call %struct.Memory* @routine_jne_.L_4124ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122ba, i8* %BRANCH_TAKEN, i64 512, i64 6, i64 6)
  store %struct.Memory* %call_4122ba, %struct.Memory** %MEMORY

  %loadBr_4122ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4122ba = icmp eq i8 %loadBr_4122ba, 1
  br i1 %cmpBr_4122ba, label %block_.L_4124ba, label %block_4122c0

block_4122c0:
  ; Code: movl $0xa, %eax	 RIP: 4122c0	 Bytes: 5
  %loadMem_4122c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122c0 = call %struct.Memory* @routine_movl__0xa___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122c0)
  store %struct.Memory* %call_4122c0, %struct.Memory** %MEMORY

  ; Code: movl $0x9, %ecx	 RIP: 4122c5	 Bytes: 5
  %loadMem_4122c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122c5 = call %struct.Memory* @routine_movl__0x9___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122c5)
  store %struct.Memory* %call_4122c5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 4122ca	 Bytes: 8
  %loadMem_4122ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122ca = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122ca)
  store %struct.Memory* %call_4122ca, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 4122d2	 Bytes: 3
  %loadMem_4122d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122d2 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122d2)
  store %struct.Memory* %call_4122d2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 4122d5	 Bytes: 8
  %loadMem_4122d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122d5 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122d5)
  store %struct.Memory* %call_4122d5, %struct.Memory** %MEMORY

  ; Code: setne %dl	 RIP: 4122dd	 Bytes: 3
  %loadMem_4122dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122dd = call %struct.Memory* @routine_setne__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122dd)
  store %struct.Memory* %call_4122dd, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %dl	 RIP: 4122e0	 Bytes: 3
  %loadMem_4122e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122e0 = call %struct.Memory* @routine_xorb__0xff___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122e0)
  store %struct.Memory* %call_4122e0, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %dl	 RIP: 4122e3	 Bytes: 3
  %loadMem_4122e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122e3 = call %struct.Memory* @routine_andb__0x1___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122e3)
  store %struct.Memory* %call_4122e3, %struct.Memory** %MEMORY

  ; Code: movzbl %dl, %esi	 RIP: 4122e6	 Bytes: 3
  %loadMem_4122e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122e6 = call %struct.Memory* @routine_movzbl__dl___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122e6)
  store %struct.Memory* %call_4122e6, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 4122e9	 Bytes: 2
  %loadMem_4122e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122e9 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122e9)
  store %struct.Memory* %call_4122e9, %struct.Memory** %MEMORY

  ; Code: callq .DropaddHolding	 RIP: 4122eb	 Bytes: 5
  %loadMem1_4122eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4122eb = call %struct.Memory* @routine_callq_.DropaddHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4122eb, i64 -64539, i64 5, i64 5)
  store %struct.Memory* %call1_4122eb, %struct.Memory** %MEMORY

  %loadMem2_4122eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4122eb = load i64, i64* %3
  %call2_4122eb = call %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* %0, i64  %loadPC_4122eb, %struct.Memory* %loadMem2_4122eb)
  store %struct.Memory* %call2_4122eb, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 4122f0	 Bytes: 7
  %loadMem_4122f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122f0 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122f0)
  store %struct.Memory* %call_4122f0, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 4122f7	 Bytes: 5
  %loadMem1_4122f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4122f7 = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4122f7, i64 -42183, i64 5, i64 5)
  store %struct.Memory* %call1_4122f7, %struct.Memory** %MEMORY

  %loadMem2_4122f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4122f7 = load i64, i64* %3
  %call2_4122f7 = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_4122f7, %struct.Memory* %loadMem2_4122f7)
  store %struct.Memory* %call2_4122f7, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 4122fc	 Bytes: 7
  %loadMem_4122fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122fc = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122fc)
  store %struct.Memory* %call_4122fc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6014(%rbp)	 RIP: 412303	 Bytes: 6
  %loadMem_412303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412303 = call %struct.Memory* @routine_movl__eax__MINUS0x6014__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412303)
  store %struct.Memory* %call_412303, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6020(%rbp)	 RIP: 412309	 Bytes: 10
  %loadMem_412309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412309 = call %struct.Memory* @routine_movl__0x0__MINUS0x6020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412309)
  store %struct.Memory* %call_412309, %struct.Memory** %MEMORY

  ; Code: .L_412313:	 RIP: 412313	 Bytes: 0
  br label %block_.L_412313
block_.L_412313:

  ; Code: xorl %eax, %eax	 RIP: 412313	 Bytes: 2
  %loadMem_412313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412313 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412313)
  store %struct.Memory* %call_412313, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 412315	 Bytes: 2
  %loadMem_412315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412315 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412315)
  store %struct.Memory* %call_412315, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %eax	 RIP: 412317	 Bytes: 6
  %loadMem_412317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412317 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412317)
  store %struct.Memory* %call_412317, %struct.Memory** %MEMORY

  ; Code: cmpl -0x6014(%rbp), %eax	 RIP: 41231d	 Bytes: 6
  %loadMem_41231d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41231d = call %struct.Memory* @routine_cmpl_MINUS0x6014__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41231d)
  store %struct.Memory* %call_41231d, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x605d(%rbp)	 RIP: 412323	 Bytes: 6
  %loadMem_412323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412323 = call %struct.Memory* @routine_movb__cl__MINUS0x605d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412323)
  store %struct.Memory* %call_412323, %struct.Memory** %MEMORY

  ; Code: jge .L_41233f	 RIP: 412329	 Bytes: 6
  %loadMem_412329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412329 = call %struct.Memory* @routine_jge_.L_41233f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412329, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_412329, %struct.Memory** %MEMORY

  %loadBr_412329 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412329 = icmp eq i8 %loadBr_412329, 1
  br i1 %cmpBr_412329, label %block_.L_41233f, label %block_41232f

block_41232f:
  ; Code: cmpl $0x0, -0x6040(%rbp)	 RIP: 41232f	 Bytes: 7
  %loadMem_41232f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41232f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6040__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41232f)
  store %struct.Memory* %call_41232f, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 412336	 Bytes: 3
  %loadMem_412336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412336 = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412336)
  store %struct.Memory* %call_412336, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x605d(%rbp)	 RIP: 412339	 Bytes: 6
  %loadMem_412339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412339 = call %struct.Memory* @routine_movb__al__MINUS0x605d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412339)
  store %struct.Memory* %call_412339, %struct.Memory** %MEMORY

  ; Code: .L_41233f:	 RIP: 41233f	 Bytes: 0
  br label %block_.L_41233f
block_.L_41233f:

  ; Code: movb -0x605d(%rbp), %al	 RIP: 41233f	 Bytes: 6
  %loadMem_41233f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41233f = call %struct.Memory* @routine_movb_MINUS0x605d__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41233f)
  store %struct.Memory* %call_41233f, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 412345	 Bytes: 2
  %loadMem_412345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412345 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412345)
  store %struct.Memory* %call_412345, %struct.Memory** %MEMORY

  ; Code: jne .L_412352	 RIP: 412347	 Bytes: 6
  %loadMem_412347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412347 = call %struct.Memory* @routine_jne_.L_412352(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412347, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_412347, %struct.Memory** %MEMORY

  %loadBr_412347 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412347 = icmp eq i8 %loadBr_412347, 1
  br i1 %cmpBr_412347, label %block_.L_412352, label %block_41234d

block_41234d:
  ; Code: jmpq .L_41248a	 RIP: 41234d	 Bytes: 5
  %loadMem_41234d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41234d = call %struct.Memory* @routine_jmpq_.L_41248a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41234d, i64 317, i64 5)
  store %struct.Memory* %call_41234d, %struct.Memory** %MEMORY

  br label %block_.L_41248a

  ; Code: .L_412352:	 RIP: 412352	 Bytes: 0
block_.L_412352:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 412352	 Bytes: 7
  %loadMem_412352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412352 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412352)
  store %struct.Memory* %call_412352, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %esi	 RIP: 412359	 Bytes: 6
  %loadMem_412359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412359 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412359)
  store %struct.Memory* %call_412359, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 41235f	 Bytes: 5
  %loadMem1_41235f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41235f = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41235f, i64 -27695, i64 5, i64 5)
  store %struct.Memory* %call1_41235f, %struct.Memory** %MEMORY

  %loadMem2_41235f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41235f = load i64, i64* %3
  %call2_41235f = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_41235f, %struct.Memory* %loadMem2_41235f)
  store %struct.Memory* %call2_41235f, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 412364	 Bytes: 7
  %loadMem_412364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412364 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412364)
  store %struct.Memory* %call_412364, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %esi	 RIP: 41236b	 Bytes: 6
  %loadMem_41236b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41236b = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41236b)
  store %struct.Memory* %call_41236b, %struct.Memory** %MEMORY

  ; Code: movl -0x6024(%rbp), %edx	 RIP: 412371	 Bytes: 6
  %loadMem_412371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412371 = call %struct.Memory* @routine_movl_MINUS0x6024__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412371)
  store %struct.Memory* %call_412371, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 412377	 Bytes: 5
  %loadMem1_412377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412377 = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412377, i64 -48375, i64 5, i64 5)
  store %struct.Memory* %call1_412377, %struct.Memory** %MEMORY

  %loadMem2_412377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412377 = load i64, i64* %3
  %call2_412377 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_412377, %struct.Memory* %loadMem2_412377)
  store %struct.Memory* %call2_412377, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41237c	 Bytes: 3
  %loadMem_41237c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41237c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41237c)
  store %struct.Memory* %call_41237c, %struct.Memory** %MEMORY

  ; Code: je .L_412464	 RIP: 41237f	 Bytes: 6
  %loadMem_41237f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41237f = call %struct.Memory* @routine_je_.L_412464(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41237f, i8* %BRANCH_TAKEN, i64 229, i64 6, i64 6)
  store %struct.Memory* %call_41237f, %struct.Memory** %MEMORY

  %loadBr_41237f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41237f = icmp eq i8 %loadBr_41237f, 1
  br i1 %cmpBr_41237f, label %block_.L_412464, label %block_412385

block_412385:
  ; Code: movl $0x3, -0x6040(%rbp)	 RIP: 412385	 Bytes: 10
  %loadMem_412385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412385 = call %struct.Memory* @routine_movl__0x3__MINUS0x6040__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412385)
  store %struct.Memory* %call_412385, %struct.Memory** %MEMORY

  ; Code: callq .in_check	 RIP: 41238f	 Bytes: 5
  %loadMem1_41238f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41238f = call %struct.Memory* @routine_callq_.in_check(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41238f, i64 -35503, i64 5, i64 5)
  store %struct.Memory* %call1_41238f, %struct.Memory** %MEMORY

  %loadMem2_41238f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41238f = load i64, i64* %3
  %call2_41238f = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64  %loadPC_41238f, %struct.Memory* %loadMem2_41238f)
  store %struct.Memory* %call2_41238f, %struct.Memory** %MEMORY

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 412394	 Bytes: 7
  %loadMem_412394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412394 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412394)
  store %struct.Memory* %call_412394, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6028(%rbp)	 RIP: 41239b	 Bytes: 6
  %loadMem_41239b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41239b = call %struct.Memory* @routine_movl__eax__MINUS0x6028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41239b)
  store %struct.Memory* %call_41239b, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 4123a1	 Bytes: 5
  %loadMem1_4123a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4123a1 = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4123a1, i64 -42353, i64 5, i64 5)
  store %struct.Memory* %call1_4123a1, %struct.Memory** %MEMORY

  %loadMem2_4123a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4123a1 = load i64, i64* %3
  %call2_4123a1 = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_4123a1, %struct.Memory* %loadMem2_4123a1)
  store %struct.Memory* %call2_4123a1, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 4123a6	 Bytes: 7
  %loadMem_4123a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123a6 = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123a6)
  store %struct.Memory* %call_4123a6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6018(%rbp)	 RIP: 4123ad	 Bytes: 6
  %loadMem_4123ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123ad = call %struct.Memory* @routine_movl__eax__MINUS0x6018__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123ad)
  store %struct.Memory* %call_4123ad, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x601c(%rbp)	 RIP: 4123b3	 Bytes: 10
  %loadMem_4123b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123b3 = call %struct.Memory* @routine_movl__0x0__MINUS0x601c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123b3)
  store %struct.Memory* %call_4123b3, %struct.Memory** %MEMORY

  ; Code: .L_4123bd:	 RIP: 4123bd	 Bytes: 0
  br label %block_.L_4123bd
block_.L_4123bd:

  ; Code: xorl %eax, %eax	 RIP: 4123bd	 Bytes: 2
  %loadMem_4123bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123bd = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123bd)
  store %struct.Memory* %call_4123bd, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 4123bf	 Bytes: 2
  %loadMem_4123bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123bf = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123bf)
  store %struct.Memory* %call_4123bf, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %eax	 RIP: 4123c1	 Bytes: 6
  %loadMem_4123c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123c1 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123c1)
  store %struct.Memory* %call_4123c1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x6018(%rbp), %eax	 RIP: 4123c7	 Bytes: 6
  %loadMem_4123c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123c7 = call %struct.Memory* @routine_cmpl_MINUS0x6018__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123c7)
  store %struct.Memory* %call_4123c7, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x605e(%rbp)	 RIP: 4123cd	 Bytes: 6
  %loadMem_4123cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123cd = call %struct.Memory* @routine_movb__cl__MINUS0x605e__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123cd)
  store %struct.Memory* %call_4123cd, %struct.Memory** %MEMORY

  ; Code: jge .L_4123e9	 RIP: 4123d3	 Bytes: 6
  %loadMem_4123d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123d3 = call %struct.Memory* @routine_jge_.L_4123e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123d3, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4123d3, %struct.Memory** %MEMORY

  %loadBr_4123d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4123d3 = icmp eq i8 %loadBr_4123d3, 1
  br i1 %cmpBr_4123d3, label %block_.L_4123e9, label %block_4123d9

block_4123d9:
  ; Code: cmpl $0x0, -0x6040(%rbp)	 RIP: 4123d9	 Bytes: 7
  %loadMem_4123d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123d9 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6040__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123d9)
  store %struct.Memory* %call_4123d9, %struct.Memory** %MEMORY

  ; Code: setne %al	 RIP: 4123e0	 Bytes: 3
  %loadMem_4123e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123e0 = call %struct.Memory* @routine_setne__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123e0)
  store %struct.Memory* %call_4123e0, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x605e(%rbp)	 RIP: 4123e3	 Bytes: 6
  %loadMem_4123e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123e3 = call %struct.Memory* @routine_movb__al__MINUS0x605e__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123e3)
  store %struct.Memory* %call_4123e3, %struct.Memory** %MEMORY

  ; Code: .L_4123e9:	 RIP: 4123e9	 Bytes: 0
  br label %block_.L_4123e9
block_.L_4123e9:

  ; Code: movb -0x605e(%rbp), %al	 RIP: 4123e9	 Bytes: 6
  %loadMem_4123e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123e9 = call %struct.Memory* @routine_movb_MINUS0x605e__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123e9)
  store %struct.Memory* %call_4123e9, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 4123ef	 Bytes: 2
  %loadMem_4123ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123ef = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123ef)
  store %struct.Memory* %call_4123ef, %struct.Memory** %MEMORY

  ; Code: jne .L_4123fc	 RIP: 4123f1	 Bytes: 6
  %loadMem_4123f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123f1 = call %struct.Memory* @routine_jne_.L_4123fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123f1, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4123f1, %struct.Memory** %MEMORY

  %loadBr_4123f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4123f1 = icmp eq i8 %loadBr_4123f1, 1
  br i1 %cmpBr_4123f1, label %block_.L_4123fc, label %block_4123f7

block_4123f7:
  ; Code: jmpq .L_41245f	 RIP: 4123f7	 Bytes: 5
  %loadMem_4123f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123f7 = call %struct.Memory* @routine_jmpq_.L_41245f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123f7, i64 104, i64 5)
  store %struct.Memory* %call_4123f7, %struct.Memory** %MEMORY

  br label %block_.L_41245f

  ; Code: .L_4123fc:	 RIP: 4123fc	 Bytes: 0
block_.L_4123fc:

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 4123fc	 Bytes: 7
  %loadMem_4123fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123fc = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123fc)
  store %struct.Memory* %call_4123fc, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %esi	 RIP: 412403	 Bytes: 6
  %loadMem_412403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412403 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412403)
  store %struct.Memory* %call_412403, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 412409	 Bytes: 5
  %loadMem1_412409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412409 = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412409, i64 -27865, i64 5, i64 5)
  store %struct.Memory* %call1_412409, %struct.Memory** %MEMORY

  %loadMem2_412409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412409 = load i64, i64* %3
  %call2_412409 = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_412409, %struct.Memory* %loadMem2_412409)
  store %struct.Memory* %call2_412409, %struct.Memory** %MEMORY

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 41240e	 Bytes: 7
  %loadMem_41240e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41240e = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41240e)
  store %struct.Memory* %call_41240e, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %esi	 RIP: 412415	 Bytes: 6
  %loadMem_412415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412415 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412415)
  store %struct.Memory* %call_412415, %struct.Memory** %MEMORY

  ; Code: movl -0x6028(%rbp), %edx	 RIP: 41241b	 Bytes: 6
  %loadMem_41241b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41241b = call %struct.Memory* @routine_movl_MINUS0x6028__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41241b)
  store %struct.Memory* %call_41241b, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 412421	 Bytes: 5
  %loadMem1_412421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412421 = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412421, i64 -48545, i64 5, i64 5)
  store %struct.Memory* %call1_412421, %struct.Memory** %MEMORY

  %loadMem2_412421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412421 = load i64, i64* %3
  %call2_412421 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_412421, %struct.Memory* %loadMem2_412421)
  store %struct.Memory* %call2_412421, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 412426	 Bytes: 3
  %loadMem_412426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412426 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412426)
  store %struct.Memory* %call_412426, %struct.Memory** %MEMORY

  ; Code: je .L_412439	 RIP: 412429	 Bytes: 6
  %loadMem_412429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412429 = call %struct.Memory* @routine_je_.L_412439(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412429, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_412429, %struct.Memory** %MEMORY

  %loadBr_412429 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412429 = icmp eq i8 %loadBr_412429, 1
  br i1 %cmpBr_412429, label %block_.L_412439, label %block_41242f

block_41242f:
  ; Code: movl $0x0, -0x6040(%rbp)	 RIP: 41242f	 Bytes: 10
  %loadMem_41242f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41242f = call %struct.Memory* @routine_movl__0x0__MINUS0x6040__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41242f)
  store %struct.Memory* %call_41242f, %struct.Memory** %MEMORY

  ; Code: .L_412439:	 RIP: 412439	 Bytes: 0
  br label %block_.L_412439
block_.L_412439:

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 412439	 Bytes: 7
  %loadMem_412439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412439 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412439)
  store %struct.Memory* %call_412439, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %esi	 RIP: 412440	 Bytes: 6
  %loadMem_412440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412440 = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412440)
  store %struct.Memory* %call_412440, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 412446	 Bytes: 5
  %loadMem1_412446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412446 = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412446, i64 -23718, i64 5, i64 5)
  store %struct.Memory* %call1_412446, %struct.Memory** %MEMORY

  %loadMem2_412446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412446 = load i64, i64* %3
  %call2_412446 = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_412446, %struct.Memory* %loadMem2_412446)
  store %struct.Memory* %call2_412446, %struct.Memory** %MEMORY

  ; Code: movl -0x601c(%rbp), %eax	 RIP: 41244b	 Bytes: 6
  %loadMem_41244b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41244b = call %struct.Memory* @routine_movl_MINUS0x601c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41244b)
  store %struct.Memory* %call_41244b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 412451	 Bytes: 3
  %loadMem_412451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412451 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412451)
  store %struct.Memory* %call_412451, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x601c(%rbp)	 RIP: 412454	 Bytes: 6
  %loadMem_412454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412454 = call %struct.Memory* @routine_movl__eax__MINUS0x601c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412454)
  store %struct.Memory* %call_412454, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4123bd	 RIP: 41245a	 Bytes: 5
  %loadMem_41245a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41245a = call %struct.Memory* @routine_jmpq_.L_4123bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41245a, i64 -157, i64 5)
  store %struct.Memory* %call_41245a, %struct.Memory** %MEMORY

  br label %block_.L_4123bd

  ; Code: .L_41245f:	 RIP: 41245f	 Bytes: 0
block_.L_41245f:

  ; Code: jmpq .L_412464	 RIP: 41245f	 Bytes: 5
  %loadMem_41245f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41245f = call %struct.Memory* @routine_jmpq_.L_412464(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41245f, i64 5, i64 5)
  store %struct.Memory* %call_41245f, %struct.Memory** %MEMORY

  br label %block_.L_412464

  ; Code: .L_412464:	 RIP: 412464	 Bytes: 0
block_.L_412464:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 412464	 Bytes: 7
  %loadMem_412464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412464 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412464)
  store %struct.Memory* %call_412464, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %esi	 RIP: 41246b	 Bytes: 6
  %loadMem_41246b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41246b = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41246b)
  store %struct.Memory* %call_41246b, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 412471	 Bytes: 5
  %loadMem1_412471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412471 = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412471, i64 -23761, i64 5, i64 5)
  store %struct.Memory* %call1_412471, %struct.Memory** %MEMORY

  %loadMem2_412471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412471 = load i64, i64* %3
  %call2_412471 = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_412471, %struct.Memory* %loadMem2_412471)
  store %struct.Memory* %call2_412471, %struct.Memory** %MEMORY

  ; Code: movl -0x6020(%rbp), %eax	 RIP: 412476	 Bytes: 6
  %loadMem_412476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412476 = call %struct.Memory* @routine_movl_MINUS0x6020__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412476)
  store %struct.Memory* %call_412476, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41247c	 Bytes: 3
  %loadMem_41247c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41247c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41247c)
  store %struct.Memory* %call_41247c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6020(%rbp)	 RIP: 41247f	 Bytes: 6
  %loadMem_41247f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41247f = call %struct.Memory* @routine_movl__eax__MINUS0x6020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41247f)
  store %struct.Memory* %call_41247f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412313	 RIP: 412485	 Bytes: 5
  %loadMem_412485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412485 = call %struct.Memory* @routine_jmpq_.L_412313(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412485, i64 -370, i64 5)
  store %struct.Memory* %call_412485, %struct.Memory** %MEMORY

  br label %block_.L_412313

  ; Code: .L_41248a:	 RIP: 41248a	 Bytes: 0
block_.L_41248a:

  ; Code: movl $0xa, %eax	 RIP: 41248a	 Bytes: 5
  %loadMem_41248a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41248a = call %struct.Memory* @routine_movl__0xa___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41248a)
  store %struct.Memory* %call_41248a, %struct.Memory** %MEMORY

  ; Code: movl $0x9, %ecx	 RIP: 41248f	 Bytes: 5
  %loadMem_41248f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41248f = call %struct.Memory* @routine_movl__0x9___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41248f)
  store %struct.Memory* %call_41248f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 412494	 Bytes: 8
  %loadMem_412494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412494 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412494)
  store %struct.Memory* %call_412494, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 41249c	 Bytes: 3
  %loadMem_41249c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41249c = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41249c)
  store %struct.Memory* %call_41249c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 41249f	 Bytes: 8
  %loadMem_41249f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41249f = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41249f)
  store %struct.Memory* %call_41249f, %struct.Memory** %MEMORY

  ; Code: setne %dl	 RIP: 4124a7	 Bytes: 3
  %loadMem_4124a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124a7 = call %struct.Memory* @routine_setne__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124a7)
  store %struct.Memory* %call_4124a7, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %dl	 RIP: 4124aa	 Bytes: 3
  %loadMem_4124aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124aa = call %struct.Memory* @routine_xorb__0xff___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124aa)
  store %struct.Memory* %call_4124aa, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %dl	 RIP: 4124ad	 Bytes: 3
  %loadMem_4124ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124ad = call %struct.Memory* @routine_andb__0x1___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124ad)
  store %struct.Memory* %call_4124ad, %struct.Memory** %MEMORY

  ; Code: movzbl %dl, %esi	 RIP: 4124b0	 Bytes: 3
  %loadMem_4124b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124b0 = call %struct.Memory* @routine_movzbl__dl___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124b0)
  store %struct.Memory* %call_4124b0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 4124b3	 Bytes: 2
  %loadMem_4124b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124b3 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124b3)
  store %struct.Memory* %call_4124b3, %struct.Memory** %MEMORY

  ; Code: callq .DropremoveHolding	 RIP: 4124b5	 Bytes: 5
  %loadMem1_4124b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4124b5 = call %struct.Memory* @routine_callq_.DropremoveHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4124b5, i64 -64773, i64 5, i64 5)
  store %struct.Memory* %call1_4124b5, %struct.Memory** %MEMORY

  %loadMem2_4124b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4124b5 = load i64, i64* %3
  %call2_4124b5 = call %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* %0, i64  %loadPC_4124b5, %struct.Memory* %loadMem2_4124b5)
  store %struct.Memory* %call2_4124b5, %struct.Memory** %MEMORY

  ; Code: .L_4124ba:	 RIP: 4124ba	 Bytes: 0
  br label %block_.L_4124ba
block_.L_4124ba:

  ; Code: movl -0x6030(%rbp), %eax	 RIP: 4124ba	 Bytes: 6
  %loadMem_4124ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124ba = call %struct.Memory* @routine_movl_MINUS0x6030__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124ba)
  store %struct.Memory* %call_4124ba, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62daf0, %eax	 RIP: 4124c0	 Bytes: 7
  %loadMem_4124c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124c0 = call %struct.Memory* @routine_cmpl_0x62daf0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124c0)
  store %struct.Memory* %call_4124c0, %struct.Memory** %MEMORY

  ; Code: je .L_41252f	 RIP: 4124c7	 Bytes: 6
  %loadMem_4124c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124c7 = call %struct.Memory* @routine_je_.L_41252f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124c7, i8* %BRANCH_TAKEN, i64 104, i64 6, i64 6)
  store %struct.Memory* %call_4124c7, %struct.Memory** %MEMORY

  %loadBr_4124c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4124c7 = icmp eq i8 %loadBr_4124c7, 1
  br i1 %cmpBr_4124c7, label %block_.L_41252f, label %block_4124cd

block_4124cd:
  ; Code: cmpl $0x3, -0x6030(%rbp)	 RIP: 4124cd	 Bytes: 7
  %loadMem_4124cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124cd = call %struct.Memory* @routine_cmpl__0x3__MINUS0x6030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124cd)
  store %struct.Memory* %call_4124cd, %struct.Memory** %MEMORY

  ; Code: jne .L_4124e9	 RIP: 4124d4	 Bytes: 6
  %loadMem_4124d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124d4 = call %struct.Memory* @routine_jne_.L_4124e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124d4, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4124d4, %struct.Memory** %MEMORY

  %loadBr_4124d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4124d4 = icmp eq i8 %loadBr_4124d4, 1
  br i1 %cmpBr_4124d4, label %block_.L_4124e9, label %block_4124da

block_4124da:
  ; Code: movl $0x1, -0x6044(%rbp)	 RIP: 4124da	 Bytes: 10
  %loadMem_4124da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124da = call %struct.Memory* @routine_movl__0x1__MINUS0x6044__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124da)
  store %struct.Memory* %call_4124da, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41252a	 RIP: 4124e4	 Bytes: 5
  %loadMem_4124e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124e4 = call %struct.Memory* @routine_jmpq_.L_41252a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124e4, i64 70, i64 5)
  store %struct.Memory* %call_4124e4, %struct.Memory** %MEMORY

  br label %block_.L_41252a

  ; Code: .L_4124e9:	 RIP: 4124e9	 Bytes: 0
block_.L_4124e9:

  ; Code: cmpl $0x0, -0x6030(%rbp)	 RIP: 4124e9	 Bytes: 7
  %loadMem_4124e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124e9 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124e9)
  store %struct.Memory* %call_4124e9, %struct.Memory** %MEMORY

  ; Code: jne .L_412525	 RIP: 4124f0	 Bytes: 6
  %loadMem_4124f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124f0 = call %struct.Memory* @routine_jne_.L_412525(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124f0, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_4124f0, %struct.Memory** %MEMORY

  %loadBr_4124f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4124f0 = icmp eq i8 %loadBr_4124f0, 1
  br i1 %cmpBr_4124f0, label %block_.L_412525, label %block_4124f6

block_4124f6:
  ; Code: cmpl $0x0, 0x62daf0	 RIP: 4124f6	 Bytes: 8
  %loadMem_4124f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124f6 = call %struct.Memory* @routine_cmpl__0x0__0x62daf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124f6)
  store %struct.Memory* %call_4124f6, %struct.Memory** %MEMORY

  ; Code: jne .L_412525	 RIP: 4124fe	 Bytes: 6
  %loadMem_4124fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124fe = call %struct.Memory* @routine_jne_.L_412525(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124fe, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_4124fe, %struct.Memory** %MEMORY

  %loadBr_4124fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4124fe = icmp eq i8 %loadBr_4124fe, 1
  br i1 %cmpBr_4124fe, label %block_.L_412525, label %block_412504

block_412504:
  ; Code: movq $0x428cdb, %rdi	 RIP: 412504	 Bytes: 10
  %loadMem_412504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412504 = call %struct.Memory* @routine_movq__0x428cdb___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412504)
  store %struct.Memory* %call_412504, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41250e	 Bytes: 2
  %loadMem_41250e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41250e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41250e)
  store %struct.Memory* %call_41250e, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 412510	 Bytes: 5
  %loadMem1_412510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412510 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412510, i64 -71776, i64 5, i64 5)
  store %struct.Memory* %call1_412510, %struct.Memory** %MEMORY

  %loadMem2_412510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412510 = load i64, i64* %3
  %call2_412510 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_412510, %struct.Memory* %loadMem2_412510)
  store %struct.Memory* %call2_412510, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x602c(%rbp)	 RIP: 412515	 Bytes: 10
  %loadMem_412515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412515 = call %struct.Memory* @routine_movl__0x1__MINUS0x602c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412515)
  store %struct.Memory* %call_412515, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6064(%rbp)	 RIP: 41251f	 Bytes: 6
  %loadMem_41251f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41251f = call %struct.Memory* @routine_movl__eax__MINUS0x6064__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41251f)
  store %struct.Memory* %call_41251f, %struct.Memory** %MEMORY

  ; Code: .L_412525:	 RIP: 412525	 Bytes: 0
  br label %block_.L_412525
block_.L_412525:

  ; Code: jmpq .L_41252a	 RIP: 412525	 Bytes: 5
  %loadMem_412525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412525 = call %struct.Memory* @routine_jmpq_.L_41252a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412525, i64 5, i64 5)
  store %struct.Memory* %call_412525, %struct.Memory** %MEMORY

  br label %block_.L_41252a

  ; Code: .L_41252a:	 RIP: 41252a	 Bytes: 0
block_.L_41252a:

  ; Code: jmpq .L_41252f	 RIP: 41252a	 Bytes: 5
  %loadMem_41252a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41252a = call %struct.Memory* @routine_jmpq_.L_41252f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41252a, i64 5, i64 5)
  store %struct.Memory* %call_41252a, %struct.Memory** %MEMORY

  br label %block_.L_41252f

  ; Code: .L_41252f:	 RIP: 41252f	 Bytes: 0
block_.L_41252f:

  ; Code: movl -0x6034(%rbp), %eax	 RIP: 41252f	 Bytes: 6
  %loadMem_41252f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41252f = call %struct.Memory* @routine_movl_MINUS0x6034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41252f)
  store %struct.Memory* %call_41252f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62daf4, %eax	 RIP: 412535	 Bytes: 7
  %loadMem_412535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412535 = call %struct.Memory* @routine_cmpl_0x62daf4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412535)
  store %struct.Memory* %call_412535, %struct.Memory** %MEMORY

  ; Code: je .L_4125a4	 RIP: 41253c	 Bytes: 6
  %loadMem_41253c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41253c = call %struct.Memory* @routine_je_.L_4125a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41253c, i8* %BRANCH_TAKEN, i64 104, i64 6, i64 6)
  store %struct.Memory* %call_41253c, %struct.Memory** %MEMORY

  %loadBr_41253c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41253c = icmp eq i8 %loadBr_41253c, 1
  br i1 %cmpBr_41253c, label %block_.L_4125a4, label %block_412542

block_412542:
  ; Code: cmpl $0x3, -0x6034(%rbp)	 RIP: 412542	 Bytes: 7
  %loadMem_412542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412542 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x6034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412542)
  store %struct.Memory* %call_412542, %struct.Memory** %MEMORY

  ; Code: jne .L_41255e	 RIP: 412549	 Bytes: 6
  %loadMem_412549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412549 = call %struct.Memory* @routine_jne_.L_41255e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412549, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_412549, %struct.Memory** %MEMORY

  %loadBr_412549 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412549 = icmp eq i8 %loadBr_412549, 1
  br i1 %cmpBr_412549, label %block_.L_41255e, label %block_41254f

block_41254f:
  ; Code: movl $0x1, -0x6048(%rbp)	 RIP: 41254f	 Bytes: 10
  %loadMem_41254f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41254f = call %struct.Memory* @routine_movl__0x1__MINUS0x6048__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41254f)
  store %struct.Memory* %call_41254f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41259f	 RIP: 412559	 Bytes: 5
  %loadMem_412559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412559 = call %struct.Memory* @routine_jmpq_.L_41259f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412559, i64 70, i64 5)
  store %struct.Memory* %call_412559, %struct.Memory** %MEMORY

  br label %block_.L_41259f

  ; Code: .L_41255e:	 RIP: 41255e	 Bytes: 0
block_.L_41255e:

  ; Code: cmpl $0x0, -0x6034(%rbp)	 RIP: 41255e	 Bytes: 7
  %loadMem_41255e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41255e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41255e)
  store %struct.Memory* %call_41255e, %struct.Memory** %MEMORY

  ; Code: jne .L_41259a	 RIP: 412565	 Bytes: 6
  %loadMem_412565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412565 = call %struct.Memory* @routine_jne_.L_41259a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412565, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_412565, %struct.Memory** %MEMORY

  %loadBr_412565 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412565 = icmp eq i8 %loadBr_412565, 1
  br i1 %cmpBr_412565, label %block_.L_41259a, label %block_41256b

block_41256b:
  ; Code: cmpl $0x0, 0x62daf4	 RIP: 41256b	 Bytes: 8
  %loadMem_41256b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41256b = call %struct.Memory* @routine_cmpl__0x0__0x62daf4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41256b)
  store %struct.Memory* %call_41256b, %struct.Memory** %MEMORY

  ; Code: jne .L_41259a	 RIP: 412573	 Bytes: 6
  %loadMem_412573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412573 = call %struct.Memory* @routine_jne_.L_41259a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412573, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_412573, %struct.Memory** %MEMORY

  %loadBr_412573 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412573 = icmp eq i8 %loadBr_412573, 1
  br i1 %cmpBr_412573, label %block_.L_41259a, label %block_412579

block_412579:
  ; Code: movq $0x428d04, %rdi	 RIP: 412579	 Bytes: 10
  %loadMem_412579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412579 = call %struct.Memory* @routine_movq__0x428d04___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412579)
  store %struct.Memory* %call_412579, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 412583	 Bytes: 2
  %loadMem_412583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412583 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412583)
  store %struct.Memory* %call_412583, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 412585	 Bytes: 5
  %loadMem1_412585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412585 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412585, i64 -71893, i64 5, i64 5)
  store %struct.Memory* %call1_412585, %struct.Memory** %MEMORY

  %loadMem2_412585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412585 = load i64, i64* %3
  %call2_412585 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_412585, %struct.Memory* %loadMem2_412585)
  store %struct.Memory* %call2_412585, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x602c(%rbp)	 RIP: 41258a	 Bytes: 10
  %loadMem_41258a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41258a = call %struct.Memory* @routine_movl__0x1__MINUS0x602c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41258a)
  store %struct.Memory* %call_41258a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6068(%rbp)	 RIP: 412594	 Bytes: 6
  %loadMem_412594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412594 = call %struct.Memory* @routine_movl__eax__MINUS0x6068__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412594)
  store %struct.Memory* %call_412594, %struct.Memory** %MEMORY

  ; Code: .L_41259a:	 RIP: 41259a	 Bytes: 0
  br label %block_.L_41259a
block_.L_41259a:

  ; Code: jmpq .L_41259f	 RIP: 41259a	 Bytes: 5
  %loadMem_41259a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41259a = call %struct.Memory* @routine_jmpq_.L_41259f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41259a, i64 5, i64 5)
  store %struct.Memory* %call_41259a, %struct.Memory** %MEMORY

  br label %block_.L_41259f

  ; Code: .L_41259f:	 RIP: 41259f	 Bytes: 0
block_.L_41259f:

  ; Code: jmpq .L_4125a4	 RIP: 41259f	 Bytes: 5
  %loadMem_41259f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41259f = call %struct.Memory* @routine_jmpq_.L_4125a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41259f, i64 5, i64 5)
  store %struct.Memory* %call_41259f, %struct.Memory** %MEMORY

  br label %block_.L_4125a4

  ; Code: .L_4125a4:	 RIP: 4125a4	 Bytes: 0
block_.L_4125a4:

  ; Code: movl -0x6038(%rbp), %eax	 RIP: 4125a4	 Bytes: 6
  %loadMem_4125a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125a4 = call %struct.Memory* @routine_movl_MINUS0x6038__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125a4)
  store %struct.Memory* %call_4125a4, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62daf8, %eax	 RIP: 4125aa	 Bytes: 7
  %loadMem_4125aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125aa = call %struct.Memory* @routine_cmpl_0x62daf8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125aa)
  store %struct.Memory* %call_4125aa, %struct.Memory** %MEMORY

  ; Code: je .L_412619	 RIP: 4125b1	 Bytes: 6
  %loadMem_4125b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125b1 = call %struct.Memory* @routine_je_.L_412619(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125b1, i8* %BRANCH_TAKEN, i64 104, i64 6, i64 6)
  store %struct.Memory* %call_4125b1, %struct.Memory** %MEMORY

  %loadBr_4125b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4125b1 = icmp eq i8 %loadBr_4125b1, 1
  br i1 %cmpBr_4125b1, label %block_.L_412619, label %block_4125b7

block_4125b7:
  ; Code: cmpl $0x3, -0x6038(%rbp)	 RIP: 4125b7	 Bytes: 7
  %loadMem_4125b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125b7 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x6038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125b7)
  store %struct.Memory* %call_4125b7, %struct.Memory** %MEMORY

  ; Code: jne .L_4125d3	 RIP: 4125be	 Bytes: 6
  %loadMem_4125be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125be = call %struct.Memory* @routine_jne_.L_4125d3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125be, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4125be, %struct.Memory** %MEMORY

  %loadBr_4125be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4125be = icmp eq i8 %loadBr_4125be, 1
  br i1 %cmpBr_4125be, label %block_.L_4125d3, label %block_4125c4

block_4125c4:
  ; Code: movl $0x1, -0x604c(%rbp)	 RIP: 4125c4	 Bytes: 10
  %loadMem_4125c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125c4 = call %struct.Memory* @routine_movl__0x1__MINUS0x604c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125c4)
  store %struct.Memory* %call_4125c4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412614	 RIP: 4125ce	 Bytes: 5
  %loadMem_4125ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125ce = call %struct.Memory* @routine_jmpq_.L_412614(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125ce, i64 70, i64 5)
  store %struct.Memory* %call_4125ce, %struct.Memory** %MEMORY

  br label %block_.L_412614

  ; Code: .L_4125d3:	 RIP: 4125d3	 Bytes: 0
block_.L_4125d3:

  ; Code: cmpl $0x0, -0x6038(%rbp)	 RIP: 4125d3	 Bytes: 7
  %loadMem_4125d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125d3 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125d3)
  store %struct.Memory* %call_4125d3, %struct.Memory** %MEMORY

  ; Code: jne .L_41260f	 RIP: 4125da	 Bytes: 6
  %loadMem_4125da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125da = call %struct.Memory* @routine_jne_.L_41260f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125da, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_4125da, %struct.Memory** %MEMORY

  %loadBr_4125da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4125da = icmp eq i8 %loadBr_4125da, 1
  br i1 %cmpBr_4125da, label %block_.L_41260f, label %block_4125e0

block_4125e0:
  ; Code: cmpl $0x0, 0x62daf8	 RIP: 4125e0	 Bytes: 8
  %loadMem_4125e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125e0 = call %struct.Memory* @routine_cmpl__0x0__0x62daf8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125e0)
  store %struct.Memory* %call_4125e0, %struct.Memory** %MEMORY

  ; Code: jne .L_41260f	 RIP: 4125e8	 Bytes: 6
  %loadMem_4125e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125e8 = call %struct.Memory* @routine_jne_.L_41260f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125e8, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_4125e8, %struct.Memory** %MEMORY

  %loadBr_4125e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4125e8 = icmp eq i8 %loadBr_4125e8, 1
  br i1 %cmpBr_4125e8, label %block_.L_41260f, label %block_4125ee

block_4125ee:
  ; Code: movq $0x428d2d, %rdi	 RIP: 4125ee	 Bytes: 10
  %loadMem_4125ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125ee = call %struct.Memory* @routine_movq__0x428d2d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125ee)
  store %struct.Memory* %call_4125ee, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4125f8	 Bytes: 2
  %loadMem_4125f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125f8 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125f8)
  store %struct.Memory* %call_4125f8, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4125fa	 Bytes: 5
  %loadMem1_4125fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4125fa = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4125fa, i64 -72010, i64 5, i64 5)
  store %struct.Memory* %call1_4125fa, %struct.Memory** %MEMORY

  %loadMem2_4125fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4125fa = load i64, i64* %3
  %call2_4125fa = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4125fa, %struct.Memory* %loadMem2_4125fa)
  store %struct.Memory* %call2_4125fa, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x602c(%rbp)	 RIP: 4125ff	 Bytes: 10
  %loadMem_4125ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125ff = call %struct.Memory* @routine_movl__0x1__MINUS0x602c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125ff)
  store %struct.Memory* %call_4125ff, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x606c(%rbp)	 RIP: 412609	 Bytes: 6
  %loadMem_412609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412609 = call %struct.Memory* @routine_movl__eax__MINUS0x606c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412609)
  store %struct.Memory* %call_412609, %struct.Memory** %MEMORY

  ; Code: .L_41260f:	 RIP: 41260f	 Bytes: 0
  br label %block_.L_41260f
block_.L_41260f:

  ; Code: jmpq .L_412614	 RIP: 41260f	 Bytes: 5
  %loadMem_41260f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41260f = call %struct.Memory* @routine_jmpq_.L_412614(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41260f, i64 5, i64 5)
  store %struct.Memory* %call_41260f, %struct.Memory** %MEMORY

  br label %block_.L_412614

  ; Code: .L_412614:	 RIP: 412614	 Bytes: 0
block_.L_412614:

  ; Code: jmpq .L_412619	 RIP: 412614	 Bytes: 5
  %loadMem_412614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412614 = call %struct.Memory* @routine_jmpq_.L_412619(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412614, i64 5, i64 5)
  store %struct.Memory* %call_412614, %struct.Memory** %MEMORY

  br label %block_.L_412619

  ; Code: .L_412619:	 RIP: 412619	 Bytes: 0
block_.L_412619:

  ; Code: movl -0x603c(%rbp), %eax	 RIP: 412619	 Bytes: 6
  %loadMem_412619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412619 = call %struct.Memory* @routine_movl_MINUS0x603c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412619)
  store %struct.Memory* %call_412619, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62dafc, %eax	 RIP: 41261f	 Bytes: 7
  %loadMem_41261f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41261f = call %struct.Memory* @routine_cmpl_0x62dafc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41261f)
  store %struct.Memory* %call_41261f, %struct.Memory** %MEMORY

  ; Code: je .L_41268e	 RIP: 412626	 Bytes: 6
  %loadMem_412626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412626 = call %struct.Memory* @routine_je_.L_41268e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412626, i8* %BRANCH_TAKEN, i64 104, i64 6, i64 6)
  store %struct.Memory* %call_412626, %struct.Memory** %MEMORY

  %loadBr_412626 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412626 = icmp eq i8 %loadBr_412626, 1
  br i1 %cmpBr_412626, label %block_.L_41268e, label %block_41262c

block_41262c:
  ; Code: cmpl $0x3, -0x603c(%rbp)	 RIP: 41262c	 Bytes: 7
  %loadMem_41262c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41262c = call %struct.Memory* @routine_cmpl__0x3__MINUS0x603c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41262c)
  store %struct.Memory* %call_41262c, %struct.Memory** %MEMORY

  ; Code: jne .L_412648	 RIP: 412633	 Bytes: 6
  %loadMem_412633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412633 = call %struct.Memory* @routine_jne_.L_412648(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412633, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_412633, %struct.Memory** %MEMORY

  %loadBr_412633 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412633 = icmp eq i8 %loadBr_412633, 1
  br i1 %cmpBr_412633, label %block_.L_412648, label %block_412639

block_412639:
  ; Code: movl $0x1, -0x6050(%rbp)	 RIP: 412639	 Bytes: 10
  %loadMem_412639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412639 = call %struct.Memory* @routine_movl__0x1__MINUS0x6050__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412639)
  store %struct.Memory* %call_412639, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412689	 RIP: 412643	 Bytes: 5
  %loadMem_412643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412643 = call %struct.Memory* @routine_jmpq_.L_412689(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412643, i64 70, i64 5)
  store %struct.Memory* %call_412643, %struct.Memory** %MEMORY

  br label %block_.L_412689

  ; Code: .L_412648:	 RIP: 412648	 Bytes: 0
block_.L_412648:

  ; Code: cmpl $0x0, -0x603c(%rbp)	 RIP: 412648	 Bytes: 7
  %loadMem_412648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412648 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x603c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412648)
  store %struct.Memory* %call_412648, %struct.Memory** %MEMORY

  ; Code: jne .L_412684	 RIP: 41264f	 Bytes: 6
  %loadMem_41264f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41264f = call %struct.Memory* @routine_jne_.L_412684(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41264f, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_41264f, %struct.Memory** %MEMORY

  %loadBr_41264f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41264f = icmp eq i8 %loadBr_41264f, 1
  br i1 %cmpBr_41264f, label %block_.L_412684, label %block_412655

block_412655:
  ; Code: cmpl $0x0, 0x62dafc	 RIP: 412655	 Bytes: 8
  %loadMem_412655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412655 = call %struct.Memory* @routine_cmpl__0x0__0x62dafc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412655)
  store %struct.Memory* %call_412655, %struct.Memory** %MEMORY

  ; Code: jne .L_412684	 RIP: 41265d	 Bytes: 6
  %loadMem_41265d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41265d = call %struct.Memory* @routine_jne_.L_412684(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41265d, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_41265d, %struct.Memory** %MEMORY

  %loadBr_41265d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41265d = icmp eq i8 %loadBr_41265d, 1
  br i1 %cmpBr_41265d, label %block_.L_412684, label %block_412663

block_412663:
  ; Code: movq $0x428d56, %rdi	 RIP: 412663	 Bytes: 10
  %loadMem_412663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412663 = call %struct.Memory* @routine_movq__0x428d56___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412663)
  store %struct.Memory* %call_412663, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41266d	 Bytes: 2
  %loadMem_41266d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41266d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41266d)
  store %struct.Memory* %call_41266d, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41266f	 Bytes: 5
  %loadMem1_41266f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41266f = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41266f, i64 -72127, i64 5, i64 5)
  store %struct.Memory* %call1_41266f, %struct.Memory** %MEMORY

  %loadMem2_41266f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41266f = load i64, i64* %3
  %call2_41266f = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41266f, %struct.Memory* %loadMem2_41266f)
  store %struct.Memory* %call2_41266f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x602c(%rbp)	 RIP: 412674	 Bytes: 10
  %loadMem_412674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412674 = call %struct.Memory* @routine_movl__0x1__MINUS0x602c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412674)
  store %struct.Memory* %call_412674, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6070(%rbp)	 RIP: 41267e	 Bytes: 6
  %loadMem_41267e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41267e = call %struct.Memory* @routine_movl__eax__MINUS0x6070__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41267e)
  store %struct.Memory* %call_41267e, %struct.Memory** %MEMORY

  ; Code: .L_412684:	 RIP: 412684	 Bytes: 0
  br label %block_.L_412684
block_.L_412684:

  ; Code: jmpq .L_412689	 RIP: 412684	 Bytes: 5
  %loadMem_412684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412684 = call %struct.Memory* @routine_jmpq_.L_412689(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412684, i64 5, i64 5)
  store %struct.Memory* %call_412684, %struct.Memory** %MEMORY

  br label %block_.L_412689

  ; Code: .L_412689:	 RIP: 412689	 Bytes: 0
block_.L_412689:

  ; Code: jmpq .L_41268e	 RIP: 412689	 Bytes: 5
  %loadMem_412689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412689 = call %struct.Memory* @routine_jmpq_.L_41268e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412689, i64 5, i64 5)
  store %struct.Memory* %call_412689, %struct.Memory** %MEMORY

  br label %block_.L_41268e

  ; Code: .L_41268e:	 RIP: 41268e	 Bytes: 0
block_.L_41268e:

  ; Code: movl -0x6040(%rbp), %eax	 RIP: 41268e	 Bytes: 6
  %loadMem_41268e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41268e = call %struct.Memory* @routine_movl_MINUS0x6040__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41268e)
  store %struct.Memory* %call_41268e, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62db00, %eax	 RIP: 412694	 Bytes: 7
  %loadMem_412694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412694 = call %struct.Memory* @routine_cmpl_0x62db00___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412694)
  store %struct.Memory* %call_412694, %struct.Memory** %MEMORY

  ; Code: je .L_412703	 RIP: 41269b	 Bytes: 6
  %loadMem_41269b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41269b = call %struct.Memory* @routine_je_.L_412703(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41269b, i8* %BRANCH_TAKEN, i64 104, i64 6, i64 6)
  store %struct.Memory* %call_41269b, %struct.Memory** %MEMORY

  %loadBr_41269b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41269b = icmp eq i8 %loadBr_41269b, 1
  br i1 %cmpBr_41269b, label %block_.L_412703, label %block_4126a1

block_4126a1:
  ; Code: cmpl $0x3, -0x6040(%rbp)	 RIP: 4126a1	 Bytes: 7
  %loadMem_4126a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126a1 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x6040__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126a1)
  store %struct.Memory* %call_4126a1, %struct.Memory** %MEMORY

  ; Code: jne .L_4126bd	 RIP: 4126a8	 Bytes: 6
  %loadMem_4126a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126a8 = call %struct.Memory* @routine_jne_.L_4126bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126a8, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4126a8, %struct.Memory** %MEMORY

  %loadBr_4126a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4126a8 = icmp eq i8 %loadBr_4126a8, 1
  br i1 %cmpBr_4126a8, label %block_.L_4126bd, label %block_4126ae

block_4126ae:
  ; Code: movl $0x1, -0x6054(%rbp)	 RIP: 4126ae	 Bytes: 10
  %loadMem_4126ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126ae = call %struct.Memory* @routine_movl__0x1__MINUS0x6054__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126ae)
  store %struct.Memory* %call_4126ae, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4126fe	 RIP: 4126b8	 Bytes: 5
  %loadMem_4126b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126b8 = call %struct.Memory* @routine_jmpq_.L_4126fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126b8, i64 70, i64 5)
  store %struct.Memory* %call_4126b8, %struct.Memory** %MEMORY

  br label %block_.L_4126fe

  ; Code: .L_4126bd:	 RIP: 4126bd	 Bytes: 0
block_.L_4126bd:

  ; Code: cmpl $0x0, -0x6040(%rbp)	 RIP: 4126bd	 Bytes: 7
  %loadMem_4126bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126bd = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6040__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126bd)
  store %struct.Memory* %call_4126bd, %struct.Memory** %MEMORY

  ; Code: jne .L_4126f9	 RIP: 4126c4	 Bytes: 6
  %loadMem_4126c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126c4 = call %struct.Memory* @routine_jne_.L_4126f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126c4, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_4126c4, %struct.Memory** %MEMORY

  %loadBr_4126c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4126c4 = icmp eq i8 %loadBr_4126c4, 1
  br i1 %cmpBr_4126c4, label %block_.L_4126f9, label %block_4126ca

block_4126ca:
  ; Code: cmpl $0x0, 0x62db00	 RIP: 4126ca	 Bytes: 8
  %loadMem_4126ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126ca = call %struct.Memory* @routine_cmpl__0x0__0x62db00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126ca)
  store %struct.Memory* %call_4126ca, %struct.Memory** %MEMORY

  ; Code: jne .L_4126f9	 RIP: 4126d2	 Bytes: 6
  %loadMem_4126d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126d2 = call %struct.Memory* @routine_jne_.L_4126f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126d2, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_4126d2, %struct.Memory** %MEMORY

  %loadBr_4126d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4126d2 = icmp eq i8 %loadBr_4126d2, 1
  br i1 %cmpBr_4126d2, label %block_.L_4126f9, label %block_4126d8

block_4126d8:
  ; Code: movq $0x428d7f, %rdi	 RIP: 4126d8	 Bytes: 10
  %loadMem_4126d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126d8 = call %struct.Memory* @routine_movq__0x428d7f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126d8)
  store %struct.Memory* %call_4126d8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4126e2	 Bytes: 2
  %loadMem_4126e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126e2 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126e2)
  store %struct.Memory* %call_4126e2, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4126e4	 Bytes: 5
  %loadMem1_4126e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4126e4 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4126e4, i64 -72244, i64 5, i64 5)
  store %struct.Memory* %call1_4126e4, %struct.Memory** %MEMORY

  %loadMem2_4126e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4126e4 = load i64, i64* %3
  %call2_4126e4 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4126e4, %struct.Memory* %loadMem2_4126e4)
  store %struct.Memory* %call2_4126e4, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x602c(%rbp)	 RIP: 4126e9	 Bytes: 10
  %loadMem_4126e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126e9 = call %struct.Memory* @routine_movl__0x1__MINUS0x602c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126e9)
  store %struct.Memory* %call_4126e9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6074(%rbp)	 RIP: 4126f3	 Bytes: 6
  %loadMem_4126f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126f3 = call %struct.Memory* @routine_movl__eax__MINUS0x6074__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126f3)
  store %struct.Memory* %call_4126f3, %struct.Memory** %MEMORY

  ; Code: .L_4126f9:	 RIP: 4126f9	 Bytes: 0
  br label %block_.L_4126f9
block_.L_4126f9:

  ; Code: jmpq .L_4126fe	 RIP: 4126f9	 Bytes: 5
  %loadMem_4126f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126f9 = call %struct.Memory* @routine_jmpq_.L_4126fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126f9, i64 5, i64 5)
  store %struct.Memory* %call_4126f9, %struct.Memory** %MEMORY

  br label %block_.L_4126fe

  ; Code: .L_4126fe:	 RIP: 4126fe	 Bytes: 0
block_.L_4126fe:

  ; Code: jmpq .L_412703	 RIP: 4126fe	 Bytes: 5
  %loadMem_4126fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126fe = call %struct.Memory* @routine_jmpq_.L_412703(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126fe, i64 5, i64 5)
  store %struct.Memory* %call_4126fe, %struct.Memory** %MEMORY

  br label %block_.L_412703

  ; Code: .L_412703:	 RIP: 412703	 Bytes: 0
block_.L_412703:

  ; Code: cmpl $0x0, -0x6044(%rbp)	 RIP: 412703	 Bytes: 7
  %loadMem_412703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412703 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6044__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412703)
  store %struct.Memory* %call_412703, %struct.Memory** %MEMORY

  ; Code: je .L_412727	 RIP: 41270a	 Bytes: 6
  %loadMem_41270a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41270a = call %struct.Memory* @routine_je_.L_412727(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41270a, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_41270a, %struct.Memory** %MEMORY

  %loadBr_41270a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41270a = icmp eq i8 %loadBr_41270a, 1
  br i1 %cmpBr_41270a, label %block_.L_412727, label %block_412710

block_412710:
  ; Code: movq $0x428da8, %rdi	 RIP: 412710	 Bytes: 10
  %loadMem_412710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412710 = call %struct.Memory* @routine_movq__0x428da8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412710)
  store %struct.Memory* %call_412710, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41271a	 Bytes: 2
  %loadMem_41271a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41271a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41271a)
  store %struct.Memory* %call_41271a, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41271c	 Bytes: 5
  %loadMem1_41271c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41271c = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41271c, i64 -72300, i64 5, i64 5)
  store %struct.Memory* %call1_41271c, %struct.Memory** %MEMORY

  %loadMem2_41271c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41271c = load i64, i64* %3
  %call2_41271c = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41271c, %struct.Memory* %loadMem2_41271c)
  store %struct.Memory* %call2_41271c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6078(%rbp)	 RIP: 412721	 Bytes: 6
  %loadMem_412721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412721 = call %struct.Memory* @routine_movl__eax__MINUS0x6078__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412721)
  store %struct.Memory* %call_412721, %struct.Memory** %MEMORY

  ; Code: .L_412727:	 RIP: 412727	 Bytes: 0
  br label %block_.L_412727
block_.L_412727:

  ; Code: cmpl $0x0, -0x6048(%rbp)	 RIP: 412727	 Bytes: 7
  %loadMem_412727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412727 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6048__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412727)
  store %struct.Memory* %call_412727, %struct.Memory** %MEMORY

  ; Code: je .L_41274b	 RIP: 41272e	 Bytes: 6
  %loadMem_41272e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41272e = call %struct.Memory* @routine_je_.L_41274b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41272e, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_41272e, %struct.Memory** %MEMORY

  %loadBr_41272e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41272e = icmp eq i8 %loadBr_41272e, 1
  br i1 %cmpBr_41272e, label %block_.L_41274b, label %block_412734

block_412734:
  ; Code: movq $0x428dbc, %rdi	 RIP: 412734	 Bytes: 10
  %loadMem_412734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412734 = call %struct.Memory* @routine_movq__0x428dbc___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412734)
  store %struct.Memory* %call_412734, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41273e	 Bytes: 2
  %loadMem_41273e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41273e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41273e)
  store %struct.Memory* %call_41273e, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 412740	 Bytes: 5
  %loadMem1_412740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412740 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412740, i64 -72336, i64 5, i64 5)
  store %struct.Memory* %call1_412740, %struct.Memory** %MEMORY

  %loadMem2_412740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412740 = load i64, i64* %3
  %call2_412740 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_412740, %struct.Memory* %loadMem2_412740)
  store %struct.Memory* %call2_412740, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x607c(%rbp)	 RIP: 412745	 Bytes: 6
  %loadMem_412745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412745 = call %struct.Memory* @routine_movl__eax__MINUS0x607c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412745)
  store %struct.Memory* %call_412745, %struct.Memory** %MEMORY

  ; Code: .L_41274b:	 RIP: 41274b	 Bytes: 0
  br label %block_.L_41274b
block_.L_41274b:

  ; Code: cmpl $0x0, -0x604c(%rbp)	 RIP: 41274b	 Bytes: 7
  %loadMem_41274b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41274b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x604c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41274b)
  store %struct.Memory* %call_41274b, %struct.Memory** %MEMORY

  ; Code: je .L_41276f	 RIP: 412752	 Bytes: 6
  %loadMem_412752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412752 = call %struct.Memory* @routine_je_.L_41276f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412752, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_412752, %struct.Memory** %MEMORY

  %loadBr_412752 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412752 = icmp eq i8 %loadBr_412752, 1
  br i1 %cmpBr_412752, label %block_.L_41276f, label %block_412758

block_412758:
  ; Code: movq $0x428dd0, %rdi	 RIP: 412758	 Bytes: 10
  %loadMem_412758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412758 = call %struct.Memory* @routine_movq__0x428dd0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412758)
  store %struct.Memory* %call_412758, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 412762	 Bytes: 2
  %loadMem_412762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412762 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412762)
  store %struct.Memory* %call_412762, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 412764	 Bytes: 5
  %loadMem1_412764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412764 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412764, i64 -72372, i64 5, i64 5)
  store %struct.Memory* %call1_412764, %struct.Memory** %MEMORY

  %loadMem2_412764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412764 = load i64, i64* %3
  %call2_412764 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_412764, %struct.Memory* %loadMem2_412764)
  store %struct.Memory* %call2_412764, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6080(%rbp)	 RIP: 412769	 Bytes: 6
  %loadMem_412769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412769 = call %struct.Memory* @routine_movl__eax__MINUS0x6080__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412769)
  store %struct.Memory* %call_412769, %struct.Memory** %MEMORY

  ; Code: .L_41276f:	 RIP: 41276f	 Bytes: 0
  br label %block_.L_41276f
block_.L_41276f:

  ; Code: cmpl $0x0, -0x6050(%rbp)	 RIP: 41276f	 Bytes: 7
  %loadMem_41276f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41276f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6050__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41276f)
  store %struct.Memory* %call_41276f, %struct.Memory** %MEMORY

  ; Code: je .L_412793	 RIP: 412776	 Bytes: 6
  %loadMem_412776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412776 = call %struct.Memory* @routine_je_.L_412793(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412776, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_412776, %struct.Memory** %MEMORY

  %loadBr_412776 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412776 = icmp eq i8 %loadBr_412776, 1
  br i1 %cmpBr_412776, label %block_.L_412793, label %block_41277c

block_41277c:
  ; Code: movq $0x428de4, %rdi	 RIP: 41277c	 Bytes: 10
  %loadMem_41277c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41277c = call %struct.Memory* @routine_movq__0x428de4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41277c)
  store %struct.Memory* %call_41277c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 412786	 Bytes: 2
  %loadMem_412786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412786 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412786)
  store %struct.Memory* %call_412786, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 412788	 Bytes: 5
  %loadMem1_412788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412788 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412788, i64 -72408, i64 5, i64 5)
  store %struct.Memory* %call1_412788, %struct.Memory** %MEMORY

  %loadMem2_412788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412788 = load i64, i64* %3
  %call2_412788 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_412788, %struct.Memory* %loadMem2_412788)
  store %struct.Memory* %call2_412788, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6084(%rbp)	 RIP: 41278d	 Bytes: 6
  %loadMem_41278d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41278d = call %struct.Memory* @routine_movl__eax__MINUS0x6084__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41278d)
  store %struct.Memory* %call_41278d, %struct.Memory** %MEMORY

  ; Code: .L_412793:	 RIP: 412793	 Bytes: 0
  br label %block_.L_412793
block_.L_412793:

  ; Code: cmpl $0x0, -0x6054(%rbp)	 RIP: 412793	 Bytes: 7
  %loadMem_412793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412793 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6054__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412793)
  store %struct.Memory* %call_412793, %struct.Memory** %MEMORY

  ; Code: je .L_4127b7	 RIP: 41279a	 Bytes: 6
  %loadMem_41279a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41279a = call %struct.Memory* @routine_je_.L_4127b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41279a, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_41279a, %struct.Memory** %MEMORY

  %loadBr_41279a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41279a = icmp eq i8 %loadBr_41279a, 1
  br i1 %cmpBr_41279a, label %block_.L_4127b7, label %block_4127a0

block_4127a0:
  ; Code: movq $0x428df8, %rdi	 RIP: 4127a0	 Bytes: 10
  %loadMem_4127a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127a0 = call %struct.Memory* @routine_movq__0x428df8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127a0)
  store %struct.Memory* %call_4127a0, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4127aa	 Bytes: 2
  %loadMem_4127aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127aa = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127aa)
  store %struct.Memory* %call_4127aa, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4127ac	 Bytes: 5
  %loadMem1_4127ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4127ac = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4127ac, i64 -72444, i64 5, i64 5)
  store %struct.Memory* %call1_4127ac, %struct.Memory** %MEMORY

  %loadMem2_4127ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4127ac = load i64, i64* %3
  %call2_4127ac = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4127ac, %struct.Memory* %loadMem2_4127ac)
  store %struct.Memory* %call2_4127ac, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6088(%rbp)	 RIP: 4127b1	 Bytes: 6
  %loadMem_4127b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127b1 = call %struct.Memory* @routine_movl__eax__MINUS0x6088__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127b1)
  store %struct.Memory* %call_4127b1, %struct.Memory** %MEMORY

  ; Code: .L_4127b7:	 RIP: 4127b7	 Bytes: 0
  br label %block_.L_4127b7
block_.L_4127b7:

  ; Code: cmpl $0x0, 0x86bd74	 RIP: 4127b7	 Bytes: 8
  %loadMem_4127b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127b7 = call %struct.Memory* @routine_cmpl__0x0__0x86bd74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127b7)
  store %struct.Memory* %call_4127b7, %struct.Memory** %MEMORY

  ; Code: je .L_412816	 RIP: 4127bf	 Bytes: 6
  %loadMem_4127bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127bf = call %struct.Memory* @routine_je_.L_412816(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127bf, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_4127bf, %struct.Memory** %MEMORY

  %loadBr_4127bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4127bf = icmp eq i8 %loadBr_4127bf, 1
  br i1 %cmpBr_4127bf, label %block_.L_412816, label %block_4127c5

block_4127c5:
  ; Code: cmpl $0x0, -0x602c(%rbp)	 RIP: 4127c5	 Bytes: 7
  %loadMem_4127c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127c5 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x602c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127c5)
  store %struct.Memory* %call_4127c5, %struct.Memory** %MEMORY

  ; Code: je .L_412816	 RIP: 4127cc	 Bytes: 6
  %loadMem_4127cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127cc = call %struct.Memory* @routine_je_.L_412816(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127cc, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_4127cc, %struct.Memory** %MEMORY

  %loadBr_4127cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4127cc = icmp eq i8 %loadBr_4127cc, 1
  br i1 %cmpBr_4127cc, label %block_.L_412816, label %block_4127d2

block_4127d2:
  ; Code: movq $0x428e0c, %rdi	 RIP: 4127d2	 Bytes: 10
  %loadMem_4127d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127d2 = call %struct.Memory* @routine_movq__0x428e0c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127d2)
  store %struct.Memory* %call_4127d2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86bd74	 RIP: 4127dc	 Bytes: 11
  %loadMem_4127dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127dc = call %struct.Memory* @routine_movl__0x0__0x86bd74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127dc)
  store %struct.Memory* %call_4127dc, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4127e7	 Bytes: 2
  %loadMem_4127e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127e7 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127e7)
  store %struct.Memory* %call_4127e7, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4127e9	 Bytes: 5
  %loadMem1_4127e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4127e9 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4127e9, i64 -72505, i64 5, i64 5)
  store %struct.Memory* %call1_4127e9, %struct.Memory** %MEMORY

  %loadMem2_4127e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4127e9 = load i64, i64* %3
  %call2_4127e9 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4127e9, %struct.Memory* %loadMem2_4127e9)
  store %struct.Memory* %call2_4127e9, %struct.Memory** %MEMORY

  ; Code: movq $0x428e1d, %rdi	 RIP: 4127ee	 Bytes: 10
  %loadMem_4127ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127ee = call %struct.Memory* @routine_movq__0x428e1d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127ee)
  store %struct.Memory* %call_4127ee, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x608c(%rbp)	 RIP: 4127f8	 Bytes: 6
  %loadMem_4127f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127f8 = call %struct.Memory* @routine_movl__eax__MINUS0x608c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127f8)
  store %struct.Memory* %call_4127f8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4127fe	 Bytes: 2
  %loadMem_4127fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127fe = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127fe)
  store %struct.Memory* %call_4127fe, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 412800	 Bytes: 5
  %loadMem1_412800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412800 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412800, i64 -72528, i64 5, i64 5)
  store %struct.Memory* %call1_412800, %struct.Memory** %MEMORY

  %loadMem2_412800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412800 = load i64, i64* %3
  %call2_412800 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_412800, %struct.Memory* %loadMem2_412800)
  store %struct.Memory* %call2_412800, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x886a60	 RIP: 412805	 Bytes: 11
  %loadMem_412805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412805 = call %struct.Memory* @routine_movl__0x0__0x886a60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412805)
  store %struct.Memory* %call_412805, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6090(%rbp)	 RIP: 412810	 Bytes: 6
  %loadMem_412810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412810 = call %struct.Memory* @routine_movl__eax__MINUS0x6090__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412810)
  store %struct.Memory* %call_412810, %struct.Memory** %MEMORY

  ; Code: .L_412816:	 RIP: 412816	 Bytes: 0
  br label %block_.L_412816
block_.L_412816:

  ; Code: cmpl $0x0, -0x6030(%rbp)	 RIP: 412816	 Bytes: 7
  %loadMem_412816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412816 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412816)
  store %struct.Memory* %call_412816, %struct.Memory** %MEMORY

  ; Code: je .L_412835	 RIP: 41281d	 Bytes: 6
  %loadMem_41281d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41281d = call %struct.Memory* @routine_je_.L_412835(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41281d, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_41281d, %struct.Memory** %MEMORY

  %loadBr_41281d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41281d = icmp eq i8 %loadBr_41281d, 1
  br i1 %cmpBr_41281d, label %block_.L_412835, label %block_412823

block_412823:
  ; Code: movl -0x6030(%rbp), %eax	 RIP: 412823	 Bytes: 6
  %loadMem_412823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412823 = call %struct.Memory* @routine_movl_MINUS0x6030__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412823)
  store %struct.Memory* %call_412823, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62daf0	 RIP: 412829	 Bytes: 7
  %loadMem_412829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412829 = call %struct.Memory* @routine_movl__eax__0x62daf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412829)
  store %struct.Memory* %call_412829, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412846	 RIP: 412830	 Bytes: 5
  %loadMem_412830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412830 = call %struct.Memory* @routine_jmpq_.L_412846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412830, i64 22, i64 5)
  store %struct.Memory* %call_412830, %struct.Memory** %MEMORY

  br label %block_.L_412846

  ; Code: .L_412835:	 RIP: 412835	 Bytes: 0
block_.L_412835:

  ; Code: movl 0x62daf0, %eax	 RIP: 412835	 Bytes: 7
  %loadMem_412835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412835 = call %struct.Memory* @routine_movl_0x62daf0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412835)
  store %struct.Memory* %call_412835, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 41283c	 Bytes: 3
  %loadMem_41283c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41283c = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41283c)
  store %struct.Memory* %call_41283c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62daf0	 RIP: 41283f	 Bytes: 7
  %loadMem_41283f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41283f = call %struct.Memory* @routine_movl__eax__0x62daf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41283f)
  store %struct.Memory* %call_41283f, %struct.Memory** %MEMORY

  ; Code: .L_412846:	 RIP: 412846	 Bytes: 0
  br label %block_.L_412846
block_.L_412846:

  ; Code: cmpl $0x0, -0x6038(%rbp)	 RIP: 412846	 Bytes: 7
  %loadMem_412846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412846 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412846)
  store %struct.Memory* %call_412846, %struct.Memory** %MEMORY

  ; Code: je .L_412865	 RIP: 41284d	 Bytes: 6
  %loadMem_41284d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41284d = call %struct.Memory* @routine_je_.L_412865(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41284d, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_41284d, %struct.Memory** %MEMORY

  %loadBr_41284d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41284d = icmp eq i8 %loadBr_41284d, 1
  br i1 %cmpBr_41284d, label %block_.L_412865, label %block_412853

block_412853:
  ; Code: movl -0x6038(%rbp), %eax	 RIP: 412853	 Bytes: 6
  %loadMem_412853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412853 = call %struct.Memory* @routine_movl_MINUS0x6038__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412853)
  store %struct.Memory* %call_412853, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62daf8	 RIP: 412859	 Bytes: 7
  %loadMem_412859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412859 = call %struct.Memory* @routine_movl__eax__0x62daf8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412859)
  store %struct.Memory* %call_412859, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412876	 RIP: 412860	 Bytes: 5
  %loadMem_412860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412860 = call %struct.Memory* @routine_jmpq_.L_412876(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412860, i64 22, i64 5)
  store %struct.Memory* %call_412860, %struct.Memory** %MEMORY

  br label %block_.L_412876

  ; Code: .L_412865:	 RIP: 412865	 Bytes: 0
block_.L_412865:

  ; Code: movl 0x62daf8, %eax	 RIP: 412865	 Bytes: 7
  %loadMem_412865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412865 = call %struct.Memory* @routine_movl_0x62daf8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412865)
  store %struct.Memory* %call_412865, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 41286c	 Bytes: 3
  %loadMem_41286c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41286c = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41286c)
  store %struct.Memory* %call_41286c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62daf8	 RIP: 41286f	 Bytes: 7
  %loadMem_41286f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41286f = call %struct.Memory* @routine_movl__eax__0x62daf8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41286f)
  store %struct.Memory* %call_41286f, %struct.Memory** %MEMORY

  ; Code: .L_412876:	 RIP: 412876	 Bytes: 0
  br label %block_.L_412876
block_.L_412876:

  ; Code: cmpl $0x0, -0x603c(%rbp)	 RIP: 412876	 Bytes: 7
  %loadMem_412876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412876 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x603c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412876)
  store %struct.Memory* %call_412876, %struct.Memory** %MEMORY

  ; Code: je .L_412895	 RIP: 41287d	 Bytes: 6
  %loadMem_41287d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41287d = call %struct.Memory* @routine_je_.L_412895(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41287d, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_41287d, %struct.Memory** %MEMORY

  %loadBr_41287d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41287d = icmp eq i8 %loadBr_41287d, 1
  br i1 %cmpBr_41287d, label %block_.L_412895, label %block_412883

block_412883:
  ; Code: movl -0x603c(%rbp), %eax	 RIP: 412883	 Bytes: 6
  %loadMem_412883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412883 = call %struct.Memory* @routine_movl_MINUS0x603c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412883)
  store %struct.Memory* %call_412883, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62dafc	 RIP: 412889	 Bytes: 7
  %loadMem_412889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412889 = call %struct.Memory* @routine_movl__eax__0x62dafc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412889)
  store %struct.Memory* %call_412889, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4128a6	 RIP: 412890	 Bytes: 5
  %loadMem_412890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412890 = call %struct.Memory* @routine_jmpq_.L_4128a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412890, i64 22, i64 5)
  store %struct.Memory* %call_412890, %struct.Memory** %MEMORY

  br label %block_.L_4128a6

  ; Code: .L_412895:	 RIP: 412895	 Bytes: 0
block_.L_412895:

  ; Code: movl 0x62dafc, %eax	 RIP: 412895	 Bytes: 7
  %loadMem_412895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412895 = call %struct.Memory* @routine_movl_0x62dafc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412895)
  store %struct.Memory* %call_412895, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 41289c	 Bytes: 3
  %loadMem_41289c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41289c = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41289c)
  store %struct.Memory* %call_41289c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62dafc	 RIP: 41289f	 Bytes: 7
  %loadMem_41289f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41289f = call %struct.Memory* @routine_movl__eax__0x62dafc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41289f)
  store %struct.Memory* %call_41289f, %struct.Memory** %MEMORY

  ; Code: .L_4128a6:	 RIP: 4128a6	 Bytes: 0
  br label %block_.L_4128a6
block_.L_4128a6:

  ; Code: cmpl $0x0, -0x6040(%rbp)	 RIP: 4128a6	 Bytes: 7
  %loadMem_4128a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128a6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6040__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128a6)
  store %struct.Memory* %call_4128a6, %struct.Memory** %MEMORY

  ; Code: je .L_4128c5	 RIP: 4128ad	 Bytes: 6
  %loadMem_4128ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128ad = call %struct.Memory* @routine_je_.L_4128c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128ad, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_4128ad, %struct.Memory** %MEMORY

  %loadBr_4128ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4128ad = icmp eq i8 %loadBr_4128ad, 1
  br i1 %cmpBr_4128ad, label %block_.L_4128c5, label %block_4128b3

block_4128b3:
  ; Code: movl -0x6040(%rbp), %eax	 RIP: 4128b3	 Bytes: 6
  %loadMem_4128b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128b3 = call %struct.Memory* @routine_movl_MINUS0x6040__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128b3)
  store %struct.Memory* %call_4128b3, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62db00	 RIP: 4128b9	 Bytes: 7
  %loadMem_4128b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128b9 = call %struct.Memory* @routine_movl__eax__0x62db00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128b9)
  store %struct.Memory* %call_4128b9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4128d6	 RIP: 4128c0	 Bytes: 5
  %loadMem_4128c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128c0 = call %struct.Memory* @routine_jmpq_.L_4128d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128c0, i64 22, i64 5)
  store %struct.Memory* %call_4128c0, %struct.Memory** %MEMORY

  br label %block_.L_4128d6

  ; Code: .L_4128c5:	 RIP: 4128c5	 Bytes: 0
block_.L_4128c5:

  ; Code: movl 0x62db00, %eax	 RIP: 4128c5	 Bytes: 7
  %loadMem_4128c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128c5 = call %struct.Memory* @routine_movl_0x62db00___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128c5)
  store %struct.Memory* %call_4128c5, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 4128cc	 Bytes: 3
  %loadMem_4128cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128cc = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128cc)
  store %struct.Memory* %call_4128cc, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62db00	 RIP: 4128cf	 Bytes: 7
  %loadMem_4128cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128cf = call %struct.Memory* @routine_movl__eax__0x62db00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128cf)
  store %struct.Memory* %call_4128cf, %struct.Memory** %MEMORY

  ; Code: .L_4128d6:	 RIP: 4128d6	 Bytes: 0
  br label %block_.L_4128d6
block_.L_4128d6:

  ; Code: cmpl $0x0, -0x6034(%rbp)	 RIP: 4128d6	 Bytes: 7
  %loadMem_4128d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128d6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x6034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128d6)
  store %struct.Memory* %call_4128d6, %struct.Memory** %MEMORY

  ; Code: je .L_4128f5	 RIP: 4128dd	 Bytes: 6
  %loadMem_4128dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128dd = call %struct.Memory* @routine_je_.L_4128f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128dd, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_4128dd, %struct.Memory** %MEMORY

  %loadBr_4128dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4128dd = icmp eq i8 %loadBr_4128dd, 1
  br i1 %cmpBr_4128dd, label %block_.L_4128f5, label %block_4128e3

block_4128e3:
  ; Code: movl -0x6034(%rbp), %eax	 RIP: 4128e3	 Bytes: 6
  %loadMem_4128e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128e3 = call %struct.Memory* @routine_movl_MINUS0x6034__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128e3)
  store %struct.Memory* %call_4128e3, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62daf4	 RIP: 4128e9	 Bytes: 7
  %loadMem_4128e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128e9 = call %struct.Memory* @routine_movl__eax__0x62daf4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128e9)
  store %struct.Memory* %call_4128e9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412906	 RIP: 4128f0	 Bytes: 5
  %loadMem_4128f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128f0 = call %struct.Memory* @routine_jmpq_.L_412906(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128f0, i64 22, i64 5)
  store %struct.Memory* %call_4128f0, %struct.Memory** %MEMORY

  br label %block_.L_412906

  ; Code: .L_4128f5:	 RIP: 4128f5	 Bytes: 0
block_.L_4128f5:

  ; Code: movl 0x62daf4, %eax	 RIP: 4128f5	 Bytes: 7
  %loadMem_4128f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128f5 = call %struct.Memory* @routine_movl_0x62daf4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128f5)
  store %struct.Memory* %call_4128f5, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 4128fc	 Bytes: 3
  %loadMem_4128fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128fc = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128fc)
  store %struct.Memory* %call_4128fc, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62daf4	 RIP: 4128ff	 Bytes: 7
  %loadMem_4128ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128ff = call %struct.Memory* @routine_movl__eax__0x62daf4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128ff)
  store %struct.Memory* %call_4128ff, %struct.Memory** %MEMORY

  ; Code: .L_412906:	 RIP: 412906	 Bytes: 0
  br label %block_.L_412906
block_.L_412906:

  ; Code: addq $0x6090, %rsp	 RIP: 412906	 Bytes: 7
  %loadMem_412906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412906 = call %struct.Memory* @routine_addq__0x6090___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412906)
  store %struct.Memory* %call_412906, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 41290d	 Bytes: 1
  %loadMem_41290d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41290d = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41290d)
  store %struct.Memory* %call_41290d, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 41290e	 Bytes: 1
  %loadMem_41290e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41290e = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41290e)
  store %struct.Memory* %call_41290e, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_41290e
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

define %struct.Memory* @routine_subq__0x6090___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 24720)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x602c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24620
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x6030__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24624
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x6034__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24628
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x6038__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24632
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x603c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x6040__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24640
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x6044__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24644
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x6048__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24648
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x604c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24652
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x6050__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24656
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x6054__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24660
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_je_.L_411942(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__0x62daf0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62daf0_type* @G_0x62daf0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x62daf4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62daf4_type* @G_0x62daf4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x62daf8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62daf8_type* @G_0x62daf8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x62dafc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62dafc_type* @G_0x62dafc to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x62db00(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62db00_type* @G_0x62db00 to i64), i64 0)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_412906(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.in_check(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 2)
  ret %struct.Memory* %11
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x85f170___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x85f170_type* @G__0x85f170 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x6024__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24612
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64), i64 0)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setne__dil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %DIL)
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

define %struct.Memory* @routine_xorb__0xff___dil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i8, i8* %DIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %DIL, i64 %11, i64 255)
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

define %struct.Memory* @routine_andb__0x1___dil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i8, i8* %DIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %DIL, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 255
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl__dil___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %DIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__eax___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
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

define %struct.Memory* @routine_shlq__0x6___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 6)
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

define %struct.Memory* @routine_addq__r8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %6 = load i8, i8* %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = load i64, i64* %2, align 8
  %9 = select i1 %7, i64 %3, i64 %8
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmovnel__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq__ecx___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0____rsi__r8_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
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

define %struct.Memory* @routine_jne_.L_411b96(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 1)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_setne__dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %DL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_xorb__0xff___dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %11, i64 255)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_andb__0x1___dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movzbl__dl___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RSI = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %DL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_callq_.DropaddHolding(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.gen(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x85f150___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x85f150_type* @G_0x85f150 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x6014__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24596
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x6020__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24608
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__al___cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x6020__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 24608
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

define %struct.Memory* @routine_cmpl_MINUS0x6014__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 24596
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl__MINUS0x6055__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24661
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_jge_.L_411a1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x6030__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24624
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sete__al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %AL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__al__MINUS0x6055__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24661
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_MINUS0x6055__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24661
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = and i64 %3, %2
  %6 = trunc i64 %5 to i8
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %5 to i32
  %9 = and i32 %8, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9) #22
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %6, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %6, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_testb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i8, i8* %AL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 2
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_411a2e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_411b66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24608
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.make(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x6024__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24612
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.check_legal(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_411b40(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3__MINUS0x6030__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24624
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24592
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x6028__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24616
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x6018__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24600
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x601c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24604
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl_MINUS0x601c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 24604
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x6018__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 24600
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movb__cl__MINUS0x6056__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24662
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_411ac5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_setne__al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %AL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__al__MINUS0x6056__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24662
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x6056__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24662
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_411ad8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_411b3b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24604
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl_MINUS0x6028__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_je_.L_411b15(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_callq_.unmake(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x601c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24604
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_411a99(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_411b40(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movl__eax__MINUS0x6020__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24608
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4119ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_callq_.DropremoveHolding(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq__0x85f170___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x85f170_type* @G__0x85f170 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movzbl__sil___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDI = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %SIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__edi___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addq__r8___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cmpl__0x0____rdx__r8_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_411ddf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










































define %struct.Memory* @routine_movb__cl__MINUS0x6057__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24663
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_411c64(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x6034__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24628
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movb__al__MINUS0x6057__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24663
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x6057__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24663
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_411c77(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_411daf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_je_.L_411d89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3__MINUS0x6034__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24628
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}
























define %struct.Memory* @routine_movb__cl__MINUS0x6058__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24664
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_411d0e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movb__al__MINUS0x6058__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24664
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x6058__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24664
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_411d21(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_411d84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_je_.L_411d5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_411ce2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_411d89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jmpq_.L_411c38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_movl__0xc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 12)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xb___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 11)
  ret %struct.Memory* %11
}




























define %struct.Memory* @routine_jne_.L_412028(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










































define %struct.Memory* @routine_movb__cl__MINUS0x6059__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24665
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_411ead(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x6038__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24632
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movb__al__MINUS0x6059__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24665
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x6059__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24665
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_411ec0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_411ff8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_je_.L_411fd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3__MINUS0x6038__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24632
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}
























define %struct.Memory* @routine_movb__cl__MINUS0x605a__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24666
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_411f57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movb__al__MINUS0x605a__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24666
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x605a__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24666
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_411f6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_411fcd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_je_.L_411fa7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_411f2b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_411fd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jmpq_.L_411e81(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_movl__0x8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x7___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 7)
  ret %struct.Memory* %11
}




























define %struct.Memory* @routine_jne_.L_412271(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










































define %struct.Memory* @routine_movb__cl__MINUS0x605b__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24667
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_4120f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x603c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movb__al__MINUS0x605b__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24667
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x605b__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24667
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_412109(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_412241(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_je_.L_41221b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3__MINUS0x603c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}
























define %struct.Memory* @routine_movb__cl__MINUS0x605c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24668
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_4121a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movb__al__MINUS0x605c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24668
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x605c__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24668
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_4121b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_412216(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_je_.L_4121f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_412174(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41221b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jmpq_.L_4120ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_movl__0xa___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 10)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x9___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 9)
  ret %struct.Memory* %11
}




























define %struct.Memory* @routine_jne_.L_4124ba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










































define %struct.Memory* @routine_movb__cl__MINUS0x605d__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24669
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_41233f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x6040__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24640
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movb__al__MINUS0x605d__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24669
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x605d__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24669
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_412352(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41248a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_je_.L_412464(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3__MINUS0x6040__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24640
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}
























define %struct.Memory* @routine_movb__cl__MINUS0x605e__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24670
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_4123e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movb__al__MINUS0x605e__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24670
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x605e__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24670
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_4123fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41245f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_je_.L_412439(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_4123bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_412464(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jmpq_.L_412313(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_movl_MINUS0x6030__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 24624
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_0x62daf0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x62daf0_type* @G_0x62daf0 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_41252f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x6030__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24624
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4124e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x6044__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24644
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_41252a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_412525(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x62daf0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62daf0_type* @G_0x62daf0 to i64), i64 0)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_movq__0x428cdb___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428cdb_type* @G__0x428cdb to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_callq_.printf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x602c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24620
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x6064__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24676
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_41252f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x6034__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 24628
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_0x62daf4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x62daf4_type* @G_0x62daf4 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4125a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x6034__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24628
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41255e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x6048__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24648
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_41259f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_41259a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x62daf4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62daf4_type* @G_0x62daf4 to i64), i64 0)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_movq__0x428d04___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428d04_type* @G__0x428d04 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x6068__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24680
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_4125a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x6038__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 24632
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_0x62daf8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x62daf8_type* @G_0x62daf8 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_412619(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x6038__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24632
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4125d3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x604c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24652
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_412614(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_41260f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x62daf8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62daf8_type* @G_0x62daf8 to i64), i64 0)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_movq__0x428d2d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428d2d_type* @G__0x428d2d to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x606c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24684
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_412619(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x603c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 24636
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_0x62dafc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x62dafc_type* @G_0x62dafc to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_41268e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x603c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_412648(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x6050__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24656
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_412689(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_412684(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x62dafc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62dafc_type* @G_0x62dafc to i64), i64 0)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_movq__0x428d56___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428d56_type* @G__0x428d56 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x6070__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24688
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_41268e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x6040__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 24640
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_0x62db00___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x62db00_type* @G_0x62db00 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_412703(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x6040__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24640
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4126bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x6054__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24660
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4126fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_4126f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x62db00(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62db00_type* @G_0x62db00 to i64), i64 0)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_movq__0x428d7f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428d7f_type* @G__0x428d7f to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x6074__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24692
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_412703(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x6044__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24644
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_412727(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428da8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428da8_type* @G__0x428da8 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x6078__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24696
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x6048__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24648
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_41274b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428dbc___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428dbc_type* @G__0x428dbc to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x607c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24700
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x604c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24652
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_41276f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428dd0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428dd0_type* @G__0x428dd0 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x6080__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24704
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x6050__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24656
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_412793(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428de4___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428de4_type* @G__0x428de4 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x6084__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24708
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x6054__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24660
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4127b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428df8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428df8_type* @G__0x428df8 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x6088__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24712
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__0x86bd74(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd74_type* @G_0x86bd74 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_412816(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x602c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24620
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x428e0c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428e0c_type* @G__0x428e0c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x0__0x86bd74(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd74_type* @G_0x86bd74 to i64), i64 0)
  ret %struct.Memory* %8
}






define %struct.Memory* @routine_movq__0x428e1d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428e1d_type* @G__0x428e1d to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x608c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24716
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__0x0__0x886a60(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886a60_type* @G_0x886a60 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__eax__MINUS0x6090__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24720
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_je_.L_412835(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__0x62daf0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62daf0_type* @G_0x62daf0 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_412846(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x62daf0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62daf0_type* @G_0x62daf0 to i64))
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_je_.L_412865(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__0x62daf8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62daf8_type* @G_0x62daf8 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_412876(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x62daf8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62daf8_type* @G_0x62daf8 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_je_.L_412895(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__0x62dafc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62dafc_type* @G_0x62dafc to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4128a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x62dafc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62dafc_type* @G_0x62dafc to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_je_.L_4128c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__0x62db00(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62db00_type* @G_0x62db00 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4128d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x62db00___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62db00_type* @G_0x62db00 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_je_.L_4128f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__0x62daf4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62daf4_type* @G_0x62daf4 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x62daf4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62daf4_type* @G_0x62daf4 to i64))
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

define %struct.Memory* @routine_addq__0x6090___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 24720)
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

