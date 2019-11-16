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

declare %struct.Memory* @sub_407e30.gen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4098e0.in_check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40b730.make(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_406680.check_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40c7a0.unmake(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x85f150_type = type <{ [4 x i8] }>
@G_0x85f150= global %G_0x85f150_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x428998_type = type <{ [8 x i8] }>
@G__0x428998= global %G__0x428998_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4294e6_type = type <{ [8 x i8] }>
@G__0x4294e6= global %G__0x4294e6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429ae5_type = type <{ [8 x i8] }>
@G__0x429ae5= global %G__0x429ae5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429ae8_type = type <{ [8 x i8] }>
@G__0x429ae8= global %G__0x429ae8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429aed_type = type <{ [8 x i8] }>
@G__0x429aed= global %G__0x429aed_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429af0_type = type <{ [8 x i8] }>
@G__0x429af0= global %G__0x429af0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429af8_type = type <{ [8 x i8] }>
@G__0x429af8= global %G__0x429af8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429afa_type = type <{ [8 x i8] }>
@G__0x429afa= global %G__0x429afa_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429afe_type = type <{ [8 x i8] }>
@G__0x429afe= global %G__0x429afe_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429b00_type = type <{ [8 x i8] }>
@G__0x429b00= global %G__0x429b00_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429b07_type = type <{ [8 x i8] }>
@G__0x429b07= global %G__0x429b07_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429b10_type = type <{ [8 x i8] }>
@G__0x429b10= global %G__0x429b10_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429b12_type = type <{ [8 x i8] }>
@G__0x429b12= global %G__0x429b12_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429b1a_type = type <{ [8 x i8] }>
@G__0x429b1a= global %G__0x429b1a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429b24_type = type <{ [4 x i8] }>
@G__0x429b24= global %G__0x429b24_type <{ [4 x i8] c"\00\00\00\00" }>


define %struct.Memory* @comp_to_san(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .comp_to_san:	 RIP: 421970	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 421970	 Bytes: 1
  %loadMem_421970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421970 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421970)
  store %struct.Memory* %call_421970, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 421971	 Bytes: 3
  %loadMem_421971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421971 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421971)
  store %struct.Memory* %call_421971, %struct.Memory** %MEMORY

  ; Code: subq $0x6090, %rsp	 RIP: 421974	 Bytes: 7
  %loadMem_421974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421974 = call %struct.Memory* @routine_subq__0x6090___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421974)
  store %struct.Memory* %call_421974, %struct.Memory** %MEMORY

  ; Code: leaq 0x10(%rbp), %rax	 RIP: 42197b	 Bytes: 4
  %loadMem_42197b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42197b = call %struct.Memory* @routine_leaq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42197b)
  store %struct.Memory* %call_42197b, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 42197f	 Bytes: 4
  %loadMem_42197f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42197f = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42197f)
  store %struct.Memory* %call_42197f, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rdi	 RIP: 421983	 Bytes: 3
  %loadMem_421983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421983 = call %struct.Memory* @routine_movslq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421983)
  store %struct.Memory* %call_421983, %struct.Memory** %MEMORY

  ; Code: movl 0x425890(,%rdi,4), %ecx	 RIP: 421986	 Bytes: 7
  %loadMem_421986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421986 = call %struct.Memory* @routine_movl_0x425890___rdi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421986)
  store %struct.Memory* %call_421986, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x6028(%rbp)	 RIP: 42198d	 Bytes: 6
  %loadMem_42198d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42198d = call %struct.Memory* @routine_movl__ecx__MINUS0x6028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42198d)
  store %struct.Memory* %call_42198d, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rdi	 RIP: 421993	 Bytes: 4
  %loadMem_421993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421993 = call %struct.Memory* @routine_movslq_0x4__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421993)
  store %struct.Memory* %call_421993, %struct.Memory** %MEMORY

  ; Code: movl 0x425890(,%rdi,4), %ecx	 RIP: 421997	 Bytes: 7
  %loadMem_421997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421997 = call %struct.Memory* @routine_movl_0x425890___rdi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421997)
  store %struct.Memory* %call_421997, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x602c(%rbp)	 RIP: 42199e	 Bytes: 6
  %loadMem_42199e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42199e = call %struct.Memory* @routine_movl__ecx__MINUS0x602c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42199e)
  store %struct.Memory* %call_42199e, %struct.Memory** %MEMORY

  ; Code: movl $0x61, -0x6030(%rbp)	 RIP: 4219a4	 Bytes: 10
  %loadMem_4219a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219a4 = call %struct.Memory* @routine_movl__0x61__MINUS0x6030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219a4)
  store %struct.Memory* %call_4219a4, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rdi	 RIP: 4219ae	 Bytes: 3
  %loadMem_4219ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219ae = call %struct.Memory* @routine_movslq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219ae)
  store %struct.Memory* %call_4219ae, %struct.Memory** %MEMORY

  ; Code: movl 0x425650(,%rdi,4), %ecx	 RIP: 4219b1	 Bytes: 7
  %loadMem_4219b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219b1 = call %struct.Memory* @routine_movl_0x425650___rdi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219b1)
  store %struct.Memory* %call_4219b1, %struct.Memory** %MEMORY

  ; Code: addl -0x6030(%rbp), %ecx	 RIP: 4219b8	 Bytes: 6
  %loadMem_4219b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219b8 = call %struct.Memory* @routine_addl_MINUS0x6030__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219b8)
  store %struct.Memory* %call_4219b8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4219be	 Bytes: 3
  %loadMem_4219be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219be = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219be)
  store %struct.Memory* %call_4219be, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 4219c1	 Bytes: 2
  %loadMem_4219c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219c1 = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219c1)
  store %struct.Memory* %call_4219c1, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x6031(%rbp)	 RIP: 4219c3	 Bytes: 6
  %loadMem_4219c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219c3 = call %struct.Memory* @routine_movb__dl__MINUS0x6031__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219c3)
  store %struct.Memory* %call_4219c3, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rdi	 RIP: 4219c9	 Bytes: 4
  %loadMem_4219c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219c9 = call %struct.Memory* @routine_movslq_0x4__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219c9)
  store %struct.Memory* %call_4219c9, %struct.Memory** %MEMORY

  ; Code: movl 0x425650(,%rdi,4), %ecx	 RIP: 4219cd	 Bytes: 7
  %loadMem_4219cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219cd = call %struct.Memory* @routine_movl_0x425650___rdi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219cd)
  store %struct.Memory* %call_4219cd, %struct.Memory** %MEMORY

  ; Code: addl -0x6030(%rbp), %ecx	 RIP: 4219d4	 Bytes: 6
  %loadMem_4219d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219d4 = call %struct.Memory* @routine_addl_MINUS0x6030__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219d4)
  store %struct.Memory* %call_4219d4, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4219da	 Bytes: 3
  %loadMem_4219da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219da = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219da)
  store %struct.Memory* %call_4219da, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 4219dd	 Bytes: 2
  %loadMem_4219dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219dd = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219dd)
  store %struct.Memory* %call_4219dd, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x6032(%rbp)	 RIP: 4219df	 Bytes: 6
  %loadMem_4219df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219df = call %struct.Memory* @routine_movb__dl__MINUS0x6032__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219df)
  store %struct.Memory* %call_4219df, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax)	 RIP: 4219e5	 Bytes: 3
  %loadMem_4219e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219e5 = call %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219e5)
  store %struct.Memory* %call_4219e5, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x6040(%rbp)	 RIP: 4219e8	 Bytes: 7
  %loadMem_4219e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219e8 = call %struct.Memory* @routine_movq__rax__MINUS0x6040__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219e8)
  store %struct.Memory* %call_4219e8, %struct.Memory** %MEMORY

  ; Code: jne .L_421a35	 RIP: 4219ef	 Bytes: 6
  %loadMem_4219ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219ef = call %struct.Memory* @routine_jne_.L_421a35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219ef, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_4219ef, %struct.Memory** %MEMORY

  %loadBr_4219ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4219ef = icmp eq i8 %loadBr_4219ef, 1
  br i1 %cmpBr_4219ef, label %block_.L_421a35, label %block_4219f5

block_4219f5:
  ; Code: movq $0x429ae5, %rsi	 RIP: 4219f5	 Bytes: 10
  %loadMem_4219f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219f5 = call %struct.Memory* @routine_movq__0x429ae5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219f5)
  store %struct.Memory* %call_4219f5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4219ff	 Bytes: 4
  %loadMem_4219ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219ff = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219ff)
  store %struct.Memory* %call_4219ff, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421a03	 Bytes: 7
  %loadMem_421a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a03 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a03)
  store %struct.Memory* %call_421a03, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rcx	 RIP: 421a0a	 Bytes: 4
  %loadMem_421a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a0a = call %struct.Memory* @routine_movslq_0xc__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a0a)
  store %struct.Memory* %call_421a0a, %struct.Memory** %MEMORY

  ; Code: movl 0x427e20(,%rcx,4), %edx	 RIP: 421a0e	 Bytes: 7
  %loadMem_421a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a0e = call %struct.Memory* @routine_movl_0x427e20___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a0e)
  store %struct.Memory* %call_421a0e, %struct.Memory** %MEMORY

  ; Code: movsbl -0x6032(%rbp), %ecx	 RIP: 421a15	 Bytes: 7
  %loadMem_421a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a15 = call %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a15)
  store %struct.Memory* %call_421a15, %struct.Memory** %MEMORY

  ; Code: movl -0x602c(%rbp), %r8d	 RIP: 421a1c	 Bytes: 7
  %loadMem_421a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a1c = call %struct.Memory* @routine_movl_MINUS0x602c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a1c)
  store %struct.Memory* %call_421a1c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 421a23	 Bytes: 2
  %loadMem_421a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a23 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a23)
  store %struct.Memory* %call_421a23, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 421a25	 Bytes: 5
  %loadMem1_421a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421a25 = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421a25, i64 -134229, i64 5, i64 5)
  store %struct.Memory* %call1_421a25, %struct.Memory** %MEMORY

  %loadMem2_421a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421a25 = load i64, i64* %3
  %call2_421a25 = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_421a25, %struct.Memory* %loadMem2_421a25)
  store %struct.Memory* %call2_421a25, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6044(%rbp)	 RIP: 421a2a	 Bytes: 6
  %loadMem_421a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a2a = call %struct.Memory* @routine_movl__eax__MINUS0x6044__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a2a)
  store %struct.Memory* %call_421a2a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421ff3	 RIP: 421a30	 Bytes: 5
  %loadMem_421a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a30 = call %struct.Memory* @routine_jmpq_.L_421ff3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a30, i64 1475, i64 5)
  store %struct.Memory* %call_421a30, %struct.Memory** %MEMORY

  br label %block_.L_421ff3

  ; Code: .L_421a35:	 RIP: 421a35	 Bytes: 0
block_.L_421a35:

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421a35	 Bytes: 7
  %loadMem_421a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a35 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a35)
  store %struct.Memory* %call_421a35, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rcx	 RIP: 421a3c	 Bytes: 3
  %loadMem_421a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a3c = call %struct.Memory* @routine_movslq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a3c)
  store %struct.Memory* %call_421a3c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x866540(,%rcx,4)	 RIP: 421a3f	 Bytes: 8
  %loadMem_421a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a3f = call %struct.Memory* @routine_cmpl__0x1__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a3f)
  store %struct.Memory* %call_421a3f, %struct.Memory** %MEMORY

  ; Code: je .L_421a65	 RIP: 421a47	 Bytes: 6
  %loadMem_421a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a47 = call %struct.Memory* @routine_je_.L_421a65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a47, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_421a47, %struct.Memory** %MEMORY

  %loadBr_421a47 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a47 = icmp eq i8 %loadBr_421a47, 1
  br i1 %cmpBr_421a47, label %block_.L_421a65, label %block_421a4d

block_421a4d:
  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421a4d	 Bytes: 7
  %loadMem_421a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a4d = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a4d)
  store %struct.Memory* %call_421a4d, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rcx	 RIP: 421a54	 Bytes: 3
  %loadMem_421a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a54 = call %struct.Memory* @routine_movslq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a54)
  store %struct.Memory* %call_421a54, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x866540(,%rcx,4)	 RIP: 421a57	 Bytes: 8
  %loadMem_421a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a57 = call %struct.Memory* @routine_cmpl__0x2__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a57)
  store %struct.Memory* %call_421a57, %struct.Memory** %MEMORY

  ; Code: jne .L_421ba0	 RIP: 421a5f	 Bytes: 6
  %loadMem_421a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a5f = call %struct.Memory* @routine_jne_.L_421ba0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a5f, i8* %BRANCH_TAKEN, i64 321, i64 6, i64 6)
  store %struct.Memory* %call_421a5f, %struct.Memory** %MEMORY

  %loadBr_421a5f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a5f = icmp eq i8 %loadBr_421a5f, 1
  br i1 %cmpBr_421a5f, label %block_.L_421ba0, label %block_.L_421a65

  ; Code: .L_421a65:	 RIP: 421a65	 Bytes: 0
