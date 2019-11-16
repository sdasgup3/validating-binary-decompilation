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

declare %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4024b0.SwitchPromoted(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4025e0.removeHolding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_402470.SwitchColor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x62dab4_type = type <{ [4 x i8] }>
@G_0x62dab4= global %G_0x62dab4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62dab8_type = type <{ [4 x i8] }>
@G_0x62dab8= global %G_0x62dab8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62e4fc_type = type <{ [4 x i8] }>
@G_0x62e4fc= global %G_0x62e4fc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62e500_type = type <{ [4 x i8] }>
@G_0x62e500= global %G_0x62e500_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x633b40_type = type <{ [4 x i8] }>
@G_0x633b40= global %G_0x633b40_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x63ae48_type = type <{ [4 x i8] }>
@G_0x63ae48= global %G_0x63ae48_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x85f154_type = type <{ [1 x i8] }>
@G_0x85f154= global %G_0x85f154_type <{ [1 x i8] c"\00" }>
%G_0x8661bc_type = type <{ [4 x i8] }>
@G_0x8661bc= global %G_0x8661bc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8661c0_type = type <{ [4 x i8] }>
@G_0x8661c0= global %G_0x8661c0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8661d0_type = type <{ [4 x i8] }>
@G_0x8661d0= global %G_0x8661d0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866358_type = type <{ [4 x i8] }>
@G_0x866358= global %G_0x866358_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866364_type = type <{ [4 x i8] }>
@G_0x866364= global %G_0x866364_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86636c_type = type <{ [4 x i8] }>
@G_0x86636c= global %G_0x86636c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866374_type = type <{ [4 x i8] }>
@G_0x866374= global %G_0x866374_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8664a8_type = type <{ [4 x i8] }>
@G_0x8664a8= global %G_0x8664a8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8664b4_type = type <{ [4 x i8] }>
@G_0x8664b4= global %G_0x8664b4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8664bc_type = type <{ [4 x i8] }>
@G_0x8664bc= global %G_0x8664bc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8664c4_type = type <{ [4 x i8] }>
@G_0x8664c4= global %G_0x8664c4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8665a8_type = type <{ [4 x i8] }>
@G_0x8665a8= global %G_0x8665a8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8665b4_type = type <{ [4 x i8] }>
@G_0x8665b4= global %G_0x8665b4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8665bc_type = type <{ [4 x i8] }>
@G_0x8665bc= global %G_0x8665bc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8665c4_type = type <{ [4 x i8] }>
@G_0x8665c4= global %G_0x8665c4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8666f8_type = type <{ [4 x i8] }>
@G_0x8666f8= global %G_0x8666f8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866704_type = type <{ [4 x i8] }>
@G_0x866704= global %G_0x866704_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86670c_type = type <{ [4 x i8] }>
@G_0x86670c= global %G_0x86670c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866714_type = type <{ [4 x i8] }>
@G_0x866714= global %G_0x866714_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866790_type = type <{ [4 x i8] }>
@G_0x866790= global %G_0x866790_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86bd7c_type = type <{ [4 x i8] }>
@G_0x86bd7c= global %G_0x86bd7c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x881de4_type = type <{ [4 x i8] }>
@G_0x881de4= global %G_0x881de4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x882418_type = type <{ [4 x i8] }>
@G_0x882418= global %G_0x882418_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x882424_type = type <{ [4 x i8] }>
@G_0x882424= global %G_0x882424_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x88242c_type = type <{ [4 x i8] }>
@G_0x88242c= global %G_0x88242c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x882434_type = type <{ [4 x i8] }>
@G_0x882434= global %G_0x882434_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x882568_type = type <{ [4 x i8] }>
@G_0x882568= global %G_0x882568_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x882574_type = type <{ [4 x i8] }>
@G_0x882574= global %G_0x882574_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x88257c_type = type <{ [4 x i8] }>
@G_0x88257c= global %G_0x88257c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x882584_type = type <{ [4 x i8] }>
@G_0x882584= global %G_0x882584_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x886bc0_type = type <{ [4 x i8] }>
@G_0x886bc0= global %G_0x886bc0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1aa8_type = type <{ [4 x i8] }>
@G_0x8a1aa8= global %G_0x8a1aa8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1ab4_type = type <{ [4 x i8] }>
@G_0x8a1ab4= global %G_0x8a1ab4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1abc_type = type <{ [4 x i8] }>
@G_0x8a1abc= global %G_0x8a1abc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1ac4_type = type <{ [4 x i8] }>
@G_0x8a1ac4= global %G_0x8a1ac4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1e38_type = type <{ [4 x i8] }>
@G_0x8a1e38= global %G_0x8a1e38_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1e44_type = type <{ [4 x i8] }>
@G_0x8a1e44= global %G_0x8a1e44_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1e4c_type = type <{ [4 x i8] }>
@G_0x8a1e4c= global %G_0x8a1e4c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1e54_type = type <{ [4 x i8] }>
@G_0x8a1e54= global %G_0x8a1e54_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x880b20_type = type <{ [8 x i8] }>
@G__0x880b20= global %G__0x880b20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x8a0a80_type = type <{ [8 x i8] }>
@G__0x8a0a80= global %G__0x8a0a80_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @unmake(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .unmake:	 RIP: 40c7a0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 40c7a0	 Bytes: 1
  %loadMem_40c7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7a0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7a0)
  store %struct.Memory* %call_40c7a0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 40c7a1	 Bytes: 3
  %loadMem_40c7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7a1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7a1)
  store %struct.Memory* %call_40c7a1, %struct.Memory** %MEMORY

  ; Code: subq $0x40, %rsp	 RIP: 40c7a4	 Bytes: 4
  %loadMem_40c7a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7a4 = call %struct.Memory* @routine_subq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7a4)
  store %struct.Memory* %call_40c7a4, %struct.Memory** %MEMORY

  ; Code: movq $0x880b20, %rax	 RIP: 40c7a8	 Bytes: 10
  %loadMem_40c7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7a8 = call %struct.Memory* @routine_movq__0x880b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7a8)
  store %struct.Memory* %call_40c7a8, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 40c7b2	 Bytes: 4
  %loadMem_40c7b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7b2 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7b2)
  store %struct.Memory* %call_40c7b2, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 40c7b6	 Bytes: 3
  %loadMem_40c7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7b6 = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7b6)
  store %struct.Memory* %call_40c7b6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 40c7b9	 Bytes: 4
  %loadMem_40c7b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7b9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7b9)
  store %struct.Memory* %call_40c7b9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 40c7bd	 Bytes: 4
  %loadMem_40c7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7bd = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7bd)
  store %struct.Memory* %call_40c7bd, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 40c7c1	 Bytes: 4
  %loadMem_40c7c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7c1 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7c1)
  store %struct.Memory* %call_40c7c1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdi	 RIP: 40c7c5	 Bytes: 3
  %loadMem_40c7c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7c5 = call %struct.Memory* @routine_addq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7c5)
  store %struct.Memory* %call_40c7c5, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rdi), %esi	 RIP: 40c7c8	 Bytes: 3
  %loadMem_40c7c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7c8 = call %struct.Memory* @routine_movl_0x14__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7c8)
  store %struct.Memory* %call_40c7c8, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x10(%rbp)	 RIP: 40c7cb	 Bytes: 3
  %loadMem_40c7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7cb = call %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7cb)
  store %struct.Memory* %call_40c7cb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40c7ce	 Bytes: 4
  %loadMem_40c7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7ce = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7ce)
  store %struct.Memory* %call_40c7ce, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 40c7d2	 Bytes: 4
  %loadMem_40c7d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7d2 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7d2)
  store %struct.Memory* %call_40c7d2, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdi, %rdi	 RIP: 40c7d6	 Bytes: 4
  %loadMem_40c7d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7d6 = call %struct.Memory* @routine_imulq__0x18___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7d6)
  store %struct.Memory* %call_40c7d6, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 40c7da	 Bytes: 3
  %loadMem_40c7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7da = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7da)
  store %struct.Memory* %call_40c7da, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %esi	 RIP: 40c7dd	 Bytes: 2
  %loadMem_40c7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7dd = call %struct.Memory* @routine_movl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7dd)
  store %struct.Memory* %call_40c7dd, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x14(%rbp)	 RIP: 40c7df	 Bytes: 3
  %loadMem_40c7df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7df = call %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7df)
  store %struct.Memory* %call_40c7df, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40c7e2	 Bytes: 4
  %loadMem_40c7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7e2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7e2)
  store %struct.Memory* %call_40c7e2, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 40c7e6	 Bytes: 4
  %loadMem_40c7e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7e6 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7e6)
  store %struct.Memory* %call_40c7e6, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdi, %rdi	 RIP: 40c7ea	 Bytes: 4
  %loadMem_40c7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7ea = call %struct.Memory* @routine_imulq__0x18___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7ea)
  store %struct.Memory* %call_40c7ea, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 40c7ee	 Bytes: 3
  %loadMem_40c7ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7ee = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7ee)
  store %struct.Memory* %call_40c7ee, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rcx), %esi	 RIP: 40c7f1	 Bytes: 3
  %loadMem_40c7f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7f1 = call %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7f1)
  store %struct.Memory* %call_40c7f1, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x18(%rbp)	 RIP: 40c7f4	 Bytes: 3
  %loadMem_40c7f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7f4 = call %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7f4)
  store %struct.Memory* %call_40c7f4, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40c7f7	 Bytes: 4
  %loadMem_40c7f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7f7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7f7)
  store %struct.Memory* %call_40c7f7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 40c7fb	 Bytes: 4
  %loadMem_40c7fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7fb = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7fb)
  store %struct.Memory* %call_40c7fb, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdi, %rdi	 RIP: 40c7ff	 Bytes: 4
  %loadMem_40c7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7ff = call %struct.Memory* @routine_imulq__0x18___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7ff)
  store %struct.Memory* %call_40c7ff, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 40c803	 Bytes: 3
  %loadMem_40c803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c803 = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c803)
  store %struct.Memory* %call_40c803, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rcx), %esi	 RIP: 40c806	 Bytes: 3
  %loadMem_40c806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c806 = call %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c806)
  store %struct.Memory* %call_40c806, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x1c(%rbp)	 RIP: 40c809	 Bytes: 3
  %loadMem_40c809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c809 = call %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c809)
  store %struct.Memory* %call_40c809, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40c80c	 Bytes: 4
  %loadMem_40c80c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c80c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c80c)
  store %struct.Memory* %call_40c80c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 40c810	 Bytes: 4
  %loadMem_40c810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c810 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c810)
  store %struct.Memory* %call_40c810, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdi, %rdi	 RIP: 40c814	 Bytes: 4
  %loadMem_40c814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c814 = call %struct.Memory* @routine_imulq__0x18___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c814)
  store %struct.Memory* %call_40c814, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 40c818	 Bytes: 3
  %loadMem_40c818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c818 = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c818)
  store %struct.Memory* %call_40c818, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %esi	 RIP: 40c81b	 Bytes: 3
  %loadMem_40c81b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c81b = call %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c81b)
  store %struct.Memory* %call_40c81b, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x20(%rbp)	 RIP: 40c81e	 Bytes: 3
  %loadMem_40c81e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c81e = call %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c81e)
  store %struct.Memory* %call_40c81e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40c821	 Bytes: 4
  %loadMem_40c821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c821 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c821)
  store %struct.Memory* %call_40c821, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 40c825	 Bytes: 4
  %loadMem_40c825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c825 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c825)
  store %struct.Memory* %call_40c825, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdi, %rdi	 RIP: 40c829	 Bytes: 4
  %loadMem_40c829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c829 = call %struct.Memory* @routine_imulq__0x18___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c829)
  store %struct.Memory* %call_40c829, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 40c82d	 Bytes: 3
  %loadMem_40c82d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c82d = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c82d)
  store %struct.Memory* %call_40c82d, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rcx), %esi	 RIP: 40c830	 Bytes: 3
  %loadMem_40c830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c830 = call %struct.Memory* @routine_movl_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c830)
  store %struct.Memory* %call_40c830, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x24(%rbp)	 RIP: 40c833	 Bytes: 3
  %loadMem_40c833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c833 = call %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c833)
  store %struct.Memory* %call_40c833, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %esi	 RIP: 40c836	 Bytes: 7
  %loadMem_40c836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c836 = call %struct.Memory* @routine_movl_0x886bc0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c836)
  store %struct.Memory* %call_40c836, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %esi	 RIP: 40c83d	 Bytes: 3
  %loadMem_40c83d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c83d = call %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c83d)
  store %struct.Memory* %call_40c83d, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x886bc0	 RIP: 40c840	 Bytes: 7
  %loadMem_40c840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c840 = call %struct.Memory* @routine_movl__esi__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c840)
  store %struct.Memory* %call_40c840, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 40c847	 Bytes: 8
  %loadMem_40c847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c847 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c847)
  store %struct.Memory* %call_40c847, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 40c84f	 Bytes: 4
  %loadMem_40c84f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c84f = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c84f)
  store %struct.Memory* %call_40c84f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40c853	 Bytes: 3
  %loadMem_40c853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c853 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c853)
  store %struct.Memory* %call_40c853, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdi	 RIP: 40c856	 Bytes: 3
  %loadMem_40c856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c856 = call %struct.Memory* @routine_addq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c856)
  store %struct.Memory* %call_40c856, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rdi), %esi	 RIP: 40c859	 Bytes: 3
  %loadMem_40c859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c859 = call %struct.Memory* @routine_movl_0x8__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c859)
  store %struct.Memory* %call_40c859, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x881de4	 RIP: 40c85c	 Bytes: 7
  %loadMem_40c85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c85c = call %struct.Memory* @routine_movl__esi__0x881de4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c85c)
  store %struct.Memory* %call_40c85c, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 40c863	 Bytes: 8
  %loadMem_40c863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c863 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c863)
  store %struct.Memory* %call_40c863, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 40c86b	 Bytes: 4
  %loadMem_40c86b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c86b = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c86b)
  store %struct.Memory* %call_40c86b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40c86f	 Bytes: 3
  %loadMem_40c86f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c86f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c86f)
  store %struct.Memory* %call_40c86f, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %esi	 RIP: 40c872	 Bytes: 3
  %loadMem_40c872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c872 = call %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c872)
  store %struct.Memory* %call_40c872, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x866790	 RIP: 40c875	 Bytes: 7
  %loadMem_40c875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c875 = call %struct.Memory* @routine_movl__esi__0x866790(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c875)
  store %struct.Memory* %call_40c875, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 40c87c	 Bytes: 4
  %loadMem_40c87c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c87c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c87c)
  store %struct.Memory* %call_40c87c, %struct.Memory** %MEMORY

  ; Code: jne .L_40c977	 RIP: 40c880	 Bytes: 6
  %loadMem_40c880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c880 = call %struct.Memory* @routine_jne_.L_40c977(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c880, i8* %BRANCH_TAKEN, i64 247, i64 6, i64 6)
  store %struct.Memory* %call_40c880, %struct.Memory** %MEMORY

  %loadBr_40c880 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c880 = icmp eq i8 %loadBr_40c880, 1
  br i1 %cmpBr_40c880, label %block_.L_40c977, label %block_40c886

