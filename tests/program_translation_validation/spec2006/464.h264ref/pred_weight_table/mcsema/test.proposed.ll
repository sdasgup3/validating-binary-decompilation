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

declare %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4acb00.u_1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4ac9c0.se_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6d4740_type = type <{ [8 x i8] }>
@G_0x6d4740= global %G_0x6d4740_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6f9728_type = type <{ [8 x i8] }>
@G_0x6f9728= global %G_0x6f9728_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70f6d0_type = type <{ [4 x i8] }>
@G_0x70f6d0= global %G_0x70f6d0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7242a0_type = type <{ [4 x i8] }>
@G_0x7242a0= global %G_0x7242a0_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x4bfd9d_type = type <{ [8 x i8] }>
@G__0x4bfd9d= global %G__0x4bfd9d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4bfdb7_type = type <{ [8 x i8] }>
@G__0x4bfdb7= global %G__0x4bfdb7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4bfdd3_type = type <{ [8 x i8] }>
@G__0x4bfdd3= global %G__0x4bfdd3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4bfdeb_type = type <{ [8 x i8] }>
@G__0x4bfdeb= global %G__0x4bfdeb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4bfdfe_type = type <{ [8 x i8] }>
@G__0x4bfdfe= global %G__0x4bfdfe_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4bfe11_type = type <{ [8 x i8] }>
@G__0x4bfe11= global %G__0x4bfe11_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4bfe27_type = type <{ [8 x i8] }>
@G__0x4bfe27= global %G__0x4bfe27_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4bfe38_type = type <{ [8 x i8] }>
@G__0x4bfe38= global %G__0x4bfe38_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4bfe49_type = type <{ [8 x i8] }>
@G__0x4bfe49= global %G__0x4bfe49_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4bfe61_type = type <{ [8 x i8] }>
@G__0x4bfe61= global %G__0x4bfe61_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4bfe74_type = type <{ [8 x i8] }>
@G__0x4bfe74= global %G__0x4bfe74_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4bfe87_type = type <{ [8 x i8] }>
@G__0x4bfe87= global %G__0x4bfe87_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4bfe9d_type = type <{ [8 x i8] }>
@G__0x4bfe9d= global %G__0x4bfe9d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4bfeae_type = type <{ [8 x i8] }>
@G__0x4bfeae= global %G__0x4bfeae_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @pred_weight_table(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .pred_weight_table:	 RIP: 4269c0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4269c0	 Bytes: 1
  %loadMem_4269c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269c0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269c0)
  store %struct.Memory* %call_4269c0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4269c1	 Bytes: 3
  %loadMem_4269c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269c1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269c1)
  store %struct.Memory* %call_4269c1, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 4269c4	 Bytes: 4
  %loadMem_4269c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269c4 = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269c4)
  store %struct.Memory* %call_4269c4, %struct.Memory** %MEMORY

  ; Code: movq $0x4bfd9d, %rdi	 RIP: 4269c8	 Bytes: 10
  %loadMem_4269c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269c8 = call %struct.Memory* @routine_movq__0x4bfd9d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269c8)
  store %struct.Memory* %call_4269c8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 4269d2	 Bytes: 8
  %loadMem_4269d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269d2 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269d2)
  store %struct.Memory* %call_4269d2, %struct.Memory** %MEMORY

  ; Code: movslq 0x93c(%rax), %rax	 RIP: 4269da	 Bytes: 7
  %loadMem_4269da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269da = call %struct.Memory* @routine_movslq_0x93c__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269da)
  store %struct.Memory* %call_4269da, %struct.Memory** %MEMORY

  ; Code: movq 0x725600(,%rax,8), %rax	 RIP: 4269e1	 Bytes: 8
  %loadMem_4269e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269e1 = call %struct.Memory* @routine_movq_0x725600___rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269e1)
  store %struct.Memory* %call_4269e1, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 4269e9	 Bytes: 2
  %loadMem_4269e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269e9 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269e9)
  store %struct.Memory* %call_4269e9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4(%rbp)	 RIP: 4269eb	 Bytes: 3
  %loadMem_4269eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269eb = call %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269eb)
  store %struct.Memory* %call_4269eb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4269ee	 Bytes: 8
  %loadMem_4269ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269ee = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269ee)
  store %struct.Memory* %call_4269ee, %struct.Memory** %MEMORY

  ; Code: movq 0x3750(%rax), %rax	 RIP: 4269f6	 Bytes: 7
  %loadMem_4269f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269f6 = call %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269f6)
  store %struct.Memory* %call_4269f6, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 4269fd	 Bytes: 4
  %loadMem_4269fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269fd = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269fd)
  store %struct.Memory* %call_4269fd, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 426a01	 Bytes: 4
  %loadMem_426a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a01 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a01)
  store %struct.Memory* %call_426a01, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 426a05	 Bytes: 4
  %loadMem_426a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a05 = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a05)
  store %struct.Memory* %call_426a05, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 426a09	 Bytes: 3
  %loadMem_426a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a09 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a09)
  store %struct.Memory* %call_426a09, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x10(%rbp)	 RIP: 426a0c	 Bytes: 4
  %loadMem_426a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a0c = call %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a0c)
  store %struct.Memory* %call_426a0c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 426a10	 Bytes: 7
  %loadMem_426a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a10 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a10)
  store %struct.Memory* %call_426a10, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %esi	 RIP: 426a17	 Bytes: 7
  %loadMem_426a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a17 = call %struct.Memory* @routine_movl_0x70f6d0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a17)
  store %struct.Memory* %call_426a17, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426a1e	 Bytes: 4
  %loadMem_426a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a1e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a1e)
  store %struct.Memory* %call_426a1e, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 426a22	 Bytes: 5
  %loadMem1_426a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426a22 = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426a22, i64 547966, i64 5, i64 5)
  store %struct.Memory* %call1_426a22, %struct.Memory** %MEMORY

  %loadMem2_426a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426a22 = load i64, i64* %3
  %call2_426a22 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_426a22, %struct.Memory* %loadMem2_426a22)
  store %struct.Memory* %call2_426a22, %struct.Memory** %MEMORY

  ; Code: movq $0x4bfdb7, %rdi	 RIP: 426a27	 Bytes: 10
  %loadMem_426a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a27 = call %struct.Memory* @routine_movq__0x4bfdb7___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a27)
  store %struct.Memory* %call_426a27, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426a31	 Bytes: 3
  %loadMem_426a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a31 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a31)
  store %struct.Memory* %call_426a31, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426a34	 Bytes: 3
  %loadMem_426a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a34 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a34)
  store %struct.Memory* %call_426a34, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %esi	 RIP: 426a37	 Bytes: 7
  %loadMem_426a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a37 = call %struct.Memory* @routine_movl_0x7242a0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a37)
  store %struct.Memory* %call_426a37, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426a3e	 Bytes: 4
  %loadMem_426a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a3e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a3e)
  store %struct.Memory* %call_426a3e, %struct.Memory** %MEMORY

  ; Code: callq .ue_v	 RIP: 426a42	 Bytes: 5
  %loadMem1_426a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426a42 = call %struct.Memory* @routine_callq_.ue_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426a42, i64 547934, i64 5, i64 5)
  store %struct.Memory* %call1_426a42, %struct.Memory** %MEMORY

  %loadMem2_426a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426a42 = load i64, i64* %3
  %call2_426a42 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64  %loadPC_426a42, %struct.Memory* %loadMem2_426a42)
  store %struct.Memory* %call2_426a42, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426a47	 Bytes: 3
  %loadMem_426a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a47 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a47)
  store %struct.Memory* %call_426a47, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426a4a	 Bytes: 3
  %loadMem_426a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a4a = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a4a)
  store %struct.Memory* %call_426a4a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 426a4d	 Bytes: 7
  %loadMem_426a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a4d = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a4d)
  store %struct.Memory* %call_426a4d, %struct.Memory** %MEMORY

  ; Code: .L_426a54:	 RIP: 426a54	 Bytes: 0
  br label %block_.L_426a54
block_.L_426a54:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 426a54	 Bytes: 3
  %loadMem_426a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a54 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a54)
  store %struct.Memory* %call_426a54, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 426a57	 Bytes: 8
  %loadMem_426a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a57 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a57)
  store %struct.Memory* %call_426a57, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11940(%rcx), %eax	 RIP: 426a5f	 Bytes: 6
  %loadMem_426a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a5f = call %struct.Memory* @routine_cmpl_0x11940__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a5f)
  store %struct.Memory* %call_426a5f, %struct.Memory** %MEMORY

  ; Code: jge .L_426cb4	 RIP: 426a65	 Bytes: 6
  %loadMem_426a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a65 = call %struct.Memory* @routine_jge_.L_426cb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a65, i8* %BRANCH_TAKEN, i64 591, i64 6, i64 6)
  store %struct.Memory* %call_426a65, %struct.Memory** %MEMORY

  %loadBr_426a65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426a65 = icmp eq i8 %loadBr_426a65, 1
  br i1 %cmpBr_426a65, label %block_.L_426cb4, label %block_426a6b