block_.L_421a65:

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421a65	 Bytes: 7
  %loadMem_421a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a65 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a65)
  store %struct.Memory* %call_421a65, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rcx	 RIP: 421a6c	 Bytes: 4
  %loadMem_421a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a6c = call %struct.Memory* @routine_movslq_0x4__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a6c)
  store %struct.Memory* %call_421a6c, %struct.Memory** %MEMORY

  ; Code: cmpl $0xd, 0x866540(,%rcx,4)	 RIP: 421a70	 Bytes: 8
  %loadMem_421a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a70 = call %struct.Memory* @routine_cmpl__0xd__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a70)
  store %struct.Memory* %call_421a70, %struct.Memory** %MEMORY

  ; Code: jne .L_421b0d	 RIP: 421a78	 Bytes: 6
  %loadMem_421a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a78 = call %struct.Memory* @routine_jne_.L_421b0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a78, i8* %BRANCH_TAKEN, i64 149, i64 6, i64 6)
  store %struct.Memory* %call_421a78, %struct.Memory** %MEMORY

  %loadBr_421a78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a78 = icmp eq i8 %loadBr_421a78, 1
  br i1 %cmpBr_421a78, label %block_.L_421b0d, label %block_421a7e

block_421a7e:
  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421a7e	 Bytes: 7
  %loadMem_421a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a7e = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a7e)
  store %struct.Memory* %call_421a7e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x14(%rax)	 RIP: 421a85	 Bytes: 4
  %loadMem_421a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a85 = call %struct.Memory* @routine_cmpl__0x0__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a85)
  store %struct.Memory* %call_421a85, %struct.Memory** %MEMORY

  ; Code: jne .L_421b0d	 RIP: 421a89	 Bytes: 6
  %loadMem_421a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a89 = call %struct.Memory* @routine_jne_.L_421b0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a89, i8* %BRANCH_TAKEN, i64 132, i64 6, i64 6)
  store %struct.Memory* %call_421a89, %struct.Memory** %MEMORY

  %loadBr_421a89 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a89 = icmp eq i8 %loadBr_421a89, 1
  br i1 %cmpBr_421a89, label %block_.L_421b0d, label %block_421a8f

block_421a8f:
  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421a8f	 Bytes: 7
  %loadMem_421a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a8f = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a8f)
  store %struct.Memory* %call_421a8f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc(%rax)	 RIP: 421a96	 Bytes: 4
  %loadMem_421a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a96 = call %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a96)
  store %struct.Memory* %call_421a96, %struct.Memory** %MEMORY

  ; Code: jne .L_421acd	 RIP: 421a9a	 Bytes: 6
  %loadMem_421a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a9a = call %struct.Memory* @routine_jne_.L_421acd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a9a, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_421a9a, %struct.Memory** %MEMORY

  %loadBr_421a9a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a9a = icmp eq i8 %loadBr_421a9a, 1
  br i1 %cmpBr_421a9a, label %block_.L_421acd, label %block_421aa0

block_421aa0:
  ; Code: movq $0x429ae8, %rsi	 RIP: 421aa0	 Bytes: 10
  %loadMem_421aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aa0 = call %struct.Memory* @routine_movq__0x429ae8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aa0)
  store %struct.Memory* %call_421aa0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 421aaa	 Bytes: 4
  %loadMem_421aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aaa = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aaa)
  store %struct.Memory* %call_421aaa, %struct.Memory** %MEMORY

  ; Code: movsbl -0x6032(%rbp), %edx	 RIP: 421aae	 Bytes: 7
  %loadMem_421aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aae = call %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aae)
  store %struct.Memory* %call_421aae, %struct.Memory** %MEMORY

  ; Code: movl -0x602c(%rbp), %ecx	 RIP: 421ab5	 Bytes: 6
  %loadMem_421ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ab5 = call %struct.Memory* @routine_movl_MINUS0x602c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ab5)
  store %struct.Memory* %call_421ab5, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 421abb	 Bytes: 2
  %loadMem_421abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421abb = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421abb)
  store %struct.Memory* %call_421abb, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 421abd	 Bytes: 5
  %loadMem1_421abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421abd = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421abd, i64 -134381, i64 5, i64 5)
  store %struct.Memory* %call1_421abd, %struct.Memory** %MEMORY

  %loadMem2_421abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421abd = load i64, i64* %3
  %call2_421abd = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_421abd, %struct.Memory* %loadMem2_421abd)
  store %struct.Memory* %call2_421abd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6048(%rbp)	 RIP: 421ac2	 Bytes: 6
  %loadMem_421ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ac2 = call %struct.Memory* @routine_movl__eax__MINUS0x6048__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ac2)
  store %struct.Memory* %call_421ac2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421b08	 RIP: 421ac8	 Bytes: 5
  %loadMem_421ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ac8 = call %struct.Memory* @routine_jmpq_.L_421b08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ac8, i64 64, i64 5)
  store %struct.Memory* %call_421ac8, %struct.Memory** %MEMORY

  br label %block_.L_421b08

  ; Code: .L_421acd:	 RIP: 421acd	 Bytes: 0
block_.L_421acd:

  ; Code: movq $0x429af0, %rsi	 RIP: 421acd	 Bytes: 10
  %loadMem_421acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421acd = call %struct.Memory* @routine_movq__0x429af0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421acd)
  store %struct.Memory* %call_421acd, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 421ad7	 Bytes: 4
  %loadMem_421ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ad7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ad7)
  store %struct.Memory* %call_421ad7, %struct.Memory** %MEMORY

  ; Code: movsbl -0x6032(%rbp), %edx	 RIP: 421adb	 Bytes: 7
  %loadMem_421adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421adb = call %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421adb)
  store %struct.Memory* %call_421adb, %struct.Memory** %MEMORY

  ; Code: movl -0x602c(%rbp), %ecx	 RIP: 421ae2	 Bytes: 6
  %loadMem_421ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ae2 = call %struct.Memory* @routine_movl_MINUS0x602c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ae2)
  store %struct.Memory* %call_421ae2, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421ae8	 Bytes: 7
  %loadMem_421ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ae8 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ae8)
  store %struct.Memory* %call_421ae8, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %r8	 RIP: 421aef	 Bytes: 4
  %loadMem_421aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aef = call %struct.Memory* @routine_movslq_0xc__rax____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aef)
  store %struct.Memory* %call_421aef, %struct.Memory** %MEMORY

  ; Code: movl 0x427e20(,%r8,4), %r8d	 RIP: 421af3	 Bytes: 8
  %loadMem_421af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421af3 = call %struct.Memory* @routine_movl_0x427e20___r8_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421af3)
  store %struct.Memory* %call_421af3, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 421afb	 Bytes: 2
  %loadMem_421afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421afb = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421afb)
  store %struct.Memory* %call_421afb, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 421afd	 Bytes: 5
  %loadMem1_421afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421afd = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421afd, i64 -134445, i64 5, i64 5)
  store %struct.Memory* %call1_421afd, %struct.Memory** %MEMORY

  %loadMem2_421afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421afd = load i64, i64* %3
  %call2_421afd = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_421afd, %struct.Memory* %loadMem2_421afd)
  store %struct.Memory* %call2_421afd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x604c(%rbp)	 RIP: 421b02	 Bytes: 6
  %loadMem_421b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b02 = call %struct.Memory* @routine_movl__eax__MINUS0x604c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b02)
  store %struct.Memory* %call_421b02, %struct.Memory** %MEMORY

  ; Code: .L_421b08:	 RIP: 421b08	 Bytes: 0
  br label %block_.L_421b08
block_.L_421b08:

  ; Code: jmpq .L_421b9b	 RIP: 421b08	 Bytes: 5
  %loadMem_421b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b08 = call %struct.Memory* @routine_jmpq_.L_421b9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b08, i64 147, i64 5)
  store %struct.Memory* %call_421b08, %struct.Memory** %MEMORY

  br label %block_.L_421b9b

  ; Code: .L_421b0d:	 RIP: 421b0d	 Bytes: 0
block_.L_421b0d:

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421b0d	 Bytes: 7
  %loadMem_421b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b0d = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b0d)
  store %struct.Memory* %call_421b0d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc(%rax)	 RIP: 421b14	 Bytes: 4
  %loadMem_421b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b14 = call %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b14)
  store %struct.Memory* %call_421b14, %struct.Memory** %MEMORY

  ; Code: jne .L_421b53	 RIP: 421b18	 Bytes: 6
  %loadMem_421b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b18 = call %struct.Memory* @routine_jne_.L_421b53(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b18, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_421b18, %struct.Memory** %MEMORY

  %loadBr_421b18 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421b18 = icmp eq i8 %loadBr_421b18, 1
  br i1 %cmpBr_421b18, label %block_.L_421b53, label %block_421b1e

block_421b1e:
  ; Code: movq $0x429b12, %rsi	 RIP: 421b1e	 Bytes: 10
  %loadMem_421b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b1e = call %struct.Memory* @routine_movq__0x429b12___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b1e)
  store %struct.Memory* %call_421b1e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 421b28	 Bytes: 4
  %loadMem_421b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b28 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b28)
  store %struct.Memory* %call_421b28, %struct.Memory** %MEMORY

  ; Code: movsbl -0x6031(%rbp), %edx	 RIP: 421b2c	 Bytes: 7
  %loadMem_421b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b2c = call %struct.Memory* @routine_movsbl_MINUS0x6031__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b2c)
  store %struct.Memory* %call_421b2c, %struct.Memory** %MEMORY

  ; Code: movsbl -0x6032(%rbp), %ecx	 RIP: 421b33	 Bytes: 7
  %loadMem_421b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b33 = call %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b33)
  store %struct.Memory* %call_421b33, %struct.Memory** %MEMORY

  ; Code: movl -0x602c(%rbp), %r8d	 RIP: 421b3a	 Bytes: 7
  %loadMem_421b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b3a = call %struct.Memory* @routine_movl_MINUS0x602c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b3a)
  store %struct.Memory* %call_421b3a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 421b41	 Bytes: 2
  %loadMem_421b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b41 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b41)
  store %struct.Memory* %call_421b41, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 421b43	 Bytes: 5
  %loadMem1_421b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421b43 = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421b43, i64 -134515, i64 5, i64 5)
  store %struct.Memory* %call1_421b43, %struct.Memory** %MEMORY

  %loadMem2_421b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421b43 = load i64, i64* %3
  %call2_421b43 = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_421b43, %struct.Memory* %loadMem2_421b43)
  store %struct.Memory* %call2_421b43, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6050(%rbp)	 RIP: 421b48	 Bytes: 6
  %loadMem_421b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b48 = call %struct.Memory* @routine_movl__eax__MINUS0x6050__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b48)
  store %struct.Memory* %call_421b48, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421b96	 RIP: 421b4e	 Bytes: 5
  %loadMem_421b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b4e = call %struct.Memory* @routine_jmpq_.L_421b96(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b4e, i64 72, i64 5)
  store %struct.Memory* %call_421b4e, %struct.Memory** %MEMORY

  br label %block_.L_421b96

  ; Code: .L_421b53:	 RIP: 421b53	 Bytes: 0
block_.L_421b53:

  ; Code: movq $0x429aed, %rsi	 RIP: 421b53	 Bytes: 10
  %loadMem_421b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b53 = call %struct.Memory* @routine_movq__0x429aed___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b53)
  store %struct.Memory* %call_421b53, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 421b5d	 Bytes: 4
  %loadMem_421b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b5d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b5d)
  store %struct.Memory* %call_421b5d, %struct.Memory** %MEMORY

  ; Code: movsbl -0x6031(%rbp), %edx	 RIP: 421b61	 Bytes: 7
  %loadMem_421b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b61 = call %struct.Memory* @routine_movsbl_MINUS0x6031__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b61)
  store %struct.Memory* %call_421b61, %struct.Memory** %MEMORY

  ; Code: movsbl -0x6032(%rbp), %ecx	 RIP: 421b68	 Bytes: 7
  %loadMem_421b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b68 = call %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b68)
  store %struct.Memory* %call_421b68, %struct.Memory** %MEMORY

  ; Code: movl -0x602c(%rbp), %r8d	 RIP: 421b6f	 Bytes: 7
  %loadMem_421b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b6f = call %struct.Memory* @routine_movl_MINUS0x602c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b6f)
  store %struct.Memory* %call_421b6f, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421b76	 Bytes: 7
  %loadMem_421b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b76 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b76)
  store %struct.Memory* %call_421b76, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %r9	 RIP: 421b7d	 Bytes: 4
  %loadMem_421b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b7d = call %struct.Memory* @routine_movslq_0xc__rax____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b7d)
  store %struct.Memory* %call_421b7d, %struct.Memory** %MEMORY

  ; Code: movl 0x427e20(,%r9,4), %r9d	 RIP: 421b81	 Bytes: 8
  %loadMem_421b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b81 = call %struct.Memory* @routine_movl_0x427e20___r9_4____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b81)
  store %struct.Memory* %call_421b81, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 421b89	 Bytes: 2
  %loadMem_421b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b89 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b89)
  store %struct.Memory* %call_421b89, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 421b8b	 Bytes: 5
  %loadMem1_421b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421b8b = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421b8b, i64 -134587, i64 5, i64 5)
  store %struct.Memory* %call1_421b8b, %struct.Memory** %MEMORY

  %loadMem2_421b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421b8b = load i64, i64* %3
  %call2_421b8b = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_421b8b, %struct.Memory* %loadMem2_421b8b)
  store %struct.Memory* %call2_421b8b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6054(%rbp)	 RIP: 421b90	 Bytes: 6
  %loadMem_421b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b90 = call %struct.Memory* @routine_movl__eax__MINUS0x6054__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b90)
  store %struct.Memory* %call_421b90, %struct.Memory** %MEMORY

  ; Code: .L_421b96:	 RIP: 421b96	 Bytes: 0
  br label %block_.L_421b96
