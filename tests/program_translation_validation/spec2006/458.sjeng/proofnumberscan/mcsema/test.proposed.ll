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

declare %struct.Memory* @sub_423760.rtime(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_407e30.gen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4098e0.in_check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40b730.make(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_406680.check_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40c7a0.unmake(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_412950.Xfree(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_412a30.pn_eval(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_413400.set_proof_and_disproof_numbers(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_423770.rdifftime(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4243e0.interrupt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4132d0.select_most_proving(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_413db0.develop_node(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_414180.update_ancestors(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_421970.comp_to_san(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x1360b__rip__type = type <{ [4 x i8] }>
@G_0x1360b__rip_= global %G_0x1360b__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x137e1__rip__type = type <{ [4 x i8] }>
@G_0x137e1__rip_= global %G_0x137e1__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62db04_type = type <{ [4 x i8] }>
@G_0x62db04= global %G_0x62db04_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62db08_type = type <{ [8 x i8] }>
@G_0x62db08= global %G_0x62db08_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62db10_type = type <{ [8 x i8] }>
@G_0x62db10= global %G_0x62db10_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62db18_type = type <{ [8 x i8] }>
@G_0x62db18= global %G_0x62db18_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62e4f8_type = type <{ [4 x i8] }>
@G_0x62e4f8= global %G_0x62e4f8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62e51c_type = type <{ [4 x i8] }>
@G_0x62e51c= global %G_0x62e51c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62ea20_type = type <{ [8 x i8] }>
@G_0x62ea20= global %G_0x62ea20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62ea28_type = type <{ [8 x i8] }>
@G_0x62ea28= global %G_0x62ea28_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62ea30_type = type <{ [8 x i8] }>
@G_0x62ea30= global %G_0x62ea30_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62ea38_type = type <{ [4 x i8] }>
@G_0x62ea38= global %G_0x62ea38_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x633b40_type = type <{ [4 x i8] }>
@G_0x633b40= global %G_0x633b40_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x633b54_type = type <{ [4 x i8] }>
@G_0x633b54= global %G_0x633b54_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x633b58_type = type <{ [4 x i8] }>
@G_0x633b58= global %G_0x633b58_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x85f150_type = type <{ [4 x i8] }>
@G_0x85f150= global %G_0x85f150_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x85f168_type = type <{ [4 x i8] }>
@G_0x85f168= global %G_0x85f168_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x85f3e8_type = type <{ [4 x i8] }>
@G_0x85f3e8= global %G_0x85f3e8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8661bc_type = type <{ [1 x i8] }>
@G_0x8661bc= global %G_0x8661bc_type <{ [1 x i8] c"\00" }>
%G_0x8661c8_type = type <{ [8 x i8] }>
@G_0x8661c8= global %G_0x8661c8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x86679c_type = type <{ [1 x i8] }>
@G_0x86679c= global %G_0x86679c_type <{ [1 x i8] c"\00" }>
%G_0x86bd80_type = type <{ [4 x i8] }>
@G_0x86bd80= global %G_0x86bd80_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86bd94_type = type <{ [4 x i8] }>
@G_0x86bd94= global %G_0x86bd94_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x880654_type = type <{ [4 x i8] }>
@G_0x880654= global %G_0x880654_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x886bb0_type = type <{ [4 x i8] }>
@G_0x886bb0= global %G_0x886bb0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x886bc0_type = type <{ [4 x i8] }>
@G_0x886bc0= global %G_0x886bc0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a2a04_type = type <{ [1 x i8] }>
@G_0x8a2a04= global %G_0x8a2a04_type <{ [1 x i8] c"\00" }>
%G__0x428e2f_type = type <{ [8 x i8] }>
@G__0x428e2f= global %G__0x428e2f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428e4b_type = type <{ [8 x i8] }>
@G__0x428e4b= global %G__0x428e4b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428e6d_type = type <{ [8 x i8] }>
@G__0x428e6d= global %G__0x428e6d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428ecb_type = type <{ [8 x i8] }>
@G__0x428ecb= global %G__0x428ecb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x886bf0_type = type <{ [8 x i8] }>
@G__0x886bf0= global %G__0x886bf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @proofnumberscan(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .proofnumberscan:	 RIP: 414310	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 414310	 Bytes: 1
  %loadMem_414310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414310 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414310)
  store %struct.Memory* %call_414310, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 414311	 Bytes: 3
  %loadMem_414311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414311 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414311)
  store %struct.Memory* %call_414311, %struct.Memory** %MEMORY

  ; Code: subq $0x40d0, %rsp	 RIP: 414314	 Bytes: 7
  %loadMem_414314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414314 = call %struct.Memory* @routine_subq__0x40d0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414314)
  store %struct.Memory* %call_414314, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4038(%rbp)	 RIP: 41431b	 Bytes: 10
  %loadMem_41431b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41431b = call %struct.Memory* @routine_movl__0x0__MINUS0x4038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41431b)
  store %struct.Memory* %call_41431b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x403c(%rbp)	 RIP: 414325	 Bytes: 10
  %loadMem_414325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414325 = call %struct.Memory* @routine_movl__0x0__MINUS0x403c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414325)
  store %struct.Memory* %call_414325, %struct.Memory** %MEMORY

  ; Code: callq .rtime	 RIP: 41432f	 Bytes: 5
  %loadMem1_41432f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41432f = call %struct.Memory* @routine_callq_.rtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41432f, i64 62513, i64 5, i64 5)
  store %struct.Memory* %call1_41432f, %struct.Memory** %MEMORY

  %loadMem2_41432f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41432f = load i64, i64* %3
  %call2_41432f = call %struct.Memory* @sub_423760.rtime(%struct.State* %0, i64  %loadPC_41432f, %struct.Memory* %loadMem2_41432f)
  store %struct.Memory* %call2_41432f, %struct.Memory** %MEMORY

  ; Code: movl $0x38, %ecx	 RIP: 414334	 Bytes: 5
  %loadMem_414334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414334 = call %struct.Memory* @routine_movl__0x38___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414334)
  store %struct.Memory* %call_414334, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 414339	 Bytes: 2
  %loadMem_414339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414339 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414339)
  store %struct.Memory* %call_414339, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x4018(%rbp)	 RIP: 41433b	 Bytes: 7
  %loadMem_41433b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41433b = call %struct.Memory* @routine_movq__rax__MINUS0x4018__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41433b)
  store %struct.Memory* %call_41433b, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bb0, %rdi	 RIP: 414342	 Bytes: 8
  %loadMem_414342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414342 = call %struct.Memory* @routine_movslq_0x886bb0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414342)
  store %struct.Memory* %call_414342, %struct.Memory** %MEMORY

  ; Code: callq .calloc_plt	 RIP: 41434a	 Bytes: 5
  %loadMem1_41434a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41434a = call %struct.Memory* @routine_callq_.calloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41434a, i64 -79434, i64 5, i64 5)
  store %struct.Memory* %call1_41434a, %struct.Memory** %MEMORY

  %loadMem2_41434a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41434a = load i64, i64* %3
  %call2_41434a = call %struct.Memory* @ext_calloc(%struct.State* %0, i64  %loadPC_41434a, %struct.Memory* %loadMem2_41434a)
  store %struct.Memory* %call2_41434a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 41434f	 Bytes: 5
  %loadMem_41434f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41434f = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41434f)
  store %struct.Memory* %call_41434f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edi	 RIP: 414354	 Bytes: 2
  %loadMem_414354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414354 = call %struct.Memory* @routine_movl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414354)
  store %struct.Memory* %call_414354, %struct.Memory** %MEMORY

  ; Code: movl $0x38, %ecx	 RIP: 414356	 Bytes: 5
  %loadMem_414356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414356 = call %struct.Memory* @routine_movl__0x38___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414356)
  store %struct.Memory* %call_414356, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 41435b	 Bytes: 2
  %loadMem_41435b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41435b = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41435b)
  store %struct.Memory* %call_41435b, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8661c8	 RIP: 41435d	 Bytes: 8
  %loadMem_41435d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41435d = call %struct.Memory* @routine_movq__rax__0x8661c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41435d)
  store %struct.Memory* %call_41435d, %struct.Memory** %MEMORY

  ; Code: callq .calloc_plt	 RIP: 414365	 Bytes: 5
  %loadMem1_414365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414365 = call %struct.Memory* @routine_callq_.calloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414365, i64 -79461, i64 5, i64 5)
  store %struct.Memory* %call1_414365, %struct.Memory** %MEMORY

  %loadMem2_414365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414365 = load i64, i64* %3
  %call2_414365 = call %struct.Memory* @ext_calloc(%struct.State* %0, i64  %loadPC_414365, %struct.Memory* %loadMem2_414365)
  store %struct.Memory* %call2_414365, %struct.Memory** %MEMORY

  ; Code: leaq -0x3000(%rbp), %rdi	 RIP: 41436a	 Bytes: 7
  %loadMem_41436a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41436a = call %struct.Memory* @routine_leaq_MINUS0x3000__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41436a)
  store %struct.Memory* %call_41436a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x4020(%rbp)	 RIP: 414371	 Bytes: 7
  %loadMem_414371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414371 = call %struct.Memory* @routine_movq__rax__MINUS0x4020__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414371)
  store %struct.Memory* %call_414371, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 414378	 Bytes: 5
  %loadMem1_414378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414378 = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414378, i64 -50504, i64 5, i64 5)
  store %struct.Memory* %call1_414378, %struct.Memory** %MEMORY

  %loadMem2_414378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414378 = load i64, i64* %3
  %call2_414378 = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_414378, %struct.Memory* %loadMem2_414378)
  store %struct.Memory* %call2_414378, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 41437d	 Bytes: 2
  %loadMem_41437d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41437d = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41437d)
  store %struct.Memory* %call_41437d, %struct.Memory** %MEMORY

  ; Code: movl $0x800, %edx	 RIP: 41437f	 Bytes: 5
  %loadMem_41437f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41437f = call %struct.Memory* @routine_movl__0x800___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41437f)
  store %struct.Memory* %call_41437f, %struct.Memory** %MEMORY

  ; Code: leaq -0x4000(%rbp), %rax	 RIP: 414384	 Bytes: 7
  %loadMem_414384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414384 = call %struct.Memory* @routine_leaq_MINUS0x4000__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414384)
  store %struct.Memory* %call_414384, %struct.Memory** %MEMORY

  ; Code: movq $0x886bf0, %rsi	 RIP: 41438b	 Bytes: 10
  %loadMem_41438b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41438b = call %struct.Memory* @routine_movq__0x886bf0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41438b)
  store %struct.Memory* %call_41438b, %struct.Memory** %MEMORY

  ; Code: movl $0x4b0, %r8d	 RIP: 414395	 Bytes: 6
  %loadMem_414395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414395 = call %struct.Memory* @routine_movl__0x4b0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414395)
  store %struct.Memory* %call_414395, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %edi	 RIP: 41439b	 Bytes: 3
  %loadMem_41439b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41439b = call %struct.Memory* @routine_movl__r8d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41439b)
  store %struct.Memory* %call_41439b, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %r8d	 RIP: 41439e	 Bytes: 8
  %loadMem_41439e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41439e = call %struct.Memory* @routine_movl_0x85f150___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41439e)
  store %struct.Memory* %call_41439e, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x4010(%rbp)	 RIP: 4143a6	 Bytes: 7
  %loadMem_4143a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4143a6 = call %struct.Memory* @routine_movl__r8d__MINUS0x4010__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4143a6)
  store %struct.Memory* %call_4143a6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62e51c	 RIP: 4143ad	 Bytes: 11
  %loadMem_4143ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4143ad = call %struct.Memory* @routine_movl__0x0__0x62e51c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4143ad)
  store %struct.Memory* %call_4143ad, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x4080(%rbp)	 RIP: 4143b8	 Bytes: 7
  %loadMem_4143b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4143b8 = call %struct.Memory* @routine_movq__rdi__MINUS0x4080__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4143b8)
  store %struct.Memory* %call_4143b8, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 4143bf	 Bytes: 3
  %loadMem_4143bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4143bf = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4143bf)
  store %struct.Memory* %call_4143bf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 4143c2	 Bytes: 2
  %loadMem_4143c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4143c2 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4143c2)
  store %struct.Memory* %call_4143c2, %struct.Memory** %MEMORY

  ; Code: movq -0x4080(%rbp), %r9	 RIP: 4143c4	 Bytes: 7
  %loadMem_4143c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4143c4 = call %struct.Memory* @routine_movq_MINUS0x4080__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4143c4)
  store %struct.Memory* %call_4143c4, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x4088(%rbp)	 RIP: 4143cb	 Bytes: 7
  %loadMem_4143cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4143cb = call %struct.Memory* @routine_movq__rdx__MINUS0x4088__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4143cb)
  store %struct.Memory* %call_4143cb, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdx	 RIP: 4143d2	 Bytes: 3
  %loadMem_4143d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4143d2 = call %struct.Memory* @routine_movq__r9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4143d2)
  store %struct.Memory* %call_4143d2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x408c(%rbp)	 RIP: 4143d5	 Bytes: 6
  %loadMem_4143d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4143d5 = call %struct.Memory* @routine_movl__ecx__MINUS0x408c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4143d5)
  store %struct.Memory* %call_4143d5, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x4098(%rbp)	 RIP: 4143db	 Bytes: 7
  %loadMem_4143db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4143db = call %struct.Memory* @routine_movq__rax__MINUS0x4098__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4143db)
  store %struct.Memory* %call_4143db, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 4143e2	 Bytes: 5
  %loadMem1_4143e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4143e2 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4143e2, i64 -79634, i64 5, i64 5)
  store %struct.Memory* %call1_4143e2, %struct.Memory** %MEMORY

  %loadMem2_4143e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4143e2 = load i64, i64* %3
  %call2_4143e2 = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_4143e2, %struct.Memory* %loadMem2_4143e2)
  store %struct.Memory* %call2_4143e2, %struct.Memory** %MEMORY

  ; Code: movq -0x4098(%rbp), %rax	 RIP: 4143e7	 Bytes: 7
  %loadMem_4143e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4143e7 = call %struct.Memory* @routine_movq_MINUS0x4098__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4143e7)
  store %struct.Memory* %call_4143e7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4143ee	 Bytes: 3
  %loadMem_4143ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4143ee = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4143ee)
  store %struct.Memory* %call_4143ee, %struct.Memory** %MEMORY

  ; Code: movl -0x408c(%rbp), %esi	 RIP: 4143f1	 Bytes: 6
  %loadMem_4143f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4143f1 = call %struct.Memory* @routine_movl_MINUS0x408c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4143f1)
  store %struct.Memory* %call_4143f1, %struct.Memory** %MEMORY

  ; Code: movq -0x4088(%rbp), %rdx	 RIP: 4143f7	 Bytes: 7
  %loadMem_4143f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4143f7 = call %struct.Memory* @routine_movq_MINUS0x4088__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4143f7)
  store %struct.Memory* %call_4143f7, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 4143fe	 Bytes: 5
  %loadMem1_4143fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4143fe = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4143fe, i64 -79662, i64 5, i64 5)
  store %struct.Memory* %call1_4143fe, %struct.Memory** %MEMORY

  %loadMem2_4143fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4143fe = load i64, i64* %3
  %call2_4143fe = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_4143fe, %struct.Memory* %loadMem2_4143fe)
  store %struct.Memory* %call2_4143fe, %struct.Memory** %MEMORY

  ; Code: movq 0x62db08, %rax	 RIP: 414403	 Bytes: 8
  %loadMem_414403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414403 = call %struct.Memory* @routine_movq_0x62db08___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414403)
  store %struct.Memory* %call_414403, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x62ea20	 RIP: 41440b	 Bytes: 8
  %loadMem_41440b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41440b = call %struct.Memory* @routine_movq__rax__0x62ea20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41440b)
  store %struct.Memory* %call_41440b, %struct.Memory** %MEMORY

  ; Code: movq 0x62db10, %rax	 RIP: 414413	 Bytes: 8
  %loadMem_414413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414413 = call %struct.Memory* @routine_movq_0x62db10___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414413)
  store %struct.Memory* %call_414413, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x62ea28	 RIP: 41441b	 Bytes: 8
  %loadMem_41441b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41441b = call %struct.Memory* @routine_movq__rax__0x62ea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41441b)
  store %struct.Memory* %call_41441b, %struct.Memory** %MEMORY

  ; Code: movq 0x62db18, %rax	 RIP: 414423	 Bytes: 8
  %loadMem_414423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414423 = call %struct.Memory* @routine_movq_0x62db18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414423)
  store %struct.Memory* %call_414423, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x62ea30	 RIP: 41442b	 Bytes: 8
  %loadMem_41442b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41442b = call %struct.Memory* @routine_movq__rax__0x62ea30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41442b)
  store %struct.Memory* %call_41442b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x400c(%rbp)	 RIP: 414433	 Bytes: 10
  %loadMem_414433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414433 = call %struct.Memory* @routine_movl__0x0__MINUS0x400c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414433)
  store %struct.Memory* %call_414433, %struct.Memory** %MEMORY

  ; Code: callq .in_check	 RIP: 41443d	 Bytes: 5
  %loadMem1_41443d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41443d = call %struct.Memory* @routine_callq_.in_check(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41443d, i64 -43869, i64 5, i64 5)
  store %struct.Memory* %call1_41443d, %struct.Memory** %MEMORY

  %loadMem2_41443d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41443d = load i64, i64* %3
  %call2_41443d = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64  %loadPC_41443d, %struct.Memory* %loadMem2_41443d)
  store %struct.Memory* %call2_41443d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4058(%rbp)	 RIP: 414442	 Bytes: 6
  %loadMem_414442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414442 = call %struct.Memory* @routine_movl__eax__MINUS0x4058__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414442)
  store %struct.Memory* %call_414442, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4004(%rbp)	 RIP: 414448	 Bytes: 10
  %loadMem_414448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414448 = call %struct.Memory* @routine_movl__0x0__MINUS0x4004__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414448)
  store %struct.Memory* %call_414448, %struct.Memory** %MEMORY

  ; Code: .L_414452:	 RIP: 414452	 Bytes: 0
  br label %block_.L_414452
block_.L_414452:

  ; Code: movl -0x4004(%rbp), %eax	 RIP: 414452	 Bytes: 6
  %loadMem_414452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414452 = call %struct.Memory* @routine_movl_MINUS0x4004__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414452)
  store %struct.Memory* %call_414452, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4010(%rbp), %eax	 RIP: 414458	 Bytes: 6
  %loadMem_414458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414458 = call %struct.Memory* @routine_cmpl_MINUS0x4010__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414458)
  store %struct.Memory* %call_414458, %struct.Memory** %MEMORY

  ; Code: jge .L_4144f5	 RIP: 41445e	 Bytes: 6
  %loadMem_41445e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41445e = call %struct.Memory* @routine_jge_.L_4144f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41445e, i8* %BRANCH_TAKEN, i64 151, i64 6, i64 6)
  store %struct.Memory* %call_41445e, %struct.Memory** %MEMORY

  %loadBr_41445e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41445e = icmp eq i8 %loadBr_41445e, 1
  br i1 %cmpBr_41445e, label %block_.L_4144f5, label %block_414464

block_414464:
  ; Code: leaq -0x3000(%rbp), %rdi	 RIP: 414464	 Bytes: 7
  %loadMem_414464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414464 = call %struct.Memory* @routine_leaq_MINUS0x3000__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414464)
  store %struct.Memory* %call_414464, %struct.Memory** %MEMORY

  ; Code: movl -0x4004(%rbp), %esi	 RIP: 41446b	 Bytes: 6
  %loadMem_41446b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41446b = call %struct.Memory* @routine_movl_MINUS0x4004__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41446b)
  store %struct.Memory* %call_41446b, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 414471	 Bytes: 5
  %loadMem1_414471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414471 = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414471, i64 -36161, i64 5, i64 5)
  store %struct.Memory* %call1_414471, %struct.Memory** %MEMORY

  %loadMem2_414471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414471 = load i64, i64* %3
  %call2_414471 = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_414471, %struct.Memory* %loadMem2_414471)
  store %struct.Memory* %call2_414471, %struct.Memory** %MEMORY

  ; Code: leaq -0x3000(%rbp), %rdi	 RIP: 414476	 Bytes: 7
  %loadMem_414476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414476 = call %struct.Memory* @routine_leaq_MINUS0x3000__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414476)
  store %struct.Memory* %call_414476, %struct.Memory** %MEMORY

  ; Code: movl -0x4004(%rbp), %esi	 RIP: 41447d	 Bytes: 6
  %loadMem_41447d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41447d = call %struct.Memory* @routine_movl_MINUS0x4004__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41447d)
  store %struct.Memory* %call_41447d, %struct.Memory** %MEMORY

  ; Code: movl -0x4058(%rbp), %edx	 RIP: 414483	 Bytes: 6
  %loadMem_414483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414483 = call %struct.Memory* @routine_movl_MINUS0x4058__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414483)
  store %struct.Memory* %call_414483, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 414489	 Bytes: 5
  %loadMem1_414489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414489 = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414489, i64 -56841, i64 5, i64 5)
  store %struct.Memory* %call1_414489, %struct.Memory** %MEMORY

  %loadMem2_414489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414489 = load i64, i64* %3
  %call2_414489 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_414489, %struct.Memory* %loadMem2_414489)
  store %struct.Memory* %call2_414489, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41448e	 Bytes: 3
  %loadMem_41448e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41448e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41448e)
  store %struct.Memory* %call_41448e, %struct.Memory** %MEMORY

  ; Code: je .L_4144bd	 RIP: 414491	 Bytes: 6
  %loadMem_414491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414491 = call %struct.Memory* @routine_je_.L_4144bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414491, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_414491, %struct.Memory** %MEMORY

  %loadBr_414491 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414491 = icmp eq i8 %loadBr_414491, 1
  br i1 %cmpBr_414491, label %block_.L_4144bd, label %block_414497