block_426a6b:
  ; Code: movl $0x1, %eax	 RIP: 426a6b	 Bytes: 5
  %loadMem_426a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a6b = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a6b)
  store %struct.Memory* %call_426a6b, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 426a70	 Bytes: 8
  %loadMem_426a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a70 = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a70)
  store %struct.Memory* %call_426a70, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 426a78	 Bytes: 3
  %loadMem_426a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a78 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a78)
  store %struct.Memory* %call_426a78, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 426a7b	 Bytes: 4
  %loadMem_426a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a7b = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a7b)
  store %struct.Memory* %call_426a7b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 426a7f	 Bytes: 4
  %loadMem_426a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a7f = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a7f)
  store %struct.Memory* %call_426a7f, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %esi	 RIP: 426a83	 Bytes: 2
  %loadMem_426a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a83 = call %struct.Memory* @routine_movl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a83)
  store %struct.Memory* %call_426a83, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 426a85	 Bytes: 7
  %loadMem_426a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a85 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a85)
  store %struct.Memory* %call_426a85, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 426a8c	 Bytes: 2
  %loadMem_426a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a8c = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a8c)
  store %struct.Memory* %call_426a8c, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %esi	 RIP: 426a8e	 Bytes: 2
  %loadMem_426a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a8e = call %struct.Memory* @routine_cmpl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a8e)
  store %struct.Memory* %call_426a8e, %struct.Memory** %MEMORY

  ; Code: jne .L_426ab2	 RIP: 426a90	 Bytes: 6
  %loadMem_426a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a90 = call %struct.Memory* @routine_jne_.L_426ab2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a90, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_426a90, %struct.Memory** %MEMORY

  %loadBr_426a90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426a90 = icmp eq i8 %loadBr_426a90, 1
  br i1 %cmpBr_426a90, label %block_.L_426ab2, label %block_426a96

block_426a96:
  ; Code: movq 0x6f9728, %rax	 RIP: 426a96	 Bytes: 8
  %loadMem_426a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a96 = call %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a96)
  store %struct.Memory* %call_426a96, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 426a9e	 Bytes: 3
  %loadMem_426a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a9e = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a9e)
  store %struct.Memory* %call_426a9e, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 426aa1	 Bytes: 4
  %loadMem_426aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426aa1 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426aa1)
  store %struct.Memory* %call_426aa1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 426aa5	 Bytes: 4
  %loadMem_426aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426aa5 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426aa5)
  store %struct.Memory* %call_426aa5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax)	 RIP: 426aa9	 Bytes: 3
  %loadMem_426aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426aa9 = call %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426aa9)
  store %struct.Memory* %call_426aa9, %struct.Memory** %MEMORY

  ; Code: je .L_426b31	 RIP: 426aac	 Bytes: 6
  %loadMem_426aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426aac = call %struct.Memory* @routine_je_.L_426b31(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426aac, i8* %BRANCH_TAKEN, i64 133, i64 6, i64 6)
  store %struct.Memory* %call_426aac, %struct.Memory** %MEMORY

  %loadBr_426aac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426aac = icmp eq i8 %loadBr_426aac, 1
  br i1 %cmpBr_426aac, label %block_.L_426b31, label %block_.L_426ab2

  ; Code: .L_426ab2:	 RIP: 426ab2	 Bytes: 0
block_.L_426ab2:

  ; Code: movq $0x4bfdd3, %rdi	 RIP: 426ab2	 Bytes: 10
  %loadMem_426ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ab2 = call %struct.Memory* @routine_movq__0x4bfdd3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ab2)
  store %struct.Memory* %call_426ab2, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %esi	 RIP: 426abc	 Bytes: 5
  %loadMem_426abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426abc = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426abc)
  store %struct.Memory* %call_426abc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426ac1	 Bytes: 4
  %loadMem_426ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ac1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ac1)
  store %struct.Memory* %call_426ac1, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 426ac5	 Bytes: 5
  %loadMem1_426ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426ac5 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426ac5, i64 548923, i64 5, i64 5)
  store %struct.Memory* %call1_426ac5, %struct.Memory** %MEMORY

  %loadMem2_426ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426ac5 = load i64, i64* %3
  %call2_426ac5 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_426ac5, %struct.Memory* %loadMem2_426ac5)
  store %struct.Memory* %call2_426ac5, %struct.Memory** %MEMORY

  ; Code: movq $0x4bfdeb, %rdi	 RIP: 426aca	 Bytes: 10
  %loadMem_426aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426aca = call %struct.Memory* @routine_movq__0x4bfdeb___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426aca)
  store %struct.Memory* %call_426aca, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426ad4	 Bytes: 3
  %loadMem_426ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ad4 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ad4)
  store %struct.Memory* %call_426ad4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426ad7	 Bytes: 3
  %loadMem_426ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ad7 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ad7)
  store %struct.Memory* %call_426ad7, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rdx	 RIP: 426ada	 Bytes: 8
  %loadMem_426ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ada = call %struct.Memory* @routine_movq_0x6d4740___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ada)
  store %struct.Memory* %call_426ada, %struct.Memory** %MEMORY

  ; Code: movq (%rdx), %rdx	 RIP: 426ae2	 Bytes: 3
  %loadMem_426ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ae2 = call %struct.Memory* @routine_movq___rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ae2)
  store %struct.Memory* %call_426ae2, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 426ae5	 Bytes: 4
  %loadMem_426ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ae5 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ae5)
  store %struct.Memory* %call_426ae5, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rcx,8), %rcx	 RIP: 426ae9	 Bytes: 4
  %loadMem_426ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ae9 = call %struct.Memory* @routine_movq___rdx__rcx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ae9)
  store %struct.Memory* %call_426ae9, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %esi	 RIP: 426aed	 Bytes: 2
  %loadMem_426aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426aed = call %struct.Memory* @routine_movl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426aed)
  store %struct.Memory* %call_426aed, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426aef	 Bytes: 4
  %loadMem_426aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426aef = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426aef)
  store %struct.Memory* %call_426aef, %struct.Memory** %MEMORY

  ; Code: callq .se_v	 RIP: 426af3	 Bytes: 5
  %loadMem1_426af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426af3 = call %struct.Memory* @routine_callq_.se_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426af3, i64 548557, i64 5, i64 5)
  store %struct.Memory* %call1_426af3, %struct.Memory** %MEMORY

  %loadMem2_426af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426af3 = load i64, i64* %3
  %call2_426af3 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64  %loadPC_426af3, %struct.Memory* %loadMem2_426af3)
  store %struct.Memory* %call2_426af3, %struct.Memory** %MEMORY

  ; Code: movq $0x4bfdfe, %rdi	 RIP: 426af8	 Bytes: 10
  %loadMem_426af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426af8 = call %struct.Memory* @routine_movq__0x4bfdfe___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426af8)
  store %struct.Memory* %call_426af8, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426b02	 Bytes: 3
  %loadMem_426b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b02 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b02)
  store %struct.Memory* %call_426b02, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426b05	 Bytes: 3
  %loadMem_426b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b05 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b05)
  store %struct.Memory* %call_426b05, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rcx	 RIP: 426b08	 Bytes: 8
  %loadMem_426b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b08 = call %struct.Memory* @routine_movq_0x6f9728___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b08)
  store %struct.Memory* %call_426b08, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 426b10	 Bytes: 3
  %loadMem_426b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b10 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b10)
  store %struct.Memory* %call_426b10, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 426b13	 Bytes: 4
  %loadMem_426b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b13 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b13)
  store %struct.Memory* %call_426b13, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 426b17	 Bytes: 4
  %loadMem_426b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b17 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b17)
  store %struct.Memory* %call_426b17, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %esi	 RIP: 426b1b	 Bytes: 2
  %loadMem_426b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b1b = call %struct.Memory* @routine_movl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b1b)
  store %struct.Memory* %call_426b1b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426b1d	 Bytes: 4
  %loadMem_426b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b1d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b1d)
  store %struct.Memory* %call_426b1d, %struct.Memory** %MEMORY

  ; Code: callq .se_v	 RIP: 426b21	 Bytes: 5
  %loadMem1_426b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426b21 = call %struct.Memory* @routine_callq_.se_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426b21, i64 548511, i64 5, i64 5)
  store %struct.Memory* %call1_426b21, %struct.Memory** %MEMORY

  %loadMem2_426b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426b21 = load i64, i64* %3
  %call2_426b21 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64  %loadPC_426b21, %struct.Memory* %loadMem2_426b21)
  store %struct.Memory* %call2_426b21, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426b26	 Bytes: 3
  %loadMem_426b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b26 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b26)
  store %struct.Memory* %call_426b26, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426b29	 Bytes: 3
  %loadMem_426b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b29 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b29)
  store %struct.Memory* %call_426b29, %struct.Memory** %MEMORY

  ; Code: jmpq .L_426b4c	 RIP: 426b2c	 Bytes: 5
  %loadMem_426b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b2c = call %struct.Memory* @routine_jmpq_.L_426b4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b2c, i64 32, i64 5)
  store %struct.Memory* %call_426b2c, %struct.Memory** %MEMORY

  br label %block_.L_426b4c

  ; Code: .L_426b31:	 RIP: 426b31	 Bytes: 0