block_.L_421b96:

  ; Code: jmpq .L_421b9b	 RIP: 421b96	 Bytes: 5
  %loadMem_421b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b96 = call %struct.Memory* @routine_jmpq_.L_421b9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b96, i64 5, i64 5)
  store %struct.Memory* %call_421b96, %struct.Memory** %MEMORY

  br label %block_.L_421b9b

  ; Code: .L_421b9b:	 RIP: 421b9b	 Bytes: 0
block_.L_421b9b:

  ; Code: jmpq .L_421fee	 RIP: 421b9b	 Bytes: 5
  %loadMem_421b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b9b = call %struct.Memory* @routine_jmpq_.L_421fee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b9b, i64 1107, i64 5)
  store %struct.Memory* %call_421b9b, %struct.Memory** %MEMORY

  br label %block_.L_421fee

  ; Code: .L_421ba0:	 RIP: 421ba0	 Bytes: 0
block_.L_421ba0:

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421ba0	 Bytes: 7
  %loadMem_421ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ba0 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ba0)
  store %struct.Memory* %call_421ba0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x10(%rax)	 RIP: 421ba7	 Bytes: 4
  %loadMem_421ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ba7 = call %struct.Memory* @routine_cmpl__0x0__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ba7)
  store %struct.Memory* %call_421ba7, %struct.Memory** %MEMORY

  ; Code: je .L_421c13	 RIP: 421bab	 Bytes: 6
  %loadMem_421bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bab = call %struct.Memory* @routine_je_.L_421c13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bab, i8* %BRANCH_TAKEN, i64 104, i64 6, i64 6)
  store %struct.Memory* %call_421bab, %struct.Memory** %MEMORY

  %loadBr_421bab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421bab = icmp eq i8 %loadBr_421bab, 1
  br i1 %cmpBr_421bab, label %block_.L_421c13, label %block_421bb1

block_421bb1:
  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421bb1	 Bytes: 7
  %loadMem_421bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bb1 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bb1)
  store %struct.Memory* %call_421bb1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x10(%rax)	 RIP: 421bb8	 Bytes: 4
  %loadMem_421bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bb8 = call %struct.Memory* @routine_cmpl__0x1__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bb8)
  store %struct.Memory* %call_421bb8, %struct.Memory** %MEMORY

  ; Code: je .L_421bd3	 RIP: 421bbc	 Bytes: 6
  %loadMem_421bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bbc = call %struct.Memory* @routine_je_.L_421bd3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bbc, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_421bbc, %struct.Memory** %MEMORY

  %loadBr_421bbc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421bbc = icmp eq i8 %loadBr_421bbc, 1
  br i1 %cmpBr_421bbc, label %block_.L_421bd3, label %block_421bc2

block_421bc2:
  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421bc2	 Bytes: 7
  %loadMem_421bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bc2 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bc2)
  store %struct.Memory* %call_421bc2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x10(%rax)	 RIP: 421bc9	 Bytes: 4
  %loadMem_421bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bc9 = call %struct.Memory* @routine_cmpl__0x3__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bc9)
  store %struct.Memory* %call_421bc9, %struct.Memory** %MEMORY

  ; Code: jne .L_421bf3	 RIP: 421bcd	 Bytes: 6
  %loadMem_421bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bcd = call %struct.Memory* @routine_jne_.L_421bf3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bcd, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_421bcd, %struct.Memory** %MEMORY

  %loadBr_421bcd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421bcd = icmp eq i8 %loadBr_421bcd, 1
  br i1 %cmpBr_421bcd, label %block_.L_421bf3, label %block_.L_421bd3

  ; Code: .L_421bd3:	 RIP: 421bd3	 Bytes: 0
block_.L_421bd3:

  ; Code: movq $0x429afa, %rsi	 RIP: 421bd3	 Bytes: 10
  %loadMem_421bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bd3 = call %struct.Memory* @routine_movq__0x429afa___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bd3)
  store %struct.Memory* %call_421bd3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 421bdd	 Bytes: 4
  %loadMem_421bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bdd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bdd)
  store %struct.Memory* %call_421bdd, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 421be1	 Bytes: 2
  %loadMem_421be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421be1 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421be1)
  store %struct.Memory* %call_421be1, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 421be3	 Bytes: 5
  %loadMem1_421be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421be3 = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421be3, i64 -134675, i64 5, i64 5)
  store %struct.Memory* %call1_421be3, %struct.Memory** %MEMORY

  %loadMem2_421be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421be3 = load i64, i64* %3
  %call2_421be3 = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_421be3, %struct.Memory* %loadMem2_421be3)
  store %struct.Memory* %call2_421be3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6058(%rbp)	 RIP: 421be8	 Bytes: 6
  %loadMem_421be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421be8 = call %struct.Memory* @routine_movl__eax__MINUS0x6058__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421be8)
  store %struct.Memory* %call_421be8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421c0e	 RIP: 421bee	 Bytes: 5
  %loadMem_421bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bee = call %struct.Memory* @routine_jmpq_.L_421c0e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bee, i64 32, i64 5)
  store %struct.Memory* %call_421bee, %struct.Memory** %MEMORY

  br label %block_.L_421c0e

  ; Code: .L_421bf3:	 RIP: 421bf3	 Bytes: 0
block_.L_421bf3:

  ; Code: movq $0x429af8, %rsi	 RIP: 421bf3	 Bytes: 10
  %loadMem_421bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bf3 = call %struct.Memory* @routine_movq__0x429af8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bf3)
  store %struct.Memory* %call_421bf3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 421bfd	 Bytes: 4
  %loadMem_421bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bfd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bfd)
  store %struct.Memory* %call_421bfd, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 421c01	 Bytes: 2
  %loadMem_421c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c01 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c01)
  store %struct.Memory* %call_421c01, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 421c03	 Bytes: 5
  %loadMem1_421c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421c03 = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421c03, i64 -134707, i64 5, i64 5)
  store %struct.Memory* %call1_421c03, %struct.Memory** %MEMORY

  %loadMem2_421c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421c03 = load i64, i64* %3
  %call2_421c03 = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_421c03, %struct.Memory* %loadMem2_421c03)
  store %struct.Memory* %call2_421c03, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x605c(%rbp)	 RIP: 421c08	 Bytes: 6
  %loadMem_421c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c08 = call %struct.Memory* @routine_movl__eax__MINUS0x605c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c08)
  store %struct.Memory* %call_421c08, %struct.Memory** %MEMORY

  ; Code: .L_421c0e:	 RIP: 421c0e	 Bytes: 0
  br label %block_.L_421c0e
block_.L_421c0e:

  ; Code: jmpq .L_421fe9	 RIP: 421c0e	 Bytes: 5
  %loadMem_421c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c0e = call %struct.Memory* @routine_jmpq_.L_421fe9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c0e, i64 987, i64 5)
  store %struct.Memory* %call_421c0e, %struct.Memory** %MEMORY

  br label %block_.L_421fe9

  ; Code: .L_421c13:	 RIP: 421c13	 Bytes: 0
block_.L_421c13:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 421c13	 Bytes: 7
  %loadMem_421c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c13 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c13)
  store %struct.Memory* %call_421c13, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x6020(%rbp)	 RIP: 421c1a	 Bytes: 10
  %loadMem_421c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c1a = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x6020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c1a)
  store %struct.Memory* %call_421c1a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6018(%rbp)	 RIP: 421c24	 Bytes: 10
  %loadMem_421c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c24 = call %struct.Memory* @routine_movl__0x0__MINUS0x6018__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c24)
  store %struct.Memory* %call_421c24, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 421c2e	 Bytes: 5
  %loadMem1_421c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421c2e = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421c2e, i64 -105982, i64 5, i64 5)
  store %struct.Memory* %call1_421c2e, %struct.Memory** %MEMORY

  %loadMem2_421c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421c2e = load i64, i64* %3
  %call2_421c2e = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_421c2e, %struct.Memory* %loadMem2_421c2e)
  store %struct.Memory* %call2_421c2e, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 421c33	 Bytes: 7
  %loadMem_421c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c33 = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c33)
  store %struct.Memory* %call_421c33, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6018(%rbp)	 RIP: 421c3a	 Bytes: 6
  %loadMem_421c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c3a = call %struct.Memory* @routine_movl__eax__MINUS0x6018__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c3a)
  store %struct.Memory* %call_421c3a, %struct.Memory** %MEMORY

  ; Code: callq .in_check	 RIP: 421c40	 Bytes: 5
  %loadMem1_421c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421c40 = call %struct.Memory* @routine_callq_.in_check(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421c40, i64 -99168, i64 5, i64 5)
  store %struct.Memory* %call1_421c40, %struct.Memory** %MEMORY

  %loadMem2_421c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421c40 = load i64, i64* %3
  %call2_421c40 = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64  %loadPC_421c40, %struct.Memory* %loadMem2_421c40)
  store %struct.Memory* %call2_421c40, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6038(%rbp)	 RIP: 421c45	 Bytes: 6
  %loadMem_421c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c45 = call %struct.Memory* @routine_movl__eax__MINUS0x6038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c45)
  store %struct.Memory* %call_421c45, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6014(%rbp)	 RIP: 421c4b	 Bytes: 10
  %loadMem_421c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c4b = call %struct.Memory* @routine_movl__0x0__MINUS0x6014__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c4b)
  store %struct.Memory* %call_421c4b, %struct.Memory** %MEMORY

  ; Code: .L_421c55:	 RIP: 421c55	 Bytes: 0
  br label %block_.L_421c55
block_.L_421c55:

  ; Code: movl -0x6014(%rbp), %eax	 RIP: 421c55	 Bytes: 6
  %loadMem_421c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c55 = call %struct.Memory* @routine_movl_MINUS0x6014__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c55)
  store %struct.Memory* %call_421c55, %struct.Memory** %MEMORY

  ; Code: cmpl -0x6018(%rbp), %eax	 RIP: 421c5b	 Bytes: 6
  %loadMem_421c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c5b = call %struct.Memory* @routine_cmpl_MINUS0x6018__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c5b)
  store %struct.Memory* %call_421c5b, %struct.Memory** %MEMORY

  ; Code: jge .L_421d6c	 RIP: 421c61	 Bytes: 6
  %loadMem_421c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c61 = call %struct.Memory* @routine_jge_.L_421d6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c61, i8* %BRANCH_TAKEN, i64 267, i64 6, i64 6)
  store %struct.Memory* %call_421c61, %struct.Memory** %MEMORY

  %loadBr_421c61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421c61 = icmp eq i8 %loadBr_421c61, 1
  br i1 %cmpBr_421c61, label %block_.L_421d6c, label %block_421c67

block_421c67:
  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 421c67	 Bytes: 7
  %loadMem_421c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c67 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c67)
  store %struct.Memory* %call_421c67, %struct.Memory** %MEMORY

  ; Code: movslq -0x6014(%rbp), %rcx	 RIP: 421c6e	 Bytes: 7
  %loadMem_421c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c6e = call %struct.Memory* @routine_movslq_MINUS0x6014__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c6e)
  store %struct.Memory* %call_421c6e, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 421c75	 Bytes: 4
  %loadMem_421c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c75 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c75)
  store %struct.Memory* %call_421c75, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 421c79	 Bytes: 3
  %loadMem_421c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c79 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c79)
  store %struct.Memory* %call_421c79, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 421c7c	 Bytes: 3
  %loadMem_421c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c7c = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c7c)
  store %struct.Memory* %call_421c7c, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421c7f	 Bytes: 7
  %loadMem_421c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c7f = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c7f)
  store %struct.Memory* %call_421c7f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %edx	 RIP: 421c86	 Bytes: 3
  %loadMem_421c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c86 = call %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c86)
  store %struct.Memory* %call_421c86, %struct.Memory** %MEMORY

  ; Code: jne .L_421d53	 RIP: 421c89	 Bytes: 6
  %loadMem_421c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c89 = call %struct.Memory* @routine_jne_.L_421d53(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c89, i8* %BRANCH_TAKEN, i64 202, i64 6, i64 6)
  store %struct.Memory* %call_421c89, %struct.Memory** %MEMORY

  %loadBr_421c89 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421c89 = icmp eq i8 %loadBr_421c89, 1
  br i1 %cmpBr_421c89, label %block_.L_421d53, label %block_421c8f