block_414497:
  ; Code: movl -0x400c(%rbp), %eax	 RIP: 414497	 Bytes: 6
  %loadMem_414497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414497 = call %struct.Memory* @routine_movl_MINUS0x400c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414497)
  store %struct.Memory* %call_414497, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41449d	 Bytes: 3
  %loadMem_41449d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41449d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41449d)
  store %struct.Memory* %call_41449d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x400c(%rbp)	 RIP: 4144a0	 Bytes: 6
  %loadMem_4144a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4144a0 = call %struct.Memory* @routine_movl__eax__MINUS0x400c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4144a0)
  store %struct.Memory* %call_4144a0, %struct.Memory** %MEMORY

  ; Code: movslq -0x4004(%rbp), %rcx	 RIP: 4144a6	 Bytes: 7
  %loadMem_4144a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4144a6 = call %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4144a6)
  store %struct.Memory* %call_4144a6, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x3800(%rbp,%rcx,4)	 RIP: 4144ad	 Bytes: 11
  %loadMem_4144ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4144ad = call %struct.Memory* @routine_movl__0x1__MINUS0x3800__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4144ad)
  store %struct.Memory* %call_4144ad, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4144cf	 RIP: 4144b8	 Bytes: 5
  %loadMem_4144b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4144b8 = call %struct.Memory* @routine_jmpq_.L_4144cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4144b8, i64 23, i64 5)
  store %struct.Memory* %call_4144b8, %struct.Memory** %MEMORY

  br label %block_.L_4144cf

  ; Code: .L_4144bd:	 RIP: 4144bd	 Bytes: 0
block_.L_4144bd:

  ; Code: movslq -0x4004(%rbp), %rax	 RIP: 4144bd	 Bytes: 7
  %loadMem_4144bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4144bd = call %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4144bd)
  store %struct.Memory* %call_4144bd, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3800(%rbp,%rax,4)	 RIP: 4144c4	 Bytes: 11
  %loadMem_4144c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4144c4 = call %struct.Memory* @routine_movl__0x0__MINUS0x3800__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4144c4)
  store %struct.Memory* %call_4144c4, %struct.Memory** %MEMORY

  ; Code: .L_4144cf:	 RIP: 4144cf	 Bytes: 0
  br label %block_.L_4144cf
block_.L_4144cf:

  ; Code: leaq -0x3000(%rbp), %rdi	 RIP: 4144cf	 Bytes: 7
  %loadMem_4144cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4144cf = call %struct.Memory* @routine_leaq_MINUS0x3000__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4144cf)
  store %struct.Memory* %call_4144cf, %struct.Memory** %MEMORY

  ; Code: movl -0x4004(%rbp), %esi	 RIP: 4144d6	 Bytes: 6
  %loadMem_4144d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4144d6 = call %struct.Memory* @routine_movl_MINUS0x4004__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4144d6)
  store %struct.Memory* %call_4144d6, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 4144dc	 Bytes: 5
  %loadMem1_4144dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4144dc = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4144dc, i64 -32060, i64 5, i64 5)
  store %struct.Memory* %call1_4144dc, %struct.Memory** %MEMORY

  %loadMem2_4144dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4144dc = load i64, i64* %3
  %call2_4144dc = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_4144dc, %struct.Memory* %loadMem2_4144dc)
  store %struct.Memory* %call2_4144dc, %struct.Memory** %MEMORY

  ; Code: movl -0x4004(%rbp), %eax	 RIP: 4144e1	 Bytes: 6
  %loadMem_4144e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4144e1 = call %struct.Memory* @routine_movl_MINUS0x4004__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4144e1)
  store %struct.Memory* %call_4144e1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4144e7	 Bytes: 3
  %loadMem_4144e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4144e7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4144e7)
  store %struct.Memory* %call_4144e7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4004(%rbp)	 RIP: 4144ea	 Bytes: 6
  %loadMem_4144ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4144ea = call %struct.Memory* @routine_movl__eax__MINUS0x4004__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4144ea)
  store %struct.Memory* %call_4144ea, %struct.Memory** %MEMORY

  ; Code: jmpq .L_414452	 RIP: 4144f0	 Bytes: 5
  %loadMem_4144f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4144f0 = call %struct.Memory* @routine_jmpq_.L_414452(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4144f0, i64 -158, i64 5)
  store %struct.Memory* %call_4144f0, %struct.Memory** %MEMORY

  br label %block_.L_414452

  ; Code: .L_4144f5:	 RIP: 4144f5	 Bytes: 0
block_.L_4144f5:

  ; Code: cmpl $0x0, -0x400c(%rbp)	 RIP: 4144f5	 Bytes: 7
  %loadMem_4144f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4144f5 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x400c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4144f5)
  store %struct.Memory* %call_4144f5, %struct.Memory** %MEMORY

  ; Code: jne .L_414525	 RIP: 4144fc	 Bytes: 6
  %loadMem_4144fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4144fc = call %struct.Memory* @routine_jne_.L_414525(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4144fc, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_4144fc, %struct.Memory** %MEMORY

  %loadBr_4144fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4144fc = icmp eq i8 %loadBr_4144fc, 1
  br i1 %cmpBr_4144fc, label %block_.L_414525, label %block_414502

block_414502:
  ; Code: callq .Xfree	 RIP: 414502	 Bytes: 5
  %loadMem1_414502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414502 = call %struct.Memory* @routine_callq_.Xfree(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414502, i64 -7090, i64 5, i64 5)
  store %struct.Memory* %call1_414502, %struct.Memory** %MEMORY

  %loadMem2_414502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414502 = load i64, i64* %3
  %call2_414502 = call %struct.Memory* @sub_412950.Xfree(%struct.State* %0, i64  %loadPC_414502, %struct.Memory* %loadMem2_414502)
  store %struct.Memory* %call2_414502, %struct.Memory** %MEMORY

  ; Code: movq 0x8661c8, %rdi	 RIP: 414507	 Bytes: 8
  %loadMem_414507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414507 = call %struct.Memory* @routine_movq_0x8661c8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414507)
  store %struct.Memory* %call_414507, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 41450f	 Bytes: 5
  %loadMem1_41450f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41450f = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41450f, i64 -80079, i64 5, i64 5)
  store %struct.Memory* %call1_41450f, %struct.Memory** %MEMORY

  %loadMem2_41450f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41450f = load i64, i64* %3
  %call2_41450f = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_41450f, %struct.Memory* %loadMem2_41450f)
  store %struct.Memory* %call2_41450f, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rdi	 RIP: 414514	 Bytes: 7
  %loadMem_414514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414514 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414514)
  store %struct.Memory* %call_414514, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 41451b	 Bytes: 5
  %loadMem1_41451b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41451b = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41451b, i64 -80091, i64 5, i64 5)
  store %struct.Memory* %call1_41451b, %struct.Memory** %MEMORY

  %loadMem2_41451b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41451b = load i64, i64* %3
  %call2_41451b = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_41451b, %struct.Memory* %loadMem2_41451b)
  store %struct.Memory* %call2_41451b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_414fe0	 RIP: 414520	 Bytes: 5
  %loadMem_414520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414520 = call %struct.Memory* @routine_jmpq_.L_414fe0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414520, i64 2752, i64 5)
  store %struct.Memory* %call_414520, %struct.Memory** %MEMORY

  br label %block_.L_414fe0

  ; Code: .L_414525:	 RIP: 414525	 Bytes: 0
block_.L_414525:

  ; Code: movl $0x1, %eax	 RIP: 414525	 Bytes: 5
  %loadMem_414525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414525 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414525)
  store %struct.Memory* %call_414525, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 41452a	 Bytes: 2
  %loadMem_41452a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41452a = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41452a)
  store %struct.Memory* %call_41452a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4040(%rbp)	 RIP: 41452c	 Bytes: 10
  %loadMem_41452c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41452c = call %struct.Memory* @routine_movl__0x0__MINUS0x4040__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41452c)
  store %struct.Memory* %call_41452c, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x85f3e8	 RIP: 414536	 Bytes: 11
  %loadMem_414536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414536 = call %struct.Memory* @routine_movl__0x1__0x85f3e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414536)
  store %struct.Memory* %call_414536, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86bd94	 RIP: 414541	 Bytes: 11
  %loadMem_414541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414541 = call %struct.Memory* @routine_movl__0x0__0x86bd94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414541)
  store %struct.Memory* %call_414541, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86bd80	 RIP: 41454c	 Bytes: 11
  %loadMem_41454c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41454c = call %struct.Memory* @routine_movl__0x0__0x86bd80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41454c)
  store %struct.Memory* %call_41454c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x633b58	 RIP: 414557	 Bytes: 11
  %loadMem_414557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414557 = call %struct.Memory* @routine_movl__0x0__0x633b58(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414557)
  store %struct.Memory* %call_414557, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4048(%rbp)	 RIP: 414562	 Bytes: 10
  %loadMem_414562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414562 = call %struct.Memory* @routine_movl__0x0__MINUS0x4048__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414562)
  store %struct.Memory* %call_414562, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x404c(%rbp)	 RIP: 41456c	 Bytes: 10
  %loadMem_41456c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41456c = call %struct.Memory* @routine_movl__0x0__MINUS0x404c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41456c)
  store %struct.Memory* %call_41456c, %struct.Memory** %MEMORY

  ; Code: movl 0x633b40, %edx	 RIP: 414576	 Bytes: 7
  %loadMem_414576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414576 = call %struct.Memory* @routine_movl_0x633b40___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414576)
  store %struct.Memory* %call_414576, %struct.Memory** %MEMORY

  ; Code: movl 0x62ea38, %esi	 RIP: 41457d	 Bytes: 7
  %loadMem_41457d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41457d = call %struct.Memory* @routine_movl_0x62ea38___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41457d)
  store %struct.Memory* %call_41457d, %struct.Memory** %MEMORY

  ; Code: addl 0x886bc0, %esi	 RIP: 414584	 Bytes: 7
  %loadMem_414584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414584 = call %struct.Memory* @routine_addl_0x886bc0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414584)
  store %struct.Memory* %call_414584, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 41458b	 Bytes: 3
  %loadMem_41458b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41458b = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41458b)
  store %struct.Memory* %call_41458b, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 41458e	 Bytes: 3
  %loadMem_41458e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41458e = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41458e)
  store %struct.Memory* %call_41458e, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x84a3d0(,%rdi,4)	 RIP: 414591	 Bytes: 7
  %loadMem_414591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414591 = call %struct.Memory* @routine_movl__edx__0x84a3d0___rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414591)
  store %struct.Memory* %call_414591, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 414598	 Bytes: 8
  %loadMem_414598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414598 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414598)
  store %struct.Memory* %call_414598, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 4145a0	 Bytes: 3
  %loadMem_4145a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4145a0 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4145a0)
  store %struct.Memory* %call_4145a0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b54	 RIP: 4145a3	 Bytes: 7
  %loadMem_4145a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4145a3 = call %struct.Memory* @routine_movl__eax__0x633b54(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4145a3)
  store %struct.Memory* %call_4145a3, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rdi	 RIP: 4145aa	 Bytes: 7
  %loadMem_4145aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4145aa = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4145aa)
  store %struct.Memory* %call_4145aa, %struct.Memory** %MEMORY

  ; Code: callq .pn_eval	 RIP: 4145b1	 Bytes: 5
  %loadMem1_4145b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4145b1 = call %struct.Memory* @routine_callq_.pn_eval(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4145b1, i64 -7041, i64 5, i64 5)
  store %struct.Memory* %call1_4145b1, %struct.Memory** %MEMORY

  %loadMem2_4145b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4145b1 = load i64, i64* %3
  %call2_4145b1 = call %struct.Memory* @sub_412a30.pn_eval(%struct.State* %0, i64  %loadPC_4145b1, %struct.Memory* %loadMem2_4145b1)
  store %struct.Memory* %call2_4145b1, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rdi	 RIP: 4145b6	 Bytes: 7
  %loadMem_4145b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4145b6 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4145b6)
  store %struct.Memory* %call_4145b6, %struct.Memory** %MEMORY

  ; Code: movzbl (%rdi), %eax	 RIP: 4145bd	 Bytes: 3
  %loadMem_4145bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4145bd = call %struct.Memory* @routine_movzbl___rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4145bd)
  store %struct.Memory* %call_4145bd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 4145c0	 Bytes: 3
  %loadMem_4145c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4145c0 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4145c0)
  store %struct.Memory* %call_4145c0, %struct.Memory** %MEMORY

  ; Code: je .L_4145dc	 RIP: 4145c3	 Bytes: 6
  %loadMem_4145c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4145c3 = call %struct.Memory* @routine_je_.L_4145dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4145c3, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4145c3, %struct.Memory** %MEMORY

  %loadBr_4145c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4145c3 = icmp eq i8 %loadBr_4145c3, 1
  br i1 %cmpBr_4145c3, label %block_.L_4145dc, label %block_4145c9

block_4145c9:
  ; Code: movq -0x4020(%rbp), %rax	 RIP: 4145c9	 Bytes: 7
  %loadMem_4145c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4145c9 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4145c9)
  store %struct.Memory* %call_4145c9, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 4145d0	 Bytes: 3
  %loadMem_4145d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4145d0 = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4145d0)
  store %struct.Memory* %call_4145d0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4145d3	 Bytes: 3
  %loadMem_4145d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4145d3 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4145d3)
  store %struct.Memory* %call_4145d3, %struct.Memory** %MEMORY

  ; Code: jne .L_41462f	 RIP: 4145d6	 Bytes: 6
  %loadMem_4145d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4145d6 = call %struct.Memory* @routine_jne_.L_41462f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4145d6, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_4145d6, %struct.Memory** %MEMORY

  %loadBr_4145d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4145d6 = icmp eq i8 %loadBr_4145d6, 1
  br i1 %cmpBr_4145d6, label %block_.L_41462f, label %block_.L_4145dc

  ; Code: .L_4145dc:	 RIP: 4145dc	 Bytes: 0
block_.L_4145dc:

  ; Code: callq .Xfree	 RIP: 4145dc	 Bytes: 5
  %loadMem1_4145dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4145dc = call %struct.Memory* @routine_callq_.Xfree(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4145dc, i64 -7308, i64 5, i64 5)
  store %struct.Memory* %call1_4145dc, %struct.Memory** %MEMORY

  %loadMem2_4145dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4145dc = load i64, i64* %3
  %call2_4145dc = call %struct.Memory* @sub_412950.Xfree(%struct.State* %0, i64  %loadPC_4145dc, %struct.Memory* %loadMem2_4145dc)
  store %struct.Memory* %call2_4145dc, %struct.Memory** %MEMORY

  ; Code: movq 0x8661c8, %rdi	 RIP: 4145e1	 Bytes: 8
  %loadMem_4145e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4145e1 = call %struct.Memory* @routine_movq_0x8661c8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4145e1)
  store %struct.Memory* %call_4145e1, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 4145e9	 Bytes: 5
  %loadMem1_4145e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4145e9 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4145e9, i64 -80297, i64 5, i64 5)
  store %struct.Memory* %call1_4145e9, %struct.Memory** %MEMORY

  %loadMem2_4145e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4145e9 = load i64, i64* %3
  %call2_4145e9 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_4145e9, %struct.Memory* %loadMem2_4145e9)
  store %struct.Memory* %call2_4145e9, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rdi	 RIP: 4145ee	 Bytes: 7
  %loadMem_4145ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4145ee = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4145ee)
  store %struct.Memory* %call_4145ee, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 4145f5	 Bytes: 5
  %loadMem1_4145f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4145f5 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4145f5, i64 -80309, i64 5, i64 5)
  store %struct.Memory* %call1_4145f5, %struct.Memory** %MEMORY

  %loadMem2_4145f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4145f5 = load i64, i64* %3
  %call2_4145f5 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_4145f5, %struct.Memory* %loadMem2_4145f5)
  store %struct.Memory* %call2_4145f5, %struct.Memory** %MEMORY

  ; Code: movq 0x62db08, %rdi	 RIP: 4145fa	 Bytes: 8
  %loadMem_4145fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4145fa = call %struct.Memory* @routine_movq_0x62db08___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4145fa)
  store %struct.Memory* %call_4145fa, %struct.Memory** %MEMORY

  ; Code: movq %rdi, 0x62ea20	 RIP: 414602	 Bytes: 8
  %loadMem_414602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414602 = call %struct.Memory* @routine_movq__rdi__0x62ea20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414602)
  store %struct.Memory* %call_414602, %struct.Memory** %MEMORY

  ; Code: movq 0x62db10, %rdi	 RIP: 41460a	 Bytes: 8
  %loadMem_41460a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41460a = call %struct.Memory* @routine_movq_0x62db10___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41460a)
  store %struct.Memory* %call_41460a, %struct.Memory** %MEMORY

  ; Code: movq %rdi, 0x62ea28	 RIP: 414612	 Bytes: 8
  %loadMem_414612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414612 = call %struct.Memory* @routine_movq__rdi__0x62ea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414612)
  store %struct.Memory* %call_414612, %struct.Memory** %MEMORY

  ; Code: movq 0x62db18, %rdi	 RIP: 41461a	 Bytes: 8
  %loadMem_41461a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41461a = call %struct.Memory* @routine_movq_0x62db18___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41461a)
  store %struct.Memory* %call_41461a, %struct.Memory** %MEMORY

  ; Code: movq %rdi, 0x62ea30	 RIP: 414622	 Bytes: 8
  %loadMem_414622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414622 = call %struct.Memory* @routine_movq__rdi__0x62ea30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414622)
  store %struct.Memory* %call_414622, %struct.Memory** %MEMORY

  ; Code: jmpq .L_414fe0	 RIP: 41462a	 Bytes: 5
  %loadMem_41462a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41462a = call %struct.Memory* @routine_jmpq_.L_414fe0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41462a, i64 2486, i64 5)
  store %struct.Memory* %call_41462a, %struct.Memory** %MEMORY

  br label %block_.L_414fe0

  ; Code: .L_41462f:	 RIP: 41462f	 Bytes: 0
block_.L_41462f:

  ; Code: movq -0x4020(%rbp), %rdi	 RIP: 41462f	 Bytes: 7
  %loadMem_41462f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41462f = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41462f)
  store %struct.Memory* %call_41462f, %struct.Memory** %MEMORY

  ; Code: callq .set_proof_and_disproof_numbers	 RIP: 414636	 Bytes: 5
  %loadMem1_414636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414636 = call %struct.Memory* @routine_callq_.set_proof_and_disproof_numbers(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414636, i64 -4662, i64 5, i64 5)
  store %struct.Memory* %call1_414636, %struct.Memory** %MEMORY

  %loadMem2_414636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414636 = load i64, i64* %3
  %call2_414636 = call %struct.Memory* @sub_413400.set_proof_and_disproof_numbers(%struct.State* %0, i64  %loadPC_414636, %struct.Memory* %loadMem2_414636)
  store %struct.Memory* %call2_414636, %struct.Memory** %MEMORY

  ; Code: .L_41463b:	 RIP: 41463b	 Bytes: 0
  br label %block_.L_41463b