block_.L_426b31:

  ; Code: movq $0x4bfdd3, %rdi	 RIP: 426b31	 Bytes: 10
  %loadMem_426b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b31 = call %struct.Memory* @routine_movq__0x4bfdd3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b31)
  store %struct.Memory* %call_426b31, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 426b3b	 Bytes: 2
  %loadMem_426b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b3b = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b3b)
  store %struct.Memory* %call_426b3b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426b3d	 Bytes: 4
  %loadMem_426b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b3d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b3d)
  store %struct.Memory* %call_426b3d, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 426b41	 Bytes: 5
  %loadMem1_426b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426b41 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426b41, i64 548799, i64 5, i64 5)
  store %struct.Memory* %call1_426b41, %struct.Memory** %MEMORY

  %loadMem2_426b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426b41 = load i64, i64* %3
  %call2_426b41 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_426b41, %struct.Memory* %loadMem2_426b41)
  store %struct.Memory* %call2_426b41, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426b46	 Bytes: 3
  %loadMem_426b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b46 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b46)
  store %struct.Memory* %call_426b46, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426b49	 Bytes: 3
  %loadMem_426b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b49 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b49)
  store %struct.Memory* %call_426b49, %struct.Memory** %MEMORY

  ; Code: .L_426b4c:	 RIP: 426b4c	 Bytes: 0
  br label %block_.L_426b4c
block_.L_426b4c:

  ; Code: movl $0x1, %eax	 RIP: 426b4c	 Bytes: 5
  %loadMem_426b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b4c = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b4c)
  store %struct.Memory* %call_426b4c, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 426b51	 Bytes: 8
  %loadMem_426b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b51 = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b51)
  store %struct.Memory* %call_426b51, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 426b59	 Bytes: 3
  %loadMem_426b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b59 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b59)
  store %struct.Memory* %call_426b59, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 426b5c	 Bytes: 4
  %loadMem_426b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b5c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b5c)
  store %struct.Memory* %call_426b5c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 426b60	 Bytes: 4
  %loadMem_426b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b60 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b60)
  store %struct.Memory* %call_426b60, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rcx), %esi	 RIP: 426b64	 Bytes: 3
  %loadMem_426b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b64 = call %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b64)
  store %struct.Memory* %call_426b64, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %ecx	 RIP: 426b67	 Bytes: 7
  %loadMem_426b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b67 = call %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b67)
  store %struct.Memory* %call_426b67, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 426b6e	 Bytes: 2
  %loadMem_426b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b6e = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b6e)
  store %struct.Memory* %call_426b6e, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %esi	 RIP: 426b70	 Bytes: 2
  %loadMem_426b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b70 = call %struct.Memory* @routine_cmpl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b70)
  store %struct.Memory* %call_426b70, %struct.Memory** %MEMORY

  ; Code: jne .L_426bde	 RIP: 426b72	 Bytes: 6
  %loadMem_426b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b72 = call %struct.Memory* @routine_jne_.L_426bde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b72, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_426b72, %struct.Memory** %MEMORY

  %loadBr_426b72 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426b72 = icmp eq i8 %loadBr_426b72, 1
  br i1 %cmpBr_426b72, label %block_.L_426bde, label %block_426b78

block_426b78:
  ; Code: movq 0x6f9728, %rax	 RIP: 426b78	 Bytes: 8
  %loadMem_426b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b78 = call %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b78)
  store %struct.Memory* %call_426b78, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 426b80	 Bytes: 3
  %loadMem_426b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b80 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b80)
  store %struct.Memory* %call_426b80, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 426b83	 Bytes: 4
  %loadMem_426b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b83 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b83)
  store %struct.Memory* %call_426b83, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 426b87	 Bytes: 4
  %loadMem_426b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b87 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b87)
  store %struct.Memory* %call_426b87, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4(%rax)	 RIP: 426b8b	 Bytes: 4
  %loadMem_426b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b8b = call %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b8b)
  store %struct.Memory* %call_426b8b, %struct.Memory** %MEMORY

  ; Code: jne .L_426bde	 RIP: 426b8f	 Bytes: 6
  %loadMem_426b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b8f = call %struct.Memory* @routine_jne_.L_426bde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b8f, i8* %BRANCH_TAKEN, i64 79, i64 6, i64 6)
  store %struct.Memory* %call_426b8f, %struct.Memory** %MEMORY

  %loadBr_426b8f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426b8f = icmp eq i8 %loadBr_426b8f, 1
  br i1 %cmpBr_426b8f, label %block_.L_426bde, label %block_426b95

block_426b95:
  ; Code: movl $0x1, %eax	 RIP: 426b95	 Bytes: 5
  %loadMem_426b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b95 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b95)
  store %struct.Memory* %call_426b95, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 426b9a	 Bytes: 8
  %loadMem_426b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b9a = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b9a)
  store %struct.Memory* %call_426b9a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 426ba2	 Bytes: 3
  %loadMem_426ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ba2 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ba2)
  store %struct.Memory* %call_426ba2, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 426ba5	 Bytes: 4
  %loadMem_426ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ba5 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ba5)
  store %struct.Memory* %call_426ba5, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 426ba9	 Bytes: 4
  %loadMem_426ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ba9 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ba9)
  store %struct.Memory* %call_426ba9, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rcx), %esi	 RIP: 426bad	 Bytes: 3
  %loadMem_426bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bad = call %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bad)
  store %struct.Memory* %call_426bad, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %ecx	 RIP: 426bb0	 Bytes: 7
  %loadMem_426bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bb0 = call %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bb0)
  store %struct.Memory* %call_426bb0, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 426bb7	 Bytes: 2
  %loadMem_426bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bb7 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bb7)
  store %struct.Memory* %call_426bb7, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %esi	 RIP: 426bb9	 Bytes: 2
  %loadMem_426bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bb9 = call %struct.Memory* @routine_cmpl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bb9)
  store %struct.Memory* %call_426bb9, %struct.Memory** %MEMORY

  ; Code: jne .L_426bde	 RIP: 426bbb	 Bytes: 6
  %loadMem_426bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bbb = call %struct.Memory* @routine_jne_.L_426bde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bbb, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_426bbb, %struct.Memory** %MEMORY

  %loadBr_426bbb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426bbb = icmp eq i8 %loadBr_426bbb, 1
  br i1 %cmpBr_426bbb, label %block_.L_426bde, label %block_426bc1

block_426bc1:
  ; Code: movq 0x6f9728, %rax	 RIP: 426bc1	 Bytes: 8
  %loadMem_426bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bc1 = call %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bc1)
  store %struct.Memory* %call_426bc1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 426bc9	 Bytes: 3
  %loadMem_426bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bc9 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bc9)
  store %struct.Memory* %call_426bc9, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 426bcc	 Bytes: 4
  %loadMem_426bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bcc = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bcc)
  store %struct.Memory* %call_426bcc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 426bd0	 Bytes: 4
  %loadMem_426bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bd0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bd0)
  store %struct.Memory* %call_426bd0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8(%rax)	 RIP: 426bd4	 Bytes: 4
  %loadMem_426bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bd4 = call %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bd4)
  store %struct.Memory* %call_426bd4, %struct.Memory** %MEMORY

  ; Code: je .L_426c86	 RIP: 426bd8	 Bytes: 6
  %loadMem_426bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bd8 = call %struct.Memory* @routine_je_.L_426c86(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bd8, i8* %BRANCH_TAKEN, i64 174, i64 6, i64 6)
  store %struct.Memory* %call_426bd8, %struct.Memory** %MEMORY

  %loadBr_426bd8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426bd8 = icmp eq i8 %loadBr_426bd8, 1
  br i1 %cmpBr_426bd8, label %block_.L_426c86, label %block_.L_426bde

  ; Code: .L_426bde:	 RIP: 426bde	 Bytes: 0