block_421c8f:
  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 421c8f	 Bytes: 7
  %loadMem_421c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c8f = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c8f)
  store %struct.Memory* %call_421c8f, %struct.Memory** %MEMORY

  ; Code: movslq -0x6014(%rbp), %rcx	 RIP: 421c96	 Bytes: 7
  %loadMem_421c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c96 = call %struct.Memory* @routine_movslq_MINUS0x6014__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c96)
  store %struct.Memory* %call_421c96, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 421c9d	 Bytes: 4
  %loadMem_421c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c9d = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c9d)
  store %struct.Memory* %call_421c9d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 421ca1	 Bytes: 3
  %loadMem_421ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ca1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ca1)
  store %struct.Memory* %call_421ca1, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rax	 RIP: 421ca4	 Bytes: 3
  %loadMem_421ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ca4 = call %struct.Memory* @routine_movslq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ca4)
  store %struct.Memory* %call_421ca4, %struct.Memory** %MEMORY

  ; Code: movl 0x866540(,%rax,4), %edx	 RIP: 421ca7	 Bytes: 7
  %loadMem_421ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ca7 = call %struct.Memory* @routine_movl_0x866540___rax_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ca7)
  store %struct.Memory* %call_421ca7, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421cae	 Bytes: 7
  %loadMem_421cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cae = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cae)
  store %struct.Memory* %call_421cae, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rcx	 RIP: 421cb5	 Bytes: 3
  %loadMem_421cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cb5 = call %struct.Memory* @routine_movslq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cb5)
  store %struct.Memory* %call_421cb5, %struct.Memory** %MEMORY

  ; Code: cmpl 0x866540(,%rcx,4), %edx	 RIP: 421cb8	 Bytes: 7
  %loadMem_421cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cb8 = call %struct.Memory* @routine_cmpl_0x866540___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cb8)
  store %struct.Memory* %call_421cb8, %struct.Memory** %MEMORY

  ; Code: jne .L_421d53	 RIP: 421cbf	 Bytes: 6
  %loadMem_421cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cbf = call %struct.Memory* @routine_jne_.L_421d53(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cbf, i8* %BRANCH_TAKEN, i64 148, i64 6, i64 6)
  store %struct.Memory* %call_421cbf, %struct.Memory** %MEMORY

  %loadBr_421cbf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421cbf = icmp eq i8 %loadBr_421cbf, 1
  br i1 %cmpBr_421cbf, label %block_.L_421d53, label %block_421cc5

block_421cc5:
  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 421cc5	 Bytes: 7
  %loadMem_421cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cc5 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cc5)
  store %struct.Memory* %call_421cc5, %struct.Memory** %MEMORY

  ; Code: movslq -0x6014(%rbp), %rcx	 RIP: 421ccc	 Bytes: 7
  %loadMem_421ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ccc = call %struct.Memory* @routine_movslq_MINUS0x6014__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ccc)
  store %struct.Memory* %call_421ccc, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 421cd3	 Bytes: 4
  %loadMem_421cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cd3 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cd3)
  store %struct.Memory* %call_421cd3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 421cd7	 Bytes: 3
  %loadMem_421cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cd7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cd7)
  store %struct.Memory* %call_421cd7, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 421cda	 Bytes: 2
  %loadMem_421cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cda = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cda)
  store %struct.Memory* %call_421cda, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421cdc	 Bytes: 7
  %loadMem_421cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cdc = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cdc)
  store %struct.Memory* %call_421cdc, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %edx	 RIP: 421ce3	 Bytes: 2
  %loadMem_421ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ce3 = call %struct.Memory* @routine_cmpl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ce3)
  store %struct.Memory* %call_421ce3, %struct.Memory** %MEMORY

  ; Code: je .L_421d53	 RIP: 421ce5	 Bytes: 6
  %loadMem_421ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ce5 = call %struct.Memory* @routine_je_.L_421d53(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ce5, i8* %BRANCH_TAKEN, i64 110, i64 6, i64 6)
  store %struct.Memory* %call_421ce5, %struct.Memory** %MEMORY

  %loadBr_421ce5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421ce5 = icmp eq i8 %loadBr_421ce5, 1
  br i1 %cmpBr_421ce5, label %block_.L_421d53, label %block_421ceb

block_421ceb:
  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 421ceb	 Bytes: 7
  %loadMem_421ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ceb = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ceb)
  store %struct.Memory* %call_421ceb, %struct.Memory** %MEMORY

  ; Code: movl -0x6014(%rbp), %esi	 RIP: 421cf2	 Bytes: 6
  %loadMem_421cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cf2 = call %struct.Memory* @routine_movl_MINUS0x6014__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cf2)
  store %struct.Memory* %call_421cf2, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 421cf8	 Bytes: 5
  %loadMem1_421cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421cf8 = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421cf8, i64 -91592, i64 5, i64 5)
  store %struct.Memory* %call1_421cf8, %struct.Memory** %MEMORY

  %loadMem2_421cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421cf8 = load i64, i64* %3
  %call2_421cf8 = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_421cf8, %struct.Memory* %loadMem2_421cf8)
  store %struct.Memory* %call2_421cf8, %struct.Memory** %MEMORY

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 421cfd	 Bytes: 7
  %loadMem_421cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cfd = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cfd)
  store %struct.Memory* %call_421cfd, %struct.Memory** %MEMORY

  ; Code: movl -0x6014(%rbp), %esi	 RIP: 421d04	 Bytes: 6
  %loadMem_421d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d04 = call %struct.Memory* @routine_movl_MINUS0x6014__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d04)
  store %struct.Memory* %call_421d04, %struct.Memory** %MEMORY

  ; Code: movl -0x6038(%rbp), %edx	 RIP: 421d0a	 Bytes: 6
  %loadMem_421d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d0a = call %struct.Memory* @routine_movl_MINUS0x6038__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d0a)
  store %struct.Memory* %call_421d0a, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 421d10	 Bytes: 5
  %loadMem1_421d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421d10 = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421d10, i64 -112272, i64 5, i64 5)
  store %struct.Memory* %call1_421d10, %struct.Memory** %MEMORY

  %loadMem2_421d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421d10 = load i64, i64* %3
  %call2_421d10 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_421d10, %struct.Memory* %loadMem2_421d10)
  store %struct.Memory* %call2_421d10, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 421d15	 Bytes: 3
  %loadMem_421d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d15 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d15)
  store %struct.Memory* %call_421d15, %struct.Memory** %MEMORY

  ; Code: je .L_421d41	 RIP: 421d18	 Bytes: 6
  %loadMem_421d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d18 = call %struct.Memory* @routine_je_.L_421d41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d18, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_421d18, %struct.Memory** %MEMORY

  %loadBr_421d18 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421d18 = icmp eq i8 %loadBr_421d18, 1
  br i1 %cmpBr_421d18, label %block_.L_421d41, label %block_421d1e

block_421d1e:
  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 421d1e	 Bytes: 7
  %loadMem_421d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d1e = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d1e)
  store %struct.Memory* %call_421d1e, %struct.Memory** %MEMORY

  ; Code: movl -0x6014(%rbp), %esi	 RIP: 421d25	 Bytes: 6
  %loadMem_421d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d25 = call %struct.Memory* @routine_movl_MINUS0x6014__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d25)
  store %struct.Memory* %call_421d25, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 421d2b	 Bytes: 5
  %loadMem1_421d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421d2b = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421d2b, i64 -87435, i64 5, i64 5)
  store %struct.Memory* %call1_421d2b, %struct.Memory** %MEMORY

  %loadMem2_421d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421d2b = load i64, i64* %3
  %call2_421d2b = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_421d2b, %struct.Memory* %loadMem2_421d2b)
  store %struct.Memory* %call2_421d2b, %struct.Memory** %MEMORY

  ; Code: movl -0x6014(%rbp), %esi	 RIP: 421d30	 Bytes: 6
  %loadMem_421d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d30 = call %struct.Memory* @routine_movl_MINUS0x6014__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d30)
  store %struct.Memory* %call_421d30, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x6020(%rbp)	 RIP: 421d36	 Bytes: 6
  %loadMem_421d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d36 = call %struct.Memory* @routine_movl__esi__MINUS0x6020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d36)
  store %struct.Memory* %call_421d36, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421d6c	 RIP: 421d3c	 Bytes: 5
  %loadMem_421d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d3c = call %struct.Memory* @routine_jmpq_.L_421d6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d3c, i64 48, i64 5)
  store %struct.Memory* %call_421d3c, %struct.Memory** %MEMORY

  br label %block_.L_421d6c

  ; Code: .L_421d41:	 RIP: 421d41	 Bytes: 0
block_.L_421d41:

  ; Code: leaq -0x3010(%rbp), %rdi	 RIP: 421d41	 Bytes: 7
  %loadMem_421d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d41 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d41)
  store %struct.Memory* %call_421d41, %struct.Memory** %MEMORY

  ; Code: movl -0x6014(%rbp), %esi	 RIP: 421d48	 Bytes: 6
  %loadMem_421d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d48 = call %struct.Memory* @routine_movl_MINUS0x6014__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d48)
  store %struct.Memory* %call_421d48, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 421d4e	 Bytes: 5
  %loadMem1_421d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421d4e = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421d4e, i64 -87470, i64 5, i64 5)
  store %struct.Memory* %call1_421d4e, %struct.Memory** %MEMORY

  %loadMem2_421d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421d4e = load i64, i64* %3
  %call2_421d4e = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_421d4e, %struct.Memory* %loadMem2_421d4e)
  store %struct.Memory* %call2_421d4e, %struct.Memory** %MEMORY

  ; Code: .L_421d53:	 RIP: 421d53	 Bytes: 0
  br label %block_.L_421d53
block_.L_421d53:

  ; Code: jmpq .L_421d58	 RIP: 421d53	 Bytes: 5
  %loadMem_421d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d53 = call %struct.Memory* @routine_jmpq_.L_421d58(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d53, i64 5, i64 5)
  store %struct.Memory* %call_421d53, %struct.Memory** %MEMORY

  br label %block_.L_421d58

  ; Code: .L_421d58:	 RIP: 421d58	 Bytes: 0
block_.L_421d58:

  ; Code: movl -0x6014(%rbp), %eax	 RIP: 421d58	 Bytes: 6
  %loadMem_421d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d58 = call %struct.Memory* @routine_movl_MINUS0x6014__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d58)
  store %struct.Memory* %call_421d58, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421d5e	 Bytes: 3
  %loadMem_421d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d5e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d5e)
  store %struct.Memory* %call_421d5e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6014(%rbp)	 RIP: 421d61	 Bytes: 6
  %loadMem_421d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d61 = call %struct.Memory* @routine_movl__eax__MINUS0x6014__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d61)
  store %struct.Memory* %call_421d61, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421c55	 RIP: 421d67	 Bytes: 5
  %loadMem_421d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d67 = call %struct.Memory* @routine_jmpq_.L_421c55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d67, i64 -274, i64 5)
  store %struct.Memory* %call_421d67, %struct.Memory** %MEMORY

  br label %block_.L_421c55

  ; Code: .L_421d6c:	 RIP: 421d6c	 Bytes: 0
block_.L_421d6c:

  ; Code: cmpl $0xffffffff, -0x6020(%rbp)	 RIP: 421d6c	 Bytes: 7
  %loadMem_421d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d6c = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x6020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d6c)
  store %struct.Memory* %call_421d6c, %struct.Memory** %MEMORY

  ; Code: je .L_421f3d	 RIP: 421d73	 Bytes: 6
  %loadMem_421d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d73 = call %struct.Memory* @routine_je_.L_421f3d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d73, i8* %BRANCH_TAKEN, i64 458, i64 6, i64 6)
  store %struct.Memory* %call_421d73, %struct.Memory** %MEMORY

  %loadBr_421d73 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421d73 = icmp eq i8 %loadBr_421d73, 1
  br i1 %cmpBr_421d73, label %block_.L_421f3d, label %block_421d79

block_421d79:
  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421d79	 Bytes: 7
  %loadMem_421d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d79 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d79)
  store %struct.Memory* %call_421d79, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rcx	 RIP: 421d80	 Bytes: 4
  %loadMem_421d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d80 = call %struct.Memory* @routine_movslq_0x4__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d80)
  store %struct.Memory* %call_421d80, %struct.Memory** %MEMORY

  ; Code: cmpl $0xd, 0x866540(,%rcx,4)	 RIP: 421d84	 Bytes: 8
  %loadMem_421d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d84 = call %struct.Memory* @routine_cmpl__0xd__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d84)
  store %struct.Memory* %call_421d84, %struct.Memory** %MEMORY

  ; Code: jne .L_421e65	 RIP: 421d8c	 Bytes: 6
  %loadMem_421d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d8c = call %struct.Memory* @routine_jne_.L_421e65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d8c, i8* %BRANCH_TAKEN, i64 217, i64 6, i64 6)
  store %struct.Memory* %call_421d8c, %struct.Memory** %MEMORY

  %loadBr_421d8c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421d8c = icmp eq i8 %loadBr_421d8c, 1
  br i1 %cmpBr_421d8c, label %block_.L_421e65, label %block_421d92