block_.L_41463b:

  ; Code: callq .rtime	 RIP: 41463b	 Bytes: 5
  %loadMem1_41463b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41463b = call %struct.Memory* @routine_callq_.rtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41463b, i64 61733, i64 5, i64 5)
  store %struct.Memory* %call1_41463b, %struct.Memory** %MEMORY

  %loadMem2_41463b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41463b = load i64, i64* %3
  %call2_41463b = call %struct.Memory* @sub_423760.rtime(%struct.State* %0, i64  %loadPC_41463b, %struct.Memory* %loadMem2_41463b)
  store %struct.Memory* %call2_41463b, %struct.Memory** %MEMORY

  ; Code: movq -0x4018(%rbp), %rsi	 RIP: 414640	 Bytes: 7
  %loadMem_414640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414640 = call %struct.Memory* @routine_movq_MINUS0x4018__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414640)
  store %struct.Memory* %call_414640, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 414647	 Bytes: 3
  %loadMem_414647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414647 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414647)
  store %struct.Memory* %call_414647, %struct.Memory** %MEMORY

  ; Code: callq .rdifftime	 RIP: 41464a	 Bytes: 5
  %loadMem1_41464a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41464a = call %struct.Memory* @routine_callq_.rdifftime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41464a, i64 61734, i64 5, i64 5)
  store %struct.Memory* %call1_41464a, %struct.Memory** %MEMORY

  %loadMem2_41464a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41464a = load i64, i64* %3
  %call2_41464a = call %struct.Memory* @sub_423770.rdifftime(%struct.State* %0, i64  %loadPC_41464a, %struct.Memory* %loadMem2_41464a)
  store %struct.Memory* %call2_41464a, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 41464f	 Bytes: 2
  %loadMem_41464f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41464f = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41464f)
  store %struct.Memory* %call_41464f, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 414651	 Bytes: 2
  %loadMem_414651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414651 = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414651)
  store %struct.Memory* %call_414651, %struct.Memory** %MEMORY

  ; Code: cmpl 0x85f168, %eax	 RIP: 414653	 Bytes: 7
  %loadMem_414653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414653 = call %struct.Memory* @routine_cmpl_0x85f168___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414653)
  store %struct.Memory* %call_414653, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x4099(%rbp)	 RIP: 41465a	 Bytes: 6
  %loadMem_41465a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41465a = call %struct.Memory* @routine_movb__dl__MINUS0x4099__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41465a)
  store %struct.Memory* %call_41465a, %struct.Memory** %MEMORY

  ; Code: jge .L_4146dc	 RIP: 414660	 Bytes: 6
  %loadMem_414660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414660 = call %struct.Memory* @routine_jge_.L_4146dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414660, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_414660, %struct.Memory** %MEMORY

  %loadBr_414660 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414660 = icmp eq i8 %loadBr_414660, 1
  br i1 %cmpBr_414660, label %block_.L_4146dc, label %block_414666

block_414666:
  ; Code: callq .interrupt	 RIP: 414666	 Bytes: 5
  %loadMem1_414666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414666 = call %struct.Memory* @routine_callq_.interrupt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414666, i64 64890, i64 5, i64 5)
  store %struct.Memory* %call1_414666, %struct.Memory** %MEMORY

  %loadMem2_414666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414666 = load i64, i64* %3
  %call2_414666 = call %struct.Memory* @sub_4243e0.interrupt(%struct.State* %0, i64  %loadPC_414666, %struct.Memory* %loadMem2_414666)
  store %struct.Memory* %call2_414666, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 41466b	 Bytes: 2
  %loadMem_41466b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41466b = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41466b)
  store %struct.Memory* %call_41466b, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 41466d	 Bytes: 2
  %loadMem_41466d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41466d = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41466d)
  store %struct.Memory* %call_41466d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41466f	 Bytes: 3
  %loadMem_41466f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41466f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41466f)
  store %struct.Memory* %call_41466f, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x4099(%rbp)	 RIP: 414672	 Bytes: 6
  %loadMem_414672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414672 = call %struct.Memory* @routine_movb__dl__MINUS0x4099__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414672)
  store %struct.Memory* %call_414672, %struct.Memory** %MEMORY

  ; Code: jne .L_4146dc	 RIP: 414678	 Bytes: 6
  %loadMem_414678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414678 = call %struct.Memory* @routine_jne_.L_4146dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414678, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_414678, %struct.Memory** %MEMORY

  %loadBr_414678 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414678 = icmp eq i8 %loadBr_414678, 1
  br i1 %cmpBr_414678, label %block_.L_4146dc, label %block_41467e

block_41467e:
  ; Code: xorl %eax, %eax	 RIP: 41467e	 Bytes: 2
  %loadMem_41467e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41467e = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41467e)
  store %struct.Memory* %call_41467e, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 414680	 Bytes: 2
  %loadMem_414680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414680 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414680)
  store %struct.Memory* %call_414680, %struct.Memory** %MEMORY

  ; Code: movl 0x62db04, %eax	 RIP: 414682	 Bytes: 7
  %loadMem_414682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414682 = call %struct.Memory* @routine_movl_0x62db04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414682)
  store %struct.Memory* %call_414682, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 414689	 Bytes: 2
  %loadMem_414689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414689 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414689)
  store %struct.Memory* %call_414689, %struct.Memory** %MEMORY

  ; Code: movl 0x886bb0, %eax	 RIP: 41468b	 Bytes: 7
  %loadMem_41468b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41468b = call %struct.Memory* @routine_movl_0x886bb0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41468b)
  store %struct.Memory* %call_41468b, %struct.Memory** %MEMORY

  ; Code: subl $0x2710, %eax	 RIP: 414692	 Bytes: 5
  %loadMem_414692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414692 = call %struct.Memory* @routine_subl__0x2710___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414692)
  store %struct.Memory* %call_414692, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 414697	 Bytes: 3
  %loadMem_414697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414697 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414697)
  store %struct.Memory* %call_414697, %struct.Memory** %MEMORY

  ; Code: imulq $0x38, %rsi, %rsi	 RIP: 41469a	 Bytes: 4
  %loadMem_41469a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41469a = call %struct.Memory* @routine_imulq__0x38___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41469a)
  store %struct.Memory* %call_41469a, %struct.Memory** %MEMORY

  ; Code: cmpq %rsi, %rdx	 RIP: 41469e	 Bytes: 3
  %loadMem_41469e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41469e = call %struct.Memory* @routine_cmpq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41469e)
  store %struct.Memory* %call_41469e, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x4099(%rbp)	 RIP: 4146a1	 Bytes: 6
  %loadMem_4146a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146a1 = call %struct.Memory* @routine_movb__cl__MINUS0x4099__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146a1)
  store %struct.Memory* %call_4146a1, %struct.Memory** %MEMORY

  ; Code: jae .L_4146dc	 RIP: 4146a7	 Bytes: 6
  %loadMem_4146a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146a7 = call %struct.Memory* @routine_jae_.L_4146dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146a7, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_4146a7, %struct.Memory** %MEMORY

  %loadBr_4146a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4146a7 = icmp eq i8 %loadBr_4146a7, 1
  br i1 %cmpBr_4146a7, label %block_.L_4146dc, label %block_4146ad

block_4146ad:
  ; Code: xorl %eax, %eax	 RIP: 4146ad	 Bytes: 2
  %loadMem_4146ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146ad = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146ad)
  store %struct.Memory* %call_4146ad, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 4146af	 Bytes: 2
  %loadMem_4146af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146af = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146af)
  store %struct.Memory* %call_4146af, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rdx	 RIP: 4146b1	 Bytes: 7
  %loadMem_4146b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146b1 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146b1)
  store %struct.Memory* %call_4146b1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4(%rdx)	 RIP: 4146b8	 Bytes: 4
  %loadMem_4146b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146b8 = call %struct.Memory* @routine_cmpl__0x0__0x4__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146b8)
  store %struct.Memory* %call_4146b8, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x4099(%rbp)	 RIP: 4146bc	 Bytes: 6
  %loadMem_4146bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146bc = call %struct.Memory* @routine_movb__cl__MINUS0x4099__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146bc)
  store %struct.Memory* %call_4146bc, %struct.Memory** %MEMORY

  ; Code: je .L_4146dc	 RIP: 4146c2	 Bytes: 6
  %loadMem_4146c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146c2 = call %struct.Memory* @routine_je_.L_4146dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146c2, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_4146c2, %struct.Memory** %MEMORY

  %loadBr_4146c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4146c2 = icmp eq i8 %loadBr_4146c2, 1
  br i1 %cmpBr_4146c2, label %block_.L_4146dc, label %block_4146c8

block_4146c8:
  ; Code: movq -0x4020(%rbp), %rax	 RIP: 4146c8	 Bytes: 7
  %loadMem_4146c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146c8 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146c8)
  store %struct.Memory* %call_4146c8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8(%rax)	 RIP: 4146cf	 Bytes: 4
  %loadMem_4146cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146cf = call %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146cf)
  store %struct.Memory* %call_4146cf, %struct.Memory** %MEMORY

  ; Code: setne %cl	 RIP: 4146d3	 Bytes: 3
  %loadMem_4146d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146d3 = call %struct.Memory* @routine_setne__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146d3)
  store %struct.Memory* %call_4146d3, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x4099(%rbp)	 RIP: 4146d6	 Bytes: 6
  %loadMem_4146d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146d6 = call %struct.Memory* @routine_movb__cl__MINUS0x4099__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146d6)
  store %struct.Memory* %call_4146d6, %struct.Memory** %MEMORY

  ; Code: .L_4146dc:	 RIP: 4146dc	 Bytes: 0
  br label %block_.L_4146dc
block_.L_4146dc:

  ; Code: movb -0x4099(%rbp), %al	 RIP: 4146dc	 Bytes: 6
  %loadMem_4146dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146dc = call %struct.Memory* @routine_movb_MINUS0x4099__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146dc)
  store %struct.Memory* %call_4146dc, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 4146e2	 Bytes: 2
  %loadMem_4146e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146e2 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146e2)
  store %struct.Memory* %call_4146e2, %struct.Memory** %MEMORY

  ; Code: jne .L_4146ef	 RIP: 4146e4	 Bytes: 6
  %loadMem_4146e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146e4 = call %struct.Memory* @routine_jne_.L_4146ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146e4, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4146e4, %struct.Memory** %MEMORY

  %loadBr_4146e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4146e4 = icmp eq i8 %loadBr_4146e4, 1
  br i1 %cmpBr_4146e4, label %block_.L_4146ef, label %block_4146ea

block_4146ea:
  ; Code: jmpq .L_414baf	 RIP: 4146ea	 Bytes: 5
  %loadMem_4146ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146ea = call %struct.Memory* @routine_jmpq_.L_414baf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146ea, i64 1221, i64 5)
  store %struct.Memory* %call_4146ea, %struct.Memory** %MEMORY

  br label %block_.L_414baf

  ; Code: .L_4146ef:	 RIP: 4146ef	 Bytes: 0
block_.L_4146ef:

  ; Code: movl $0x64, %eax	 RIP: 4146ef	 Bytes: 5
  %loadMem_4146ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146ef = call %struct.Memory* @routine_movl__0x64___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146ef)
  store %struct.Memory* %call_4146ef, %struct.Memory** %MEMORY

  ; Code: movl 0x86bd94, %ecx	 RIP: 4146f4	 Bytes: 7
  %loadMem_4146f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146f4 = call %struct.Memory* @routine_movl_0x86bd94___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146f4)
  store %struct.Memory* %call_4146f4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4146fb	 Bytes: 3
  %loadMem_4146fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146fb = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146fb)
  store %struct.Memory* %call_4146fb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x86bd94	 RIP: 4146fe	 Bytes: 7
  %loadMem_4146fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4146fe = call %struct.Memory* @routine_movl__ecx__0x86bd94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4146fe)
  store %struct.Memory* %call_4146fe, %struct.Memory** %MEMORY

  ; Code: movl 0x85f3e8, %ecx	 RIP: 414705	 Bytes: 7
  %loadMem_414705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414705 = call %struct.Memory* @routine_movl_0x85f3e8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414705)
  store %struct.Memory* %call_414705, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4044(%rbp)	 RIP: 41470c	 Bytes: 6
  %loadMem_41470c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41470c = call %struct.Memory* @routine_movl__ecx__MINUS0x4044__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41470c)
  store %struct.Memory* %call_41470c, %struct.Memory** %MEMORY

  ; Code: movl 0x85f3e8, %ecx	 RIP: 414712	 Bytes: 7
  %loadMem_414712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414712 = call %struct.Memory* @routine_movl_0x85f3e8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414712)
  store %struct.Memory* %call_414712, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40a0(%rbp)	 RIP: 414719	 Bytes: 6
  %loadMem_414719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414719 = call %struct.Memory* @routine_movl__eax__MINUS0x40a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414719)
  store %struct.Memory* %call_414719, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 41471f	 Bytes: 2
  %loadMem_41471f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41471f = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41471f)
  store %struct.Memory* %call_41471f, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 414721	 Bytes: 1
  %loadMem_414721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414721 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414721)
  store %struct.Memory* %call_414721, %struct.Memory** %MEMORY

  ; Code: movl -0x40a0(%rbp), %ecx	 RIP: 414722	 Bytes: 6
  %loadMem_414722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414722 = call %struct.Memory* @routine_movl_MINUS0x40a0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414722)
  store %struct.Memory* %call_414722, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 414728	 Bytes: 2
  %loadMem_414728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414728 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414728)
  store %struct.Memory* %call_414728, %struct.Memory** %MEMORY

  ; Code: cmpl $0x42, %edx	 RIP: 41472a	 Bytes: 3
  %loadMem_41472a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41472a = call %struct.Memory* @routine_cmpl__0x42___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41472a)
  store %struct.Memory* %call_41472a, %struct.Memory** %MEMORY

  ; Code: jge .L_4148f1	 RIP: 41472d	 Bytes: 6
  %loadMem_41472d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41472d = call %struct.Memory* @routine_jge_.L_4148f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41472d, i8* %BRANCH_TAKEN, i64 452, i64 6, i64 6)
  store %struct.Memory* %call_41472d, %struct.Memory** %MEMORY

  %loadBr_41472d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41472d = icmp eq i8 %loadBr_41472d, 1
  br i1 %cmpBr_41472d, label %block_.L_4148f1, label %block_414733

block_414733:
  ; Code: movl -0x4048(%rbp), %eax	 RIP: 414733	 Bytes: 6
  %loadMem_414733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414733 = call %struct.Memory* @routine_movl_MINUS0x4048__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414733)
  store %struct.Memory* %call_414733, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 414739	 Bytes: 3
  %loadMem_414739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414739 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414739)
  store %struct.Memory* %call_414739, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4048(%rbp)	 RIP: 41473c	 Bytes: 6
  %loadMem_41473c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41473c = call %struct.Memory* @routine_movl__eax__MINUS0x4048__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41473c)
  store %struct.Memory* %call_41473c, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rcx	 RIP: 414742	 Bytes: 7
  %loadMem_414742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414742 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414742)
  store %struct.Memory* %call_414742, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x4030(%rbp)	 RIP: 414749	 Bytes: 7
  %loadMem_414749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414749 = call %struct.Memory* @routine_movq__rcx__MINUS0x4030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414749)
  store %struct.Memory* %call_414749, %struct.Memory** %MEMORY

  ; Code: movq -0x4030(%rbp), %rdi	 RIP: 414750	 Bytes: 7
  %loadMem_414750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414750 = call %struct.Memory* @routine_movq_MINUS0x4030__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414750)
  store %struct.Memory* %call_414750, %struct.Memory** %MEMORY

  ; Code: callq .select_most_proving	 RIP: 414757	 Bytes: 5
  %loadMem1_414757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414757 = call %struct.Memory* @routine_callq_.select_most_proving(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414757, i64 -5255, i64 5, i64 5)
  store %struct.Memory* %call1_414757, %struct.Memory** %MEMORY

  %loadMem2_414757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414757 = load i64, i64* %3
  %call2_414757 = call %struct.Memory* @sub_4132d0.select_most_proving(%struct.State* %0, i64  %loadPC_414757, %struct.Memory* %loadMem2_414757)
  store %struct.Memory* %call2_414757, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x4028(%rbp)	 RIP: 41475c	 Bytes: 7
  %loadMem_41475c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41475c = call %struct.Memory* @routine_movq__rax__MINUS0x4028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41475c)
  store %struct.Memory* %call_41475c, %struct.Memory** %MEMORY

  ; Code: movq -0x4028(%rbp), %rdi	 RIP: 414763	 Bytes: 7
  %loadMem_414763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414763 = call %struct.Memory* @routine_movq_MINUS0x4028__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414763)
  store %struct.Memory* %call_414763, %struct.Memory** %MEMORY

  ; Code: callq .develop_node	 RIP: 41476a	 Bytes: 5
  %loadMem1_41476a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41476a = call %struct.Memory* @routine_callq_.develop_node(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41476a, i64 -2490, i64 5, i64 5)
  store %struct.Memory* %call1_41476a, %struct.Memory** %MEMORY

  %loadMem2_41476a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41476a = load i64, i64* %3
  %call2_41476a = call %struct.Memory* @sub_413db0.develop_node(%struct.State* %0, i64  %loadPC_41476a, %struct.Memory* %loadMem2_41476a)
  store %struct.Memory* %call2_41476a, %struct.Memory** %MEMORY

  ; Code: movq -0x4028(%rbp), %rdi	 RIP: 41476f	 Bytes: 7
  %loadMem_41476f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41476f = call %struct.Memory* @routine_movq_MINUS0x4028__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41476f)
  store %struct.Memory* %call_41476f, %struct.Memory** %MEMORY

  ; Code: callq .update_ancestors	 RIP: 414776	 Bytes: 5
  %loadMem1_414776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414776 = call %struct.Memory* @routine_callq_.update_ancestors(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414776, i64 -1526, i64 5, i64 5)
  store %struct.Memory* %call1_414776, %struct.Memory** %MEMORY

  %loadMem2_414776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414776 = load i64, i64* %3
  %call2_414776 = call %struct.Memory* @sub_414180.update_ancestors(%struct.State* %0, i64  %loadPC_414776, %struct.Memory* %loadMem2_414776)
  store %struct.Memory* %call2_414776, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4004(%rbp)	 RIP: 41477b	 Bytes: 10
  %loadMem_41477b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41477b = call %struct.Memory* @routine_movl__0x0__MINUS0x4004__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41477b)
  store %struct.Memory* %call_41477b, %struct.Memory** %MEMORY

  ; Code: .L_414785:	 RIP: 414785	 Bytes: 0
  br label %block_.L_414785
block_.L_414785:

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414785	 Bytes: 7
  %loadMem_414785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414785 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414785)
  store %struct.Memory* %call_414785, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 41478c	 Bytes: 4
  %loadMem_41478c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41478c = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41478c)
  store %struct.Memory* %call_41478c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4004(%rbp), %rcx	 RIP: 414790	 Bytes: 7
  %loadMem_414790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414790 = call %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414790)
  store %struct.Memory* %call_414790, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 414797	 Bytes: 4
  %loadMem_414797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414797 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414797)
  store %struct.Memory* %call_414797, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 41479b	 Bytes: 3
  %loadMem_41479b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41479b = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41479b)
  store %struct.Memory* %call_41479b, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 41479e	 Bytes: 7
  %loadMem_41479e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41479e = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41479e)
  store %struct.Memory* %call_41479e, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %edx	 RIP: 4147a5	 Bytes: 3
  %loadMem_4147a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147a5 = call %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147a5)
  store %struct.Memory* %call_4147a5, %struct.Memory** %MEMORY

  ; Code: je .L_4147c2	 RIP: 4147a8	 Bytes: 6
  %loadMem_4147a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147a8 = call %struct.Memory* @routine_je_.L_4147c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147a8, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_4147a8, %struct.Memory** %MEMORY

  %loadBr_4147a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4147a8 = icmp eq i8 %loadBr_4147a8, 1
  br i1 %cmpBr_4147a8, label %block_.L_4147c2, label %block_4147ae

block_4147ae:
  ; Code: movl -0x4004(%rbp), %eax	 RIP: 4147ae	 Bytes: 6
  %loadMem_4147ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147ae = call %struct.Memory* @routine_movl_MINUS0x4004__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147ae)
  store %struct.Memory* %call_4147ae, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4147b4	 Bytes: 3
  %loadMem_4147b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147b4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147b4)
  store %struct.Memory* %call_4147b4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4004(%rbp)	 RIP: 4147b7	 Bytes: 6
  %loadMem_4147b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147b7 = call %struct.Memory* @routine_movl__eax__MINUS0x4004__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147b7)
  store %struct.Memory* %call_4147b7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_414785	 RIP: 4147bd	 Bytes: 5
  %loadMem_4147bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147bd = call %struct.Memory* @routine_jmpq_.L_414785(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147bd, i64 -56, i64 5)
  store %struct.Memory* %call_4147bd, %struct.Memory** %MEMORY

  br label %block_.L_414785

  ; Code: .L_4147c2:	 RIP: 4147c2	 Bytes: 0