block_.L_426bde:

  ; Code: movq $0x4bfe11, %rdi	 RIP: 426bde	 Bytes: 10
  %loadMem_426bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bde = call %struct.Memory* @routine_movq__0x4bfe11___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bde)
  store %struct.Memory* %call_426bde, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %esi	 RIP: 426be8	 Bytes: 5
  %loadMem_426be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426be8 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426be8)
  store %struct.Memory* %call_426be8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426bed	 Bytes: 4
  %loadMem_426bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bed = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bed)
  store %struct.Memory* %call_426bed, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 426bf1	 Bytes: 5
  %loadMem1_426bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426bf1 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426bf1, i64 548623, i64 5, i64 5)
  store %struct.Memory* %call1_426bf1, %struct.Memory** %MEMORY

  %loadMem2_426bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426bf1 = load i64, i64* %3
  %call2_426bf1 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_426bf1, %struct.Memory* %loadMem2_426bf1)
  store %struct.Memory* %call2_426bf1, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426bf6	 Bytes: 3
  %loadMem_426bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bf6 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bf6)
  store %struct.Memory* %call_426bf6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426bf9	 Bytes: 3
  %loadMem_426bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bf9 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bf9)
  store %struct.Memory* %call_426bf9, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x1c(%rbp)	 RIP: 426bfc	 Bytes: 7
  %loadMem_426bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bfc = call %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bfc)
  store %struct.Memory* %call_426bfc, %struct.Memory** %MEMORY

  ; Code: .L_426c03:	 RIP: 426c03	 Bytes: 0
  br label %block_.L_426c03
block_.L_426c03:

  ; Code: cmpl $0x3, -0x1c(%rbp)	 RIP: 426c03	 Bytes: 4
  %loadMem_426c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c03 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c03)
  store %struct.Memory* %call_426c03, %struct.Memory** %MEMORY

  ; Code: jge .L_426c81	 RIP: 426c07	 Bytes: 6
  %loadMem_426c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c07 = call %struct.Memory* @routine_jge_.L_426c81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c07, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_426c07, %struct.Memory** %MEMORY

  %loadBr_426c07 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426c07 = icmp eq i8 %loadBr_426c07, 1
  br i1 %cmpBr_426c07, label %block_.L_426c81, label %block_426c0d

block_426c0d:
  ; Code: movq $0x4bfe27, %rdi	 RIP: 426c0d	 Bytes: 10
  %loadMem_426c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c0d = call %struct.Memory* @routine_movq__0x4bfe27___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c0d)
  store %struct.Memory* %call_426c0d, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rax	 RIP: 426c17	 Bytes: 8
  %loadMem_426c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c17 = call %struct.Memory* @routine_movq_0x6d4740___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c17)
  store %struct.Memory* %call_426c17, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 426c1f	 Bytes: 3
  %loadMem_426c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c1f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c1f)
  store %struct.Memory* %call_426c1f, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 426c22	 Bytes: 4
  %loadMem_426c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c22 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c22)
  store %struct.Memory* %call_426c22, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 426c26	 Bytes: 4
  %loadMem_426c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c26 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c26)
  store %struct.Memory* %call_426c26, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 426c2a	 Bytes: 4
  %loadMem_426c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c2a = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c2a)
  store %struct.Memory* %call_426c2a, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 426c2e	 Bytes: 3
  %loadMem_426c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c2e = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c2e)
  store %struct.Memory* %call_426c2e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426c31	 Bytes: 4
  %loadMem_426c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c31 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c31)
  store %struct.Memory* %call_426c31, %struct.Memory** %MEMORY

  ; Code: callq .se_v	 RIP: 426c35	 Bytes: 5
  %loadMem1_426c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426c35 = call %struct.Memory* @routine_callq_.se_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426c35, i64 548235, i64 5, i64 5)
  store %struct.Memory* %call1_426c35, %struct.Memory** %MEMORY

  %loadMem2_426c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426c35 = load i64, i64* %3
  %call2_426c35 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64  %loadPC_426c35, %struct.Memory* %loadMem2_426c35)
  store %struct.Memory* %call2_426c35, %struct.Memory** %MEMORY

  ; Code: movq $0x4bfe38, %rdi	 RIP: 426c3a	 Bytes: 10
  %loadMem_426c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c3a = call %struct.Memory* @routine_movq__0x4bfe38___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c3a)
  store %struct.Memory* %call_426c3a, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426c44	 Bytes: 3
  %loadMem_426c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c44 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c44)
  store %struct.Memory* %call_426c44, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426c47	 Bytes: 3
  %loadMem_426c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c47 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c47)
  store %struct.Memory* %call_426c47, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rcx	 RIP: 426c4a	 Bytes: 8
  %loadMem_426c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c4a = call %struct.Memory* @routine_movq_0x6f9728___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c4a)
  store %struct.Memory* %call_426c4a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 426c52	 Bytes: 3
  %loadMem_426c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c52 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c52)
  store %struct.Memory* %call_426c52, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 426c55	 Bytes: 4
  %loadMem_426c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c55 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c55)
  store %struct.Memory* %call_426c55, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 426c59	 Bytes: 4
  %loadMem_426c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c59 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c59)
  store %struct.Memory* %call_426c59, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 426c5d	 Bytes: 4
  %loadMem_426c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c5d = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c5d)
  store %struct.Memory* %call_426c5d, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 426c61	 Bytes: 3
  %loadMem_426c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c61 = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c61)
  store %struct.Memory* %call_426c61, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426c64	 Bytes: 4
  %loadMem_426c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c64 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c64)
  store %struct.Memory* %call_426c64, %struct.Memory** %MEMORY

  ; Code: callq .se_v	 RIP: 426c68	 Bytes: 5
  %loadMem1_426c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426c68 = call %struct.Memory* @routine_callq_.se_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426c68, i64 548184, i64 5, i64 5)
  store %struct.Memory* %call1_426c68, %struct.Memory** %MEMORY

  %loadMem2_426c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426c68 = load i64, i64* %3
  %call2_426c68 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64  %loadPC_426c68, %struct.Memory* %loadMem2_426c68)
  store %struct.Memory* %call2_426c68, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426c6d	 Bytes: 3
  %loadMem_426c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c6d = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c6d)
  store %struct.Memory* %call_426c6d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426c70	 Bytes: 3
  %loadMem_426c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c70 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c70)
  store %struct.Memory* %call_426c70, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 426c73	 Bytes: 3
  %loadMem_426c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c73 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c73)
  store %struct.Memory* %call_426c73, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 426c76	 Bytes: 3
  %loadMem_426c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c76 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c76)
  store %struct.Memory* %call_426c76, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 426c79	 Bytes: 3
  %loadMem_426c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c79 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c79)
  store %struct.Memory* %call_426c79, %struct.Memory** %MEMORY

  ; Code: jmpq .L_426c03	 RIP: 426c7c	 Bytes: 5
  %loadMem_426c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c7c = call %struct.Memory* @routine_jmpq_.L_426c03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c7c, i64 -121, i64 5)
  store %struct.Memory* %call_426c7c, %struct.Memory** %MEMORY

  br label %block_.L_426c03

  ; Code: .L_426c81:	 RIP: 426c81	 Bytes: 0
block_.L_426c81:

  ; Code: jmpq .L_426ca1	 RIP: 426c81	 Bytes: 5
  %loadMem_426c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c81 = call %struct.Memory* @routine_jmpq_.L_426ca1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c81, i64 32, i64 5)
  store %struct.Memory* %call_426c81, %struct.Memory** %MEMORY

  br label %block_.L_426ca1

  ; Code: .L_426c86:	 RIP: 426c86	 Bytes: 0
block_.L_426c86:

  ; Code: movq $0x4bfe11, %rdi	 RIP: 426c86	 Bytes: 10
  %loadMem_426c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c86 = call %struct.Memory* @routine_movq__0x4bfe11___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c86)
  store %struct.Memory* %call_426c86, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 426c90	 Bytes: 2
  %loadMem_426c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c90 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c90)
  store %struct.Memory* %call_426c90, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426c92	 Bytes: 4
  %loadMem_426c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c92 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c92)
  store %struct.Memory* %call_426c92, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 426c96	 Bytes: 5
  %loadMem1_426c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426c96 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426c96, i64 548458, i64 5, i64 5)
  store %struct.Memory* %call1_426c96, %struct.Memory** %MEMORY

  %loadMem2_426c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426c96 = load i64, i64* %3
  %call2_426c96 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_426c96, %struct.Memory* %loadMem2_426c96)
  store %struct.Memory* %call2_426c96, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426c9b	 Bytes: 3
  %loadMem_426c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c9b = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c9b)
  store %struct.Memory* %call_426c9b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426c9e	 Bytes: 3
  %loadMem_426c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c9e = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c9e)
  store %struct.Memory* %call_426c9e, %struct.Memory** %MEMORY

  ; Code: .L_426ca1:	 RIP: 426ca1	 Bytes: 0
  br label %block_.L_426ca1
block_.L_426ca1:

  ; Code: jmpq .L_426ca6	 RIP: 426ca1	 Bytes: 5
  %loadMem_426ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ca1 = call %struct.Memory* @routine_jmpq_.L_426ca6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ca1, i64 5, i64 5)
  store %struct.Memory* %call_426ca1, %struct.Memory** %MEMORY

  br label %block_.L_426ca6

  ; Code: .L_426ca6:	 RIP: 426ca6	 Bytes: 0