block_421d92:
  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 421d92	 Bytes: 7
  %loadMem_421d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d92 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d92)
  store %struct.Memory* %call_421d92, %struct.Memory** %MEMORY

  ; Code: movslq -0x6020(%rbp), %rcx	 RIP: 421d99	 Bytes: 7
  %loadMem_421d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d99 = call %struct.Memory* @routine_movslq_MINUS0x6020__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d99)
  store %struct.Memory* %call_421d99, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 421da0	 Bytes: 4
  %loadMem_421da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421da0 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421da0)
  store %struct.Memory* %call_421da0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 421da4	 Bytes: 3
  %loadMem_421da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421da4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421da4)
  store %struct.Memory* %call_421da4, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rax	 RIP: 421da7	 Bytes: 3
  %loadMem_421da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421da7 = call %struct.Memory* @routine_movslq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421da7)
  store %struct.Memory* %call_421da7, %struct.Memory** %MEMORY

  ; Code: movl 0x425650(,%rax,4), %edx	 RIP: 421daa	 Bytes: 7
  %loadMem_421daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421daa = call %struct.Memory* @routine_movl_0x425650___rax_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421daa)
  store %struct.Memory* %call_421daa, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421db1	 Bytes: 7
  %loadMem_421db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421db1 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421db1)
  store %struct.Memory* %call_421db1, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rcx	 RIP: 421db8	 Bytes: 3
  %loadMem_421db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421db8 = call %struct.Memory* @routine_movslq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421db8)
  store %struct.Memory* %call_421db8, %struct.Memory** %MEMORY

  ; Code: cmpl 0x425650(,%rcx,4), %edx	 RIP: 421dbb	 Bytes: 7
  %loadMem_421dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dbb = call %struct.Memory* @routine_cmpl_0x425650___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dbb)
  store %struct.Memory* %call_421dbb, %struct.Memory** %MEMORY

  ; Code: je .L_421e17	 RIP: 421dc2	 Bytes: 6
  %loadMem_421dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dc2 = call %struct.Memory* @routine_je_.L_421e17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dc2, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_421dc2, %struct.Memory** %MEMORY

  %loadBr_421dc2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421dc2 = icmp eq i8 %loadBr_421dc2, 1
  br i1 %cmpBr_421dc2, label %block_.L_421e17, label %block_421dc8

block_421dc8:
  ; Code: movq $0x429afe, %rsi	 RIP: 421dc8	 Bytes: 10
  %loadMem_421dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dc8 = call %struct.Memory* @routine_movq__0x429afe___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dc8)
  store %struct.Memory* %call_421dc8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 421dd2	 Bytes: 4
  %loadMem_421dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dd2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dd2)
  store %struct.Memory* %call_421dd2, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421dd6	 Bytes: 7
  %loadMem_421dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dd6 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dd6)
  store %struct.Memory* %call_421dd6, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rcx	 RIP: 421ddd	 Bytes: 3
  %loadMem_421ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ddd = call %struct.Memory* @routine_movslq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ddd)
  store %struct.Memory* %call_421ddd, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 421de0	 Bytes: 8
  %loadMem_421de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421de0 = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421de0)
  store %struct.Memory* %call_421de0, %struct.Memory** %MEMORY

  ; Code: movl 0x427e20(,%rcx,4), %edx	 RIP: 421de8	 Bytes: 7
  %loadMem_421de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421de8 = call %struct.Memory* @routine_movl_0x427e20___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421de8)
  store %struct.Memory* %call_421de8, %struct.Memory** %MEMORY

  ; Code: movsbl -0x6031(%rbp), %ecx	 RIP: 421def	 Bytes: 7
  %loadMem_421def = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421def = call %struct.Memory* @routine_movsbl_MINUS0x6031__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421def)
  store %struct.Memory* %call_421def, %struct.Memory** %MEMORY

  ; Code: movsbl -0x6032(%rbp), %r8d	 RIP: 421df6	 Bytes: 8
  %loadMem_421df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421df6 = call %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421df6)
  store %struct.Memory* %call_421df6, %struct.Memory** %MEMORY

  ; Code: movl -0x602c(%rbp), %r9d	 RIP: 421dfe	 Bytes: 7
  %loadMem_421dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dfe = call %struct.Memory* @routine_movl_MINUS0x602c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dfe)
  store %struct.Memory* %call_421dfe, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 421e05	 Bytes: 2
  %loadMem_421e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e05 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e05)
  store %struct.Memory* %call_421e05, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 421e07	 Bytes: 5
  %loadMem1_421e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421e07 = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421e07, i64 -135223, i64 5, i64 5)
  store %struct.Memory* %call1_421e07, %struct.Memory** %MEMORY

  %loadMem2_421e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421e07 = load i64, i64* %3
  %call2_421e07 = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_421e07, %struct.Memory* %loadMem2_421e07)
  store %struct.Memory* %call2_421e07, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6060(%rbp)	 RIP: 421e0c	 Bytes: 6
  %loadMem_421e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e0c = call %struct.Memory* @routine_movl__eax__MINUS0x6060__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e0c)
  store %struct.Memory* %call_421e0c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421e60	 RIP: 421e12	 Bytes: 5
  %loadMem_421e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e12 = call %struct.Memory* @routine_jmpq_.L_421e60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e12, i64 78, i64 5)
  store %struct.Memory* %call_421e12, %struct.Memory** %MEMORY

  br label %block_.L_421e60

  ; Code: .L_421e17:	 RIP: 421e17	 Bytes: 0
block_.L_421e17:

  ; Code: movq $0x429b07, %rsi	 RIP: 421e17	 Bytes: 10
  %loadMem_421e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e17 = call %struct.Memory* @routine_movq__0x429b07___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e17)
  store %struct.Memory* %call_421e17, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 421e21	 Bytes: 4
  %loadMem_421e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e21 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e21)
  store %struct.Memory* %call_421e21, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421e25	 Bytes: 7
  %loadMem_421e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e25 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e25)
  store %struct.Memory* %call_421e25, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rcx	 RIP: 421e2c	 Bytes: 3
  %loadMem_421e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e2c = call %struct.Memory* @routine_movslq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e2c)
  store %struct.Memory* %call_421e2c, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 421e2f	 Bytes: 8
  %loadMem_421e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e2f = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e2f)
  store %struct.Memory* %call_421e2f, %struct.Memory** %MEMORY

  ; Code: movl 0x427e20(,%rcx,4), %edx	 RIP: 421e37	 Bytes: 7
  %loadMem_421e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e37 = call %struct.Memory* @routine_movl_0x427e20___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e37)
  store %struct.Memory* %call_421e37, %struct.Memory** %MEMORY

  ; Code: movl -0x6028(%rbp), %ecx	 RIP: 421e3e	 Bytes: 6
  %loadMem_421e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e3e = call %struct.Memory* @routine_movl_MINUS0x6028__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e3e)
  store %struct.Memory* %call_421e3e, %struct.Memory** %MEMORY

  ; Code: movsbl -0x6032(%rbp), %r8d	 RIP: 421e44	 Bytes: 8
  %loadMem_421e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e44 = call %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e44)
  store %struct.Memory* %call_421e44, %struct.Memory** %MEMORY

  ; Code: movl -0x602c(%rbp), %r9d	 RIP: 421e4c	 Bytes: 7
  %loadMem_421e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e4c = call %struct.Memory* @routine_movl_MINUS0x602c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e4c)
  store %struct.Memory* %call_421e4c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 421e53	 Bytes: 2
  %loadMem_421e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e53 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e53)
  store %struct.Memory* %call_421e53, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 421e55	 Bytes: 5
  %loadMem1_421e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421e55 = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421e55, i64 -135301, i64 5, i64 5)
  store %struct.Memory* %call1_421e55, %struct.Memory** %MEMORY

  %loadMem2_421e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421e55 = load i64, i64* %3
  %call2_421e55 = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_421e55, %struct.Memory* %loadMem2_421e55)
  store %struct.Memory* %call2_421e55, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6064(%rbp)	 RIP: 421e5a	 Bytes: 6
  %loadMem_421e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e5a = call %struct.Memory* @routine_movl__eax__MINUS0x6064__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e5a)
  store %struct.Memory* %call_421e5a, %struct.Memory** %MEMORY

  ; Code: .L_421e60:	 RIP: 421e60	 Bytes: 0
  br label %block_.L_421e60
block_.L_421e60:

  ; Code: jmpq .L_421f38	 RIP: 421e60	 Bytes: 5
  %loadMem_421e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e60 = call %struct.Memory* @routine_jmpq_.L_421f38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e60, i64 216, i64 5)
  store %struct.Memory* %call_421e60, %struct.Memory** %MEMORY

  br label %block_.L_421f38

  ; Code: .L_421e65:	 RIP: 421e65	 Bytes: 0
block_.L_421e65:

  ; Code: leaq -0x3010(%rbp), %rax	 RIP: 421e65	 Bytes: 7
  %loadMem_421e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e65 = call %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e65)
  store %struct.Memory* %call_421e65, %struct.Memory** %MEMORY

  ; Code: movslq -0x6020(%rbp), %rcx	 RIP: 421e6c	 Bytes: 7
  %loadMem_421e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e6c = call %struct.Memory* @routine_movslq_MINUS0x6020__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e6c)
  store %struct.Memory* %call_421e6c, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 421e73	 Bytes: 4
  %loadMem_421e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e73 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e73)
  store %struct.Memory* %call_421e73, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 421e77	 Bytes: 3
  %loadMem_421e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e77 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e77)
  store %struct.Memory* %call_421e77, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rax	 RIP: 421e7a	 Bytes: 3
  %loadMem_421e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e7a = call %struct.Memory* @routine_movslq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e7a)
  store %struct.Memory* %call_421e7a, %struct.Memory** %MEMORY

  ; Code: movl 0x425650(,%rax,4), %edx	 RIP: 421e7d	 Bytes: 7
  %loadMem_421e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e7d = call %struct.Memory* @routine_movl_0x425650___rax_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e7d)
  store %struct.Memory* %call_421e7d, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421e84	 Bytes: 7
  %loadMem_421e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e84 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e84)
  store %struct.Memory* %call_421e84, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rcx	 RIP: 421e8b	 Bytes: 3
  %loadMem_421e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e8b = call %struct.Memory* @routine_movslq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e8b)
  store %struct.Memory* %call_421e8b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x425650(,%rcx,4), %edx	 RIP: 421e8e	 Bytes: 7
  %loadMem_421e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e8e = call %struct.Memory* @routine_cmpl_0x425650___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e8e)
  store %struct.Memory* %call_421e8e, %struct.Memory** %MEMORY

  ; Code: je .L_421eea	 RIP: 421e95	 Bytes: 6
  %loadMem_421e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e95 = call %struct.Memory* @routine_je_.L_421eea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e95, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_421e95, %struct.Memory** %MEMORY

  %loadBr_421e95 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421e95 = icmp eq i8 %loadBr_421e95, 1
  br i1 %cmpBr_421e95, label %block_.L_421eea, label %block_421e9b

block_421e9b:
  ; Code: movq $0x429b10, %rsi	 RIP: 421e9b	 Bytes: 10
  %loadMem_421e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e9b = call %struct.Memory* @routine_movq__0x429b10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e9b)
  store %struct.Memory* %call_421e9b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 421ea5	 Bytes: 4
  %loadMem_421ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ea5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ea5)
  store %struct.Memory* %call_421ea5, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421ea9	 Bytes: 7
  %loadMem_421ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ea9 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ea9)
  store %struct.Memory* %call_421ea9, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rcx	 RIP: 421eb0	 Bytes: 3
  %loadMem_421eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421eb0 = call %struct.Memory* @routine_movslq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421eb0)
  store %struct.Memory* %call_421eb0, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 421eb3	 Bytes: 8
  %loadMem_421eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421eb3 = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421eb3)
  store %struct.Memory* %call_421eb3, %struct.Memory** %MEMORY

  ; Code: movl 0x427e20(,%rcx,4), %edx	 RIP: 421ebb	 Bytes: 7
  %loadMem_421ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ebb = call %struct.Memory* @routine_movl_0x427e20___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ebb)
  store %struct.Memory* %call_421ebb, %struct.Memory** %MEMORY

  ; Code: movsbl -0x6031(%rbp), %ecx	 RIP: 421ec2	 Bytes: 7
  %loadMem_421ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ec2 = call %struct.Memory* @routine_movsbl_MINUS0x6031__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ec2)
  store %struct.Memory* %call_421ec2, %struct.Memory** %MEMORY

  ; Code: movsbl -0x6032(%rbp), %r8d	 RIP: 421ec9	 Bytes: 8
  %loadMem_421ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ec9 = call %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ec9)
  store %struct.Memory* %call_421ec9, %struct.Memory** %MEMORY

  ; Code: movl -0x602c(%rbp), %r9d	 RIP: 421ed1	 Bytes: 7
  %loadMem_421ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ed1 = call %struct.Memory* @routine_movl_MINUS0x602c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ed1)
  store %struct.Memory* %call_421ed1, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 421ed8	 Bytes: 2
  %loadMem_421ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ed8 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ed8)
  store %struct.Memory* %call_421ed8, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 421eda	 Bytes: 5
  %loadMem1_421eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421eda = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421eda, i64 -135434, i64 5, i64 5)
  store %struct.Memory* %call1_421eda, %struct.Memory** %MEMORY

  %loadMem2_421eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421eda = load i64, i64* %3
  %call2_421eda = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_421eda, %struct.Memory* %loadMem2_421eda)
  store %struct.Memory* %call2_421eda, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6068(%rbp)	 RIP: 421edf	 Bytes: 6
  %loadMem_421edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421edf = call %struct.Memory* @routine_movl__eax__MINUS0x6068__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421edf)
  store %struct.Memory* %call_421edf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421f33	 RIP: 421ee5	 Bytes: 5
  %loadMem_421ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ee5 = call %struct.Memory* @routine_jmpq_.L_421f33(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ee5, i64 78, i64 5)
  store %struct.Memory* %call_421ee5, %struct.Memory** %MEMORY

  br label %block_.L_421f33

  ; Code: .L_421eea:	 RIP: 421eea	 Bytes: 0