block_40c886:
  ; Code: xorl %eax, %eax	 RIP: 40c886	 Bytes: 2
  %loadMem_40c886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c886 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c886)
  store %struct.Memory* %call_40c886, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 40c888	 Bytes: 5
  %loadMem_40c888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c888 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c888)
  store %struct.Memory* %call_40c888, %struct.Memory** %MEMORY

  ; Code: movq $0x880b20, %rdx	 RIP: 40c88d	 Bytes: 10
  %loadMem_40c88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c88d = call %struct.Memory* @routine_movq__0x880b20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c88d)
  store %struct.Memory* %call_40c88d, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rsi	 RIP: 40c897	 Bytes: 4
  %loadMem_40c897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c897 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c897)
  store %struct.Memory* %call_40c897, %struct.Memory** %MEMORY

  ; Code: movslq 0x8662f0(,%rsi,4), %rsi	 RIP: 40c89b	 Bytes: 8
  %loadMem_40c89b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c89b = call %struct.Memory* @routine_movslq_0x8662f0___rsi_4____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c89b)
  store %struct.Memory* %call_40c89b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x85f2f0(,%rsi,4)	 RIP: 40c8a3	 Bytes: 11
  %loadMem_40c8a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8a3 = call %struct.Memory* @routine_movl__0x0__0x85f2f0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8a3)
  store %struct.Memory* %call_40c8a3, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rsi	 RIP: 40c8ae	 Bytes: 8
  %loadMem_40c8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8ae = call %struct.Memory* @routine_movslq_0x886bc0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8ae)
  store %struct.Memory* %call_40c8ae, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 40c8b6	 Bytes: 4
  %loadMem_40c8b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8b6 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8b6)
  store %struct.Memory* %call_40c8b6, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 40c8ba	 Bytes: 3
  %loadMem_40c8ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8ba = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8ba)
  store %struct.Memory* %call_40c8ba, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rdx), %edi	 RIP: 40c8bd	 Bytes: 3
  %loadMem_40c8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8bd = call %struct.Memory* @routine_movl_0x4__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8bd)
  store %struct.Memory* %call_40c8bd, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40c8c0	 Bytes: 4
  %loadMem_40c8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8c0 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8c0)
  store %struct.Memory* %call_40c8c0, %struct.Memory** %MEMORY

  ; Code: movslq 0x8662f0(,%rdx,4), %rdx	 RIP: 40c8c4	 Bytes: 8
  %loadMem_40c8c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8c4 = call %struct.Memory* @routine_movslq_0x8662f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8c4)
  store %struct.Memory* %call_40c8c4, %struct.Memory** %MEMORY

  ; Code: movl %edi, 0x639120(,%rdx,4)	 RIP: 40c8cc	 Bytes: 7
  %loadMem_40c8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8cc = call %struct.Memory* @routine_movl__edi__0x639120___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8cc)
  store %struct.Memory* %call_40c8cc, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40c8d3	 Bytes: 4
  %loadMem_40c8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8d3 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8d3)
  store %struct.Memory* %call_40c8d3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8662f0(,%rdx,4)	 RIP: 40c8d7	 Bytes: 11
  %loadMem_40c8d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8d7 = call %struct.Memory* @routine_movl__0x0__0x8662f0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8d7)
  store %struct.Memory* %call_40c8d7, %struct.Memory** %MEMORY

  ; Code: movl 0x63ae48, %edi	 RIP: 40c8e2	 Bytes: 7
  %loadMem_40c8e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8e2 = call %struct.Memory* @routine_movl_0x63ae48___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8e2)
  store %struct.Memory* %call_40c8e2, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %edi	 RIP: 40c8e9	 Bytes: 3
  %loadMem_40c8e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8e9 = call %struct.Memory* @routine_addl__0xffffffff___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8e9)
  store %struct.Memory* %call_40c8e9, %struct.Memory** %MEMORY

  ; Code: movl %edi, 0x63ae48	 RIP: 40c8ec	 Bytes: 7
  %loadMem_40c8ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8ec = call %struct.Memory* @routine_movl__edi__0x63ae48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8ec)
  store %struct.Memory* %call_40c8ec, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 40c8f3	 Bytes: 3
  %loadMem_40c8f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8f3 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8f3)
  store %struct.Memory* %call_40c8f3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 40c8f6	 Bytes: 8
  %loadMem_40c8f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8f6 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8f6)
  store %struct.Memory* %call_40c8f6, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 40c8fe	 Bytes: 3
  %loadMem_40c8fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8fe = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8fe)
  store %struct.Memory* %call_40c8fe, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 40c901	 Bytes: 2
  %loadMem_40c901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c901 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c901)
  store %struct.Memory* %call_40c901, %struct.Memory** %MEMORY

  ; Code: callq .DropaddHolding	 RIP: 40c903	 Bytes: 5
  %loadMem1_40c903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40c903 = call %struct.Memory* @routine_callq_.DropaddHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40c903, i64 -41523, i64 5, i64 5)
  store %struct.Memory* %call1_40c903, %struct.Memory** %MEMORY

  %loadMem2_40c903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40c903 = load i64, i64* %3
  %call2_40c903 = call %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* %0, i64  %loadPC_40c903, %struct.Memory* %loadMem2_40c903)
  store %struct.Memory* %call2_40c903, %struct.Memory** %MEMORY

  ; Code: movq $0x8a0a80, %rdx	 RIP: 40c908	 Bytes: 10
  %loadMem_40c908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c908 = call %struct.Memory* @routine_movq__0x8a0a80___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c908)
  store %struct.Memory* %call_40c908, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %r8	 RIP: 40c912	 Bytes: 4
  %loadMem_40c912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c912 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c912)
  store %struct.Memory* %call_40c912, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%r8,4), %eax	 RIP: 40c916	 Bytes: 8
  %loadMem_40c916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c916 = call %struct.Memory* @routine_movl_0x62dab0___r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c916)
  store %struct.Memory* %call_40c916, %struct.Memory** %MEMORY

  ; Code: movl 0x8661c0, %ecx	 RIP: 40c91e	 Bytes: 7
  %loadMem_40c91e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c91e = call %struct.Memory* @routine_movl_0x8661c0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c91e)
  store %struct.Memory* %call_40c91e, %struct.Memory** %MEMORY

  ; Code: subl %eax, %ecx	 RIP: 40c925	 Bytes: 2
  %loadMem_40c925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c925 = call %struct.Memory* @routine_subl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c925)
  store %struct.Memory* %call_40c925, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661c0	 RIP: 40c927	 Bytes: 7
  %loadMem_40c927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c927 = call %struct.Memory* @routine_movl__ecx__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c927)
  store %struct.Memory* %call_40c927, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40c92e	 Bytes: 3
  %loadMem_40c92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c92e = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c92e)
  store %struct.Memory* %call_40c92e, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r8	 RIP: 40c931	 Bytes: 4
  %loadMem_40c931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c931 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c931)
  store %struct.Memory* %call_40c931, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x866540(,%r8,4)	 RIP: 40c935	 Bytes: 8
  %loadMem_40c935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c935 = call %struct.Memory* @routine_movl__eax__0x866540___r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c935)
  store %struct.Memory* %call_40c935, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %r8	 RIP: 40c93d	 Bytes: 4
  %loadMem_40c93d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c93d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c93d)
  store %struct.Memory* %call_40c93d, %struct.Memory** %MEMORY

  ; Code: imulq $0x240, %r8, %r8	 RIP: 40c941	 Bytes: 7
  %loadMem_40c941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c941 = call %struct.Memory* @routine_imulq__0x240___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c941)
  store %struct.Memory* %call_40c941, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rdx	 RIP: 40c948	 Bytes: 3
  %loadMem_40c948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c948 = call %struct.Memory* @routine_addq__r8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c948)
  store %struct.Memory* %call_40c948, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r8	 RIP: 40c94b	 Bytes: 4
  %loadMem_40c94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c94b = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c94b)
  store %struct.Memory* %call_40c94b, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%r8,4), %eax	 RIP: 40c94f	 Bytes: 4
  %loadMem_40c94f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c94f = call %struct.Memory* @routine_movl___rdx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c94f)
  store %struct.Memory* %call_40c94f, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40c953	 Bytes: 7
  %loadMem_40c953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c953 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c953)
  store %struct.Memory* %call_40c953, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40c95a	 Bytes: 7
  %loadMem_40c95a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c95a = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c95a)
  store %struct.Memory* %call_40c95a, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %eax	 RIP: 40c961	 Bytes: 7
  %loadMem_40c961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c961 = call %struct.Memory* @routine_movl_0x8661bc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c961)
  store %struct.Memory* %call_40c961, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %eax	 RIP: 40c968	 Bytes: 3
  %loadMem_40c968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c968 = call %struct.Memory* @routine_xorl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c968)
  store %struct.Memory* %call_40c968, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8661bc	 RIP: 40c96b	 Bytes: 7
  %loadMem_40c96b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c96b = call %struct.Memory* @routine_movl__eax__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c96b)
  store %struct.Memory* %call_40c96b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d604	 RIP: 40c972	 Bytes: 5
  %loadMem_40c972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c972 = call %struct.Memory* @routine_jmpq_.L_40d604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c972, i64 3218, i64 5)
  store %struct.Memory* %call_40c972, %struct.Memory** %MEMORY

  br label %block_.L_40d604

  ; Code: .L_40c977:	 RIP: 40c977	 Bytes: 0
block_.L_40c977:

  ; Code: movq $0x880b20, %rax	 RIP: 40c977	 Bytes: 10
  %loadMem_40c977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c977 = call %struct.Memory* @routine_movq__0x880b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c977)
  store %struct.Memory* %call_40c977, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40c981	 Bytes: 4
  %loadMem_40c981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c981 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c981)
  store %struct.Memory* %call_40c981, %struct.Memory** %MEMORY

  ; Code: movl 0x8662f0(,%rcx,4), %edx	 RIP: 40c985	 Bytes: 7
  %loadMem_40c985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c985 = call %struct.Memory* @routine_movl_0x8662f0___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c985)
  store %struct.Memory* %call_40c985, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40c98c	 Bytes: 4
  %loadMem_40c98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c98c = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c98c)
  store %struct.Memory* %call_40c98c, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8662f0(,%rcx,4)	 RIP: 40c990	 Bytes: 7
  %loadMem_40c990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c990 = call %struct.Memory* @routine_movl__edx__0x8662f0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c990)
  store %struct.Memory* %call_40c990, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 40c997	 Bytes: 8
  %loadMem_40c997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c997 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c997)
  store %struct.Memory* %call_40c997, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 40c99f	 Bytes: 4
  %loadMem_40c99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c99f = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c99f)
  store %struct.Memory* %call_40c99f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c9a3	 Bytes: 3
  %loadMem_40c9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9a3 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9a3)
  store %struct.Memory* %call_40c9a3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 40c9a6	 Bytes: 3
  %loadMem_40c9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9a6 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9a6)
  store %struct.Memory* %call_40c9a6, %struct.Memory** %MEMORY

  ; Code: movl (%rsi), %edx	 RIP: 40c9a9	 Bytes: 2
  %loadMem_40c9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9a9 = call %struct.Memory* @routine_movl___rsi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9a9)
  store %struct.Memory* %call_40c9a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40c9ab	 Bytes: 4
  %loadMem_40c9ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9ab = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9ab)
  store %struct.Memory* %call_40c9ab, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8662f0(,%rcx,4)	 RIP: 40c9af	 Bytes: 7
  %loadMem_40c9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9af = call %struct.Memory* @routine_movl__edx__0x8662f0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9af)
  store %struct.Memory* %call_40c9af, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40c9b6	 Bytes: 3
  %loadMem_40c9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9b6 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9b6)
  store %struct.Memory* %call_40c9b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40c9b9	 Bytes: 4
  %loadMem_40c9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9b9 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9b9)
  store %struct.Memory* %call_40c9b9, %struct.Memory** %MEMORY

  ; Code: movslq 0x8662f0(,%rcx,4), %rcx	 RIP: 40c9bd	 Bytes: 8
  %loadMem_40c9bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9bd = call %struct.Memory* @routine_movslq_0x8662f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9bd)
  store %struct.Memory* %call_40c9bd, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x85f2f0(,%rcx,4)	 RIP: 40c9c5	 Bytes: 7
  %loadMem_40c9c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9c5 = call %struct.Memory* @routine_movl__edx__0x85f2f0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9c5)
  store %struct.Memory* %call_40c9c5, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 40c9cc	 Bytes: 3
  %loadMem_40c9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9cc = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9cc)
  store %struct.Memory* %call_40c9cc, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40c9cf	 Bytes: 4
  %loadMem_40c9cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9cf = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9cf)
  store %struct.Memory* %call_40c9cf, %struct.Memory** %MEMORY

  ; Code: movslq 0x8662f0(,%rcx,4), %rcx	 RIP: 40c9d3	 Bytes: 8
  %loadMem_40c9d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9d3 = call %struct.Memory* @routine_movslq_0x8662f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9d3)
  store %struct.Memory* %call_40c9d3, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x85f2f0(,%rcx,4)	 RIP: 40c9db	 Bytes: 7
  %loadMem_40c9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9db = call %struct.Memory* @routine_movl__edx__0x85f2f0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9db)
  store %struct.Memory* %call_40c9db, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 40c9e2	 Bytes: 8
  %loadMem_40c9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9e2 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9e2)
  store %struct.Memory* %call_40c9e2, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 40c9ea	 Bytes: 4
  %loadMem_40c9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9ea = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9ea)
  store %struct.Memory* %call_40c9ea, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40c9ee	 Bytes: 3
  %loadMem_40c9ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9ee = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9ee)
  store %struct.Memory* %call_40c9ee, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 40c9f1	 Bytes: 3
  %loadMem_40c9f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9f1 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9f1)
  store %struct.Memory* %call_40c9f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40c9f4	 Bytes: 4
  %loadMem_40c9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9f4 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9f4)
  store %struct.Memory* %call_40c9f4, %struct.Memory** %MEMORY

  ; Code: movslq 0x8662f0(,%rax,4), %rax	 RIP: 40c9f8	 Bytes: 8
  %loadMem_40c9f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9f8 = call %struct.Memory* @routine_movslq_0x8662f0___rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9f8)
  store %struct.Memory* %call_40c9f8, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x639120(,%rax,4)	 RIP: 40ca00	 Bytes: 7
  %loadMem_40ca00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca00 = call %struct.Memory* @routine_movl__edx__0x639120___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca00)
  store %struct.Memory* %call_40ca00, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 40ca07	 Bytes: 4
  %loadMem_40ca07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca07 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca07)
  store %struct.Memory* %call_40ca07, %struct.Memory** %MEMORY

  ; Code: jne .L_40cb14	 RIP: 40ca0b	 Bytes: 6
  %loadMem_40ca0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca0b = call %struct.Memory* @routine_jne_.L_40cb14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca0b, i8* %BRANCH_TAKEN, i64 265, i64 6, i64 6)
  store %struct.Memory* %call_40ca0b, %struct.Memory** %MEMORY

  %loadBr_40ca0b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ca0b = icmp eq i8 %loadBr_40ca0b, 1
  br i1 %cmpBr_40ca0b, label %block_.L_40cb14, label %block_40ca11

block_40ca11:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40ca11	 Bytes: 3
  %loadMem_40ca11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca11 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca11)
  store %struct.Memory* %call_40ca11, %struct.Memory** %MEMORY

  ; Code: subl $0xd, %eax	 RIP: 40ca14	 Bytes: 3
  %loadMem_40ca14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca14 = call %struct.Memory* @routine_subl__0xd___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca14)
  store %struct.Memory* %call_40ca14, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 40ca17	 Bytes: 3
  %loadMem_40ca17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca17 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca17)
  store %struct.Memory* %call_40ca17, %struct.Memory** %MEMORY

  ; Code: jne .L_40ca2a	 RIP: 40ca1a	 Bytes: 6
  %loadMem_40ca1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca1a = call %struct.Memory* @routine_jne_.L_40ca2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca1a, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_40ca1a, %struct.Memory** %MEMORY

  %loadBr_40ca1a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ca1a = icmp eq i8 %loadBr_40ca1a, 1
  br i1 %cmpBr_40ca1a, label %block_.L_40ca2a, label %block_40ca20

block_40ca20:
  ; Code: jmpq .L_40ca25	 RIP: 40ca20	 Bytes: 5
  %loadMem_40ca20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca20 = call %struct.Memory* @routine_jmpq_.L_40ca25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca20, i64 5, i64 5)
  store %struct.Memory* %call_40ca20, %struct.Memory** %MEMORY

  br label %block_.L_40ca25

  ; Code: .L_40ca25:	 RIP: 40ca25	 Bytes: 0
block_.L_40ca25:

  ; Code: jmpq .L_40cb0f	 RIP: 40ca25	 Bytes: 5
  %loadMem_40ca25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca25 = call %struct.Memory* @routine_jmpq_.L_40cb0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca25, i64 234, i64 5)
  store %struct.Memory* %call_40ca25, %struct.Memory** %MEMORY

  br label %block_.L_40cb0f

  ; Code: .L_40ca2a:	 RIP: 40ca2a	 Bytes: 0
block_.L_40ca2a:

  ; Code: cmpl $0x1, 0x85f154	 RIP: 40ca2a	 Bytes: 8
  %loadMem_40ca2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca2a = call %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca2a)
  store %struct.Memory* %call_40ca2a, %struct.Memory** %MEMORY

  ; Code: je .L_40ca46	 RIP: 40ca32	 Bytes: 6
  %loadMem_40ca32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca32 = call %struct.Memory* @routine_je_.L_40ca46(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca32, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_40ca32, %struct.Memory** %MEMORY

  %loadBr_40ca32 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ca32 = icmp eq i8 %loadBr_40ca32, 1
  br i1 %cmpBr_40ca32, label %block_.L_40ca46, label %block_40ca38

block_40ca38:
  ; Code: cmpl $0x0, 0x85f154	 RIP: 40ca38	 Bytes: 8
  %loadMem_40ca38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca38 = call %struct.Memory* @routine_cmpl__0x0__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca38)
  store %struct.Memory* %call_40ca38, %struct.Memory** %MEMORY

  ; Code: jne .L_40cab8	 RIP: 40ca40	 Bytes: 6
  %loadMem_40ca40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca40 = call %struct.Memory* @routine_jne_.L_40cab8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca40, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_40ca40, %struct.Memory** %MEMORY

  %loadBr_40ca40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ca40 = icmp eq i8 %loadBr_40ca40, 1
  br i1 %cmpBr_40ca40, label %block_.L_40cab8, label %block_.L_40ca46

  ; Code: .L_40ca46:	 RIP: 40ca46	 Bytes: 0
block_.L_40ca46:

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40ca46	 Bytes: 4
  %loadMem_40ca46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca46 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca46)
  store %struct.Memory* %call_40ca46, %struct.Memory** %MEMORY

  ; Code: movslq 0x8662f0(,%rax,4), %rax	 RIP: 40ca4a	 Bytes: 8
  %loadMem_40ca4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca4a = call %struct.Memory* @routine_movslq_0x8662f0___rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca4a)
  store %struct.Memory* %call_40ca4a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x639120(,%rax,4)	 RIP: 40ca52	 Bytes: 8
  %loadMem_40ca52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca52 = call %struct.Memory* @routine_cmpl__0x0__0x639120___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca52)
  store %struct.Memory* %call_40ca52, %struct.Memory** %MEMORY

  ; Code: je .L_40ca8c	 RIP: 40ca5a	 Bytes: 6
  %loadMem_40ca5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca5a = call %struct.Memory* @routine_je_.L_40ca8c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca5a, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_40ca5a, %struct.Memory** %MEMORY

  %loadBr_40ca5a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ca5a = icmp eq i8 %loadBr_40ca5a, 1
  br i1 %cmpBr_40ca5a, label %block_.L_40ca8c, label %block_40ca60

block_40ca60:
  ; Code: movl -0x1c(%rbp), %edi	 RIP: 40ca60	 Bytes: 3
  %loadMem_40ca60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca60 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca60)
  store %struct.Memory* %call_40ca60, %struct.Memory** %MEMORY

  ; Code: callq .SwitchPromoted	 RIP: 40ca63	 Bytes: 5
  %loadMem1_40ca63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40ca63 = call %struct.Memory* @routine_callq_.SwitchPromoted(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40ca63, i64 -42419, i64 5, i64 5)
  store %struct.Memory* %call1_40ca63, %struct.Memory** %MEMORY

  %loadMem2_40ca63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40ca63 = load i64, i64* %3
  %call2_40ca63 = call %struct.Memory* @sub_4024b0.SwitchPromoted(%struct.State* %0, i64  %loadPC_40ca63, %struct.Memory* %loadMem2_40ca63)
  store %struct.Memory* %call2_40ca63, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 40ca68	 Bytes: 2
  %loadMem_40ca68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca68 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca68)
  store %struct.Memory* %call_40ca68, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 40ca6a	 Bytes: 5
  %loadMem_40ca6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca6a = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca6a)
  store %struct.Memory* %call_40ca6a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 40ca6f	 Bytes: 8
  %loadMem_40ca6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca6f = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca6f)
  store %struct.Memory* %call_40ca6f, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %edi	 RIP: 40ca77	 Bytes: 3
  %loadMem_40ca77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca77 = call %struct.Memory* @routine_cmovnel__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca77)
  store %struct.Memory* %call_40ca77, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x2c(%rbp)	 RIP: 40ca7a	 Bytes: 3
  %loadMem_40ca7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca7a = call %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca7a)
  store %struct.Memory* %call_40ca7a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 40ca7d	 Bytes: 2
  %loadMem_40ca7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca7d = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca7d)
  store %struct.Memory* %call_40ca7d, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40ca7f	 Bytes: 3
  %loadMem_40ca7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca7f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca7f)
  store %struct.Memory* %call_40ca7f, %struct.Memory** %MEMORY

  ; Code: callq .removeHolding	 RIP: 40ca82	 Bytes: 5
  %loadMem1_40ca82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40ca82 = call %struct.Memory* @routine_callq_.removeHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40ca82, i64 -42146, i64 5, i64 5)
  store %struct.Memory* %call1_40ca82, %struct.Memory** %MEMORY

  %loadMem2_40ca82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40ca82 = load i64, i64* %3
  %call2_40ca82 = call %struct.Memory* @sub_4025e0.removeHolding(%struct.State* %0, i64  %loadPC_40ca82, %struct.Memory* %loadMem2_40ca82)
  store %struct.Memory* %call2_40ca82, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40cab3	 RIP: 40ca87	 Bytes: 5
  %loadMem_40ca87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca87 = call %struct.Memory* @routine_jmpq_.L_40cab3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca87, i64 44, i64 5)
  store %struct.Memory* %call_40ca87, %struct.Memory** %MEMORY

  br label %block_.L_40cab3

  ; Code: .L_40ca8c:	 RIP: 40ca8c	 Bytes: 0