block_.L_426ca6:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 426ca6	 Bytes: 3
  %loadMem_426ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ca6 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ca6)
  store %struct.Memory* %call_426ca6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 426ca9	 Bytes: 3
  %loadMem_426ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ca9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ca9)
  store %struct.Memory* %call_426ca9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 426cac	 Bytes: 3
  %loadMem_426cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cac = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cac)
  store %struct.Memory* %call_426cac, %struct.Memory** %MEMORY

  ; Code: jmpq .L_426a54	 RIP: 426caf	 Bytes: 5
  %loadMem_426caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426caf = call %struct.Memory* @routine_jmpq_.L_426a54(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426caf, i64 -603, i64 5)
  store %struct.Memory* %call_426caf, %struct.Memory** %MEMORY

  br label %block_.L_426a54

  ; Code: .L_426cb4:	 RIP: 426cb4	 Bytes: 0
block_.L_426cb4:

  ; Code: movq 0x6cb900, %rax	 RIP: 426cb4	 Bytes: 8
  %loadMem_426cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cb4 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cb4)
  store %struct.Memory* %call_426cb4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rax)	 RIP: 426cbc	 Bytes: 4
  %loadMem_426cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cbc = call %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cbc)
  store %struct.Memory* %call_426cbc, %struct.Memory** %MEMORY

  ; Code: jne .L_426f3c	 RIP: 426cc0	 Bytes: 6
  %loadMem_426cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cc0 = call %struct.Memory* @routine_jne_.L_426f3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cc0, i8* %BRANCH_TAKEN, i64 636, i64 6, i64 6)
  store %struct.Memory* %call_426cc0, %struct.Memory** %MEMORY

  %loadBr_426cc0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426cc0 = icmp eq i8 %loadBr_426cc0, 1
  br i1 %cmpBr_426cc0, label %block_.L_426f3c, label %block_426cc6

block_426cc6:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 426cc6	 Bytes: 7
  %loadMem_426cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cc6 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cc6)
  store %struct.Memory* %call_426cc6, %struct.Memory** %MEMORY

  ; Code: .L_426ccd:	 RIP: 426ccd	 Bytes: 0
  br label %block_.L_426ccd
block_.L_426ccd:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 426ccd	 Bytes: 3
  %loadMem_426ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ccd = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ccd)
  store %struct.Memory* %call_426ccd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 426cd0	 Bytes: 8
  %loadMem_426cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cd0 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cd0)
  store %struct.Memory* %call_426cd0, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11944(%rcx), %eax	 RIP: 426cd8	 Bytes: 6
  %loadMem_426cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cd8 = call %struct.Memory* @routine_cmpl_0x11944__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cd8)
  store %struct.Memory* %call_426cd8, %struct.Memory** %MEMORY

  ; Code: jge .L_426f37	 RIP: 426cde	 Bytes: 6
  %loadMem_426cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cde = call %struct.Memory* @routine_jge_.L_426f37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cde, i8* %BRANCH_TAKEN, i64 601, i64 6, i64 6)
  store %struct.Memory* %call_426cde, %struct.Memory** %MEMORY

  %loadBr_426cde = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426cde = icmp eq i8 %loadBr_426cde, 1
  br i1 %cmpBr_426cde, label %block_.L_426f37, label %block_426ce4

block_426ce4:
  ; Code: movl $0x1, %eax	 RIP: 426ce4	 Bytes: 5
  %loadMem_426ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ce4 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ce4)
  store %struct.Memory* %call_426ce4, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 426ce9	 Bytes: 8
  %loadMem_426ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ce9 = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ce9)
  store %struct.Memory* %call_426ce9, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 426cf1	 Bytes: 4
  %loadMem_426cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cf1 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cf1)
  store %struct.Memory* %call_426cf1, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 426cf5	 Bytes: 4
  %loadMem_426cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cf5 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cf5)
  store %struct.Memory* %call_426cf5, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 426cf9	 Bytes: 4
  %loadMem_426cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cf9 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cf9)
  store %struct.Memory* %call_426cf9, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %esi	 RIP: 426cfd	 Bytes: 2
  %loadMem_426cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cfd = call %struct.Memory* @routine_movl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cfd)
  store %struct.Memory* %call_426cfd, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 426cff	 Bytes: 7
  %loadMem_426cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cff = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cff)
  store %struct.Memory* %call_426cff, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 426d06	 Bytes: 2
  %loadMem_426d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d06 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d06)
  store %struct.Memory* %call_426d06, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %esi	 RIP: 426d08	 Bytes: 2
  %loadMem_426d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d08 = call %struct.Memory* @routine_cmpl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d08)
  store %struct.Memory* %call_426d08, %struct.Memory** %MEMORY

  ; Code: jne .L_426d2d	 RIP: 426d0a	 Bytes: 6
  %loadMem_426d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d0a = call %struct.Memory* @routine_jne_.L_426d2d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d0a, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_426d0a, %struct.Memory** %MEMORY

  %loadBr_426d0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426d0a = icmp eq i8 %loadBr_426d0a, 1
  br i1 %cmpBr_426d0a, label %block_.L_426d2d, label %block_426d10

block_426d10:
  ; Code: movq 0x6f9728, %rax	 RIP: 426d10	 Bytes: 8
  %loadMem_426d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d10 = call %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d10)
  store %struct.Memory* %call_426d10, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 426d18	 Bytes: 4
  %loadMem_426d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d18 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d18)
  store %struct.Memory* %call_426d18, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 426d1c	 Bytes: 4
  %loadMem_426d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d1c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d1c)
  store %struct.Memory* %call_426d1c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 426d20	 Bytes: 4
  %loadMem_426d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d20 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d20)
  store %struct.Memory* %call_426d20, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax)	 RIP: 426d24	 Bytes: 3
  %loadMem_426d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d24 = call %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d24)
  store %struct.Memory* %call_426d24, %struct.Memory** %MEMORY

  ; Code: je .L_426dae	 RIP: 426d27	 Bytes: 6
  %loadMem_426d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d27 = call %struct.Memory* @routine_je_.L_426dae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d27, i8* %BRANCH_TAKEN, i64 135, i64 6, i64 6)
  store %struct.Memory* %call_426d27, %struct.Memory** %MEMORY

  %loadBr_426d27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426d27 = icmp eq i8 %loadBr_426d27, 1
  br i1 %cmpBr_426d27, label %block_.L_426dae, label %block_.L_426d2d

  ; Code: .L_426d2d:	 RIP: 426d2d	 Bytes: 0