block_.L_421eea:

  ; Code: movq $0x429b1a, %rsi	 RIP: 421eea	 Bytes: 10
  %loadMem_421eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421eea = call %struct.Memory* @routine_movq__0x429b1a___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421eea)
  store %struct.Memory* %call_421eea, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 421ef4	 Bytes: 4
  %loadMem_421ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ef4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ef4)
  store %struct.Memory* %call_421ef4, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421ef8	 Bytes: 7
  %loadMem_421ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ef8 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ef8)
  store %struct.Memory* %call_421ef8, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rcx	 RIP: 421eff	 Bytes: 3
  %loadMem_421eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421eff = call %struct.Memory* @routine_movslq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421eff)
  store %struct.Memory* %call_421eff, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 421f02	 Bytes: 8
  %loadMem_421f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f02 = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f02)
  store %struct.Memory* %call_421f02, %struct.Memory** %MEMORY

  ; Code: movl 0x427e20(,%rcx,4), %edx	 RIP: 421f0a	 Bytes: 7
  %loadMem_421f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f0a = call %struct.Memory* @routine_movl_0x427e20___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f0a)
  store %struct.Memory* %call_421f0a, %struct.Memory** %MEMORY

  ; Code: movl -0x6028(%rbp), %ecx	 RIP: 421f11	 Bytes: 6
  %loadMem_421f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f11 = call %struct.Memory* @routine_movl_MINUS0x6028__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f11)
  store %struct.Memory* %call_421f11, %struct.Memory** %MEMORY

  ; Code: movsbl -0x6032(%rbp), %r8d	 RIP: 421f17	 Bytes: 8
  %loadMem_421f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f17 = call %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f17)
  store %struct.Memory* %call_421f17, %struct.Memory** %MEMORY

  ; Code: movl -0x602c(%rbp), %r9d	 RIP: 421f1f	 Bytes: 7
  %loadMem_421f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f1f = call %struct.Memory* @routine_movl_MINUS0x602c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f1f)
  store %struct.Memory* %call_421f1f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 421f26	 Bytes: 2
  %loadMem_421f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f26 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f26)
  store %struct.Memory* %call_421f26, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 421f28	 Bytes: 5
  %loadMem1_421f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421f28 = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421f28, i64 -135512, i64 5, i64 5)
  store %struct.Memory* %call1_421f28, %struct.Memory** %MEMORY

  %loadMem2_421f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421f28 = load i64, i64* %3
  %call2_421f28 = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_421f28, %struct.Memory* %loadMem2_421f28)
  store %struct.Memory* %call2_421f28, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x606c(%rbp)	 RIP: 421f2d	 Bytes: 6
  %loadMem_421f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f2d = call %struct.Memory* @routine_movl__eax__MINUS0x606c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f2d)
  store %struct.Memory* %call_421f2d, %struct.Memory** %MEMORY

  ; Code: .L_421f33:	 RIP: 421f33	 Bytes: 0
  br label %block_.L_421f33
block_.L_421f33:

  ; Code: jmpq .L_421f38	 RIP: 421f33	 Bytes: 5
  %loadMem_421f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f33 = call %struct.Memory* @routine_jmpq_.L_421f38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f33, i64 5, i64 5)
  store %struct.Memory* %call_421f33, %struct.Memory** %MEMORY

  br label %block_.L_421f38

  ; Code: .L_421f38:	 RIP: 421f38	 Bytes: 0
block_.L_421f38:

  ; Code: jmpq .L_421fe4	 RIP: 421f38	 Bytes: 5
  %loadMem_421f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f38 = call %struct.Memory* @routine_jmpq_.L_421fe4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f38, i64 172, i64 5)
  store %struct.Memory* %call_421f38, %struct.Memory** %MEMORY

  br label %block_.L_421fe4

  ; Code: .L_421f3d:	 RIP: 421f3d	 Bytes: 0
block_.L_421f3d:

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421f3d	 Bytes: 7
  %loadMem_421f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f3d = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f3d)
  store %struct.Memory* %call_421f3d, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rcx	 RIP: 421f44	 Bytes: 4
  %loadMem_421f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f44 = call %struct.Memory* @routine_movslq_0x4__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f44)
  store %struct.Memory* %call_421f44, %struct.Memory** %MEMORY

  ; Code: cmpl $0xd, 0x866540(,%rcx,4)	 RIP: 421f48	 Bytes: 8
  %loadMem_421f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f48 = call %struct.Memory* @routine_cmpl__0xd__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f48)
  store %struct.Memory* %call_421f48, %struct.Memory** %MEMORY

  ; Code: jne .L_421f9d	 RIP: 421f50	 Bytes: 6
  %loadMem_421f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f50 = call %struct.Memory* @routine_jne_.L_421f9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f50, i8* %BRANCH_TAKEN, i64 77, i64 6, i64 6)
  store %struct.Memory* %call_421f50, %struct.Memory** %MEMORY

  %loadBr_421f50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421f50 = icmp eq i8 %loadBr_421f50, 1
  br i1 %cmpBr_421f50, label %block_.L_421f9d, label %block_421f56

block_421f56:
  ; Code: movq $0x429b00, %rsi	 RIP: 421f56	 Bytes: 10
  %loadMem_421f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f56 = call %struct.Memory* @routine_movq__0x429b00___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f56)
  store %struct.Memory* %call_421f56, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 421f60	 Bytes: 4
  %loadMem_421f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f60 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f60)
  store %struct.Memory* %call_421f60, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421f64	 Bytes: 7
  %loadMem_421f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f64 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f64)
  store %struct.Memory* %call_421f64, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rcx	 RIP: 421f6b	 Bytes: 3
  %loadMem_421f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f6b = call %struct.Memory* @routine_movslq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f6b)
  store %struct.Memory* %call_421f6b, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 421f6e	 Bytes: 8
  %loadMem_421f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f6e = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f6e)
  store %struct.Memory* %call_421f6e, %struct.Memory** %MEMORY

  ; Code: movl 0x427e20(,%rcx,4), %edx	 RIP: 421f76	 Bytes: 7
  %loadMem_421f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f76 = call %struct.Memory* @routine_movl_0x427e20___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f76)
  store %struct.Memory* %call_421f76, %struct.Memory** %MEMORY

  ; Code: movsbl -0x6032(%rbp), %ecx	 RIP: 421f7d	 Bytes: 7
  %loadMem_421f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f7d = call %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f7d)
  store %struct.Memory* %call_421f7d, %struct.Memory** %MEMORY

  ; Code: movl -0x602c(%rbp), %r8d	 RIP: 421f84	 Bytes: 7
  %loadMem_421f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f84 = call %struct.Memory* @routine_movl_MINUS0x602c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f84)
  store %struct.Memory* %call_421f84, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 421f8b	 Bytes: 2
  %loadMem_421f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f8b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f8b)
  store %struct.Memory* %call_421f8b, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 421f8d	 Bytes: 5
  %loadMem1_421f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421f8d = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421f8d, i64 -135613, i64 5, i64 5)
  store %struct.Memory* %call1_421f8d, %struct.Memory** %MEMORY

  %loadMem2_421f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421f8d = load i64, i64* %3
  %call2_421f8d = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_421f8d, %struct.Memory* %loadMem2_421f8d)
  store %struct.Memory* %call2_421f8d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6070(%rbp)	 RIP: 421f92	 Bytes: 6
  %loadMem_421f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f92 = call %struct.Memory* @routine_movl__eax__MINUS0x6070__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f92)
  store %struct.Memory* %call_421f92, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421fdf	 RIP: 421f98	 Bytes: 5
  %loadMem_421f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f98 = call %struct.Memory* @routine_jmpq_.L_421fdf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f98, i64 71, i64 5)
  store %struct.Memory* %call_421f98, %struct.Memory** %MEMORY

  br label %block_.L_421fdf

  ; Code: .L_421f9d:	 RIP: 421f9d	 Bytes: 0
block_.L_421f9d:

  ; Code: movq $0x429b12, %rsi	 RIP: 421f9d	 Bytes: 10
  %loadMem_421f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f9d = call %struct.Memory* @routine_movq__0x429b12___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f9d)
  store %struct.Memory* %call_421f9d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 421fa7	 Bytes: 4
  %loadMem_421fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fa7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fa7)
  store %struct.Memory* %call_421fa7, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rax	 RIP: 421fab	 Bytes: 7
  %loadMem_421fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fab = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fab)
  store %struct.Memory* %call_421fab, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rcx	 RIP: 421fb2	 Bytes: 3
  %loadMem_421fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fb2 = call %struct.Memory* @routine_movslq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fb2)
  store %struct.Memory* %call_421fb2, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 421fb5	 Bytes: 8
  %loadMem_421fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fb5 = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fb5)
  store %struct.Memory* %call_421fb5, %struct.Memory** %MEMORY

  ; Code: movl 0x427e20(,%rcx,4), %edx	 RIP: 421fbd	 Bytes: 7
  %loadMem_421fbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fbd = call %struct.Memory* @routine_movl_0x427e20___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fbd)
  store %struct.Memory* %call_421fbd, %struct.Memory** %MEMORY

  ; Code: movsbl -0x6032(%rbp), %ecx	 RIP: 421fc4	 Bytes: 7
  %loadMem_421fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fc4 = call %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fc4)
  store %struct.Memory* %call_421fc4, %struct.Memory** %MEMORY

  ; Code: movl -0x602c(%rbp), %r8d	 RIP: 421fcb	 Bytes: 7
  %loadMem_421fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fcb = call %struct.Memory* @routine_movl_MINUS0x602c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fcb)
  store %struct.Memory* %call_421fcb, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 421fd2	 Bytes: 2
  %loadMem_421fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fd2 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fd2)
  store %struct.Memory* %call_421fd2, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 421fd4	 Bytes: 5
  %loadMem1_421fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421fd4 = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421fd4, i64 -135684, i64 5, i64 5)
  store %struct.Memory* %call1_421fd4, %struct.Memory** %MEMORY

  %loadMem2_421fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421fd4 = load i64, i64* %3
  %call2_421fd4 = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_421fd4, %struct.Memory* %loadMem2_421fd4)
  store %struct.Memory* %call2_421fd4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6074(%rbp)	 RIP: 421fd9	 Bytes: 6
  %loadMem_421fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fd9 = call %struct.Memory* @routine_movl__eax__MINUS0x6074__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fd9)
  store %struct.Memory* %call_421fd9, %struct.Memory** %MEMORY

  ; Code: .L_421fdf:	 RIP: 421fdf	 Bytes: 0
  br label %block_.L_421fdf
block_.L_421fdf:

  ; Code: jmpq .L_421fe4	 RIP: 421fdf	 Bytes: 5
  %loadMem_421fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fdf = call %struct.Memory* @routine_jmpq_.L_421fe4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fdf, i64 5, i64 5)
  store %struct.Memory* %call_421fdf, %struct.Memory** %MEMORY

  br label %block_.L_421fe4

  ; Code: .L_421fe4:	 RIP: 421fe4	 Bytes: 0
block_.L_421fe4:

  ; Code: jmpq .L_421fe9	 RIP: 421fe4	 Bytes: 5
  %loadMem_421fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fe4 = call %struct.Memory* @routine_jmpq_.L_421fe9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fe4, i64 5, i64 5)
  store %struct.Memory* %call_421fe4, %struct.Memory** %MEMORY

  br label %block_.L_421fe9

  ; Code: .L_421fe9:	 RIP: 421fe9	 Bytes: 0