block_.L_40ca8c:

  ; Code: movl -0x1c(%rbp), %edi	 RIP: 40ca8c	 Bytes: 3
  %loadMem_40ca8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca8c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca8c)
  store %struct.Memory* %call_40ca8c, %struct.Memory** %MEMORY

  ; Code: callq .SwitchColor	 RIP: 40ca8f	 Bytes: 5
  %loadMem1_40ca8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40ca8f = call %struct.Memory* @routine_callq_.SwitchColor(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40ca8f, i64 -42527, i64 5, i64 5)
  store %struct.Memory* %call1_40ca8f, %struct.Memory** %MEMORY

  %loadMem2_40ca8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40ca8f = load i64, i64* %3
  %call2_40ca8f = call %struct.Memory* @sub_402470.SwitchColor(%struct.State* %0, i64  %loadPC_40ca8f, %struct.Memory* %loadMem2_40ca8f)
  store %struct.Memory* %call2_40ca8f, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 40ca94	 Bytes: 2
  %loadMem_40ca94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca94 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca94)
  store %struct.Memory* %call_40ca94, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 40ca96	 Bytes: 5
  %loadMem_40ca96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca96 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca96)
  store %struct.Memory* %call_40ca96, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 40ca9b	 Bytes: 8
  %loadMem_40ca9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca9b = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca9b)
  store %struct.Memory* %call_40ca9b, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %edi	 RIP: 40caa3	 Bytes: 3
  %loadMem_40caa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40caa3 = call %struct.Memory* @routine_cmovnel__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40caa3)
  store %struct.Memory* %call_40caa3, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x30(%rbp)	 RIP: 40caa6	 Bytes: 3
  %loadMem_40caa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40caa6 = call %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40caa6)
  store %struct.Memory* %call_40caa6, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 40caa9	 Bytes: 2
  %loadMem_40caa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40caa9 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40caa9)
  store %struct.Memory* %call_40caa9, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 40caab	 Bytes: 3
  %loadMem_40caab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40caab = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40caab)
  store %struct.Memory* %call_40caab, %struct.Memory** %MEMORY

  ; Code: callq .removeHolding	 RIP: 40caae	 Bytes: 5
  %loadMem1_40caae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40caae = call %struct.Memory* @routine_callq_.removeHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40caae, i64 -42190, i64 5, i64 5)
  store %struct.Memory* %call1_40caae, %struct.Memory** %MEMORY

  %loadMem2_40caae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40caae = load i64, i64* %3
  %call2_40caae = call %struct.Memory* @sub_4025e0.removeHolding(%struct.State* %0, i64  %loadPC_40caae, %struct.Memory* %loadMem2_40caae)
  store %struct.Memory* %call2_40caae, %struct.Memory** %MEMORY

  ; Code: .L_40cab3:	 RIP: 40cab3	 Bytes: 0
  br label %block_.L_40cab3
block_.L_40cab3:

  ; Code: jmpq .L_40cab8	 RIP: 40cab3	 Bytes: 5
  %loadMem_40cab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cab3 = call %struct.Memory* @routine_jmpq_.L_40cab8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cab3, i64 5, i64 5)
  store %struct.Memory* %call_40cab3, %struct.Memory** %MEMORY

  br label %block_.L_40cab8

  ; Code: .L_40cab8:	 RIP: 40cab8	 Bytes: 0
block_.L_40cab8:

  ; Code: movq $0x8a0a80, %rax	 RIP: 40cab8	 Bytes: 10
  %loadMem_40cab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cab8 = call %struct.Memory* @routine_movq__0x8a0a80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cab8)
  store %struct.Memory* %call_40cab8, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 40cac2	 Bytes: 4
  %loadMem_40cac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cac2 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cac2)
  store %struct.Memory* %call_40cac2, %struct.Memory** %MEMORY

  ; Code: imulq $0x240, %rcx, %rcx	 RIP: 40cac6	 Bytes: 7
  %loadMem_40cac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cac6 = call %struct.Memory* @routine_imulq__0x240___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cac6)
  store %struct.Memory* %call_40cac6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40cacd	 Bytes: 3
  %loadMem_40cacd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cacd = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cacd)
  store %struct.Memory* %call_40cacd, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40cad0	 Bytes: 4
  %loadMem_40cad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cad0 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cad0)
  store %struct.Memory* %call_40cad0, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40cad4	 Bytes: 3
  %loadMem_40cad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cad4 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cad4)
  store %struct.Memory* %call_40cad4, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %edx	 RIP: 40cad7	 Bytes: 7
  %loadMem_40cad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cad7 = call %struct.Memory* @routine_xorl_0x633b40___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cad7)
  store %struct.Memory* %call_40cad7, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x633b40	 RIP: 40cade	 Bytes: 7
  %loadMem_40cade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cade = call %struct.Memory* @routine_movl__edx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cade)
  store %struct.Memory* %call_40cade, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 40cae5	 Bytes: 4
  %loadMem_40cae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cae5 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cae5)
  store %struct.Memory* %call_40cae5, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %edx	 RIP: 40cae9	 Bytes: 7
  %loadMem_40cae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cae9 = call %struct.Memory* @routine_movl_0x62dab0___rax_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cae9)
  store %struct.Memory* %call_40cae9, %struct.Memory** %MEMORY

  ; Code: addl 0x8661c0, %edx	 RIP: 40caf0	 Bytes: 7
  %loadMem_40caf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40caf0 = call %struct.Memory* @routine_addl_0x8661c0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40caf0)
  store %struct.Memory* %call_40caf0, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8661c0	 RIP: 40caf7	 Bytes: 7
  %loadMem_40caf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40caf7 = call %struct.Memory* @routine_movl__edx__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40caf7)
  store %struct.Memory* %call_40caf7, %struct.Memory** %MEMORY

  ; Code: movl 0x63ae48, %edx	 RIP: 40cafe	 Bytes: 7
  %loadMem_40cafe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cafe = call %struct.Memory* @routine_movl_0x63ae48___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cafe)
  store %struct.Memory* %call_40cafe, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40cb05	 Bytes: 3
  %loadMem_40cb05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb05 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb05)
  store %struct.Memory* %call_40cb05, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x63ae48	 RIP: 40cb08	 Bytes: 7
  %loadMem_40cb08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb08 = call %struct.Memory* @routine_movl__edx__0x63ae48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb08)
  store %struct.Memory* %call_40cb08, %struct.Memory** %MEMORY

  ; Code: .L_40cb0f:	 RIP: 40cb0f	 Bytes: 0
  br label %block_.L_40cb0f
block_.L_40cb0f:

  ; Code: jmpq .L_40cb14	 RIP: 40cb0f	 Bytes: 5
  %loadMem_40cb0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb0f = call %struct.Memory* @routine_jmpq_.L_40cb14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb0f, i64 5, i64 5)
  store %struct.Memory* %call_40cb0f, %struct.Memory** %MEMORY

  br label %block_.L_40cb14

  ; Code: .L_40cb14:	 RIP: 40cb14	 Bytes: 0
block_.L_40cb14:

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40cb14	 Bytes: 4
  %loadMem_40cb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb14 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb14)
  store %struct.Memory* %call_40cb14, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x866540(,%rax,4)	 RIP: 40cb18	 Bytes: 8
  %loadMem_40cb18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb18 = call %struct.Memory* @routine_cmpl__0x1__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb18)
  store %struct.Memory* %call_40cb18, %struct.Memory** %MEMORY

  ; Code: jne .L_40cd2a	 RIP: 40cb20	 Bytes: 6
  %loadMem_40cb20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb20 = call %struct.Memory* @routine_jne_.L_40cd2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb20, i8* %BRANCH_TAKEN, i64 522, i64 6, i64 6)
  store %struct.Memory* %call_40cb20, %struct.Memory** %MEMORY

  %loadBr_40cb20 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cb20 = icmp eq i8 %loadBr_40cb20, 1
  br i1 %cmpBr_40cb20, label %block_.L_40cd2a, label %block_40cb26

block_40cb26:
  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 40cb26	 Bytes: 4
  %loadMem_40cb26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb26 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb26)
  store %struct.Memory* %call_40cb26, %struct.Memory** %MEMORY

  ; Code: je .L_40cc9b	 RIP: 40cb2a	 Bytes: 6
  %loadMem_40cb2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb2a = call %struct.Memory* @routine_je_.L_40cc9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb2a, i8* %BRANCH_TAKEN, i64 369, i64 6, i64 6)
  store %struct.Memory* %call_40cb2a, %struct.Memory** %MEMORY

  %loadBr_40cb2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cb2a = icmp eq i8 %loadBr_40cb2a, 1
  br i1 %cmpBr_40cb2a, label %block_.L_40cc9b, label %block_40cb30

block_40cb30:
  ; Code: movl $0x1, %edi	 RIP: 40cb30	 Bytes: 5
  %loadMem_40cb30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb30 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb30)
  store %struct.Memory* %call_40cb30, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 40cb35	 Bytes: 2
  %loadMem_40cb35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb35 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb35)
  store %struct.Memory* %call_40cb35, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40cb37	 Bytes: 4
  %loadMem_40cb37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb37 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb37)
  store %struct.Memory* %call_40cb37, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0cc0(,%rax,4), %ecx	 RIP: 40cb3b	 Bytes: 7
  %loadMem_40cb3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb3b = call %struct.Memory* @routine_movl_0x8a0cc0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb3b)
  store %struct.Memory* %call_40cb3b, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40cb42	 Bytes: 7
  %loadMem_40cb42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb42 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb42)
  store %struct.Memory* %call_40cb42, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40cb49	 Bytes: 7
  %loadMem_40cb49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb49 = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb49)
  store %struct.Memory* %call_40cb49, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40cb50	 Bytes: 4
  %loadMem_40cb50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb50 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb50)
  store %struct.Memory* %call_40cb50, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0cc0(,%rax,4), %ecx	 RIP: 40cb54	 Bytes: 7
  %loadMem_40cb54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb54 = call %struct.Memory* @routine_movl_0x8a0cc0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb54)
  store %struct.Memory* %call_40cb54, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40cb5b	 Bytes: 7
  %loadMem_40cb5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb5b = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb5b)
  store %struct.Memory* %call_40cb5b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40cb62	 Bytes: 7
  %loadMem_40cb62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb62 = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb62)
  store %struct.Memory* %call_40cb62, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40cb69	 Bytes: 3
  %loadMem_40cb69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb69 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb69)
  store %struct.Memory* %call_40cb69, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %ecx	 RIP: 40cb6c	 Bytes: 3
  %loadMem_40cb6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb6c = call %struct.Memory* @routine_subl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb6c)
  store %struct.Memory* %call_40cb6c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 40cb6f	 Bytes: 3
  %loadMem_40cb6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb6f = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb6f)
  store %struct.Memory* %call_40cb6f, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0f00(,%rax,4), %ecx	 RIP: 40cb72	 Bytes: 7
  %loadMem_40cb72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb72 = call %struct.Memory* @routine_movl_0x8a0f00___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb72)
  store %struct.Memory* %call_40cb72, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40cb79	 Bytes: 7
  %loadMem_40cb79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb79 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb79)
  store %struct.Memory* %call_40cb79, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40cb80	 Bytes: 7
  %loadMem_40cb80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb80 = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb80)
  store %struct.Memory* %call_40cb80, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40cb87	 Bytes: 4
  %loadMem_40cb87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb87 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb87)
  store %struct.Memory* %call_40cb87, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x866540(,%rax,4)	 RIP: 40cb8b	 Bytes: 11
  %loadMem_40cb8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb8b = call %struct.Memory* @routine_movl__0xd__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb8b)
  store %struct.Memory* %call_40cb8b, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40cb96	 Bytes: 4
  %loadMem_40cb96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb96 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb96)
  store %struct.Memory* %call_40cb96, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x866540(,%rax,4)	 RIP: 40cb9a	 Bytes: 11
  %loadMem_40cb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb9a = call %struct.Memory* @routine_movl__0x1__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb9a)
  store %struct.Memory* %call_40cb9a, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab8, %ecx	 RIP: 40cba5	 Bytes: 7
  %loadMem_40cba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cba5 = call %struct.Memory* @routine_movl_0x62dab8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cba5)
  store %struct.Memory* %call_40cba5, %struct.Memory** %MEMORY

  ; Code: addl 0x8661c0, %ecx	 RIP: 40cbac	 Bytes: 7
  %loadMem_40cbac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbac = call %struct.Memory* @routine_addl_0x8661c0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbac)
  store %struct.Memory* %call_40cbac, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661c0	 RIP: 40cbb3	 Bytes: 7
  %loadMem_40cbb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbb3 = call %struct.Memory* @routine_movl__ecx__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbb3)
  store %struct.Memory* %call_40cbb3, %struct.Memory** %MEMORY

  ; Code: callq .removeHolding	 RIP: 40cbba	 Bytes: 5
  %loadMem1_40cbba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40cbba = call %struct.Memory* @routine_callq_.removeHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40cbba, i64 -42458, i64 5, i64 5)
  store %struct.Memory* %call1_40cbba, %struct.Memory** %MEMORY

  %loadMem2_40cbba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40cbba = load i64, i64* %3
  %call2_40cbba = call %struct.Memory* @sub_4025e0.removeHolding(%struct.State* %0, i64  %loadPC_40cbba, %struct.Memory* %loadMem2_40cbba)
  store %struct.Memory* %call2_40cbba, %struct.Memory** %MEMORY

  ; Code: movq $0x880b20, %rax	 RIP: 40cbbf	 Bytes: 10
  %loadMem_40cbbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbbf = call %struct.Memory* @routine_movq__0x880b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbbf)
  store %struct.Memory* %call_40cbbf, %struct.Memory** %MEMORY

  ; Code: movl 0x63ae48, %ecx	 RIP: 40cbc9	 Bytes: 7
  %loadMem_40cbc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbc9 = call %struct.Memory* @routine_movl_0x63ae48___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbc9)
  store %struct.Memory* %call_40cbc9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40cbd0	 Bytes: 3
  %loadMem_40cbd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbd0 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbd0)
  store %struct.Memory* %call_40cbd0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x63ae48	 RIP: 40cbd3	 Bytes: 7
  %loadMem_40cbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbd3 = call %struct.Memory* @routine_movl__ecx__0x63ae48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbd3)
  store %struct.Memory* %call_40cbd3, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40cbda	 Bytes: 3
  %loadMem_40cbda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbda = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbda)
  store %struct.Memory* %call_40cbda, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %ecx	 RIP: 40cbdd	 Bytes: 3
  %loadMem_40cbdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbdd = call %struct.Memory* @routine_subl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbdd)
  store %struct.Memory* %call_40cbdd, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40cbe0	 Bytes: 3
  %loadMem_40cbe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbe0 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbe0)
  store %struct.Memory* %call_40cbe0, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x866540(,%rdx,4)	 RIP: 40cbe3	 Bytes: 11
  %loadMem_40cbe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbe3 = call %struct.Memory* @routine_movl__0x2__0x866540___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbe3)
  store %struct.Memory* %call_40cbe3, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40cbee	 Bytes: 4
  %loadMem_40cbee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbee = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbee)
  store %struct.Memory* %call_40cbee, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rdx,4), %ecx	 RIP: 40cbf2	 Bytes: 7
  %loadMem_40cbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbf2 = call %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbf2)
  store %struct.Memory* %call_40cbf2, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40cbf9	 Bytes: 3
  %loadMem_40cbf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbf9 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbf9)
  store %struct.Memory* %call_40cbf9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rdx,4)	 RIP: 40cbfc	 Bytes: 7
  %loadMem_40cbfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbfc = call %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbfc)
  store %struct.Memory* %call_40cbfc, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40cc03	 Bytes: 4
  %loadMem_40cc03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc03 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc03)
  store %struct.Memory* %call_40cc03, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rdx,4), %ecx	 RIP: 40cc07	 Bytes: 7
  %loadMem_40cc07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc07 = call %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc07)
  store %struct.Memory* %call_40cc07, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40cc0e	 Bytes: 3
  %loadMem_40cc0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc0e = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc0e)
  store %struct.Memory* %call_40cc0e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rdx,4)	 RIP: 40cc11	 Bytes: 7
  %loadMem_40cc11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc11 = call %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc11)
  store %struct.Memory* %call_40cc11, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40cc18	 Bytes: 3
  %loadMem_40cc18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc18 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc18)
  store %struct.Memory* %call_40cc18, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %ecx	 RIP: 40cc1b	 Bytes: 3
  %loadMem_40cc1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc1b = call %struct.Memory* @routine_subl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc1b)
  store %struct.Memory* %call_40cc1b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40cc1e	 Bytes: 3
  %loadMem_40cc1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc1e = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc1e)
  store %struct.Memory* %call_40cc1e, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rdx,4), %ecx	 RIP: 40cc21	 Bytes: 7
  %loadMem_40cc21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc21 = call %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc21)
  store %struct.Memory* %call_40cc21, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40cc28	 Bytes: 3
  %loadMem_40cc28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc28 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc28)
  store %struct.Memory* %call_40cc28, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rdx,4)	 RIP: 40cc2b	 Bytes: 7
  %loadMem_40cc2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc2b = call %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc2b)
  store %struct.Memory* %call_40cc2b, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %ecx	 RIP: 40cc32	 Bytes: 7
  %loadMem_40cc32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc32 = call %struct.Memory* @routine_movl_0x8661bc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc32)
  store %struct.Memory* %call_40cc32, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %ecx	 RIP: 40cc39	 Bytes: 3
  %loadMem_40cc39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc39 = call %struct.Memory* @routine_xorl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc39)
  store %struct.Memory* %call_40cc39, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661bc	 RIP: 40cc3c	 Bytes: 7
  %loadMem_40cc3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc3c = call %struct.Memory* @routine_movl__ecx__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc3c)
  store %struct.Memory* %call_40cc3c, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 40cc43	 Bytes: 8
  %loadMem_40cc43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc43 = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc43)
  store %struct.Memory* %call_40cc43, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 40cc4b	 Bytes: 4
  %loadMem_40cc4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc4b = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc4b)
  store %struct.Memory* %call_40cc4b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %r8	 RIP: 40cc4f	 Bytes: 3
  %loadMem_40cc4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc4f = call %struct.Memory* @routine_movq__rax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc4f)
  store %struct.Memory* %call_40cc4f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %r8	 RIP: 40cc52	 Bytes: 3
  %loadMem_40cc52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc52 = call %struct.Memory* @routine_addq__rdx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc52)
  store %struct.Memory* %call_40cc52, %struct.Memory** %MEMORY

  ; Code: movl (%r8), %ecx	 RIP: 40cc55	 Bytes: 3
  %loadMem_40cc55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc55 = call %struct.Memory* @routine_movl___r8____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc55)
  store %struct.Memory* %call_40cc55, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %esi	 RIP: 40cc58	 Bytes: 3
  %loadMem_40cc58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc58 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc58)
  store %struct.Memory* %call_40cc58, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %esi	 RIP: 40cc5b	 Bytes: 3
  %loadMem_40cc5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc5b = call %struct.Memory* @routine_subl__0xc___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc5b)
  store %struct.Memory* %call_40cc5b, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40cc5e	 Bytes: 3
  %loadMem_40cc5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc5e = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc5e)
  store %struct.Memory* %call_40cc5e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8662f0(,%rdx,4)	 RIP: 40cc61	 Bytes: 7
  %loadMem_40cc61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc61 = call %struct.Memory* @routine_movl__ecx__0x8662f0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc61)
  store %struct.Memory* %call_40cc61, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40cc68	 Bytes: 3
  %loadMem_40cc68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc68 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc68)
  store %struct.Memory* %call_40cc68, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %ecx	 RIP: 40cc6b	 Bytes: 3
  %loadMem_40cc6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc6b = call %struct.Memory* @routine_subl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc6b)
  store %struct.Memory* %call_40cc6b, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 40cc6e	 Bytes: 8
  %loadMem_40cc6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc6e = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc6e)
  store %struct.Memory* %call_40cc6e, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 40cc76	 Bytes: 4
  %loadMem_40cc76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc76 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc76)
  store %struct.Memory* %call_40cc76, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40cc7a	 Bytes: 3
  %loadMem_40cc7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc7a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc7a)
  store %struct.Memory* %call_40cc7a, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rax	 RIP: 40cc7d	 Bytes: 3
  %loadMem_40cc7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc7d = call %struct.Memory* @routine_movslq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc7d)
  store %struct.Memory* %call_40cc7d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x85f2f0(,%rax,4)	 RIP: 40cc80	 Bytes: 7
  %loadMem_40cc80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc80 = call %struct.Memory* @routine_movl__ecx__0x85f2f0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc80)
  store %struct.Memory* %call_40cc80, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40cc87	 Bytes: 4
  %loadMem_40cc87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc87 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc87)
  store %struct.Memory* %call_40cc87, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8662f0(,%rax,4)	 RIP: 40cc8b	 Bytes: 11
  %loadMem_40cc8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc8b = call %struct.Memory* @routine_movl__0x0__0x8662f0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc8b)
  store %struct.Memory* %call_40cc8b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d604	 RIP: 40cc96	 Bytes: 5
  %loadMem_40cc96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc96 = call %struct.Memory* @routine_jmpq_.L_40d604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc96, i64 2414, i64 5)
  store %struct.Memory* %call_40cc96, %struct.Memory** %MEMORY

  br label %block_.L_40d604

  ; Code: .L_40cc9b:	 RIP: 40cc9b	 Bytes: 0
