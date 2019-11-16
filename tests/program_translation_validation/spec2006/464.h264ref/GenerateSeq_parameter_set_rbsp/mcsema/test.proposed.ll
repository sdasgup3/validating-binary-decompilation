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

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4acbc0.u_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4acb00.u_1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_477e20.Scaling_List(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4ac9c0.se_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_477fa0.GenerateVUISequenceParameters(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4751a0.SODBtoRBSP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2411_type = type <{ [8 x i8] }>
@G__0x4c2411= global %G__0x4c2411_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c242b_type = type <{ [8 x i8] }>
@G__0x4c242b= global %G__0x4c242b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2445_type = type <{ [8 x i8] }>
@G__0x4c2445= global %G__0x4c2445_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2456_type = type <{ [8 x i8] }>
@G__0x4c2456= global %G__0x4c2456_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2471_type = type <{ [8 x i8] }>
@G__0x4c2471= global %G__0x4c2471_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c248c_type = type <{ [8 x i8] }>
@G__0x4c248c= global %G__0x4c248c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c24a7_type = type <{ [8 x i8] }>
@G__0x4c24a7= global %G__0x4c24a7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c24c2_type = type <{ [8 x i8] }>
@G__0x4c24c2= global %G__0x4c24c2_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c24db_type = type <{ [8 x i8] }>
@G__0x4c24db= global %G__0x4c24db_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c24ea_type = type <{ [8 x i8] }>
@G__0x4c24ea= global %G__0x4c24ea_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2504_type = type <{ [8 x i8] }>
@G__0x4c2504= global %G__0x4c2504_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c251b_type = type <{ [8 x i8] }>
@G__0x4c251b= global %G__0x4c251b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2537_type = type <{ [8 x i8] }>
@G__0x4c2537= global %G__0x4c2537_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2552_type = type <{ [8 x i8] }>
@G__0x4c2552= global %G__0x4c2552_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c256f_type = type <{ [8 x i8] }>
@G__0x4c256f= global %G__0x4c256f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2591_type = type <{ [8 x i8] }>
@G__0x4c2591= global %G__0x4c2591_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c25b6_type = type <{ [8 x i8] }>
@G__0x4c25b6= global %G__0x4c25b6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c25d9_type = type <{ [8 x i8] }>
@G__0x4c25d9= global %G__0x4c25d9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c25f8_type = type <{ [8 x i8] }>
@G__0x4c25f8= global %G__0x4c25f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2610_type = type <{ [8 x i8] }>
@G__0x4c2610= global %G__0x4c2610_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2637_type = type <{ [8 x i8] }>
@G__0x4c2637= global %G__0x4c2637_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c265d_type = type <{ [8 x i8] }>
@G__0x4c265d= global %G__0x4c265d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2679_type = type <{ [8 x i8] }>
@G__0x4c2679= global %G__0x4c2679_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c269d_type = type <{ [8 x i8] }>
@G__0x4c269d= global %G__0x4c269d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c26c8_type = type <{ [8 x i8] }>
@G__0x4c26c8= global %G__0x4c26c8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c26e2_type = type <{ [8 x i8] }>
@G__0x4c26e2= global %G__0x4c26e2_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c26f6_type = type <{ [8 x i8] }>
@G__0x4c26f6= global %G__0x4c26f6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2720_type = type <{ [8 x i8] }>
@G__0x4c2720= global %G__0x4c2720_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c273d_type = type <{ [8 x i8] }>
@G__0x4c273d= global %G__0x4c273d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2761_type = type <{ [8 x i8] }>
@G__0x4c2761= global %G__0x4c2761_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c277a_type = type <{ [8 x i8] }>
@G__0x4c277a= global %G__0x4c277a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c279c_type = type <{ [8 x i8] }>
@G__0x4c279c= global %G__0x4c279c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c27bb_type = type <{ [8 x i8] }>
@G__0x4c27bb= global %G__0x4c27bb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c27d4_type = type <{ [8 x i8] }>
@G__0x4c27d4= global %G__0x4c27d4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c27f9_type = type <{ [8 x i8] }>
@G__0x4c27f9= global %G__0x4c27f9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c281f_type = type <{ [8 x i8] }>
@G__0x4c281f= global %G__0x4c281f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c2843_type = type <{ [8 x i8] }>
@G__0x4c2843= global %G__0x4c2843_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c286a_type = type <{ [8 x i8] }>
@G__0x4c286a= global %G__0x4c286a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6d1f9c_type = type <{ [8 x i8] }>
@G__0x6d1f9c= global %G__0x6d1f9c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6d1fc0_type = type <{ [8 x i8] }>
@G__0x6d1fc0= global %G__0x6d1fc0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6d4520_type = type <{ [8 x i8] }>
@G__0x6d4520= global %G__0x6d4520_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6f6e20_type = type <{ [8 x i8] }>
@G__0x6f6e20= global %G__0x6f6e20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x711780_type = type <{ [8 x i8] }>
@G__0x711780= global %G__0x711780_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x721ca0_type = type <{ [8 x i8] }>
@G__0x721ca0= global %G__0x721ca0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @GenerateSeq_parameter_set_rbsp(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .GenerateSeq_parameter_set_rbsp:	 RIP: 477660	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 477660	 Bytes: 1
  %loadMem_477660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477660 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477660)
  store %struct.Memory* %call_477660, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 477661	 Bytes: 3
  %loadMem_477661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477661 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477661)
  store %struct.Memory* %call_477661, %struct.Memory** %MEMORY

  ; Code: subq $0x30, %rsp	 RIP: 477664	 Bytes: 4
  %loadMem_477664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477664 = call %struct.Memory* @routine_subq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477664)
  store %struct.Memory* %call_477664, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 477668	 Bytes: 5
  %loadMem_477668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477668 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477668)
  store %struct.Memory* %call_477668, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47766d	 Bytes: 2
  %loadMem_47766d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47766d = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47766d)
  store %struct.Memory* %call_47766d, %struct.Memory** %MEMORY

  ; Code: movl $0x78, %eax	 RIP: 47766f	 Bytes: 5
  %loadMem_47766f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47766f = call %struct.Memory* @routine_movl__0x78___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47766f)
  store %struct.Memory* %call_47766f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 477674	 Bytes: 2
  %loadMem_477674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477674 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477674)
  store %struct.Memory* %call_477674, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 477676	 Bytes: 4
  %loadMem_477676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477676 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477676)
  store %struct.Memory* %call_477676, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 47767a	 Bytes: 4
  %loadMem_47767a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47767a = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47767a)
  store %struct.Memory* %call_47767a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 47767e	 Bytes: 7
  %loadMem_47767e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47767e = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47767e)
  store %struct.Memory* %call_47767e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 477685	 Bytes: 3
  %loadMem_477685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477685 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477685)
  store %struct.Memory* %call_477685, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 477688	 Bytes: 3
  %loadMem_477688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477688 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477688)
  store %struct.Memory* %call_477688, %struct.Memory** %MEMORY

  ; Code: callq .calloc_plt	 RIP: 47768b	 Bytes: 5
  %loadMem1_47768b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47768b = call %struct.Memory* @routine_callq_.calloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47768b, i64 -484779, i64 5, i64 5)
  store %struct.Memory* %call1_47768b, %struct.Memory** %MEMORY

  %loadMem2_47768b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47768b = load i64, i64* %3
  %call2_47768b = call %struct.Memory* @ext_calloc(%struct.State* %0, i64  %loadPC_47768b, %struct.Memory* %loadMem2_47768b)
  store %struct.Memory* %call2_47768b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x18(%rbp)	 RIP: 477690	 Bytes: 4
  %loadMem_477690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477690 = call %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477690)
  store %struct.Memory* %call_477690, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 477694	 Bytes: 4
  %loadMem_477694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477694 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477694)
  store %struct.Memory* %call_477694, %struct.Memory** %MEMORY

  ; Code: jne .L_4776ad	 RIP: 477698	 Bytes: 6
  %loadMem_477698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477698 = call %struct.Memory* @routine_jne_.L_4776ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477698, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_477698, %struct.Memory** %MEMORY

  %loadBr_477698 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477698 = icmp eq i8 %loadBr_477698, 1
  br i1 %cmpBr_477698, label %block_.L_4776ad, label %block_47769e

block_47769e:
  ; Code: movq $0x4c2411, %rdi	 RIP: 47769e	 Bytes: 10
  %loadMem_47769e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47769e = call %struct.Memory* @routine_movq__0x4c2411___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47769e)
  store %struct.Memory* %call_47769e, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 4776a8	 Bytes: 5
  %loadMem1_4776a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4776a8 = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4776a8, i64 -123576, i64 5, i64 5)
  store %struct.Memory* %call1_4776a8, %struct.Memory** %MEMORY

  %loadMem2_4776a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4776a8 = load i64, i64* %3
  %call2_4776a8 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_4776a8, %struct.Memory* %loadMem2_4776a8)
  store %struct.Memory* %call2_4776a8, %struct.Memory** %MEMORY

  ; Code: .L_4776ad:	 RIP: 4776ad	 Bytes: 0
  br label %block_.L_4776ad
block_.L_4776ad:

  ; Code: movl $0x1, %eax	 RIP: 4776ad	 Bytes: 5
  %loadMem_4776ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776ad = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776ad)
  store %struct.Memory* %call_4776ad, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 4776b2	 Bytes: 2
  %loadMem_4776b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776b2 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776b2)
  store %struct.Memory* %call_4776b2, %struct.Memory** %MEMORY

  ; Code: movl $0x30, %eax	 RIP: 4776b4	 Bytes: 5
  %loadMem_4776b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776b4 = call %struct.Memory* @routine_movl__0x30___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776b4)
  store %struct.Memory* %call_4776b4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4776b9	 Bytes: 2
  %loadMem_4776b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776b9 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776b9)
  store %struct.Memory* %call_4776b9, %struct.Memory** %MEMORY

  ; Code: callq .calloc_plt	 RIP: 4776bb	 Bytes: 5
  %loadMem1_4776bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4776bb = call %struct.Memory* @routine_callq_.calloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4776bb, i64 -484827, i64 5, i64 5)
  store %struct.Memory* %call1_4776bb, %struct.Memory** %MEMORY

  %loadMem2_4776bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4776bb = load i64, i64* %3
  %call2_4776bb = call %struct.Memory* @ext_calloc(%struct.State* %0, i64  %loadPC_4776bb, %struct.Memory* %loadMem2_4776bb)
  store %struct.Memory* %call2_4776bb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rsi	 RIP: 4776c0	 Bytes: 4
  %loadMem_4776c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776c0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776c0)
  store %struct.Memory* %call_4776c0, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rsi)	 RIP: 4776c4	 Bytes: 3
  %loadMem_4776c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776c4 = call %struct.Memory* @routine_movq__rax____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776c4)
  store %struct.Memory* %call_4776c4, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4776c7	 Bytes: 4
  %loadMem_4776c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776c7 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776c7)
  store %struct.Memory* %call_4776c7, %struct.Memory** %MEMORY

  ; Code: jne .L_4776e0	 RIP: 4776cb	 Bytes: 6
  %loadMem_4776cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776cb = call %struct.Memory* @routine_jne_.L_4776e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776cb, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4776cb, %struct.Memory** %MEMORY

  %loadBr_4776cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4776cb = icmp eq i8 %loadBr_4776cb, 1
  br i1 %cmpBr_4776cb, label %block_.L_4776e0, label %block_4776d1

block_4776d1:
  ; Code: movq $0x4c242b, %rdi	 RIP: 4776d1	 Bytes: 10
  %loadMem_4776d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776d1 = call %struct.Memory* @routine_movq__0x4c242b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776d1)
  store %struct.Memory* %call_4776d1, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 4776db	 Bytes: 5
  %loadMem1_4776db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4776db = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4776db, i64 -123627, i64 5, i64 5)
  store %struct.Memory* %call1_4776db, %struct.Memory** %MEMORY

  %loadMem2_4776db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4776db = load i64, i64* %3
  %call2_4776db = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_4776db, %struct.Memory* %loadMem2_4776db)
  store %struct.Memory* %call2_4776db, %struct.Memory** %MEMORY

  ; Code: .L_4776e0:	 RIP: 4776e0	 Bytes: 0
  br label %block_.L_4776e0