block_.L_421fe9:

  ; Code: jmpq .L_421fee	 RIP: 421fe9	 Bytes: 5
  %loadMem_421fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fe9 = call %struct.Memory* @routine_jmpq_.L_421fee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fe9, i64 5, i64 5)
  store %struct.Memory* %call_421fe9, %struct.Memory** %MEMORY

  br label %block_.L_421fee

  ; Code: .L_421fee:	 RIP: 421fee	 Bytes: 0
block_.L_421fee:

  ; Code: jmpq .L_421ff3	 RIP: 421fee	 Bytes: 5
  %loadMem_421fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fee = call %struct.Memory* @routine_jmpq_.L_421ff3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fee, i64 5, i64 5)
  store %struct.Memory* %call_421fee, %struct.Memory** %MEMORY

  br label %block_.L_421ff3

  ; Code: .L_421ff3:	 RIP: 421ff3	 Bytes: 0
block_.L_421ff3:

  ; Code: xorl %esi, %esi	 RIP: 421ff3	 Bytes: 2
  %loadMem_421ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ff3 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ff3)
  store %struct.Memory* %call_421ff3, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rdi	 RIP: 421ff5	 Bytes: 7
  %loadMem_421ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ff5 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ff5)
  store %struct.Memory* %call_421ff5, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 421ffc	 Bytes: 5
  %loadMem1_421ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421ffc = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421ffc, i64 -92364, i64 5, i64 5)
  store %struct.Memory* %call1_421ffc, %struct.Memory** %MEMORY

  %loadMem2_421ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421ffc = load i64, i64* %3
  %call2_421ffc = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_421ffc, %struct.Memory* %loadMem2_421ffc)
  store %struct.Memory* %call2_421ffc, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 422001	 Bytes: 2
  %loadMem_422001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422001 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422001)
  store %struct.Memory* %call_422001, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edx	 RIP: 422003	 Bytes: 5
  %loadMem_422003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422003 = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422003)
  store %struct.Memory* %call_422003, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rdi	 RIP: 422008	 Bytes: 7
  %loadMem_422008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422008 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422008)
  store %struct.Memory* %call_422008, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 42200f	 Bytes: 5
  %loadMem1_42200f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42200f = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42200f, i64 -113039, i64 5, i64 5)
  store %struct.Memory* %call1_42200f, %struct.Memory** %MEMORY

  %loadMem2_42200f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42200f = load i64, i64* %3
  %call2_42200f = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_42200f, %struct.Memory* %loadMem2_42200f)
  store %struct.Memory* %call2_42200f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 422014	 Bytes: 3
  %loadMem_422014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422014 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422014)
  store %struct.Memory* %call_422014, %struct.Memory** %MEMORY

  ; Code: jne .L_422056	 RIP: 422017	 Bytes: 6
  %loadMem_422017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422017 = call %struct.Memory* @routine_jne_.L_422056(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422017, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_422017, %struct.Memory** %MEMORY

  %loadBr_422017 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422017 = icmp eq i8 %loadBr_422017, 1
  br i1 %cmpBr_422017, label %block_.L_422056, label %block_42201d

block_42201d:
  ; Code: xorl %esi, %esi	 RIP: 42201d	 Bytes: 2
  %loadMem_42201d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42201d = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42201d)
  store %struct.Memory* %call_42201d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42201f	 Bytes: 4
  %loadMem_42201f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42201f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42201f)
  store %struct.Memory* %call_42201f, %struct.Memory** %MEMORY

  ; Code: movl $0x429b24, %eax	 RIP: 422023	 Bytes: 5
  %loadMem_422023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422023 = call %struct.Memory* @routine_movl__0x429b24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422023)
  store %struct.Memory* %call_422023, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 422028	 Bytes: 2
  %loadMem_422028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422028 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422028)
  store %struct.Memory* %call_422028, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x6078(%rbp)	 RIP: 42202a	 Bytes: 6
  %loadMem_42202a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42202a = call %struct.Memory* @routine_movl__esi__MINUS0x6078__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42202a)
  store %struct.Memory* %call_42202a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 422030	 Bytes: 3
  %loadMem_422030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422030 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422030)
  store %struct.Memory* %call_422030, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 422033	 Bytes: 5
  %loadMem1_422033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422033 = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422033, i64 -136131, i64 5, i64 5)
  store %struct.Memory* %call1_422033, %struct.Memory** %MEMORY

  %loadMem2_422033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422033 = load i64, i64* %3
  %call2_422033 = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_422033, %struct.Memory* %loadMem2_422033)
  store %struct.Memory* %call2_422033, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rdi	 RIP: 422038	 Bytes: 7
  %loadMem_422038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422038 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422038)
  store %struct.Memory* %call_422038, %struct.Memory** %MEMORY

  ; Code: movl -0x6078(%rbp), %esi	 RIP: 42203f	 Bytes: 6
  %loadMem_42203f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42203f = call %struct.Memory* @routine_movl_MINUS0x6078__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42203f)
  store %struct.Memory* %call_42203f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x6080(%rbp)	 RIP: 422045	 Bytes: 7
  %loadMem_422045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422045 = call %struct.Memory* @routine_movq__rax__MINUS0x6080__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422045)
  store %struct.Memory* %call_422045, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 42204c	 Bytes: 5
  %loadMem1_42204c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42204c = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42204c, i64 -88236, i64 5, i64 5)
  store %struct.Memory* %call1_42204c, %struct.Memory** %MEMORY

  %loadMem2_42204c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42204c = load i64, i64* %3
  %call2_42204c = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_42204c, %struct.Memory* %loadMem2_42204c)
  store %struct.Memory* %call2_42204c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42217f	 RIP: 422051	 Bytes: 5
  %loadMem_422051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422051 = call %struct.Memory* @routine_jmpq_.L_42217f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422051, i64 302, i64 5)
  store %struct.Memory* %call_422051, %struct.Memory** %MEMORY

  br label %block_.L_42217f

  ; Code: .L_422056:	 RIP: 422056	 Bytes: 0
block_.L_422056:

  ; Code: callq .in_check	 RIP: 422056	 Bytes: 5
  %loadMem1_422056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422056 = call %struct.Memory* @routine_callq_.in_check(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422056, i64 -100214, i64 5, i64 5)
  store %struct.Memory* %call1_422056, %struct.Memory** %MEMORY

  %loadMem2_422056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422056 = load i64, i64* %3
  %call2_422056 = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64  %loadPC_422056, %struct.Memory* %loadMem2_422056)
  store %struct.Memory* %call2_422056, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42205b	 Bytes: 3
  %loadMem_42205b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42205b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42205b)
  store %struct.Memory* %call_42205b, %struct.Memory** %MEMORY

  ; Code: je .L_422171	 RIP: 42205e	 Bytes: 6
  %loadMem_42205e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42205e = call %struct.Memory* @routine_je_.L_422171(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42205e, i8* %BRANCH_TAKEN, i64 275, i64 6, i64 6)
  store %struct.Memory* %call_42205e, %struct.Memory** %MEMORY

  %loadBr_42205e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42205e = icmp eq i8 %loadBr_42205e, 1
  br i1 %cmpBr_42205e, label %block_.L_422171, label %block_422064

block_422064:
  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 422064	 Bytes: 7
  %loadMem_422064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422064 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422064)
  store %struct.Memory* %call_422064, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x6024(%rbp)	 RIP: 42206b	 Bytes: 10
  %loadMem_42206b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42206b = call %struct.Memory* @routine_movl__0x1__MINUS0x6024__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42206b)
  store %struct.Memory* %call_42206b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x601c(%rbp)	 RIP: 422075	 Bytes: 10
  %loadMem_422075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422075 = call %struct.Memory* @routine_movl__0x0__MINUS0x601c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422075)
  store %struct.Memory* %call_422075, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 42207f	 Bytes: 5
  %loadMem1_42207f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42207f = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42207f, i64 -107087, i64 5, i64 5)
  store %struct.Memory* %call1_42207f, %struct.Memory** %MEMORY

  %loadMem2_42207f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42207f = load i64, i64* %3
  %call2_42207f = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_42207f, %struct.Memory* %loadMem2_42207f)
  store %struct.Memory* %call2_42207f, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 422084	 Bytes: 7
  %loadMem_422084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422084 = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422084)
  store %struct.Memory* %call_422084, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x601c(%rbp)	 RIP: 42208b	 Bytes: 6
  %loadMem_42208b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42208b = call %struct.Memory* @routine_movl__eax__MINUS0x601c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42208b)
  store %struct.Memory* %call_42208b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6014(%rbp)	 RIP: 422091	 Bytes: 10
  %loadMem_422091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422091 = call %struct.Memory* @routine_movl__0x0__MINUS0x6014__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422091)
  store %struct.Memory* %call_422091, %struct.Memory** %MEMORY

  ; Code: .L_42209b:	 RIP: 42209b	 Bytes: 0
  br label %block_.L_42209b
block_.L_42209b:

  ; Code: movl -0x6014(%rbp), %eax	 RIP: 42209b	 Bytes: 6
  %loadMem_42209b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42209b = call %struct.Memory* @routine_movl_MINUS0x6014__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42209b)
  store %struct.Memory* %call_42209b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x601c(%rbp), %eax	 RIP: 4220a1	 Bytes: 6
  %loadMem_4220a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220a1 = call %struct.Memory* @routine_cmpl_MINUS0x601c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220a1)
  store %struct.Memory* %call_4220a1, %struct.Memory** %MEMORY

  ; Code: jge .L_422126	 RIP: 4220a7	 Bytes: 6
  %loadMem_4220a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220a7 = call %struct.Memory* @routine_jge_.L_422126(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220a7, i8* %BRANCH_TAKEN, i64 127, i64 6, i64 6)
  store %struct.Memory* %call_4220a7, %struct.Memory** %MEMORY

  %loadBr_4220a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4220a7 = icmp eq i8 %loadBr_4220a7, 1
  br i1 %cmpBr_4220a7, label %block_.L_422126, label %block_4220ad

block_4220ad:
  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 4220ad	 Bytes: 7
  %loadMem_4220ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220ad = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220ad)
  store %struct.Memory* %call_4220ad, %struct.Memory** %MEMORY

  ; Code: movl -0x6014(%rbp), %esi	 RIP: 4220b4	 Bytes: 6
  %loadMem_4220b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220b4 = call %struct.Memory* @routine_movl_MINUS0x6014__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220b4)
  store %struct.Memory* %call_4220b4, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 4220ba	 Bytes: 5
  %loadMem1_4220ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4220ba = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4220ba, i64 -92554, i64 5, i64 5)
  store %struct.Memory* %call1_4220ba, %struct.Memory** %MEMORY

  %loadMem2_4220ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4220ba = load i64, i64* %3
  %call2_4220ba = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_4220ba, %struct.Memory* %loadMem2_4220ba)
  store %struct.Memory* %call2_4220ba, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edx	 RIP: 4220bf	 Bytes: 5
  %loadMem_4220bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220bf = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220bf)
  store %struct.Memory* %call_4220bf, %struct.Memory** %MEMORY

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 4220c4	 Bytes: 7
  %loadMem_4220c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220c4 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220c4)
  store %struct.Memory* %call_4220c4, %struct.Memory** %MEMORY

  ; Code: movl -0x6014(%rbp), %esi	 RIP: 4220cb	 Bytes: 6
  %loadMem_4220cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220cb = call %struct.Memory* @routine_movl_MINUS0x6014__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220cb)
  store %struct.Memory* %call_4220cb, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 4220d1	 Bytes: 5
  %loadMem1_4220d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4220d1 = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4220d1, i64 -113233, i64 5, i64 5)
  store %struct.Memory* %call1_4220d1, %struct.Memory** %MEMORY

  %loadMem2_4220d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4220d1 = load i64, i64* %3
  %call2_4220d1 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_4220d1, %struct.Memory* %loadMem2_4220d1)
  store %struct.Memory* %call2_4220d1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4220d6	 Bytes: 3
  %loadMem_4220d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220d6 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220d6)
  store %struct.Memory* %call_4220d6, %struct.Memory** %MEMORY

  ; Code: je .L_422100	 RIP: 4220d9	 Bytes: 6
  %loadMem_4220d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220d9 = call %struct.Memory* @routine_je_.L_422100(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220d9, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_4220d9, %struct.Memory** %MEMORY

  %loadBr_4220d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4220d9 = icmp eq i8 %loadBr_4220d9, 1
  br i1 %cmpBr_4220d9, label %block_.L_422100, label %block_4220df

block_4220df:
  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 4220df	 Bytes: 7
  %loadMem_4220df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220df = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220df)
  store %struct.Memory* %call_4220df, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6024(%rbp)	 RIP: 4220e6	 Bytes: 10
  %loadMem_4220e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220e6 = call %struct.Memory* @routine_movl__0x0__MINUS0x6024__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220e6)
  store %struct.Memory* %call_4220e6, %struct.Memory** %MEMORY

  ; Code: movl -0x6014(%rbp), %esi	 RIP: 4220f0	 Bytes: 6
  %loadMem_4220f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220f0 = call %struct.Memory* @routine_movl_MINUS0x6014__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220f0)
  store %struct.Memory* %call_4220f0, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 4220f6	 Bytes: 5
  %loadMem1_4220f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4220f6 = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4220f6, i64 -88406, i64 5, i64 5)
  store %struct.Memory* %call1_4220f6, %struct.Memory** %MEMORY

  %loadMem2_4220f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4220f6 = load i64, i64* %3
  %call2_4220f6 = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_4220f6, %struct.Memory* %loadMem2_4220f6)
  store %struct.Memory* %call2_4220f6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422126	 RIP: 4220fb	 Bytes: 5
  %loadMem_4220fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220fb = call %struct.Memory* @routine_jmpq_.L_422126(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220fb, i64 43, i64 5)
  store %struct.Memory* %call_4220fb, %struct.Memory** %MEMORY

  br label %block_.L_422126

  ; Code: .L_422100:	 RIP: 422100	 Bytes: 0