block_.L_40cc9b:

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40cc9b	 Bytes: 4
  %loadMem_40cc9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc9b = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc9b)
  store %struct.Memory* %call_40cc9b, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0cc0(,%rax,4), %ecx	 RIP: 40cc9f	 Bytes: 7
  %loadMem_40cc9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc9f = call %struct.Memory* @routine_movl_0x8a0cc0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc9f)
  store %struct.Memory* %call_40cc9f, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40cca6	 Bytes: 7
  %loadMem_40cca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cca6 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cca6)
  store %struct.Memory* %call_40cca6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40ccad	 Bytes: 7
  %loadMem_40ccad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccad = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccad)
  store %struct.Memory* %call_40ccad, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40ccb4	 Bytes: 4
  %loadMem_40ccb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccb4 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccb4)
  store %struct.Memory* %call_40ccb4, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0cc0(,%rax,4), %ecx	 RIP: 40ccb8	 Bytes: 7
  %loadMem_40ccb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccb8 = call %struct.Memory* @routine_movl_0x8a0cc0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccb8)
  store %struct.Memory* %call_40ccb8, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40ccbf	 Bytes: 7
  %loadMem_40ccbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccbf = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccbf)
  store %struct.Memory* %call_40ccbf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40ccc6	 Bytes: 7
  %loadMem_40ccc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccc6 = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccc6)
  store %struct.Memory* %call_40ccc6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 40cccd	 Bytes: 3
  %loadMem_40cccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cccd = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cccd)
  store %struct.Memory* %call_40cccd, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40ccd0	 Bytes: 4
  %loadMem_40ccd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccd0 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccd0)
  store %struct.Memory* %call_40ccd0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x866540(,%rax,4)	 RIP: 40ccd4	 Bytes: 7
  %loadMem_40ccd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccd4 = call %struct.Memory* @routine_movl__ecx__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccd4)
  store %struct.Memory* %call_40ccd4, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40ccdb	 Bytes: 4
  %loadMem_40ccdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccdb = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccdb)
  store %struct.Memory* %call_40ccdb, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x866540(,%rax,4)	 RIP: 40ccdf	 Bytes: 11
  %loadMem_40ccdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccdf = call %struct.Memory* @routine_movl__0x1__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccdf)
  store %struct.Memory* %call_40ccdf, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40ccea	 Bytes: 4
  %loadMem_40ccea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccea = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccea)
  store %struct.Memory* %call_40ccea, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rax,4), %ecx	 RIP: 40ccee	 Bytes: 7
  %loadMem_40ccee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccee = call %struct.Memory* @routine_movl_0x8823b0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccee)
  store %struct.Memory* %call_40ccee, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40ccf5	 Bytes: 3
  %loadMem_40ccf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccf5 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccf5)
  store %struct.Memory* %call_40ccf5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rax,4)	 RIP: 40ccf8	 Bytes: 7
  %loadMem_40ccf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccf8 = call %struct.Memory* @routine_movl__ecx__0x8823b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccf8)
  store %struct.Memory* %call_40ccf8, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40ccff	 Bytes: 4
  %loadMem_40ccff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccff = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccff)
  store %struct.Memory* %call_40ccff, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rax,4), %ecx	 RIP: 40cd03	 Bytes: 7
  %loadMem_40cd03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd03 = call %struct.Memory* @routine_movl_0x8823b0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd03)
  store %struct.Memory* %call_40cd03, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40cd0a	 Bytes: 3
  %loadMem_40cd0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd0a = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd0a)
  store %struct.Memory* %call_40cd0a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rax,4)	 RIP: 40cd0d	 Bytes: 7
  %loadMem_40cd0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd0d = call %struct.Memory* @routine_movl__ecx__0x8823b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd0d)
  store %struct.Memory* %call_40cd0d, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %ecx	 RIP: 40cd14	 Bytes: 7
  %loadMem_40cd14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd14 = call %struct.Memory* @routine_movl_0x8661bc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd14)
  store %struct.Memory* %call_40cd14, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %ecx	 RIP: 40cd1b	 Bytes: 3
  %loadMem_40cd1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd1b = call %struct.Memory* @routine_xorl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd1b)
  store %struct.Memory* %call_40cd1b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661bc	 RIP: 40cd1e	 Bytes: 7
  %loadMem_40cd1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd1e = call %struct.Memory* @routine_movl__ecx__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd1e)
  store %struct.Memory* %call_40cd1e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d604	 RIP: 40cd25	 Bytes: 5
  %loadMem_40cd25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd25 = call %struct.Memory* @routine_jmpq_.L_40d604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd25, i64 2271, i64 5)
  store %struct.Memory* %call_40cd25, %struct.Memory** %MEMORY

  br label %block_.L_40d604

  ; Code: .L_40cd2a:	 RIP: 40cd2a	 Bytes: 0
block_.L_40cd2a:

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40cd2a	 Bytes: 4
  %loadMem_40cd2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd2a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd2a)
  store %struct.Memory* %call_40cd2a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x866540(,%rax,4)	 RIP: 40cd2e	 Bytes: 8
  %loadMem_40cd2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd2e = call %struct.Memory* @routine_cmpl__0x2__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd2e)
  store %struct.Memory* %call_40cd2e, %struct.Memory** %MEMORY

  ; Code: jne .L_40cf43	 RIP: 40cd36	 Bytes: 6
  %loadMem_40cd36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd36 = call %struct.Memory* @routine_jne_.L_40cf43(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd36, i8* %BRANCH_TAKEN, i64 525, i64 6, i64 6)
  store %struct.Memory* %call_40cd36, %struct.Memory** %MEMORY

  %loadBr_40cd36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cd36 = icmp eq i8 %loadBr_40cd36, 1
  br i1 %cmpBr_40cd36, label %block_.L_40cf43, label %block_40cd3c

block_40cd3c:
  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 40cd3c	 Bytes: 4
  %loadMem_40cd3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd3c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd3c)
  store %struct.Memory* %call_40cd3c, %struct.Memory** %MEMORY

  ; Code: je .L_40ceb4	 RIP: 40cd40	 Bytes: 6
  %loadMem_40cd40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd40 = call %struct.Memory* @routine_je_.L_40ceb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd40, i8* %BRANCH_TAKEN, i64 372, i64 6, i64 6)
  store %struct.Memory* %call_40cd40, %struct.Memory** %MEMORY

  %loadBr_40cd40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cd40 = icmp eq i8 %loadBr_40cd40, 1
  br i1 %cmpBr_40cd40, label %block_.L_40ceb4, label %block_40cd46

block_40cd46:
  ; Code: movl $0x2, %edi	 RIP: 40cd46	 Bytes: 5
  %loadMem_40cd46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd46 = call %struct.Memory* @routine_movl__0x2___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd46)
  store %struct.Memory* %call_40cd46, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %esi	 RIP: 40cd4b	 Bytes: 5
  %loadMem_40cd4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd4b = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd4b)
  store %struct.Memory* %call_40cd4b, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40cd50	 Bytes: 4
  %loadMem_40cd50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd50 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd50)
  store %struct.Memory* %call_40cd50, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0f00(,%rax,4), %ecx	 RIP: 40cd54	 Bytes: 7
  %loadMem_40cd54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd54 = call %struct.Memory* @routine_movl_0x8a0f00___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd54)
  store %struct.Memory* %call_40cd54, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40cd5b	 Bytes: 7
  %loadMem_40cd5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd5b = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd5b)
  store %struct.Memory* %call_40cd5b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40cd62	 Bytes: 7
  %loadMem_40cd62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd62 = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd62)
  store %struct.Memory* %call_40cd62, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40cd69	 Bytes: 4
  %loadMem_40cd69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd69 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd69)
  store %struct.Memory* %call_40cd69, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0f00(,%rax,4), %ecx	 RIP: 40cd6d	 Bytes: 7
  %loadMem_40cd6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd6d = call %struct.Memory* @routine_movl_0x8a0f00___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd6d)
  store %struct.Memory* %call_40cd6d, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40cd74	 Bytes: 7
  %loadMem_40cd74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd74 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd74)
  store %struct.Memory* %call_40cd74, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40cd7b	 Bytes: 7
  %loadMem_40cd7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd7b = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd7b)
  store %struct.Memory* %call_40cd7b, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40cd82	 Bytes: 3
  %loadMem_40cd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd82 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd82)
  store %struct.Memory* %call_40cd82, %struct.Memory** %MEMORY

  ; Code: addl $0xc, %ecx	 RIP: 40cd85	 Bytes: 3
  %loadMem_40cd85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd85 = call %struct.Memory* @routine_addl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd85)
  store %struct.Memory* %call_40cd85, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 40cd88	 Bytes: 3
  %loadMem_40cd88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd88 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd88)
  store %struct.Memory* %call_40cd88, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0cc0(,%rax,4), %ecx	 RIP: 40cd8b	 Bytes: 7
  %loadMem_40cd8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd8b = call %struct.Memory* @routine_movl_0x8a0cc0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd8b)
  store %struct.Memory* %call_40cd8b, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40cd92	 Bytes: 7
  %loadMem_40cd92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd92 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd92)
  store %struct.Memory* %call_40cd92, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40cd99	 Bytes: 7
  %loadMem_40cd99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd99 = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd99)
  store %struct.Memory* %call_40cd99, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40cda0	 Bytes: 4
  %loadMem_40cda0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cda0 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cda0)
  store %struct.Memory* %call_40cda0, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x866540(,%rax,4)	 RIP: 40cda4	 Bytes: 11
  %loadMem_40cda4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cda4 = call %struct.Memory* @routine_movl__0xd__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cda4)
  store %struct.Memory* %call_40cda4, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40cdaf	 Bytes: 4
  %loadMem_40cdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cdaf = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cdaf)
  store %struct.Memory* %call_40cdaf, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x866540(,%rax,4)	 RIP: 40cdb3	 Bytes: 11
  %loadMem_40cdb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cdb3 = call %struct.Memory* @routine_movl__0x2__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cdb3)
  store %struct.Memory* %call_40cdb3, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab4, %ecx	 RIP: 40cdbe	 Bytes: 7
  %loadMem_40cdbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cdbe = call %struct.Memory* @routine_movl_0x62dab4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cdbe)
  store %struct.Memory* %call_40cdbe, %struct.Memory** %MEMORY

  ; Code: addl 0x8661c0, %ecx	 RIP: 40cdc5	 Bytes: 7
  %loadMem_40cdc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cdc5 = call %struct.Memory* @routine_addl_0x8661c0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cdc5)
  store %struct.Memory* %call_40cdc5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661c0	 RIP: 40cdcc	 Bytes: 7
  %loadMem_40cdcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cdcc = call %struct.Memory* @routine_movl__ecx__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cdcc)
  store %struct.Memory* %call_40cdcc, %struct.Memory** %MEMORY

  ; Code: callq .removeHolding	 RIP: 40cdd3	 Bytes: 5
  %loadMem1_40cdd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40cdd3 = call %struct.Memory* @routine_callq_.removeHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40cdd3, i64 -42995, i64 5, i64 5)
  store %struct.Memory* %call1_40cdd3, %struct.Memory** %MEMORY

  %loadMem2_40cdd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40cdd3 = load i64, i64* %3
  %call2_40cdd3 = call %struct.Memory* @sub_4025e0.removeHolding(%struct.State* %0, i64  %loadPC_40cdd3, %struct.Memory* %loadMem2_40cdd3)
  store %struct.Memory* %call2_40cdd3, %struct.Memory** %MEMORY

  ; Code: movq $0x880b20, %rax	 RIP: 40cdd8	 Bytes: 10
  %loadMem_40cdd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cdd8 = call %struct.Memory* @routine_movq__0x880b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cdd8)
  store %struct.Memory* %call_40cdd8, %struct.Memory** %MEMORY

  ; Code: movl 0x63ae48, %ecx	 RIP: 40cde2	 Bytes: 7
  %loadMem_40cde2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cde2 = call %struct.Memory* @routine_movl_0x63ae48___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cde2)
  store %struct.Memory* %call_40cde2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40cde9	 Bytes: 3
  %loadMem_40cde9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cde9 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cde9)
  store %struct.Memory* %call_40cde9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x63ae48	 RIP: 40cdec	 Bytes: 7
  %loadMem_40cdec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cdec = call %struct.Memory* @routine_movl__ecx__0x63ae48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cdec)
  store %struct.Memory* %call_40cdec, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40cdf3	 Bytes: 3
  %loadMem_40cdf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cdf3 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cdf3)
  store %struct.Memory* %call_40cdf3, %struct.Memory** %MEMORY

  ; Code: addl $0xc, %ecx	 RIP: 40cdf6	 Bytes: 3
  %loadMem_40cdf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cdf6 = call %struct.Memory* @routine_addl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cdf6)
  store %struct.Memory* %call_40cdf6, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40cdf9	 Bytes: 3
  %loadMem_40cdf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cdf9 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cdf9)
  store %struct.Memory* %call_40cdf9, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x866540(,%rdx,4)	 RIP: 40cdfc	 Bytes: 11
  %loadMem_40cdfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cdfc = call %struct.Memory* @routine_movl__0x1__0x866540___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cdfc)
  store %struct.Memory* %call_40cdfc, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40ce07	 Bytes: 4
  %loadMem_40ce07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce07 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce07)
  store %struct.Memory* %call_40ce07, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rdx,4), %ecx	 RIP: 40ce0b	 Bytes: 7
  %loadMem_40ce0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce0b = call %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce0b)
  store %struct.Memory* %call_40ce0b, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40ce12	 Bytes: 3
  %loadMem_40ce12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce12 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce12)
  store %struct.Memory* %call_40ce12, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rdx,4)	 RIP: 40ce15	 Bytes: 7
  %loadMem_40ce15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce15 = call %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce15)
  store %struct.Memory* %call_40ce15, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40ce1c	 Bytes: 4
  %loadMem_40ce1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce1c = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce1c)
  store %struct.Memory* %call_40ce1c, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rdx,4), %ecx	 RIP: 40ce20	 Bytes: 7
  %loadMem_40ce20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce20 = call %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce20)
  store %struct.Memory* %call_40ce20, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40ce27	 Bytes: 3
  %loadMem_40ce27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce27 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce27)
  store %struct.Memory* %call_40ce27, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rdx,4)	 RIP: 40ce2a	 Bytes: 7
  %loadMem_40ce2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce2a = call %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce2a)
  store %struct.Memory* %call_40ce2a, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40ce31	 Bytes: 3
  %loadMem_40ce31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce31 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce31)
  store %struct.Memory* %call_40ce31, %struct.Memory** %MEMORY

  ; Code: addl $0xc, %ecx	 RIP: 40ce34	 Bytes: 3
  %loadMem_40ce34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce34 = call %struct.Memory* @routine_addl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce34)
  store %struct.Memory* %call_40ce34, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40ce37	 Bytes: 3
  %loadMem_40ce37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce37 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce37)
  store %struct.Memory* %call_40ce37, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rdx,4), %ecx	 RIP: 40ce3a	 Bytes: 7
  %loadMem_40ce3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce3a = call %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce3a)
  store %struct.Memory* %call_40ce3a, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40ce41	 Bytes: 3
  %loadMem_40ce41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce41 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce41)
  store %struct.Memory* %call_40ce41, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rdx,4)	 RIP: 40ce44	 Bytes: 7
  %loadMem_40ce44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce44 = call %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce44)
  store %struct.Memory* %call_40ce44, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %ecx	 RIP: 40ce4b	 Bytes: 7
  %loadMem_40ce4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce4b = call %struct.Memory* @routine_movl_0x8661bc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce4b)
  store %struct.Memory* %call_40ce4b, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %ecx	 RIP: 40ce52	 Bytes: 3
  %loadMem_40ce52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce52 = call %struct.Memory* @routine_xorl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce52)
  store %struct.Memory* %call_40ce52, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661bc	 RIP: 40ce55	 Bytes: 7
  %loadMem_40ce55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce55 = call %struct.Memory* @routine_movl__ecx__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce55)
  store %struct.Memory* %call_40ce55, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 40ce5c	 Bytes: 8
  %loadMem_40ce5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce5c = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce5c)
  store %struct.Memory* %call_40ce5c, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 40ce64	 Bytes: 4
  %loadMem_40ce64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce64 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce64)
  store %struct.Memory* %call_40ce64, %struct.Memory** %MEMORY

  ; Code: movq %rax, %r8	 RIP: 40ce68	 Bytes: 3
  %loadMem_40ce68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce68 = call %struct.Memory* @routine_movq__rax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce68)
  store %struct.Memory* %call_40ce68, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %r8	 RIP: 40ce6b	 Bytes: 3
  %loadMem_40ce6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce6b = call %struct.Memory* @routine_addq__rdx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce6b)
  store %struct.Memory* %call_40ce6b, %struct.Memory** %MEMORY

  ; Code: movl (%r8), %ecx	 RIP: 40ce6e	 Bytes: 3
  %loadMem_40ce6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce6e = call %struct.Memory* @routine_movl___r8____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce6e)
  store %struct.Memory* %call_40ce6e, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %esi	 RIP: 40ce71	 Bytes: 3
  %loadMem_40ce71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce71 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce71)
  store %struct.Memory* %call_40ce71, %struct.Memory** %MEMORY

  ; Code: addl $0xc, %esi	 RIP: 40ce74	 Bytes: 3
  %loadMem_40ce74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce74 = call %struct.Memory* @routine_addl__0xc___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce74)
  store %struct.Memory* %call_40ce74, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40ce77	 Bytes: 3
  %loadMem_40ce77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce77 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce77)
  store %struct.Memory* %call_40ce77, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8662f0(,%rdx,4)	 RIP: 40ce7a	 Bytes: 7
  %loadMem_40ce7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce7a = call %struct.Memory* @routine_movl__ecx__0x8662f0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce7a)
  store %struct.Memory* %call_40ce7a, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40ce81	 Bytes: 3
  %loadMem_40ce81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce81 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce81)
  store %struct.Memory* %call_40ce81, %struct.Memory** %MEMORY

  ; Code: addl $0xc, %ecx	 RIP: 40ce84	 Bytes: 3
  %loadMem_40ce84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce84 = call %struct.Memory* @routine_addl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce84)
  store %struct.Memory* %call_40ce84, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 40ce87	 Bytes: 8
  %loadMem_40ce87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce87 = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce87)
  store %struct.Memory* %call_40ce87, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 40ce8f	 Bytes: 4
  %loadMem_40ce8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce8f = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce8f)
  store %struct.Memory* %call_40ce8f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40ce93	 Bytes: 3
  %loadMem_40ce93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce93 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce93)
  store %struct.Memory* %call_40ce93, %struct.Memory** %MEMORY

  ; Code: movslq (%rax), %rax	 RIP: 40ce96	 Bytes: 3
  %loadMem_40ce96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce96 = call %struct.Memory* @routine_movslq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce96)
  store %struct.Memory* %call_40ce96, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x85f2f0(,%rax,4)	 RIP: 40ce99	 Bytes: 7
  %loadMem_40ce99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ce99 = call %struct.Memory* @routine_movl__ecx__0x85f2f0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ce99)
  store %struct.Memory* %call_40ce99, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40cea0	 Bytes: 4
  %loadMem_40cea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cea0 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cea0)
  store %struct.Memory* %call_40cea0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8662f0(,%rax,4)	 RIP: 40cea4	 Bytes: 11
  %loadMem_40cea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cea4 = call %struct.Memory* @routine_movl__0x0__0x8662f0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cea4)
  store %struct.Memory* %call_40cea4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d604	 RIP: 40ceaf	 Bytes: 5
  %loadMem_40ceaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ceaf = call %struct.Memory* @routine_jmpq_.L_40d604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ceaf, i64 1877, i64 5)
  store %struct.Memory* %call_40ceaf, %struct.Memory** %MEMORY

  br label %block_.L_40d604

  ; Code: .L_40ceb4:	 RIP: 40ceb4	 Bytes: 0