block_.L_4147c2:

  ; Code: movl 0x85f3e8, %eax	 RIP: 4147c2	 Bytes: 7
  %loadMem_4147c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147c2 = call %struct.Memory* @routine_movl_0x85f3e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147c2)
  store %struct.Memory* %call_4147c2, %struct.Memory** %MEMORY

  ; Code: subl -0x4044(%rbp), %eax	 RIP: 4147c9	 Bytes: 6
  %loadMem_4147c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147c9 = call %struct.Memory* @routine_subl_MINUS0x4044__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147c9)
  store %struct.Memory* %call_4147c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x4004(%rbp), %rcx	 RIP: 4147cf	 Bytes: 7
  %loadMem_4147cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147cf = call %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147cf)
  store %struct.Memory* %call_4147cf, %struct.Memory** %MEMORY

  ; Code: addl -0x4000(%rbp,%rcx,4), %eax	 RIP: 4147d6	 Bytes: 7
  %loadMem_4147d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147d6 = call %struct.Memory* @routine_addl_MINUS0x4000__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147d6)
  store %struct.Memory* %call_4147d6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4000(%rbp,%rcx,4)	 RIP: 4147dd	 Bytes: 7
  %loadMem_4147dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147dd = call %struct.Memory* @routine_movl__eax__MINUS0x4000__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147dd)
  store %struct.Memory* %call_4147dd, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rcx	 RIP: 4147e4	 Bytes: 7
  %loadMem_4147e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147e4 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147e4)
  store %struct.Memory* %call_4147e4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4(%rcx)	 RIP: 4147eb	 Bytes: 4
  %loadMem_4147eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147eb = call %struct.Memory* @routine_cmpl__0x0__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147eb)
  store %struct.Memory* %call_4147eb, %struct.Memory** %MEMORY

  ; Code: jne .L_414883	 RIP: 4147ef	 Bytes: 6
  %loadMem_4147ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147ef = call %struct.Memory* @routine_jne_.L_414883(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147ef, i8* %BRANCH_TAKEN, i64 148, i64 6, i64 6)
  store %struct.Memory* %call_4147ef, %struct.Memory** %MEMORY

  %loadBr_4147ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4147ef = icmp eq i8 %loadBr_4147ef, 1
  br i1 %cmpBr_4147ef, label %block_.L_414883, label %block_4147f5

block_4147f5:
  ; Code: movq -0x4020(%rbp), %rax	 RIP: 4147f5	 Bytes: 7
  %loadMem_4147f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147f5 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147f5)
  store %struct.Memory* %call_4147f5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f5e100, 0x8(%rax)	 RIP: 4147fc	 Bytes: 7
  %loadMem_4147fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4147fc = call %struct.Memory* @routine_cmpl__0x5f5e100__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4147fc)
  store %struct.Memory* %call_4147fc, %struct.Memory** %MEMORY

  ; Code: jne .L_414883	 RIP: 414803	 Bytes: 6
  %loadMem_414803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414803 = call %struct.Memory* @routine_jne_.L_414883(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414803, i8* %BRANCH_TAKEN, i64 128, i64 6, i64 6)
  store %struct.Memory* %call_414803, %struct.Memory** %MEMORY

  %loadBr_414803 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414803 = icmp eq i8 %loadBr_414803, 1
  br i1 %cmpBr_414803, label %block_.L_414883, label %block_414809

block_414809:
  ; Code: movl $0x1, 0x62e4f8	 RIP: 414809	 Bytes: 11
  %loadMem_414809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414809 = call %struct.Memory* @routine_movl__0x1__0x62e4f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414809)
  store %struct.Memory* %call_414809, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x880654	 RIP: 414814	 Bytes: 8
  %loadMem_414814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414814 = call %struct.Memory* @routine_cmpl__0x0__0x880654(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414814)
  store %struct.Memory* %call_414814, %struct.Memory** %MEMORY

  ; Code: jne .L_414844	 RIP: 41481c	 Bytes: 6
  %loadMem_41481c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41481c = call %struct.Memory* @routine_jne_.L_414844(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41481c, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_41481c, %struct.Memory** %MEMORY

  %loadBr_41481c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41481c = icmp eq i8 %loadBr_41481c, 1
  br i1 %cmpBr_41481c, label %block_.L_414844, label %block_414822

block_414822:
  ; Code: movq $0x428e2f, %rdi	 RIP: 414822	 Bytes: 10
  %loadMem_414822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414822 = call %struct.Memory* @routine_movq__0x428e2f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414822)
  store %struct.Memory* %call_414822, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x880654	 RIP: 41482c	 Bytes: 11
  %loadMem_41482c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41482c = call %struct.Memory* @routine_movl__0x1__0x880654(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41482c)
  store %struct.Memory* %call_41482c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 414837	 Bytes: 2
  %loadMem_414837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414837 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414837)
  store %struct.Memory* %call_414837, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 414839	 Bytes: 5
  %loadMem1_414839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414839 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414839, i64 -80777, i64 5, i64 5)
  store %struct.Memory* %call1_414839, %struct.Memory** %MEMORY

  %loadMem2_414839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414839 = load i64, i64* %3
  %call2_414839 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_414839, %struct.Memory* %loadMem2_414839)
  store %struct.Memory* %call2_414839, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40a4(%rbp)	 RIP: 41483e	 Bytes: 6
  %loadMem_41483e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41483e = call %struct.Memory* @routine_movl__eax__MINUS0x40a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41483e)
  store %struct.Memory* %call_41483e, %struct.Memory** %MEMORY

  ; Code: .L_414844:	 RIP: 414844	 Bytes: 0
  br label %block_.L_414844
block_.L_414844:

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414844	 Bytes: 7
  %loadMem_414844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414844 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414844)
  store %struct.Memory* %call_414844, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 41484b	 Bytes: 4
  %loadMem_41484b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41484b = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41484b)
  store %struct.Memory* %call_41484b, %struct.Memory** %MEMORY

  ; Code: movslq -0x4004(%rbp), %rcx	 RIP: 41484f	 Bytes: 7
  %loadMem_41484f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41484f = call %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41484f)
  store %struct.Memory* %call_41484f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 414856	 Bytes: 4
  %loadMem_414856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414856 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414856)
  store %struct.Memory* %call_414856, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rcx	 RIP: 41485a	 Bytes: 4
  %loadMem_41485a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41485a = call %struct.Memory* @routine_movq_0x20__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41485a)
  store %struct.Memory* %call_41485a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x62ea20	 RIP: 41485e	 Bytes: 8
  %loadMem_41485e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41485e = call %struct.Memory* @routine_movq__rcx__0x62ea20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41485e)
  store %struct.Memory* %call_41485e, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rcx	 RIP: 414866	 Bytes: 4
  %loadMem_414866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414866 = call %struct.Memory* @routine_movq_0x28__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414866)
  store %struct.Memory* %call_414866, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x62ea28	 RIP: 41486a	 Bytes: 8
  %loadMem_41486a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41486a = call %struct.Memory* @routine_movq__rcx__0x62ea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41486a)
  store %struct.Memory* %call_41486a, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 414872	 Bytes: 4
  %loadMem_414872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414872 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414872)
  store %struct.Memory* %call_414872, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x62ea30	 RIP: 414876	 Bytes: 8
  %loadMem_414876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414876 = call %struct.Memory* @routine_movq__rax__0x62ea30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414876)
  store %struct.Memory* %call_414876, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4148ec	 RIP: 41487e	 Bytes: 5
  %loadMem_41487e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41487e = call %struct.Memory* @routine_jmpq_.L_4148ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41487e, i64 110, i64 5)
  store %struct.Memory* %call_41487e, %struct.Memory** %MEMORY

  br label %block_.L_4148ec

  ; Code: .L_414883:	 RIP: 414883	 Bytes: 0
block_.L_414883:

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414883	 Bytes: 7
  %loadMem_414883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414883 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414883)
  store %struct.Memory* %call_414883, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8(%rax)	 RIP: 41488a	 Bytes: 4
  %loadMem_41488a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41488a = call %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41488a)
  store %struct.Memory* %call_41488a, %struct.Memory** %MEMORY

  ; Code: jne .L_4148e7	 RIP: 41488e	 Bytes: 6
  %loadMem_41488e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41488e = call %struct.Memory* @routine_jne_.L_4148e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41488e, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_41488e, %struct.Memory** %MEMORY

  %loadBr_41488e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41488e = icmp eq i8 %loadBr_41488e, 1
  br i1 %cmpBr_41488e, label %block_.L_4148e7, label %block_414894

block_414894:
  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414894	 Bytes: 7
  %loadMem_414894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414894 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414894)
  store %struct.Memory* %call_414894, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f5e100, 0x4(%rax)	 RIP: 41489b	 Bytes: 7
  %loadMem_41489b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41489b = call %struct.Memory* @routine_cmpl__0x5f5e100__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41489b)
  store %struct.Memory* %call_41489b, %struct.Memory** %MEMORY

  ; Code: jne .L_4148e7	 RIP: 4148a2	 Bytes: 6
  %loadMem_4148a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4148a2 = call %struct.Memory* @routine_jne_.L_4148e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4148a2, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_4148a2, %struct.Memory** %MEMORY

  %loadBr_4148a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4148a2 = icmp eq i8 %loadBr_4148a2, 1
  br i1 %cmpBr_4148a2, label %block_.L_4148e7, label %block_4148a8

block_4148a8:
  ; Code: movq 0x62db08, %rax	 RIP: 4148a8	 Bytes: 8
  %loadMem_4148a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4148a8 = call %struct.Memory* @routine_movq_0x62db08___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4148a8)
  store %struct.Memory* %call_4148a8, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x62ea20	 RIP: 4148b0	 Bytes: 8
  %loadMem_4148b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4148b0 = call %struct.Memory* @routine_movq__rax__0x62ea20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4148b0)
  store %struct.Memory* %call_4148b0, %struct.Memory** %MEMORY

  ; Code: movq 0x62db10, %rax	 RIP: 4148b8	 Bytes: 8
  %loadMem_4148b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4148b8 = call %struct.Memory* @routine_movq_0x62db10___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4148b8)
  store %struct.Memory* %call_4148b8, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x62ea28	 RIP: 4148c0	 Bytes: 8
  %loadMem_4148c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4148c0 = call %struct.Memory* @routine_movq__rax__0x62ea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4148c0)
  store %struct.Memory* %call_4148c0, %struct.Memory** %MEMORY

  ; Code: movq 0x62db18, %rax	 RIP: 4148c8	 Bytes: 8
  %loadMem_4148c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4148c8 = call %struct.Memory* @routine_movq_0x62db18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4148c8)
  store %struct.Memory* %call_4148c8, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x62ea30	 RIP: 4148d0	 Bytes: 8
  %loadMem_4148d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4148d0 = call %struct.Memory* @routine_movq__rax__0x62ea30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4148d0)
  store %struct.Memory* %call_4148d0, %struct.Memory** %MEMORY

  ; Code: movl -0x4040(%rbp), %ecx	 RIP: 4148d8	 Bytes: 6
  %loadMem_4148d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4148d8 = call %struct.Memory* @routine_movl_MINUS0x4040__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4148d8)
  store %struct.Memory* %call_4148d8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4148de	 Bytes: 3
  %loadMem_4148de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4148de = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4148de)
  store %struct.Memory* %call_4148de, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4040(%rbp)	 RIP: 4148e1	 Bytes: 6
  %loadMem_4148e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4148e1 = call %struct.Memory* @routine_movl__ecx__MINUS0x4040__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4148e1)
  store %struct.Memory* %call_4148e1, %struct.Memory** %MEMORY

  ; Code: .L_4148e7:	 RIP: 4148e7	 Bytes: 0
  br label %block_.L_4148e7
block_.L_4148e7:

  ; Code: jmpq .L_4148ec	 RIP: 4148e7	 Bytes: 5
  %loadMem_4148e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4148e7 = call %struct.Memory* @routine_jmpq_.L_4148ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4148e7, i64 5, i64 5)
  store %struct.Memory* %call_4148e7, %struct.Memory** %MEMORY

  br label %block_.L_4148ec

  ; Code: .L_4148ec:	 RIP: 4148ec	 Bytes: 0
block_.L_4148ec:

  ; Code: jmpq .L_414baa	 RIP: 4148ec	 Bytes: 5
  %loadMem_4148ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4148ec = call %struct.Memory* @routine_jmpq_.L_414baa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4148ec, i64 702, i64 5)
  store %struct.Memory* %call_4148ec, %struct.Memory** %MEMORY

  br label %block_.L_414baa

  ; Code: .L_4148f1:	 RIP: 4148f1	 Bytes: 0
block_.L_4148f1:

  ; Code: movl -0x404c(%rbp), %eax	 RIP: 4148f1	 Bytes: 6
  %loadMem_4148f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4148f1 = call %struct.Memory* @routine_movl_MINUS0x404c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4148f1)
  store %struct.Memory* %call_4148f1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4148f7	 Bytes: 3
  %loadMem_4148f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4148f7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4148f7)
  store %struct.Memory* %call_4148f7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x404c(%rbp)	 RIP: 4148fa	 Bytes: 6
  %loadMem_4148fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4148fa = call %struct.Memory* @routine_movl__eax__MINUS0x404c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4148fa)
  store %struct.Memory* %call_4148fa, %struct.Memory** %MEMORY

  ; Code: movl $0x5f5e100, -0x4034(%rbp)	 RIP: 414900	 Bytes: 10
  %loadMem_414900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414900 = call %struct.Memory* @routine_movl__0x5f5e100__MINUS0x4034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414900)
  store %struct.Memory* %call_414900, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4008(%rbp)	 RIP: 41490a	 Bytes: 10
  %loadMem_41490a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41490a = call %struct.Memory* @routine_movl__0x0__MINUS0x4008__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41490a)
  store %struct.Memory* %call_41490a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4004(%rbp)	 RIP: 414914	 Bytes: 10
  %loadMem_414914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414914 = call %struct.Memory* @routine_movl__0x0__MINUS0x4004__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414914)
  store %struct.Memory* %call_414914, %struct.Memory** %MEMORY

  ; Code: .L_41491e:	 RIP: 41491e	 Bytes: 0
  br label %block_.L_41491e
block_.L_41491e:

  ; Code: movl -0x4004(%rbp), %eax	 RIP: 41491e	 Bytes: 6
  %loadMem_41491e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41491e = call %struct.Memory* @routine_movl_MINUS0x4004__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41491e)
  store %struct.Memory* %call_41491e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4010(%rbp), %eax	 RIP: 414924	 Bytes: 6
  %loadMem_414924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414924 = call %struct.Memory* @routine_cmpl_MINUS0x4010__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414924)
  store %struct.Memory* %call_414924, %struct.Memory** %MEMORY

  ; Code: jge .L_4149dd	 RIP: 41492a	 Bytes: 6
  %loadMem_41492a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41492a = call %struct.Memory* @routine_jge_.L_4149dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41492a, i8* %BRANCH_TAKEN, i64 179, i64 6, i64 6)
  store %struct.Memory* %call_41492a, %struct.Memory** %MEMORY

  %loadBr_41492a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41492a = icmp eq i8 %loadBr_41492a, 1
  br i1 %cmpBr_41492a, label %block_.L_4149dd, label %block_414930

block_414930:
  ; Code: movslq -0x4004(%rbp), %rax	 RIP: 414930	 Bytes: 7
  %loadMem_414930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414930 = call %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414930)
  store %struct.Memory* %call_414930, %struct.Memory** %MEMORY

  ; Code: movl -0x4000(%rbp,%rax,4), %ecx	 RIP: 414937	 Bytes: 7
  %loadMem_414937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414937 = call %struct.Memory* @routine_movl_MINUS0x4000__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414937)
  store %struct.Memory* %call_414937, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4034(%rbp), %ecx	 RIP: 41493e	 Bytes: 6
  %loadMem_41493e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41493e = call %struct.Memory* @routine_cmpl_MINUS0x4034__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41493e)
  store %struct.Memory* %call_41493e, %struct.Memory** %MEMORY

  ; Code: jge .L_4149a0	 RIP: 414944	 Bytes: 6
  %loadMem_414944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414944 = call %struct.Memory* @routine_jge_.L_4149a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414944, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_414944, %struct.Memory** %MEMORY

  %loadBr_414944 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414944 = icmp eq i8 %loadBr_414944, 1
  br i1 %cmpBr_414944, label %block_.L_4149a0, label %block_41494a

block_41494a:
  ; Code: movslq -0x4004(%rbp), %rax	 RIP: 41494a	 Bytes: 7
  %loadMem_41494a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41494a = call %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41494a)
  store %struct.Memory* %call_41494a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x3800(%rbp,%rax,4)	 RIP: 414951	 Bytes: 8
  %loadMem_414951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414951 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3800__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414951)
  store %struct.Memory* %call_414951, %struct.Memory** %MEMORY

  ; Code: je .L_4149a0	 RIP: 414959	 Bytes: 6
  %loadMem_414959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414959 = call %struct.Memory* @routine_je_.L_4149a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414959, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_414959, %struct.Memory** %MEMORY

  %loadBr_414959 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414959 = icmp eq i8 %loadBr_414959, 1
  br i1 %cmpBr_414959, label %block_.L_4149a0, label %block_41495f

block_41495f:
  ; Code: movslq -0x4004(%rbp), %rax	 RIP: 41495f	 Bytes: 7
  %loadMem_41495f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41495f = call %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41495f)
  store %struct.Memory* %call_41495f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x886bf0(,%rax,4)	 RIP: 414966	 Bytes: 8
  %loadMem_414966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414966 = call %struct.Memory* @routine_cmpl__0x0__0x886bf0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414966)
  store %struct.Memory* %call_414966, %struct.Memory** %MEMORY

  ; Code: jne .L_4149a0	 RIP: 41496e	 Bytes: 6
  %loadMem_41496e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41496e = call %struct.Memory* @routine_jne_.L_4149a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41496e, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_41496e, %struct.Memory** %MEMORY

  %loadBr_41496e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41496e = icmp eq i8 %loadBr_41496e, 1
  br i1 %cmpBr_41496e, label %block_.L_4149a0, label %block_414974

block_414974:
  ; Code: movslq -0x4004(%rbp), %rax	 RIP: 414974	 Bytes: 7
  %loadMem_414974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414974 = call %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414974)
  store %struct.Memory* %call_414974, %struct.Memory** %MEMORY

  ; Code: movl -0x4000(%rbp,%rax,4), %ecx	 RIP: 41497b	 Bytes: 7
  %loadMem_41497b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41497b = call %struct.Memory* @routine_movl_MINUS0x4000__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41497b)
  store %struct.Memory* %call_41497b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4034(%rbp)	 RIP: 414982	 Bytes: 6
  %loadMem_414982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414982 = call %struct.Memory* @routine_movl__ecx__MINUS0x4034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414982)
  store %struct.Memory* %call_414982, %struct.Memory** %MEMORY

  ; Code: movl -0x4004(%rbp), %ecx	 RIP: 414988	 Bytes: 6
  %loadMem_414988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414988 = call %struct.Memory* @routine_movl_MINUS0x4004__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414988)
  store %struct.Memory* %call_414988, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x403c(%rbp)	 RIP: 41498e	 Bytes: 6
  %loadMem_41498e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41498e = call %struct.Memory* @routine_movl__ecx__MINUS0x403c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41498e)
  store %struct.Memory* %call_41498e, %struct.Memory** %MEMORY

  ; Code: movl -0x4008(%rbp), %ecx	 RIP: 414994	 Bytes: 6
  %loadMem_414994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414994 = call %struct.Memory* @routine_movl_MINUS0x4008__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414994)
  store %struct.Memory* %call_414994, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4038(%rbp)	 RIP: 41499a	 Bytes: 6
  %loadMem_41499a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41499a = call %struct.Memory* @routine_movl__ecx__MINUS0x4038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41499a)
  store %struct.Memory* %call_41499a, %struct.Memory** %MEMORY

  ; Code: .L_4149a0:	 RIP: 4149a0	 Bytes: 0
  br label %block_.L_4149a0
block_.L_4149a0:

  ; Code: movslq -0x4004(%rbp), %rax	 RIP: 4149a0	 Bytes: 7
  %loadMem_4149a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149a0 = call %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149a0)
  store %struct.Memory* %call_4149a0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x3800(%rbp,%rax,4)	 RIP: 4149a7	 Bytes: 8
  %loadMem_4149a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149a7 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3800__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149a7)
  store %struct.Memory* %call_4149a7, %struct.Memory** %MEMORY

  ; Code: je .L_4149c4	 RIP: 4149af	 Bytes: 6
  %loadMem_4149af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149af = call %struct.Memory* @routine_je_.L_4149c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149af, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4149af, %struct.Memory** %MEMORY

  %loadBr_4149af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4149af = icmp eq i8 %loadBr_4149af, 1
  br i1 %cmpBr_4149af, label %block_.L_4149c4, label %block_4149b5