block_.L_426d2d:

  ; Code: movq $0x4bfe49, %rdi	 RIP: 426d2d	 Bytes: 10
  %loadMem_426d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d2d = call %struct.Memory* @routine_movq__0x4bfe49___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d2d)
  store %struct.Memory* %call_426d2d, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %esi	 RIP: 426d37	 Bytes: 5
  %loadMem_426d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d37 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d37)
  store %struct.Memory* %call_426d37, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426d3c	 Bytes: 4
  %loadMem_426d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d3c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d3c)
  store %struct.Memory* %call_426d3c, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 426d40	 Bytes: 5
  %loadMem1_426d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426d40 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426d40, i64 548288, i64 5, i64 5)
  store %struct.Memory* %call1_426d40, %struct.Memory** %MEMORY

  %loadMem2_426d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426d40 = load i64, i64* %3
  %call2_426d40 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_426d40, %struct.Memory* %loadMem2_426d40)
  store %struct.Memory* %call2_426d40, %struct.Memory** %MEMORY

  ; Code: movq $0x4bfe61, %rdi	 RIP: 426d45	 Bytes: 10
  %loadMem_426d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d45 = call %struct.Memory* @routine_movq__0x4bfe61___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d45)
  store %struct.Memory* %call_426d45, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426d4f	 Bytes: 3
  %loadMem_426d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d4f = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d4f)
  store %struct.Memory* %call_426d4f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426d52	 Bytes: 3
  %loadMem_426d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d52 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d52)
  store %struct.Memory* %call_426d52, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rdx	 RIP: 426d55	 Bytes: 8
  %loadMem_426d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d55 = call %struct.Memory* @routine_movq_0x6d4740___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d55)
  store %struct.Memory* %call_426d55, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 426d5d	 Bytes: 4
  %loadMem_426d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d5d = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d5d)
  store %struct.Memory* %call_426d5d, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 426d61	 Bytes: 4
  %loadMem_426d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d61 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d61)
  store %struct.Memory* %call_426d61, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rcx,8), %rcx	 RIP: 426d65	 Bytes: 4
  %loadMem_426d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d65 = call %struct.Memory* @routine_movq___rdx__rcx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d65)
  store %struct.Memory* %call_426d65, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %esi	 RIP: 426d69	 Bytes: 2
  %loadMem_426d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d69 = call %struct.Memory* @routine_movl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d69)
  store %struct.Memory* %call_426d69, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426d6b	 Bytes: 4
  %loadMem_426d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d6b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d6b)
  store %struct.Memory* %call_426d6b, %struct.Memory** %MEMORY

  ; Code: callq .se_v	 RIP: 426d6f	 Bytes: 5
  %loadMem1_426d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426d6f = call %struct.Memory* @routine_callq_.se_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426d6f, i64 547921, i64 5, i64 5)
  store %struct.Memory* %call1_426d6f, %struct.Memory** %MEMORY

  %loadMem2_426d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426d6f = load i64, i64* %3
  %call2_426d6f = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64  %loadPC_426d6f, %struct.Memory* %loadMem2_426d6f)
  store %struct.Memory* %call2_426d6f, %struct.Memory** %MEMORY

  ; Code: movq $0x4bfe74, %rdi	 RIP: 426d74	 Bytes: 10
  %loadMem_426d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d74 = call %struct.Memory* @routine_movq__0x4bfe74___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d74)
  store %struct.Memory* %call_426d74, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426d7e	 Bytes: 3
  %loadMem_426d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d7e = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d7e)
  store %struct.Memory* %call_426d7e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426d81	 Bytes: 3
  %loadMem_426d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d81 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d81)
  store %struct.Memory* %call_426d81, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rcx	 RIP: 426d84	 Bytes: 8
  %loadMem_426d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d84 = call %struct.Memory* @routine_movq_0x6f9728___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d84)
  store %struct.Memory* %call_426d84, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 426d8c	 Bytes: 4
  %loadMem_426d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d8c = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d8c)
  store %struct.Memory* %call_426d8c, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 426d90	 Bytes: 4
  %loadMem_426d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d90 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d90)
  store %struct.Memory* %call_426d90, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 426d94	 Bytes: 4
  %loadMem_426d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d94 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d94)
  store %struct.Memory* %call_426d94, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %esi	 RIP: 426d98	 Bytes: 2
  %loadMem_426d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d98 = call %struct.Memory* @routine_movl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d98)
  store %struct.Memory* %call_426d98, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426d9a	 Bytes: 4
  %loadMem_426d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d9a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d9a)
  store %struct.Memory* %call_426d9a, %struct.Memory** %MEMORY

  ; Code: callq .se_v	 RIP: 426d9e	 Bytes: 5
  %loadMem1_426d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426d9e = call %struct.Memory* @routine_callq_.se_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426d9e, i64 547874, i64 5, i64 5)
  store %struct.Memory* %call1_426d9e, %struct.Memory** %MEMORY

  %loadMem2_426d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426d9e = load i64, i64* %3
  %call2_426d9e = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64  %loadPC_426d9e, %struct.Memory* %loadMem2_426d9e)
  store %struct.Memory* %call2_426d9e, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426da3	 Bytes: 3
  %loadMem_426da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426da3 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426da3)
  store %struct.Memory* %call_426da3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426da6	 Bytes: 3
  %loadMem_426da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426da6 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426da6)
  store %struct.Memory* %call_426da6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_426dc9	 RIP: 426da9	 Bytes: 5
  %loadMem_426da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426da9 = call %struct.Memory* @routine_jmpq_.L_426dc9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426da9, i64 32, i64 5)
  store %struct.Memory* %call_426da9, %struct.Memory** %MEMORY

  br label %block_.L_426dc9

  ; Code: .L_426dae:	 RIP: 426dae	 Bytes: 0
block_.L_426dae:

  ; Code: movq $0x4bfe49, %rdi	 RIP: 426dae	 Bytes: 10
  %loadMem_426dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dae = call %struct.Memory* @routine_movq__0x4bfe49___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dae)
  store %struct.Memory* %call_426dae, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 426db8	 Bytes: 2
  %loadMem_426db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426db8 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426db8)
  store %struct.Memory* %call_426db8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426dba	 Bytes: 4
  %loadMem_426dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dba = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dba)
  store %struct.Memory* %call_426dba, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 426dbe	 Bytes: 5
  %loadMem1_426dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426dbe = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426dbe, i64 548162, i64 5, i64 5)
  store %struct.Memory* %call1_426dbe, %struct.Memory** %MEMORY

  %loadMem2_426dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426dbe = load i64, i64* %3
  %call2_426dbe = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_426dbe, %struct.Memory* %loadMem2_426dbe)
  store %struct.Memory* %call2_426dbe, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426dc3	 Bytes: 3
  %loadMem_426dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dc3 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dc3)
  store %struct.Memory* %call_426dc3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426dc6	 Bytes: 3
  %loadMem_426dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dc6 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dc6)
  store %struct.Memory* %call_426dc6, %struct.Memory** %MEMORY

  ; Code: .L_426dc9:	 RIP: 426dc9	 Bytes: 0
  br label %block_.L_426dc9
block_.L_426dc9:

  ; Code: movl $0x1, %eax	 RIP: 426dc9	 Bytes: 5
  %loadMem_426dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dc9 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dc9)
  store %struct.Memory* %call_426dc9, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 426dce	 Bytes: 8
  %loadMem_426dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dce = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dce)
  store %struct.Memory* %call_426dce, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 426dd6	 Bytes: 4
  %loadMem_426dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dd6 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dd6)
  store %struct.Memory* %call_426dd6, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 426dda	 Bytes: 4
  %loadMem_426dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dda = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dda)
  store %struct.Memory* %call_426dda, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 426dde	 Bytes: 4
  %loadMem_426dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dde = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dde)
  store %struct.Memory* %call_426dde, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rcx), %esi	 RIP: 426de2	 Bytes: 3
  %loadMem_426de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426de2 = call %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426de2)
  store %struct.Memory* %call_426de2, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %ecx	 RIP: 426de5	 Bytes: 7
  %loadMem_426de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426de5 = call %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426de5)
  store %struct.Memory* %call_426de5, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 426dec	 Bytes: 2
  %loadMem_426dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dec = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dec)
  store %struct.Memory* %call_426dec, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %esi	 RIP: 426dee	 Bytes: 2
  %loadMem_426dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dee = call %struct.Memory* @routine_cmpl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dee)
  store %struct.Memory* %call_426dee, %struct.Memory** %MEMORY

  ; Code: jne .L_426e5f	 RIP: 426df0	 Bytes: 6
  %loadMem_426df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426df0 = call %struct.Memory* @routine_jne_.L_426e5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426df0, i8* %BRANCH_TAKEN, i64 111, i64 6, i64 6)
  store %struct.Memory* %call_426df0, %struct.Memory** %MEMORY

  %loadBr_426df0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426df0 = icmp eq i8 %loadBr_426df0, 1
  br i1 %cmpBr_426df0, label %block_.L_426e5f, label %block_426df6

block_426df6:
  ; Code: movq 0x6f9728, %rax	 RIP: 426df6	 Bytes: 8
  %loadMem_426df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426df6 = call %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426df6)
  store %struct.Memory* %call_426df6, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 426dfe	 Bytes: 4
  %loadMem_426dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dfe = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dfe)
  store %struct.Memory* %call_426dfe, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 426e02	 Bytes: 4
  %loadMem_426e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e02 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e02)
  store %struct.Memory* %call_426e02, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 426e06	 Bytes: 4
  %loadMem_426e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e06 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e06)
  store %struct.Memory* %call_426e06, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4(%rax)	 RIP: 426e0a	 Bytes: 4
  %loadMem_426e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e0a = call %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e0a)
  store %struct.Memory* %call_426e0a, %struct.Memory** %MEMORY

  ; Code: jne .L_426e5f	 RIP: 426e0e	 Bytes: 6
  %loadMem_426e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e0e = call %struct.Memory* @routine_jne_.L_426e5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e0e, i8* %BRANCH_TAKEN, i64 81, i64 6, i64 6)
  store %struct.Memory* %call_426e0e, %struct.Memory** %MEMORY

  %loadBr_426e0e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426e0e = icmp eq i8 %loadBr_426e0e, 1
  br i1 %cmpBr_426e0e, label %block_.L_426e5f, label %block_426e14

block_426e14:
  ; Code: movl $0x1, %eax	 RIP: 426e14	 Bytes: 5
  %loadMem_426e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e14 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e14)
  store %struct.Memory* %call_426e14, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 426e19	 Bytes: 8
  %loadMem_426e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e19 = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e19)
  store %struct.Memory* %call_426e19, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 426e21	 Bytes: 4
  %loadMem_426e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e21 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e21)
  store %struct.Memory* %call_426e21, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 426e25	 Bytes: 4
  %loadMem_426e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e25 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e25)
  store %struct.Memory* %call_426e25, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 426e29	 Bytes: 4
  %loadMem_426e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e29 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e29)
  store %struct.Memory* %call_426e29, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rcx), %esi	 RIP: 426e2d	 Bytes: 3
  %loadMem_426e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e2d = call %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e2d)
  store %struct.Memory* %call_426e2d, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %ecx	 RIP: 426e30	 Bytes: 7
  %loadMem_426e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e30 = call %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e30)
  store %struct.Memory* %call_426e30, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 426e37	 Bytes: 2
  %loadMem_426e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e37 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e37)
  store %struct.Memory* %call_426e37, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %esi	 RIP: 426e39	 Bytes: 2
  %loadMem_426e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e39 = call %struct.Memory* @routine_cmpl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e39)
  store %struct.Memory* %call_426e39, %struct.Memory** %MEMORY

  ; Code: jne .L_426e5f	 RIP: 426e3b	 Bytes: 6
  %loadMem_426e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e3b = call %struct.Memory* @routine_jne_.L_426e5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e3b, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_426e3b, %struct.Memory** %MEMORY

  %loadBr_426e3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426e3b = icmp eq i8 %loadBr_426e3b, 1
  br i1 %cmpBr_426e3b, label %block_.L_426e5f, label %block_426e41