block_.L_4776e0:

  ; Code: movl $0x8, %edi	 RIP: 4776e0	 Bytes: 5
  %loadMem_4776e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776e0 = call %struct.Memory* @routine_movl__0x8___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776e0)
  store %struct.Memory* %call_4776e0, %struct.Memory** %MEMORY

  ; Code: movq $0x4c2445, %rsi	 RIP: 4776e5	 Bytes: 10
  %loadMem_4776e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776e5 = call %struct.Memory* @routine_movq__0x4c2445___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776e5)
  store %struct.Memory* %call_4776e5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4776ef	 Bytes: 4
  %loadMem_4776ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776ef = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776ef)
  store %struct.Memory* %call_4776ef, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4776f3	 Bytes: 4
  %loadMem_4776f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776f3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776f3)
  store %struct.Memory* %call_4776f3, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 4776f7	 Bytes: 3
  %loadMem_4776f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776f7 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776f7)
  store %struct.Memory* %call_4776f7, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x20(%rcx)	 RIP: 4776fa	 Bytes: 4
  %loadMem_4776fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776fa = call %struct.Memory* @routine_movq__rax__0x20__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776fa)
  store %struct.Memory* %call_4776fa, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4776fe	 Bytes: 4
  %loadMem_4776fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4776fe = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4776fe)
  store %struct.Memory* %call_4776fe, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 477702	 Bytes: 3
  %loadMem_477702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477702 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477702)
  store %struct.Memory* %call_477702, %struct.Memory** %MEMORY

  ; Code: movl $0x8, 0x4(%rax)	 RIP: 477705	 Bytes: 7
  %loadMem_477705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477705 = call %struct.Memory* @routine_movl__0x8__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477705)
  store %struct.Memory* %call_477705, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 47770c	 Bytes: 4
  %loadMem_47770c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47770c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47770c)
  store %struct.Memory* %call_47770c, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 477710	 Bytes: 3
  %loadMem_477710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477710 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477710)
  store %struct.Memory* %call_477710, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 477713	 Bytes: 4
  %loadMem_477713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477713 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477713)
  store %struct.Memory* %call_477713, %struct.Memory** %MEMORY

  ; Code: callq .u_v	 RIP: 477717	 Bytes: 5
  %loadMem1_477717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477717 = call %struct.Memory* @routine_callq_.u_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477717, i64 218281, i64 5, i64 5)
  store %struct.Memory* %call1_477717, %struct.Memory** %MEMORY

  %loadMem2_477717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477717 = load i64, i64* %3
  %call2_477717 = call %struct.Memory* @sub_4acbc0.u_v(%struct.State* %0, i64  %loadPC_477717, %struct.Memory* %loadMem2_477717)
  store %struct.Memory* %call2_477717, %struct.Memory** %MEMORY

  ; Code: movq $0x4c2456, %rdi	 RIP: 47771c	 Bytes: 10
  %loadMem_47771c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47771c = call %struct.Memory* @routine_movq__0x4c2456___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47771c)
  store %struct.Memory* %call_47771c, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477726	 Bytes: 3
  %loadMem_477726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477726 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477726)
  store %struct.Memory* %call_477726, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477729	 Bytes: 3
  %loadMem_477729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477729 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477729)
  store %struct.Memory* %call_477729, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 47772c	 Bytes: 4
  %loadMem_47772c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47772c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47772c)
  store %struct.Memory* %call_47772c, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rcx), %esi	 RIP: 477730	 Bytes: 3
  %loadMem_477730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477730 = call %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477730)
  store %struct.Memory* %call_477730, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477733	 Bytes: 4
  %loadMem_477733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477733 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477733)
  store %struct.Memory* %call_477733, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 477737	 Bytes: 5
  %loadMem1_477737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477737 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477737, i64 218057, i64 5, i64 5)
  store %struct.Memory* %call1_477737, %struct.Memory** %MEMORY

  %loadMem2_477737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477737 = load i64, i64* %3
  %call2_477737 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_477737, %struct.Memory* %loadMem2_477737)
  store %struct.Memory* %call2_477737, %struct.Memory** %MEMORY

  ; Code: movq $0x4c2471, %rdi	 RIP: 47773c	 Bytes: 10
  %loadMem_47773c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47773c = call %struct.Memory* @routine_movq__0x4c2471___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47773c)
  store %struct.Memory* %call_47773c, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477746	 Bytes: 3
  %loadMem_477746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477746 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477746)
  store %struct.Memory* %call_477746, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477749	 Bytes: 3
  %loadMem_477749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477749 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477749)
  store %struct.Memory* %call_477749, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 47774c	 Bytes: 4
  %loadMem_47774c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47774c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47774c)
  store %struct.Memory* %call_47774c, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %esi	 RIP: 477750	 Bytes: 3
  %loadMem_477750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477750 = call %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477750)
  store %struct.Memory* %call_477750, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477753	 Bytes: 4
  %loadMem_477753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477753 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477753)
  store %struct.Memory* %call_477753, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 477757	 Bytes: 5
  %loadMem1_477757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477757 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477757, i64 218025, i64 5, i64 5)
  store %struct.Memory* %call1_477757, %struct.Memory** %MEMORY

  %loadMem2_477757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477757 = load i64, i64* %3
  %call2_477757 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_477757, %struct.Memory* %loadMem2_477757)
  store %struct.Memory* %call2_477757, %struct.Memory** %MEMORY

  ; Code: movq $0x4c248c, %rdi	 RIP: 47775c	 Bytes: 10
  %loadMem_47775c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47775c = call %struct.Memory* @routine_movq__0x4c248c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47775c)
  store %struct.Memory* %call_47775c, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477766	 Bytes: 3
  %loadMem_477766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477766 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477766)
  store %struct.Memory* %call_477766, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477769	 Bytes: 3
  %loadMem_477769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477769 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477769)
  store %struct.Memory* %call_477769, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 47776c	 Bytes: 4
  %loadMem_47776c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47776c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47776c)
  store %struct.Memory* %call_47776c, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rcx), %esi	 RIP: 477770	 Bytes: 3
  %loadMem_477770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477770 = call %struct.Memory* @routine_movl_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477770)
  store %struct.Memory* %call_477770, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477773	 Bytes: 4
  %loadMem_477773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477773 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477773)
  store %struct.Memory* %call_477773, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 477777	 Bytes: 5
  %loadMem1_477777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477777 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477777, i64 217993, i64 5, i64 5)
  store %struct.Memory* %call1_477777, %struct.Memory** %MEMORY

  %loadMem2_477777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477777 = load i64, i64* %3
  %call2_477777 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_477777, %struct.Memory* %loadMem2_477777)
  store %struct.Memory* %call2_477777, %struct.Memory** %MEMORY

  ; Code: movq $0x4c24a7, %rdi	 RIP: 47777c	 Bytes: 10
  %loadMem_47777c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47777c = call %struct.Memory* @routine_movq__0x4c24a7___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47777c)
  store %struct.Memory* %call_47777c, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477786	 Bytes: 3
  %loadMem_477786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477786 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477786)
  store %struct.Memory* %call_477786, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477789	 Bytes: 3
  %loadMem_477789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477789 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477789)
  store %struct.Memory* %call_477789, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 47778c	 Bytes: 4
  %loadMem_47778c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47778c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47778c)
  store %struct.Memory* %call_47778c, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rcx), %esi	 RIP: 477790	 Bytes: 3
  %loadMem_477790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477790 = call %struct.Memory* @routine_movl_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477790)
  store %struct.Memory* %call_477790, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477793	 Bytes: 4
  %loadMem_477793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477793 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477793)
  store %struct.Memory* %call_477793, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 477797	 Bytes: 5
  %loadMem1_477797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477797 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477797, i64 217961, i64 5, i64 5)
  store %struct.Memory* %call1_477797, %struct.Memory** %MEMORY

  %loadMem2_477797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477797 = load i64, i64* %3
  %call2_477797 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_477797, %struct.Memory* %loadMem2_477797)
  store %struct.Memory* %call2_477797, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %edi	 RIP: 47779c	 Bytes: 5
  %loadMem_47779c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47779c = call %struct.Memory* @routine_movl__0x4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47779c)
  store %struct.Memory* %call_47779c, %struct.Memory** %MEMORY

  ; Code: movq $0x4c24c2, %rsi	 RIP: 4777a1	 Bytes: 10
  %loadMem_4777a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777a1 = call %struct.Memory* @routine_movq__0x4c24c2___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777a1)
  store %struct.Memory* %call_4777a1, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 4777ab	 Bytes: 2
  %loadMem_4777ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777ab = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777ab)
  store %struct.Memory* %call_4777ab, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 4777ad	 Bytes: 3
  %loadMem_4777ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777ad = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777ad)
  store %struct.Memory* %call_4777ad, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4777b0	 Bytes: 3
  %loadMem_4777b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777b0 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777b0)
  store %struct.Memory* %call_4777b0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4777b3	 Bytes: 4
  %loadMem_4777b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777b3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777b3)
  store %struct.Memory* %call_4777b3, %struct.Memory** %MEMORY

  ; Code: callq .u_v	 RIP: 4777b7	 Bytes: 5
  %loadMem1_4777b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4777b7 = call %struct.Memory* @routine_callq_.u_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4777b7, i64 218121, i64 5, i64 5)
  store %struct.Memory* %call1_4777b7, %struct.Memory** %MEMORY

  %loadMem2_4777b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4777b7 = load i64, i64* %3
  %call2_4777b7 = call %struct.Memory* @sub_4acbc0.u_v(%struct.State* %0, i64  %loadPC_4777b7, %struct.Memory* %loadMem2_4777b7)
  store %struct.Memory* %call2_4777b7, %struct.Memory** %MEMORY

  ; Code: movl $0x8, %edi	 RIP: 4777bc	 Bytes: 5
  %loadMem_4777bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777bc = call %struct.Memory* @routine_movl__0x8___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777bc)
  store %struct.Memory* %call_4777bc, %struct.Memory** %MEMORY

  ; Code: movq $0x4c24db, %rsi	 RIP: 4777c1	 Bytes: 10
  %loadMem_4777c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777c1 = call %struct.Memory* @routine_movq__0x4c24db___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777c1)
  store %struct.Memory* %call_4777c1, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 4777cb	 Bytes: 3
  %loadMem_4777cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777cb = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777cb)
  store %struct.Memory* %call_4777cb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4777ce	 Bytes: 3
  %loadMem_4777ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777ce = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777ce)
  store %struct.Memory* %call_4777ce, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4777d1	 Bytes: 4
  %loadMem_4777d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777d1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777d1)
  store %struct.Memory* %call_4777d1, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rcx), %edx	 RIP: 4777d5	 Bytes: 3
  %loadMem_4777d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777d5 = call %struct.Memory* @routine_movl_0x18__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777d5)
  store %struct.Memory* %call_4777d5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4777d8	 Bytes: 4
  %loadMem_4777d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777d8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777d8)
  store %struct.Memory* %call_4777d8, %struct.Memory** %MEMORY

  ; Code: callq .u_v	 RIP: 4777dc	 Bytes: 5
  %loadMem1_4777dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4777dc = call %struct.Memory* @routine_callq_.u_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4777dc, i64 218084, i64 5, i64 5)
  store %struct.Memory* %call1_4777dc, %struct.Memory** %MEMORY

  %loadMem2_4777dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4777dc = load i64, i64* %3
  %call2_4777dc = call %struct.Memory* @sub_4acbc0.u_v(%struct.State* %0, i64  %loadPC_4777dc, %struct.Memory* %loadMem2_4777dc)
  store %struct.Memory* %call2_4777dc, %struct.Memory** %MEMORY

  ; Code: movq $0x4c24ea, %rdi	 RIP: 4777e1	 Bytes: 10
  %loadMem_4777e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777e1 = call %struct.Memory* @routine_movq__0x4c24ea___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777e1)
  store %struct.Memory* %call_4777e1, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 4777eb	 Bytes: 3
  %loadMem_4777eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777eb = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777eb)
  store %struct.Memory* %call_4777eb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4777ee	 Bytes: 3
  %loadMem_4777ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777ee = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777ee)
  store %struct.Memory* %call_4777ee, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4777f1	 Bytes: 4
  %loadMem_4777f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777f1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777f1)
  store %struct.Memory* %call_4777f1, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rcx), %esi	 RIP: 4777f5	 Bytes: 3
  %loadMem_4777f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777f5 = call %struct.Memory* @routine_movl_0x1c__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777f5)
  store %struct.Memory* %call_4777f5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4777f8	 Bytes: 4
  %loadMem_4777f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4777f8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4777f8)
  store %struct.Memory* %call_4777f8, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 4777fc	 Bytes: 5
  %loadMem1_4777fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4777fc = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4777fc, i64 216740, i64 5, i64 5)
  store %struct.Memory* %call1_4777fc, %struct.Memory** %MEMORY

  %loadMem2_4777fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4777fc = load i64, i64* %3
  %call2_4777fc = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_4777fc, %struct.Memory* %loadMem2_4777fc)
  store %struct.Memory* %call2_4777fc, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477801	 Bytes: 3
  %loadMem_477801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477801 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477801)
  store %struct.Memory* %call_477801, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477804	 Bytes: 3
  %loadMem_477804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477804 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477804)
  store %struct.Memory* %call_477804, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 477807	 Bytes: 4
  %loadMem_477807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477807 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477807)
  store %struct.Memory* %call_477807, %struct.Memory** %MEMORY

  ; Code: cmpl $0x64, 0x4(%rcx)	 RIP: 47780b	 Bytes: 4
  %loadMem_47780b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47780b = call %struct.Memory* @routine_cmpl__0x64__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47780b)
  store %struct.Memory* %call_47780b, %struct.Memory** %MEMORY

  ; Code: je .L_477842	 RIP: 47780f	 Bytes: 6
  %loadMem_47780f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47780f = call %struct.Memory* @routine_je_.L_477842(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47780f, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_47780f, %struct.Memory** %MEMORY

  %loadBr_47780f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47780f = icmp eq i8 %loadBr_47780f, 1
  br i1 %cmpBr_47780f, label %block_.L_477842, label %block_477815

block_477815:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 477815	 Bytes: 4
  %loadMem_477815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477815 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477815)
  store %struct.Memory* %call_477815, %struct.Memory** %MEMORY

  ; Code: cmpl $0x6e, 0x4(%rax)	 RIP: 477819	 Bytes: 4
  %loadMem_477819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477819 = call %struct.Memory* @routine_cmpl__0x6e__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477819)
  store %struct.Memory* %call_477819, %struct.Memory** %MEMORY

  ; Code: je .L_477842	 RIP: 47781d	 Bytes: 6
  %loadMem_47781d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47781d = call %struct.Memory* @routine_je_.L_477842(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47781d, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_47781d, %struct.Memory** %MEMORY

  %loadBr_47781d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47781d = icmp eq i8 %loadBr_47781d, 1
  br i1 %cmpBr_47781d, label %block_.L_477842, label %block_477823

block_477823:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 477823	 Bytes: 4
  %loadMem_477823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477823 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477823)
  store %struct.Memory* %call_477823, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7a, 0x4(%rax)	 RIP: 477827	 Bytes: 4
  %loadMem_477827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477827 = call %struct.Memory* @routine_cmpl__0x7a__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477827)
  store %struct.Memory* %call_477827, %struct.Memory** %MEMORY

  ; Code: je .L_477842	 RIP: 47782b	 Bytes: 6
  %loadMem_47782b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47782b = call %struct.Memory* @routine_je_.L_477842(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47782b, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_47782b, %struct.Memory** %MEMORY

  %loadBr_47782b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47782b = icmp eq i8 %loadBr_47782b, 1
  br i1 %cmpBr_47782b, label %block_.L_477842, label %block_477831

block_477831:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 477831	 Bytes: 4
  %loadMem_477831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477831 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477831)
  store %struct.Memory* %call_477831, %struct.Memory** %MEMORY

  ; Code: cmpl $0x90, 0x4(%rax)	 RIP: 477835	 Bytes: 7
  %loadMem_477835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477835 = call %struct.Memory* @routine_cmpl__0x90__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477835)
  store %struct.Memory* %call_477835, %struct.Memory** %MEMORY

  ; Code: jne .L_477a82	 RIP: 47783c	 Bytes: 6
  %loadMem_47783c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47783c = call %struct.Memory* @routine_jne_.L_477a82(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47783c, i8* %BRANCH_TAKEN, i64 582, i64 6, i64 6)
  store %struct.Memory* %call_47783c, %struct.Memory** %MEMORY

  %loadBr_47783c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47783c = icmp eq i8 %loadBr_47783c, 1
  br i1 %cmpBr_47783c, label %block_.L_477a82, label %block_.L_477842

  ; Code: .L_477842:	 RIP: 477842	 Bytes: 0