block_4149b5:
  ; Code: movl -0x4008(%rbp), %eax	 RIP: 4149b5	 Bytes: 6
  %loadMem_4149b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149b5 = call %struct.Memory* @routine_movl_MINUS0x4008__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149b5)
  store %struct.Memory* %call_4149b5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4149bb	 Bytes: 3
  %loadMem_4149bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149bb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149bb)
  store %struct.Memory* %call_4149bb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4008(%rbp)	 RIP: 4149be	 Bytes: 6
  %loadMem_4149be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149be = call %struct.Memory* @routine_movl__eax__MINUS0x4008__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149be)
  store %struct.Memory* %call_4149be, %struct.Memory** %MEMORY

  ; Code: .L_4149c4:	 RIP: 4149c4	 Bytes: 0
  br label %block_.L_4149c4
block_.L_4149c4:

  ; Code: jmpq .L_4149c9	 RIP: 4149c4	 Bytes: 5
  %loadMem_4149c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149c4 = call %struct.Memory* @routine_jmpq_.L_4149c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149c4, i64 5, i64 5)
  store %struct.Memory* %call_4149c4, %struct.Memory** %MEMORY

  br label %block_.L_4149c9

  ; Code: .L_4149c9:	 RIP: 4149c9	 Bytes: 0
block_.L_4149c9:

  ; Code: movl -0x4004(%rbp), %eax	 RIP: 4149c9	 Bytes: 6
  %loadMem_4149c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149c9 = call %struct.Memory* @routine_movl_MINUS0x4004__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149c9)
  store %struct.Memory* %call_4149c9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4149cf	 Bytes: 3
  %loadMem_4149cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149cf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149cf)
  store %struct.Memory* %call_4149cf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4004(%rbp)	 RIP: 4149d2	 Bytes: 6
  %loadMem_4149d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149d2 = call %struct.Memory* @routine_movl__eax__MINUS0x4004__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149d2)
  store %struct.Memory* %call_4149d2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41491e	 RIP: 4149d8	 Bytes: 5
  %loadMem_4149d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149d8 = call %struct.Memory* @routine_jmpq_.L_41491e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149d8, i64 -186, i64 5)
  store %struct.Memory* %call_4149d8, %struct.Memory** %MEMORY

  br label %block_.L_41491e

  ; Code: .L_4149dd:	 RIP: 4149dd	 Bytes: 0
block_.L_4149dd:

  ; Code: cmpl $0x5f5e100, -0x4034(%rbp)	 RIP: 4149dd	 Bytes: 10
  %loadMem_4149dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149dd = call %struct.Memory* @routine_cmpl__0x5f5e100__MINUS0x4034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149dd)
  store %struct.Memory* %call_4149dd, %struct.Memory** %MEMORY

  ; Code: jne .L_414a03	 RIP: 4149e7	 Bytes: 6
  %loadMem_4149e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149e7 = call %struct.Memory* @routine_jne_.L_414a03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149e7, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_4149e7, %struct.Memory** %MEMORY

  %loadBr_4149e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4149e7 = icmp eq i8 %loadBr_4149e7, 1
  br i1 %cmpBr_4149e7, label %block_.L_414a03, label %block_4149ed

block_4149ed:
  ; Code: movl 0x85f3e8, %eax	 RIP: 4149ed	 Bytes: 7
  %loadMem_4149ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149ed = call %struct.Memory* @routine_movl_0x85f3e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149ed)
  store %struct.Memory* %call_4149ed, %struct.Memory** %MEMORY

  ; Code: addl $0x1e, %eax	 RIP: 4149f4	 Bytes: 3
  %loadMem_4149f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149f4 = call %struct.Memory* @routine_addl__0x1e___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149f4)
  store %struct.Memory* %call_4149f4, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x85f3e8	 RIP: 4149f7	 Bytes: 7
  %loadMem_4149f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149f7 = call %struct.Memory* @routine_movl__eax__0x85f3e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149f7)
  store %struct.Memory* %call_4149f7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41463b	 RIP: 4149fe	 Bytes: 5
  %loadMem_4149fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4149fe = call %struct.Memory* @routine_jmpq_.L_41463b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4149fe, i64 -963, i64 5)
  store %struct.Memory* %call_4149fe, %struct.Memory** %MEMORY

  br label %block_.L_41463b

  ; Code: .L_414a03:	 RIP: 414a03	 Bytes: 0
block_.L_414a03:

  ; Code: leaq -0x3000(%rbp), %rdi	 RIP: 414a03	 Bytes: 7
  %loadMem_414a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a03 = call %struct.Memory* @routine_leaq_MINUS0x3000__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a03)
  store %struct.Memory* %call_414a03, %struct.Memory** %MEMORY

  ; Code: movl -0x403c(%rbp), %esi	 RIP: 414a0a	 Bytes: 6
  %loadMem_414a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a0a = call %struct.Memory* @routine_movl_MINUS0x403c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a0a)
  store %struct.Memory* %call_414a0a, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 414a10	 Bytes: 5
  %loadMem1_414a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414a10 = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414a10, i64 -37600, i64 5, i64 5)
  store %struct.Memory* %call1_414a10, %struct.Memory** %MEMORY

  %loadMem2_414a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414a10 = load i64, i64* %3
  %call2_414a10 = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_414a10, %struct.Memory* %loadMem2_414a10)
  store %struct.Memory* %call2_414a10, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rdi	 RIP: 414a15	 Bytes: 7
  %loadMem_414a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a15 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a15)
  store %struct.Memory* %call_414a15, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rdi), %rdi	 RIP: 414a1c	 Bytes: 4
  %loadMem_414a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a1c = call %struct.Memory* @routine_movq_0x10__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a1c)
  store %struct.Memory* %call_414a1c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4038(%rbp), %rax	 RIP: 414a20	 Bytes: 7
  %loadMem_414a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a20 = call %struct.Memory* @routine_movslq_MINUS0x4038__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a20)
  store %struct.Memory* %call_414a20, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%rax,8), %rax	 RIP: 414a27	 Bytes: 4
  %loadMem_414a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a27 = call %struct.Memory* @routine_movq___rdi__rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a27)
  store %struct.Memory* %call_414a27, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x4030(%rbp)	 RIP: 414a2b	 Bytes: 7
  %loadMem_414a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a2b = call %struct.Memory* @routine_movq__rax__MINUS0x4030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a2b)
  store %struct.Memory* %call_414a2b, %struct.Memory** %MEMORY

  ; Code: movq -0x4030(%rbp), %rdi	 RIP: 414a32	 Bytes: 7
  %loadMem_414a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a32 = call %struct.Memory* @routine_movq_MINUS0x4030__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a32)
  store %struct.Memory* %call_414a32, %struct.Memory** %MEMORY

  ; Code: callq .select_most_proving	 RIP: 414a39	 Bytes: 5
  %loadMem1_414a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414a39 = call %struct.Memory* @routine_callq_.select_most_proving(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414a39, i64 -5993, i64 5, i64 5)
  store %struct.Memory* %call1_414a39, %struct.Memory** %MEMORY

  %loadMem2_414a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414a39 = load i64, i64* %3
  %call2_414a39 = call %struct.Memory* @sub_4132d0.select_most_proving(%struct.State* %0, i64  %loadPC_414a39, %struct.Memory* %loadMem2_414a39)
  store %struct.Memory* %call2_414a39, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x4028(%rbp)	 RIP: 414a3e	 Bytes: 7
  %loadMem_414a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a3e = call %struct.Memory* @routine_movq__rax__MINUS0x4028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a3e)
  store %struct.Memory* %call_414a3e, %struct.Memory** %MEMORY

  ; Code: movq -0x4028(%rbp), %rdi	 RIP: 414a45	 Bytes: 7
  %loadMem_414a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a45 = call %struct.Memory* @routine_movq_MINUS0x4028__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a45)
  store %struct.Memory* %call_414a45, %struct.Memory** %MEMORY

  ; Code: callq .develop_node	 RIP: 414a4c	 Bytes: 5
  %loadMem1_414a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414a4c = call %struct.Memory* @routine_callq_.develop_node(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414a4c, i64 -3228, i64 5, i64 5)
  store %struct.Memory* %call1_414a4c, %struct.Memory** %MEMORY

  %loadMem2_414a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414a4c = load i64, i64* %3
  %call2_414a4c = call %struct.Memory* @sub_413db0.develop_node(%struct.State* %0, i64  %loadPC_414a4c, %struct.Memory* %loadMem2_414a4c)
  store %struct.Memory* %call2_414a4c, %struct.Memory** %MEMORY

  ; Code: movq -0x4028(%rbp), %rdi	 RIP: 414a51	 Bytes: 7
  %loadMem_414a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a51 = call %struct.Memory* @routine_movq_MINUS0x4028__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a51)
  store %struct.Memory* %call_414a51, %struct.Memory** %MEMORY

  ; Code: callq .update_ancestors	 RIP: 414a58	 Bytes: 5
  %loadMem1_414a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414a58 = call %struct.Memory* @routine_callq_.update_ancestors(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414a58, i64 -2264, i64 5, i64 5)
  store %struct.Memory* %call1_414a58, %struct.Memory** %MEMORY

  %loadMem2_414a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414a58 = load i64, i64* %3
  %call2_414a58 = call %struct.Memory* @sub_414180.update_ancestors(%struct.State* %0, i64  %loadPC_414a58, %struct.Memory* %loadMem2_414a58)
  store %struct.Memory* %call2_414a58, %struct.Memory** %MEMORY

  ; Code: movl 0x85f3e8, %esi	 RIP: 414a5d	 Bytes: 7
  %loadMem_414a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a5d = call %struct.Memory* @routine_movl_0x85f3e8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a5d)
  store %struct.Memory* %call_414a5d, %struct.Memory** %MEMORY

  ; Code: subl -0x4044(%rbp), %esi	 RIP: 414a64	 Bytes: 6
  %loadMem_414a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a64 = call %struct.Memory* @routine_subl_MINUS0x4044__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a64)
  store %struct.Memory* %call_414a64, %struct.Memory** %MEMORY

  ; Code: movslq -0x403c(%rbp), %rax	 RIP: 414a6a	 Bytes: 7
  %loadMem_414a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a6a = call %struct.Memory* @routine_movslq_MINUS0x403c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a6a)
  store %struct.Memory* %call_414a6a, %struct.Memory** %MEMORY

  ; Code: addl -0x4000(%rbp,%rax,4), %esi	 RIP: 414a71	 Bytes: 7
  %loadMem_414a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a71 = call %struct.Memory* @routine_addl_MINUS0x4000__rbp__rax_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a71)
  store %struct.Memory* %call_414a71, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x4000(%rbp,%rax,4)	 RIP: 414a78	 Bytes: 7
  %loadMem_414a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a78 = call %struct.Memory* @routine_movl__esi__MINUS0x4000__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a78)
  store %struct.Memory* %call_414a78, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414a7f	 Bytes: 7
  %loadMem_414a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a7f = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a7f)
  store %struct.Memory* %call_414a7f, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414a86	 Bytes: 4
  %loadMem_414a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a86 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a86)
  store %struct.Memory* %call_414a86, %struct.Memory** %MEMORY

  ; Code: movslq -0x4038(%rbp), %rdi	 RIP: 414a8a	 Bytes: 7
  %loadMem_414a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a8a = call %struct.Memory* @routine_movslq_MINUS0x4038__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a8a)
  store %struct.Memory* %call_414a8a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdi,8), %rax	 RIP: 414a91	 Bytes: 4
  %loadMem_414a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a91 = call %struct.Memory* @routine_movq___rax__rdi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a91)
  store %struct.Memory* %call_414a91, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4(%rax)	 RIP: 414a95	 Bytes: 4
  %loadMem_414a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a95 = call %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a95)
  store %struct.Memory* %call_414a95, %struct.Memory** %MEMORY

  ; Code: jne .L_414b3c	 RIP: 414a99	 Bytes: 6
  %loadMem_414a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a99 = call %struct.Memory* @routine_jne_.L_414b3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a99, i8* %BRANCH_TAKEN, i64 163, i64 6, i64 6)
  store %struct.Memory* %call_414a99, %struct.Memory** %MEMORY

  %loadBr_414a99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414a99 = icmp eq i8 %loadBr_414a99, 1
  br i1 %cmpBr_414a99, label %block_.L_414b3c, label %block_414a9f

block_414a9f:
  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414a9f	 Bytes: 7
  %loadMem_414a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414a9f = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414a9f)
  store %struct.Memory* %call_414a9f, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414aa6	 Bytes: 4
  %loadMem_414aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414aa6 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414aa6)
  store %struct.Memory* %call_414aa6, %struct.Memory** %MEMORY

  ; Code: movslq -0x4038(%rbp), %rcx	 RIP: 414aaa	 Bytes: 7
  %loadMem_414aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414aaa = call %struct.Memory* @routine_movslq_MINUS0x4038__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414aaa)
  store %struct.Memory* %call_414aaa, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 414ab1	 Bytes: 4
  %loadMem_414ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ab1 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ab1)
  store %struct.Memory* %call_414ab1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f5e100, 0x8(%rax)	 RIP: 414ab5	 Bytes: 7
  %loadMem_414ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ab5 = call %struct.Memory* @routine_cmpl__0x5f5e100__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ab5)
  store %struct.Memory* %call_414ab5, %struct.Memory** %MEMORY

  ; Code: jne .L_414b3c	 RIP: 414abc	 Bytes: 6
  %loadMem_414abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414abc = call %struct.Memory* @routine_jne_.L_414b3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414abc, i8* %BRANCH_TAKEN, i64 128, i64 6, i64 6)
  store %struct.Memory* %call_414abc, %struct.Memory** %MEMORY

  %loadBr_414abc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414abc = icmp eq i8 %loadBr_414abc, 1
  br i1 %cmpBr_414abc, label %block_.L_414b3c, label %block_414ac2

block_414ac2:
  ; Code: movl $0x1, 0x62e4f8	 RIP: 414ac2	 Bytes: 11
  %loadMem_414ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ac2 = call %struct.Memory* @routine_movl__0x1__0x62e4f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ac2)
  store %struct.Memory* %call_414ac2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x880654	 RIP: 414acd	 Bytes: 8
  %loadMem_414acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414acd = call %struct.Memory* @routine_cmpl__0x0__0x880654(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414acd)
  store %struct.Memory* %call_414acd, %struct.Memory** %MEMORY

  ; Code: jne .L_414afd	 RIP: 414ad5	 Bytes: 6
  %loadMem_414ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ad5 = call %struct.Memory* @routine_jne_.L_414afd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ad5, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_414ad5, %struct.Memory** %MEMORY

  %loadBr_414ad5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414ad5 = icmp eq i8 %loadBr_414ad5, 1
  br i1 %cmpBr_414ad5, label %block_.L_414afd, label %block_414adb

block_414adb:
  ; Code: movq $0x428e4b, %rdi	 RIP: 414adb	 Bytes: 10
  %loadMem_414adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414adb = call %struct.Memory* @routine_movq__0x428e4b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414adb)
  store %struct.Memory* %call_414adb, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x880654	 RIP: 414ae5	 Bytes: 11
  %loadMem_414ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ae5 = call %struct.Memory* @routine_movl__0x1__0x880654(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ae5)
  store %struct.Memory* %call_414ae5, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 414af0	 Bytes: 2
  %loadMem_414af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414af0 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414af0)
  store %struct.Memory* %call_414af0, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 414af2	 Bytes: 5
  %loadMem1_414af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414af2 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414af2, i64 -81474, i64 5, i64 5)
  store %struct.Memory* %call1_414af2, %struct.Memory** %MEMORY

  %loadMem2_414af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414af2 = load i64, i64* %3
  %call2_414af2 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_414af2, %struct.Memory* %loadMem2_414af2)
  store %struct.Memory* %call2_414af2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40a8(%rbp)	 RIP: 414af7	 Bytes: 6
  %loadMem_414af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414af7 = call %struct.Memory* @routine_movl__eax__MINUS0x40a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414af7)
  store %struct.Memory* %call_414af7, %struct.Memory** %MEMORY

  ; Code: .L_414afd:	 RIP: 414afd	 Bytes: 0
  br label %block_.L_414afd
block_.L_414afd:

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414afd	 Bytes: 7
  %loadMem_414afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414afd = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414afd)
  store %struct.Memory* %call_414afd, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414b04	 Bytes: 4
  %loadMem_414b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b04 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b04)
  store %struct.Memory* %call_414b04, %struct.Memory** %MEMORY

  ; Code: movslq -0x4038(%rbp), %rcx	 RIP: 414b08	 Bytes: 7
  %loadMem_414b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b08 = call %struct.Memory* @routine_movslq_MINUS0x4038__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b08)
  store %struct.Memory* %call_414b08, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 414b0f	 Bytes: 4
  %loadMem_414b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b0f = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b0f)
  store %struct.Memory* %call_414b0f, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rcx	 RIP: 414b13	 Bytes: 4
  %loadMem_414b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b13 = call %struct.Memory* @routine_movq_0x20__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b13)
  store %struct.Memory* %call_414b13, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x62ea20	 RIP: 414b17	 Bytes: 8
  %loadMem_414b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b17 = call %struct.Memory* @routine_movq__rcx__0x62ea20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b17)
  store %struct.Memory* %call_414b17, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rcx	 RIP: 414b1f	 Bytes: 4
  %loadMem_414b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b1f = call %struct.Memory* @routine_movq_0x28__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b1f)
  store %struct.Memory* %call_414b1f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x62ea28	 RIP: 414b23	 Bytes: 8
  %loadMem_414b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b23 = call %struct.Memory* @routine_movq__rcx__0x62ea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b23)
  store %struct.Memory* %call_414b23, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 414b2b	 Bytes: 4
  %loadMem_414b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b2b = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b2b)
  store %struct.Memory* %call_414b2b, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x62ea30	 RIP: 414b2f	 Bytes: 8
  %loadMem_414b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b2f = call %struct.Memory* @routine_movq__rax__0x62ea30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b2f)
  store %struct.Memory* %call_414b2f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_414ba5	 RIP: 414b37	 Bytes: 5
  %loadMem_414b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b37 = call %struct.Memory* @routine_jmpq_.L_414ba5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b37, i64 110, i64 5)
  store %struct.Memory* %call_414b37, %struct.Memory** %MEMORY

  br label %block_.L_414ba5

  ; Code: .L_414b3c:	 RIP: 414b3c	 Bytes: 0
block_.L_414b3c:

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414b3c	 Bytes: 7
  %loadMem_414b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b3c = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b3c)
  store %struct.Memory* %call_414b3c, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414b43	 Bytes: 4
  %loadMem_414b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b43 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b43)
  store %struct.Memory* %call_414b43, %struct.Memory** %MEMORY

  ; Code: movslq -0x4038(%rbp), %rcx	 RIP: 414b47	 Bytes: 7
  %loadMem_414b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b47 = call %struct.Memory* @routine_movslq_MINUS0x4038__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b47)
  store %struct.Memory* %call_414b47, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 414b4e	 Bytes: 4
  %loadMem_414b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b4e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b4e)
  store %struct.Memory* %call_414b4e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8(%rax)	 RIP: 414b52	 Bytes: 4
  %loadMem_414b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b52 = call %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b52)
  store %struct.Memory* %call_414b52, %struct.Memory** %MEMORY

  ; Code: jne .L_414ba0	 RIP: 414b56	 Bytes: 6
  %loadMem_414b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b56 = call %struct.Memory* @routine_jne_.L_414ba0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b56, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_414b56, %struct.Memory** %MEMORY

  %loadBr_414b56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414b56 = icmp eq i8 %loadBr_414b56, 1
  br i1 %cmpBr_414b56, label %block_.L_414ba0, label %block_414b5c

block_414b5c:
  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414b5c	 Bytes: 7
  %loadMem_414b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b5c = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b5c)
  store %struct.Memory* %call_414b5c, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414b63	 Bytes: 4
  %loadMem_414b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b63 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b63)
  store %struct.Memory* %call_414b63, %struct.Memory** %MEMORY

  ; Code: movslq -0x4038(%rbp), %rcx	 RIP: 414b67	 Bytes: 7
  %loadMem_414b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b67 = call %struct.Memory* @routine_movslq_MINUS0x4038__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b67)
  store %struct.Memory* %call_414b67, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 414b6e	 Bytes: 4
  %loadMem_414b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b6e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b6e)
  store %struct.Memory* %call_414b6e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f5e100, 0x4(%rax)	 RIP: 414b72	 Bytes: 7
  %loadMem_414b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b72 = call %struct.Memory* @routine_cmpl__0x5f5e100__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b72)
  store %struct.Memory* %call_414b72, %struct.Memory** %MEMORY

  ; Code: jne .L_414ba0	 RIP: 414b79	 Bytes: 6
  %loadMem_414b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b79 = call %struct.Memory* @routine_jne_.L_414ba0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b79, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_414b79, %struct.Memory** %MEMORY

  %loadBr_414b79 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414b79 = icmp eq i8 %loadBr_414b79, 1
  br i1 %cmpBr_414b79, label %block_.L_414ba0, label %block_414b7f