block_.L_40ceb4:

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40ceb4	 Bytes: 4
  %loadMem_40ceb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ceb4 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ceb4)
  store %struct.Memory* %call_40ceb4, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0f00(,%rax,4), %ecx	 RIP: 40ceb8	 Bytes: 7
  %loadMem_40ceb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ceb8 = call %struct.Memory* @routine_movl_0x8a0f00___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ceb8)
  store %struct.Memory* %call_40ceb8, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40cebf	 Bytes: 7
  %loadMem_40cebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cebf = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cebf)
  store %struct.Memory* %call_40cebf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40cec6	 Bytes: 7
  %loadMem_40cec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cec6 = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cec6)
  store %struct.Memory* %call_40cec6, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40cecd	 Bytes: 4
  %loadMem_40cecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cecd = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cecd)
  store %struct.Memory* %call_40cecd, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0f00(,%rax,4), %ecx	 RIP: 40ced1	 Bytes: 7
  %loadMem_40ced1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ced1 = call %struct.Memory* @routine_movl_0x8a0f00___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ced1)
  store %struct.Memory* %call_40ced1, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40ced8	 Bytes: 7
  %loadMem_40ced8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ced8 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ced8)
  store %struct.Memory* %call_40ced8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40cedf	 Bytes: 7
  %loadMem_40cedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cedf = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cedf)
  store %struct.Memory* %call_40cedf, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 40cee6	 Bytes: 3
  %loadMem_40cee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cee6 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cee6)
  store %struct.Memory* %call_40cee6, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40cee9	 Bytes: 4
  %loadMem_40cee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cee9 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cee9)
  store %struct.Memory* %call_40cee9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x866540(,%rax,4)	 RIP: 40ceed	 Bytes: 7
  %loadMem_40ceed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ceed = call %struct.Memory* @routine_movl__ecx__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ceed)
  store %struct.Memory* %call_40ceed, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40cef4	 Bytes: 4
  %loadMem_40cef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cef4 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cef4)
  store %struct.Memory* %call_40cef4, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x866540(,%rax,4)	 RIP: 40cef8	 Bytes: 11
  %loadMem_40cef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cef8 = call %struct.Memory* @routine_movl__0x2__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cef8)
  store %struct.Memory* %call_40cef8, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40cf03	 Bytes: 4
  %loadMem_40cf03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf03 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf03)
  store %struct.Memory* %call_40cf03, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rax,4), %ecx	 RIP: 40cf07	 Bytes: 7
  %loadMem_40cf07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf07 = call %struct.Memory* @routine_movl_0x8823b0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf07)
  store %struct.Memory* %call_40cf07, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40cf0e	 Bytes: 3
  %loadMem_40cf0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf0e = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf0e)
  store %struct.Memory* %call_40cf0e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rax,4)	 RIP: 40cf11	 Bytes: 7
  %loadMem_40cf11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf11 = call %struct.Memory* @routine_movl__ecx__0x8823b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf11)
  store %struct.Memory* %call_40cf11, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40cf18	 Bytes: 4
  %loadMem_40cf18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf18 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf18)
  store %struct.Memory* %call_40cf18, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rax,4), %ecx	 RIP: 40cf1c	 Bytes: 7
  %loadMem_40cf1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf1c = call %struct.Memory* @routine_movl_0x8823b0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf1c)
  store %struct.Memory* %call_40cf1c, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40cf23	 Bytes: 3
  %loadMem_40cf23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf23 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf23)
  store %struct.Memory* %call_40cf23, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rax,4)	 RIP: 40cf26	 Bytes: 7
  %loadMem_40cf26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf26 = call %struct.Memory* @routine_movl__ecx__0x8823b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf26)
  store %struct.Memory* %call_40cf26, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %ecx	 RIP: 40cf2d	 Bytes: 7
  %loadMem_40cf2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf2d = call %struct.Memory* @routine_movl_0x8661bc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf2d)
  store %struct.Memory* %call_40cf2d, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %ecx	 RIP: 40cf34	 Bytes: 3
  %loadMem_40cf34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf34 = call %struct.Memory* @routine_xorl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf34)
  store %struct.Memory* %call_40cf34, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661bc	 RIP: 40cf37	 Bytes: 7
  %loadMem_40cf37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf37 = call %struct.Memory* @routine_movl__ecx__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf37)
  store %struct.Memory* %call_40cf37, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d604	 RIP: 40cf3e	 Bytes: 5
  %loadMem_40cf3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf3e = call %struct.Memory* @routine_jmpq_.L_40d604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf3e, i64 1734, i64 5)
  store %struct.Memory* %call_40cf3e, %struct.Memory** %MEMORY

  br label %block_.L_40d604

  ; Code: .L_40cf43:	 RIP: 40cf43	 Bytes: 0
block_.L_40cf43:

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40cf43	 Bytes: 4
  %loadMem_40cf43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf43 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf43)
  store %struct.Memory* %call_40cf43, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, 0x866540(,%rax,4)	 RIP: 40cf47	 Bytes: 8
  %loadMem_40cf47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf47 = call %struct.Memory* @routine_cmpl__0x5__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf47)
  store %struct.Memory* %call_40cf47, %struct.Memory** %MEMORY

  ; Code: je .L_40d038	 RIP: 40cf4f	 Bytes: 6
  %loadMem_40cf4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf4f = call %struct.Memory* @routine_je_.L_40d038(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf4f, i8* %BRANCH_TAKEN, i64 233, i64 6, i64 6)
  store %struct.Memory* %call_40cf4f, %struct.Memory** %MEMORY

  %loadBr_40cf4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cf4f = icmp eq i8 %loadBr_40cf4f, 1
  br i1 %cmpBr_40cf4f, label %block_.L_40d038, label %block_40cf55

block_40cf55:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40cf55	 Bytes: 4
  %loadMem_40cf55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf55 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf55)
  store %struct.Memory* %call_40cf55, %struct.Memory** %MEMORY

  ; Code: cmpl $0x6, 0x866540(,%rax,4)	 RIP: 40cf59	 Bytes: 8
  %loadMem_40cf59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf59 = call %struct.Memory* @routine_cmpl__0x6__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf59)
  store %struct.Memory* %call_40cf59, %struct.Memory** %MEMORY

  ; Code: je .L_40d038	 RIP: 40cf61	 Bytes: 6
  %loadMem_40cf61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf61 = call %struct.Memory* @routine_je_.L_40d038(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf61, i8* %BRANCH_TAKEN, i64 215, i64 6, i64 6)
  store %struct.Memory* %call_40cf61, %struct.Memory** %MEMORY

  %loadBr_40cf61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cf61 = icmp eq i8 %loadBr_40cf61, 1
  br i1 %cmpBr_40cf61, label %block_.L_40d038, label %block_40cf67

block_40cf67:
  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 40cf67	 Bytes: 4
  %loadMem_40cf67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf67 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf67)
  store %struct.Memory* %call_40cf67, %struct.Memory** %MEMORY

  ; Code: jne .L_40d038	 RIP: 40cf6b	 Bytes: 6
  %loadMem_40cf6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf6b = call %struct.Memory* @routine_jne_.L_40d038(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf6b, i8* %BRANCH_TAKEN, i64 205, i64 6, i64 6)
  store %struct.Memory* %call_40cf6b, %struct.Memory** %MEMORY

  %loadBr_40cf6b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cf6b = icmp eq i8 %loadBr_40cf6b, 1
  br i1 %cmpBr_40cf6b, label %block_.L_40d038, label %block_40cf71

block_40cf71:
  ; Code: movq $0x8a0a80, %rax	 RIP: 40cf71	 Bytes: 10
  %loadMem_40cf71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf71 = call %struct.Memory* @routine_movq__0x8a0a80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf71)
  store %struct.Memory* %call_40cf71, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40cf7b	 Bytes: 4
  %loadMem_40cf7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf7b = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf7b)
  store %struct.Memory* %call_40cf7b, %struct.Memory** %MEMORY

  ; Code: movl 0x866540(,%rcx,4), %edx	 RIP: 40cf7f	 Bytes: 7
  %loadMem_40cf7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf7f = call %struct.Memory* @routine_movl_0x866540___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf7f)
  store %struct.Memory* %call_40cf7f, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40cf86	 Bytes: 4
  %loadMem_40cf86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf86 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf86)
  store %struct.Memory* %call_40cf86, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x866540(,%rcx,4)	 RIP: 40cf8a	 Bytes: 7
  %loadMem_40cf8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf8a = call %struct.Memory* @routine_movl__edx__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf8a)
  store %struct.Memory* %call_40cf8a, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edx	 RIP: 40cf91	 Bytes: 3
  %loadMem_40cf91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf91 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf91)
  store %struct.Memory* %call_40cf91, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40cf94	 Bytes: 4
  %loadMem_40cf94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf94 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf94)
  store %struct.Memory* %call_40cf94, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x866540(,%rcx,4)	 RIP: 40cf98	 Bytes: 7
  %loadMem_40cf98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf98 = call %struct.Memory* @routine_movl__edx__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf98)
  store %struct.Memory* %call_40cf98, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40cf9f	 Bytes: 4
  %loadMem_40cf9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cf9f = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cf9f)
  store %struct.Memory* %call_40cf9f, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rcx,4), %edx	 RIP: 40cfa3	 Bytes: 7
  %loadMem_40cfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cfa3 = call %struct.Memory* @routine_movl_0x8823b0___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cfa3)
  store %struct.Memory* %call_40cfa3, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %edx	 RIP: 40cfaa	 Bytes: 3
  %loadMem_40cfaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cfaa = call %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cfaa)
  store %struct.Memory* %call_40cfaa, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8823b0(,%rcx,4)	 RIP: 40cfad	 Bytes: 7
  %loadMem_40cfad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cfad = call %struct.Memory* @routine_movl__edx__0x8823b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cfad)
  store %struct.Memory* %call_40cfad, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40cfb4	 Bytes: 4
  %loadMem_40cfb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cfb4 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cfb4)
  store %struct.Memory* %call_40cfb4, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rcx,4), %edx	 RIP: 40cfb8	 Bytes: 7
  %loadMem_40cfb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cfb8 = call %struct.Memory* @routine_movl_0x8823b0___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cfb8)
  store %struct.Memory* %call_40cfb8, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %edx	 RIP: 40cfbf	 Bytes: 3
  %loadMem_40cfbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cfbf = call %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cfbf)
  store %struct.Memory* %call_40cfbf, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8823b0(,%rcx,4)	 RIP: 40cfc2	 Bytes: 7
  %loadMem_40cfc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cfc2 = call %struct.Memory* @routine_movl__edx__0x8823b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cfc2)
  store %struct.Memory* %call_40cfc2, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %edx	 RIP: 40cfc9	 Bytes: 7
  %loadMem_40cfc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cfc9 = call %struct.Memory* @routine_movl_0x8661bc___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cfc9)
  store %struct.Memory* %call_40cfc9, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %edx	 RIP: 40cfd0	 Bytes: 3
  %loadMem_40cfd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cfd0 = call %struct.Memory* @routine_xorl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cfd0)
  store %struct.Memory* %call_40cfd0, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8661bc	 RIP: 40cfd3	 Bytes: 7
  %loadMem_40cfd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cfd3 = call %struct.Memory* @routine_movl__edx__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cfd3)
  store %struct.Memory* %call_40cfd3, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40cfda	 Bytes: 4
  %loadMem_40cfda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cfda = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cfda)
  store %struct.Memory* %call_40cfda, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 40cfde	 Bytes: 8
  %loadMem_40cfde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cfde = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cfde)
  store %struct.Memory* %call_40cfde, %struct.Memory** %MEMORY

  ; Code: imulq $0x240, %rcx, %rcx	 RIP: 40cfe6	 Bytes: 7
  %loadMem_40cfe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cfe6 = call %struct.Memory* @routine_imulq__0x240___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cfe6)
  store %struct.Memory* %call_40cfe6, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40cfed	 Bytes: 3
  %loadMem_40cfed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cfed = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cfed)
  store %struct.Memory* %call_40cfed, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 40cff0	 Bytes: 3
  %loadMem_40cff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cff0 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cff0)
  store %struct.Memory* %call_40cff0, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40cff3	 Bytes: 4
  %loadMem_40cff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cff3 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cff3)
  store %struct.Memory* %call_40cff3, %struct.Memory** %MEMORY

  ; Code: movl (%rsi,%rcx,4), %edx	 RIP: 40cff7	 Bytes: 3
  %loadMem_40cff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cff7 = call %struct.Memory* @routine_movl___rsi__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cff7)
  store %struct.Memory* %call_40cff7, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %edx	 RIP: 40cffa	 Bytes: 7
  %loadMem_40cffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cffa = call %struct.Memory* @routine_xorl_0x633b40___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cffa)
  store %struct.Memory* %call_40cffa, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x633b40	 RIP: 40d001	 Bytes: 7
  %loadMem_40d001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d001 = call %struct.Memory* @routine_movl__edx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d001)
  store %struct.Memory* %call_40d001, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40d008	 Bytes: 4
  %loadMem_40d008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d008 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d008)
  store %struct.Memory* %call_40d008, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 40d00c	 Bytes: 8
  %loadMem_40d00c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d00c = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d00c)
  store %struct.Memory* %call_40d00c, %struct.Memory** %MEMORY

  ; Code: imulq $0x240, %rcx, %rcx	 RIP: 40d014	 Bytes: 7
  %loadMem_40d014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d014 = call %struct.Memory* @routine_imulq__0x240___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d014)
  store %struct.Memory* %call_40d014, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40d01b	 Bytes: 3
  %loadMem_40d01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d01b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d01b)
  store %struct.Memory* %call_40d01b, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40d01e	 Bytes: 4
  %loadMem_40d01e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d01e = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d01e)
  store %struct.Memory* %call_40d01e, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40d022	 Bytes: 3
  %loadMem_40d022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d022 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d022)
  store %struct.Memory* %call_40d022, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %edx	 RIP: 40d025	 Bytes: 7
  %loadMem_40d025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d025 = call %struct.Memory* @routine_xorl_0x633b40___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d025)
  store %struct.Memory* %call_40d025, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x633b40	 RIP: 40d02c	 Bytes: 7
  %loadMem_40d02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d02c = call %struct.Memory* @routine_movl__edx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d02c)
  store %struct.Memory* %call_40d02c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d604	 RIP: 40d033	 Bytes: 5
  %loadMem_40d033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d033 = call %struct.Memory* @routine_jmpq_.L_40d604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d033, i64 1489, i64 5)
  store %struct.Memory* %call_40d033, %struct.Memory** %MEMORY

  br label %block_.L_40d604

  ; Code: .L_40d038:	 RIP: 40d038	 Bytes: 0
block_.L_40d038:

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 40d038	 Bytes: 4
  %loadMem_40d038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d038 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d038)
  store %struct.Memory* %call_40d038, %struct.Memory** %MEMORY

  ; Code: je .L_40d20c	 RIP: 40d03c	 Bytes: 6
  %loadMem_40d03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d03c = call %struct.Memory* @routine_je_.L_40d20c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d03c, i8* %BRANCH_TAKEN, i64 464, i64 6, i64 6)
  store %struct.Memory* %call_40d03c, %struct.Memory** %MEMORY

  %loadBr_40d03c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d03c = icmp eq i8 %loadBr_40d03c, 1
  br i1 %cmpBr_40d03c, label %block_.L_40d20c, label %block_40d042

block_40d042:
  ; Code: movl $0x2, %eax	 RIP: 40d042	 Bytes: 5
  %loadMem_40d042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d042 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d042)
  store %struct.Memory* %call_40d042, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40d047	 Bytes: 4
  %loadMem_40d047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d047 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d047)
  store %struct.Memory* %call_40d047, %struct.Memory** %MEMORY

  ; Code: movl 0x866540(,%rcx,4), %edx	 RIP: 40d04b	 Bytes: 7
  %loadMem_40d04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d04b = call %struct.Memory* @routine_movl_0x866540___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d04b)
  store %struct.Memory* %call_40d04b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 40d052	 Bytes: 3
  %loadMem_40d052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d052 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d052)
  store %struct.Memory* %call_40d052, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 40d055	 Bytes: 2
  %loadMem_40d055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d055 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d055)
  store %struct.Memory* %call_40d055, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 40d057	 Bytes: 1
  %loadMem_40d057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d057 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d057)
  store %struct.Memory* %call_40d057, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 40d058	 Bytes: 3
  %loadMem_40d058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d058 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d058)
  store %struct.Memory* %call_40d058, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 40d05b	 Bytes: 2
  %loadMem_40d05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d05b = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d05b)
  store %struct.Memory* %call_40d05b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 40d05d	 Bytes: 3
  %loadMem_40d05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d05d = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d05d)
  store %struct.Memory* %call_40d05d, %struct.Memory** %MEMORY

  ; Code: je .L_40d139	 RIP: 40d060	 Bytes: 6
  %loadMem_40d060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d060 = call %struct.Memory* @routine_je_.L_40d139(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d060, i8* %BRANCH_TAKEN, i64 217, i64 6, i64 6)
  store %struct.Memory* %call_40d060, %struct.Memory** %MEMORY

  %loadBr_40d060 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d060 = icmp eq i8 %loadBr_40d060, 1
  br i1 %cmpBr_40d060, label %block_.L_40d139, label %block_40d066