block_.L_477842:

  ; Code: movq $0x4c2504, %rdi	 RIP: 477842	 Bytes: 10
  %loadMem_477842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477842 = call %struct.Memory* @routine_movq__0x4c2504___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477842)
  store %struct.Memory* %call_477842, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 47784c	 Bytes: 4
  %loadMem_47784c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47784c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47784c)
  store %struct.Memory* %call_47784c, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %esi	 RIP: 477850	 Bytes: 3
  %loadMem_477850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477850 = call %struct.Memory* @routine_movl_0x20__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477850)
  store %struct.Memory* %call_477850, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477853	 Bytes: 4
  %loadMem_477853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477853 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477853)
  store %struct.Memory* %call_477853, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 477857	 Bytes: 5
  %loadMem1_477857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477857 = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477857, i64 216649, i64 5, i64 5)
  store %struct.Memory* %call1_477857, %struct.Memory** %MEMORY

  %loadMem2_477857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477857 = load i64, i64* %3
  %call2_477857 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_477857, %struct.Memory* %loadMem2_477857)
  store %struct.Memory* %call2_477857, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 47785c	 Bytes: 3
  %loadMem_47785c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47785c = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47785c)
  store %struct.Memory* %call_47785c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 47785f	 Bytes: 3
  %loadMem_47785f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47785f = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47785f)
  store %struct.Memory* %call_47785f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 477862	 Bytes: 8
  %loadMem_477862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477862 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477862)
  store %struct.Memory* %call_477862, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x11bfc(%rdx)	 RIP: 47786a	 Bytes: 7
  %loadMem_47786a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47786a = call %struct.Memory* @routine_cmpl__0x3__0x11bfc__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47786a)
  store %struct.Memory* %call_47786a, %struct.Memory** %MEMORY

  ; Code: jne .L_47789e	 RIP: 477871	 Bytes: 6
  %loadMem_477871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477871 = call %struct.Memory* @routine_jne_.L_47789e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477871, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_477871, %struct.Memory** %MEMORY

  %loadBr_477871 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477871 = icmp eq i8 %loadBr_477871, 1
  br i1 %cmpBr_477871, label %block_.L_47789e, label %block_477877

block_477877:
  ; Code: movq $0x4c251b, %rdi	 RIP: 477877	 Bytes: 10
  %loadMem_477877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477877 = call %struct.Memory* @routine_movq__0x4c251b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477877)
  store %struct.Memory* %call_477877, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 477881	 Bytes: 8
  %loadMem_477881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477881 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477881)
  store %struct.Memory* %call_477881, %struct.Memory** %MEMORY

  ; Code: movl 0x11c14(%rax), %esi	 RIP: 477889	 Bytes: 6
  %loadMem_477889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477889 = call %struct.Memory* @routine_movl_0x11c14__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477889)
  store %struct.Memory* %call_477889, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 47788f	 Bytes: 4
  %loadMem_47788f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47788f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47788f)
  store %struct.Memory* %call_47788f, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 477893	 Bytes: 5
  %loadMem1_477893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477893 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477893, i64 217709, i64 5, i64 5)
  store %struct.Memory* %call1_477893, %struct.Memory** %MEMORY

  %loadMem2_477893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477893 = load i64, i64* %3
  %call2_477893 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_477893, %struct.Memory* %loadMem2_477893)
  store %struct.Memory* %call2_477893, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477898	 Bytes: 3
  %loadMem_477898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477898 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477898)
  store %struct.Memory* %call_477898, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 47789b	 Bytes: 3
  %loadMem_47789b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47789b = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47789b)
  store %struct.Memory* %call_47789b, %struct.Memory** %MEMORY

  ; Code: .L_47789e:	 RIP: 47789e	 Bytes: 0
  br label %block_.L_47789e
block_.L_47789e:

  ; Code: movq $0x4c2537, %rdi	 RIP: 47789e	 Bytes: 10
  %loadMem_47789e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47789e = call %struct.Memory* @routine_movq__0x4c2537___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47789e)
  store %struct.Memory* %call_47789e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4778a8	 Bytes: 4
  %loadMem_4778a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778a8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778a8)
  store %struct.Memory* %call_4778a8, %struct.Memory** %MEMORY

  ; Code: movl 0x48(%rax), %esi	 RIP: 4778ac	 Bytes: 3
  %loadMem_4778ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778ac = call %struct.Memory* @routine_movl_0x48__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778ac)
  store %struct.Memory* %call_4778ac, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4778af	 Bytes: 4
  %loadMem_4778af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778af = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778af)
  store %struct.Memory* %call_4778af, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 4778b3	 Bytes: 5
  %loadMem1_4778b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4778b3 = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4778b3, i64 216557, i64 5, i64 5)
  store %struct.Memory* %call1_4778b3, %struct.Memory** %MEMORY

  %loadMem2_4778b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4778b3 = load i64, i64* %3
  %call2_4778b3 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_4778b3, %struct.Memory* %loadMem2_4778b3)
  store %struct.Memory* %call2_4778b3, %struct.Memory** %MEMORY

  ; Code: movq $0x4c2552, %rdi	 RIP: 4778b8	 Bytes: 10
  %loadMem_4778b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778b8 = call %struct.Memory* @routine_movq__0x4c2552___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778b8)
  store %struct.Memory* %call_4778b8, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 4778c2	 Bytes: 3
  %loadMem_4778c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778c2 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778c2)
  store %struct.Memory* %call_4778c2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4778c5	 Bytes: 3
  %loadMem_4778c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778c5 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778c5)
  store %struct.Memory* %call_4778c5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4778c8	 Bytes: 4
  %loadMem_4778c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778c8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778c8)
  store %struct.Memory* %call_4778c8, %struct.Memory** %MEMORY

  ; Code: movl 0x4c(%rdx), %esi	 RIP: 4778cc	 Bytes: 3
  %loadMem_4778cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778cc = call %struct.Memory* @routine_movl_0x4c__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778cc)
  store %struct.Memory* %call_4778cc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4778cf	 Bytes: 4
  %loadMem_4778cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778cf = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778cf)
  store %struct.Memory* %call_4778cf, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 4778d3	 Bytes: 5
  %loadMem1_4778d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4778d3 = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4778d3, i64 216525, i64 5, i64 5)
  store %struct.Memory* %call1_4778d3, %struct.Memory** %MEMORY

  %loadMem2_4778d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4778d3 = load i64, i64* %3
  %call2_4778d3 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_4778d3, %struct.Memory* %loadMem2_4778d3)
  store %struct.Memory* %call2_4778d3, %struct.Memory** %MEMORY

  ; Code: movq $0x4c256f, %rdi	 RIP: 4778d8	 Bytes: 10
  %loadMem_4778d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778d8 = call %struct.Memory* @routine_movq__0x4c256f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778d8)
  store %struct.Memory* %call_4778d8, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 4778e2	 Bytes: 3
  %loadMem_4778e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778e2 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778e2)
  store %struct.Memory* %call_4778e2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4778e5	 Bytes: 3
  %loadMem_4778e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778e5 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778e5)
  store %struct.Memory* %call_4778e5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4778e8	 Bytes: 8
  %loadMem_4778e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778e8 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778e8)
  store %struct.Memory* %call_4778e8, %struct.Memory** %MEMORY

  ; Code: movl 0x11c00(%rdx), %esi	 RIP: 4778f0	 Bytes: 6
  %loadMem_4778f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778f0 = call %struct.Memory* @routine_movl_0x11c00__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778f0)
  store %struct.Memory* %call_4778f0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4778f6	 Bytes: 4
  %loadMem_4778f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778f6 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778f6)
  store %struct.Memory* %call_4778f6, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 4778fa	 Bytes: 5
  %loadMem1_4778fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4778fa = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4778fa, i64 217606, i64 5, i64 5)
  store %struct.Memory* %call1_4778fa, %struct.Memory** %MEMORY

  %loadMem2_4778fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4778fa = load i64, i64* %3
  %call2_4778fa = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_4778fa, %struct.Memory* %loadMem2_4778fa)
  store %struct.Memory* %call2_4778fa, %struct.Memory** %MEMORY

  ; Code: movq $0x4c2591, %rdi	 RIP: 4778ff	 Bytes: 10
  %loadMem_4778ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4778ff = call %struct.Memory* @routine_movq__0x4c2591___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4778ff)
  store %struct.Memory* %call_4778ff, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477909	 Bytes: 3
  %loadMem_477909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477909 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477909)
  store %struct.Memory* %call_477909, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 47790c	 Bytes: 3
  %loadMem_47790c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47790c = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47790c)
  store %struct.Memory* %call_47790c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 47790f	 Bytes: 4
  %loadMem_47790f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47790f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47790f)
  store %struct.Memory* %call_47790f, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rdx), %esi	 RIP: 477913	 Bytes: 3
  %loadMem_477913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477913 = call %struct.Memory* @routine_movl_0x24__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477913)
  store %struct.Memory* %call_477913, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477916	 Bytes: 4
  %loadMem_477916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477916 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477916)
  store %struct.Memory* %call_477916, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 47791a	 Bytes: 5
  %loadMem1_47791a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47791a = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47791a, i64 217574, i64 5, i64 5)
  store %struct.Memory* %call1_47791a, %struct.Memory** %MEMORY

  %loadMem2_47791a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47791a = load i64, i64* %3
  %call2_47791a = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_47791a, %struct.Memory* %loadMem2_47791a)
  store %struct.Memory* %call2_47791a, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 47791f	 Bytes: 3
  %loadMem_47791f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47791f = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47791f)
  store %struct.Memory* %call_47791f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477922	 Bytes: 3
  %loadMem_477922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477922 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477922)
  store %struct.Memory* %call_477922, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477925	 Bytes: 4
  %loadMem_477925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477925 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477925)
  store %struct.Memory* %call_477925, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x24(%rdx)	 RIP: 477929	 Bytes: 4
  %loadMem_477929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477929 = call %struct.Memory* @routine_cmpl__0x0__0x24__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477929)
  store %struct.Memory* %call_477929, %struct.Memory** %MEMORY

  ; Code: je .L_477a7d	 RIP: 47792d	 Bytes: 6
  %loadMem_47792d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47792d = call %struct.Memory* @routine_je_.L_477a7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47792d, i8* %BRANCH_TAKEN, i64 336, i64 6, i64 6)
  store %struct.Memory* %call_47792d, %struct.Memory** %MEMORY

  %loadBr_47792d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47792d = icmp eq i8 %loadBr_47792d, 1
  br i1 %cmpBr_47792d, label %block_.L_477a7d, label %block_477933

block_477933:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 477933	 Bytes: 7
  %loadMem_477933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477933 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477933)
  store %struct.Memory* %call_477933, %struct.Memory** %MEMORY

  ; Code: .L_47793a:	 RIP: 47793a	 Bytes: 0
  br label %block_.L_47793a
block_.L_47793a:

  ; Code: cmpl $0x8, -0x24(%rbp)	 RIP: 47793a	 Bytes: 4
  %loadMem_47793a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47793a = call %struct.Memory* @routine_cmpl__0x8__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47793a)
  store %struct.Memory* %call_47793a, %struct.Memory** %MEMORY

  ; Code: jae .L_477a78	 RIP: 47793e	 Bytes: 6
  %loadMem_47793e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47793e = call %struct.Memory* @routine_jae_.L_477a78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47793e, i8* %BRANCH_TAKEN, i64 314, i64 6, i64 6)
  store %struct.Memory* %call_47793e, %struct.Memory** %MEMORY

  %loadBr_47793e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47793e = icmp eq i8 %loadBr_47793e, 1
  br i1 %cmpBr_47793e, label %block_.L_477a78, label %block_477944