block_426e41:
  ; Code: movq 0x6f9728, %rax	 RIP: 426e41	 Bytes: 8
  %loadMem_426e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e41 = call %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e41)
  store %struct.Memory* %call_426e41, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 426e49	 Bytes: 4
  %loadMem_426e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e49 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e49)
  store %struct.Memory* %call_426e49, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 426e4d	 Bytes: 4
  %loadMem_426e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e4d = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e4d)
  store %struct.Memory* %call_426e4d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 426e51	 Bytes: 4
  %loadMem_426e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e51 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e51)
  store %struct.Memory* %call_426e51, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8(%rax)	 RIP: 426e55	 Bytes: 4
  %loadMem_426e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e55 = call %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e55)
  store %struct.Memory* %call_426e55, %struct.Memory** %MEMORY

  ; Code: je .L_426f09	 RIP: 426e59	 Bytes: 6
  %loadMem_426e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e59 = call %struct.Memory* @routine_je_.L_426f09(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e59, i8* %BRANCH_TAKEN, i64 176, i64 6, i64 6)
  store %struct.Memory* %call_426e59, %struct.Memory** %MEMORY

  %loadBr_426e59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426e59 = icmp eq i8 %loadBr_426e59, 1
  br i1 %cmpBr_426e59, label %block_.L_426f09, label %block_.L_426e5f

  ; Code: .L_426e5f:	 RIP: 426e5f	 Bytes: 0
block_.L_426e5f:

  ; Code: movq $0x4bfe87, %rdi	 RIP: 426e5f	 Bytes: 10
  %loadMem_426e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e5f = call %struct.Memory* @routine_movq__0x4bfe87___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e5f)
  store %struct.Memory* %call_426e5f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %esi	 RIP: 426e69	 Bytes: 5
  %loadMem_426e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e69 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e69)
  store %struct.Memory* %call_426e69, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426e6e	 Bytes: 4
  %loadMem_426e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e6e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e6e)
  store %struct.Memory* %call_426e6e, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 426e72	 Bytes: 5
  %loadMem1_426e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426e72 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426e72, i64 547982, i64 5, i64 5)
  store %struct.Memory* %call1_426e72, %struct.Memory** %MEMORY

  %loadMem2_426e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426e72 = load i64, i64* %3
  %call2_426e72 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_426e72, %struct.Memory* %loadMem2_426e72)
  store %struct.Memory* %call2_426e72, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426e77	 Bytes: 3
  %loadMem_426e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e77 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e77)
  store %struct.Memory* %call_426e77, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426e7a	 Bytes: 3
  %loadMem_426e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e7a = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e7a)
  store %struct.Memory* %call_426e7a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x1c(%rbp)	 RIP: 426e7d	 Bytes: 7
  %loadMem_426e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e7d = call %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e7d)
  store %struct.Memory* %call_426e7d, %struct.Memory** %MEMORY

  ; Code: .L_426e84:	 RIP: 426e84	 Bytes: 0
  br label %block_.L_426e84
block_.L_426e84:

  ; Code: cmpl $0x3, -0x1c(%rbp)	 RIP: 426e84	 Bytes: 4
  %loadMem_426e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e84 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e84)
  store %struct.Memory* %call_426e84, %struct.Memory** %MEMORY

  ; Code: jge .L_426f04	 RIP: 426e88	 Bytes: 6
  %loadMem_426e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e88 = call %struct.Memory* @routine_jge_.L_426f04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e88, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_426e88, %struct.Memory** %MEMORY

  %loadBr_426e88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426e88 = icmp eq i8 %loadBr_426e88, 1
  br i1 %cmpBr_426e88, label %block_.L_426f04, label %block_426e8e

block_426e8e:
  ; Code: movq $0x4bfe9d, %rdi	 RIP: 426e8e	 Bytes: 10
  %loadMem_426e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e8e = call %struct.Memory* @routine_movq__0x4bfe9d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e8e)
  store %struct.Memory* %call_426e8e, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rax	 RIP: 426e98	 Bytes: 8
  %loadMem_426e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e98 = call %struct.Memory* @routine_movq_0x6d4740___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e98)
  store %struct.Memory* %call_426e98, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 426ea0	 Bytes: 4
  %loadMem_426ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ea0 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ea0)
  store %struct.Memory* %call_426ea0, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 426ea4	 Bytes: 4
  %loadMem_426ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ea4 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ea4)
  store %struct.Memory* %call_426ea4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 426ea8	 Bytes: 4
  %loadMem_426ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ea8 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ea8)
  store %struct.Memory* %call_426ea8, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 426eac	 Bytes: 4
  %loadMem_426eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426eac = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426eac)
  store %struct.Memory* %call_426eac, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 426eb0	 Bytes: 3
  %loadMem_426eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426eb0 = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426eb0)
  store %struct.Memory* %call_426eb0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426eb3	 Bytes: 4
  %loadMem_426eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426eb3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426eb3)
  store %struct.Memory* %call_426eb3, %struct.Memory** %MEMORY

  ; Code: callq .se_v	 RIP: 426eb7	 Bytes: 5
  %loadMem1_426eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426eb7 = call %struct.Memory* @routine_callq_.se_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426eb7, i64 547593, i64 5, i64 5)
  store %struct.Memory* %call1_426eb7, %struct.Memory** %MEMORY

  %loadMem2_426eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426eb7 = load i64, i64* %3
  %call2_426eb7 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64  %loadPC_426eb7, %struct.Memory* %loadMem2_426eb7)
  store %struct.Memory* %call2_426eb7, %struct.Memory** %MEMORY

  ; Code: movq $0x4bfeae, %rdi	 RIP: 426ebc	 Bytes: 10
  %loadMem_426ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ebc = call %struct.Memory* @routine_movq__0x4bfeae___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ebc)
  store %struct.Memory* %call_426ebc, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426ec6	 Bytes: 3
  %loadMem_426ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ec6 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ec6)
  store %struct.Memory* %call_426ec6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426ec9	 Bytes: 3
  %loadMem_426ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ec9 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ec9)
  store %struct.Memory* %call_426ec9, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rcx	 RIP: 426ecc	 Bytes: 8
  %loadMem_426ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ecc = call %struct.Memory* @routine_movq_0x6f9728___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ecc)
  store %struct.Memory* %call_426ecc, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 426ed4	 Bytes: 4
  %loadMem_426ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ed4 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ed4)
  store %struct.Memory* %call_426ed4, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 426ed8	 Bytes: 4
  %loadMem_426ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ed8 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ed8)
  store %struct.Memory* %call_426ed8, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 426edc	 Bytes: 4
  %loadMem_426edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426edc = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426edc)
  store %struct.Memory* %call_426edc, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 426ee0	 Bytes: 4
  %loadMem_426ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ee0 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ee0)
  store %struct.Memory* %call_426ee0, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 426ee4	 Bytes: 3
  %loadMem_426ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ee4 = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ee4)
  store %struct.Memory* %call_426ee4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426ee7	 Bytes: 4
  %loadMem_426ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ee7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ee7)
  store %struct.Memory* %call_426ee7, %struct.Memory** %MEMORY

  ; Code: callq .se_v	 RIP: 426eeb	 Bytes: 5
  %loadMem1_426eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426eeb = call %struct.Memory* @routine_callq_.se_v(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426eeb, i64 547541, i64 5, i64 5)
  store %struct.Memory* %call1_426eeb, %struct.Memory** %MEMORY

  %loadMem2_426eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426eeb = load i64, i64* %3
  %call2_426eeb = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64  %loadPC_426eeb, %struct.Memory* %loadMem2_426eeb)
  store %struct.Memory* %call2_426eeb, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426ef0	 Bytes: 3
  %loadMem_426ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ef0 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ef0)
  store %struct.Memory* %call_426ef0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426ef3	 Bytes: 3
  %loadMem_426ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ef3 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ef3)
  store %struct.Memory* %call_426ef3, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 426ef6	 Bytes: 3
  %loadMem_426ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ef6 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ef6)
  store %struct.Memory* %call_426ef6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 426ef9	 Bytes: 3
  %loadMem_426ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ef9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ef9)
  store %struct.Memory* %call_426ef9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 426efc	 Bytes: 3
  %loadMem_426efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426efc = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426efc)
  store %struct.Memory* %call_426efc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_426e84	 RIP: 426eff	 Bytes: 5
  %loadMem_426eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426eff = call %struct.Memory* @routine_jmpq_.L_426e84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426eff, i64 -123, i64 5)
  store %struct.Memory* %call_426eff, %struct.Memory** %MEMORY

  br label %block_.L_426e84

  ; Code: .L_426f04:	 RIP: 426f04	 Bytes: 0