block_40d066:
  ; Code: movq $0x8a0a80, %rax	 RIP: 40d066	 Bytes: 10
  %loadMem_40d066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d066 = call %struct.Memory* @routine_movq__0x8a0a80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d066)
  store %struct.Memory* %call_40d066, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 40d070	 Bytes: 3
  %loadMem_40d070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d070 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d070)
  store %struct.Memory* %call_40d070, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40d073	 Bytes: 4
  %loadMem_40d073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d073 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d073)
  store %struct.Memory* %call_40d073, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x866540(,%rdx,4)	 RIP: 40d077	 Bytes: 7
  %loadMem_40d077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d077 = call %struct.Memory* @routine_movl__ecx__0x866540___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d077)
  store %struct.Memory* %call_40d077, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40d07e	 Bytes: 4
  %loadMem_40d07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d07e = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d07e)
  store %struct.Memory* %call_40d07e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x866540(,%rdx,4)	 RIP: 40d082	 Bytes: 11
  %loadMem_40d082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d082 = call %struct.Memory* @routine_movl__0x1__0x866540___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d082)
  store %struct.Memory* %call_40d082, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40d08d	 Bytes: 4
  %loadMem_40d08d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d08d = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d08d)
  store %struct.Memory* %call_40d08d, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rdx,4), %ecx	 RIP: 40d091	 Bytes: 7
  %loadMem_40d091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d091 = call %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d091)
  store %struct.Memory* %call_40d091, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40d098	 Bytes: 3
  %loadMem_40d098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d098 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d098)
  store %struct.Memory* %call_40d098, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rdx,4)	 RIP: 40d09b	 Bytes: 7
  %loadMem_40d09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d09b = call %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d09b)
  store %struct.Memory* %call_40d09b, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40d0a2	 Bytes: 4
  %loadMem_40d0a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0a2 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0a2)
  store %struct.Memory* %call_40d0a2, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rdx,4), %ecx	 RIP: 40d0a6	 Bytes: 7
  %loadMem_40d0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0a6 = call %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0a6)
  store %struct.Memory* %call_40d0a6, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40d0ad	 Bytes: 3
  %loadMem_40d0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0ad = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0ad)
  store %struct.Memory* %call_40d0ad, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rdx,4)	 RIP: 40d0b0	 Bytes: 7
  %loadMem_40d0b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0b0 = call %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0b0)
  store %struct.Memory* %call_40d0b0, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %ecx	 RIP: 40d0b7	 Bytes: 7
  %loadMem_40d0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0b7 = call %struct.Memory* @routine_movl_0x8661bc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0b7)
  store %struct.Memory* %call_40d0b7, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %ecx	 RIP: 40d0be	 Bytes: 3
  %loadMem_40d0be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0be = call %struct.Memory* @routine_xorl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0be)
  store %struct.Memory* %call_40d0be, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661bc	 RIP: 40d0c1	 Bytes: 7
  %loadMem_40d0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0c1 = call %struct.Memory* @routine_movl__ecx__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0c1)
  store %struct.Memory* %call_40d0c1, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40d0c8	 Bytes: 4
  %loadMem_40d0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0c8 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0c8)
  store %struct.Memory* %call_40d0c8, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0cc0(,%rdx,4), %ecx	 RIP: 40d0cc	 Bytes: 7
  %loadMem_40d0cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0cc = call %struct.Memory* @routine_movl_0x8a0cc0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0cc)
  store %struct.Memory* %call_40d0cc, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40d0d3	 Bytes: 7
  %loadMem_40d0d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0d3 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0d3)
  store %struct.Memory* %call_40d0d3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40d0da	 Bytes: 7
  %loadMem_40d0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0da = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0da)
  store %struct.Memory* %call_40d0da, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40d0e1	 Bytes: 4
  %loadMem_40d0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0e1 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0e1)
  store %struct.Memory* %call_40d0e1, %struct.Memory** %MEMORY

  ; Code: imulq $0x240, %rdx, %rdx	 RIP: 40d0e5	 Bytes: 7
  %loadMem_40d0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0e5 = call %struct.Memory* @routine_imulq__0x240___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0e5)
  store %struct.Memory* %call_40d0e5, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40d0ec	 Bytes: 3
  %loadMem_40d0ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0ec = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0ec)
  store %struct.Memory* %call_40d0ec, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40d0ef	 Bytes: 4
  %loadMem_40d0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0ef = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0ef)
  store %struct.Memory* %call_40d0ef, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40d0f3	 Bytes: 3
  %loadMem_40d0f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0f3 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0f3)
  store %struct.Memory* %call_40d0f3, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40d0f6	 Bytes: 7
  %loadMem_40d0f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0f6 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0f6)
  store %struct.Memory* %call_40d0f6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40d0fd	 Bytes: 7
  %loadMem_40d0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d0fd = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d0fd)
  store %struct.Memory* %call_40d0fd, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rax	 RIP: 40d104	 Bytes: 4
  %loadMem_40d104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d104 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d104)
  store %struct.Memory* %call_40d104, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %ecx	 RIP: 40d108	 Bytes: 7
  %loadMem_40d108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d108 = call %struct.Memory* @routine_movl_0x62dab0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d108)
  store %struct.Memory* %call_40d108, %struct.Memory** %MEMORY

  ; Code: movl 0x8661c0, %esi	 RIP: 40d10f	 Bytes: 7
  %loadMem_40d10f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d10f = call %struct.Memory* @routine_movl_0x8661c0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d10f)
  store %struct.Memory* %call_40d10f, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %esi	 RIP: 40d116	 Bytes: 2
  %loadMem_40d116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d116 = call %struct.Memory* @routine_subl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d116)
  store %struct.Memory* %call_40d116, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8661c0	 RIP: 40d118	 Bytes: 7
  %loadMem_40d118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d118 = call %struct.Memory* @routine_movl__esi__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d118)
  store %struct.Memory* %call_40d118, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab4, %ecx	 RIP: 40d11f	 Bytes: 7
  %loadMem_40d11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d11f = call %struct.Memory* @routine_movl_0x62dab4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d11f)
  store %struct.Memory* %call_40d11f, %struct.Memory** %MEMORY

  ; Code: addl 0x8661c0, %ecx	 RIP: 40d126	 Bytes: 7
  %loadMem_40d126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d126 = call %struct.Memory* @routine_addl_0x8661c0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d126)
  store %struct.Memory* %call_40d126, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661c0	 RIP: 40d12d	 Bytes: 7
  %loadMem_40d12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d12d = call %struct.Memory* @routine_movl__ecx__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d12d)
  store %struct.Memory* %call_40d12d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d604	 RIP: 40d134	 Bytes: 5
  %loadMem_40d134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d134 = call %struct.Memory* @routine_jmpq_.L_40d604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d134, i64 1232, i64 5)
  store %struct.Memory* %call_40d134, %struct.Memory** %MEMORY

  br label %block_.L_40d604

  ; Code: .L_40d139:	 RIP: 40d139	 Bytes: 0
block_.L_40d139:

  ; Code: movq $0x8a0a80, %rax	 RIP: 40d139	 Bytes: 10
  %loadMem_40d139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d139 = call %struct.Memory* @routine_movq__0x8a0a80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d139)
  store %struct.Memory* %call_40d139, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 40d143	 Bytes: 3
  %loadMem_40d143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d143 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d143)
  store %struct.Memory* %call_40d143, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40d146	 Bytes: 4
  %loadMem_40d146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d146 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d146)
  store %struct.Memory* %call_40d146, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x866540(,%rdx,4)	 RIP: 40d14a	 Bytes: 7
  %loadMem_40d14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d14a = call %struct.Memory* @routine_movl__ecx__0x866540___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d14a)
  store %struct.Memory* %call_40d14a, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40d151	 Bytes: 4
  %loadMem_40d151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d151 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d151)
  store %struct.Memory* %call_40d151, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x866540(,%rdx,4)	 RIP: 40d155	 Bytes: 11
  %loadMem_40d155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d155 = call %struct.Memory* @routine_movl__0x2__0x866540___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d155)
  store %struct.Memory* %call_40d155, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40d160	 Bytes: 4
  %loadMem_40d160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d160 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d160)
  store %struct.Memory* %call_40d160, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rdx,4), %ecx	 RIP: 40d164	 Bytes: 7
  %loadMem_40d164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d164 = call %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d164)
  store %struct.Memory* %call_40d164, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40d16b	 Bytes: 3
  %loadMem_40d16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d16b = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d16b)
  store %struct.Memory* %call_40d16b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rdx,4)	 RIP: 40d16e	 Bytes: 7
  %loadMem_40d16e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d16e = call %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d16e)
  store %struct.Memory* %call_40d16e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40d175	 Bytes: 4
  %loadMem_40d175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d175 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d175)
  store %struct.Memory* %call_40d175, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rdx,4), %ecx	 RIP: 40d179	 Bytes: 7
  %loadMem_40d179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d179 = call %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d179)
  store %struct.Memory* %call_40d179, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40d180	 Bytes: 3
  %loadMem_40d180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d180 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d180)
  store %struct.Memory* %call_40d180, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rdx,4)	 RIP: 40d183	 Bytes: 7
  %loadMem_40d183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d183 = call %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d183)
  store %struct.Memory* %call_40d183, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %ecx	 RIP: 40d18a	 Bytes: 7
  %loadMem_40d18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d18a = call %struct.Memory* @routine_movl_0x8661bc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d18a)
  store %struct.Memory* %call_40d18a, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %ecx	 RIP: 40d191	 Bytes: 3
  %loadMem_40d191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d191 = call %struct.Memory* @routine_xorl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d191)
  store %struct.Memory* %call_40d191, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661bc	 RIP: 40d194	 Bytes: 7
  %loadMem_40d194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d194 = call %struct.Memory* @routine_movl__ecx__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d194)
  store %struct.Memory* %call_40d194, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40d19b	 Bytes: 4
  %loadMem_40d19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d19b = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d19b)
  store %struct.Memory* %call_40d19b, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0f00(,%rdx,4), %ecx	 RIP: 40d19f	 Bytes: 7
  %loadMem_40d19f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d19f = call %struct.Memory* @routine_movl_0x8a0f00___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d19f)
  store %struct.Memory* %call_40d19f, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40d1a6	 Bytes: 7
  %loadMem_40d1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1a6 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1a6)
  store %struct.Memory* %call_40d1a6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40d1ad	 Bytes: 7
  %loadMem_40d1ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1ad = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1ad)
  store %struct.Memory* %call_40d1ad, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40d1b4	 Bytes: 4
  %loadMem_40d1b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1b4 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1b4)
  store %struct.Memory* %call_40d1b4, %struct.Memory** %MEMORY

  ; Code: imulq $0x240, %rdx, %rdx	 RIP: 40d1b8	 Bytes: 7
  %loadMem_40d1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1b8 = call %struct.Memory* @routine_imulq__0x240___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1b8)
  store %struct.Memory* %call_40d1b8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40d1bf	 Bytes: 3
  %loadMem_40d1bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1bf = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1bf)
  store %struct.Memory* %call_40d1bf, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40d1c2	 Bytes: 4
  %loadMem_40d1c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1c2 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1c2)
  store %struct.Memory* %call_40d1c2, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40d1c6	 Bytes: 3
  %loadMem_40d1c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1c6 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1c6)
  store %struct.Memory* %call_40d1c6, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40d1c9	 Bytes: 7
  %loadMem_40d1c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1c9 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1c9)
  store %struct.Memory* %call_40d1c9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40d1d0	 Bytes: 7
  %loadMem_40d1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1d0 = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1d0)
  store %struct.Memory* %call_40d1d0, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rax	 RIP: 40d1d7	 Bytes: 4
  %loadMem_40d1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1d7 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1d7)
  store %struct.Memory* %call_40d1d7, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %ecx	 RIP: 40d1db	 Bytes: 7
  %loadMem_40d1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1db = call %struct.Memory* @routine_movl_0x62dab0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1db)
  store %struct.Memory* %call_40d1db, %struct.Memory** %MEMORY

  ; Code: movl 0x8661c0, %esi	 RIP: 40d1e2	 Bytes: 7
  %loadMem_40d1e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1e2 = call %struct.Memory* @routine_movl_0x8661c0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1e2)
  store %struct.Memory* %call_40d1e2, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %esi	 RIP: 40d1e9	 Bytes: 2
  %loadMem_40d1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1e9 = call %struct.Memory* @routine_subl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1e9)
  store %struct.Memory* %call_40d1e9, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8661c0	 RIP: 40d1eb	 Bytes: 7
  %loadMem_40d1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1eb = call %struct.Memory* @routine_movl__esi__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1eb)
  store %struct.Memory* %call_40d1eb, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab8, %ecx	 RIP: 40d1f2	 Bytes: 7
  %loadMem_40d1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1f2 = call %struct.Memory* @routine_movl_0x62dab8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1f2)
  store %struct.Memory* %call_40d1f2, %struct.Memory** %MEMORY

  ; Code: addl 0x8661c0, %ecx	 RIP: 40d1f9	 Bytes: 7
  %loadMem_40d1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d1f9 = call %struct.Memory* @routine_addl_0x8661c0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d1f9)
  store %struct.Memory* %call_40d1f9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661c0	 RIP: 40d200	 Bytes: 7
  %loadMem_40d200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d200 = call %struct.Memory* @routine_movl__ecx__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d200)
  store %struct.Memory* %call_40d200, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d604	 RIP: 40d207	 Bytes: 5
  %loadMem_40d207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d207 = call %struct.Memory* @routine_jmpq_.L_40d604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d207, i64 1021, i64 5)
  store %struct.Memory* %call_40d207, %struct.Memory** %MEMORY

  br label %block_.L_40d604

  ; Code: .L_40d20c:	 RIP: 40d20c	 Bytes: 0
block_.L_40d20c:

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40d20c	 Bytes: 4
  %loadMem_40d20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d20c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d20c)
  store %struct.Memory* %call_40d20c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, 0x866540(,%rax,4)	 RIP: 40d210	 Bytes: 8
  %loadMem_40d210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d210 = call %struct.Memory* @routine_cmpl__0x5__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d210)
  store %struct.Memory* %call_40d210, %struct.Memory** %MEMORY

  ; Code: jne .L_40d40c	 RIP: 40d218	 Bytes: 6
  %loadMem_40d218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d218 = call %struct.Memory* @routine_jne_.L_40d40c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d218, i8* %BRANCH_TAKEN, i64 500, i64 6, i64 6)
  store %struct.Memory* %call_40d218, %struct.Memory** %MEMORY

  %loadBr_40d218 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d218 = icmp eq i8 %loadBr_40d218, 1
  br i1 %cmpBr_40d218, label %block_.L_40d40c, label %block_40d21e

block_40d21e:
  ; Code: movl -0x14(%rbp), %eax	 RIP: 40d21e	 Bytes: 3
  %loadMem_40d21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d21e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d21e)
  store %struct.Memory* %call_40d21e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x86bd7c	 RIP: 40d221	 Bytes: 7
  %loadMem_40d221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d221 = call %struct.Memory* @routine_movl__eax__0x86bd7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d221)
  store %struct.Memory* %call_40d221, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40d228	 Bytes: 3
  %loadMem_40d228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d228 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d228)
  store %struct.Memory* %call_40d228, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40d22b	 Bytes: 4
  %loadMem_40d22b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d22b = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d22b)
  store %struct.Memory* %call_40d22b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x866540(,%rcx,4)	 RIP: 40d22f	 Bytes: 7
  %loadMem_40d22f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d22f = call %struct.Memory* @routine_movl__eax__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d22f)
  store %struct.Memory* %call_40d22f, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40d236	 Bytes: 4
  %loadMem_40d236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d236 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d236)
  store %struct.Memory* %call_40d236, %struct.Memory** %MEMORY

  ; Code: movl $0x5, 0x866540(,%rcx,4)	 RIP: 40d23a	 Bytes: 11
  %loadMem_40d23a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d23a = call %struct.Memory* @routine_movl__0x5__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d23a)
  store %struct.Memory* %call_40d23a, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40d245	 Bytes: 4
  %loadMem_40d245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d245 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d245)
  store %struct.Memory* %call_40d245, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rcx,4), %eax	 RIP: 40d249	 Bytes: 7
  %loadMem_40d249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d249 = call %struct.Memory* @routine_movl_0x8823b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d249)
  store %struct.Memory* %call_40d249, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 40d250	 Bytes: 3
  %loadMem_40d250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d250 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d250)
  store %struct.Memory* %call_40d250, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8823b0(,%rcx,4)	 RIP: 40d253	 Bytes: 7
  %loadMem_40d253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d253 = call %struct.Memory* @routine_movl__eax__0x8823b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d253)
  store %struct.Memory* %call_40d253, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40d25a	 Bytes: 4
  %loadMem_40d25a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d25a = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d25a)
  store %struct.Memory* %call_40d25a, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rcx,4), %eax	 RIP: 40d25e	 Bytes: 7
  %loadMem_40d25e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d25e = call %struct.Memory* @routine_movl_0x8823b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d25e)
  store %struct.Memory* %call_40d25e, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 40d265	 Bytes: 3
  %loadMem_40d265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d265 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d265)
  store %struct.Memory* %call_40d265, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8823b0(,%rcx,4)	 RIP: 40d268	 Bytes: 7
  %loadMem_40d268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d268 = call %struct.Memory* @routine_movl__eax__0x8823b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d268)
  store %struct.Memory* %call_40d268, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %eax	 RIP: 40d26f	 Bytes: 7
  %loadMem_40d26f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d26f = call %struct.Memory* @routine_movl_0x8661bc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d26f)
  store %struct.Memory* %call_40d26f, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %eax	 RIP: 40d276	 Bytes: 3
  %loadMem_40d276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d276 = call %struct.Memory* @routine_xorl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d276)
  store %struct.Memory* %call_40d276, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8661bc	 RIP: 40d279	 Bytes: 7
  %loadMem_40d279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d279 = call %struct.Memory* @routine_movl__eax__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d279)
  store %struct.Memory* %call_40d279, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40d280	 Bytes: 4
  %loadMem_40d280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d280 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d280)
  store %struct.Memory* %call_40d280, %struct.Memory** %MEMORY

  ; Code: movl 0x8a15c0(,%rcx,4), %eax	 RIP: 40d284	 Bytes: 7
  %loadMem_40d284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d284 = call %struct.Memory* @routine_movl_0x8a15c0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d284)
  store %struct.Memory* %call_40d284, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40d28b	 Bytes: 7
  %loadMem_40d28b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d28b = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d28b)
  store %struct.Memory* %call_40d28b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40d292	 Bytes: 7
  %loadMem_40d292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d292 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d292)
  store %struct.Memory* %call_40d292, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40d299	 Bytes: 4
  %loadMem_40d299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d299 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d299)
  store %struct.Memory* %call_40d299, %struct.Memory** %MEMORY

  ; Code: movl 0x8a15c0(,%rcx,4), %eax	 RIP: 40d29d	 Bytes: 7
  %loadMem_40d29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d29d = call %struct.Memory* @routine_movl_0x8a15c0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d29d)
  store %struct.Memory* %call_40d29d, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40d2a4	 Bytes: 7
  %loadMem_40d2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d2a4 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d2a4)
  store %struct.Memory* %call_40d2a4, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40d2ab	 Bytes: 7
  %loadMem_40d2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d2ab = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d2ab)
  store %struct.Memory* %call_40d2ab, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x24(%rbp)	 RIP: 40d2b2	 Bytes: 4
  %loadMem_40d2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d2b2 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d2b2)
  store %struct.Memory* %call_40d2b2, %struct.Memory** %MEMORY

  ; Code: jne .L_40d35a	 RIP: 40d2b6	 Bytes: 6
  %loadMem_40d2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d2b6 = call %struct.Memory* @routine_jne_.L_40d35a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d2b6, i8* %BRANCH_TAKEN, i64 164, i64 6, i64 6)
  store %struct.Memory* %call_40d2b6, %struct.Memory** %MEMORY

  %loadBr_40d2b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d2b6 = icmp eq i8 %loadBr_40d2b6, 1
  br i1 %cmpBr_40d2b6, label %block_.L_40d35a, label %block_40d2bc