block_477944:
  ; Code: movq $0x4c25b6, %rdi	 RIP: 477944	 Bytes: 10
  %loadMem_477944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477944 = call %struct.Memory* @routine_movq__0x4c25b6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477944)
  store %struct.Memory* %call_477944, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 47794e	 Bytes: 4
  %loadMem_47794e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47794e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47794e)
  store %struct.Memory* %call_47794e, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 477952	 Bytes: 3
  %loadMem_477952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477952 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477952)
  store %struct.Memory* %call_477952, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 477955	 Bytes: 2
  %loadMem_477955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477955 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477955)
  store %struct.Memory* %call_477955, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax,%rdx,4), %esi	 RIP: 477957	 Bytes: 4
  %loadMem_477957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477957 = call %struct.Memory* @routine_movl_0x28__rax__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477957)
  store %struct.Memory* %call_477957, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 47795b	 Bytes: 4
  %loadMem_47795b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47795b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47795b)
  store %struct.Memory* %call_47795b, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 47795f	 Bytes: 5
  %loadMem1_47795f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47795f = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47795f, i64 217505, i64 5, i64 5)
  store %struct.Memory* %call1_47795f, %struct.Memory** %MEMORY

  %loadMem2_47795f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47795f = load i64, i64* %3
  %call2_47795f = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_47795f, %struct.Memory* %loadMem2_47795f)
  store %struct.Memory* %call2_47795f, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477964	 Bytes: 3
  %loadMem_477964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477964 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477964)
  store %struct.Memory* %call_477964, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477967	 Bytes: 3
  %loadMem_477967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477967 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477967)
  store %struct.Memory* %call_477967, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 47796a	 Bytes: 4
  %loadMem_47796a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47796a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47796a)
  store %struct.Memory* %call_47796a, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 47796e	 Bytes: 3
  %loadMem_47796e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47796e = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47796e)
  store %struct.Memory* %call_47796e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 477971	 Bytes: 2
  %loadMem_477971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477971 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477971)
  store %struct.Memory* %call_477971, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x28(%rdx,%rdi,4)	 RIP: 477973	 Bytes: 5
  %loadMem_477973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477973 = call %struct.Memory* @routine_cmpl__0x0__0x28__rdx__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477973)
  store %struct.Memory* %call_477973, %struct.Memory** %MEMORY

  ; Code: je .L_477a65	 RIP: 477978	 Bytes: 6
  %loadMem_477978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477978 = call %struct.Memory* @routine_je_.L_477a65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477978, i8* %BRANCH_TAKEN, i64 237, i64 6, i64 6)
  store %struct.Memory* %call_477978, %struct.Memory** %MEMORY

  %loadBr_477978 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477978 = icmp eq i8 %loadBr_477978, 1
  br i1 %cmpBr_477978, label %block_.L_477a65, label %block_47797e

block_47797e:
  ; Code: cmpl $0x6, -0x24(%rbp)	 RIP: 47797e	 Bytes: 4
  %loadMem_47797e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47797e = call %struct.Memory* @routine_cmpl__0x6__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47797e)
  store %struct.Memory* %call_47797e, %struct.Memory** %MEMORY

  ; Code: jae .L_4779ef	 RIP: 477982	 Bytes: 6
  %loadMem_477982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477982 = call %struct.Memory* @routine_jae_.L_4779ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477982, i8* %BRANCH_TAKEN, i64 109, i64 6, i64 6)
  store %struct.Memory* %call_477982, %struct.Memory** %MEMORY

  %loadBr_477982 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477982 = icmp eq i8 %loadBr_477982, 1
  br i1 %cmpBr_477982, label %block_.L_4779ef, label %block_477988

block_477988:
  ; Code: movl $0x10, %edx	 RIP: 477988	 Bytes: 5
  %loadMem_477988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477988 = call %struct.Memory* @routine_movl__0x10___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477988)
  store %struct.Memory* %call_477988, %struct.Memory** %MEMORY

  ; Code: movq $0x6d4520, %rax	 RIP: 47798d	 Bytes: 10
  %loadMem_47798d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47798d = call %struct.Memory* @routine_movq__0x6d4520___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47798d)
  store %struct.Memory* %call_47798d, %struct.Memory** %MEMORY

  ; Code: movq $0x6d1fc0, %rcx	 RIP: 477997	 Bytes: 10
  %loadMem_477997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477997 = call %struct.Memory* @routine_movq__0x6d1fc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477997)
  store %struct.Memory* %call_477997, %struct.Memory** %MEMORY

  ; Code: movq $0x711780, %rsi	 RIP: 4779a1	 Bytes: 10
  %loadMem_4779a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779a1 = call %struct.Memory* @routine_movq__0x711780___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779a1)
  store %struct.Memory* %call_4779a1, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edi	 RIP: 4779ab	 Bytes: 3
  %loadMem_4779ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779ab = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779ab)
  store %struct.Memory* %call_4779ab, %struct.Memory** %MEMORY

  ; Code: movl %edi, %r8d	 RIP: 4779ae	 Bytes: 3
  %loadMem_4779ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779ae = call %struct.Memory* @routine_movl__edi___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779ae)
  store %struct.Memory* %call_4779ae, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %r8	 RIP: 4779b1	 Bytes: 4
  %loadMem_4779b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779b1 = call %struct.Memory* @routine_shlq__0x5___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779b1)
  store %struct.Memory* %call_4779b1, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rsi	 RIP: 4779b5	 Bytes: 3
  %loadMem_4779b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779b5 = call %struct.Memory* @routine_addq__r8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779b5)
  store %struct.Memory* %call_4779b5, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edi	 RIP: 4779b8	 Bytes: 3
  %loadMem_4779b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779b8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779b8)
  store %struct.Memory* %call_4779b8, %struct.Memory** %MEMORY

  ; Code: movl %edi, %r8d	 RIP: 4779bb	 Bytes: 3
  %loadMem_4779bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779bb = call %struct.Memory* @routine_movl__edi___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779bb)
  store %struct.Memory* %call_4779bb, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %r8	 RIP: 4779be	 Bytes: 4
  %loadMem_4779be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779be = call %struct.Memory* @routine_shlq__0x5___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779be)
  store %struct.Memory* %call_4779be, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rcx	 RIP: 4779c2	 Bytes: 3
  %loadMem_4779c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779c2 = call %struct.Memory* @routine_addq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779c2)
  store %struct.Memory* %call_4779c2, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edi	 RIP: 4779c5	 Bytes: 3
  %loadMem_4779c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779c5 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779c5)
  store %struct.Memory* %call_4779c5, %struct.Memory** %MEMORY

  ; Code: movl %edi, %r8d	 RIP: 4779c8	 Bytes: 3
  %loadMem_4779c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779c8 = call %struct.Memory* @routine_movl__edi___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779c8)
  store %struct.Memory* %call_4779c8, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %r8	 RIP: 4779cb	 Bytes: 4
  %loadMem_4779cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779cb = call %struct.Memory* @routine_shlq__0x1___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779cb)
  store %struct.Memory* %call_4779cb, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rax	 RIP: 4779cf	 Bytes: 3
  %loadMem_4779cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779cf = call %struct.Memory* @routine_addq__r8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779cf)
  store %struct.Memory* %call_4779cf, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %r8	 RIP: 4779d2	 Bytes: 4
  %loadMem_4779d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779d2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779d2)
  store %struct.Memory* %call_4779d2, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 4779d6	 Bytes: 3
  %loadMem_4779d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779d6 = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779d6)
  store %struct.Memory* %call_4779d6, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 4779d9	 Bytes: 3
  %loadMem_4779d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779d9 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779d9)
  store %struct.Memory* %call_4779d9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 4779dc	 Bytes: 3
  %loadMem_4779dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779dc = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779dc)
  store %struct.Memory* %call_4779dc, %struct.Memory** %MEMORY

  ; Code: callq .Scaling_List	 RIP: 4779df	 Bytes: 5
  %loadMem1_4779df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4779df = call %struct.Memory* @routine_callq_.Scaling_List(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4779df, i64 1089, i64 5, i64 5)
  store %struct.Memory* %call1_4779df, %struct.Memory** %MEMORY

  %loadMem2_4779df = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4779df = load i64, i64* %3
  %call2_4779df = call %struct.Memory* @sub_477e20.Scaling_List(%struct.State* %0, i64  %loadPC_4779df, %struct.Memory* %loadMem2_4779df)
  store %struct.Memory* %call2_4779df, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 4779e4	 Bytes: 3
  %loadMem_4779e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779e4 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779e4)
  store %struct.Memory* %call_4779e4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4779e7	 Bytes: 3
  %loadMem_4779e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779e7 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779e7)
  store %struct.Memory* %call_4779e7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_477a60	 RIP: 4779ea	 Bytes: 5
  %loadMem_4779ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779ea = call %struct.Memory* @routine_jmpq_.L_477a60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779ea, i64 118, i64 5)
  store %struct.Memory* %call_4779ea, %struct.Memory** %MEMORY

  br label %block_.L_477a60

  ; Code: .L_4779ef:	 RIP: 4779ef	 Bytes: 0
block_.L_4779ef:

  ; Code: movl $0x40, %edx	 RIP: 4779ef	 Bytes: 5
  %loadMem_4779ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779ef = call %struct.Memory* @routine_movl__0x40___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779ef)
  store %struct.Memory* %call_4779ef, %struct.Memory** %MEMORY

  ; Code: movq $0x6d1f9c, %rax	 RIP: 4779f4	 Bytes: 10
  %loadMem_4779f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779f4 = call %struct.Memory* @routine_movq__0x6d1f9c___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779f4)
  store %struct.Memory* %call_4779f4, %struct.Memory** %MEMORY

  ; Code: movq $0x6f6e20, %rcx	 RIP: 4779fe	 Bytes: 10
  %loadMem_4779fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4779fe = call %struct.Memory* @routine_movq__0x6f6e20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4779fe)
  store %struct.Memory* %call_4779fe, %struct.Memory** %MEMORY

  ; Code: movq $0x721ca0, %rsi	 RIP: 477a08	 Bytes: 10
  %loadMem_477a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a08 = call %struct.Memory* @routine_movq__0x721ca0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a08)
  store %struct.Memory* %call_477a08, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edi	 RIP: 477a12	 Bytes: 3
  %loadMem_477a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a12 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a12)
  store %struct.Memory* %call_477a12, %struct.Memory** %MEMORY

  ; Code: subl $0x6, %edi	 RIP: 477a15	 Bytes: 3
  %loadMem_477a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a15 = call %struct.Memory* @routine_subl__0x6___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a15)
  store %struct.Memory* %call_477a15, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edi	 RIP: 477a18	 Bytes: 2
  %loadMem_477a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a18 = call %struct.Memory* @routine_movl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a18)
  store %struct.Memory* %call_477a18, %struct.Memory** %MEMORY

  ; Code: movl %edi, %r8d	 RIP: 477a1a	 Bytes: 3
  %loadMem_477a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a1a = call %struct.Memory* @routine_movl__edi___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a1a)
  store %struct.Memory* %call_477a1a, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %r8	 RIP: 477a1d	 Bytes: 4
  %loadMem_477a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a1d = call %struct.Memory* @routine_shlq__0x7___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a1d)
  store %struct.Memory* %call_477a1d, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rsi	 RIP: 477a21	 Bytes: 3
  %loadMem_477a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a21 = call %struct.Memory* @routine_addq__r8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a21)
  store %struct.Memory* %call_477a21, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edi	 RIP: 477a24	 Bytes: 3
  %loadMem_477a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a24 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a24)
  store %struct.Memory* %call_477a24, %struct.Memory** %MEMORY

  ; Code: subl $0x6, %edi	 RIP: 477a27	 Bytes: 3
  %loadMem_477a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a27 = call %struct.Memory* @routine_subl__0x6___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a27)
  store %struct.Memory* %call_477a27, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edi	 RIP: 477a2a	 Bytes: 2
  %loadMem_477a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a2a = call %struct.Memory* @routine_movl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a2a)
  store %struct.Memory* %call_477a2a, %struct.Memory** %MEMORY

  ; Code: movl %edi, %r8d	 RIP: 477a2c	 Bytes: 3
  %loadMem_477a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a2c = call %struct.Memory* @routine_movl__edi___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a2c)
  store %struct.Memory* %call_477a2c, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %r8	 RIP: 477a2f	 Bytes: 4
  %loadMem_477a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a2f = call %struct.Memory* @routine_shlq__0x7___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a2f)
  store %struct.Memory* %call_477a2f, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rcx	 RIP: 477a33	 Bytes: 3
  %loadMem_477a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a33 = call %struct.Memory* @routine_addq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a33)
  store %struct.Memory* %call_477a33, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edi	 RIP: 477a36	 Bytes: 3
  %loadMem_477a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a36 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a36)
  store %struct.Memory* %call_477a36, %struct.Memory** %MEMORY

  ; Code: subl $0x6, %edi	 RIP: 477a39	 Bytes: 3
  %loadMem_477a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a39 = call %struct.Memory* @routine_subl__0x6___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a39)
  store %struct.Memory* %call_477a39, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edi	 RIP: 477a3c	 Bytes: 2
  %loadMem_477a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a3c = call %struct.Memory* @routine_movl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a3c)
  store %struct.Memory* %call_477a3c, %struct.Memory** %MEMORY

  ; Code: movl %edi, %r8d	 RIP: 477a3e	 Bytes: 3
  %loadMem_477a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a3e = call %struct.Memory* @routine_movl__edi___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a3e)
  store %struct.Memory* %call_477a3e, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %r8	 RIP: 477a41	 Bytes: 4
  %loadMem_477a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a41 = call %struct.Memory* @routine_shlq__0x1___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a41)
  store %struct.Memory* %call_477a41, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rax	 RIP: 477a45	 Bytes: 3
  %loadMem_477a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a45 = call %struct.Memory* @routine_addq__r8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a45)
  store %struct.Memory* %call_477a45, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %r8	 RIP: 477a48	 Bytes: 4
  %loadMem_477a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a48 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a48)
  store %struct.Memory* %call_477a48, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 477a4c	 Bytes: 3
  %loadMem_477a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a4c = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a4c)
  store %struct.Memory* %call_477a4c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 477a4f	 Bytes: 3
  %loadMem_477a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a4f = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a4f)
  store %struct.Memory* %call_477a4f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 477a52	 Bytes: 3
  %loadMem_477a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a52 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a52)
  store %struct.Memory* %call_477a52, %struct.Memory** %MEMORY

  ; Code: callq .Scaling_List	 RIP: 477a55	 Bytes: 5
  %loadMem1_477a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477a55 = call %struct.Memory* @routine_callq_.Scaling_List(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477a55, i64 971, i64 5, i64 5)
  store %struct.Memory* %call1_477a55, %struct.Memory** %MEMORY

  %loadMem2_477a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477a55 = load i64, i64* %3
  %call2_477a55 = call %struct.Memory* @sub_477e20.Scaling_List(%struct.State* %0, i64  %loadPC_477a55, %struct.Memory* %loadMem2_477a55)
  store %struct.Memory* %call2_477a55, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477a5a	 Bytes: 3
  %loadMem_477a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a5a = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a5a)
  store %struct.Memory* %call_477a5a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477a5d	 Bytes: 3
  %loadMem_477a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a5d = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a5d)
  store %struct.Memory* %call_477a5d, %struct.Memory** %MEMORY

  ; Code: .L_477a60:	 RIP: 477a60	 Bytes: 0
  br label %block_.L_477a60