block_414b7f:
  ; Code: movslq -0x403c(%rbp), %rax	 RIP: 414b7f	 Bytes: 7
  %loadMem_414b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b7f = call %struct.Memory* @routine_movslq_MINUS0x403c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b7f)
  store %struct.Memory* %call_414b7f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x886bf0(,%rax,4)	 RIP: 414b86	 Bytes: 11
  %loadMem_414b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b86 = call %struct.Memory* @routine_movl__0x1__0x886bf0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b86)
  store %struct.Memory* %call_414b86, %struct.Memory** %MEMORY

  ; Code: movl -0x4040(%rbp), %ecx	 RIP: 414b91	 Bytes: 6
  %loadMem_414b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b91 = call %struct.Memory* @routine_movl_MINUS0x4040__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b91)
  store %struct.Memory* %call_414b91, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 414b97	 Bytes: 3
  %loadMem_414b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b97 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b97)
  store %struct.Memory* %call_414b97, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4040(%rbp)	 RIP: 414b9a	 Bytes: 6
  %loadMem_414b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414b9a = call %struct.Memory* @routine_movl__ecx__MINUS0x4040__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414b9a)
  store %struct.Memory* %call_414b9a, %struct.Memory** %MEMORY

  ; Code: .L_414ba0:	 RIP: 414ba0	 Bytes: 0
  br label %block_.L_414ba0
block_.L_414ba0:

  ; Code: jmpq .L_414ba5	 RIP: 414ba0	 Bytes: 5
  %loadMem_414ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ba0 = call %struct.Memory* @routine_jmpq_.L_414ba5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ba0, i64 5, i64 5)
  store %struct.Memory* %call_414ba0, %struct.Memory** %MEMORY

  br label %block_.L_414ba5

  ; Code: .L_414ba5:	 RIP: 414ba5	 Bytes: 0
block_.L_414ba5:

  ; Code: jmpq .L_414baa	 RIP: 414ba5	 Bytes: 5
  %loadMem_414ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ba5 = call %struct.Memory* @routine_jmpq_.L_414baa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ba5, i64 5, i64 5)
  store %struct.Memory* %call_414ba5, %struct.Memory** %MEMORY

  br label %block_.L_414baa

  ; Code: .L_414baa:	 RIP: 414baa	 Bytes: 0
block_.L_414baa:

  ; Code: jmpq .L_41463b	 RIP: 414baa	 Bytes: 5
  %loadMem_414baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414baa = call %struct.Memory* @routine_jmpq_.L_41463b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414baa, i64 -1391, i64 5)
  store %struct.Memory* %call_414baa, %struct.Memory** %MEMORY

  br label %block_.L_41463b

  ; Code: .L_414baf:	 RIP: 414baf	 Bytes: 0
block_.L_414baf:

  ; Code: movss 0x137e1(%rip), %xmm0	 RIP: 414baf	 Bytes: 8
  %loadMem_414baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414baf = call %struct.Memory* @routine_movss_0x137e1__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414baf)
  store %struct.Memory* %call_414baf, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4008(%rbp)	 RIP: 414bb7	 Bytes: 10
  %loadMem_414bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414bb7 = call %struct.Memory* @routine_movl__0x0__MINUS0x4008__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414bb7)
  store %struct.Memory* %call_414bb7, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x405c(%rbp)	 RIP: 414bc1	 Bytes: 8
  %loadMem_414bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414bc1 = call %struct.Memory* @routine_movss__xmm0__MINUS0x405c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414bc1)
  store %struct.Memory* %call_414bc1, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4060(%rbp)	 RIP: 414bc9	 Bytes: 10
  %loadMem_414bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414bc9 = call %struct.Memory* @routine_movl__0x0__MINUS0x4060__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414bc9)
  store %struct.Memory* %call_414bc9, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414bd3	 Bytes: 7
  %loadMem_414bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414bd3 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414bd3)
  store %struct.Memory* %call_414bd3, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, 0x2(%rax)	 RIP: 414bda	 Bytes: 4
  %loadMem_414bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414bda = call %struct.Memory* @routine_cmpb__0x0__0x2__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414bda)
  store %struct.Memory* %call_414bda, %struct.Memory** %MEMORY

  ; Code: je .L_414e0b	 RIP: 414bde	 Bytes: 6
  %loadMem_414bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414bde = call %struct.Memory* @routine_je_.L_414e0b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414bde, i8* %BRANCH_TAKEN, i64 557, i64 6, i64 6)
  store %struct.Memory* %call_414bde, %struct.Memory** %MEMORY

  %loadBr_414bde = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414bde = icmp eq i8 %loadBr_414bde, 1
  br i1 %cmpBr_414bde, label %block_.L_414e0b, label %block_414be4

block_414be4:
  ; Code: movl $0x0, -0x4004(%rbp)	 RIP: 414be4	 Bytes: 10
  %loadMem_414be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414be4 = call %struct.Memory* @routine_movl__0x0__MINUS0x4004__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414be4)
  store %struct.Memory* %call_414be4, %struct.Memory** %MEMORY

  ; Code: .L_414bee:	 RIP: 414bee	 Bytes: 0
  br label %block_.L_414bee
block_.L_414bee:

  ; Code: movl -0x4004(%rbp), %eax	 RIP: 414bee	 Bytes: 6
  %loadMem_414bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414bee = call %struct.Memory* @routine_movl_MINUS0x4004__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414bee)
  store %struct.Memory* %call_414bee, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4010(%rbp), %eax	 RIP: 414bf4	 Bytes: 6
  %loadMem_414bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414bf4 = call %struct.Memory* @routine_cmpl_MINUS0x4010__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414bf4)
  store %struct.Memory* %call_414bf4, %struct.Memory** %MEMORY

  ; Code: jge .L_414e06	 RIP: 414bfa	 Bytes: 6
  %loadMem_414bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414bfa = call %struct.Memory* @routine_jge_.L_414e06(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414bfa, i8* %BRANCH_TAKEN, i64 524, i64 6, i64 6)
  store %struct.Memory* %call_414bfa, %struct.Memory** %MEMORY

  %loadBr_414bfa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414bfa = icmp eq i8 %loadBr_414bfa, 1
  br i1 %cmpBr_414bfa, label %block_.L_414e06, label %block_414c00

block_414c00:
  ; Code: movslq -0x4004(%rbp), %rax	 RIP: 414c00	 Bytes: 7
  %loadMem_414c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c00 = call %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c00)
  store %struct.Memory* %call_414c00, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x3800(%rbp,%rax,4)	 RIP: 414c07	 Bytes: 8
  %loadMem_414c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c07 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3800__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c07)
  store %struct.Memory* %call_414c07, %struct.Memory** %MEMORY

  ; Code: je .L_414ded	 RIP: 414c0f	 Bytes: 6
  %loadMem_414c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c0f = call %struct.Memory* @routine_je_.L_414ded(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c0f, i8* %BRANCH_TAKEN, i64 478, i64 6, i64 6)
  store %struct.Memory* %call_414c0f, %struct.Memory** %MEMORY

  %loadBr_414c0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414c0f = icmp eq i8 %loadBr_414c0f, 1
  br i1 %cmpBr_414c0f, label %block_.L_414ded, label %block_414c15

block_414c15:
  ; Code: leaq -0x4054(%rbp), %rdi	 RIP: 414c15	 Bytes: 7
  %loadMem_414c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c15 = call %struct.Memory* @routine_leaq_MINUS0x4054__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c15)
  store %struct.Memory* %call_414c15, %struct.Memory** %MEMORY

  ; Code: leaq -0x3000(%rbp), %rax	 RIP: 414c1c	 Bytes: 7
  %loadMem_414c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c1c = call %struct.Memory* @routine_leaq_MINUS0x3000__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c1c)
  store %struct.Memory* %call_414c1c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4004(%rbp), %rcx	 RIP: 414c23	 Bytes: 7
  %loadMem_414c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c23 = call %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c23)
  store %struct.Memory* %call_414c23, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 414c2a	 Bytes: 4
  %loadMem_414c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c2a = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c2a)
  store %struct.Memory* %call_414c2a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 414c2e	 Bytes: 3
  %loadMem_414c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c2e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c2e)
  store %struct.Memory* %call_414c2e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rcx	 RIP: 414c31	 Bytes: 3
  %loadMem_414c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c31 = call %struct.Memory* @routine_movq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c31)
  store %struct.Memory* %call_414c31, %struct.Memory** %MEMORY

  ; Code: movq %rcx, (%rsp)	 RIP: 414c34	 Bytes: 4
  %loadMem_414c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c34 = call %struct.Memory* @routine_movq__rcx____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c34)
  store %struct.Memory* %call_414c34, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rcx	 RIP: 414c38	 Bytes: 4
  %loadMem_414c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c38 = call %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c38)
  store %struct.Memory* %call_414c38, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x8(%rsp)	 RIP: 414c3c	 Bytes: 5
  %loadMem_414c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c3c = call %struct.Memory* @routine_movq__rcx__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c3c)
  store %struct.Memory* %call_414c3c, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414c41	 Bytes: 4
  %loadMem_414c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c41 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c41)
  store %struct.Memory* %call_414c41, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rsp)	 RIP: 414c45	 Bytes: 5
  %loadMem_414c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c45 = call %struct.Memory* @routine_movq__rax__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c45)
  store %struct.Memory* %call_414c45, %struct.Memory** %MEMORY

  ; Code: callq .comp_to_san	 RIP: 414c4a	 Bytes: 5
  %loadMem1_414c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414c4a = call %struct.Memory* @routine_callq_.comp_to_san(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414c4a, i64 52518, i64 5, i64 5)
  store %struct.Memory* %call1_414c4a, %struct.Memory** %MEMORY

  %loadMem2_414c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414c4a = load i64, i64* %3
  %call2_414c4a = call %struct.Memory* @sub_421970.comp_to_san(%struct.State* %0, i64  %loadPC_414c4a, %struct.Memory* %loadMem2_414c4a)
  store %struct.Memory* %call2_414c4a, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414c4f	 Bytes: 7
  %loadMem_414c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c4f = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c4f)
  store %struct.Memory* %call_414c4f, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414c56	 Bytes: 4
  %loadMem_414c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c56 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c56)
  store %struct.Memory* %call_414c56, %struct.Memory** %MEMORY

  ; Code: movslq -0x4008(%rbp), %rcx	 RIP: 414c5a	 Bytes: 7
  %loadMem_414c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c5a = call %struct.Memory* @routine_movslq_MINUS0x4008__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c5a)
  store %struct.Memory* %call_414c5a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 414c61	 Bytes: 4
  %loadMem_414c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c61 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c61)
  store %struct.Memory* %call_414c61, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4(%rax)	 RIP: 414c65	 Bytes: 4
  %loadMem_414c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c65 = call %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c65)
  store %struct.Memory* %call_414c65, %struct.Memory** %MEMORY

  ; Code: je .L_414d89	 RIP: 414c69	 Bytes: 6
  %loadMem_414c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c69 = call %struct.Memory* @routine_je_.L_414d89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c69, i8* %BRANCH_TAKEN, i64 288, i64 6, i64 6)
  store %struct.Memory* %call_414c69, %struct.Memory** %MEMORY

  %loadBr_414c69 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414c69 = icmp eq i8 %loadBr_414c69, 1
  br i1 %cmpBr_414c69, label %block_.L_414d89, label %block_414c6f

block_414c6f:
  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414c6f	 Bytes: 7
  %loadMem_414c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c6f = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c6f)
  store %struct.Memory* %call_414c6f, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414c76	 Bytes: 4
  %loadMem_414c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c76 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c76)
  store %struct.Memory* %call_414c76, %struct.Memory** %MEMORY

  ; Code: movslq -0x4008(%rbp), %rcx	 RIP: 414c7a	 Bytes: 7
  %loadMem_414c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c7a = call %struct.Memory* @routine_movslq_MINUS0x4008__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c7a)
  store %struct.Memory* %call_414c7a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 414c81	 Bytes: 4
  %loadMem_414c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c81 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c81)
  store %struct.Memory* %call_414c81, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x8(%rax), %xmm0	 RIP: 414c85	 Bytes: 5
  %loadMem_414c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c85 = call %struct.Memory* @routine_cvtsi2ssl_0x8__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c85)
  store %struct.Memory* %call_414c85, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414c8a	 Bytes: 7
  %loadMem_414c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c8a = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c8a)
  store %struct.Memory* %call_414c8a, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414c91	 Bytes: 4
  %loadMem_414c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c91 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c91)
  store %struct.Memory* %call_414c91, %struct.Memory** %MEMORY

  ; Code: movslq -0x4008(%rbp), %rcx	 RIP: 414c95	 Bytes: 7
  %loadMem_414c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c95 = call %struct.Memory* @routine_movslq_MINUS0x4008__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c95)
  store %struct.Memory* %call_414c95, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 414c9c	 Bytes: 4
  %loadMem_414c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414c9c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414c9c)
  store %struct.Memory* %call_414c9c, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x4(%rax), %xmm1	 RIP: 414ca0	 Bytes: 5
  %loadMem_414ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ca0 = call %struct.Memory* @routine_cvtsi2ssl_0x4__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ca0)
  store %struct.Memory* %call_414ca0, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 414ca5	 Bytes: 4
  %loadMem_414ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ca5 = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ca5)
  store %struct.Memory* %call_414ca5, %struct.Memory** %MEMORY

  ; Code: ucomiss -0x405c(%rbp), %xmm0	 RIP: 414ca9	 Bytes: 7
  %loadMem_414ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ca9 = call %struct.Memory* @routine_ucomiss_MINUS0x405c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ca9)
  store %struct.Memory* %call_414ca9, %struct.Memory** %MEMORY

  ; Code: jbe .L_414d32	 RIP: 414cb0	 Bytes: 6
  %loadMem_414cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414cb0 = call %struct.Memory* @routine_jbe_.L_414d32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414cb0, i8* %BRANCH_TAKEN, i64 130, i64 6, i64 6)
  store %struct.Memory* %call_414cb0, %struct.Memory** %MEMORY

  %loadBr_414cb0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414cb0 = icmp eq i8 %loadBr_414cb0, 1
  br i1 %cmpBr_414cb0, label %block_.L_414d32, label %block_414cb6

block_414cb6:
  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414cb6	 Bytes: 7
  %loadMem_414cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414cb6 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414cb6)
  store %struct.Memory* %call_414cb6, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414cbd	 Bytes: 4
  %loadMem_414cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414cbd = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414cbd)
  store %struct.Memory* %call_414cbd, %struct.Memory** %MEMORY

  ; Code: movslq -0x4008(%rbp), %rcx	 RIP: 414cc1	 Bytes: 7
  %loadMem_414cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414cc1 = call %struct.Memory* @routine_movslq_MINUS0x4008__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414cc1)
  store %struct.Memory* %call_414cc1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 414cc8	 Bytes: 4
  %loadMem_414cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414cc8 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414cc8)
  store %struct.Memory* %call_414cc8, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x8(%rax), %xmm0	 RIP: 414ccc	 Bytes: 5
  %loadMem_414ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ccc = call %struct.Memory* @routine_cvtsi2ssl_0x8__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ccc)
  store %struct.Memory* %call_414ccc, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414cd1	 Bytes: 7
  %loadMem_414cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414cd1 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414cd1)
  store %struct.Memory* %call_414cd1, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414cd8	 Bytes: 4
  %loadMem_414cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414cd8 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414cd8)
  store %struct.Memory* %call_414cd8, %struct.Memory** %MEMORY

  ; Code: movslq -0x4008(%rbp), %rcx	 RIP: 414cdc	 Bytes: 7
  %loadMem_414cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414cdc = call %struct.Memory* @routine_movslq_MINUS0x4008__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414cdc)
  store %struct.Memory* %call_414cdc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 414ce3	 Bytes: 4
  %loadMem_414ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ce3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ce3)
  store %struct.Memory* %call_414ce3, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x4(%rax), %xmm1	 RIP: 414ce7	 Bytes: 5
  %loadMem_414ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ce7 = call %struct.Memory* @routine_cvtsi2ssl_0x4__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ce7)
  store %struct.Memory* %call_414ce7, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 414cec	 Bytes: 4
  %loadMem_414cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414cec = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414cec)
  store %struct.Memory* %call_414cec, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x405c(%rbp)	 RIP: 414cf0	 Bytes: 8
  %loadMem_414cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414cf0 = call %struct.Memory* @routine_movss__xmm0__MINUS0x405c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414cf0)
  store %struct.Memory* %call_414cf0, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414cf8	 Bytes: 7
  %loadMem_414cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414cf8 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414cf8)
  store %struct.Memory* %call_414cf8, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414cff	 Bytes: 4
  %loadMem_414cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414cff = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414cff)
  store %struct.Memory* %call_414cff, %struct.Memory** %MEMORY

  ; Code: movslq -0x4008(%rbp), %rcx	 RIP: 414d03	 Bytes: 7
  %loadMem_414d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d03 = call %struct.Memory* @routine_movslq_MINUS0x4008__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d03)
  store %struct.Memory* %call_414d03, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 414d0a	 Bytes: 4
  %loadMem_414d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d0a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d0a)
  store %struct.Memory* %call_414d0a, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rcx	 RIP: 414d0e	 Bytes: 4
  %loadMem_414d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d0e = call %struct.Memory* @routine_movq_0x20__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d0e)
  store %struct.Memory* %call_414d0e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x62ea20	 RIP: 414d12	 Bytes: 8
  %loadMem_414d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d12 = call %struct.Memory* @routine_movq__rcx__0x62ea20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d12)
  store %struct.Memory* %call_414d12, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rcx	 RIP: 414d1a	 Bytes: 4
  %loadMem_414d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d1a = call %struct.Memory* @routine_movq_0x28__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d1a)
  store %struct.Memory* %call_414d1a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x62ea28	 RIP: 414d1e	 Bytes: 8
  %loadMem_414d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d1e = call %struct.Memory* @routine_movq__rcx__0x62ea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d1e)
  store %struct.Memory* %call_414d1e, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 414d26	 Bytes: 4
  %loadMem_414d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d26 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d26)
  store %struct.Memory* %call_414d26, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x62ea30	 RIP: 414d2a	 Bytes: 8
  %loadMem_414d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d2a = call %struct.Memory* @routine_movq__rax__0x62ea30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d2a)
  store %struct.Memory* %call_414d2a, %struct.Memory** %MEMORY

  ; Code: .L_414d32:	 RIP: 414d32	 Bytes: 0
  br label %block_.L_414d32
block_.L_414d32:

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414d32	 Bytes: 7
  %loadMem_414d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d32 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d32)
  store %struct.Memory* %call_414d32, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414d39	 Bytes: 4
  %loadMem_414d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d39 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d39)
  store %struct.Memory* %call_414d39, %struct.Memory** %MEMORY

  ; Code: movslq -0x4008(%rbp), %rcx	 RIP: 414d3d	 Bytes: 7
  %loadMem_414d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d3d = call %struct.Memory* @routine_movslq_MINUS0x4008__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d3d)
  store %struct.Memory* %call_414d3d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 414d44	 Bytes: 4
  %loadMem_414d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d44 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d44)
  store %struct.Memory* %call_414d44, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8(%rax)	 RIP: 414d48	 Bytes: 4
  %loadMem_414d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d48 = call %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d48)
  store %struct.Memory* %call_414d48, %struct.Memory** %MEMORY

  ; Code: jne .L_414d84	 RIP: 414d4c	 Bytes: 6
  %loadMem_414d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d4c = call %struct.Memory* @routine_jne_.L_414d84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d4c, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_414d4c, %struct.Memory** %MEMORY

  %loadBr_414d4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414d4c = icmp eq i8 %loadBr_414d4c, 1
  br i1 %cmpBr_414d4c, label %block_.L_414d84, label %block_414d52

block_414d52:
  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414d52	 Bytes: 7
  %loadMem_414d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d52 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d52)
  store %struct.Memory* %call_414d52, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414d59	 Bytes: 4
  %loadMem_414d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d59 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d59)
  store %struct.Memory* %call_414d59, %struct.Memory** %MEMORY

  ; Code: movslq -0x4008(%rbp), %rcx	 RIP: 414d5d	 Bytes: 7
  %loadMem_414d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d5d = call %struct.Memory* @routine_movslq_MINUS0x4008__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d5d)
  store %struct.Memory* %call_414d5d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 414d64	 Bytes: 4
  %loadMem_414d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d64 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d64)
  store %struct.Memory* %call_414d64, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f5e100, 0x4(%rax)	 RIP: 414d68	 Bytes: 7
  %loadMem_414d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d68 = call %struct.Memory* @routine_cmpl__0x5f5e100__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d68)
  store %struct.Memory* %call_414d68, %struct.Memory** %MEMORY

  ; Code: jne .L_414d84	 RIP: 414d6f	 Bytes: 6
  %loadMem_414d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d6f = call %struct.Memory* @routine_jne_.L_414d84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d6f, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_414d6f, %struct.Memory** %MEMORY

  %loadBr_414d6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414d6f = icmp eq i8 %loadBr_414d6f, 1
  br i1 %cmpBr_414d6f, label %block_.L_414d84, label %block_414d75