block_.L_422100:

  ; Code: leaq -0x6010(%rbp), %rdi	 RIP: 422100	 Bytes: 7
  %loadMem_422100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422100 = call %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422100)
  store %struct.Memory* %call_422100, %struct.Memory** %MEMORY

  ; Code: movl -0x6014(%rbp), %esi	 RIP: 422107	 Bytes: 6
  %loadMem_422107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422107 = call %struct.Memory* @routine_movl_MINUS0x6014__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422107)
  store %struct.Memory* %call_422107, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 42210d	 Bytes: 5
  %loadMem1_42210d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42210d = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42210d, i64 -88429, i64 5, i64 5)
  store %struct.Memory* %call1_42210d, %struct.Memory** %MEMORY

  %loadMem2_42210d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42210d = load i64, i64* %3
  %call2_42210d = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_42210d, %struct.Memory* %loadMem2_42210d)
  store %struct.Memory* %call2_42210d, %struct.Memory** %MEMORY

  ; Code: movl -0x6014(%rbp), %eax	 RIP: 422112	 Bytes: 6
  %loadMem_422112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422112 = call %struct.Memory* @routine_movl_MINUS0x6014__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422112)
  store %struct.Memory* %call_422112, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 422118	 Bytes: 3
  %loadMem_422118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422118 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422118)
  store %struct.Memory* %call_422118, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6014(%rbp)	 RIP: 42211b	 Bytes: 6
  %loadMem_42211b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42211b = call %struct.Memory* @routine_movl__eax__MINUS0x6014__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42211b)
  store %struct.Memory* %call_42211b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42209b	 RIP: 422121	 Bytes: 5
  %loadMem_422121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422121 = call %struct.Memory* @routine_jmpq_.L_42209b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422121, i64 -134, i64 5)
  store %struct.Memory* %call_422121, %struct.Memory** %MEMORY

  br label %block_.L_42209b

  ; Code: .L_422126:	 RIP: 422126	 Bytes: 0
block_.L_422126:

  ; Code: cmpl $0x1, -0x6024(%rbp)	 RIP: 422126	 Bytes: 7
  %loadMem_422126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422126 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x6024__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422126)
  store %struct.Memory* %call_422126, %struct.Memory** %MEMORY

  ; Code: jne .L_422152	 RIP: 42212d	 Bytes: 6
  %loadMem_42212d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42212d = call %struct.Memory* @routine_jne_.L_422152(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42212d, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_42212d, %struct.Memory** %MEMORY

  %loadBr_42212d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42212d = icmp eq i8 %loadBr_42212d, 1
  br i1 %cmpBr_42212d, label %block_.L_422152, label %block_422133

block_422133:
  ; Code: movq $0x4294e6, %rsi	 RIP: 422133	 Bytes: 10
  %loadMem_422133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422133 = call %struct.Memory* @routine_movq__0x4294e6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422133)
  store %struct.Memory* %call_422133, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42213d	 Bytes: 4
  %loadMem_42213d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42213d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42213d)
  store %struct.Memory* %call_42213d, %struct.Memory** %MEMORY

  ; Code: callq .strcat_plt	 RIP: 422141	 Bytes: 5
  %loadMem1_422141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422141 = call %struct.Memory* @routine_callq_.strcat_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422141, i64 -136065, i64 5, i64 5)
  store %struct.Memory* %call1_422141, %struct.Memory** %MEMORY

  %loadMem2_422141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422141 = load i64, i64* %3
  %call2_422141 = call %struct.Memory* @ext_strcat(%struct.State* %0, i64  %loadPC_422141, %struct.Memory* %loadMem2_422141)
  store %struct.Memory* %call2_422141, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x6088(%rbp)	 RIP: 422146	 Bytes: 7
  %loadMem_422146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422146 = call %struct.Memory* @routine_movq__rax__MINUS0x6088__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422146)
  store %struct.Memory* %call_422146, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42216c	 RIP: 42214d	 Bytes: 5
  %loadMem_42214d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42214d = call %struct.Memory* @routine_jmpq_.L_42216c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42214d, i64 31, i64 5)
  store %struct.Memory* %call_42214d, %struct.Memory** %MEMORY

  br label %block_.L_42216c

  ; Code: .L_422152:	 RIP: 422152	 Bytes: 0
block_.L_422152:

  ; Code: movq $0x428998, %rsi	 RIP: 422152	 Bytes: 10
  %loadMem_422152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422152 = call %struct.Memory* @routine_movq__0x428998___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422152)
  store %struct.Memory* %call_422152, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42215c	 Bytes: 4
  %loadMem_42215c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42215c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42215c)
  store %struct.Memory* %call_42215c, %struct.Memory** %MEMORY

  ; Code: callq .strcat_plt	 RIP: 422160	 Bytes: 5
  %loadMem1_422160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422160 = call %struct.Memory* @routine_callq_.strcat_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422160, i64 -136096, i64 5, i64 5)
  store %struct.Memory* %call1_422160, %struct.Memory** %MEMORY

  %loadMem2_422160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422160 = load i64, i64* %3
  %call2_422160 = call %struct.Memory* @ext_strcat(%struct.State* %0, i64  %loadPC_422160, %struct.Memory* %loadMem2_422160)
  store %struct.Memory* %call2_422160, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x6090(%rbp)	 RIP: 422165	 Bytes: 7
  %loadMem_422165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422165 = call %struct.Memory* @routine_movq__rax__MINUS0x6090__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422165)
  store %struct.Memory* %call_422165, %struct.Memory** %MEMORY

  ; Code: .L_42216c:	 RIP: 42216c	 Bytes: 0
  br label %block_.L_42216c
block_.L_42216c:

  ; Code: jmpq .L_422171	 RIP: 42216c	 Bytes: 5
  %loadMem_42216c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42216c = call %struct.Memory* @routine_jmpq_.L_422171(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42216c, i64 5, i64 5)
  store %struct.Memory* %call_42216c, %struct.Memory** %MEMORY

  br label %block_.L_422171

  ; Code: .L_422171:	 RIP: 422171	 Bytes: 0
block_.L_422171:

  ; Code: xorl %esi, %esi	 RIP: 422171	 Bytes: 2
  %loadMem_422171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422171 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422171)
  store %struct.Memory* %call_422171, %struct.Memory** %MEMORY

  ; Code: movq -0x6040(%rbp), %rdi	 RIP: 422173	 Bytes: 7
  %loadMem_422173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422173 = call %struct.Memory* @routine_movq_MINUS0x6040__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422173)
  store %struct.Memory* %call_422173, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 42217a	 Bytes: 5
  %loadMem1_42217a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42217a = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42217a, i64 -88538, i64 5, i64 5)
  store %struct.Memory* %call1_42217a, %struct.Memory** %MEMORY

  %loadMem2_42217a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42217a = load i64, i64* %3
  %call2_42217a = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_42217a, %struct.Memory* %loadMem2_42217a)
  store %struct.Memory* %call2_42217a, %struct.Memory** %MEMORY

  ; Code: .L_42217f:	 RIP: 42217f	 Bytes: 0
  br label %block_.L_42217f
block_.L_42217f:

  ; Code: addq $0x6090, %rsp	 RIP: 42217f	 Bytes: 7
  %loadMem_42217f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42217f = call %struct.Memory* @routine_addq__0x6090___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42217f)
  store %struct.Memory* %call_42217f, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 422186	 Bytes: 1
  %loadMem_422186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422186 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422186)
  store %struct.Memory* %call_422186, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 422187	 Bytes: 1
  %loadMem_422187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422187 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422187)
  store %struct.Memory* %call_422187, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_422187
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq___rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x425890___rdi_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4348048
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__ecx__MINUS0x6028__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24616
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_0x4__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__MINUS0x602c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24620
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movl__0x61__MINUS0x6030__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 97)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x425650___rdi_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4347472
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_addl_MINUS0x6030__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24624
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl___dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__dl__MINUS0x6031__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24625
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}












define %struct.Memory* @routine_movb__dl__MINUS0x6032__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24626
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rax__MINUS0x6040__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_jne_.L_421a35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x429ae5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429ae5_type* @G__0x429ae5 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq_MINUS0x6040__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_0xc__rax____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x427e20___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4357664
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24626
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x602c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24620
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_callq_.sprintf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x6044__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24644
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

define %struct.Memory* @routine_jmpq_.L_421ff3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movslq___rax____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cmpl__0x1__0x866540___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_je_.L_421a65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x2__0x866540___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 2)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_421ba0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_0x4__rax____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0xd__0x866540___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 13)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_421b0d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x14__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_421acd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x429ae8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429ae8_type* @G__0x429ae8 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24626
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x602c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0x6048__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24648
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_421b08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x429af0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429af0_type* @G__0x429af0 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movslq_0xc__rax____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x427e20___r8_4____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 4357664
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x604c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24652
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_421b9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jne_.L_421b53(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x429b12___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429b12_type* @G__0x429b12 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movsbl_MINUS0x6031__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24625
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__eax__MINUS0x6050__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24656
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_421b96(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x429aed___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429aed_type* @G__0x429aed to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movslq_0xc__rax____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x427e20___r9_4____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %R9
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 4357664
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x6054__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24660
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_421fee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x0__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_421c13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x1__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_421bd3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x3__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_421bf3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x429afa___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429afa_type* @G__0x429afa to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x6058__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24664
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_421c0e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x429af8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429af8_type* @G__0x429af8 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x605c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24668
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_421fe9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0xffffffff__MINUS0x6020__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x6018__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl__eax__MINUS0x6038__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24632
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x6014__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24596
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x6014__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24596
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

define %struct.Memory* @routine_jge_.L_421d6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x6014__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24596
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 24)
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


define %struct.Memory* @routine_jne_.L_421d53(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movslq___rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_0x866540___rax_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_cmpl_0x866540___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = mul i64 %14, 4
  %16 = add i64 %15, 8807744
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %16)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_je_.L_421d53(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x6014__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24596
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






define %struct.Memory* @routine_movl_MINUS0x6038__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24632
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


define %struct.Memory* @routine_je_.L_421d41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__esi__MINUS0x6020__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24608
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_421d6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_421d58(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_421c55(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x6020__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_421f3d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_421e65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x6020__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24608
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl_0x425650___rax_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4347472
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_cmpl_0x425650___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = mul i64 %14, 4
  %16 = add i64 %15, 4347472
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_421e17(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x429afe___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429afe_type* @G__0x429afe to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %11)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movsbl_MINUS0x6031__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24625
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsbl_MINUS0x6032__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24626
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x602c__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24620
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__MINUS0x6060__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24672
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_421e60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x429b07___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429b07_type* @G__0x429b07 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl_MINUS0x6028__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_421f38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




















define %struct.Memory* @routine_je_.L_421eea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x429b10___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429b10_type* @G__0x429b10 to i64))
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


define %struct.Memory* @routine_jmpq_.L_421f33(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x429b1a___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429b1a_type* @G__0x429b1a to i64))
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




define %struct.Memory* @routine_jmpq_.L_421fe4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_421f9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x429b00___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429b00_type* @G__0x429b00 to i64))
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


define %struct.Memory* @routine_jmpq_.L_421fdf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_xorl__esi___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x6040__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24640
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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








define %struct.Memory* @routine_jne_.L_422056(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x429b24___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x429b24_type* @G__0x429b24 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__esi__MINUS0x6078__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24696
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_movl_MINUS0x6078__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24696
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x6080__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24704
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jmpq_.L_42217f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_je_.L_422171(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x6024__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24612
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_cmpl_MINUS0x601c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 24604
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_422126(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_je_.L_422100(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x0__MINUS0x6024__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24612
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jmpq_.L_422126(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jmpq_.L_42209b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x6024__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24612
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_422152(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4294e6___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4294e6_type* @G__0x4294e6 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_callq_.strcat_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__MINUS0x6088__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24712
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_42216c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x428998___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428998_type* @G__0x428998 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__rax__MINUS0x6090__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24720
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_422171(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