block_.L_477a60:

  ; Code: jmpq .L_477a65	 RIP: 477a60	 Bytes: 5
  %loadMem_477a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a60 = call %struct.Memory* @routine_jmpq_.L_477a65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a60, i64 5, i64 5)
  store %struct.Memory* %call_477a60, %struct.Memory** %MEMORY

  br label %block_.L_477a65

  ; Code: .L_477a65:	 RIP: 477a65	 Bytes: 0
block_.L_477a65:

  ; Code: jmpq .L_477a6a	 RIP: 477a65	 Bytes: 5
  %loadMem_477a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a65 = call %struct.Memory* @routine_jmpq_.L_477a6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a65, i64 5, i64 5)
  store %struct.Memory* %call_477a65, %struct.Memory** %MEMORY

  br label %block_.L_477a6a

  ; Code: .L_477a6a:	 RIP: 477a6a	 Bytes: 0
block_.L_477a6a:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 477a6a	 Bytes: 3
  %loadMem_477a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a6a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a6a)
  store %struct.Memory* %call_477a6a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 477a6d	 Bytes: 3
  %loadMem_477a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a6d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a6d)
  store %struct.Memory* %call_477a6d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 477a70	 Bytes: 3
  %loadMem_477a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a70 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a70)
  store %struct.Memory* %call_477a70, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47793a	 RIP: 477a73	 Bytes: 5
  %loadMem_477a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a73 = call %struct.Memory* @routine_jmpq_.L_47793a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a73, i64 -313, i64 5)
  store %struct.Memory* %call_477a73, %struct.Memory** %MEMORY

  br label %block_.L_47793a

  ; Code: .L_477a78:	 RIP: 477a78	 Bytes: 0
block_.L_477a78:

  ; Code: jmpq .L_477a7d	 RIP: 477a78	 Bytes: 5
  %loadMem_477a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a78 = call %struct.Memory* @routine_jmpq_.L_477a7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a78, i64 5, i64 5)
  store %struct.Memory* %call_477a78, %struct.Memory** %MEMORY

  br label %block_.L_477a7d

  ; Code: .L_477a7d:	 RIP: 477a7d	 Bytes: 0
block_.L_477a7d:

  ; Code: jmpq .L_477a82	 RIP: 477a7d	 Bytes: 5
  %loadMem_477a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a7d = call %struct.Memory* @routine_jmpq_.L_477a82(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a7d, i64 5, i64 5)
  store %struct.Memory* %call_477a7d, %struct.Memory** %MEMORY

  br label %block_.L_477a82

  ; Code: .L_477a82:	 RIP: 477a82	 Bytes: 0
block_.L_477a82:

  ; Code: movq $0x4c25d9, %rdi	 RIP: 477a82	 Bytes: 10
  %loadMem_477a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a82 = call %struct.Memory* @routine_movq__0x4c25d9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a82)
  store %struct.Memory* %call_477a82, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 477a8c	 Bytes: 4
  %loadMem_477a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a8c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a8c)
  store %struct.Memory* %call_477a8c, %struct.Memory** %MEMORY

  ; Code: movl 0x50(%rax), %esi	 RIP: 477a90	 Bytes: 3
  %loadMem_477a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a90 = call %struct.Memory* @routine_movl_0x50__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a90)
  store %struct.Memory* %call_477a90, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477a93	 Bytes: 4
  %loadMem_477a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a93 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a93)
  store %struct.Memory* %call_477a93, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 477a97	 Bytes: 5
  %loadMem1_477a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477a97 = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477a97, i64 216073, i64 5, i64 5)
  store %struct.Memory* %call1_477a97, %struct.Memory** %MEMORY

  %loadMem2_477a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477a97 = load i64, i64* %3
  %call2_477a97 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_477a97, %struct.Memory* %loadMem2_477a97)
  store %struct.Memory* %call2_477a97, %struct.Memory** %MEMORY

  ; Code: movq $0x4c25f8, %rdi	 RIP: 477a9c	 Bytes: 10
  %loadMem_477a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477a9c = call %struct.Memory* @routine_movq__0x4c25f8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477a9c)
  store %struct.Memory* %call_477a9c, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477aa6	 Bytes: 3
  %loadMem_477aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477aa6 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477aa6)
  store %struct.Memory* %call_477aa6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477aa9	 Bytes: 3
  %loadMem_477aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477aa9 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477aa9)
  store %struct.Memory* %call_477aa9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477aac	 Bytes: 4
  %loadMem_477aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477aac = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477aac)
  store %struct.Memory* %call_477aac, %struct.Memory** %MEMORY

  ; Code: movl 0x54(%rdx), %esi	 RIP: 477ab0	 Bytes: 3
  %loadMem_477ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ab0 = call %struct.Memory* @routine_movl_0x54__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ab0)
  store %struct.Memory* %call_477ab0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477ab3	 Bytes: 4
  %loadMem_477ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ab3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ab3)
  store %struct.Memory* %call_477ab3, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 477ab7	 Bytes: 5
  %loadMem1_477ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477ab7 = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477ab7, i64 216041, i64 5, i64 5)
  store %struct.Memory* %call1_477ab7, %struct.Memory** %MEMORY

  %loadMem2_477ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477ab7 = load i64, i64* %3
  %call2_477ab7 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_477ab7, %struct.Memory* %loadMem2_477ab7)
  store %struct.Memory* %call2_477ab7, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477abc	 Bytes: 3
  %loadMem_477abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477abc = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477abc)
  store %struct.Memory* %call_477abc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477abf	 Bytes: 3
  %loadMem_477abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477abf = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477abf)
  store %struct.Memory* %call_477abf, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477ac2	 Bytes: 4
  %loadMem_477ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ac2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ac2)
  store %struct.Memory* %call_477ac2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x54(%rdx)	 RIP: 477ac6	 Bytes: 4
  %loadMem_477ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ac6 = call %struct.Memory* @routine_cmpl__0x0__0x54__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ac6)
  store %struct.Memory* %call_477ac6, %struct.Memory** %MEMORY

  ; Code: jne .L_477af5	 RIP: 477aca	 Bytes: 6
  %loadMem_477aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477aca = call %struct.Memory* @routine_jne_.L_477af5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477aca, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_477aca, %struct.Memory** %MEMORY

  %loadBr_477aca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477aca = icmp eq i8 %loadBr_477aca, 1
  br i1 %cmpBr_477aca, label %block_.L_477af5, label %block_477ad0

block_477ad0:
  ; Code: movq $0x4c2610, %rdi	 RIP: 477ad0	 Bytes: 10
  %loadMem_477ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ad0 = call %struct.Memory* @routine_movq__0x4c2610___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ad0)
  store %struct.Memory* %call_477ad0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 477ada	 Bytes: 4
  %loadMem_477ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ada = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ada)
  store %struct.Memory* %call_477ada, %struct.Memory** %MEMORY

  ; Code: movl 0x58(%rax), %esi	 RIP: 477ade	 Bytes: 3
  %loadMem_477ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ade = call %struct.Memory* @routine_movl_0x58__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ade)
  store %struct.Memory* %call_477ade, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477ae1	 Bytes: 4
  %loadMem_477ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ae1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ae1)
  store %struct.Memory* %call_477ae1, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 477ae5	 Bytes: 5
  %loadMem1_477ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477ae5 = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477ae5, i64 215995, i64 5, i64 5)
  store %struct.Memory* %call1_477ae5, %struct.Memory** %MEMORY

  %loadMem2_477ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477ae5 = load i64, i64* %3
  %call2_477ae5 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_477ae5, %struct.Memory* %loadMem2_477ae5)
  store %struct.Memory* %call2_477ae5, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477aea	 Bytes: 3
  %loadMem_477aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477aea = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477aea)
  store %struct.Memory* %call_477aea, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477aed	 Bytes: 3
  %loadMem_477aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477aed = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477aed)
  store %struct.Memory* %call_477aed, %struct.Memory** %MEMORY

  ; Code: jmpq .L_477bd8	 RIP: 477af0	 Bytes: 5
  %loadMem_477af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477af0 = call %struct.Memory* @routine_jmpq_.L_477bd8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477af0, i64 232, i64 5)
  store %struct.Memory* %call_477af0, %struct.Memory** %MEMORY

  br label %block_.L_477bd8

  ; Code: .L_477af5:	 RIP: 477af5	 Bytes: 0
block_.L_477af5:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 477af5	 Bytes: 4
  %loadMem_477af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477af5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477af5)
  store %struct.Memory* %call_477af5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x54(%rax)	 RIP: 477af9	 Bytes: 4
  %loadMem_477af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477af9 = call %struct.Memory* @routine_cmpl__0x1__0x54__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477af9)
  store %struct.Memory* %call_477af9, %struct.Memory** %MEMORY

  ; Code: jne .L_477bd3	 RIP: 477afd	 Bytes: 6
  %loadMem_477afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477afd = call %struct.Memory* @routine_jne_.L_477bd3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477afd, i8* %BRANCH_TAKEN, i64 214, i64 6, i64 6)
  store %struct.Memory* %call_477afd, %struct.Memory** %MEMORY

  %loadBr_477afd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477afd = icmp eq i8 %loadBr_477afd, 1
  br i1 %cmpBr_477afd, label %block_.L_477bd3, label %block_477b03