block_414d75:
  ; Code: movl -0x4060(%rbp), %eax	 RIP: 414d75	 Bytes: 6
  %loadMem_414d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d75 = call %struct.Memory* @routine_movl_MINUS0x4060__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d75)
  store %struct.Memory* %call_414d75, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 414d7b	 Bytes: 3
  %loadMem_414d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d7b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d7b)
  store %struct.Memory* %call_414d7b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4060(%rbp)	 RIP: 414d7e	 Bytes: 6
  %loadMem_414d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d7e = call %struct.Memory* @routine_movl__eax__MINUS0x4060__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d7e)
  store %struct.Memory* %call_414d7e, %struct.Memory** %MEMORY

  ; Code: .L_414d84:	 RIP: 414d84	 Bytes: 0
  br label %block_.L_414d84
block_.L_414d84:

  ; Code: jmpq .L_414dde	 RIP: 414d84	 Bytes: 5
  %loadMem_414d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d84 = call %struct.Memory* @routine_jmpq_.L_414dde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d84, i64 90, i64 5)
  store %struct.Memory* %call_414d84, %struct.Memory** %MEMORY

  br label %block_.L_414dde

  ; Code: .L_414d89:	 RIP: 414d89	 Bytes: 0
block_.L_414d89:

  ; Code: movss 0x1360b(%rip), %xmm0	 RIP: 414d89	 Bytes: 8
  %loadMem_414d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d89 = call %struct.Memory* @routine_movss_0x1360b__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d89)
  store %struct.Memory* %call_414d89, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x62e4f8	 RIP: 414d91	 Bytes: 11
  %loadMem_414d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d91 = call %struct.Memory* @routine_movl__0x1__0x62e4f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d91)
  store %struct.Memory* %call_414d91, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414d9c	 Bytes: 7
  %loadMem_414d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414d9c = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414d9c)
  store %struct.Memory* %call_414d9c, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414da3	 Bytes: 4
  %loadMem_414da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414da3 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414da3)
  store %struct.Memory* %call_414da3, %struct.Memory** %MEMORY

  ; Code: movslq -0x4008(%rbp), %rcx	 RIP: 414da7	 Bytes: 7
  %loadMem_414da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414da7 = call %struct.Memory* @routine_movslq_MINUS0x4008__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414da7)
  store %struct.Memory* %call_414da7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 414dae	 Bytes: 4
  %loadMem_414dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414dae = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414dae)
  store %struct.Memory* %call_414dae, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rcx	 RIP: 414db2	 Bytes: 4
  %loadMem_414db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414db2 = call %struct.Memory* @routine_movq_0x20__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414db2)
  store %struct.Memory* %call_414db2, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x62ea20	 RIP: 414db6	 Bytes: 8
  %loadMem_414db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414db6 = call %struct.Memory* @routine_movq__rcx__0x62ea20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414db6)
  store %struct.Memory* %call_414db6, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rcx	 RIP: 414dbe	 Bytes: 4
  %loadMem_414dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414dbe = call %struct.Memory* @routine_movq_0x28__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414dbe)
  store %struct.Memory* %call_414dbe, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x62ea28	 RIP: 414dc2	 Bytes: 8
  %loadMem_414dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414dc2 = call %struct.Memory* @routine_movq__rcx__0x62ea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414dc2)
  store %struct.Memory* %call_414dc2, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 414dca	 Bytes: 4
  %loadMem_414dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414dca = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414dca)
  store %struct.Memory* %call_414dca, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x62ea30	 RIP: 414dce	 Bytes: 8
  %loadMem_414dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414dce = call %struct.Memory* @routine_movq__rax__0x62ea30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414dce)
  store %struct.Memory* %call_414dce, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x405c(%rbp)	 RIP: 414dd6	 Bytes: 8
  %loadMem_414dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414dd6 = call %struct.Memory* @routine_movss__xmm0__MINUS0x405c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414dd6)
  store %struct.Memory* %call_414dd6, %struct.Memory** %MEMORY

  ; Code: .L_414dde:	 RIP: 414dde	 Bytes: 0
  br label %block_.L_414dde
block_.L_414dde:

  ; Code: movl -0x4008(%rbp), %eax	 RIP: 414dde	 Bytes: 6
  %loadMem_414dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414dde = call %struct.Memory* @routine_movl_MINUS0x4008__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414dde)
  store %struct.Memory* %call_414dde, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 414de4	 Bytes: 3
  %loadMem_414de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414de4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414de4)
  store %struct.Memory* %call_414de4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4008(%rbp)	 RIP: 414de7	 Bytes: 6
  %loadMem_414de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414de7 = call %struct.Memory* @routine_movl__eax__MINUS0x4008__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414de7)
  store %struct.Memory* %call_414de7, %struct.Memory** %MEMORY

  ; Code: .L_414ded:	 RIP: 414ded	 Bytes: 0
  br label %block_.L_414ded
block_.L_414ded:

  ; Code: jmpq .L_414df2	 RIP: 414ded	 Bytes: 5
  %loadMem_414ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ded = call %struct.Memory* @routine_jmpq_.L_414df2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ded, i64 5, i64 5)
  store %struct.Memory* %call_414ded, %struct.Memory** %MEMORY

  br label %block_.L_414df2

  ; Code: .L_414df2:	 RIP: 414df2	 Bytes: 0
block_.L_414df2:

  ; Code: movl -0x4004(%rbp), %eax	 RIP: 414df2	 Bytes: 6
  %loadMem_414df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414df2 = call %struct.Memory* @routine_movl_MINUS0x4004__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414df2)
  store %struct.Memory* %call_414df2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 414df8	 Bytes: 3
  %loadMem_414df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414df8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414df8)
  store %struct.Memory* %call_414df8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4004(%rbp)	 RIP: 414dfb	 Bytes: 6
  %loadMem_414dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414dfb = call %struct.Memory* @routine_movl__eax__MINUS0x4004__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414dfb)
  store %struct.Memory* %call_414dfb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_414bee	 RIP: 414e01	 Bytes: 5
  %loadMem_414e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e01 = call %struct.Memory* @routine_jmpq_.L_414bee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e01, i64 -531, i64 5)
  store %struct.Memory* %call_414e01, %struct.Memory** %MEMORY

  br label %block_.L_414bee

  ; Code: .L_414e06:	 RIP: 414e06	 Bytes: 0
block_.L_414e06:

  ; Code: jmpq .L_414e0b	 RIP: 414e06	 Bytes: 5
  %loadMem_414e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e06 = call %struct.Memory* @routine_jmpq_.L_414e0b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e06, i64 5, i64 5)
  store %struct.Memory* %call_414e06, %struct.Memory** %MEMORY

  br label %block_.L_414e0b

  ; Code: .L_414e0b:	 RIP: 414e0b	 Bytes: 0
block_.L_414e0b:

  ; Code: leaq -0x4078(%rbp), %rax	 RIP: 414e0b	 Bytes: 7
  %loadMem_414e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e0b = call %struct.Memory* @routine_leaq_MINUS0x4078__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e0b)
  store %struct.Memory* %call_414e0b, %struct.Memory** %MEMORY

  ; Code: leaq -0x4054(%rbp), %rdi	 RIP: 414e12	 Bytes: 7
  %loadMem_414e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e12 = call %struct.Memory* @routine_leaq_MINUS0x4054__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e12)
  store %struct.Memory* %call_414e12, %struct.Memory** %MEMORY

  ; Code: movq 0x62ea20, %rcx	 RIP: 414e19	 Bytes: 8
  %loadMem_414e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e19 = call %struct.Memory* @routine_movq_0x62ea20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e19)
  store %struct.Memory* %call_414e19, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x4078(%rbp)	 RIP: 414e21	 Bytes: 7
  %loadMem_414e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e21 = call %struct.Memory* @routine_movq__rcx__MINUS0x4078__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e21)
  store %struct.Memory* %call_414e21, %struct.Memory** %MEMORY

  ; Code: movq 0x62ea28, %rcx	 RIP: 414e28	 Bytes: 8
  %loadMem_414e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e28 = call %struct.Memory* @routine_movq_0x62ea28___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e28)
  store %struct.Memory* %call_414e28, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x4070(%rbp)	 RIP: 414e30	 Bytes: 7
  %loadMem_414e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e30 = call %struct.Memory* @routine_movq__rcx__MINUS0x4070__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e30)
  store %struct.Memory* %call_414e30, %struct.Memory** %MEMORY

  ; Code: movq 0x62ea30, %rcx	 RIP: 414e37	 Bytes: 8
  %loadMem_414e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e37 = call %struct.Memory* @routine_movq_0x62ea30___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e37)
  store %struct.Memory* %call_414e37, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x4068(%rbp)	 RIP: 414e3f	 Bytes: 7
  %loadMem_414e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e3f = call %struct.Memory* @routine_movq__rcx__MINUS0x4068__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e3f)
  store %struct.Memory* %call_414e3f, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rcx	 RIP: 414e46	 Bytes: 3
  %loadMem_414e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e46 = call %struct.Memory* @routine_movq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e46)
  store %struct.Memory* %call_414e46, %struct.Memory** %MEMORY

  ; Code: movq %rcx, (%rsp)	 RIP: 414e49	 Bytes: 4
  %loadMem_414e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e49 = call %struct.Memory* @routine_movq__rcx____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e49)
  store %struct.Memory* %call_414e49, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rcx	 RIP: 414e4d	 Bytes: 4
  %loadMem_414e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e4d = call %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e4d)
  store %struct.Memory* %call_414e4d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x8(%rsp)	 RIP: 414e51	 Bytes: 5
  %loadMem_414e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e51 = call %struct.Memory* @routine_movq__rcx__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e51)
  store %struct.Memory* %call_414e51, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414e56	 Bytes: 4
  %loadMem_414e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e56 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e56)
  store %struct.Memory* %call_414e56, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rsp)	 RIP: 414e5a	 Bytes: 5
  %loadMem_414e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e5a = call %struct.Memory* @routine_movq__rax__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e5a)
  store %struct.Memory* %call_414e5a, %struct.Memory** %MEMORY

  ; Code: callq .comp_to_san	 RIP: 414e5f	 Bytes: 5
  %loadMem1_414e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414e5f = call %struct.Memory* @routine_callq_.comp_to_san(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414e5f, i64 51985, i64 5, i64 5)
  store %struct.Memory* %call1_414e5f, %struct.Memory** %MEMORY

  %loadMem2_414e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414e5f = load i64, i64* %3
  %call2_414e5f = call %struct.Memory* @sub_421970.comp_to_san(%struct.State* %0, i64  %loadPC_414e5f, %struct.Memory* %loadMem2_414e5f)
  store %struct.Memory* %call2_414e5f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8a2a04	 RIP: 414e64	 Bytes: 8
  %loadMem_414e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e64 = call %struct.Memory* @routine_cmpl__0x0__0x8a2a04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e64)
  store %struct.Memory* %call_414e64, %struct.Memory** %MEMORY

  ; Code: je .L_414ecb	 RIP: 414e6c	 Bytes: 6
  %loadMem_414e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e6c = call %struct.Memory* @routine_je_.L_414ecb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e6c, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_414e6c, %struct.Memory** %MEMORY

  %loadBr_414e6c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414e6c = icmp eq i8 %loadBr_414e6c, 1
  br i1 %cmpBr_414e6c, label %block_.L_414ecb, label %block_414e72

block_414e72:
  ; Code: cmpl $0x0, 0x86679c	 RIP: 414e72	 Bytes: 8
  %loadMem_414e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e72 = call %struct.Memory* @routine_cmpl__0x0__0x86679c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e72)
  store %struct.Memory* %call_414e72, %struct.Memory** %MEMORY

  ; Code: je .L_414ecb	 RIP: 414e7a	 Bytes: 6
  %loadMem_414e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e7a = call %struct.Memory* @routine_je_.L_414ecb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e7a, i8* %BRANCH_TAKEN, i64 81, i64 6, i64 6)
  store %struct.Memory* %call_414e7a, %struct.Memory** %MEMORY

  %loadBr_414e7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414e7a = icmp eq i8 %loadBr_414e7a, 1
  br i1 %cmpBr_414e7a, label %block_.L_414ecb, label %block_414e80

block_414e80:
  ; Code: movq $0x428e6d, %rdi	 RIP: 414e80	 Bytes: 10
  %loadMem_414e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e80 = call %struct.Memory* @routine_movq__0x428e6d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e80)
  store %struct.Memory* %call_414e80, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414e8a	 Bytes: 7
  %loadMem_414e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e8a = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e8a)
  store %struct.Memory* %call_414e8a, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %esi	 RIP: 414e91	 Bytes: 3
  %loadMem_414e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e91 = call %struct.Memory* @routine_movl_0x4__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e91)
  store %struct.Memory* %call_414e91, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rax	 RIP: 414e94	 Bytes: 7
  %loadMem_414e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e94 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e94)
  store %struct.Memory* %call_414e94, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 414e9b	 Bytes: 3
  %loadMem_414e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e9b = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e9b)
  store %struct.Memory* %call_414e9b, %struct.Memory** %MEMORY

  ; Code: movl -0x4060(%rbp), %ecx	 RIP: 414e9e	 Bytes: 6
  %loadMem_414e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414e9e = call %struct.Memory* @routine_movl_MINUS0x4060__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414e9e)
  store %struct.Memory* %call_414e9e, %struct.Memory** %MEMORY

  ; Code: movl 0x86bd80, %r8d	 RIP: 414ea4	 Bytes: 8
  %loadMem_414ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ea4 = call %struct.Memory* @routine_movl_0x86bd80___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ea4)
  store %struct.Memory* %call_414ea4, %struct.Memory** %MEMORY

  ; Code: movl -0x4048(%rbp), %r9d	 RIP: 414eac	 Bytes: 7
  %loadMem_414eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414eac = call %struct.Memory* @routine_movl_MINUS0x4048__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414eac)
  store %struct.Memory* %call_414eac, %struct.Memory** %MEMORY

  ; Code: movl -0x404c(%rbp), %r10d	 RIP: 414eb3	 Bytes: 7
  %loadMem_414eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414eb3 = call %struct.Memory* @routine_movl_MINUS0x404c__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414eb3)
  store %struct.Memory* %call_414eb3, %struct.Memory** %MEMORY

  ; Code: movl %r10d, (%rsp)	 RIP: 414eba	 Bytes: 4
  %loadMem_414eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414eba = call %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414eba)
  store %struct.Memory* %call_414eba, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 414ebe	 Bytes: 2
  %loadMem_414ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ebe = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ebe)
  store %struct.Memory* %call_414ebe, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 414ec0	 Bytes: 5
  %loadMem1_414ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414ec0 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414ec0, i64 -82448, i64 5, i64 5)
  store %struct.Memory* %call1_414ec0, %struct.Memory** %MEMORY

  %loadMem2_414ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414ec0 = load i64, i64* %3
  %call2_414ec0 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_414ec0, %struct.Memory* %loadMem2_414ec0)
  store %struct.Memory* %call2_414ec0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40ac(%rbp)	 RIP: 414ec5	 Bytes: 6
  %loadMem_414ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ec5 = call %struct.Memory* @routine_movl__eax__MINUS0x40ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ec5)
  store %struct.Memory* %call_414ec5, %struct.Memory** %MEMORY

  ; Code: .L_414ecb:	 RIP: 414ecb	 Bytes: 0
  br label %block_.L_414ecb
block_.L_414ecb:

  ; Code: movl -0x4060(%rbp), %eax	 RIP: 414ecb	 Bytes: 6
  %loadMem_414ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ecb = call %struct.Memory* @routine_movl_MINUS0x4060__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ecb)
  store %struct.Memory* %call_414ecb, %struct.Memory** %MEMORY

  ; Code: movl -0x400c(%rbp), %ecx	 RIP: 414ed1	 Bytes: 6
  %loadMem_414ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ed1 = call %struct.Memory* @routine_movl_MINUS0x400c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ed1)
  store %struct.Memory* %call_414ed1, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 414ed7	 Bytes: 3
  %loadMem_414ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ed7 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ed7)
  store %struct.Memory* %call_414ed7, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 414eda	 Bytes: 2
  %loadMem_414eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414eda = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414eda)
  store %struct.Memory* %call_414eda, %struct.Memory** %MEMORY

  ; Code: jne .L_414fa5	 RIP: 414edc	 Bytes: 6
  %loadMem_414edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414edc = call %struct.Memory* @routine_jne_.L_414fa5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414edc, i8* %BRANCH_TAKEN, i64 201, i64 6, i64 6)
  store %struct.Memory* %call_414edc, %struct.Memory** %MEMORY

  %loadBr_414edc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414edc = icmp eq i8 %loadBr_414edc, 1
  br i1 %cmpBr_414edc, label %block_.L_414fa5, label %block_414ee2

block_414ee2:
  ; Code: movq $0x428ecb, %rdi	 RIP: 414ee2	 Bytes: 10
  %loadMem_414ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ee2 = call %struct.Memory* @routine_movq__0x428ecb___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ee2)
  store %struct.Memory* %call_414ee2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 414eec	 Bytes: 2
  %loadMem_414eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414eec = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414eec)
  store %struct.Memory* %call_414eec, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 414eee	 Bytes: 5
  %loadMem1_414eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414eee = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414eee, i64 -82494, i64 5, i64 5)
  store %struct.Memory* %call1_414eee, %struct.Memory** %MEMORY

  %loadMem2_414eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414eee = load i64, i64* %3
  %call2_414eee = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_414eee, %struct.Memory* %loadMem2_414eee)
  store %struct.Memory* %call2_414eee, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4004(%rbp)	 RIP: 414ef3	 Bytes: 10
  %loadMem_414ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414ef3 = call %struct.Memory* @routine_movl__0x0__MINUS0x4004__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414ef3)
  store %struct.Memory* %call_414ef3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40b0(%rbp)	 RIP: 414efd	 Bytes: 6
  %loadMem_414efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414efd = call %struct.Memory* @routine_movl__eax__MINUS0x40b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414efd)
  store %struct.Memory* %call_414efd, %struct.Memory** %MEMORY

  ; Code: .L_414f03:	 RIP: 414f03	 Bytes: 0
  br label %block_.L_414f03
block_.L_414f03:

  ; Code: movl -0x4004(%rbp), %eax	 RIP: 414f03	 Bytes: 6
  %loadMem_414f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f03 = call %struct.Memory* @routine_movl_MINUS0x4004__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f03)
  store %struct.Memory* %call_414f03, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4010(%rbp), %eax	 RIP: 414f09	 Bytes: 6
  %loadMem_414f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f09 = call %struct.Memory* @routine_cmpl_MINUS0x4010__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f09)
  store %struct.Memory* %call_414f09, %struct.Memory** %MEMORY

  ; Code: jge .L_414fa0	 RIP: 414f0f	 Bytes: 6
  %loadMem_414f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f0f = call %struct.Memory* @routine_jge_.L_414fa0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f0f, i8* %BRANCH_TAKEN, i64 145, i64 6, i64 6)
  store %struct.Memory* %call_414f0f, %struct.Memory** %MEMORY

  %loadBr_414f0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414f0f = icmp eq i8 %loadBr_414f0f, 1
  br i1 %cmpBr_414f0f, label %block_.L_414fa0, label %block_414f15

block_414f15:
  ; Code: movslq -0x4004(%rbp), %rax	 RIP: 414f15	 Bytes: 7
  %loadMem_414f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f15 = call %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f15)
  store %struct.Memory* %call_414f15, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x886bf0(,%rax,4)	 RIP: 414f1c	 Bytes: 8
  %loadMem_414f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f1c = call %struct.Memory* @routine_cmpl__0x0__0x886bf0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f1c)
  store %struct.Memory* %call_414f1c, %struct.Memory** %MEMORY

  ; Code: jne .L_414f87	 RIP: 414f24	 Bytes: 6
  %loadMem_414f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f24 = call %struct.Memory* @routine_jne_.L_414f87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f24, i8* %BRANCH_TAKEN, i64 99, i64 6, i64 6)
  store %struct.Memory* %call_414f24, %struct.Memory** %MEMORY

  %loadBr_414f24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414f24 = icmp eq i8 %loadBr_414f24, 1
  br i1 %cmpBr_414f24, label %block_.L_414f87, label %block_414f2a