block_40d2bc:
  ; Code: movl $0x7, 0x8665c4	 RIP: 40d2bc	 Bytes: 11
  %loadMem_40d2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d2bc = call %struct.Memory* @routine_movl__0x7__0x8665c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d2bc)
  store %struct.Memory* %call_40d2bc, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x8665bc	 RIP: 40d2c7	 Bytes: 11
  %loadMem_40d2c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d2c7 = call %struct.Memory* @routine_movl__0xd__0x8665bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d2c7)
  store %struct.Memory* %call_40d2c7, %struct.Memory** %MEMORY

  ; Code: movl 0x882434, %eax	 RIP: 40d2d2	 Bytes: 7
  %loadMem_40d2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d2d2 = call %struct.Memory* @routine_movl_0x882434___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d2d2)
  store %struct.Memory* %call_40d2d2, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 40d2d9	 Bytes: 3
  %loadMem_40d2d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d2d9 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d2d9)
  store %struct.Memory* %call_40d2d9, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x882434	 RIP: 40d2dc	 Bytes: 7
  %loadMem_40d2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d2dc = call %struct.Memory* @routine_movl__eax__0x882434(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d2dc)
  store %struct.Memory* %call_40d2dc, %struct.Memory** %MEMORY

  ; Code: movl 0x88242c, %eax	 RIP: 40d2e3	 Bytes: 7
  %loadMem_40d2e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d2e3 = call %struct.Memory* @routine_movl_0x88242c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d2e3)
  store %struct.Memory* %call_40d2e3, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 40d2ea	 Bytes: 3
  %loadMem_40d2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d2ea = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d2ea)
  store %struct.Memory* %call_40d2ea, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x88242c	 RIP: 40d2ed	 Bytes: 7
  %loadMem_40d2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d2ed = call %struct.Memory* @routine_movl__eax__0x88242c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d2ed)
  store %struct.Memory* %call_40d2ed, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62e4fc	 RIP: 40d2f4	 Bytes: 11
  %loadMem_40d2f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d2f4 = call %struct.Memory* @routine_movl__0x0__0x62e4fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d2f4)
  store %struct.Memory* %call_40d2f4, %struct.Memory** %MEMORY

  ; Code: movl 0x86636c, %eax	 RIP: 40d2ff	 Bytes: 7
  %loadMem_40d2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d2ff = call %struct.Memory* @routine_movl_0x86636c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d2ff)
  store %struct.Memory* %call_40d2ff, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x866374	 RIP: 40d306	 Bytes: 7
  %loadMem_40d306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d306 = call %struct.Memory* @routine_movl__eax__0x866374(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d306)
  store %struct.Memory* %call_40d306, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86636c	 RIP: 40d30d	 Bytes: 11
  %loadMem_40d30d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d30d = call %struct.Memory* @routine_movl__0x0__0x86636c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d30d)
  store %struct.Memory* %call_40d30d, %struct.Memory** %MEMORY

  ; Code: movslq 0x866374, %rcx	 RIP: 40d318	 Bytes: 8
  %loadMem_40d318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d318 = call %struct.Memory* @routine_movslq_0x866374___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d318)
  store %struct.Memory* %call_40d318, %struct.Memory** %MEMORY

  ; Code: movl $0x21, 0x85f2f0(,%rcx,4)	 RIP: 40d320	 Bytes: 11
  %loadMem_40d320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d320 = call %struct.Memory* @routine_movl__0x21__0x85f2f0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d320)
  store %struct.Memory* %call_40d320, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1ac4, %eax	 RIP: 40d32b	 Bytes: 7
  %loadMem_40d32b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d32b = call %struct.Memory* @routine_movl_0x8a1ac4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d32b)
  store %struct.Memory* %call_40d32b, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40d332	 Bytes: 7
  %loadMem_40d332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d332 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d332)
  store %struct.Memory* %call_40d332, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40d339	 Bytes: 7
  %loadMem_40d339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d339 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d339)
  store %struct.Memory* %call_40d339, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1abc, %eax	 RIP: 40d340	 Bytes: 7
  %loadMem_40d340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d340 = call %struct.Memory* @routine_movl_0x8a1abc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d340)
  store %struct.Memory* %call_40d340, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40d347	 Bytes: 7
  %loadMem_40d347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d347 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d347)
  store %struct.Memory* %call_40d347, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40d34e	 Bytes: 7
  %loadMem_40d34e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d34e = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d34e)
  store %struct.Memory* %call_40d34e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d604	 RIP: 40d355	 Bytes: 5
  %loadMem_40d355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d355 = call %struct.Memory* @routine_jmpq_.L_40d604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d355, i64 687, i64 5)
  store %struct.Memory* %call_40d355, %struct.Memory** %MEMORY

  br label %block_.L_40d604

  ; Code: .L_40d35a:	 RIP: 40d35a	 Bytes: 0
block_.L_40d35a:

  ; Code: cmpl $0x2, -0x24(%rbp)	 RIP: 40d35a	 Bytes: 4
  %loadMem_40d35a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d35a = call %struct.Memory* @routine_cmpl__0x2__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d35a)
  store %struct.Memory* %call_40d35a, %struct.Memory** %MEMORY

  ; Code: jne .L_40d402	 RIP: 40d35e	 Bytes: 6
  %loadMem_40d35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d35e = call %struct.Memory* @routine_jne_.L_40d402(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d35e, i8* %BRANCH_TAKEN, i64 164, i64 6, i64 6)
  store %struct.Memory* %call_40d35e, %struct.Memory** %MEMORY

  %loadBr_40d35e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d35e = icmp eq i8 %loadBr_40d35e, 1
  br i1 %cmpBr_40d35e, label %block_.L_40d402, label %block_40d364

block_40d364:
  ; Code: movl $0x7, 0x8665a8	 RIP: 40d364	 Bytes: 11
  %loadMem_40d364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d364 = call %struct.Memory* @routine_movl__0x7__0x8665a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d364)
  store %struct.Memory* %call_40d364, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x8665b4	 RIP: 40d36f	 Bytes: 11
  %loadMem_40d36f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d36f = call %struct.Memory* @routine_movl__0xd__0x8665b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d36f)
  store %struct.Memory* %call_40d36f, %struct.Memory** %MEMORY

  ; Code: movl 0x882418, %eax	 RIP: 40d37a	 Bytes: 7
  %loadMem_40d37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d37a = call %struct.Memory* @routine_movl_0x882418___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d37a)
  store %struct.Memory* %call_40d37a, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 40d381	 Bytes: 3
  %loadMem_40d381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d381 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d381)
  store %struct.Memory* %call_40d381, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x882418	 RIP: 40d384	 Bytes: 7
  %loadMem_40d384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d384 = call %struct.Memory* @routine_movl__eax__0x882418(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d384)
  store %struct.Memory* %call_40d384, %struct.Memory** %MEMORY

  ; Code: movl 0x882424, %eax	 RIP: 40d38b	 Bytes: 7
  %loadMem_40d38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d38b = call %struct.Memory* @routine_movl_0x882424___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d38b)
  store %struct.Memory* %call_40d38b, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 40d392	 Bytes: 3
  %loadMem_40d392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d392 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d392)
  store %struct.Memory* %call_40d392, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x882424	 RIP: 40d395	 Bytes: 7
  %loadMem_40d395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d395 = call %struct.Memory* @routine_movl__eax__0x882424(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d395)
  store %struct.Memory* %call_40d395, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62e4fc	 RIP: 40d39c	 Bytes: 11
  %loadMem_40d39c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d39c = call %struct.Memory* @routine_movl__0x0__0x62e4fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d39c)
  store %struct.Memory* %call_40d39c, %struct.Memory** %MEMORY

  ; Code: movl 0x866364, %eax	 RIP: 40d3a7	 Bytes: 7
  %loadMem_40d3a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d3a7 = call %struct.Memory* @routine_movl_0x866364___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d3a7)
  store %struct.Memory* %call_40d3a7, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x866358	 RIP: 40d3ae	 Bytes: 7
  %loadMem_40d3ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d3ae = call %struct.Memory* @routine_movl__eax__0x866358(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d3ae)
  store %struct.Memory* %call_40d3ae, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x866364	 RIP: 40d3b5	 Bytes: 11
  %loadMem_40d3b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d3b5 = call %struct.Memory* @routine_movl__0x0__0x866364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d3b5)
  store %struct.Memory* %call_40d3b5, %struct.Memory** %MEMORY

  ; Code: movslq 0x866358, %rcx	 RIP: 40d3c0	 Bytes: 8
  %loadMem_40d3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d3c0 = call %struct.Memory* @routine_movslq_0x866358___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d3c0)
  store %struct.Memory* %call_40d3c0, %struct.Memory** %MEMORY

  ; Code: movl $0x1a, 0x85f2f0(,%rcx,4)	 RIP: 40d3c8	 Bytes: 11
  %loadMem_40d3c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d3c8 = call %struct.Memory* @routine_movl__0x1a__0x85f2f0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d3c8)
  store %struct.Memory* %call_40d3c8, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1ab4, %eax	 RIP: 40d3d3	 Bytes: 7
  %loadMem_40d3d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d3d3 = call %struct.Memory* @routine_movl_0x8a1ab4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d3d3)
  store %struct.Memory* %call_40d3d3, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40d3da	 Bytes: 7
  %loadMem_40d3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d3da = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d3da)
  store %struct.Memory* %call_40d3da, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40d3e1	 Bytes: 7
  %loadMem_40d3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d3e1 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d3e1)
  store %struct.Memory* %call_40d3e1, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1aa8, %eax	 RIP: 40d3e8	 Bytes: 7
  %loadMem_40d3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d3e8 = call %struct.Memory* @routine_movl_0x8a1aa8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d3e8)
  store %struct.Memory* %call_40d3e8, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40d3ef	 Bytes: 7
  %loadMem_40d3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d3ef = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d3ef)
  store %struct.Memory* %call_40d3ef, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40d3f6	 Bytes: 7
  %loadMem_40d3f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d3f6 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d3f6)
  store %struct.Memory* %call_40d3f6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d604	 RIP: 40d3fd	 Bytes: 5
  %loadMem_40d3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d3fd = call %struct.Memory* @routine_jmpq_.L_40d604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d3fd, i64 519, i64 5)
  store %struct.Memory* %call_40d3fd, %struct.Memory** %MEMORY

  br label %block_.L_40d604

  ; Code: .L_40d402:	 RIP: 40d402	 Bytes: 0
block_.L_40d402:

  ; Code: jmpq .L_40d407	 RIP: 40d402	 Bytes: 5
  %loadMem_40d402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d402 = call %struct.Memory* @routine_jmpq_.L_40d407(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d402, i64 5, i64 5)
  store %struct.Memory* %call_40d402, %struct.Memory** %MEMORY

  br label %block_.L_40d407

  ; Code: .L_40d407:	 RIP: 40d407	 Bytes: 0
block_.L_40d407:

  ; Code: jmpq .L_40d604	 RIP: 40d407	 Bytes: 5
  %loadMem_40d407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d407 = call %struct.Memory* @routine_jmpq_.L_40d604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d407, i64 509, i64 5)
  store %struct.Memory* %call_40d407, %struct.Memory** %MEMORY

  br label %block_.L_40d604

  ; Code: .L_40d40c:	 RIP: 40d40c	 Bytes: 0
block_.L_40d40c:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 40d40c	 Bytes: 3
  %loadMem_40d40c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d40c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d40c)
  store %struct.Memory* %call_40d40c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8661d0	 RIP: 40d40f	 Bytes: 7
  %loadMem_40d40f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d40f = call %struct.Memory* @routine_movl__eax__0x8661d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d40f)
  store %struct.Memory* %call_40d40f, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40d416	 Bytes: 3
  %loadMem_40d416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d416 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d416)
  store %struct.Memory* %call_40d416, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40d419	 Bytes: 4
  %loadMem_40d419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d419 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d419)
  store %struct.Memory* %call_40d419, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x866540(,%rcx,4)	 RIP: 40d41d	 Bytes: 7
  %loadMem_40d41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d41d = call %struct.Memory* @routine_movl__eax__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d41d)
  store %struct.Memory* %call_40d41d, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40d424	 Bytes: 4
  %loadMem_40d424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d424 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d424)
  store %struct.Memory* %call_40d424, %struct.Memory** %MEMORY

  ; Code: movl $0x6, 0x866540(,%rcx,4)	 RIP: 40d428	 Bytes: 11
  %loadMem_40d428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d428 = call %struct.Memory* @routine_movl__0x6__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d428)
  store %struct.Memory* %call_40d428, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40d433	 Bytes: 4
  %loadMem_40d433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d433 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d433)
  store %struct.Memory* %call_40d433, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rcx,4), %eax	 RIP: 40d437	 Bytes: 7
  %loadMem_40d437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d437 = call %struct.Memory* @routine_movl_0x8823b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d437)
  store %struct.Memory* %call_40d437, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 40d43e	 Bytes: 3
  %loadMem_40d43e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d43e = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d43e)
  store %struct.Memory* %call_40d43e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8823b0(,%rcx,4)	 RIP: 40d441	 Bytes: 7
  %loadMem_40d441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d441 = call %struct.Memory* @routine_movl__eax__0x8823b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d441)
  store %struct.Memory* %call_40d441, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40d448	 Bytes: 4
  %loadMem_40d448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d448 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d448)
  store %struct.Memory* %call_40d448, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rcx,4), %eax	 RIP: 40d44c	 Bytes: 7
  %loadMem_40d44c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d44c = call %struct.Memory* @routine_movl_0x8823b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d44c)
  store %struct.Memory* %call_40d44c, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 40d453	 Bytes: 3
  %loadMem_40d453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d453 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d453)
  store %struct.Memory* %call_40d453, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8823b0(,%rcx,4)	 RIP: 40d456	 Bytes: 7
  %loadMem_40d456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d456 = call %struct.Memory* @routine_movl__eax__0x8823b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d456)
  store %struct.Memory* %call_40d456, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %eax	 RIP: 40d45d	 Bytes: 7
  %loadMem_40d45d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d45d = call %struct.Memory* @routine_movl_0x8661bc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d45d)
  store %struct.Memory* %call_40d45d, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %eax	 RIP: 40d464	 Bytes: 3
  %loadMem_40d464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d464 = call %struct.Memory* @routine_xorl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d464)
  store %struct.Memory* %call_40d464, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8661bc	 RIP: 40d467	 Bytes: 7
  %loadMem_40d467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d467 = call %struct.Memory* @routine_movl__eax__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d467)
  store %struct.Memory* %call_40d467, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40d46e	 Bytes: 4
  %loadMem_40d46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d46e = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d46e)
  store %struct.Memory* %call_40d46e, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1800(,%rcx,4), %eax	 RIP: 40d472	 Bytes: 7
  %loadMem_40d472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d472 = call %struct.Memory* @routine_movl_0x8a1800___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d472)
  store %struct.Memory* %call_40d472, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40d479	 Bytes: 7
  %loadMem_40d479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d479 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d479)
  store %struct.Memory* %call_40d479, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40d480	 Bytes: 7
  %loadMem_40d480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d480 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d480)
  store %struct.Memory* %call_40d480, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40d487	 Bytes: 4
  %loadMem_40d487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d487 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d487)
  store %struct.Memory* %call_40d487, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1800(,%rcx,4), %eax	 RIP: 40d48b	 Bytes: 7
  %loadMem_40d48b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d48b = call %struct.Memory* @routine_movl_0x8a1800___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d48b)
  store %struct.Memory* %call_40d48b, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40d492	 Bytes: 7
  %loadMem_40d492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d492 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d492)
  store %struct.Memory* %call_40d492, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40d499	 Bytes: 7
  %loadMem_40d499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d499 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d499)
  store %struct.Memory* %call_40d499, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, -0x24(%rbp)	 RIP: 40d4a0	 Bytes: 4
  %loadMem_40d4a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d4a0 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d4a0)
  store %struct.Memory* %call_40d4a0, %struct.Memory** %MEMORY

  ; Code: jne .L_40d548	 RIP: 40d4a4	 Bytes: 6
  %loadMem_40d4a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d4a4 = call %struct.Memory* @routine_jne_.L_40d548(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d4a4, i8* %BRANCH_TAKEN, i64 164, i64 6, i64 6)
  store %struct.Memory* %call_40d4a4, %struct.Memory** %MEMORY

  %loadBr_40d4a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d4a4 = icmp eq i8 %loadBr_40d4a4, 1
  br i1 %cmpBr_40d4a4, label %block_.L_40d548, label %block_40d4aa

block_40d4aa:
  ; Code: movl $0x8, 0x866714	 RIP: 40d4aa	 Bytes: 11
  %loadMem_40d4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d4aa = call %struct.Memory* @routine_movl__0x8__0x866714(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d4aa)
  store %struct.Memory* %call_40d4aa, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x86670c	 RIP: 40d4b5	 Bytes: 11
  %loadMem_40d4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d4b5 = call %struct.Memory* @routine_movl__0xd__0x86670c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d4b5)
  store %struct.Memory* %call_40d4b5, %struct.Memory** %MEMORY

  ; Code: movl 0x882584, %eax	 RIP: 40d4c0	 Bytes: 7
  %loadMem_40d4c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d4c0 = call %struct.Memory* @routine_movl_0x882584___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d4c0)
  store %struct.Memory* %call_40d4c0, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 40d4c7	 Bytes: 3
  %loadMem_40d4c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d4c7 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d4c7)
  store %struct.Memory* %call_40d4c7, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x882584	 RIP: 40d4ca	 Bytes: 7
  %loadMem_40d4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d4ca = call %struct.Memory* @routine_movl__eax__0x882584(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d4ca)
  store %struct.Memory* %call_40d4ca, %struct.Memory** %MEMORY

  ; Code: movl 0x88257c, %eax	 RIP: 40d4d1	 Bytes: 7
  %loadMem_40d4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d4d1 = call %struct.Memory* @routine_movl_0x88257c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d4d1)
  store %struct.Memory* %call_40d4d1, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 40d4d8	 Bytes: 3
  %loadMem_40d4d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d4d8 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d4d8)
  store %struct.Memory* %call_40d4d8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x88257c	 RIP: 40d4db	 Bytes: 7
  %loadMem_40d4db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d4db = call %struct.Memory* @routine_movl__eax__0x88257c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d4db)
  store %struct.Memory* %call_40d4db, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62e500	 RIP: 40d4e2	 Bytes: 11
  %loadMem_40d4e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d4e2 = call %struct.Memory* @routine_movl__0x0__0x62e500(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d4e2)
  store %struct.Memory* %call_40d4e2, %struct.Memory** %MEMORY

  ; Code: movl 0x8664bc, %eax	 RIP: 40d4ed	 Bytes: 7
  %loadMem_40d4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d4ed = call %struct.Memory* @routine_movl_0x8664bc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d4ed)
  store %struct.Memory* %call_40d4ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8664c4	 RIP: 40d4f4	 Bytes: 7
  %loadMem_40d4f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d4f4 = call %struct.Memory* @routine_movl__eax__0x8664c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d4f4)
  store %struct.Memory* %call_40d4f4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8664bc	 RIP: 40d4fb	 Bytes: 11
  %loadMem_40d4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d4fb = call %struct.Memory* @routine_movl__0x0__0x8664bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d4fb)
  store %struct.Memory* %call_40d4fb, %struct.Memory** %MEMORY

  ; Code: movslq 0x8664c4, %rcx	 RIP: 40d506	 Bytes: 8
  %loadMem_40d506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d506 = call %struct.Memory* @routine_movslq_0x8664c4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d506)
  store %struct.Memory* %call_40d506, %struct.Memory** %MEMORY

  ; Code: movl $0x75, 0x85f2f0(,%rcx,4)	 RIP: 40d50e	 Bytes: 11
  %loadMem_40d50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d50e = call %struct.Memory* @routine_movl__0x75__0x85f2f0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d50e)
  store %struct.Memory* %call_40d50e, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1e54, %eax	 RIP: 40d519	 Bytes: 7
  %loadMem_40d519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d519 = call %struct.Memory* @routine_movl_0x8a1e54___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d519)
  store %struct.Memory* %call_40d519, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40d520	 Bytes: 7
  %loadMem_40d520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d520 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d520)
  store %struct.Memory* %call_40d520, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40d527	 Bytes: 7
  %loadMem_40d527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d527 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d527)
  store %struct.Memory* %call_40d527, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1e4c, %eax	 RIP: 40d52e	 Bytes: 7
  %loadMem_40d52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d52e = call %struct.Memory* @routine_movl_0x8a1e4c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d52e)
  store %struct.Memory* %call_40d52e, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40d535	 Bytes: 7
  %loadMem_40d535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d535 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d535)
  store %struct.Memory* %call_40d535, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40d53c	 Bytes: 7
  %loadMem_40d53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d53c = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d53c)
  store %struct.Memory* %call_40d53c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d604	 RIP: 40d543	 Bytes: 5
  %loadMem_40d543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d543 = call %struct.Memory* @routine_jmpq_.L_40d604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d543, i64 193, i64 5)
  store %struct.Memory* %call_40d543, %struct.Memory** %MEMORY

  br label %block_.L_40d604

  ; Code: .L_40d548:	 RIP: 40d548	 Bytes: 0