block_477b03:
  ; Code: movq $0x4c2637, %rdi	 RIP: 477b03	 Bytes: 10
  %loadMem_477b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b03 = call %struct.Memory* @routine_movq__0x4c2637___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b03)
  store %struct.Memory* %call_477b03, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 477b0d	 Bytes: 4
  %loadMem_477b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b0d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b0d)
  store %struct.Memory* %call_477b0d, %struct.Memory** %MEMORY

  ; Code: movl 0x5c(%rax), %esi	 RIP: 477b11	 Bytes: 3
  %loadMem_477b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b11 = call %struct.Memory* @routine_movl_0x5c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b11)
  store %struct.Memory* %call_477b11, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477b14	 Bytes: 4
  %loadMem_477b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b14 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b14)
  store %struct.Memory* %call_477b14, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 477b18	 Bytes: 5
  %loadMem1_477b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477b18 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477b18, i64 217064, i64 5, i64 5)
  store %struct.Memory* %call1_477b18, %struct.Memory** %MEMORY

  %loadMem2_477b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477b18 = load i64, i64* %3
  %call2_477b18 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_477b18, %struct.Memory* %loadMem2_477b18)
  store %struct.Memory* %call2_477b18, %struct.Memory** %MEMORY

  ; Code: movq $0x4c265d, %rdi	 RIP: 477b1d	 Bytes: 10
  %loadMem_477b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b1d = call %struct.Memory* @routine_movq__0x4c265d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b1d)
  store %struct.Memory* %call_477b1d, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477b27	 Bytes: 3
  %loadMem_477b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b27 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b27)
  store %struct.Memory* %call_477b27, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477b2a	 Bytes: 3
  %loadMem_477b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b2a = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b2a)
  store %struct.Memory* %call_477b2a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477b2d	 Bytes: 4
  %loadMem_477b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b2d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b2d)
  store %struct.Memory* %call_477b2d, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdx), %esi	 RIP: 477b31	 Bytes: 3
  %loadMem_477b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b31 = call %struct.Memory* @routine_movl_0x60__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b31)
  store %struct.Memory* %call_477b31, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477b34	 Bytes: 4
  %loadMem_477b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b34 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b34)
  store %struct.Memory* %call_477b34, %struct.Memory** %MEMORY

  ; Code: callq .se_v	 RIP: 477b38	 Bytes: 5
  %loadMem1_477b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477b38 = call %struct.Memory* @routine_callq_.se_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477b38, i64 216712, i64 5, i64 5)
  store %struct.Memory* %call1_477b38, %struct.Memory** %MEMORY

  %loadMem2_477b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477b38 = load i64, i64* %3
  %call2_477b38 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64  %loadPC_477b38, %struct.Memory* %loadMem2_477b38)
  store %struct.Memory* %call2_477b38, %struct.Memory** %MEMORY

  ; Code: movq $0x4c2679, %rdi	 RIP: 477b3d	 Bytes: 10
  %loadMem_477b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b3d = call %struct.Memory* @routine_movq__0x4c2679___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b3d)
  store %struct.Memory* %call_477b3d, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477b47	 Bytes: 3
  %loadMem_477b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b47 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b47)
  store %struct.Memory* %call_477b47, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477b4a	 Bytes: 3
  %loadMem_477b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b4a = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b4a)
  store %struct.Memory* %call_477b4a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477b4d	 Bytes: 4
  %loadMem_477b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b4d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b4d)
  store %struct.Memory* %call_477b4d, %struct.Memory** %MEMORY

  ; Code: movl 0x64(%rdx), %esi	 RIP: 477b51	 Bytes: 3
  %loadMem_477b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b51 = call %struct.Memory* @routine_movl_0x64__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b51)
  store %struct.Memory* %call_477b51, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477b54	 Bytes: 4
  %loadMem_477b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b54 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b54)
  store %struct.Memory* %call_477b54, %struct.Memory** %MEMORY

  ; Code: callq .se_v	 RIP: 477b58	 Bytes: 5
  %loadMem1_477b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477b58 = call %struct.Memory* @routine_callq_.se_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477b58, i64 216680, i64 5, i64 5)
  store %struct.Memory* %call1_477b58, %struct.Memory** %MEMORY

  %loadMem2_477b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477b58 = load i64, i64* %3
  %call2_477b58 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64  %loadPC_477b58, %struct.Memory* %loadMem2_477b58)
  store %struct.Memory* %call2_477b58, %struct.Memory** %MEMORY

  ; Code: movq $0x4c269d, %rdi	 RIP: 477b5d	 Bytes: 10
  %loadMem_477b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b5d = call %struct.Memory* @routine_movq__0x4c269d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b5d)
  store %struct.Memory* %call_477b5d, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477b67	 Bytes: 3
  %loadMem_477b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b67 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b67)
  store %struct.Memory* %call_477b67, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477b6a	 Bytes: 3
  %loadMem_477b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b6a = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b6a)
  store %struct.Memory* %call_477b6a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477b6d	 Bytes: 4
  %loadMem_477b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b6d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b6d)
  store %struct.Memory* %call_477b6d, %struct.Memory** %MEMORY

  ; Code: movl 0x68(%rdx), %esi	 RIP: 477b71	 Bytes: 3
  %loadMem_477b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b71 = call %struct.Memory* @routine_movl_0x68__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b71)
  store %struct.Memory* %call_477b71, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477b74	 Bytes: 4
  %loadMem_477b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b74 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b74)
  store %struct.Memory* %call_477b74, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 477b78	 Bytes: 5
  %loadMem1_477b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477b78 = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477b78, i64 215848, i64 5, i64 5)
  store %struct.Memory* %call1_477b78, %struct.Memory** %MEMORY

  %loadMem2_477b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477b78 = load i64, i64* %3
  %call2_477b78 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_477b78, %struct.Memory* %loadMem2_477b78)
  store %struct.Memory* %call2_477b78, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477b7d	 Bytes: 3
  %loadMem_477b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b7d = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b7d)
  store %struct.Memory* %call_477b7d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477b80	 Bytes: 3
  %loadMem_477b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b80 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b80)
  store %struct.Memory* %call_477b80, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 477b83	 Bytes: 7
  %loadMem_477b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b83 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b83)
  store %struct.Memory* %call_477b83, %struct.Memory** %MEMORY

  ; Code: .L_477b8a:	 RIP: 477b8a	 Bytes: 0
  br label %block_.L_477b8a
block_.L_477b8a:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 477b8a	 Bytes: 3
  %loadMem_477b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b8a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b8a)
  store %struct.Memory* %call_477b8a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 477b8d	 Bytes: 4
  %loadMem_477b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b8d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b8d)
  store %struct.Memory* %call_477b8d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x68(%rcx), %eax	 RIP: 477b91	 Bytes: 3
  %loadMem_477b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b91 = call %struct.Memory* @routine_cmpl_0x68__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b91)
  store %struct.Memory* %call_477b91, %struct.Memory** %MEMORY

  ; Code: jae .L_477bce	 RIP: 477b94	 Bytes: 6
  %loadMem_477b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b94 = call %struct.Memory* @routine_jae_.L_477bce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b94, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_477b94, %struct.Memory** %MEMORY

  %loadBr_477b94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477b94 = icmp eq i8 %loadBr_477b94, 1
  br i1 %cmpBr_477b94, label %block_.L_477bce, label %block_477b9a

block_477b9a:
  ; Code: movq $0x4c26c8, %rdi	 RIP: 477b9a	 Bytes: 10
  %loadMem_477b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477b9a = call %struct.Memory* @routine_movq__0x4c26c8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477b9a)
  store %struct.Memory* %call_477b9a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 477ba4	 Bytes: 4
  %loadMem_477ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ba4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ba4)
  store %struct.Memory* %call_477ba4, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 477ba8	 Bytes: 3
  %loadMem_477ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ba8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ba8)
  store %struct.Memory* %call_477ba8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 477bab	 Bytes: 2
  %loadMem_477bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477bab = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477bab)
  store %struct.Memory* %call_477bab, %struct.Memory** %MEMORY

  ; Code: movl 0x6c(%rax,%rdx,4), %esi	 RIP: 477bad	 Bytes: 4
  %loadMem_477bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477bad = call %struct.Memory* @routine_movl_0x6c__rax__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477bad)
  store %struct.Memory* %call_477bad, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477bb1	 Bytes: 4
  %loadMem_477bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477bb1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477bb1)
  store %struct.Memory* %call_477bb1, %struct.Memory** %MEMORY

  ; Code: callq .se_v	 RIP: 477bb5	 Bytes: 5
  %loadMem1_477bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477bb5 = call %struct.Memory* @routine_callq_.se_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477bb5, i64 216587, i64 5, i64 5)
  store %struct.Memory* %call1_477bb5, %struct.Memory** %MEMORY

  %loadMem2_477bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477bb5 = load i64, i64* %3
  %call2_477bb5 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64  %loadPC_477bb5, %struct.Memory* %loadMem2_477bb5)
  store %struct.Memory* %call2_477bb5, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477bba	 Bytes: 3
  %loadMem_477bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477bba = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477bba)
  store %struct.Memory* %call_477bba, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477bbd	 Bytes: 3
  %loadMem_477bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477bbd = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477bbd)
  store %struct.Memory* %call_477bbd, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 477bc0	 Bytes: 3
  %loadMem_477bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477bc0 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477bc0)
  store %struct.Memory* %call_477bc0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 477bc3	 Bytes: 3
  %loadMem_477bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477bc3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477bc3)
  store %struct.Memory* %call_477bc3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 477bc6	 Bytes: 3
  %loadMem_477bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477bc6 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477bc6)
  store %struct.Memory* %call_477bc6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_477b8a	 RIP: 477bc9	 Bytes: 5
  %loadMem_477bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477bc9 = call %struct.Memory* @routine_jmpq_.L_477b8a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477bc9, i64 -63, i64 5)
  store %struct.Memory* %call_477bc9, %struct.Memory** %MEMORY

  br label %block_.L_477b8a

  ; Code: .L_477bce:	 RIP: 477bce	 Bytes: 0
block_.L_477bce:

  ; Code: jmpq .L_477bd3	 RIP: 477bce	 Bytes: 5
  %loadMem_477bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477bce = call %struct.Memory* @routine_jmpq_.L_477bd3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477bce, i64 5, i64 5)
  store %struct.Memory* %call_477bce, %struct.Memory** %MEMORY

  br label %block_.L_477bd3

  ; Code: .L_477bd3:	 RIP: 477bd3	 Bytes: 0
block_.L_477bd3:

  ; Code: jmpq .L_477bd8	 RIP: 477bd3	 Bytes: 5
  %loadMem_477bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477bd3 = call %struct.Memory* @routine_jmpq_.L_477bd8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477bd3, i64 5, i64 5)
  store %struct.Memory* %call_477bd3, %struct.Memory** %MEMORY

  br label %block_.L_477bd8

  ; Code: .L_477bd8:	 RIP: 477bd8	 Bytes: 0
block_.L_477bd8:

  ; Code: movq $0x4c26e2, %rdi	 RIP: 477bd8	 Bytes: 10
  %loadMem_477bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477bd8 = call %struct.Memory* @routine_movq__0x4c26e2___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477bd8)
  store %struct.Memory* %call_477bd8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 477be2	 Bytes: 4
  %loadMem_477be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477be2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477be2)
  store %struct.Memory* %call_477be2, %struct.Memory** %MEMORY

  ; Code: movl 0x46c(%rax), %esi	 RIP: 477be6	 Bytes: 6
  %loadMem_477be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477be6 = call %struct.Memory* @routine_movl_0x46c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477be6)
  store %struct.Memory* %call_477be6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477bec	 Bytes: 4
  %loadMem_477bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477bec = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477bec)
  store %struct.Memory* %call_477bec, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 477bf0	 Bytes: 5
  %loadMem1_477bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477bf0 = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477bf0, i64 215728, i64 5, i64 5)
  store %struct.Memory* %call1_477bf0, %struct.Memory** %MEMORY

  %loadMem2_477bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477bf0 = load i64, i64* %3
  %call2_477bf0 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_477bf0, %struct.Memory* %loadMem2_477bf0)
  store %struct.Memory* %call2_477bf0, %struct.Memory** %MEMORY

  ; Code: movq $0x4c26f6, %rdi	 RIP: 477bf5	 Bytes: 10
  %loadMem_477bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477bf5 = call %struct.Memory* @routine_movq__0x4c26f6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477bf5)
  store %struct.Memory* %call_477bf5, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477bff	 Bytes: 3
  %loadMem_477bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477bff = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477bff)
  store %struct.Memory* %call_477bff, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477c02	 Bytes: 3
  %loadMem_477c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c02 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c02)
  store %struct.Memory* %call_477c02, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477c05	 Bytes: 4
  %loadMem_477c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c05 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c05)
  store %struct.Memory* %call_477c05, %struct.Memory** %MEMORY

  ; Code: movl 0x470(%rdx), %esi	 RIP: 477c09	 Bytes: 6
  %loadMem_477c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c09 = call %struct.Memory* @routine_movl_0x470__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c09)
  store %struct.Memory* %call_477c09, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477c0f	 Bytes: 4
  %loadMem_477c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c0f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c0f)
  store %struct.Memory* %call_477c0f, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 477c13	 Bytes: 5
  %loadMem1_477c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477c13 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477c13, i64 216813, i64 5, i64 5)
  store %struct.Memory* %call1_477c13, %struct.Memory** %MEMORY

  %loadMem2_477c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477c13 = load i64, i64* %3
  %call2_477c13 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_477c13, %struct.Memory* %loadMem2_477c13)
  store %struct.Memory* %call2_477c13, %struct.Memory** %MEMORY

  ; Code: movq $0x4c2720, %rdi	 RIP: 477c18	 Bytes: 10
  %loadMem_477c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c18 = call %struct.Memory* @routine_movq__0x4c2720___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c18)
  store %struct.Memory* %call_477c18, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477c22	 Bytes: 3
  %loadMem_477c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c22 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c22)
  store %struct.Memory* %call_477c22, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477c25	 Bytes: 3
  %loadMem_477c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c25 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c25)
  store %struct.Memory* %call_477c25, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477c28	 Bytes: 4
  %loadMem_477c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c28 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c28)
  store %struct.Memory* %call_477c28, %struct.Memory** %MEMORY

  ; Code: movl 0x474(%rdx), %esi	 RIP: 477c2c	 Bytes: 6
  %loadMem_477c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c2c = call %struct.Memory* @routine_movl_0x474__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c2c)
  store %struct.Memory* %call_477c2c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477c32	 Bytes: 4
  %loadMem_477c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c32 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c32)
  store %struct.Memory* %call_477c32, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 477c36	 Bytes: 5
  %loadMem1_477c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477c36 = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477c36, i64 215658, i64 5, i64 5)
  store %struct.Memory* %call1_477c36, %struct.Memory** %MEMORY

  %loadMem2_477c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477c36 = load i64, i64* %3
  %call2_477c36 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_477c36, %struct.Memory* %loadMem2_477c36)
  store %struct.Memory* %call2_477c36, %struct.Memory** %MEMORY

  ; Code: movq $0x4c273d, %rdi	 RIP: 477c3b	 Bytes: 10
  %loadMem_477c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c3b = call %struct.Memory* @routine_movq__0x4c273d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c3b)
  store %struct.Memory* %call_477c3b, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477c45	 Bytes: 3
  %loadMem_477c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c45 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c45)
  store %struct.Memory* %call_477c45, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477c48	 Bytes: 3
  %loadMem_477c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c48 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c48)
  store %struct.Memory* %call_477c48, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477c4b	 Bytes: 4
  %loadMem_477c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c4b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c4b)
  store %struct.Memory* %call_477c4b, %struct.Memory** %MEMORY

  ; Code: movl 0x478(%rdx), %esi	 RIP: 477c4f	 Bytes: 6
  %loadMem_477c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c4f = call %struct.Memory* @routine_movl_0x478__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c4f)
  store %struct.Memory* %call_477c4f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477c55	 Bytes: 4
  %loadMem_477c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c55 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c55)
  store %struct.Memory* %call_477c55, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 477c59	 Bytes: 5
  %loadMem1_477c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477c59 = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477c59, i64 215623, i64 5, i64 5)
  store %struct.Memory* %call1_477c59, %struct.Memory** %MEMORY

  %loadMem2_477c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477c59 = load i64, i64* %3
  %call2_477c59 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_477c59, %struct.Memory* %loadMem2_477c59)
  store %struct.Memory* %call2_477c59, %struct.Memory** %MEMORY

  ; Code: movq $0x4c2761, %rdi	 RIP: 477c5e	 Bytes: 10
  %loadMem_477c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c5e = call %struct.Memory* @routine_movq__0x4c2761___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c5e)
  store %struct.Memory* %call_477c5e, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477c68	 Bytes: 3
  %loadMem_477c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c68 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c68)
  store %struct.Memory* %call_477c68, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477c6b	 Bytes: 3
  %loadMem_477c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c6b = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c6b)
  store %struct.Memory* %call_477c6b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477c6e	 Bytes: 4
  %loadMem_477c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c6e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c6e)
  store %struct.Memory* %call_477c6e, %struct.Memory** %MEMORY

  ; Code: movl 0x47c(%rdx), %esi	 RIP: 477c72	 Bytes: 6
  %loadMem_477c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c72 = call %struct.Memory* @routine_movl_0x47c__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c72)
  store %struct.Memory* %call_477c72, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477c78	 Bytes: 4
  %loadMem_477c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c78 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c78)
  store %struct.Memory* %call_477c78, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 477c7c	 Bytes: 5
  %loadMem1_477c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477c7c = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477c7c, i64 216708, i64 5, i64 5)
  store %struct.Memory* %call1_477c7c, %struct.Memory** %MEMORY

  %loadMem2_477c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477c7c = load i64, i64* %3
  %call2_477c7c = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_477c7c, %struct.Memory* %loadMem2_477c7c)
  store %struct.Memory* %call2_477c7c, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477c81	 Bytes: 3
  %loadMem_477c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c81 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c81)
  store %struct.Memory* %call_477c81, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477c84	 Bytes: 3
  %loadMem_477c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c84 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c84)
  store %struct.Memory* %call_477c84, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477c87	 Bytes: 4
  %loadMem_477c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c87 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c87)
  store %struct.Memory* %call_477c87, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x47c(%rdx)	 RIP: 477c8b	 Bytes: 7
  %loadMem_477c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c8b = call %struct.Memory* @routine_cmpl__0x0__0x47c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c8b)
  store %struct.Memory* %call_477c8b, %struct.Memory** %MEMORY

  ; Code: jne .L_477cbb	 RIP: 477c92	 Bytes: 6
  %loadMem_477c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c92 = call %struct.Memory* @routine_jne_.L_477cbb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c92, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_477c92, %struct.Memory** %MEMORY

  %loadBr_477c92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477c92 = icmp eq i8 %loadBr_477c92, 1
  br i1 %cmpBr_477c92, label %block_.L_477cbb, label %block_477c98