block_.L_426f04:

  ; Code: jmpq .L_426f24	 RIP: 426f04	 Bytes: 5
  %loadMem_426f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f04 = call %struct.Memory* @routine_jmpq_.L_426f24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f04, i64 32, i64 5)
  store %struct.Memory* %call_426f04, %struct.Memory** %MEMORY

  br label %block_.L_426f24

  ; Code: .L_426f09:	 RIP: 426f09	 Bytes: 0
block_.L_426f09:

  ; Code: movq $0x4bfe87, %rdi	 RIP: 426f09	 Bytes: 10
  %loadMem_426f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f09 = call %struct.Memory* @routine_movq__0x4bfe87___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f09)
  store %struct.Memory* %call_426f09, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 426f13	 Bytes: 2
  %loadMem_426f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f13 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f13)
  store %struct.Memory* %call_426f13, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 426f15	 Bytes: 4
  %loadMem_426f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f15 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f15)
  store %struct.Memory* %call_426f15, %struct.Memory** %MEMORY

  ; Code: callq .u_1	 RIP: 426f19	 Bytes: 5
  %loadMem1_426f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426f19 = call %struct.Memory* @routine_callq_.u_1(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426f19, i64 547815, i64 5, i64 5)
  store %struct.Memory* %call1_426f19, %struct.Memory** %MEMORY

  %loadMem2_426f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426f19 = load i64, i64* %3
  %call2_426f19 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64  %loadPC_426f19, %struct.Memory* %loadMem2_426f19)
  store %struct.Memory* %call2_426f19, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 426f1e	 Bytes: 3
  %loadMem_426f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f1e = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f1e)
  store %struct.Memory* %call_426f1e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 426f21	 Bytes: 3
  %loadMem_426f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f21 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f21)
  store %struct.Memory* %call_426f21, %struct.Memory** %MEMORY

  ; Code: .L_426f24:	 RIP: 426f24	 Bytes: 0
  br label %block_.L_426f24
block_.L_426f24:

  ; Code: jmpq .L_426f29	 RIP: 426f24	 Bytes: 5
  %loadMem_426f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f24 = call %struct.Memory* @routine_jmpq_.L_426f29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f24, i64 5, i64 5)
  store %struct.Memory* %call_426f24, %struct.Memory** %MEMORY

  br label %block_.L_426f29

  ; Code: .L_426f29:	 RIP: 426f29	 Bytes: 0
block_.L_426f29:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 426f29	 Bytes: 3
  %loadMem_426f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f29 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f29)
  store %struct.Memory* %call_426f29, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 426f2c	 Bytes: 3
  %loadMem_426f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f2c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f2c)
  store %struct.Memory* %call_426f2c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 426f2f	 Bytes: 3
  %loadMem_426f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f2f = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f2f)
  store %struct.Memory* %call_426f2f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_426ccd	 RIP: 426f32	 Bytes: 5
  %loadMem_426f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f32 = call %struct.Memory* @routine_jmpq_.L_426ccd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f32, i64 -613, i64 5)
  store %struct.Memory* %call_426f32, %struct.Memory** %MEMORY

  br label %block_.L_426ccd

  ; Code: .L_426f37:	 RIP: 426f37	 Bytes: 0
block_.L_426f37:

  ; Code: jmpq .L_426f3c	 RIP: 426f37	 Bytes: 5
  %loadMem_426f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f37 = call %struct.Memory* @routine_jmpq_.L_426f3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f37, i64 5, i64 5)
  store %struct.Memory* %call_426f37, %struct.Memory** %MEMORY

  br label %block_.L_426f3c

  ; Code: .L_426f3c:	 RIP: 426f3c	 Bytes: 0
block_.L_426f3c:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 426f3c	 Bytes: 3
  %loadMem_426f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f3c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f3c)
  store %struct.Memory* %call_426f3c, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rsp	 RIP: 426f3f	 Bytes: 4
  %loadMem_426f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f3f = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f3f)
  store %struct.Memory* %call_426f3f, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 426f43	 Bytes: 1
  %loadMem_426f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f43 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f43)
  store %struct.Memory* %call_426f43, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 426f44	 Bytes: 1
  %loadMem_426f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f44 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f44)
  store %struct.Memory* %call_426f44, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_426f44
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

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 32)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x4bfd9d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bfd9d_type* @G__0x4bfd9d to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cb8f8_type* @G_0x6cb8f8 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0x93c__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2364
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_0x725600___rax_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 8
  %11 = add i64 %10, 7493120
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 120)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x70f6d0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x70f6d0_type* @G_0x70f6d0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movq__0x4bfdb7___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bfdb7_type* @G__0x4bfdb7 to i64))
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

define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0x7242a0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x7242a0_type* @G_0x7242a0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_cmpl_0x11940__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 72000
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

define %struct.Memory* @routine_jge_.L_426cb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6d4740_type* @G_0x6d4740 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x70f6d0_type* @G_0x70f6d0 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %13 [
    i5 0, label %45
    i5 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = trunc i64 %3 to i32
  %9 = shl i32 %8, 1
  %10 = icmp slt i32 %8, 0
  %11 = icmp slt i32 %9, 0
  %12 = xor i1 %10, %11
  br label %23

; <label>:13:                                     ; preds = %5
  %14 = and i64 %4, 31
  %15 = add   i64 %14, 4294967295
  %16 = and i64 %3, 4294967295
  %17 = and i64 %15, 4294967295
  %18 = shl i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, 0
  %21 = icmp ne i8 0, 0
  %22 = shl i32 %19, 1
  br label %23

; <label>:23:                                     ; preds = %13, %7
  %24 = phi i1 [ %10, %7 ], [ %20, %13 ]
  %25 = phi i1 [ %12, %7 ], [ %21, %13 ]
  %26 = phi i32 [ %9, %7 ], [ %22, %13 ]
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %2, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %29 = zext i1 %24 to i8
  store i8 %29, i8* %28, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %31 = and i32 %26, 254
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31) #22
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  store i8 %35, i8* %30, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %38 = icmp eq i32 %26, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %37, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %41 = lshr i32 %26, 31
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %40, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %44 = zext i1 %25 to i8
  store i8 %44, i8* %43, align 1
  br label %45

; <label>:45:                                     ; preds = %23, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shll__cl___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_cmpl__eax___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
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

define %struct.Memory* @routine_jne_.L_426ab2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6f9728_type* @G_0x6f9728 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_je_.L_426b31(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4bfdd3___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bfdd3_type* @G__0x4bfdd3 to i64))
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


define %struct.Memory* @routine_movq__0x4bfdeb___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bfdeb_type* @G__0x4bfdeb to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0x6d4740___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x6d4740_type* @G_0x6d4740 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movq___rdx__rcx_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movq__0x4bfdfe___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bfdfe_type* @G__0x4bfdfe to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0x6f9728___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6f9728_type* @G_0x6f9728 to i64))
  ret %struct.Memory* %11
}

















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_426b4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x7242a0_type* @G_0x7242a0 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_jne_.L_426bde(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_426c86(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4bfe11___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bfe11_type* @G__0x4bfe11 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x3__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_426c81(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4bfe27___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bfe27_type* @G__0x4bfe27 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x6d4740___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6d4740_type* @G_0x6d4740 to i64))
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






define %struct.Memory* @routine_movq__0x4bfe38___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bfe38_type* @G__0x4bfe38 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_jmpq_.L_426c03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_426ca1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jmpq_.L_426ca6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_426a54(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_426f3c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl_0x11944__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 72004
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_426f37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_426d2d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_426dae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4bfe49___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bfe49_type* @G__0x4bfe49 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movq__0x4bfe61___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bfe61_type* @G__0x4bfe61 to i64))
  ret %struct.Memory* %11
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












define %struct.Memory* @routine_movq__0x4bfe74___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bfe74_type* @G__0x4bfe74 to i64))
  ret %struct.Memory* %11
}
























define %struct.Memory* @routine_jmpq_.L_426dc9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
































define %struct.Memory* @routine_jne_.L_426e5f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












































define %struct.Memory* @routine_je_.L_426f09(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4bfe87___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bfe87_type* @G__0x4bfe87 to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jge_.L_426f04(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4bfe9d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bfe9d_type* @G__0x4bfe9d to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_movq__0x4bfeae___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bfeae_type* @G__0x4bfeae to i64))
  ret %struct.Memory* %11
}
































define %struct.Memory* @routine_jmpq_.L_426e84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_426f24(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jmpq_.L_426f29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_426ccd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_426f3c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x20___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 32)
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