block_414f2a:
  ; Code: movslq -0x4004(%rbp), %rax	 RIP: 414f2a	 Bytes: 7
  %loadMem_414f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f2a = call %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f2a)
  store %struct.Memory* %call_414f2a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x3800(%rbp,%rax,4)	 RIP: 414f31	 Bytes: 8
  %loadMem_414f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f31 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3800__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f31)
  store %struct.Memory* %call_414f31, %struct.Memory** %MEMORY

  ; Code: je .L_414f87	 RIP: 414f39	 Bytes: 6
  %loadMem_414f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f39 = call %struct.Memory* @routine_je_.L_414f87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f39, i8* %BRANCH_TAKEN, i64 78, i64 6, i64 6)
  store %struct.Memory* %call_414f39, %struct.Memory** %MEMORY

  %loadBr_414f39 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414f39 = icmp eq i8 %loadBr_414f39, 1
  br i1 %cmpBr_414f39, label %block_.L_414f87, label %block_414f3f

block_414f3f:
  ; Code: leaq -0x3000(%rbp), %rax	 RIP: 414f3f	 Bytes: 7
  %loadMem_414f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f3f = call %struct.Memory* @routine_leaq_MINUS0x3000__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f3f)
  store %struct.Memory* %call_414f3f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x62e4f8	 RIP: 414f46	 Bytes: 11
  %loadMem_414f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f46 = call %struct.Memory* @routine_movl__0x1__0x62e4f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f46)
  store %struct.Memory* %call_414f46, %struct.Memory** %MEMORY

  ; Code: movslq -0x4004(%rbp), %rcx	 RIP: 414f51	 Bytes: 7
  %loadMem_414f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f51 = call %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f51)
  store %struct.Memory* %call_414f51, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 414f58	 Bytes: 4
  %loadMem_414f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f58 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f58)
  store %struct.Memory* %call_414f58, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 414f5c	 Bytes: 3
  %loadMem_414f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f5c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f5c)
  store %struct.Memory* %call_414f5c, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rcx	 RIP: 414f5f	 Bytes: 3
  %loadMem_414f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f5f = call %struct.Memory* @routine_movq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f5f)
  store %struct.Memory* %call_414f5f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x62ea20	 RIP: 414f62	 Bytes: 8
  %loadMem_414f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f62 = call %struct.Memory* @routine_movq__rcx__0x62ea20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f62)
  store %struct.Memory* %call_414f62, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rcx	 RIP: 414f6a	 Bytes: 4
  %loadMem_414f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f6a = call %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f6a)
  store %struct.Memory* %call_414f6a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x62ea28	 RIP: 414f6e	 Bytes: 8
  %loadMem_414f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f6e = call %struct.Memory* @routine_movq__rcx__0x62ea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f6e)
  store %struct.Memory* %call_414f6e, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 414f76	 Bytes: 4
  %loadMem_414f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f76 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f76)
  store %struct.Memory* %call_414f76, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x62ea30	 RIP: 414f7a	 Bytes: 8
  %loadMem_414f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f7a = call %struct.Memory* @routine_movq__rax__0x62ea30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f7a)
  store %struct.Memory* %call_414f7a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_414fa0	 RIP: 414f82	 Bytes: 5
  %loadMem_414f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f82 = call %struct.Memory* @routine_jmpq_.L_414fa0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f82, i64 30, i64 5)
  store %struct.Memory* %call_414f82, %struct.Memory** %MEMORY

  br label %block_.L_414fa0

  ; Code: .L_414f87:	 RIP: 414f87	 Bytes: 0
block_.L_414f87:

  ; Code: jmpq .L_414f8c	 RIP: 414f87	 Bytes: 5
  %loadMem_414f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f87 = call %struct.Memory* @routine_jmpq_.L_414f8c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f87, i64 5, i64 5)
  store %struct.Memory* %call_414f87, %struct.Memory** %MEMORY

  br label %block_.L_414f8c

  ; Code: .L_414f8c:	 RIP: 414f8c	 Bytes: 0
block_.L_414f8c:

  ; Code: movl -0x4004(%rbp), %eax	 RIP: 414f8c	 Bytes: 6
  %loadMem_414f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f8c = call %struct.Memory* @routine_movl_MINUS0x4004__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f8c)
  store %struct.Memory* %call_414f8c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 414f92	 Bytes: 3
  %loadMem_414f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f92 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f92)
  store %struct.Memory* %call_414f92, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4004(%rbp)	 RIP: 414f95	 Bytes: 6
  %loadMem_414f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f95 = call %struct.Memory* @routine_movl__eax__MINUS0x4004__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f95)
  store %struct.Memory* %call_414f95, %struct.Memory** %MEMORY

  ; Code: jmpq .L_414f03	 RIP: 414f9b	 Bytes: 5
  %loadMem_414f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414f9b = call %struct.Memory* @routine_jmpq_.L_414f03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414f9b, i64 -152, i64 5)
  store %struct.Memory* %call_414f9b, %struct.Memory** %MEMORY

  br label %block_.L_414f03

  ; Code: .L_414fa0:	 RIP: 414fa0	 Bytes: 0
block_.L_414fa0:

  ; Code: jmpq .L_414fa5	 RIP: 414fa0	 Bytes: 5
  %loadMem_414fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414fa0 = call %struct.Memory* @routine_jmpq_.L_414fa5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414fa0, i64 5, i64 5)
  store %struct.Memory* %call_414fa0, %struct.Memory** %MEMORY

  br label %block_.L_414fa5

  ; Code: .L_414fa5:	 RIP: 414fa5	 Bytes: 0
block_.L_414fa5:

  ; Code: movl -0x4060(%rbp), %eax	 RIP: 414fa5	 Bytes: 6
  %loadMem_414fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414fa5 = call %struct.Memory* @routine_movl_MINUS0x4060__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414fa5)
  store %struct.Memory* %call_414fa5, %struct.Memory** %MEMORY

  ; Code: cmpl -0x400c(%rbp), %eax	 RIP: 414fab	 Bytes: 6
  %loadMem_414fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414fab = call %struct.Memory* @routine_cmpl_MINUS0x400c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414fab)
  store %struct.Memory* %call_414fab, %struct.Memory** %MEMORY

  ; Code: jne .L_414fc2	 RIP: 414fb1	 Bytes: 6
  %loadMem_414fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414fb1 = call %struct.Memory* @routine_jne_.L_414fc2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414fb1, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_414fb1, %struct.Memory** %MEMORY

  %loadBr_414fb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414fb1 = icmp eq i8 %loadBr_414fb1, 1
  br i1 %cmpBr_414fb1, label %block_.L_414fc2, label %block_414fb7

block_414fb7:
  ; Code: movl $0x1, 0x62e51c	 RIP: 414fb7	 Bytes: 11
  %loadMem_414fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414fb7 = call %struct.Memory* @routine_movl__0x1__0x62e51c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414fb7)
  store %struct.Memory* %call_414fb7, %struct.Memory** %MEMORY

  ; Code: .L_414fc2:	 RIP: 414fc2	 Bytes: 0
  br label %block_.L_414fc2
block_.L_414fc2:

  ; Code: callq .Xfree	 RIP: 414fc2	 Bytes: 5
  %loadMem1_414fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414fc2 = call %struct.Memory* @routine_callq_.Xfree(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414fc2, i64 -9842, i64 5, i64 5)
  store %struct.Memory* %call1_414fc2, %struct.Memory** %MEMORY

  %loadMem2_414fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414fc2 = load i64, i64* %3
  %call2_414fc2 = call %struct.Memory* @sub_412950.Xfree(%struct.State* %0, i64  %loadPC_414fc2, %struct.Memory* %loadMem2_414fc2)
  store %struct.Memory* %call2_414fc2, %struct.Memory** %MEMORY

  ; Code: movq 0x8661c8, %rdi	 RIP: 414fc7	 Bytes: 8
  %loadMem_414fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414fc7 = call %struct.Memory* @routine_movq_0x8661c8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414fc7)
  store %struct.Memory* %call_414fc7, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 414fcf	 Bytes: 5
  %loadMem1_414fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414fcf = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414fcf, i64 -82831, i64 5, i64 5)
  store %struct.Memory* %call1_414fcf, %struct.Memory** %MEMORY

  %loadMem2_414fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414fcf = load i64, i64* %3
  %call2_414fcf = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_414fcf, %struct.Memory* %loadMem2_414fcf)
  store %struct.Memory* %call2_414fcf, %struct.Memory** %MEMORY

  ; Code: movq -0x4020(%rbp), %rdi	 RIP: 414fd4	 Bytes: 7
  %loadMem_414fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414fd4 = call %struct.Memory* @routine_movq_MINUS0x4020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414fd4)
  store %struct.Memory* %call_414fd4, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 414fdb	 Bytes: 5
  %loadMem1_414fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_414fdb = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_414fdb, i64 -82843, i64 5, i64 5)
  store %struct.Memory* %call1_414fdb, %struct.Memory** %MEMORY

  %loadMem2_414fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414fdb = load i64, i64* %3
  %call2_414fdb = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_414fdb, %struct.Memory* %loadMem2_414fdb)
  store %struct.Memory* %call2_414fdb, %struct.Memory** %MEMORY

  ; Code: .L_414fe0:	 RIP: 414fe0	 Bytes: 0
  br label %block_.L_414fe0
block_.L_414fe0:

  ; Code: addq $0x40d0, %rsp	 RIP: 414fe0	 Bytes: 7
  %loadMem_414fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414fe0 = call %struct.Memory* @routine_addq__0x40d0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414fe0)
  store %struct.Memory* %call_414fe0, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 414fe7	 Bytes: 1
  %loadMem_414fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414fe7 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414fe7)
  store %struct.Memory* %call_414fe7, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 414fe8	 Bytes: 1
  %loadMem_414fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_414fe8 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_414fe8)
  store %struct.Memory* %call_414fe8, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_414fe8
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

define %struct.Memory* @routine_subq__0x40d0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 16592)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4038__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16440
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x403c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16444
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_callq_.rtime(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax__MINUS0x4018__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16408
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
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

define %struct.Memory* @routine_movslq_0x886bb0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x886bb0_type* @G_0x886bb0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.calloc_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__ecx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__rax__0x8661c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661c8_type* @G_0x8661c8 to i64), i64 %9)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x3000__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x4020__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16416
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__0x800___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 2048)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x4000__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16384
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x886bf0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x886bf0_type* @G__0x886bf0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x4b0___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 1200)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__r8d___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x85f150___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 ptrtoint( %G_0x85f150_type* @G_0x85f150 to i64))
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__r8d__MINUS0x4010__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16400
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__0x62e51c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e51c_type* @G_0x62e51c to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movq__rdi__MINUS0x4080__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16512
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x4080__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx__MINUS0x4088__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16520
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r9___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__ecx__MINUS0x408c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16524
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rax__MINUS0x4098__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16536
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0x4098__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x408c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16524
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x4088__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16520
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_0x62db08___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62db08_type* @G_0x62db08 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__0x62ea20(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea20_type* @G_0x62ea20 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_0x62db10___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62db10_type* @G_0x62db10 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__0x62ea28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea28_type* @G_0x62ea28 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_0x62db18___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62db18_type* @G_0x62db18 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__0x62ea30(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea30_type* @G_0x62ea30 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__0x0__MINUS0x400c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16396
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl__eax__MINUS0x4058__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16472
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4004__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16388
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x4004__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16388
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

define %struct.Memory* @routine_cmpl_MINUS0x4010__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 16400
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

define %struct.Memory* @routine_jge_.L_4144f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x4004__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16388
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






define %struct.Memory* @routine_movl_MINUS0x4058__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16472
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

define %struct.Memory* @routine_je_.L_4144bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x400c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16396
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl__eax__MINUS0x400c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16396
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16388
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x1__MINUS0x3800__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -14336
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 1)
  ret %struct.Memory* %19
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4144cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movslq_MINUS0x4004__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16388
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x3800__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -14336
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
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






define %struct.Memory* @routine_movl__eax__MINUS0x4004__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16388
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_414452(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x400c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16396
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_jne_.L_414525(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.Xfree(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x8661c8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x8661c8_type* @G_0x8661c8 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq_MINUS0x4020__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16416
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_414fe0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x0__MINUS0x4040__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16448
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x1__0x85f3e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f3e8_type* @G_0x85f3e8 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x86bd94(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd94_type* @G_0x86bd94 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x86bd80(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd80_type* @G_0x86bd80 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x633b58(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b58_type* @G_0x633b58 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4048__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16456
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x404c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16460
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x633b40___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x62ea38___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x62ea38_type* @G_0x62ea38 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addl_0x886bc0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
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


define %struct.Memory* @routine_movl__edx__0x84a3d0___rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8692688
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_movl__eax__0x633b54(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b54_type* @G_0x633b54 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_callq_.pn_eval(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl___rdi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4145dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x4020__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16416
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_jne_.L_41462f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movq_0x62db08___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x62db08_type* @G_0x62db08 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rdi__0x62ea20(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea20_type* @G_0x62ea20 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_0x62db10___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x62db10_type* @G_0x62db10 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rdi__0x62ea28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea28_type* @G_0x62ea28 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_0x62db18___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x62db18_type* @G_0x62db18 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rdi__0x62ea30(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea30_type* @G_0x62ea30 to i64), i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_callq_.set_proof_and_disproof_numbers(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x4018__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16408
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.rdifftime(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl_0x85f168___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x85f168_type* @G_0x85f168 to i64))
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__dl__MINUS0x4099__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16537
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_4146dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.interrupt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_4146dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x62db04___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62db04_type* @G_0x62db04 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl_0x886bb0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x886bb0_type* @G_0x886bb0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl__0x2710___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 10000)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_imulq__0x38___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 56)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
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

define %struct.Memory* @routine_cmpq__rsi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__cl__MINUS0x4099__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16537
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %2, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %11 = select i1 %8, i64 %3, i64 %4
  store i64 %11, i64* %10, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jae_.L_4146dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq_MINUS0x4020__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16416
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__0x4__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_je_.L_4146dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_setne__cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %CL)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_MINUS0x4099__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16537
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


define %struct.Memory* @routine_jne_.L_4146ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_414baf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x64___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 100)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x86bd94___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x86bd94_type* @G_0x86bd94 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__ecx__0x86bd94(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd94_type* @G_0x86bd94 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x85f3e8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x85f3e8_type* @G_0x85f3e8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__ecx__MINUS0x4044__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16452
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__eax__MINUS0x40a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16544
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


define %struct.Memory* @routine_movl_MINUS0x40a0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16544
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


define %struct.Memory* @routine_cmpl__0x42___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 66)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4148f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x4048__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x4048__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16456
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x4020__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16416
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__MINUS0x4030__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16432
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x4030__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16432
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.select_most_proving(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__MINUS0x4028__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16424
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x4028__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16424
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.develop_node(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.update_ancestors(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_4147c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_414785(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x85f3e8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x85f3e8_type* @G_0x85f3e8 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_subl_MINUS0x4044__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16452
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_addl_MINUS0x4000__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -16384
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__eax__MINUS0x4000__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -16384
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_cmpl__0x0__0x4__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_414883(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x5f5e100__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 100000000)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x1__0x62e4f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e4f8_type* @G_0x62e4f8 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_cmpl__0x0__0x880654(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x880654_type* @G_0x880654 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_414844(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428e2f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428e2f_type* @G__0x428e2f to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x1__0x880654(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x880654_type* @G_0x880654 to i64), i64 1)
  ret %struct.Memory* %8
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


define %struct.Memory* @routine_movl__eax__MINUS0x40a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16548
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movq_0x20__rax____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__0x62ea20(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea20_type* @G_0x62ea20 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_0x28__rax____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__0x62ea28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea28_type* @G_0x62ea28 to i64), i64 %9)
  ret %struct.Memory* %12
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




define %struct.Memory* @routine_jmpq_.L_4148ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jne_.L_4148e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x5f5e100__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 100000000)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_movl_MINUS0x4040__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__MINUS0x4040__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16448
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_414baa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x404c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16460
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x404c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16460
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x5f5e100__MINUS0x4034__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16436
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 100000000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4008__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16392
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_jge_.L_4149dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x4000__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -16384
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_cmpl_MINUS0x4034__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 16436
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4149a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__MINUS0x3800__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -14336
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_4149a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x886bf0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8940528
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_4149a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x4034__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16436
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x4004__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16388
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x403c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16444
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x4008__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16392
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x4038__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16440
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_je_.L_4149c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x4008__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16392
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x4008__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16392
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4149c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41491e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x5f5e100__MINUS0x4034__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16436
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 100000000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_414a03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_addl__0x1e___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 30)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x85f3e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f3e8_type* @G_0x85f3e8 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_41463b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0x403c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16444
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_0x10__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x4038__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rdi__rax_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rax__MINUS0x4030__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16432
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_movl_0x85f3e8___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x85f3e8_type* @G_0x85f3e8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl_MINUS0x4044__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 16452
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq_MINUS0x403c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16444
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x4000__rbp__rax_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -16384
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__esi__MINUS0x4000__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -16384
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ESI
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}






define %struct.Memory* @routine_movslq_MINUS0x4038__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rax__rdi_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDI
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_414b3c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movslq_MINUS0x4038__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_jne_.L_414afd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428e4b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428e4b_type* @G__0x428e4b to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x40a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16552
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






















define %struct.Memory* @routine_jmpq_.L_414ba5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_414ba0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_movl__0x1__0x886bf0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8940528
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_movss_0x137e1__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x137e1__rip__type* @G_0x137e1__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x405c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 16476
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4060__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16480
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %2 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i64 %3 to i8
  %8 = sub i8 %6, %7
  %9 = icmp ult i8 %6, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = zext i8 %8 to i32
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i8 %6, %7
  %19 = xor i8 %18, %8
  %20 = lshr i8 %19, 4
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i8 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i8 %8, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i8 %6, 7
  %29 = lshr i8 %7, 7
  %30 = xor i8 %28, %29
  %31 = xor i8 %26, %28
  %32 = add   i8 %31, %30
  %33 = icmp eq i8 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpb__0x0__0x2__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_414e0b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_414e06(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_414ded(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x4054__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16468
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x3000__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq___rax____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rcx____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__0x8__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rax__0x10__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.comp_to_san(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movslq_MINUS0x4008__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16392
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_je_.L_414d89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cvtsi2ssl_0x8__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_cvtsi2ssl_0x4__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i64) #0 {
  %5 = bitcast i8* %2 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %3 to float*
  %9 = load float, float* %8
  %10 = fcmp uno float %7, %9
  br i1 %10, label %11, label %23

; <label>:11:                                     ; preds = %4
  %12 = fadd float %7, %9
  %13 = bitcast float %12 to i32
  %14 = and i32 %13, 2143289344
  %15 = icmp eq i32 %14, 2139095040
  %16 = and i32 %13, 4194303
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %29

; <label>:19:                                     ; preds = %11
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %21, %struct.Memory* %0) #21
  br label %40

; <label>:23:                                     ; preds = %4
  %24 = fcmp ogt float %7, %9
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp olt float %7, %9
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %25
  %28 = fcmp oeq float %7, %9
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %27, %25, %23, %11
  %30 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 1, %27 ], [ 1, %11 ]
  %31 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 1, %11 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %25 ], [ 0, %27 ], [ 1, %11 ]
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %32, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %27
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  br label %40

; <label>:40:                                     ; preds = %36, %19
  %41 = phi %struct.Memory* [ %22, %19 ], [ %0, %36 ]
  ret %struct.Memory* %41
}

define %struct.Memory* @routine_ucomiss_MINUS0x405c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16476
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %2, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %14 = select i1 %11, i64 %3, i64 %4
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jbe_.L_414d32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
























































define %struct.Memory* @routine_jne_.L_414d84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movl_MINUS0x4060__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16480
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x4060__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16480
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_414dde(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movss_0x1360b__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x1360b__rip__type* @G_0x1360b__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}
































define %struct.Memory* @routine_jmpq_.L_414df2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_414bee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_414e0b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_leaq_MINUS0x4078__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_0x62ea20___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x62ea20_type* @G_0x62ea20 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rcx__MINUS0x4078__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16504
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x62ea28___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x62ea28_type* @G_0x62ea28 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rcx__MINUS0x4070__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16496
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x62ea30___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x62ea30_type* @G_0x62ea30 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rcx__MINUS0x4068__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16488
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_cmpl__0x0__0x8a2a04(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8a2a04_type* @G_0x8a2a04 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_414ecb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x86679c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86679c_type* @G_0x86679c to i64), i64 0)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_movq__0x428e6d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428e6d_type* @G__0x428e6d to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x4__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x4060__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16480
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x86bd80___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 ptrtoint( %G_0x86bd80_type* @G_0x86bd80 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x4048__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16456
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x404c__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16460
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r10d____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__MINUS0x40ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16556
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x400c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16396
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_414fa5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428ecb___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428ecb_type* @G__0x428ecb to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x40b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16560
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jge_.L_414fa0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_414f87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_414f87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jmpq_.L_414fa0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_414f8c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_414f03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_414fa5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl_MINUS0x400c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 16396
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_414fc2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__0x62e51c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e51c_type* @G_0x62e51c to i64), i64 1)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_addq__0x40d0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 16592)
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