block_477c98:
  ; Code: movq $0x4c277a, %rdi	 RIP: 477c98	 Bytes: 10
  %loadMem_477c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477c98 = call %struct.Memory* @routine_movq__0x4c277a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477c98)
  store %struct.Memory* %call_477c98, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 477ca2	 Bytes: 4
  %loadMem_477ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ca2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ca2)
  store %struct.Memory* %call_477ca2, %struct.Memory** %MEMORY

  ; Code: movl 0x480(%rax), %esi	 RIP: 477ca6	 Bytes: 6
  %loadMem_477ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ca6 = call %struct.Memory* @routine_movl_0x480__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ca6)
  store %struct.Memory* %call_477ca6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477cac	 Bytes: 4
  %loadMem_477cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477cac = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477cac)
  store %struct.Memory* %call_477cac, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 477cb0	 Bytes: 5
  %loadMem1_477cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477cb0 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477cb0, i64 216656, i64 5, i64 5)
  store %struct.Memory* %call1_477cb0, %struct.Memory** %MEMORY

  %loadMem2_477cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477cb0 = load i64, i64* %3
  %call2_477cb0 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_477cb0, %struct.Memory* %loadMem2_477cb0)
  store %struct.Memory* %call2_477cb0, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477cb5	 Bytes: 3
  %loadMem_477cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477cb5 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477cb5)
  store %struct.Memory* %call_477cb5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477cb8	 Bytes: 3
  %loadMem_477cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477cb8 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477cb8)
  store %struct.Memory* %call_477cb8, %struct.Memory** %MEMORY

  ; Code: .L_477cbb:	 RIP: 477cbb	 Bytes: 0
  br label %block_.L_477cbb
block_.L_477cbb:

  ; Code: movq $0x4c279c, %rdi	 RIP: 477cbb	 Bytes: 10
  %loadMem_477cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477cbb = call %struct.Memory* @routine_movq__0x4c279c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477cbb)
  store %struct.Memory* %call_477cbb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 477cc5	 Bytes: 4
  %loadMem_477cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477cc5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477cc5)
  store %struct.Memory* %call_477cc5, %struct.Memory** %MEMORY

  ; Code: movl 0x484(%rax), %esi	 RIP: 477cc9	 Bytes: 6
  %loadMem_477cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477cc9 = call %struct.Memory* @routine_movl_0x484__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477cc9)
  store %struct.Memory* %call_477cc9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477ccf	 Bytes: 4
  %loadMem_477ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ccf = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ccf)
  store %struct.Memory* %call_477ccf, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 477cd3	 Bytes: 5
  %loadMem1_477cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477cd3 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477cd3, i64 216621, i64 5, i64 5)
  store %struct.Memory* %call1_477cd3, %struct.Memory** %MEMORY

  %loadMem2_477cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477cd3 = load i64, i64* %3
  %call2_477cd3 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_477cd3, %struct.Memory* %loadMem2_477cd3)
  store %struct.Memory* %call2_477cd3, %struct.Memory** %MEMORY

  ; Code: movq $0x4c27bb, %rdi	 RIP: 477cd8	 Bytes: 10
  %loadMem_477cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477cd8 = call %struct.Memory* @routine_movq__0x4c27bb___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477cd8)
  store %struct.Memory* %call_477cd8, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477ce2	 Bytes: 3
  %loadMem_477ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ce2 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ce2)
  store %struct.Memory* %call_477ce2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477ce5	 Bytes: 3
  %loadMem_477ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ce5 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ce5)
  store %struct.Memory* %call_477ce5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477ce8	 Bytes: 4
  %loadMem_477ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ce8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ce8)
  store %struct.Memory* %call_477ce8, %struct.Memory** %MEMORY

  ; Code: movl 0x488(%rdx), %esi	 RIP: 477cec	 Bytes: 6
  %loadMem_477cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477cec = call %struct.Memory* @routine_movl_0x488__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477cec)
  store %struct.Memory* %call_477cec, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477cf2	 Bytes: 4
  %loadMem_477cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477cf2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477cf2)
  store %struct.Memory* %call_477cf2, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 477cf6	 Bytes: 5
  %loadMem1_477cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477cf6 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477cf6, i64 216586, i64 5, i64 5)
  store %struct.Memory* %call1_477cf6, %struct.Memory** %MEMORY

  %loadMem2_477cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477cf6 = load i64, i64* %3
  %call2_477cf6 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_477cf6, %struct.Memory* %loadMem2_477cf6)
  store %struct.Memory* %call2_477cf6, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477cfb	 Bytes: 3
  %loadMem_477cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477cfb = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477cfb)
  store %struct.Memory* %call_477cfb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477cfe	 Bytes: 3
  %loadMem_477cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477cfe = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477cfe)
  store %struct.Memory* %call_477cfe, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477d01	 Bytes: 4
  %loadMem_477d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d01 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d01)
  store %struct.Memory* %call_477d01, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x488(%rdx)	 RIP: 477d05	 Bytes: 7
  %loadMem_477d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d05 = call %struct.Memory* @routine_cmpl__0x0__0x488__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d05)
  store %struct.Memory* %call_477d05, %struct.Memory** %MEMORY

  ; Code: je .L_477d9e	 RIP: 477d0c	 Bytes: 6
  %loadMem_477d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d0c = call %struct.Memory* @routine_je_.L_477d9e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d0c, i8* %BRANCH_TAKEN, i64 146, i64 6, i64 6)
  store %struct.Memory* %call_477d0c, %struct.Memory** %MEMORY

  %loadBr_477d0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477d0c = icmp eq i8 %loadBr_477d0c, 1
  br i1 %cmpBr_477d0c, label %block_.L_477d9e, label %block_477d12

block_477d12:
  ; Code: movq $0x4c27d4, %rdi	 RIP: 477d12	 Bytes: 10
  %loadMem_477d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d12 = call %struct.Memory* @routine_movq__0x4c27d4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d12)
  store %struct.Memory* %call_477d12, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 477d1c	 Bytes: 4
  %loadMem_477d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d1c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d1c)
  store %struct.Memory* %call_477d1c, %struct.Memory** %MEMORY

  ; Code: movl 0x48c(%rax), %esi	 RIP: 477d20	 Bytes: 6
  %loadMem_477d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d20 = call %struct.Memory* @routine_movl_0x48c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d20)
  store %struct.Memory* %call_477d20, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477d26	 Bytes: 4
  %loadMem_477d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d26 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d26)
  store %struct.Memory* %call_477d26, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 477d2a	 Bytes: 5
  %loadMem1_477d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477d2a = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477d2a, i64 215414, i64 5, i64 5)
  store %struct.Memory* %call1_477d2a, %struct.Memory** %MEMORY

  %loadMem2_477d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477d2a = load i64, i64* %3
  %call2_477d2a = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_477d2a, %struct.Memory* %loadMem2_477d2a)
  store %struct.Memory* %call2_477d2a, %struct.Memory** %MEMORY

  ; Code: movq $0x4c27f9, %rdi	 RIP: 477d2f	 Bytes: 10
  %loadMem_477d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d2f = call %struct.Memory* @routine_movq__0x4c27f9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d2f)
  store %struct.Memory* %call_477d2f, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477d39	 Bytes: 3
  %loadMem_477d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d39 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d39)
  store %struct.Memory* %call_477d39, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477d3c	 Bytes: 3
  %loadMem_477d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d3c = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d3c)
  store %struct.Memory* %call_477d3c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477d3f	 Bytes: 4
  %loadMem_477d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d3f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d3f)
  store %struct.Memory* %call_477d3f, %struct.Memory** %MEMORY

  ; Code: movl 0x490(%rdx), %esi	 RIP: 477d43	 Bytes: 6
  %loadMem_477d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d43 = call %struct.Memory* @routine_movl_0x490__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d43)
  store %struct.Memory* %call_477d43, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477d49	 Bytes: 4
  %loadMem_477d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d49 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d49)
  store %struct.Memory* %call_477d49, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 477d4d	 Bytes: 5
  %loadMem1_477d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477d4d = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477d4d, i64 215379, i64 5, i64 5)
  store %struct.Memory* %call1_477d4d, %struct.Memory** %MEMORY

  %loadMem2_477d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477d4d = load i64, i64* %3
  %call2_477d4d = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_477d4d, %struct.Memory* %loadMem2_477d4d)
  store %struct.Memory* %call2_477d4d, %struct.Memory** %MEMORY

  ; Code: movq $0x4c281f, %rdi	 RIP: 477d52	 Bytes: 10
  %loadMem_477d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d52 = call %struct.Memory* @routine_movq__0x4c281f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d52)
  store %struct.Memory* %call_477d52, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477d5c	 Bytes: 3
  %loadMem_477d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d5c = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d5c)
  store %struct.Memory* %call_477d5c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477d5f	 Bytes: 3
  %loadMem_477d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d5f = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d5f)
  store %struct.Memory* %call_477d5f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477d62	 Bytes: 4
  %loadMem_477d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d62 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d62)
  store %struct.Memory* %call_477d62, %struct.Memory** %MEMORY

  ; Code: movl 0x494(%rdx), %esi	 RIP: 477d66	 Bytes: 6
  %loadMem_477d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d66 = call %struct.Memory* @routine_movl_0x494__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d66)
  store %struct.Memory* %call_477d66, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477d6c	 Bytes: 4
  %loadMem_477d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d6c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d6c)
  store %struct.Memory* %call_477d6c, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 477d70	 Bytes: 5
  %loadMem1_477d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477d70 = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477d70, i64 215344, i64 5, i64 5)
  store %struct.Memory* %call1_477d70, %struct.Memory** %MEMORY

  %loadMem2_477d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477d70 = load i64, i64* %3
  %call2_477d70 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_477d70, %struct.Memory* %loadMem2_477d70)
  store %struct.Memory* %call2_477d70, %struct.Memory** %MEMORY

  ; Code: movq $0x4c2843, %rdi	 RIP: 477d75	 Bytes: 10
  %loadMem_477d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d75 = call %struct.Memory* @routine_movq__0x4c2843___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d75)
  store %struct.Memory* %call_477d75, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477d7f	 Bytes: 3
  %loadMem_477d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d7f = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d7f)
  store %struct.Memory* %call_477d7f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477d82	 Bytes: 3
  %loadMem_477d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d82 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d82)
  store %struct.Memory* %call_477d82, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477d85	 Bytes: 4
  %loadMem_477d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d85 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d85)
  store %struct.Memory* %call_477d85, %struct.Memory** %MEMORY

  ; Code: movl 0x498(%rdx), %esi	 RIP: 477d89	 Bytes: 6
  %loadMem_477d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d89 = call %struct.Memory* @routine_movl_0x498__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d89)
  store %struct.Memory* %call_477d89, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477d8f	 Bytes: 4
  %loadMem_477d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d8f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d8f)
  store %struct.Memory* %call_477d8f, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 477d93	 Bytes: 5
  %loadMem1_477d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477d93 = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477d93, i64 215309, i64 5, i64 5)
  store %struct.Memory* %call1_477d93, %struct.Memory** %MEMORY

  %loadMem2_477d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477d93 = load i64, i64* %3
  %call2_477d93 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_477d93, %struct.Memory* %loadMem2_477d93)
  store %struct.Memory* %call2_477d93, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477d98	 Bytes: 3
  %loadMem_477d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d98 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d98)
  store %struct.Memory* %call_477d98, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477d9b	 Bytes: 3
  %loadMem_477d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d9b = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d9b)
  store %struct.Memory* %call_477d9b, %struct.Memory** %MEMORY

  ; Code: .L_477d9e:	 RIP: 477d9e	 Bytes: 0
  br label %block_.L_477d9e