block_.L_40d548:

  ; Code: cmpl $0x4, -0x24(%rbp)	 RIP: 40d548	 Bytes: 4
  %loadMem_40d548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d548 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d548)
  store %struct.Memory* %call_40d548, %struct.Memory** %MEMORY

  ; Code: jne .L_40d5f0	 RIP: 40d54c	 Bytes: 6
  %loadMem_40d54c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d54c = call %struct.Memory* @routine_jne_.L_40d5f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d54c, i8* %BRANCH_TAKEN, i64 164, i64 6, i64 6)
  store %struct.Memory* %call_40d54c, %struct.Memory** %MEMORY

  %loadBr_40d54c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40d54c = icmp eq i8 %loadBr_40d54c, 1
  br i1 %cmpBr_40d54c, label %block_.L_40d5f0, label %block_40d552

block_40d552:
  ; Code: movl $0x8, 0x8666f8	 RIP: 40d552	 Bytes: 11
  %loadMem_40d552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d552 = call %struct.Memory* @routine_movl__0x8__0x8666f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d552)
  store %struct.Memory* %call_40d552, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x866704	 RIP: 40d55d	 Bytes: 11
  %loadMem_40d55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d55d = call %struct.Memory* @routine_movl__0xd__0x866704(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d55d)
  store %struct.Memory* %call_40d55d, %struct.Memory** %MEMORY

  ; Code: movl 0x882568, %eax	 RIP: 40d568	 Bytes: 7
  %loadMem_40d568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d568 = call %struct.Memory* @routine_movl_0x882568___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d568)
  store %struct.Memory* %call_40d568, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 40d56f	 Bytes: 3
  %loadMem_40d56f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d56f = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d56f)
  store %struct.Memory* %call_40d56f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x882568	 RIP: 40d572	 Bytes: 7
  %loadMem_40d572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d572 = call %struct.Memory* @routine_movl__eax__0x882568(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d572)
  store %struct.Memory* %call_40d572, %struct.Memory** %MEMORY

  ; Code: movl 0x882574, %eax	 RIP: 40d579	 Bytes: 7
  %loadMem_40d579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d579 = call %struct.Memory* @routine_movl_0x882574___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d579)
  store %struct.Memory* %call_40d579, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 40d580	 Bytes: 3
  %loadMem_40d580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d580 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d580)
  store %struct.Memory* %call_40d580, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x882574	 RIP: 40d583	 Bytes: 7
  %loadMem_40d583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d583 = call %struct.Memory* @routine_movl__eax__0x882574(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d583)
  store %struct.Memory* %call_40d583, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62e500	 RIP: 40d58a	 Bytes: 11
  %loadMem_40d58a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d58a = call %struct.Memory* @routine_movl__0x0__0x62e500(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d58a)
  store %struct.Memory* %call_40d58a, %struct.Memory** %MEMORY

  ; Code: movl 0x8664b4, %eax	 RIP: 40d595	 Bytes: 7
  %loadMem_40d595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d595 = call %struct.Memory* @routine_movl_0x8664b4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d595)
  store %struct.Memory* %call_40d595, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8664a8	 RIP: 40d59c	 Bytes: 7
  %loadMem_40d59c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d59c = call %struct.Memory* @routine_movl__eax__0x8664a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d59c)
  store %struct.Memory* %call_40d59c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8664b4	 RIP: 40d5a3	 Bytes: 11
  %loadMem_40d5a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d5a3 = call %struct.Memory* @routine_movl__0x0__0x8664b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d5a3)
  store %struct.Memory* %call_40d5a3, %struct.Memory** %MEMORY

  ; Code: movslq 0x8664a8, %rcx	 RIP: 40d5ae	 Bytes: 8
  %loadMem_40d5ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d5ae = call %struct.Memory* @routine_movslq_0x8664a8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d5ae)
  store %struct.Memory* %call_40d5ae, %struct.Memory** %MEMORY

  ; Code: movl $0x6e, 0x85f2f0(,%rcx,4)	 RIP: 40d5b6	 Bytes: 11
  %loadMem_40d5b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d5b6 = call %struct.Memory* @routine_movl__0x6e__0x85f2f0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d5b6)
  store %struct.Memory* %call_40d5b6, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1e38, %eax	 RIP: 40d5c1	 Bytes: 7
  %loadMem_40d5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d5c1 = call %struct.Memory* @routine_movl_0x8a1e38___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d5c1)
  store %struct.Memory* %call_40d5c1, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40d5c8	 Bytes: 7
  %loadMem_40d5c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d5c8 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d5c8)
  store %struct.Memory* %call_40d5c8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40d5cf	 Bytes: 7
  %loadMem_40d5cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d5cf = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d5cf)
  store %struct.Memory* %call_40d5cf, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1e44, %eax	 RIP: 40d5d6	 Bytes: 7
  %loadMem_40d5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d5d6 = call %struct.Memory* @routine_movl_0x8a1e44___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d5d6)
  store %struct.Memory* %call_40d5d6, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40d5dd	 Bytes: 7
  %loadMem_40d5dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d5dd = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d5dd)
  store %struct.Memory* %call_40d5dd, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40d5e4	 Bytes: 7
  %loadMem_40d5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d5e4 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d5e4)
  store %struct.Memory* %call_40d5e4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40d604	 RIP: 40d5eb	 Bytes: 5
  %loadMem_40d5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d5eb = call %struct.Memory* @routine_jmpq_.L_40d604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d5eb, i64 25, i64 5)
  store %struct.Memory* %call_40d5eb, %struct.Memory** %MEMORY

  br label %block_.L_40d604

  ; Code: .L_40d5f0:	 RIP: 40d5f0	 Bytes: 0
block_.L_40d5f0:

  ; Code: jmpq .L_40d5f5	 RIP: 40d5f0	 Bytes: 5
  %loadMem_40d5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d5f0 = call %struct.Memory* @routine_jmpq_.L_40d5f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d5f0, i64 5, i64 5)
  store %struct.Memory* %call_40d5f0, %struct.Memory** %MEMORY

  br label %block_.L_40d5f5

  ; Code: .L_40d5f5:	 RIP: 40d5f5	 Bytes: 0
block_.L_40d5f5:

  ; Code: jmpq .L_40d5fa	 RIP: 40d5f5	 Bytes: 5
  %loadMem_40d5f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d5f5 = call %struct.Memory* @routine_jmpq_.L_40d5fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d5f5, i64 5, i64 5)
  store %struct.Memory* %call_40d5f5, %struct.Memory** %MEMORY

  br label %block_.L_40d5fa

  ; Code: .L_40d5fa:	 RIP: 40d5fa	 Bytes: 0
block_.L_40d5fa:

  ; Code: jmpq .L_40d5ff	 RIP: 40d5fa	 Bytes: 5
  %loadMem_40d5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d5fa = call %struct.Memory* @routine_jmpq_.L_40d5ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d5fa, i64 5, i64 5)
  store %struct.Memory* %call_40d5fa, %struct.Memory** %MEMORY

  br label %block_.L_40d5ff

  ; Code: .L_40d5ff:	 RIP: 40d5ff	 Bytes: 0
block_.L_40d5ff:

  ; Code: jmpq .L_40d604	 RIP: 40d5ff	 Bytes: 5
  %loadMem_40d5ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d5ff = call %struct.Memory* @routine_jmpq_.L_40d604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d5ff, i64 5, i64 5)
  store %struct.Memory* %call_40d5ff, %struct.Memory** %MEMORY

  br label %block_.L_40d604

  ; Code: .L_40d604:	 RIP: 40d604	 Bytes: 0
block_.L_40d604:

  ; Code: addq $0x40, %rsp	 RIP: 40d604	 Bytes: 4
  %loadMem_40d604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d604 = call %struct.Memory* @routine_addq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d604)
  store %struct.Memory* %call_40d604, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 40d608	 Bytes: 1
  %loadMem_40d608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d608 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d608)
  store %struct.Memory* %call_40d608, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40d609	 Bytes: 1
  %loadMem_40d609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40d609 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40d609)
  store %struct.Memory* %call_40d609, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40d609
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

define %struct.Memory* @routine_movq__0x880b20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x880b20_type* @G__0x880b20 to i64))
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

define %struct.Memory* @routine_addq__rcx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x14__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x18___rdi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 24)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rdi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
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










define %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl_0x10__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_movl_0x886bc0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 -1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__esi__0x886bc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
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




define %struct.Memory* @routine_movl_0x8__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__0x881de4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x881de4_type* @G_0x881de4 to i64), i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__0x866790(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866790_type* @G_0x866790 to i64), i64 %10)
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jne_.L_40c977(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq__0x880b20___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x880b20_type* @G__0x880b20 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_0x8662f0___rsi_4____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807152
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__0x85f2f0___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8778480
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movslq_0x886bc0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rsi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x4__rdx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movslq_0x8662f0___rdx_4____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807152
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__edi__0x639120___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6525216
  %15 = load i32, i32* %EDI
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movl__0x0__0x8662f0___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807152
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_0x63ae48___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x63ae48_type* @G_0x63ae48 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addl__0xffffffff___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 -1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edi__0x63ae48(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x63ae48_type* @G_0x63ae48 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__0x8a0a80___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x8a0a80_type* @G__0x8a0a80 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x62dab0___r8_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6478512
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_0x8661c0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x8661c0_type* @G_0x8661c0 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_subl__eax___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__0x8661c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661c0_type* @G_0x8661c0 to i64), i64 %10)
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


define %struct.Memory* @routine_movl__eax__0x866540___r8_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %R8
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_imulq__0x240___r8___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 576)
  ret %struct.Memory* %12
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




define %struct.Memory* @routine_movl___rdx__r8_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = xor i32 %8, %6
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %9, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i32 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %9, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x633b40(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x8661bc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_xorl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x8661bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64), i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_40d604(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x8662f0___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 8807152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__edx__0x8662f0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807152
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_addq__rcx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rsi____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}






define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_0x8662f0___rcx_4____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8807152
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__edx__0x85f2f0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8778480
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_0x8662f0___rax_4____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8807152
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__edx__0x639120___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6525216
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40cb14(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_subl__0xd___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 13)
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


define %struct.Memory* @routine_jne_.L_40ca2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40ca25(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40cb0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f154_type* @G_0x85f154 to i64), i64 1)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_je_.L_40ca46(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x85f154(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f154_type* @G_0x85f154 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_40cab8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x0__0x639120___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6525216
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_je_.L_40ca8c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.SwitchPromoted(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_xorl__edi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_cmovnel__ecx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.removeHolding(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40cab3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_callq_.SwitchColor(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_40cab8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x8a0a80___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x8a0a80_type* @G__0x8a0a80 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_imulq__0x240___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 576)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_xorl_0x633b40___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__0x633b40(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x62dab0___rax_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 6478512
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
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

define %struct.Memory* @routine_addl_0x8661c0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 ptrtoint( %G_0x8661c0_type* @G_0x8661c0 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__0x8661c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661c0_type* @G_0x8661c0 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x63ae48___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x63ae48_type* @G_0x63ae48 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__edx__0x63ae48(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x63ae48_type* @G_0x63ae48 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_40cb14(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x1__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_40cd2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_40cc9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 1)
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movl_0x8a0cc0___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 9047232
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__0xc___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 12)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl_0x8a0f00___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 9047808
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl__0xd__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 13)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movl__0x1__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_0x62dab8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x62dab8_type* @G_0x62dab8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addl_0x8661c0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 ptrtoint( %G_0x8661c0_type* @G_0x8661c0 to i64))
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movl_0x63ae48___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x63ae48_type* @G_0x63ae48 to i64))
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


define %struct.Memory* @routine_movl__ecx__0x63ae48(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x63ae48_type* @G_0x63ae48 to i64), i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl__0x2__0x866540___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 2)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 -1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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




















define %struct.Memory* @routine_movl_0x8661bc___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_xorl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__0x8661bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rax___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__rdx___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___r8____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__0xc___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 12)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__esi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__0x8662f0___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807152
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_movl__ecx__0x85f2f0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8778480
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movl__0x0__0x8662f0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8807152
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}




















define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}








define %struct.Memory* @routine_movl_0x8823b0___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__0x8823b0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




















define %struct.Memory* @routine_cmpl__0x2__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 2)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_40cf43(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_40ceb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1)
  ret %struct.Memory* %11
}




















define %struct.Memory* @routine_addl__0xc___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 12)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_movl__0x2__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 2)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_0x62dab4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x62dab4_type* @G_0x62dab4 to i64))
  ret %struct.Memory* %11
}






















define %struct.Memory* @routine_movl__0x1__0x866540___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}
















































define %struct.Memory* @routine_addl__0xc___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 12)
  ret %struct.Memory* %12
}














































































define %struct.Memory* @routine_cmpl__0x5__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 5)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_je_.L_40d038(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x6__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 6)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40d038(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_0x866540___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 8807744
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__edx__0x866540___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl_0x8823b0___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 8922032
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 -1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__0x8823b0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}










define %struct.Memory* @routine_movl_0x8661bc___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_xorl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__0x8661bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64), i64 %10)
  ret %struct.Memory* %13
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










define %struct.Memory* @routine_movl___rsi__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
}


























define %struct.Memory* @routine_je_.L_40d20c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__edx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_idivl__esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_je_.L_40d139(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl__ecx__0x866540___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}






























define %struct.Memory* @routine_movl_0x8a0cc0___rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 9047232
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x240___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 576)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x62dab0___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6478512
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_0x8661c0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x8661c0_type* @G_0x8661c0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl__ecx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__0x8661c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661c0_type* @G_0x8661c0 to i64), i64 %10)
  ret %struct.Memory* %13
}














































define %struct.Memory* @routine_movl_0x8a0f00___rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 9047808
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}










































define %struct.Memory* @routine_jne_.L_40d40c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__0x86bd7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd7c_type* @G_0x86bd7c to i64), i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl__eax__0x866540___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movl__0x5__0x866540___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 5)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movl_0x8823b0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
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


define %struct.Memory* @routine_movl__eax__0x8823b0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


















define %struct.Memory* @routine_movl_0x8a15c0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 9049536
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_cmpl__0x1__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40d35a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x7__0x8665c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8665c4_type* @G_0x8665c4 to i64), i64 7)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0xd__0x8665bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8665bc_type* @G_0x8665bc to i64), i64 13)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x882434___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x882434_type* @G_0x882434 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x882434(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x882434_type* @G_0x882434 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x88242c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x88242c_type* @G_0x88242c to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x88242c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x88242c_type* @G_0x88242c to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__0x62e4fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e4fc_type* @G_0x62e4fc to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x86636c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x86636c_type* @G_0x86636c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__0x866374(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866374_type* @G_0x866374 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__0x86636c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86636c_type* @G_0x86636c to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movslq_0x866374___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x866374_type* @G_0x866374 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x21__0x85f2f0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8778480
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 33)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_0x8a1ac4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1ac4_type* @G_0x8a1ac4 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x8a1abc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1abc_type* @G_0x8a1abc to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_cmpl__0x2__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40d402(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x7__0x8665a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8665a8_type* @G_0x8665a8 to i64), i64 7)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0xd__0x8665b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8665b4_type* @G_0x8665b4 to i64), i64 13)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x882418___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x882418_type* @G_0x882418 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x882418(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x882418_type* @G_0x882418 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x882424___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x882424_type* @G_0x882424 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x882424(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x882424_type* @G_0x882424 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x866364___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x866364_type* @G_0x866364 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__0x866358(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866358_type* @G_0x866358 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__0x866364(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866364_type* @G_0x866364 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movslq_0x866358___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x866358_type* @G_0x866358 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x1a__0x85f2f0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8778480
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 26)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_0x8a1ab4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1ab4_type* @G_0x8a1ab4 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x8a1aa8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1aa8_type* @G_0x8a1aa8 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jmpq_.L_40d407(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__0x8661d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661d0_type* @G_0x8661d0 to i64), i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movl__0x6__0x866540___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 6)
  ret %struct.Memory* %14
}


























define %struct.Memory* @routine_movl_0x8a1800___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 9050112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_cmpl__0x3__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40d548(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x8__0x866714(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866714_type* @G_0x866714 to i64), i64 8)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0xd__0x86670c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86670c_type* @G_0x86670c to i64), i64 13)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x882584___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x882584_type* @G_0x882584 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x882584(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x882584_type* @G_0x882584 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x88257c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x88257c_type* @G_0x88257c to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x88257c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x88257c_type* @G_0x88257c to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__0x62e500(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e500_type* @G_0x62e500 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x8664bc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8664bc_type* @G_0x8664bc to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__0x8664c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8664c4_type* @G_0x8664c4 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__0x8664bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8664bc_type* @G_0x8664bc to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movslq_0x8664c4___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x8664c4_type* @G_0x8664c4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x75__0x85f2f0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8778480
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 117)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_0x8a1e54___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1e54_type* @G_0x8a1e54 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x8a1e4c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1e4c_type* @G_0x8a1e4c to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_cmpl__0x4__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40d5f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x8__0x8666f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8666f8_type* @G_0x8666f8 to i64), i64 8)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0xd__0x866704(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866704_type* @G_0x866704 to i64), i64 13)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x882568___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x882568_type* @G_0x882568 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x882568(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x882568_type* @G_0x882568 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x882574___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x882574_type* @G_0x882574 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x882574(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x882574_type* @G_0x882574 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x8664b4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8664b4_type* @G_0x8664b4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__0x8664a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8664a8_type* @G_0x8664a8 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__0x8664b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8664b4_type* @G_0x8664b4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movslq_0x8664a8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x8664a8_type* @G_0x8664a8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x6e__0x85f2f0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8778480
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 110)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_0x8a1e38___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1e38_type* @G_0x8a1e38 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x8a1e44___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1e44_type* @G_0x8a1e44 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jmpq_.L_40d5f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40d5fa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40d5ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