block_.L_477d9e:

  ; Code: movq $0x4c286a, %rdi	 RIP: 477d9e	 Bytes: 10
  %loadMem_477d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477d9e = call %struct.Memory* @routine_movq__0x4c286a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477d9e)
  store %struct.Memory* %call_477d9e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 477da8	 Bytes: 4
  %loadMem_477da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477da8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477da8)
  store %struct.Memory* %call_477da8, %struct.Memory** %MEMORY

  ; Code: movl 0x49c(%rax), %esi	 RIP: 477dac	 Bytes: 6
  %loadMem_477dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477dac = call %struct.Memory* @routine_movl_0x49c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477dac)
  store %struct.Memory* %call_477dac, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 477db2	 Bytes: 4
  %loadMem_477db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477db2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477db2)
  store %struct.Memory* %call_477db2, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 477db6	 Bytes: 5
  %loadMem1_477db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477db6 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477db6, i64 216394, i64 5, i64 5)
  store %struct.Memory* %call1_477db6, %struct.Memory** %MEMORY

  %loadMem2_477db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477db6 = load i64, i64* %3
  %call2_477db6 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_477db6, %struct.Memory* %loadMem2_477db6)
  store %struct.Memory* %call2_477db6, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477dbb	 Bytes: 3
  %loadMem_477dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477dbb = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477dbb)
  store %struct.Memory* %call_477dbb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477dbe	 Bytes: 3
  %loadMem_477dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477dbe = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477dbe)
  store %struct.Memory* %call_477dbe, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 477dc1	 Bytes: 4
  %loadMem_477dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477dc1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477dc1)
  store %struct.Memory* %call_477dc1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x49c(%rdx)	 RIP: 477dc5	 Bytes: 7
  %loadMem_477dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477dc5 = call %struct.Memory* @routine_cmpl__0x0__0x49c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477dc5)
  store %struct.Memory* %call_477dc5, %struct.Memory** %MEMORY

  ; Code: je .L_477de1	 RIP: 477dcc	 Bytes: 6
  %loadMem_477dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477dcc = call %struct.Memory* @routine_je_.L_477de1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477dcc, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_477dcc, %struct.Memory** %MEMORY

  %loadBr_477dcc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_477dcc = icmp eq i8 %loadBr_477dcc, 1
  br i1 %cmpBr_477dcc, label %block_.L_477de1, label %block_477dd2

block_477dd2:
  ; Code: movq -0x18(%rbp), %rdi	 RIP: 477dd2	 Bytes: 4
  %loadMem_477dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477dd2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477dd2)
  store %struct.Memory* %call_477dd2, %struct.Memory** %MEMORY

  ; Code: callq .GenerateVUISequenceParameters	 RIP: 477dd6	 Bytes: 5
  %loadMem1_477dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477dd6 = call %struct.Memory* @routine_callq_.GenerateVUISequenceParameters(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477dd6, i64 458, i64 5, i64 5)
  store %struct.Memory* %call1_477dd6, %struct.Memory** %MEMORY

  %loadMem2_477dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477dd6 = load i64, i64* %3
  %call2_477dd6 = call %struct.Memory* @sub_477fa0.GenerateVUISequenceParameters(%struct.State* %0, i64  %loadPC_477dd6, %struct.Memory* %loadMem2_477dd6)
  store %struct.Memory* %call2_477dd6, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 477ddb	 Bytes: 3
  %loadMem_477ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ddb = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ddb)
  store %struct.Memory* %call_477ddb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 477dde	 Bytes: 3
  %loadMem_477dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477dde = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477dde)
  store %struct.Memory* %call_477dde, %struct.Memory** %MEMORY

  ; Code: .L_477de1:	 RIP: 477de1	 Bytes: 0
  br label %block_.L_477de1
block_.L_477de1:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 477de1	 Bytes: 4
  %loadMem_477de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477de1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477de1)
  store %struct.Memory* %call_477de1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 477de5	 Bytes: 3
  %loadMem_477de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477de5 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477de5)
  store %struct.Memory* %call_477de5, %struct.Memory** %MEMORY

  ; Code: callq .SODBtoRBSP	 RIP: 477de8	 Bytes: 5
  %loadMem1_477de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477de8 = call %struct.Memory* @routine_callq_.SODBtoRBSP(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477de8, i64 -11336, i64 5, i64 5)
  store %struct.Memory* %call1_477de8, %struct.Memory** %MEMORY

  %loadMem2_477de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477de8 = load i64, i64* %3
  %call2_477de8 = call %struct.Memory* @sub_4751a0.SODBtoRBSP(%struct.State* %0, i64  %loadPC_477de8, %struct.Memory* %loadMem2_477de8)
  store %struct.Memory* %call2_477de8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 477ded	 Bytes: 4
  %loadMem_477ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477ded = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477ded)
  store %struct.Memory* %call_477ded, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 477df1	 Bytes: 3
  %loadMem_477df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477df1 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477df1)
  store %struct.Memory* %call_477df1, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 477df4	 Bytes: 2
  %loadMem_477df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477df4 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477df4)
  store %struct.Memory* %call_477df4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 477df6	 Bytes: 3
  %loadMem_477df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477df6 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477df6)
  store %struct.Memory* %call_477df6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 477df9	 Bytes: 4
  %loadMem_477df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477df9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477df9)
  store %struct.Memory* %call_477df9, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 477dfd	 Bytes: 3
  %loadMem_477dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477dfd = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477dfd)
  store %struct.Memory* %call_477dfd, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 477e00	 Bytes: 3
  %loadMem_477e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477e00 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477e00)
  store %struct.Memory* %call_477e00, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 477e03	 Bytes: 5
  %loadMem1_477e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477e03 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477e03, i64 -487043, i64 5, i64 5)
  store %struct.Memory* %call1_477e03, %struct.Memory** %MEMORY

  %loadMem2_477e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477e03 = load i64, i64* %3
  %call2_477e03 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_477e03, %struct.Memory* %loadMem2_477e03)
  store %struct.Memory* %call2_477e03, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 477e08	 Bytes: 4
  %loadMem_477e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477e08 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477e08)
  store %struct.Memory* %call_477e08, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 477e0c	 Bytes: 3
  %loadMem_477e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477e0c = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477e0c)
  store %struct.Memory* %call_477e0c, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 477e0f	 Bytes: 5
  %loadMem1_477e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_477e0f = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_477e0f, i64 -487055, i64 5, i64 5)
  store %struct.Memory* %call1_477e0f, %struct.Memory** %MEMORY

  %loadMem2_477e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_477e0f = load i64, i64* %3
  %call2_477e0f = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_477e0f, %struct.Memory* %loadMem2_477e0f)
  store %struct.Memory* %call2_477e0f, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 477e14	 Bytes: 3
  %loadMem_477e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477e14 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477e14)
  store %struct.Memory* %call_477e14, %struct.Memory** %MEMORY

  ; Code: addq $0x30, %rsp	 RIP: 477e17	 Bytes: 4
  %loadMem_477e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477e17 = call %struct.Memory* @routine_addq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477e17)
  store %struct.Memory* %call_477e17, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 477e1b	 Bytes: 1
  %loadMem_477e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477e1b = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477e1b)
  store %struct.Memory* %call_477e1b, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 477e1c	 Bytes: 1
  %loadMem_477e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_477e1c = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_477e1c)
  store %struct.Memory* %call_477e1c, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_477e1c
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 48)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__0x78___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 120)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq__rdx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
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


define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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

define %struct.Memory* @routine_jne_.L_4776ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c2411___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2411_type* @G__0x4c2411 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.no_mem_exit(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x30___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 48)
  ret %struct.Memory* %11
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq__rax____rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jne_.L_4776e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c242b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c242b_type* @G__0x4c242b to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__0x8___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x4c2445___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c2445_type* @G__0x4c2445 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__rax__0x20__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
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


define %struct.Memory* @routine_movl__0x8__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_callq_.u_v(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c2456___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2456_type* @G__0x4c2456 to i64))
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

define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.u_1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c2471___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2471_type* @G__0x4c2471 to i64))
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_movq__0x4c248c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c248c_type* @G__0x4c248c to i64))
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_movq__0x4c24a7___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c24a7_type* @G__0x4c24a7 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x14__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__0x4___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 4)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x4c24c2___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c24c2_type* @G__0x4c24c2 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_xorl__edx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_movq__0x4c24db___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c24db_type* @G__0x4c24db to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x18__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c24ea___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c24ea_type* @G__0x4c24ea to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x1c__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.ue_v(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x64__0x4__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 100)
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

define %struct.Memory* @routine_je_.L_477842(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x6e__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 110)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_cmpl__0x7a__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 122)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_cmpl__0x90__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 144)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_477a82(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c2504___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2504_type* @G__0x4c2504 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x20__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl__0x3__0x11bfc__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72700
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47789e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c251b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c251b_type* @G__0x4c251b to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x11c14__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72724
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq__0x4c2537___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2537_type* @G__0x4c2537 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x48__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c2552___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2552_type* @G__0x4c2552 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl_0x4c__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c256f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c256f_type* @G__0x4c256f to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x11c00__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72704
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c2591___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2591_type* @G__0x4c2591 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x24__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_cmpl__0x0__0x24__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_477a7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x8__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jae_.L_477a78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c25b6___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c25b6_type* @G__0x4c25b6 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__ecx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x28__rax__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 40
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}












define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl__0x0__0x28__rdx__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDI
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 40
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_477a65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x6__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jae_.L_4779ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x10___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 16)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x6d4520___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x6d4520_type* @G__0x6d4520 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x6d1fc0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x6d1fc0_type* @G__0x6d1fc0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x711780___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x711780_type* @G__0x711780 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_shlq__0x5___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 5)
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








define %struct.Memory* @routine_addq__r8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_shlq__0x1___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__r8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.Scaling_List(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_477a60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x40___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 64)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x6d1f9c___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x6d1f9c_type* @G__0x6d1f9c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x6f6e20___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x6f6e20_type* @G__0x6f6e20 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x721ca0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x721ca0_type* @G__0x721ca0 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_subl__0x6___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 6)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_shlq__0x7___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 7)
  ret %struct.Memory* %12
}










































define %struct.Memory* @routine_jmpq_.L_477a65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_477a6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47793a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_477a7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_477a82(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4c25d9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c25d9_type* @G__0x4c25d9 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x50__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c25f8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c25f8_type* @G__0x4c25f8 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x54__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_cmpl__0x0__0x54__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_477af5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c2610___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2610_type* @G__0x4c2610 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x58__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jmpq_.L_477bd8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x1__0x54__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_477bd3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c2637___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2637_type* @G__0x4c2637 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x5c__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c265d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c265d_type* @G__0x4c265d to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x60__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.se_v(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c2679___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2679_type* @G__0x4c2679 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x64__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c269d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c269d_type* @G__0x4c269d to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x68__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_cmpl_0x68__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 104
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jae_.L_477bce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c26c8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c26c8_type* @G__0x4c26c8 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x6c__rax__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 108
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}
















define %struct.Memory* @routine_jmpq_.L_477b8a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_477bd3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movq__0x4c26e2___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c26e2_type* @G__0x4c26e2 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x46c__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c26f6___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c26f6_type* @G__0x4c26f6 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x470__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c2720___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2720_type* @G__0x4c2720 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x474__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c273d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c273d_type* @G__0x4c273d to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x478__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c2761___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2761_type* @G__0x4c2761 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x47c__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_cmpl__0x0__0x47c__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_477cbb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c277a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c277a_type* @G__0x4c277a to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x480__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq__0x4c279c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c279c_type* @G__0x4c279c to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x484__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c27bb___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c27bb_type* @G__0x4c27bb to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x488__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_cmpl__0x0__0x488__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_477d9e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c27d4___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c27d4_type* @G__0x4c27d4 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x48c__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c27f9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c27f9_type* @G__0x4c27f9 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x490__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c281f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c281f_type* @G__0x4c281f to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x494__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c2843___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c2843_type* @G__0x4c2843 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x498__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq__0x4c286a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c286a_type* @G__0x4c286a to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x49c__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_cmpl__0x0__0x49c__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1180
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_477de1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.GenerateVUISequenceParameters(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq___rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_callq_.SODBtoRBSP(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 48)
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

