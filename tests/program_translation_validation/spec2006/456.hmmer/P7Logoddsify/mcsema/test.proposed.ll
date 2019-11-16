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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0A\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

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

declare %struct.Memory* @sub_427db0.Prob2Score(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_433ae0.DegenerateSymbolScore(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_428080.LogSum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x20c8f__rip__type = type <{ [4 x i8] }>
@G_0x20c8f__rip_= global %G_0x20c8f__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x20d4a__rip__type = type <{ [4 x i8] }>
@G_0x20d4a__rip_= global %G_0x20d4a__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x20d6d__rip__type = type <{ [4 x i8] }>
@G_0x20d6d__rip_= global %G_0x20d6d__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x20d90__rip__type = type <{ [4 x i8] }>
@G_0x20d90__rip_= global %G_0x20d90__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x20db8__rip__type = type <{ [8 x i8] }>
@G_0x20db8__rip_= global %G_0x20db8__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x20edc__rip__type = type <{ [8 x i8] }>
@G_0x20edc__rip_= global %G_0x20edc__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x20fdb__rip__type = type <{ [8 x i8] }>
@G_0x20fdb__rip_= global %G_0x20fdb__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x20fe4__rip__type = type <{ [8 x i8] }>
@G_0x20fe4__rip_= global %G_0x20fe4__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x21001__rip__type = type <{ [8 x i8] }>
@G_0x21001__rip_= global %G_0x21001__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x211dd__rip__type = type <{ [8 x i8] }>
@G_0x211dd__rip_= global %G_0x211dd__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x211f4__rip__type = type <{ [8 x i8] }>
@G_0x211f4__rip_= global %G_0x211f4__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x211fc__rip__type = type <{ [8 x i8] }>
@G_0x211fc__rip_= global %G_0x211fc__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x21304__rip__type = type <{ [8 x i8] }>
@G_0x21304__rip_= global %G_0x21304__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x21319__rip__type = type <{ [8 x i8] }>
@G_0x21319__rip_= global %G_0x21319__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x21339__rip__type = type <{ [8 x i8] }>
@G_0x21339__rip_= global %G_0x21339__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x21485__rip__type = type <{ [4 x i8] }>
@G_0x21485__rip_= global %G_0x21485__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x214fa__rip__type = type <{ [8 x i8] }>
@G_0x214fa__rip_= global %G_0x214fa__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x21524__rip__type = type <{ [8 x i8] }>
@G_0x21524__rip_= global %G_0x21524__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x2157d__rip__type = type <{ [4 x i8] }>
@G_0x2157d__rip_= global %G_0x2157d__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x215a2__rip__type = type <{ [8 x i8] }>
@G_0x215a2__rip_= global %G_0x215a2__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x676ffc_type = type <{ [4 x i8] }>
@G_0x676ffc= global %G_0x676ffc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x677060_type = type <{ [4 x i8] }>
@G_0x677060= global %G_0x677060_type <{ [4 x i8] c"\00\00\00\00" }>


define %struct.Memory* @P7Logoddsify(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .P7Logoddsify:	 RIP: 432f30	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 432f30	 Bytes: 1
  %loadMem_432f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f30 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f30)
  store %struct.Memory* %call_432f30, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 432f31	 Bytes: 3
  %loadMem_432f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f31 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f31)
  store %struct.Memory* %call_432f31, %struct.Memory** %MEMORY

  ; Code: subq $0xd0, %rsp	 RIP: 432f34	 Bytes: 7
  %loadMem_432f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f34 = call %struct.Memory* @routine_subq__0xd0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f34)
  store %struct.Memory* %call_432f34, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 432f3b	 Bytes: 4
  %loadMem_432f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f3b = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f3b)
  store %struct.Memory* %call_432f3b, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 432f3f	 Bytes: 3
  %loadMem_432f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f3f = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f3f)
  store %struct.Memory* %call_432f3f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 432f42	 Bytes: 4
  %loadMem_432f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f42 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f42)
  store %struct.Memory* %call_432f42, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rdi), %esi	 RIP: 432f46	 Bytes: 6
  %loadMem_432f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f46 = call %struct.Memory* @routine_movl_0x1c8__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f46)
  store %struct.Memory* %call_432f46, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %esi	 RIP: 432f4c	 Bytes: 3
  %loadMem_432f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f4c = call %struct.Memory* @routine_andl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f4c)
  store %struct.Memory* %call_432f4c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 432f4f	 Bytes: 3
  %loadMem_432f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f4f = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f4f)
  store %struct.Memory* %call_432f4f, %struct.Memory** %MEMORY

  ; Code: je .L_432f5d	 RIP: 432f52	 Bytes: 6
  %loadMem_432f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f52 = call %struct.Memory* @routine_je_.L_432f5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f52, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_432f52, %struct.Memory** %MEMORY

  %loadBr_432f52 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432f52 = icmp eq i8 %loadBr_432f52, 1
  br i1 %cmpBr_432f52, label %block_.L_432f5d, label %block_432f58

block_432f58:
  ; Code: jmpq .L_433ad1	 RIP: 432f58	 Bytes: 5
  %loadMem_432f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f58 = call %struct.Memory* @routine_jmpq_.L_433ad1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f58, i64 2937, i64 5)
  store %struct.Memory* %call_432f58, %struct.Memory** %MEMORY

  br label %block_.L_433ad1

  ; Code: .L_432f5d:	 RIP: 432f5d	 Bytes: 0
block_.L_432f5d:

  ; Code: movl $0x1, -0x10(%rbp)	 RIP: 432f5d	 Bytes: 7
  %loadMem_432f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f5d = call %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f5d)
  store %struct.Memory* %call_432f5d, %struct.Memory** %MEMORY

  ; Code: .L_432f64:	 RIP: 432f64	 Bytes: 0
  br label %block_.L_432f64
block_.L_432f64:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 432f64	 Bytes: 3
  %loadMem_432f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f64 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f64)
  store %struct.Memory* %call_432f64, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 432f67	 Bytes: 4
  %loadMem_432f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f67 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f67)
  store %struct.Memory* %call_432f67, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 432f6b	 Bytes: 6
  %loadMem_432f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f6b = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f6b)
  store %struct.Memory* %call_432f6b, %struct.Memory** %MEMORY

  ; Code: jg .L_433123	 RIP: 432f71	 Bytes: 6
  %loadMem_432f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f71 = call %struct.Memory* @routine_jg_.L_433123(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f71, i8* %BRANCH_TAKEN, i64 434, i64 6, i64 6)
  store %struct.Memory* %call_432f71, %struct.Memory** %MEMORY

  %loadBr_432f71 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432f71 = icmp eq i8 %loadBr_432f71, 1
  br i1 %cmpBr_432f71, label %block_.L_433123, label %block_432f77

block_432f77:
  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 432f77	 Bytes: 7
  %loadMem_432f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f77 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f77)
  store %struct.Memory* %call_432f77, %struct.Memory** %MEMORY

  ; Code: .L_432f7e:	 RIP: 432f7e	 Bytes: 0
  br label %block_.L_432f7e
block_.L_432f7e:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 432f7e	 Bytes: 3
  %loadMem_432f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f7e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f7e)
  store %struct.Memory* %call_432f7e, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 432f81	 Bytes: 7
  %loadMem_432f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f81 = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f81)
  store %struct.Memory* %call_432f81, %struct.Memory** %MEMORY

  ; Code: jge .L_43304c	 RIP: 432f88	 Bytes: 6
  %loadMem_432f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f88 = call %struct.Memory* @routine_jge_.L_43304c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f88, i8* %BRANCH_TAKEN, i64 196, i64 6, i64 6)
  store %struct.Memory* %call_432f88, %struct.Memory** %MEMORY

  %loadBr_432f88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432f88 = icmp eq i8 %loadBr_432f88, 1
  br i1 %cmpBr_432f88, label %block_.L_43304c, label %block_432f8e

block_432f8e:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432f8e	 Bytes: 4
  %loadMem_432f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f8e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f8e)
  store %struct.Memory* %call_432f8e, %struct.Memory** %MEMORY

  ; Code: movq 0x98(%rax), %rax	 RIP: 432f92	 Bytes: 7
  %loadMem_432f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f92 = call %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f92)
  store %struct.Memory* %call_432f92, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 432f99	 Bytes: 4
  %loadMem_432f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f99 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f99)
  store %struct.Memory* %call_432f99, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 432f9d	 Bytes: 4
  %loadMem_432f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f9d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f9d)
  store %struct.Memory* %call_432f9d, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 432fa1	 Bytes: 4
  %loadMem_432fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fa1 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fa1)
  store %struct.Memory* %call_432fa1, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 432fa5	 Bytes: 5
  %loadMem_432fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fa5 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fa5)
  store %struct.Memory* %call_432fa5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 432faa	 Bytes: 4
  %loadMem_432faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432faa = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432faa)
  store %struct.Memory* %call_432faa, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 432fae	 Bytes: 4
  %loadMem_432fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fae = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fae)
  store %struct.Memory* %call_432fae, %struct.Memory** %MEMORY

  ; Code: movss 0xe0(%rax,%rcx,4), %xmm1	 RIP: 432fb2	 Bytes: 9
  %loadMem_432fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fb2 = call %struct.Memory* @routine_movss_0xe0__rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fb2)
  store %struct.Memory* %call_432fb2, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 432fbb	 Bytes: 5
  %loadMem1_432fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432fbb = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432fbb, i64 -45579, i64 5, i64 5)
  store %struct.Memory* %call1_432fbb, %struct.Memory** %MEMORY

  %loadMem2_432fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432fbb = load i64, i64* %3
  %call2_432fbb = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_432fbb, %struct.Memory* %loadMem2_432fbb)
  store %struct.Memory* %call2_432fbb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 432fc0	 Bytes: 4
  %loadMem_432fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fc0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fc0)
  store %struct.Memory* %call_432fc0, %struct.Memory** %MEMORY

  ; Code: movq 0x140(%rcx), %rcx	 RIP: 432fc4	 Bytes: 7
  %loadMem_432fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fc4 = call %struct.Memory* @routine_movq_0x140__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fc4)
  store %struct.Memory* %call_432fc4, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 432fcb	 Bytes: 4
  %loadMem_432fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fcb = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fcb)
  store %struct.Memory* %call_432fcb, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 432fcf	 Bytes: 4
  %loadMem_432fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fcf = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fcf)
  store %struct.Memory* %call_432fcf, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 432fd3	 Bytes: 4
  %loadMem_432fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fd3 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fd3)
  store %struct.Memory* %call_432fd3, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 432fd7	 Bytes: 3
  %loadMem_432fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fd7 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fd7)
  store %struct.Memory* %call_432fd7, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 432fda	 Bytes: 3
  %loadMem_432fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fda = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fda)
  store %struct.Memory* %call_432fda, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 432fdd	 Bytes: 4
  %loadMem_432fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fdd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fdd)
  store %struct.Memory* %call_432fdd, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 432fe1	 Bytes: 6
  %loadMem_432fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fe1 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fe1)
  store %struct.Memory* %call_432fe1, %struct.Memory** %MEMORY

  ; Code: jge .L_433039	 RIP: 432fe7	 Bytes: 6
  %loadMem_432fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fe7 = call %struct.Memory* @routine_jge_.L_433039(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fe7, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_432fe7, %struct.Memory** %MEMORY

  %loadBr_432fe7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432fe7 = icmp eq i8 %loadBr_432fe7, 1
  br i1 %cmpBr_432fe7, label %block_.L_433039, label %block_432fed

block_432fed:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432fed	 Bytes: 4
  %loadMem_432fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fed = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fed)
  store %struct.Memory* %call_432fed, %struct.Memory** %MEMORY

  ; Code: movq 0xa0(%rax), %rax	 RIP: 432ff1	 Bytes: 7
  %loadMem_432ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ff1 = call %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ff1)
  store %struct.Memory* %call_432ff1, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 432ff8	 Bytes: 4
  %loadMem_432ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ff8 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ff8)
  store %struct.Memory* %call_432ff8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 432ffc	 Bytes: 4
  %loadMem_432ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ffc = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ffc)
  store %struct.Memory* %call_432ffc, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 433000	 Bytes: 4
  %loadMem_433000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433000 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433000)
  store %struct.Memory* %call_433000, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 433004	 Bytes: 5
  %loadMem_433004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433004 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433004)
  store %struct.Memory* %call_433004, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 433009	 Bytes: 4
  %loadMem_433009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433009 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433009)
  store %struct.Memory* %call_433009, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43300d	 Bytes: 4
  %loadMem_43300d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43300d = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43300d)
  store %struct.Memory* %call_43300d, %struct.Memory** %MEMORY

  ; Code: movss 0xe0(%rax,%rcx,4), %xmm1	 RIP: 433011	 Bytes: 9
  %loadMem_433011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433011 = call %struct.Memory* @routine_movss_0xe0__rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433011)
  store %struct.Memory* %call_433011, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 43301a	 Bytes: 5
  %loadMem1_43301a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43301a = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43301a, i64 -45674, i64 5, i64 5)
  store %struct.Memory* %call1_43301a, %struct.Memory** %MEMORY

  %loadMem2_43301a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43301a = load i64, i64* %3
  %call2_43301a = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_43301a, %struct.Memory* %loadMem2_43301a)
  store %struct.Memory* %call2_43301a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43301f	 Bytes: 4
  %loadMem_43301f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43301f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43301f)
  store %struct.Memory* %call_43301f, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rcx), %rcx	 RIP: 433023	 Bytes: 7
  %loadMem_433023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433023 = call %struct.Memory* @routine_movq_0x148__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433023)
  store %struct.Memory* %call_433023, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 43302a	 Bytes: 4
  %loadMem_43302a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43302a = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43302a)
  store %struct.Memory* %call_43302a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 43302e	 Bytes: 4
  %loadMem_43302e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43302e = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43302e)
  store %struct.Memory* %call_43302e, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 433032	 Bytes: 4
  %loadMem_433032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433032 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433032)
  store %struct.Memory* %call_433032, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 433036	 Bytes: 3
  %loadMem_433036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433036 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433036)
  store %struct.Memory* %call_433036, %struct.Memory** %MEMORY

  ; Code: .L_433039:	 RIP: 433039	 Bytes: 0
  br label %block_.L_433039
block_.L_433039:

  ; Code: jmpq .L_43303e	 RIP: 433039	 Bytes: 5
  %loadMem_433039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433039 = call %struct.Memory* @routine_jmpq_.L_43303e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433039, i64 5, i64 5)
  store %struct.Memory* %call_433039, %struct.Memory** %MEMORY

  br label %block_.L_43303e

  ; Code: .L_43303e:	 RIP: 43303e	 Bytes: 0
block_.L_43303e:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 43303e	 Bytes: 3
  %loadMem_43303e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43303e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43303e)
  store %struct.Memory* %call_43303e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 433041	 Bytes: 3
  %loadMem_433041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433041 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433041)
  store %struct.Memory* %call_433041, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 433044	 Bytes: 3
  %loadMem_433044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433044 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433044)
  store %struct.Memory* %call_433044, %struct.Memory** %MEMORY

  ; Code: jmpq .L_432f7e	 RIP: 433047	 Bytes: 5
  %loadMem_433047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433047 = call %struct.Memory* @routine_jmpq_.L_432f7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433047, i64 -201, i64 5)
  store %struct.Memory* %call_433047, %struct.Memory** %MEMORY

  br label %block_.L_432f7e

  ; Code: .L_43304c:	 RIP: 43304c	 Bytes: 0
block_.L_43304c:

  ; Code: movl 0x677060, %eax	 RIP: 43304c	 Bytes: 7
  %loadMem_43304c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43304c = call %struct.Memory* @routine_movl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43304c)
  store %struct.Memory* %call_43304c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 433053	 Bytes: 3
  %loadMem_433053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433053 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433053)
  store %struct.Memory* %call_433053, %struct.Memory** %MEMORY

  ; Code: .L_433056:	 RIP: 433056	 Bytes: 0
  br label %block_.L_433056
block_.L_433056:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 433056	 Bytes: 3
  %loadMem_433056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433056 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433056)
  store %struct.Memory* %call_433056, %struct.Memory** %MEMORY

  ; Code: cmpl 0x676ffc, %eax	 RIP: 433059	 Bytes: 7
  %loadMem_433059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433059 = call %struct.Memory* @routine_cmpl_0x676ffc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433059)
  store %struct.Memory* %call_433059, %struct.Memory** %MEMORY

  ; Code: jge .L_433110	 RIP: 433060	 Bytes: 6
  %loadMem_433060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433060 = call %struct.Memory* @routine_jge_.L_433110(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433060, i8* %BRANCH_TAKEN, i64 176, i64 6, i64 6)
  store %struct.Memory* %call_433060, %struct.Memory** %MEMORY

  %loadBr_433060 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433060 = icmp eq i8 %loadBr_433060, 1
  br i1 %cmpBr_433060, label %block_.L_433110, label %block_433066

block_433066:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 433066	 Bytes: 4
  %loadMem_433066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433066 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433066)
  store %struct.Memory* %call_433066, %struct.Memory** %MEMORY

  ; Code: movq 0x98(%rax), %rax	 RIP: 43306a	 Bytes: 7
  %loadMem_43306a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43306a = call %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43306a)
  store %struct.Memory* %call_43306a, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 433071	 Bytes: 4
  %loadMem_433071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433071 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433071)
  store %struct.Memory* %call_433071, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdi	 RIP: 433075	 Bytes: 4
  %loadMem_433075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433075 = call %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433075)
  store %struct.Memory* %call_433075, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 433079	 Bytes: 4
  %loadMem_433079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433079 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433079)
  store %struct.Memory* %call_433079, %struct.Memory** %MEMORY

  ; Code: addq $0xe0, %rax	 RIP: 43307d	 Bytes: 6
  %loadMem_43307d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43307d = call %struct.Memory* @routine_addq__0xe0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43307d)
  store %struct.Memory* %call_43307d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 433083	 Bytes: 3
  %loadMem_433083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433083 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433083)
  store %struct.Memory* %call_433083, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 433086	 Bytes: 3
  %loadMem_433086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433086 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433086)
  store %struct.Memory* %call_433086, %struct.Memory** %MEMORY

  ; Code: callq .DegenerateSymbolScore	 RIP: 433089	 Bytes: 5
  %loadMem1_433089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433089 = call %struct.Memory* @routine_callq_.DegenerateSymbolScore(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433089, i64 2647, i64 5, i64 5)
  store %struct.Memory* %call1_433089, %struct.Memory** %MEMORY

  %loadMem2_433089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433089 = load i64, i64* %3
  %call2_433089 = call %struct.Memory* @sub_433ae0.DegenerateSymbolScore(%struct.State* %0, i64  %loadPC_433089, %struct.Memory* %loadMem2_433089)
  store %struct.Memory* %call2_433089, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43308e	 Bytes: 4
  %loadMem_43308e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43308e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43308e)
  store %struct.Memory* %call_43308e, %struct.Memory** %MEMORY

  ; Code: movq 0x140(%rcx), %rcx	 RIP: 433092	 Bytes: 7
  %loadMem_433092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433092 = call %struct.Memory* @routine_movq_0x140__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433092)
  store %struct.Memory* %call_433092, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rsi	 RIP: 433099	 Bytes: 4
  %loadMem_433099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433099 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433099)
  store %struct.Memory* %call_433099, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 43309d	 Bytes: 4
  %loadMem_43309d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43309d = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43309d)
  store %struct.Memory* %call_43309d, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 4330a1	 Bytes: 4
  %loadMem_4330a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330a1 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330a1)
  store %struct.Memory* %call_4330a1, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rsi,4)	 RIP: 4330a5	 Bytes: 3
  %loadMem_4330a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330a5 = call %struct.Memory* @routine_movl__eax____rcx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330a5)
  store %struct.Memory* %call_4330a5, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 4330a8	 Bytes: 3
  %loadMem_4330a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330a8 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330a8)
  store %struct.Memory* %call_4330a8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4330ab	 Bytes: 4
  %loadMem_4330ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330ab = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330ab)
  store %struct.Memory* %call_4330ab, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 4330af	 Bytes: 6
  %loadMem_4330af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330af = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330af)
  store %struct.Memory* %call_4330af, %struct.Memory** %MEMORY

  ; Code: jge .L_4330fd	 RIP: 4330b5	 Bytes: 6
  %loadMem_4330b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330b5 = call %struct.Memory* @routine_jge_.L_4330fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330b5, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_4330b5, %struct.Memory** %MEMORY

  %loadBr_4330b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4330b5 = icmp eq i8 %loadBr_4330b5, 1
  br i1 %cmpBr_4330b5, label %block_.L_4330fd, label %block_4330bb

block_4330bb:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4330bb	 Bytes: 4
  %loadMem_4330bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330bb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330bb)
  store %struct.Memory* %call_4330bb, %struct.Memory** %MEMORY

  ; Code: movq 0xa0(%rax), %rax	 RIP: 4330bf	 Bytes: 7
  %loadMem_4330bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330bf = call %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330bf)
  store %struct.Memory* %call_4330bf, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4330c6	 Bytes: 4
  %loadMem_4330c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330c6 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330c6)
  store %struct.Memory* %call_4330c6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdi	 RIP: 4330ca	 Bytes: 4
  %loadMem_4330ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330ca = call %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330ca)
  store %struct.Memory* %call_4330ca, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4330ce	 Bytes: 4
  %loadMem_4330ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330ce = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330ce)
  store %struct.Memory* %call_4330ce, %struct.Memory** %MEMORY

  ; Code: addq $0xe0, %rax	 RIP: 4330d2	 Bytes: 6
  %loadMem_4330d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330d2 = call %struct.Memory* @routine_addq__0xe0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330d2)
  store %struct.Memory* %call_4330d2, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 4330d8	 Bytes: 3
  %loadMem_4330d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330d8 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330d8)
  store %struct.Memory* %call_4330d8, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4330db	 Bytes: 3
  %loadMem_4330db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330db = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330db)
  store %struct.Memory* %call_4330db, %struct.Memory** %MEMORY

  ; Code: callq .DegenerateSymbolScore	 RIP: 4330de	 Bytes: 5
  %loadMem1_4330de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4330de = call %struct.Memory* @routine_callq_.DegenerateSymbolScore(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4330de, i64 2562, i64 5, i64 5)
  store %struct.Memory* %call1_4330de, %struct.Memory** %MEMORY

  %loadMem2_4330de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4330de = load i64, i64* %3
  %call2_4330de = call %struct.Memory* @sub_433ae0.DegenerateSymbolScore(%struct.State* %0, i64  %loadPC_4330de, %struct.Memory* %loadMem2_4330de)
  store %struct.Memory* %call2_4330de, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4330e3	 Bytes: 4
  %loadMem_4330e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330e3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330e3)
  store %struct.Memory* %call_4330e3, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rcx), %rcx	 RIP: 4330e7	 Bytes: 7
  %loadMem_4330e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330e7 = call %struct.Memory* @routine_movq_0x148__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330e7)
  store %struct.Memory* %call_4330e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rsi	 RIP: 4330ee	 Bytes: 4
  %loadMem_4330ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330ee = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330ee)
  store %struct.Memory* %call_4330ee, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 4330f2	 Bytes: 4
  %loadMem_4330f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330f2 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330f2)
  store %struct.Memory* %call_4330f2, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 4330f6	 Bytes: 4
  %loadMem_4330f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330f6 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330f6)
  store %struct.Memory* %call_4330f6, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rsi,4)	 RIP: 4330fa	 Bytes: 3
  %loadMem_4330fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330fa = call %struct.Memory* @routine_movl__eax____rcx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330fa)
  store %struct.Memory* %call_4330fa, %struct.Memory** %MEMORY

  ; Code: .L_4330fd:	 RIP: 4330fd	 Bytes: 0
  br label %block_.L_4330fd
block_.L_4330fd:

  ; Code: jmpq .L_433102	 RIP: 4330fd	 Bytes: 5
  %loadMem_4330fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330fd = call %struct.Memory* @routine_jmpq_.L_433102(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330fd, i64 5, i64 5)
  store %struct.Memory* %call_4330fd, %struct.Memory** %MEMORY

  br label %block_.L_433102

  ; Code: .L_433102:	 RIP: 433102	 Bytes: 0
block_.L_433102:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 433102	 Bytes: 3
  %loadMem_433102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433102 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433102)
  store %struct.Memory* %call_433102, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 433105	 Bytes: 3
  %loadMem_433105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433105 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433105)
  store %struct.Memory* %call_433105, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 433108	 Bytes: 3
  %loadMem_433108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433108 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433108)
  store %struct.Memory* %call_433108, %struct.Memory** %MEMORY

  ; Code: jmpq .L_433056	 RIP: 43310b	 Bytes: 5
  %loadMem_43310b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43310b = call %struct.Memory* @routine_jmpq_.L_433056(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43310b, i64 -181, i64 5)
  store %struct.Memory* %call_43310b, %struct.Memory** %MEMORY

  br label %block_.L_433056

  ; Code: .L_433110:	 RIP: 433110	 Bytes: 0
block_.L_433110:

  ; Code: jmpq .L_433115	 RIP: 433110	 Bytes: 5
  %loadMem_433110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433110 = call %struct.Memory* @routine_jmpq_.L_433115(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433110, i64 5, i64 5)
  store %struct.Memory* %call_433110, %struct.Memory** %MEMORY

  br label %block_.L_433115

  ; Code: .L_433115:	 RIP: 433115	 Bytes: 0
block_.L_433115:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 433115	 Bytes: 3
  %loadMem_433115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433115 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433115)
  store %struct.Memory* %call_433115, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 433118	 Bytes: 3
  %loadMem_433118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433118 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433118)
  store %struct.Memory* %call_433118, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 43311b	 Bytes: 3
  %loadMem_43311b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43311b = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43311b)
  store %struct.Memory* %call_43311b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_432f64	 RIP: 43311e	 Bytes: 5
  %loadMem_43311e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43311e = call %struct.Memory* @routine_jmpq_.L_432f64(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43311e, i64 -442, i64 5)
  store %struct.Memory* %call_43311e, %struct.Memory** %MEMORY

  br label %block_.L_432f64

  ; Code: .L_433123:	 RIP: 433123	 Bytes: 0
block_.L_433123:

  ; Code: movl $0x1, -0x10(%rbp)	 RIP: 433123	 Bytes: 7
  %loadMem_433123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433123 = call %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433123)
  store %struct.Memory* %call_433123, %struct.Memory** %MEMORY

  ; Code: .L_43312a:	 RIP: 43312a	 Bytes: 0
  br label %block_.L_43312a
block_.L_43312a:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 43312a	 Bytes: 3
  %loadMem_43312a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43312a = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43312a)
  store %struct.Memory* %call_43312a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43312d	 Bytes: 4
  %loadMem_43312d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43312d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43312d)
  store %struct.Memory* %call_43312d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 433131	 Bytes: 6
  %loadMem_433131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433131 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433131)
  store %struct.Memory* %call_433131, %struct.Memory** %MEMORY

  ; Code: jge .L_4332fa	 RIP: 433137	 Bytes: 6
  %loadMem_433137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433137 = call %struct.Memory* @routine_jge_.L_4332fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433137, i8* %BRANCH_TAKEN, i64 451, i64 6, i64 6)
  store %struct.Memory* %call_433137, %struct.Memory** %MEMORY

  %loadBr_433137 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433137 = icmp eq i8 %loadBr_433137, 1
  br i1 %cmpBr_433137, label %block_.L_4332fa, label %block_43313d

block_43313d:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43313d	 Bytes: 4
  %loadMem_43313d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43313d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43313d)
  store %struct.Memory* %call_43313d, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 433141	 Bytes: 7
  %loadMem_433141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433141 = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433141)
  store %struct.Memory* %call_433141, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 433148	 Bytes: 4
  %loadMem_433148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433148 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433148)
  store %struct.Memory* %call_433148, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43314c	 Bytes: 4
  %loadMem_43314c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43314c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43314c)
  store %struct.Memory* %call_43314c, %struct.Memory** %MEMORY

  ; Code: movss (%rax), %xmm0	 RIP: 433150	 Bytes: 4
  %loadMem_433150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433150 = call %struct.Memory* @routine_movss___rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433150)
  store %struct.Memory* %call_433150, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 433154	 Bytes: 4
  %loadMem_433154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433154 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433154)
  store %struct.Memory* %call_433154, %struct.Memory** %MEMORY

  ; Code: movss 0x130(%rax), %xmm1	 RIP: 433158	 Bytes: 8
  %loadMem_433158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433158 = call %struct.Memory* @routine_movss_0x130__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433158)
  store %struct.Memory* %call_433158, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 433160	 Bytes: 5
  %loadMem1_433160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433160 = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433160, i64 -46000, i64 5, i64 5)
  store %struct.Memory* %call1_433160, %struct.Memory** %MEMORY

  %loadMem2_433160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433160 = load i64, i64* %3
  %call2_433160 = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_433160, %struct.Memory* %loadMem2_433160)
  store %struct.Memory* %call2_433160, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433165	 Bytes: 4
  %loadMem_433165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433165 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433165)
  store %struct.Memory* %call_433165, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rcx), %rcx	 RIP: 433169	 Bytes: 7
  %loadMem_433169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433169 = call %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433169)
  store %struct.Memory* %call_433169, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 433170	 Bytes: 3
  %loadMem_433170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433170 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433170)
  store %struct.Memory* %call_433170, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 433173	 Bytes: 4
  %loadMem_433173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433173 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433173)
  store %struct.Memory* %call_433173, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 433177	 Bytes: 3
  %loadMem_433177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433177 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433177)
  store %struct.Memory* %call_433177, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43317a	 Bytes: 4
  %loadMem_43317a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43317a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43317a)
  store %struct.Memory* %call_43317a, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rcx), %rcx	 RIP: 43317e	 Bytes: 7
  %loadMem_43317e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43317e = call %struct.Memory* @routine_movq_0x90__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43317e)
  store %struct.Memory* %call_43317e, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 433185	 Bytes: 4
  %loadMem_433185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433185 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433185)
  store %struct.Memory* %call_433185, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 433189	 Bytes: 4
  %loadMem_433189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433189 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433189)
  store %struct.Memory* %call_433189, %struct.Memory** %MEMORY

  ; Code: movss 0x4(%rcx), %xmm0	 RIP: 43318d	 Bytes: 5
  %loadMem_43318d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43318d = call %struct.Memory* @routine_movss_0x4__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43318d)
  store %struct.Memory* %call_43318d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433192	 Bytes: 4
  %loadMem_433192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433192 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433192)
  store %struct.Memory* %call_433192, %struct.Memory** %MEMORY

  ; Code: movss 0x130(%rcx), %xmm1	 RIP: 433196	 Bytes: 8
  %loadMem_433196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433196 = call %struct.Memory* @routine_movss_0x130__rcx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433196)
  store %struct.Memory* %call_433196, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 43319e	 Bytes: 5
  %loadMem1_43319e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43319e = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43319e, i64 -46062, i64 5, i64 5)
  store %struct.Memory* %call1_43319e, %struct.Memory** %MEMORY

  %loadMem2_43319e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43319e = load i64, i64* %3
  %call2_43319e = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_43319e, %struct.Memory* %loadMem2_43319e)
  store %struct.Memory* %call2_43319e, %struct.Memory** %MEMORY

  ; Code: movss 0x2157d(%rip), %xmm1	 RIP: 4331a3	 Bytes: 8
  %loadMem_4331a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331a3 = call %struct.Memory* @routine_movss_0x2157d__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331a3)
  store %struct.Memory* %call_4331a3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4331ab	 Bytes: 4
  %loadMem_4331ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331ab = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331ab)
  store %struct.Memory* %call_4331ab, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rcx), %rcx	 RIP: 4331af	 Bytes: 7
  %loadMem_4331af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331af = call %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331af)
  store %struct.Memory* %call_4331af, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 4331b6	 Bytes: 4
  %loadMem_4331b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331b6 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331b6)
  store %struct.Memory* %call_4331b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4331ba	 Bytes: 4
  %loadMem_4331ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331ba = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331ba)
  store %struct.Memory* %call_4331ba, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 4331be	 Bytes: 3
  %loadMem_4331be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331be = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331be)
  store %struct.Memory* %call_4331be, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4331c1	 Bytes: 4
  %loadMem_4331c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331c1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331c1)
  store %struct.Memory* %call_4331c1, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rcx), %rcx	 RIP: 4331c5	 Bytes: 7
  %loadMem_4331c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331c5 = call %struct.Memory* @routine_movq_0x90__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331c5)
  store %struct.Memory* %call_4331c5, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4331cc	 Bytes: 4
  %loadMem_4331cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331cc = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331cc)
  store %struct.Memory* %call_4331cc, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4331d0	 Bytes: 4
  %loadMem_4331d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331d0 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331d0)
  store %struct.Memory* %call_4331d0, %struct.Memory** %MEMORY

  ; Code: movss 0x8(%rcx), %xmm0	 RIP: 4331d4	 Bytes: 5
  %loadMem_4331d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331d4 = call %struct.Memory* @routine_movss_0x8__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331d4)
  store %struct.Memory* %call_4331d4, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 4331d9	 Bytes: 5
  %loadMem1_4331d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4331d9 = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4331d9, i64 -46121, i64 5, i64 5)
  store %struct.Memory* %call1_4331d9, %struct.Memory** %MEMORY

  %loadMem2_4331d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4331d9 = load i64, i64* %3
  %call2_4331d9 = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_4331d9, %struct.Memory* %loadMem2_4331d9)
  store %struct.Memory* %call2_4331d9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4331de	 Bytes: 4
  %loadMem_4331de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331de = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331de)
  store %struct.Memory* %call_4331de, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rcx), %rcx	 RIP: 4331e2	 Bytes: 7
  %loadMem_4331e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331e2 = call %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331e2)
  store %struct.Memory* %call_4331e2, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rcx), %rcx	 RIP: 4331e9	 Bytes: 4
  %loadMem_4331e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331e9 = call %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331e9)
  store %struct.Memory* %call_4331e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4331ed	 Bytes: 4
  %loadMem_4331ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331ed = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331ed)
  store %struct.Memory* %call_4331ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 4331f1	 Bytes: 3
  %loadMem_4331f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331f1 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331f1)
  store %struct.Memory* %call_4331f1, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4331f4	 Bytes: 4
  %loadMem_4331f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331f4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331f4)
  store %struct.Memory* %call_4331f4, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rcx), %rcx	 RIP: 4331f8	 Bytes: 7
  %loadMem_4331f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331f8 = call %struct.Memory* @routine_movq_0x90__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331f8)
  store %struct.Memory* %call_4331f8, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4331ff	 Bytes: 4
  %loadMem_4331ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331ff = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331ff)
  store %struct.Memory* %call_4331ff, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 433203	 Bytes: 4
  %loadMem_433203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433203 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433203)
  store %struct.Memory* %call_433203, %struct.Memory** %MEMORY

  ; Code: movss 0xc(%rcx), %xmm0	 RIP: 433207	 Bytes: 5
  %loadMem_433207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433207 = call %struct.Memory* @routine_movss_0xc__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433207)
  store %struct.Memory* %call_433207, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43320c	 Bytes: 4
  %loadMem_43320c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43320c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43320c)
  store %struct.Memory* %call_43320c, %struct.Memory** %MEMORY

  ; Code: movss 0x130(%rcx), %xmm1	 RIP: 433210	 Bytes: 8
  %loadMem_433210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433210 = call %struct.Memory* @routine_movss_0x130__rcx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433210)
  store %struct.Memory* %call_433210, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 433218	 Bytes: 5
  %loadMem1_433218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433218 = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433218, i64 -46184, i64 5, i64 5)
  store %struct.Memory* %call1_433218, %struct.Memory** %MEMORY

  %loadMem2_433218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433218 = load i64, i64* %3
  %call2_433218 = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_433218, %struct.Memory* %loadMem2_433218)
  store %struct.Memory* %call2_433218, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43321d	 Bytes: 4
  %loadMem_43321d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43321d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43321d)
  store %struct.Memory* %call_43321d, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rcx), %rcx	 RIP: 433221	 Bytes: 7
  %loadMem_433221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433221 = call %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433221)
  store %struct.Memory* %call_433221, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rcx), %rcx	 RIP: 433228	 Bytes: 4
  %loadMem_433228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433228 = call %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433228)
  store %struct.Memory* %call_433228, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 43322c	 Bytes: 4
  %loadMem_43322c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43322c = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43322c)
  store %struct.Memory* %call_43322c, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 433230	 Bytes: 3
  %loadMem_433230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433230 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433230)
  store %struct.Memory* %call_433230, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433233	 Bytes: 4
  %loadMem_433233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433233 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433233)
  store %struct.Memory* %call_433233, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rcx), %rcx	 RIP: 433237	 Bytes: 7
  %loadMem_433237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433237 = call %struct.Memory* @routine_movq_0x90__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433237)
  store %struct.Memory* %call_433237, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 43323e	 Bytes: 4
  %loadMem_43323e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43323e = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43323e)
  store %struct.Memory* %call_43323e, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 433242	 Bytes: 4
  %loadMem_433242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433242 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433242)
  store %struct.Memory* %call_433242, %struct.Memory** %MEMORY

  ; Code: movss 0x10(%rcx), %xmm0	 RIP: 433246	 Bytes: 5
  %loadMem_433246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433246 = call %struct.Memory* @routine_movss_0x10__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433246)
  store %struct.Memory* %call_433246, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43324b	 Bytes: 4
  %loadMem_43324b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43324b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43324b)
  store %struct.Memory* %call_43324b, %struct.Memory** %MEMORY

  ; Code: movss 0x130(%rcx), %xmm1	 RIP: 43324f	 Bytes: 8
  %loadMem_43324f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43324f = call %struct.Memory* @routine_movss_0x130__rcx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43324f)
  store %struct.Memory* %call_43324f, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 433257	 Bytes: 5
  %loadMem1_433257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433257 = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433257, i64 -46247, i64 5, i64 5)
  store %struct.Memory* %call1_433257, %struct.Memory** %MEMORY

  %loadMem2_433257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433257 = load i64, i64* %3
  %call2_433257 = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_433257, %struct.Memory* %loadMem2_433257)
  store %struct.Memory* %call2_433257, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43325c	 Bytes: 4
  %loadMem_43325c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43325c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43325c)
  store %struct.Memory* %call_43325c, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rcx), %rcx	 RIP: 433260	 Bytes: 7
  %loadMem_433260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433260 = call %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433260)
  store %struct.Memory* %call_433260, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rcx), %rcx	 RIP: 433267	 Bytes: 4
  %loadMem_433267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433267 = call %struct.Memory* @routine_movq_0x20__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433267)
  store %struct.Memory* %call_433267, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 43326b	 Bytes: 4
  %loadMem_43326b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43326b = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43326b)
  store %struct.Memory* %call_43326b, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 43326f	 Bytes: 3
  %loadMem_43326f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43326f = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43326f)
  store %struct.Memory* %call_43326f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433272	 Bytes: 4
  %loadMem_433272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433272 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433272)
  store %struct.Memory* %call_433272, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rcx), %rcx	 RIP: 433276	 Bytes: 7
  %loadMem_433276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433276 = call %struct.Memory* @routine_movq_0x90__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433276)
  store %struct.Memory* %call_433276, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 43327d	 Bytes: 4
  %loadMem_43327d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43327d = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43327d)
  store %struct.Memory* %call_43327d, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 433281	 Bytes: 4
  %loadMem_433281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433281 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433281)
  store %struct.Memory* %call_433281, %struct.Memory** %MEMORY

  ; Code: movss 0x14(%rcx), %xmm0	 RIP: 433285	 Bytes: 5
  %loadMem_433285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433285 = call %struct.Memory* @routine_movss_0x14__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433285)
  store %struct.Memory* %call_433285, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 43328a	 Bytes: 4
  %loadMem_43328a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43328a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43328a)
  store %struct.Memory* %call_43328a, %struct.Memory** %MEMORY

  ; Code: movss 0x130(%rcx), %xmm1	 RIP: 43328e	 Bytes: 8
  %loadMem_43328e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43328e = call %struct.Memory* @routine_movss_0x130__rcx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43328e)
  store %struct.Memory* %call_43328e, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 433296	 Bytes: 5
  %loadMem1_433296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433296 = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433296, i64 -46310, i64 5, i64 5)
  store %struct.Memory* %call1_433296, %struct.Memory** %MEMORY

  %loadMem2_433296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433296 = load i64, i64* %3
  %call2_433296 = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_433296, %struct.Memory* %loadMem2_433296)
  store %struct.Memory* %call2_433296, %struct.Memory** %MEMORY

  ; Code: movss 0x21485(%rip), %xmm1	 RIP: 43329b	 Bytes: 8
  %loadMem_43329b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43329b = call %struct.Memory* @routine_movss_0x21485__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43329b)
  store %struct.Memory* %call_43329b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4332a3	 Bytes: 4
  %loadMem_4332a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332a3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332a3)
  store %struct.Memory* %call_4332a3, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rcx), %rcx	 RIP: 4332a7	 Bytes: 7
  %loadMem_4332a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332a7 = call %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332a7)
  store %struct.Memory* %call_4332a7, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 4332ae	 Bytes: 4
  %loadMem_4332ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332ae = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332ae)
  store %struct.Memory* %call_4332ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4332b2	 Bytes: 4
  %loadMem_4332b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332b2 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332b2)
  store %struct.Memory* %call_4332b2, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 4332b6	 Bytes: 3
  %loadMem_4332b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332b6 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332b6)
  store %struct.Memory* %call_4332b6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4332b9	 Bytes: 4
  %loadMem_4332b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332b9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332b9)
  store %struct.Memory* %call_4332b9, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rcx), %rcx	 RIP: 4332bd	 Bytes: 7
  %loadMem_4332bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332bd = call %struct.Memory* @routine_movq_0x90__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332bd)
  store %struct.Memory* %call_4332bd, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4332c4	 Bytes: 4
  %loadMem_4332c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332c4 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332c4)
  store %struct.Memory* %call_4332c4, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4332c8	 Bytes: 4
  %loadMem_4332c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332c8 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332c8)
  store %struct.Memory* %call_4332c8, %struct.Memory** %MEMORY

  ; Code: movss 0x18(%rcx), %xmm0	 RIP: 4332cc	 Bytes: 5
  %loadMem_4332cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332cc = call %struct.Memory* @routine_movss_0x18__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332cc)
  store %struct.Memory* %call_4332cc, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 4332d1	 Bytes: 5
  %loadMem1_4332d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4332d1 = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4332d1, i64 -46369, i64 5, i64 5)
  store %struct.Memory* %call1_4332d1, %struct.Memory** %MEMORY

  %loadMem2_4332d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4332d1 = load i64, i64* %3
  %call2_4332d1 = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_4332d1, %struct.Memory* %loadMem2_4332d1)
  store %struct.Memory* %call2_4332d1, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4332d6	 Bytes: 4
  %loadMem_4332d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332d6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332d6)
  store %struct.Memory* %call_4332d6, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rcx), %rcx	 RIP: 4332da	 Bytes: 7
  %loadMem_4332da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332da = call %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332da)
  store %struct.Memory* %call_4332da, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 4332e1	 Bytes: 4
  %loadMem_4332e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332e1 = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332e1)
  store %struct.Memory* %call_4332e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4332e5	 Bytes: 4
  %loadMem_4332e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332e5 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332e5)
  store %struct.Memory* %call_4332e5, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 4332e9	 Bytes: 3
  %loadMem_4332e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332e9 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332e9)
  store %struct.Memory* %call_4332e9, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 4332ec	 Bytes: 3
  %loadMem_4332ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332ec = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332ec)
  store %struct.Memory* %call_4332ec, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4332ef	 Bytes: 3
  %loadMem_4332ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332ef = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332ef)
  store %struct.Memory* %call_4332ef, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 4332f2	 Bytes: 3
  %loadMem_4332f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332f2 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332f2)
  store %struct.Memory* %call_4332f2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43312a	 RIP: 4332f5	 Bytes: 5
  %loadMem_4332f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332f5 = call %struct.Memory* @routine_jmpq_.L_43312a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332f5, i64 -459, i64 5)
  store %struct.Memory* %call_4332f5, %struct.Memory** %MEMORY

  br label %block_.L_43312a

  ; Code: .L_4332fa:	 RIP: 4332fa	 Bytes: 0
block_.L_4332fa:

  ; Code: xorps %xmm0, %xmm0	 RIP: 4332fa	 Bytes: 3
  %loadMem_4332fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332fa = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332fa)
  store %struct.Memory* %call_4332fa, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4332fd	 Bytes: 4
  %loadMem_4332fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332fd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332fd)
  store %struct.Memory* %call_4332fd, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0xa8(%rax), %xmm1	 RIP: 433301	 Bytes: 8
  %loadMem_433301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433301 = call %struct.Memory* @routine_cvtss2sd_0xa8__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433301)
  store %struct.Memory* %call_433301, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 433309	 Bytes: 4
  %loadMem_433309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433309 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433309)
  store %struct.Memory* %call_433309, %struct.Memory** %MEMORY

  ; Code: jbe .L_43332e	 RIP: 43330d	 Bytes: 6
  %loadMem_43330d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43330d = call %struct.Memory* @routine_jbe_.L_43332e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43330d, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_43330d, %struct.Memory** %MEMORY

  %loadBr_43330d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43330d = icmp eq i8 %loadBr_43330d, 1
  br i1 %cmpBr_43330d, label %block_.L_43332e, label %block_433313

block_433313:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 433313	 Bytes: 4
  %loadMem_433313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433313 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433313)
  store %struct.Memory* %call_433313, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0xa8(%rax), %xmm0	 RIP: 433317	 Bytes: 8
  %loadMem_433317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433317 = call %struct.Memory* @routine_cvtss2sd_0xa8__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433317)
  store %struct.Memory* %call_433317, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 43331f	 Bytes: 5
  %loadMem1_43331f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43331f = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43331f, i64 -204335, i64 5, i64 5)
  store %struct.Memory* %call1_43331f, %struct.Memory** %MEMORY

  %loadMem2_43331f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43331f = load i64, i64* %3
  %call2_43331f = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_43331f, %struct.Memory* %loadMem2_43331f)
  store %struct.Memory* %call2_43331f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x28(%rbp)	 RIP: 433324	 Bytes: 5
  %loadMem_433324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433324 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433324)
  store %struct.Memory* %call_433324, %struct.Memory** %MEMORY

  ; Code: jmpq .L_433340	 RIP: 433329	 Bytes: 5
  %loadMem_433329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433329 = call %struct.Memory* @routine_jmpq_.L_433340(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433329, i64 23, i64 5)
  store %struct.Memory* %call_433329, %struct.Memory** %MEMORY

  br label %block_.L_433340

  ; Code: .L_43332e:	 RIP: 43332e	 Bytes: 0
block_.L_43332e:

  ; Code: movsd 0x215a2(%rip), %xmm0	 RIP: 43332e	 Bytes: 8
  %loadMem_43332e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43332e = call %struct.Memory* @routine_movsd_0x215a2__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43332e)
  store %struct.Memory* %call_43332e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x28(%rbp)	 RIP: 433336	 Bytes: 5
  %loadMem_433336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433336 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433336)
  store %struct.Memory* %call_433336, %struct.Memory** %MEMORY

  ; Code: jmpq .L_433340	 RIP: 43333b	 Bytes: 5
  %loadMem_43333b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43333b = call %struct.Memory* @routine_jmpq_.L_433340(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43333b, i64 5, i64 5)
  store %struct.Memory* %call_43333b, %struct.Memory** %MEMORY

  br label %block_.L_433340

  ; Code: .L_433340:	 RIP: 433340	 Bytes: 0
block_.L_433340:

  ; Code: movsd -0x28(%rbp), %xmm0	 RIP: 433340	 Bytes: 5
  %loadMem_433340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433340 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433340)
  store %struct.Memory* %call_433340, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 433345	 Bytes: 4
  %loadMem_433345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433345 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433345)
  store %struct.Memory* %call_433345, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x18(%rbp)	 RIP: 433349	 Bytes: 5
  %loadMem_433349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433349 = call %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433349)
  store %struct.Memory* %call_433349, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x10(%rbp)	 RIP: 43334e	 Bytes: 7
  %loadMem_43334e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43334e = call %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43334e)
  store %struct.Memory* %call_43334e, %struct.Memory** %MEMORY

  ; Code: .L_433355:	 RIP: 433355	 Bytes: 0
  br label %block_.L_433355
block_.L_433355:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 433355	 Bytes: 3
  %loadMem_433355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433355 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433355)
  store %struct.Memory* %call_433355, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433358	 Bytes: 4
  %loadMem_433358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433358 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433358)
  store %struct.Memory* %call_433358, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 43335c	 Bytes: 6
  %loadMem_43335c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43335c = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43335c)
  store %struct.Memory* %call_43335c, %struct.Memory** %MEMORY

  ; Code: jg .L_433659	 RIP: 433362	 Bytes: 6
  %loadMem_433362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433362 = call %struct.Memory* @routine_jg_.L_433659(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433362, i8* %BRANCH_TAKEN, i64 759, i64 6, i64 6)
  store %struct.Memory* %call_433362, %struct.Memory** %MEMORY

  %loadBr_433362 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433362 = icmp eq i8 %loadBr_433362, 1
  br i1 %cmpBr_433362, label %block_.L_433659, label %block_433368

block_433368:
  ; Code: xorps %xmm0, %xmm0	 RIP: 433368	 Bytes: 3
  %loadMem_433368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433368 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433368)
  store %struct.Memory* %call_433368, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43336b	 Bytes: 4
  %loadMem_43336b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43336b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43336b)
  store %struct.Memory* %call_43336b, %struct.Memory** %MEMORY

  ; Code: movq 0xd0(%rax), %rax	 RIP: 43336f	 Bytes: 7
  %loadMem_43336f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43336f = call %struct.Memory* @routine_movq_0xd0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43336f)
  store %struct.Memory* %call_43336f, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 433376	 Bytes: 4
  %loadMem_433376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433376 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433376)
  store %struct.Memory* %call_433376, %struct.Memory** %MEMORY

  ; Code: cvtss2sd (%rax,%rcx,4), %xmm1	 RIP: 43337a	 Bytes: 5
  %loadMem_43337a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43337a = call %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43337a)
  store %struct.Memory* %call_43337a, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 43337f	 Bytes: 4
  %loadMem_43337f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43337f = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43337f)
  store %struct.Memory* %call_43337f, %struct.Memory** %MEMORY

  ; Code: jbe .L_4333ac	 RIP: 433383	 Bytes: 6
  %loadMem_433383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433383 = call %struct.Memory* @routine_jbe_.L_4333ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433383, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_433383, %struct.Memory** %MEMORY

  %loadBr_433383 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433383 = icmp eq i8 %loadBr_433383, 1
  br i1 %cmpBr_433383, label %block_.L_4333ac, label %block_433389

block_433389:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 433389	 Bytes: 4
  %loadMem_433389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433389 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433389)
  store %struct.Memory* %call_433389, %struct.Memory** %MEMORY

  ; Code: movq 0xd0(%rax), %rax	 RIP: 43338d	 Bytes: 7
  %loadMem_43338d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43338d = call %struct.Memory* @routine_movq_0xd0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43338d)
  store %struct.Memory* %call_43338d, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 433394	 Bytes: 4
  %loadMem_433394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433394 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433394)
  store %struct.Memory* %call_433394, %struct.Memory** %MEMORY

  ; Code: cvtss2sd (%rax,%rcx,4), %xmm0	 RIP: 433398	 Bytes: 5
  %loadMem_433398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433398 = call %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433398)
  store %struct.Memory* %call_433398, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 43339d	 Bytes: 5
  %loadMem1_43339d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43339d = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43339d, i64 -204461, i64 5, i64 5)
  store %struct.Memory* %call1_43339d, %struct.Memory** %MEMORY

  %loadMem2_43339d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43339d = load i64, i64* %3
  %call2_43339d = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_43339d, %struct.Memory* %loadMem2_43339d)
  store %struct.Memory* %call2_43339d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 4333a2	 Bytes: 5
  %loadMem_4333a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333a2 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333a2)
  store %struct.Memory* %call_4333a2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4333be	 RIP: 4333a7	 Bytes: 5
  %loadMem_4333a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333a7 = call %struct.Memory* @routine_jmpq_.L_4333be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333a7, i64 23, i64 5)
  store %struct.Memory* %call_4333a7, %struct.Memory** %MEMORY

  br label %block_.L_4333be

  ; Code: .L_4333ac:	 RIP: 4333ac	 Bytes: 0
block_.L_4333ac:

  ; Code: movsd 0x21524(%rip), %xmm0	 RIP: 4333ac	 Bytes: 8
  %loadMem_4333ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333ac = call %struct.Memory* @routine_movsd_0x21524__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333ac)
  store %struct.Memory* %call_4333ac, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 4333b4	 Bytes: 5
  %loadMem_4333b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333b4 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333b4)
  store %struct.Memory* %call_4333b4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4333be	 RIP: 4333b9	 Bytes: 5
  %loadMem_4333b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333b9 = call %struct.Memory* @routine_jmpq_.L_4333be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333b9, i64 5, i64 5)
  store %struct.Memory* %call_4333b9, %struct.Memory** %MEMORY

  br label %block_.L_4333be

  ; Code: .L_4333be:	 RIP: 4333be	 Bytes: 0
block_.L_4333be:

  ; Code: movsd -0x30(%rbp), %xmm0	 RIP: 4333be	 Bytes: 5
  %loadMem_4333be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333be = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333be)
  store %struct.Memory* %call_4333be, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 4333c3	 Bytes: 4
  %loadMem_4333c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333c3 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333c3)
  store %struct.Memory* %call_4333c3, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x1c(%rbp)	 RIP: 4333c7	 Bytes: 5
  %loadMem_4333c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333c7 = call %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333c7)
  store %struct.Memory* %call_4333c7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x10(%rbp)	 RIP: 4333cc	 Bytes: 4
  %loadMem_4333cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333cc = call %struct.Memory* @routine_cmpl__0x1__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333cc)
  store %struct.Memory* %call_4333cc, %struct.Memory** %MEMORY

  ; Code: jle .L_4335b7	 RIP: 4333d0	 Bytes: 6
  %loadMem_4333d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333d0 = call %struct.Memory* @routine_jle_.L_4335b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333d0, i8* %BRANCH_TAKEN, i64 487, i64 6, i64 6)
  store %struct.Memory* %call_4333d0, %struct.Memory** %MEMORY

  %loadBr_4333d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4333d0 = icmp eq i8 %loadBr_4333d0, 1
  br i1 %cmpBr_4333d0, label %block_.L_4335b7, label %block_4333d6

block_4333d6:
  ; Code: movsd 0x214fa(%rip), %xmm0	 RIP: 4333d6	 Bytes: 8
  %loadMem_4333d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333d6 = call %struct.Memory* @routine_movsd_0x214fa__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333d6)
  store %struct.Memory* %call_4333d6, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm1	 RIP: 4333de	 Bytes: 5
  %loadMem_4333de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333de = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333de)
  store %struct.Memory* %call_4333de, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4333e3	 Bytes: 4
  %loadMem_4333e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333e3 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333e3)
  store %struct.Memory* %call_4333e3, %struct.Memory** %MEMORY

  ; Code: jbe .L_4335b7	 RIP: 4333e7	 Bytes: 6
  %loadMem_4333e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333e7 = call %struct.Memory* @routine_jbe_.L_4335b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333e7, i8* %BRANCH_TAKEN, i64 464, i64 6, i64 6)
  store %struct.Memory* %call_4333e7, %struct.Memory** %MEMORY

  %loadBr_4333e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4333e7 = icmp eq i8 %loadBr_4333e7, 1
  br i1 %cmpBr_4333e7, label %block_.L_4335b7, label %block_4333ed

block_4333ed:
  ; Code: xorps %xmm0, %xmm0	 RIP: 4333ed	 Bytes: 3
  %loadMem_4333ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333ed = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333ed)
  store %struct.Memory* %call_4333ed, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4333f0	 Bytes: 4
  %loadMem_4333f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333f0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333f0)
  store %struct.Memory* %call_4333f0, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 4333f4	 Bytes: 7
  %loadMem_4333f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333f4 = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333f4)
  store %struct.Memory* %call_4333f4, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 4333fb	 Bytes: 3
  %loadMem_4333fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333fb = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333fb)
  store %struct.Memory* %call_4333fb, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4333fe	 Bytes: 3
  %loadMem_4333fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4333fe = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4333fe)
  store %struct.Memory* %call_4333fe, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 433401	 Bytes: 3
  %loadMem_433401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433401 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433401)
  store %struct.Memory* %call_433401, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 433404	 Bytes: 4
  %loadMem_433404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433404 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433404)
  store %struct.Memory* %call_433404, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x14(%rax), %xmm1	 RIP: 433408	 Bytes: 5
  %loadMem_433408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433408 = call %struct.Memory* @routine_cvtss2sd_0x14__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433408)
  store %struct.Memory* %call_433408, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 43340d	 Bytes: 4
  %loadMem_43340d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43340d = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43340d)
  store %struct.Memory* %call_43340d, %struct.Memory** %MEMORY

  ; Code: jbe .L_43352b	 RIP: 433411	 Bytes: 6
  %loadMem_433411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433411 = call %struct.Memory* @routine_jbe_.L_43352b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433411, i8* %BRANCH_TAKEN, i64 282, i64 6, i64 6)
  store %struct.Memory* %call_433411, %struct.Memory** %MEMORY

  %loadBr_433411 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433411 = icmp eq i8 %loadBr_433411, 1
  br i1 %cmpBr_433411, label %block_.L_43352b, label %block_433417

block_433417:
  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 433417	 Bytes: 4
  %loadMem_433417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433417 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433417)
  store %struct.Memory* %call_433417, %struct.Memory** %MEMORY

  ; Code: je .L_4334d1	 RIP: 43341b	 Bytes: 6
  %loadMem_43341b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43341b = call %struct.Memory* @routine_je_.L_4334d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43341b, i8* %BRANCH_TAKEN, i64 182, i64 6, i64 6)
  store %struct.Memory* %call_43341b, %struct.Memory** %MEMORY

  %loadBr_43341b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43341b = icmp eq i8 %loadBr_43341b, 1
  br i1 %cmpBr_43341b, label %block_.L_4334d1, label %block_433421

block_433421:
  ; Code: cvtss2sd -0x1c(%rbp), %xmm0	 RIP: 433421	 Bytes: 5
  %loadMem_433421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433421 = call %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433421)
  store %struct.Memory* %call_433421, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm1	 RIP: 433426	 Bytes: 5
  %loadMem_433426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433426 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433426)
  store %struct.Memory* %call_433426, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43342b	 Bytes: 4
  %loadMem_43342b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43342b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43342b)
  store %struct.Memory* %call_43342b, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 43342f	 Bytes: 7
  %loadMem_43342f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43342f = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43342f)
  store %struct.Memory* %call_43342f, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 433436	 Bytes: 3
  %loadMem_433436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433436 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433436)
  store %struct.Memory* %call_433436, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 433439	 Bytes: 3
  %loadMem_433439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433439 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433439)
  store %struct.Memory* %call_433439, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 43343c	 Bytes: 3
  %loadMem_43343c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43343c = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43343c)
  store %struct.Memory* %call_43343c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 43343f	 Bytes: 4
  %loadMem_43343f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43343f = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43343f)
  store %struct.Memory* %call_43343f, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x14(%rax), %xmm2	 RIP: 433443	 Bytes: 5
  %loadMem_433443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433443 = call %struct.Memory* @routine_cvtss2sd_0x14__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433443)
  store %struct.Memory* %call_433443, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x38(%rbp)	 RIP: 433448	 Bytes: 5
  %loadMem_433448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433448 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433448)
  store %struct.Memory* %call_433448, %struct.Memory** %MEMORY

  ; Code: movaps %xmm2, %xmm0	 RIP: 43344d	 Bytes: 3
  %loadMem_43344d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43344d = call %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43344d)
  store %struct.Memory* %call_43344d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x40(%rbp)	 RIP: 433450	 Bytes: 5
  %loadMem_433450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433450 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433450)
  store %struct.Memory* %call_433450, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 433455	 Bytes: 5
  %loadMem1_433455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433455 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433455, i64 -204645, i64 5, i64 5)
  store %struct.Memory* %call1_433455, %struct.Memory** %MEMORY

  %loadMem2_433455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433455 = load i64, i64* %3
  %call2_433455 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_433455, %struct.Memory* %loadMem2_433455)
  store %struct.Memory* %call2_433455, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 43345a	 Bytes: 5
  %loadMem_43345a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43345a = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43345a)
  store %struct.Memory* %call_43345a, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 43345f	 Bytes: 4
  %loadMem_43345f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43345f = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43345f)
  store %struct.Memory* %call_43345f, %struct.Memory** %MEMORY

  ; Code: movsd -0x38(%rbp), %xmm0	 RIP: 433463	 Bytes: 5
  %loadMem_433463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433463 = call %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433463)
  store %struct.Memory* %call_433463, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 433468	 Bytes: 4
  %loadMem_433468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433468 = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433468)
  store %struct.Memory* %call_433468, %struct.Memory** %MEMORY

  ; Code: jbe .L_433481	 RIP: 43346c	 Bytes: 6
  %loadMem_43346c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43346c = call %struct.Memory* @routine_jbe_.L_433481(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43346c, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_43346c, %struct.Memory** %MEMORY

  %loadBr_43346c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43346c = icmp eq i8 %loadBr_43346c, 1
  br i1 %cmpBr_43346c, label %block_.L_433481, label %block_433472

block_433472:
  ; Code: cvtss2sd -0x1c(%rbp), %xmm0	 RIP: 433472	 Bytes: 5
  %loadMem_433472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433472 = call %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433472)
  store %struct.Memory* %call_433472, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 433477	 Bytes: 5
  %loadMem_433477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433477 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433477)
  store %struct.Memory* %call_433477, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4334be	 RIP: 43347c	 Bytes: 5
  %loadMem_43347c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43347c = call %struct.Memory* @routine_jmpq_.L_4334be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43347c, i64 66, i64 5)
  store %struct.Memory* %call_43347c, %struct.Memory** %MEMORY

  br label %block_.L_4334be

  ; Code: .L_433481:	 RIP: 433481	 Bytes: 0
block_.L_433481:

  ; Code: cvtss2sd -0x18(%rbp), %xmm0	 RIP: 433481	 Bytes: 5
  %loadMem_433481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433481 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433481)
  store %struct.Memory* %call_433481, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 433486	 Bytes: 4
  %loadMem_433486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433486 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433486)
  store %struct.Memory* %call_433486, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 43348a	 Bytes: 7
  %loadMem_43348a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43348a = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43348a)
  store %struct.Memory* %call_43348a, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 433491	 Bytes: 3
  %loadMem_433491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433491 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433491)
  store %struct.Memory* %call_433491, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 433494	 Bytes: 3
  %loadMem_433494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433494 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433494)
  store %struct.Memory* %call_433494, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 433497	 Bytes: 3
  %loadMem_433497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433497 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433497)
  store %struct.Memory* %call_433497, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 43349a	 Bytes: 4
  %loadMem_43349a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43349a = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43349a)
  store %struct.Memory* %call_43349a, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x14(%rax), %xmm1	 RIP: 43349e	 Bytes: 5
  %loadMem_43349e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43349e = call %struct.Memory* @routine_cvtss2sd_0x14__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43349e)
  store %struct.Memory* %call_43349e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 4334a3	 Bytes: 5
  %loadMem_4334a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334a3 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334a3)
  store %struct.Memory* %call_4334a3, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 4334a8	 Bytes: 3
  %loadMem_4334a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334a8 = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334a8)
  store %struct.Memory* %call_4334a8, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 4334ab	 Bytes: 5
  %loadMem1_4334ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4334ab = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4334ab, i64 -204731, i64 5, i64 5)
  store %struct.Memory* %call1_4334ab, %struct.Memory** %MEMORY

  %loadMem2_4334ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4334ab = load i64, i64* %3
  %call2_4334ab = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_4334ab, %struct.Memory* %loadMem2_4334ab)
  store %struct.Memory* %call2_4334ab, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 4334b0	 Bytes: 5
  %loadMem_4334b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334b0 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334b0)
  store %struct.Memory* %call_4334b0, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 4334b5	 Bytes: 4
  %loadMem_4334b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334b5 = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334b5)
  store %struct.Memory* %call_4334b5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x48(%rbp)	 RIP: 4334b9	 Bytes: 5
  %loadMem_4334b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334b9 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334b9)
  store %struct.Memory* %call_4334b9, %struct.Memory** %MEMORY

  ; Code: .L_4334be:	 RIP: 4334be	 Bytes: 0
  br label %block_.L_4334be
block_.L_4334be:

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 4334be	 Bytes: 5
  %loadMem_4334be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334be = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334be)
  store %struct.Memory* %call_4334be, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 4334c3	 Bytes: 4
  %loadMem_4334c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334c3 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334c3)
  store %struct.Memory* %call_4334c3, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x1c(%rbp)	 RIP: 4334c7	 Bytes: 5
  %loadMem_4334c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334c7 = call %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334c7)
  store %struct.Memory* %call_4334c7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_433526	 RIP: 4334cc	 Bytes: 5
  %loadMem_4334cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334cc = call %struct.Memory* @routine_jmpq_.L_433526(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334cc, i64 90, i64 5)
  store %struct.Memory* %call_4334cc, %struct.Memory** %MEMORY

  br label %block_.L_433526

  ; Code: .L_4334d1:	 RIP: 4334d1	 Bytes: 0
block_.L_4334d1:

  ; Code: movss -0x1c(%rbp), %xmm0	 RIP: 4334d1	 Bytes: 5
  %loadMem_4334d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334d1 = call %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334d1)
  store %struct.Memory* %call_4334d1, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm1	 RIP: 4334d6	 Bytes: 5
  %loadMem_4334d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334d6 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334d6)
  store %struct.Memory* %call_4334d6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4334db	 Bytes: 4
  %loadMem_4334db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334db = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334db)
  store %struct.Memory* %call_4334db, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 4334df	 Bytes: 7
  %loadMem_4334df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334df = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334df)
  store %struct.Memory* %call_4334df, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 4334e6	 Bytes: 3
  %loadMem_4334e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334e6 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334e6)
  store %struct.Memory* %call_4334e6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4334e9	 Bytes: 3
  %loadMem_4334e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334e9 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334e9)
  store %struct.Memory* %call_4334e9, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4334ec	 Bytes: 3
  %loadMem_4334ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334ec = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334ec)
  store %struct.Memory* %call_4334ec, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4334ef	 Bytes: 4
  %loadMem_4334ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334ef = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334ef)
  store %struct.Memory* %call_4334ef, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x14(%rax), %xmm2	 RIP: 4334f3	 Bytes: 5
  %loadMem_4334f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334f3 = call %struct.Memory* @routine_cvtss2sd_0x14__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334f3)
  store %struct.Memory* %call_4334f3, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x54(%rbp)	 RIP: 4334f8	 Bytes: 5
  %loadMem_4334f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334f8 = call %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334f8)
  store %struct.Memory* %call_4334f8, %struct.Memory** %MEMORY

  ; Code: movaps %xmm2, %xmm0	 RIP: 4334fd	 Bytes: 3
  %loadMem_4334fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4334fd = call %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4334fd)
  store %struct.Memory* %call_4334fd, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x60(%rbp)	 RIP: 433500	 Bytes: 5
  %loadMem_433500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433500 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433500)
  store %struct.Memory* %call_433500, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 433505	 Bytes: 5
  %loadMem1_433505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433505 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433505, i64 -204821, i64 5, i64 5)
  store %struct.Memory* %call1_433505, %struct.Memory** %MEMORY

  %loadMem2_433505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433505 = load i64, i64* %3
  %call2_433505 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_433505, %struct.Memory* %loadMem2_433505)
  store %struct.Memory* %call2_433505, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm1	 RIP: 43350a	 Bytes: 5
  %loadMem_43350a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43350a = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43350a)
  store %struct.Memory* %call_43350a, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 43350f	 Bytes: 4
  %loadMem_43350f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43350f = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43350f)
  store %struct.Memory* %call_43350f, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm1, %xmm1	 RIP: 433513	 Bytes: 4
  %loadMem_433513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433513 = call %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433513)
  store %struct.Memory* %call_433513, %struct.Memory** %MEMORY

  ; Code: movss -0x54(%rbp), %xmm0	 RIP: 433517	 Bytes: 5
  %loadMem_433517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433517 = call %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433517)
  store %struct.Memory* %call_433517, %struct.Memory** %MEMORY

  ; Code: callq .LogSum	 RIP: 43351c	 Bytes: 5
  %loadMem1_43351c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43351c = call %struct.Memory* @routine_callq_.LogSum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43351c, i64 -46236, i64 5, i64 5)
  store %struct.Memory* %call1_43351c, %struct.Memory** %MEMORY

  %loadMem2_43351c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43351c = load i64, i64* %3
  %call2_43351c = call %struct.Memory* @sub_428080.LogSum(%struct.State* %0, i64  %loadPC_43351c, %struct.Memory* %loadMem2_43351c)
  store %struct.Memory* %call2_43351c, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x1c(%rbp)	 RIP: 433521	 Bytes: 5
  %loadMem_433521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433521 = call %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433521)
  store %struct.Memory* %call_433521, %struct.Memory** %MEMORY

  ; Code: .L_433526:	 RIP: 433526	 Bytes: 0
  br label %block_.L_433526
block_.L_433526:

  ; Code: jmpq .L_43352b	 RIP: 433526	 Bytes: 5
  %loadMem_433526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433526 = call %struct.Memory* @routine_jmpq_.L_43352b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433526, i64 5, i64 5)
  store %struct.Memory* %call_433526, %struct.Memory** %MEMORY

  br label %block_.L_43352b

  ; Code: .L_43352b:	 RIP: 43352b	 Bytes: 0
block_.L_43352b:

  ; Code: xorps %xmm0, %xmm0	 RIP: 43352b	 Bytes: 3
  %loadMem_43352b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43352b = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43352b)
  store %struct.Memory* %call_43352b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43352e	 Bytes: 4
  %loadMem_43352e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43352e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43352e)
  store %struct.Memory* %call_43352e, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 433532	 Bytes: 7
  %loadMem_433532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433532 = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433532)
  store %struct.Memory* %call_433532, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 433539	 Bytes: 3
  %loadMem_433539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433539 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433539)
  store %struct.Memory* %call_433539, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 43353c	 Bytes: 3
  %loadMem_43353c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43353c = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43353c)
  store %struct.Memory* %call_43353c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 43353f	 Bytes: 3
  %loadMem_43353f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43353f = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43353f)
  store %struct.Memory* %call_43353f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 433542	 Bytes: 4
  %loadMem_433542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433542 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433542)
  store %struct.Memory* %call_433542, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x18(%rax), %xmm1	 RIP: 433546	 Bytes: 5
  %loadMem_433546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433546 = call %struct.Memory* @routine_cvtss2sd_0x18__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433546)
  store %struct.Memory* %call_433546, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 43354b	 Bytes: 4
  %loadMem_43354b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43354b = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43354b)
  store %struct.Memory* %call_43354b, %struct.Memory** %MEMORY

  ; Code: jbe .L_433597	 RIP: 43354f	 Bytes: 6
  %loadMem_43354f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43354f = call %struct.Memory* @routine_jbe_.L_433597(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43354f, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_43354f, %struct.Memory** %MEMORY

  %loadBr_43354f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43354f = icmp eq i8 %loadBr_43354f, 1
  br i1 %cmpBr_43354f, label %block_.L_433597, label %block_433555

block_433555:
  ; Code: cvtss2sd -0x18(%rbp), %xmm0	 RIP: 433555	 Bytes: 5
  %loadMem_433555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433555 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433555)
  store %struct.Memory* %call_433555, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43355a	 Bytes: 4
  %loadMem_43355a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43355a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43355a)
  store %struct.Memory* %call_43355a, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 43355e	 Bytes: 7
  %loadMem_43355e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43355e = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43355e)
  store %struct.Memory* %call_43355e, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 433565	 Bytes: 3
  %loadMem_433565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433565 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433565)
  store %struct.Memory* %call_433565, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 433568	 Bytes: 3
  %loadMem_433568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433568 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433568)
  store %struct.Memory* %call_433568, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 43356b	 Bytes: 3
  %loadMem_43356b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43356b = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43356b)
  store %struct.Memory* %call_43356b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 43356e	 Bytes: 4
  %loadMem_43356e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43356e = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43356e)
  store %struct.Memory* %call_43356e, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x18(%rax), %xmm1	 RIP: 433572	 Bytes: 5
  %loadMem_433572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433572 = call %struct.Memory* @routine_cvtss2sd_0x18__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433572)
  store %struct.Memory* %call_433572, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x68(%rbp)	 RIP: 433577	 Bytes: 5
  %loadMem_433577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433577 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433577)
  store %struct.Memory* %call_433577, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 43357c	 Bytes: 3
  %loadMem_43357c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43357c = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43357c)
  store %struct.Memory* %call_43357c, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 43357f	 Bytes: 5
  %loadMem1_43357f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43357f = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43357f, i64 -204943, i64 5, i64 5)
  store %struct.Memory* %call1_43357f, %struct.Memory** %MEMORY

  %loadMem2_43357f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43357f = load i64, i64* %3
  %call2_43357f = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_43357f, %struct.Memory* %loadMem2_43357f)
  store %struct.Memory* %call2_43357f, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm1	 RIP: 433584	 Bytes: 5
  %loadMem_433584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433584 = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433584)
  store %struct.Memory* %call_433584, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 433589	 Bytes: 4
  %loadMem_433589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433589 = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433589)
  store %struct.Memory* %call_433589, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x70(%rbp)	 RIP: 43358d	 Bytes: 5
  %loadMem_43358d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43358d = call %struct.Memory* @routine_movsd__xmm1__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43358d)
  store %struct.Memory* %call_43358d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4335a9	 RIP: 433592	 Bytes: 5
  %loadMem_433592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433592 = call %struct.Memory* @routine_jmpq_.L_4335a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433592, i64 23, i64 5)
  store %struct.Memory* %call_433592, %struct.Memory** %MEMORY

  br label %block_.L_4335a9

  ; Code: .L_433597:	 RIP: 433597	 Bytes: 0
block_.L_433597:

  ; Code: movsd 0x21339(%rip), %xmm0	 RIP: 433597	 Bytes: 8
  %loadMem_433597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433597 = call %struct.Memory* @routine_movsd_0x21339__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433597)
  store %struct.Memory* %call_433597, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x70(%rbp)	 RIP: 43359f	 Bytes: 5
  %loadMem_43359f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43359f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43359f)
  store %struct.Memory* %call_43359f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4335a9	 RIP: 4335a4	 Bytes: 5
  %loadMem_4335a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335a4 = call %struct.Memory* @routine_jmpq_.L_4335a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335a4, i64 5, i64 5)
  store %struct.Memory* %call_4335a4, %struct.Memory** %MEMORY

  br label %block_.L_4335a9

  ; Code: .L_4335a9:	 RIP: 4335a9	 Bytes: 0
block_.L_4335a9:

  ; Code: movsd -0x70(%rbp), %xmm0	 RIP: 4335a9	 Bytes: 5
  %loadMem_4335a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335a9 = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335a9)
  store %struct.Memory* %call_4335a9, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 4335ae	 Bytes: 4
  %loadMem_4335ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335ae = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335ae)
  store %struct.Memory* %call_4335ae, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x18(%rbp)	 RIP: 4335b2	 Bytes: 5
  %loadMem_4335b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335b2 = call %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335b2)
  store %struct.Memory* %call_4335b2, %struct.Memory** %MEMORY

  ; Code: .L_4335b7:	 RIP: 4335b7	 Bytes: 0
  br label %block_.L_4335b7
block_.L_4335b7:

  ; Code: movsd 0x21319(%rip), %xmm0	 RIP: 4335b7	 Bytes: 8
  %loadMem_4335b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335b7 = call %struct.Memory* @routine_movsd_0x21319__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335b7)
  store %struct.Memory* %call_4335b7, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x1c(%rbp), %xmm1	 RIP: 4335bf	 Bytes: 5
  %loadMem_4335bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335bf = call %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335bf)
  store %struct.Memory* %call_4335bf, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4335c4	 Bytes: 4
  %loadMem_4335c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335c4 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335c4)
  store %struct.Memory* %call_4335c4, %struct.Memory** %MEMORY

  ; Code: jbe .L_433630	 RIP: 4335c8	 Bytes: 6
  %loadMem_4335c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335c8 = call %struct.Memory* @routine_jbe_.L_433630(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335c8, i8* %BRANCH_TAKEN, i64 104, i64 6, i64 6)
  store %struct.Memory* %call_4335c8, %struct.Memory** %MEMORY

  %loadBr_4335c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4335c8 = icmp eq i8 %loadBr_4335c8, 1
  br i1 %cmpBr_4335c8, label %block_.L_433630, label %block_4335ce

block_4335ce:
  ; Code: cvtss2sd -0x1c(%rbp), %xmm0	 RIP: 4335ce	 Bytes: 5
  %loadMem_4335ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335ce = call %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335ce)
  store %struct.Memory* %call_4335ce, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4335d3	 Bytes: 4
  %loadMem_4335d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335d3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335d3)
  store %struct.Memory* %call_4335d3, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x130(%rax), %xmm1	 RIP: 4335d7	 Bytes: 8
  %loadMem_4335d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335d7 = call %struct.Memory* @routine_cvtss2sd_0x130__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335d7)
  store %struct.Memory* %call_4335d7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 4335df	 Bytes: 5
  %loadMem_4335df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335df = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335df)
  store %struct.Memory* %call_4335df, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 4335e4	 Bytes: 3
  %loadMem_4335e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335e4 = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335e4)
  store %struct.Memory* %call_4335e4, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 4335e7	 Bytes: 5
  %loadMem1_4335e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4335e7 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4335e7, i64 -205047, i64 5, i64 5)
  store %struct.Memory* %call1_4335e7, %struct.Memory** %MEMORY

  %loadMem2_4335e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4335e7 = load i64, i64* %3
  %call2_4335e7 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_4335e7, %struct.Memory* %loadMem2_4335e7)
  store %struct.Memory* %call2_4335e7, %struct.Memory** %MEMORY

  ; Code: movsd 0x211fc(%rip), %xmm1	 RIP: 4335ec	 Bytes: 8
  %loadMem_4335ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335ec = call %struct.Memory* @routine_movsd_0x211fc__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335ec)
  store %struct.Memory* %call_4335ec, %struct.Memory** %MEMORY

  ; Code: movsd 0x21304(%rip), %xmm2	 RIP: 4335f4	 Bytes: 8
  %loadMem_4335f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335f4 = call %struct.Memory* @routine_movsd_0x21304__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335f4)
  store %struct.Memory* %call_4335f4, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm3	 RIP: 4335fc	 Bytes: 5
  %loadMem_4335fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4335fc = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4335fc)
  store %struct.Memory* %call_4335fc, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm3	 RIP: 433601	 Bytes: 4
  %loadMem_433601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433601 = call %struct.Memory* @routine_subsd__xmm0___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433601)
  store %struct.Memory* %call_433601, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 433605	 Bytes: 4
  %loadMem_433605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433605 = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433605)
  store %struct.Memory* %call_433605, %struct.Memory** %MEMORY

  ; Code: addsd %xmm2, %xmm1	 RIP: 433609	 Bytes: 4
  %loadMem_433609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433609 = call %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433609)
  store %struct.Memory* %call_433609, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 43360d	 Bytes: 3
  %loadMem_43360d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43360d = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43360d)
  store %struct.Memory* %call_43360d, %struct.Memory** %MEMORY

  ; Code: callq .floor_plt	 RIP: 433610	 Bytes: 5
  %loadMem1_433610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433610 = call %struct.Memory* @routine_callq_.floor_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433610, i64 -204672, i64 5, i64 5)
  store %struct.Memory* %call1_433610, %struct.Memory** %MEMORY

  %loadMem2_433610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433610 = load i64, i64* %3
  %call2_433610 = call %struct.Memory* @ext_floor(%struct.State* %0, i64  %loadPC_433610, %struct.Memory* %loadMem2_433610)
  store %struct.Memory* %call2_433610, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %ecx	 RIP: 433615	 Bytes: 4
  %loadMem_433615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433615 = call %struct.Memory* @routine_cvttsd2si__xmm0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433615)
  store %struct.Memory* %call_433615, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 433619	 Bytes: 4
  %loadMem_433619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433619 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433619)
  store %struct.Memory* %call_433619, %struct.Memory** %MEMORY

  ; Code: movq 0x170(%rax), %rax	 RIP: 43361d	 Bytes: 7
  %loadMem_43361d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43361d = call %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43361d)
  store %struct.Memory* %call_43361d, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 433624	 Bytes: 4
  %loadMem_433624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433624 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433624)
  store %struct.Memory* %call_433624, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 433628	 Bytes: 3
  %loadMem_433628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433628 = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433628)
  store %struct.Memory* %call_433628, %struct.Memory** %MEMORY

  ; Code: jmpq .L_433646	 RIP: 43362b	 Bytes: 5
  %loadMem_43362b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43362b = call %struct.Memory* @routine_jmpq_.L_433646(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43362b, i64 27, i64 5)
  store %struct.Memory* %call_43362b, %struct.Memory** %MEMORY

  br label %block_.L_433646

  ; Code: .L_433630:	 RIP: 433630	 Bytes: 0
block_.L_433630:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 433630	 Bytes: 4
  %loadMem_433630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433630 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433630)
  store %struct.Memory* %call_433630, %struct.Memory** %MEMORY

  ; Code: movq 0x170(%rax), %rax	 RIP: 433634	 Bytes: 7
  %loadMem_433634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433634 = call %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433634)
  store %struct.Memory* %call_433634, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 43363b	 Bytes: 4
  %loadMem_43363b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43363b = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43363b)
  store %struct.Memory* %call_43363b, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 43363f	 Bytes: 7
  %loadMem_43363f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43363f = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43363f)
  store %struct.Memory* %call_43363f, %struct.Memory** %MEMORY

  ; Code: .L_433646:	 RIP: 433646	 Bytes: 0
  br label %block_.L_433646
block_.L_433646:

  ; Code: jmpq .L_43364b	 RIP: 433646	 Bytes: 5
  %loadMem_433646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433646 = call %struct.Memory* @routine_jmpq_.L_43364b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433646, i64 5, i64 5)
  store %struct.Memory* %call_433646, %struct.Memory** %MEMORY

  br label %block_.L_43364b

  ; Code: .L_43364b:	 RIP: 43364b	 Bytes: 0
block_.L_43364b:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 43364b	 Bytes: 3
  %loadMem_43364b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43364b = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43364b)
  store %struct.Memory* %call_43364b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43364e	 Bytes: 3
  %loadMem_43364e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43364e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43364e)
  store %struct.Memory* %call_43364e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 433651	 Bytes: 3
  %loadMem_433651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433651 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433651)
  store %struct.Memory* %call_433651, %struct.Memory** %MEMORY

  ; Code: jmpq .L_433355	 RIP: 433654	 Bytes: 5
  %loadMem_433654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433654 = call %struct.Memory* @routine_jmpq_.L_433355(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433654, i64 -767, i64 5)
  store %struct.Memory* %call_433654, %struct.Memory** %MEMORY

  br label %block_.L_433355

  ; Code: .L_433659:	 RIP: 433659	 Bytes: 0
block_.L_433659:

  ; Code: xorps %xmm0, %xmm0	 RIP: 433659	 Bytes: 3
  %loadMem_433659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433659 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433659)
  store %struct.Memory* %call_433659, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43365c	 Bytes: 4
  %loadMem_43365c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43365c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43365c)
  store %struct.Memory* %call_43365c, %struct.Memory** %MEMORY

  ; Code: movq 0x178(%rax), %rax	 RIP: 433660	 Bytes: 7
  %loadMem_433660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433660 = call %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433660)
  store %struct.Memory* %call_433660, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433667	 Bytes: 4
  %loadMem_433667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433667 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433667)
  store %struct.Memory* %call_433667, %struct.Memory** %MEMORY

  ; Code: movslq 0x88(%rcx), %rcx	 RIP: 43366b	 Bytes: 7
  %loadMem_43366b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43366b = call %struct.Memory* @routine_movslq_0x88__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43366b)
  store %struct.Memory* %call_43366b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 433672	 Bytes: 7
  %loadMem_433672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433672 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433672)
  store %struct.Memory* %call_433672, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x18(%rbp)	 RIP: 433679	 Bytes: 5
  %loadMem_433679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433679 = call %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433679)
  store %struct.Memory* %call_433679, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43367e	 Bytes: 4
  %loadMem_43367e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43367e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43367e)
  store %struct.Memory* %call_43367e, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rax), %edx	 RIP: 433682	 Bytes: 6
  %loadMem_433682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433682 = call %struct.Memory* @routine_movl_0x88__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433682)
  store %struct.Memory* %call_433682, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 433688	 Bytes: 3
  %loadMem_433688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433688 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433688)
  store %struct.Memory* %call_433688, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x10(%rbp)	 RIP: 43368b	 Bytes: 3
  %loadMem_43368b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43368b = call %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43368b)
  store %struct.Memory* %call_43368b, %struct.Memory** %MEMORY

  ; Code: .L_43368e:	 RIP: 43368e	 Bytes: 0
  br label %block_.L_43368e
block_.L_43368e:

  ; Code: cmpl $0x1, -0x10(%rbp)	 RIP: 43368e	 Bytes: 4
  %loadMem_43368e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43368e = call %struct.Memory* @routine_cmpl__0x1__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43368e)
  store %struct.Memory* %call_43368e, %struct.Memory** %MEMORY

  ; Code: jl .L_433973	 RIP: 433692	 Bytes: 6
  %loadMem_433692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433692 = call %struct.Memory* @routine_jl_.L_433973(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433692, i8* %BRANCH_TAKEN, i64 737, i64 6, i64 6)
  store %struct.Memory* %call_433692, %struct.Memory** %MEMORY

  %loadBr_433692 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433692 = icmp eq i8 %loadBr_433692, 1
  br i1 %cmpBr_433692, label %block_.L_433973, label %block_433698

block_433698:
  ; Code: xorps %xmm0, %xmm0	 RIP: 433698	 Bytes: 3
  %loadMem_433698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433698 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433698)
  store %struct.Memory* %call_433698, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43369b	 Bytes: 4
  %loadMem_43369b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43369b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43369b)
  store %struct.Memory* %call_43369b, %struct.Memory** %MEMORY

  ; Code: movq 0xd8(%rax), %rax	 RIP: 43369f	 Bytes: 7
  %loadMem_43369f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43369f = call %struct.Memory* @routine_movq_0xd8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43369f)
  store %struct.Memory* %call_43369f, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4336a6	 Bytes: 4
  %loadMem_4336a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336a6 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336a6)
  store %struct.Memory* %call_4336a6, %struct.Memory** %MEMORY

  ; Code: cvtss2sd (%rax,%rcx,4), %xmm1	 RIP: 4336aa	 Bytes: 5
  %loadMem_4336aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336aa = call %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336aa)
  store %struct.Memory* %call_4336aa, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4336af	 Bytes: 4
  %loadMem_4336af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336af = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336af)
  store %struct.Memory* %call_4336af, %struct.Memory** %MEMORY

  ; Code: jbe .L_4336dc	 RIP: 4336b3	 Bytes: 6
  %loadMem_4336b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336b3 = call %struct.Memory* @routine_jbe_.L_4336dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336b3, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_4336b3, %struct.Memory** %MEMORY

  %loadBr_4336b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4336b3 = icmp eq i8 %loadBr_4336b3, 1
  br i1 %cmpBr_4336b3, label %block_.L_4336dc, label %block_4336b9

block_4336b9:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4336b9	 Bytes: 4
  %loadMem_4336b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336b9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336b9)
  store %struct.Memory* %call_4336b9, %struct.Memory** %MEMORY

  ; Code: movq 0xd8(%rax), %rax	 RIP: 4336bd	 Bytes: 7
  %loadMem_4336bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336bd = call %struct.Memory* @routine_movq_0xd8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336bd)
  store %struct.Memory* %call_4336bd, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4336c4	 Bytes: 4
  %loadMem_4336c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336c4 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336c4)
  store %struct.Memory* %call_4336c4, %struct.Memory** %MEMORY

  ; Code: cvtss2sd (%rax,%rcx,4), %xmm0	 RIP: 4336c8	 Bytes: 5
  %loadMem_4336c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336c8 = call %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336c8)
  store %struct.Memory* %call_4336c8, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 4336cd	 Bytes: 5
  %loadMem1_4336cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4336cd = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4336cd, i64 -205277, i64 5, i64 5)
  store %struct.Memory* %call1_4336cd, %struct.Memory** %MEMORY

  %loadMem2_4336cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4336cd = load i64, i64* %3
  %call2_4336cd = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_4336cd, %struct.Memory* %loadMem2_4336cd)
  store %struct.Memory* %call2_4336cd, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 4336d2	 Bytes: 5
  %loadMem_4336d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336d2 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336d2)
  store %struct.Memory* %call_4336d2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4336ee	 RIP: 4336d7	 Bytes: 5
  %loadMem_4336d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336d7 = call %struct.Memory* @routine_jmpq_.L_4336ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336d7, i64 23, i64 5)
  store %struct.Memory* %call_4336d7, %struct.Memory** %MEMORY

  br label %block_.L_4336ee

  ; Code: .L_4336dc:	 RIP: 4336dc	 Bytes: 0
block_.L_4336dc:

  ; Code: movsd 0x211f4(%rip), %xmm0	 RIP: 4336dc	 Bytes: 8
  %loadMem_4336dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336dc = call %struct.Memory* @routine_movsd_0x211f4__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336dc)
  store %struct.Memory* %call_4336dc, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 4336e4	 Bytes: 5
  %loadMem_4336e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336e4 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336e4)
  store %struct.Memory* %call_4336e4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4336ee	 RIP: 4336e9	 Bytes: 5
  %loadMem_4336e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336e9 = call %struct.Memory* @routine_jmpq_.L_4336ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336e9, i64 5, i64 5)
  store %struct.Memory* %call_4336e9, %struct.Memory** %MEMORY

  br label %block_.L_4336ee

  ; Code: .L_4336ee:	 RIP: 4336ee	 Bytes: 0
block_.L_4336ee:

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 4336ee	 Bytes: 5
  %loadMem_4336ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336ee = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336ee)
  store %struct.Memory* %call_4336ee, %struct.Memory** %MEMORY

  ; Code: movsd 0x211dd(%rip), %xmm1	 RIP: 4336f3	 Bytes: 8
  %loadMem_4336f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336f3 = call %struct.Memory* @routine_movsd_0x211dd__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336f3)
  store %struct.Memory* %call_4336f3, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 4336fb	 Bytes: 4
  %loadMem_4336fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336fb = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336fb)
  store %struct.Memory* %call_4336fb, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x20(%rbp)	 RIP: 4336ff	 Bytes: 5
  %loadMem_4336ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4336ff = call %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4336ff)
  store %struct.Memory* %call_4336ff, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm0	 RIP: 433704	 Bytes: 5
  %loadMem_433704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433704 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433704)
  store %struct.Memory* %call_433704, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 433709	 Bytes: 4
  %loadMem_433709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433709 = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433709)
  store %struct.Memory* %call_433709, %struct.Memory** %MEMORY

  ; Code: jbe .L_4338f5	 RIP: 43370d	 Bytes: 6
  %loadMem_43370d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43370d = call %struct.Memory* @routine_jbe_.L_4338f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43370d, i8* %BRANCH_TAKEN, i64 488, i64 6, i64 6)
  store %struct.Memory* %call_43370d, %struct.Memory** %MEMORY

  %loadBr_43370d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43370d = icmp eq i8 %loadBr_43370d, 1
  br i1 %cmpBr_43370d, label %block_.L_4338f5, label %block_433713

block_433713:
  ; Code: xorps %xmm0, %xmm0	 RIP: 433713	 Bytes: 3
  %loadMem_433713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433713 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433713)
  store %struct.Memory* %call_433713, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 433716	 Bytes: 4
  %loadMem_433716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433716 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433716)
  store %struct.Memory* %call_433716, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 43371a	 Bytes: 7
  %loadMem_43371a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43371a = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43371a)
  store %struct.Memory* %call_43371a, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 433721	 Bytes: 4
  %loadMem_433721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433721 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433721)
  store %struct.Memory* %call_433721, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 433725	 Bytes: 4
  %loadMem_433725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433725 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433725)
  store %struct.Memory* %call_433725, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x8(%rax), %xmm1	 RIP: 433729	 Bytes: 5
  %loadMem_433729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433729 = call %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433729)
  store %struct.Memory* %call_433729, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 43372e	 Bytes: 4
  %loadMem_43372e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43372e = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43372e)
  store %struct.Memory* %call_43372e, %struct.Memory** %MEMORY

  ; Code: jbe .L_433864	 RIP: 433732	 Bytes: 6
  %loadMem_433732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433732 = call %struct.Memory* @routine_jbe_.L_433864(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433732, i8* %BRANCH_TAKEN, i64 306, i64 6, i64 6)
  store %struct.Memory* %call_433732, %struct.Memory** %MEMORY

  %loadBr_433732 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433732 = icmp eq i8 %loadBr_433732, 1
  br i1 %cmpBr_433732, label %block_.L_433864, label %block_433738

block_433738:
  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 433738	 Bytes: 4
  %loadMem_433738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433738 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433738)
  store %struct.Memory* %call_433738, %struct.Memory** %MEMORY

  ; Code: je .L_433803	 RIP: 43373c	 Bytes: 6
  %loadMem_43373c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43373c = call %struct.Memory* @routine_je_.L_433803(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43373c, i8* %BRANCH_TAKEN, i64 199, i64 6, i64 6)
  store %struct.Memory* %call_43373c, %struct.Memory** %MEMORY

  %loadBr_43373c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43373c = icmp eq i8 %loadBr_43373c, 1
  br i1 %cmpBr_43373c, label %block_.L_433803, label %block_433742

block_433742:
  ; Code: cvtss2sd -0x20(%rbp), %xmm0	 RIP: 433742	 Bytes: 5
  %loadMem_433742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433742 = call %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433742)
  store %struct.Memory* %call_433742, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm1	 RIP: 433747	 Bytes: 5
  %loadMem_433747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433747 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433747)
  store %struct.Memory* %call_433747, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43374c	 Bytes: 4
  %loadMem_43374c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43374c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43374c)
  store %struct.Memory* %call_43374c, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 433750	 Bytes: 7
  %loadMem_433750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433750 = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433750)
  store %struct.Memory* %call_433750, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 433757	 Bytes: 4
  %loadMem_433757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433757 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433757)
  store %struct.Memory* %call_433757, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43375b	 Bytes: 4
  %loadMem_43375b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43375b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43375b)
  store %struct.Memory* %call_43375b, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x8(%rax), %xmm2	 RIP: 43375f	 Bytes: 5
  %loadMem_43375f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43375f = call %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43375f)
  store %struct.Memory* %call_43375f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 433764	 Bytes: 8
  %loadMem_433764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433764 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433764)
  store %struct.Memory* %call_433764, %struct.Memory** %MEMORY

  ; Code: movaps %xmm2, %xmm0	 RIP: 43376c	 Bytes: 3
  %loadMem_43376c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43376c = call %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43376c)
  store %struct.Memory* %call_43376c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x90(%rbp)	 RIP: 43376f	 Bytes: 8
  %loadMem_43376f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43376f = call %struct.Memory* @routine_movsd__xmm1__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43376f)
  store %struct.Memory* %call_43376f, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 433777	 Bytes: 5
  %loadMem1_433777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433777 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433777, i64 -205447, i64 5, i64 5)
  store %struct.Memory* %call1_433777, %struct.Memory** %MEMORY

  %loadMem2_433777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433777 = load i64, i64* %3
  %call2_433777 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_433777, %struct.Memory* %loadMem2_433777)
  store %struct.Memory* %call2_433777, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm1	 RIP: 43377c	 Bytes: 8
  %loadMem_43377c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43377c = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43377c)
  store %struct.Memory* %call_43377c, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 433784	 Bytes: 4
  %loadMem_433784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433784 = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433784)
  store %struct.Memory* %call_433784, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 433788	 Bytes: 8
  %loadMem_433788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433788 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433788)
  store %struct.Memory* %call_433788, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 433790	 Bytes: 4
  %loadMem_433790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433790 = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433790)
  store %struct.Memory* %call_433790, %struct.Memory** %MEMORY

  ; Code: jbe .L_4337ac	 RIP: 433794	 Bytes: 6
  %loadMem_433794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433794 = call %struct.Memory* @routine_jbe_.L_4337ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433794, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_433794, %struct.Memory** %MEMORY

  %loadBr_433794 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433794 = icmp eq i8 %loadBr_433794, 1
  br i1 %cmpBr_433794, label %block_.L_4337ac, label %block_43379a

block_43379a:
  ; Code: cvtss2sd -0x20(%rbp), %xmm0	 RIP: 43379a	 Bytes: 5
  %loadMem_43379a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43379a = call %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43379a)
  store %struct.Memory* %call_43379a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 43379f	 Bytes: 8
  %loadMem_43379f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43379f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43379f)
  store %struct.Memory* %call_43379f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4337ed	 RIP: 4337a7	 Bytes: 5
  %loadMem_4337a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337a7 = call %struct.Memory* @routine_jmpq_.L_4337ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337a7, i64 70, i64 5)
  store %struct.Memory* %call_4337a7, %struct.Memory** %MEMORY

  br label %block_.L_4337ed

  ; Code: .L_4337ac:	 RIP: 4337ac	 Bytes: 0
block_.L_4337ac:

  ; Code: cvtss2sd -0x18(%rbp), %xmm0	 RIP: 4337ac	 Bytes: 5
  %loadMem_4337ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337ac = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337ac)
  store %struct.Memory* %call_4337ac, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4337b1	 Bytes: 4
  %loadMem_4337b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337b1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337b1)
  store %struct.Memory* %call_4337b1, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 4337b5	 Bytes: 7
  %loadMem_4337b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337b5 = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337b5)
  store %struct.Memory* %call_4337b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4337bc	 Bytes: 4
  %loadMem_4337bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337bc = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337bc)
  store %struct.Memory* %call_4337bc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4337c0	 Bytes: 4
  %loadMem_4337c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337c0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337c0)
  store %struct.Memory* %call_4337c0, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x8(%rax), %xmm1	 RIP: 4337c4	 Bytes: 5
  %loadMem_4337c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337c4 = call %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337c4)
  store %struct.Memory* %call_4337c4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 4337c9	 Bytes: 8
  %loadMem_4337c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337c9 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337c9)
  store %struct.Memory* %call_4337c9, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 4337d1	 Bytes: 3
  %loadMem_4337d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337d1 = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337d1)
  store %struct.Memory* %call_4337d1, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 4337d4	 Bytes: 5
  %loadMem1_4337d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4337d4 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4337d4, i64 -205540, i64 5, i64 5)
  store %struct.Memory* %call1_4337d4, %struct.Memory** %MEMORY

  %loadMem2_4337d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4337d4 = load i64, i64* %3
  %call2_4337d4 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_4337d4, %struct.Memory* %loadMem2_4337d4)
  store %struct.Memory* %call2_4337d4, %struct.Memory** %MEMORY

  ; Code: movsd -0xa0(%rbp), %xmm1	 RIP: 4337d9	 Bytes: 8
  %loadMem_4337d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337d9 = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337d9)
  store %struct.Memory* %call_4337d9, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 4337e1	 Bytes: 4
  %loadMem_4337e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337e1 = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337e1)
  store %struct.Memory* %call_4337e1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x98(%rbp)	 RIP: 4337e5	 Bytes: 8
  %loadMem_4337e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337e5 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337e5)
  store %struct.Memory* %call_4337e5, %struct.Memory** %MEMORY

  ; Code: .L_4337ed:	 RIP: 4337ed	 Bytes: 0
  br label %block_.L_4337ed
block_.L_4337ed:

  ; Code: movsd -0x98(%rbp), %xmm0	 RIP: 4337ed	 Bytes: 8
  %loadMem_4337ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337ed = call %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337ed)
  store %struct.Memory* %call_4337ed, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 4337f5	 Bytes: 4
  %loadMem_4337f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337f5 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337f5)
  store %struct.Memory* %call_4337f5, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x20(%rbp)	 RIP: 4337f9	 Bytes: 5
  %loadMem_4337f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337f9 = call %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337f9)
  store %struct.Memory* %call_4337f9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43385f	 RIP: 4337fe	 Bytes: 5
  %loadMem_4337fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4337fe = call %struct.Memory* @routine_jmpq_.L_43385f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4337fe, i64 97, i64 5)
  store %struct.Memory* %call_4337fe, %struct.Memory** %MEMORY

  br label %block_.L_43385f

  ; Code: .L_433803:	 RIP: 433803	 Bytes: 0
block_.L_433803:

  ; Code: movss -0x20(%rbp), %xmm0	 RIP: 433803	 Bytes: 5
  %loadMem_433803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433803 = call %struct.Memory* @routine_movss_MINUS0x20__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433803)
  store %struct.Memory* %call_433803, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm1	 RIP: 433808	 Bytes: 5
  %loadMem_433808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433808 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433808)
  store %struct.Memory* %call_433808, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43380d	 Bytes: 4
  %loadMem_43380d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43380d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43380d)
  store %struct.Memory* %call_43380d, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 433811	 Bytes: 7
  %loadMem_433811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433811 = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433811)
  store %struct.Memory* %call_433811, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 433818	 Bytes: 4
  %loadMem_433818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433818 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433818)
  store %struct.Memory* %call_433818, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43381c	 Bytes: 4
  %loadMem_43381c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43381c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43381c)
  store %struct.Memory* %call_43381c, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x8(%rax), %xmm2	 RIP: 433820	 Bytes: 5
  %loadMem_433820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433820 = call %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433820)
  store %struct.Memory* %call_433820, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0xa4(%rbp)	 RIP: 433825	 Bytes: 8
  %loadMem_433825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433825 = call %struct.Memory* @routine_movss__xmm0__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433825)
  store %struct.Memory* %call_433825, %struct.Memory** %MEMORY

  ; Code: movaps %xmm2, %xmm0	 RIP: 43382d	 Bytes: 3
  %loadMem_43382d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43382d = call %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43382d)
  store %struct.Memory* %call_43382d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0xb0(%rbp)	 RIP: 433830	 Bytes: 8
  %loadMem_433830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433830 = call %struct.Memory* @routine_movsd__xmm1__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433830)
  store %struct.Memory* %call_433830, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 433838	 Bytes: 5
  %loadMem1_433838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433838 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433838, i64 -205640, i64 5, i64 5)
  store %struct.Memory* %call1_433838, %struct.Memory** %MEMORY

  %loadMem2_433838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433838 = load i64, i64* %3
  %call2_433838 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_433838, %struct.Memory* %loadMem2_433838)
  store %struct.Memory* %call2_433838, %struct.Memory** %MEMORY

  ; Code: movsd -0xb0(%rbp), %xmm1	 RIP: 43383d	 Bytes: 8
  %loadMem_43383d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43383d = call %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43383d)
  store %struct.Memory* %call_43383d, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 433845	 Bytes: 4
  %loadMem_433845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433845 = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433845)
  store %struct.Memory* %call_433845, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm1, %xmm1	 RIP: 433849	 Bytes: 4
  %loadMem_433849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433849 = call %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433849)
  store %struct.Memory* %call_433849, %struct.Memory** %MEMORY

  ; Code: movss -0xa4(%rbp), %xmm0	 RIP: 43384d	 Bytes: 8
  %loadMem_43384d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43384d = call %struct.Memory* @routine_movss_MINUS0xa4__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43384d)
  store %struct.Memory* %call_43384d, %struct.Memory** %MEMORY

  ; Code: callq .LogSum	 RIP: 433855	 Bytes: 5
  %loadMem1_433855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433855 = call %struct.Memory* @routine_callq_.LogSum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433855, i64 -47061, i64 5, i64 5)
  store %struct.Memory* %call1_433855, %struct.Memory** %MEMORY

  %loadMem2_433855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433855 = load i64, i64* %3
  %call2_433855 = call %struct.Memory* @sub_428080.LogSum(%struct.State* %0, i64  %loadPC_433855, %struct.Memory* %loadMem2_433855)
  store %struct.Memory* %call2_433855, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x20(%rbp)	 RIP: 43385a	 Bytes: 5
  %loadMem_43385a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43385a = call %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43385a)
  store %struct.Memory* %call_43385a, %struct.Memory** %MEMORY

  ; Code: .L_43385f:	 RIP: 43385f	 Bytes: 0
  br label %block_.L_43385f
block_.L_43385f:

  ; Code: jmpq .L_433864	 RIP: 43385f	 Bytes: 5
  %loadMem_43385f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43385f = call %struct.Memory* @routine_jmpq_.L_433864(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43385f, i64 5, i64 5)
  store %struct.Memory* %call_43385f, %struct.Memory** %MEMORY

  br label %block_.L_433864

  ; Code: .L_433864:	 RIP: 433864	 Bytes: 0
block_.L_433864:

  ; Code: xorps %xmm0, %xmm0	 RIP: 433864	 Bytes: 3
  %loadMem_433864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433864 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433864)
  store %struct.Memory* %call_433864, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 433867	 Bytes: 4
  %loadMem_433867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433867 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433867)
  store %struct.Memory* %call_433867, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 43386b	 Bytes: 7
  %loadMem_43386b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43386b = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43386b)
  store %struct.Memory* %call_43386b, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 433872	 Bytes: 4
  %loadMem_433872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433872 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433872)
  store %struct.Memory* %call_433872, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 433876	 Bytes: 4
  %loadMem_433876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433876 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433876)
  store %struct.Memory* %call_433876, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x18(%rax), %xmm1	 RIP: 43387a	 Bytes: 5
  %loadMem_43387a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43387a = call %struct.Memory* @routine_cvtss2sd_0x18__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43387a)
  store %struct.Memory* %call_43387a, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 43387f	 Bytes: 4
  %loadMem_43387f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43387f = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43387f)
  store %struct.Memory* %call_43387f, %struct.Memory** %MEMORY

  ; Code: jbe .L_4338cf	 RIP: 433883	 Bytes: 6
  %loadMem_433883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433883 = call %struct.Memory* @routine_jbe_.L_4338cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433883, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_433883, %struct.Memory** %MEMORY

  %loadBr_433883 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433883 = icmp eq i8 %loadBr_433883, 1
  br i1 %cmpBr_433883, label %block_.L_4338cf, label %block_433889

block_433889:
  ; Code: cvtss2sd -0x18(%rbp), %xmm0	 RIP: 433889	 Bytes: 5
  %loadMem_433889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433889 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433889)
  store %struct.Memory* %call_433889, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43388e	 Bytes: 4
  %loadMem_43388e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43388e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43388e)
  store %struct.Memory* %call_43388e, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 433892	 Bytes: 7
  %loadMem_433892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433892 = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433892)
  store %struct.Memory* %call_433892, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 433899	 Bytes: 4
  %loadMem_433899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433899 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433899)
  store %struct.Memory* %call_433899, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43389d	 Bytes: 4
  %loadMem_43389d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43389d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43389d)
  store %struct.Memory* %call_43389d, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x18(%rax), %xmm1	 RIP: 4338a1	 Bytes: 5
  %loadMem_4338a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4338a1 = call %struct.Memory* @routine_cvtss2sd_0x18__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4338a1)
  store %struct.Memory* %call_4338a1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb8(%rbp)	 RIP: 4338a6	 Bytes: 8
  %loadMem_4338a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4338a6 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4338a6)
  store %struct.Memory* %call_4338a6, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 4338ae	 Bytes: 3
  %loadMem_4338ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4338ae = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4338ae)
  store %struct.Memory* %call_4338ae, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 4338b1	 Bytes: 5
  %loadMem1_4338b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4338b1 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4338b1, i64 -205761, i64 5, i64 5)
  store %struct.Memory* %call1_4338b1, %struct.Memory** %MEMORY

  %loadMem2_4338b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4338b1 = load i64, i64* %3
  %call2_4338b1 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_4338b1, %struct.Memory* %loadMem2_4338b1)
  store %struct.Memory* %call2_4338b1, %struct.Memory** %MEMORY

  ; Code: movsd -0xb8(%rbp), %xmm1	 RIP: 4338b6	 Bytes: 8
  %loadMem_4338b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4338b6 = call %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4338b6)
  store %struct.Memory* %call_4338b6, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 4338be	 Bytes: 4
  %loadMem_4338be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4338be = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4338be)
  store %struct.Memory* %call_4338be, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0xc0(%rbp)	 RIP: 4338c2	 Bytes: 8
  %loadMem_4338c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4338c2 = call %struct.Memory* @routine_movsd__xmm1__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4338c2)
  store %struct.Memory* %call_4338c2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4338e4	 RIP: 4338ca	 Bytes: 5
  %loadMem_4338ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4338ca = call %struct.Memory* @routine_jmpq_.L_4338e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4338ca, i64 26, i64 5)
  store %struct.Memory* %call_4338ca, %struct.Memory** %MEMORY

  br label %block_.L_4338e4

  ; Code: .L_4338cf:	 RIP: 4338cf	 Bytes: 0
block_.L_4338cf:

  ; Code: movsd 0x21001(%rip), %xmm0	 RIP: 4338cf	 Bytes: 8
  %loadMem_4338cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4338cf = call %struct.Memory* @routine_movsd_0x21001__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4338cf)
  store %struct.Memory* %call_4338cf, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xc0(%rbp)	 RIP: 4338d7	 Bytes: 8
  %loadMem_4338d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4338d7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4338d7)
  store %struct.Memory* %call_4338d7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4338e4	 RIP: 4338df	 Bytes: 5
  %loadMem_4338df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4338df = call %struct.Memory* @routine_jmpq_.L_4338e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4338df, i64 5, i64 5)
  store %struct.Memory* %call_4338df, %struct.Memory** %MEMORY

  br label %block_.L_4338e4

  ; Code: .L_4338e4:	 RIP: 4338e4	 Bytes: 0
block_.L_4338e4:

  ; Code: movsd -0xc0(%rbp), %xmm0	 RIP: 4338e4	 Bytes: 8
  %loadMem_4338e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4338e4 = call %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4338e4)
  store %struct.Memory* %call_4338e4, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 4338ec	 Bytes: 4
  %loadMem_4338ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4338ec = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4338ec)
  store %struct.Memory* %call_4338ec, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x18(%rbp)	 RIP: 4338f0	 Bytes: 5
  %loadMem_4338f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4338f0 = call %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4338f0)
  store %struct.Memory* %call_4338f0, %struct.Memory** %MEMORY

  ; Code: .L_4338f5:	 RIP: 4338f5	 Bytes: 0
  br label %block_.L_4338f5
block_.L_4338f5:

  ; Code: movsd 0x20fdb(%rip), %xmm0	 RIP: 4338f5	 Bytes: 8
  %loadMem_4338f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4338f5 = call %struct.Memory* @routine_movsd_0x20fdb__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4338f5)
  store %struct.Memory* %call_4338f5, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x20(%rbp), %xmm1	 RIP: 4338fd	 Bytes: 5
  %loadMem_4338fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4338fd = call %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4338fd)
  store %struct.Memory* %call_4338fd, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 433902	 Bytes: 4
  %loadMem_433902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433902 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433902)
  store %struct.Memory* %call_433902, %struct.Memory** %MEMORY

  ; Code: jbe .L_43393d	 RIP: 433906	 Bytes: 6
  %loadMem_433906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433906 = call %struct.Memory* @routine_jbe_.L_43393d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433906, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_433906, %struct.Memory** %MEMORY

  %loadBr_433906 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433906 = icmp eq i8 %loadBr_433906, 1
  br i1 %cmpBr_433906, label %block_.L_43393d, label %block_43390c

block_43390c:
  ; Code: movsd 0x20edc(%rip), %xmm0	 RIP: 43390c	 Bytes: 8
  %loadMem_43390c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43390c = call %struct.Memory* @routine_movsd_0x20edc__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43390c)
  store %struct.Memory* %call_43390c, %struct.Memory** %MEMORY

  ; Code: movsd 0x20fe4(%rip), %xmm1	 RIP: 433914	 Bytes: 8
  %loadMem_433914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433914 = call %struct.Memory* @routine_movsd_0x20fe4__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433914)
  store %struct.Memory* %call_433914, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x20(%rbp), %xmm2	 RIP: 43391c	 Bytes: 5
  %loadMem_43391c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43391c = call %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43391c)
  store %struct.Memory* %call_43391c, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 433921	 Bytes: 4
  %loadMem_433921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433921 = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433921)
  store %struct.Memory* %call_433921, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 433925	 Bytes: 4
  %loadMem_433925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433925 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433925)
  store %struct.Memory* %call_433925, %struct.Memory** %MEMORY

  ; Code: callq .floor_plt	 RIP: 433929	 Bytes: 5
  %loadMem1_433929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433929 = call %struct.Memory* @routine_callq_.floor_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433929, i64 -205465, i64 5, i64 5)
  store %struct.Memory* %call1_433929, %struct.Memory** %MEMORY

  %loadMem2_433929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433929 = load i64, i64* %3
  %call2_433929 = call %struct.Memory* @ext_floor(%struct.State* %0, i64  %loadPC_433929, %struct.Memory* %loadMem2_433929)
  store %struct.Memory* %call2_433929, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %eax	 RIP: 43392e	 Bytes: 4
  %loadMem_43392e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43392e = call %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43392e)
  store %struct.Memory* %call_43392e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc4(%rbp)	 RIP: 433932	 Bytes: 6
  %loadMem_433932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433932 = call %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433932)
  store %struct.Memory* %call_433932, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43394d	 RIP: 433938	 Bytes: 5
  %loadMem_433938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433938 = call %struct.Memory* @routine_jmpq_.L_43394d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433938, i64 21, i64 5)
  store %struct.Memory* %call_433938, %struct.Memory** %MEMORY

  br label %block_.L_43394d

  ; Code: .L_43393d:	 RIP: 43393d	 Bytes: 0
block_.L_43393d:

  ; Code: movl $0xc521974f, %eax	 RIP: 43393d	 Bytes: 5
  %loadMem_43393d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43393d = call %struct.Memory* @routine_movl__0xc521974f___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43393d)
  store %struct.Memory* %call_43393d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc4(%rbp)	 RIP: 433942	 Bytes: 6
  %loadMem_433942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433942 = call %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433942)
  store %struct.Memory* %call_433942, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43394d	 RIP: 433948	 Bytes: 5
  %loadMem_433948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433948 = call %struct.Memory* @routine_jmpq_.L_43394d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433948, i64 5, i64 5)
  store %struct.Memory* %call_433948, %struct.Memory** %MEMORY

  br label %block_.L_43394d

  ; Code: .L_43394d:	 RIP: 43394d	 Bytes: 0
block_.L_43394d:

  ; Code: movl -0xc4(%rbp), %eax	 RIP: 43394d	 Bytes: 6
  %loadMem_43394d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43394d = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43394d)
  store %struct.Memory* %call_43394d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433953	 Bytes: 4
  %loadMem_433953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433953 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433953)
  store %struct.Memory* %call_433953, %struct.Memory** %MEMORY

  ; Code: movq 0x178(%rcx), %rcx	 RIP: 433957	 Bytes: 7
  %loadMem_433957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433957 = call %struct.Memory* @routine_movq_0x178__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433957)
  store %struct.Memory* %call_433957, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 43395e	 Bytes: 4
  %loadMem_43395e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43395e = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43395e)
  store %struct.Memory* %call_43395e, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 433962	 Bytes: 3
  %loadMem_433962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433962 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433962)
  store %struct.Memory* %call_433962, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 433965	 Bytes: 3
  %loadMem_433965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433965 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433965)
  store %struct.Memory* %call_433965, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 433968	 Bytes: 3
  %loadMem_433968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433968 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433968)
  store %struct.Memory* %call_433968, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 43396b	 Bytes: 3
  %loadMem_43396b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43396b = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43396b)
  store %struct.Memory* %call_43396b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43368e	 RIP: 43396e	 Bytes: 5
  %loadMem_43396e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43396e = call %struct.Memory* @routine_jmpq_.L_43368e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43396e, i64 -736, i64 5)
  store %struct.Memory* %call_43396e, %struct.Memory** %MEMORY

  br label %block_.L_43368e

  ; Code: .L_433973:	 RIP: 433973	 Bytes: 0
block_.L_433973:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 433973	 Bytes: 4
  %loadMem_433973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433973 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433973)
  store %struct.Memory* %call_433973, %struct.Memory** %MEMORY

  ; Code: movss 0xb0(%rax), %xmm0	 RIP: 433977	 Bytes: 8
  %loadMem_433977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433977 = call %struct.Memory* @routine_movss_0xb0__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433977)
  store %struct.Memory* %call_433977, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43397f	 Bytes: 4
  %loadMem_43397f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43397f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43397f)
  store %struct.Memory* %call_43397f, %struct.Memory** %MEMORY

  ; Code: movss 0x130(%rax), %xmm1	 RIP: 433983	 Bytes: 8
  %loadMem_433983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433983 = call %struct.Memory* @routine_movss_0x130__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433983)
  store %struct.Memory* %call_433983, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 43398b	 Bytes: 5
  %loadMem1_43398b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43398b = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43398b, i64 -48091, i64 5, i64 5)
  store %struct.Memory* %call1_43398b, %struct.Memory** %MEMORY

  %loadMem2_43398b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43398b = load i64, i64* %3
  %call2_43398b = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_43398b, %struct.Memory* %loadMem2_43398b)
  store %struct.Memory* %call2_43398b, %struct.Memory** %MEMORY

  ; Code: movss 0x20d90(%rip), %xmm1	 RIP: 433990	 Bytes: 8
  %loadMem_433990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433990 = call %struct.Memory* @routine_movss_0x20d90__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433990)
  store %struct.Memory* %call_433990, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433998	 Bytes: 4
  %loadMem_433998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433998 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433998)
  store %struct.Memory* %call_433998, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x154(%rcx)	 RIP: 43399c	 Bytes: 6
  %loadMem_43399c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43399c = call %struct.Memory* @routine_movl__eax__0x154__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43399c)
  store %struct.Memory* %call_43399c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4339a2	 Bytes: 4
  %loadMem_4339a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4339a2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4339a2)
  store %struct.Memory* %call_4339a2, %struct.Memory** %MEMORY

  ; Code: movss 0xac(%rcx), %xmm0	 RIP: 4339a6	 Bytes: 8
  %loadMem_4339a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4339a6 = call %struct.Memory* @routine_movss_0xac__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4339a6)
  store %struct.Memory* %call_4339a6, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 4339ae	 Bytes: 5
  %loadMem1_4339ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4339ae = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4339ae, i64 -48126, i64 5, i64 5)
  store %struct.Memory* %call1_4339ae, %struct.Memory** %MEMORY

  %loadMem2_4339ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4339ae = load i64, i64* %3
  %call2_4339ae = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_4339ae, %struct.Memory* %loadMem2_4339ae)
  store %struct.Memory* %call2_4339ae, %struct.Memory** %MEMORY

  ; Code: movss 0x20d6d(%rip), %xmm1	 RIP: 4339b3	 Bytes: 8
  %loadMem_4339b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4339b3 = call %struct.Memory* @routine_movss_0x20d6d__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4339b3)
  store %struct.Memory* %call_4339b3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4339bb	 Bytes: 4
  %loadMem_4339bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4339bb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4339bb)
  store %struct.Memory* %call_4339bb, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x150(%rcx)	 RIP: 4339bf	 Bytes: 6
  %loadMem_4339bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4339bf = call %struct.Memory* @routine_movl__eax__0x150__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4339bf)
  store %struct.Memory* %call_4339bf, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4339c5	 Bytes: 4
  %loadMem_4339c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4339c5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4339c5)
  store %struct.Memory* %call_4339c5, %struct.Memory** %MEMORY

  ; Code: movss 0xb8(%rcx), %xmm0	 RIP: 4339c9	 Bytes: 8
  %loadMem_4339c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4339c9 = call %struct.Memory* @routine_movss_0xb8__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4339c9)
  store %struct.Memory* %call_4339c9, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 4339d1	 Bytes: 5
  %loadMem1_4339d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4339d1 = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4339d1, i64 -48161, i64 5, i64 5)
  store %struct.Memory* %call1_4339d1, %struct.Memory** %MEMORY

  %loadMem2_4339d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4339d1 = load i64, i64* %3
  %call2_4339d1 = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_4339d1, %struct.Memory* %loadMem2_4339d1)
  store %struct.Memory* %call2_4339d1, %struct.Memory** %MEMORY

  ; Code: movss 0x20d4a(%rip), %xmm1	 RIP: 4339d6	 Bytes: 8
  %loadMem_4339d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4339d6 = call %struct.Memory* @routine_movss_0x20d4a__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4339d6)
  store %struct.Memory* %call_4339d6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4339de	 Bytes: 4
  %loadMem_4339de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4339de = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4339de)
  store %struct.Memory* %call_4339de, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x15c(%rcx)	 RIP: 4339e2	 Bytes: 6
  %loadMem_4339e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4339e2 = call %struct.Memory* @routine_movl__eax__0x15c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4339e2)
  store %struct.Memory* %call_4339e2, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4339e8	 Bytes: 4
  %loadMem_4339e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4339e8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4339e8)
  store %struct.Memory* %call_4339e8, %struct.Memory** %MEMORY

  ; Code: movss 0xb4(%rcx), %xmm0	 RIP: 4339ec	 Bytes: 8
  %loadMem_4339ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4339ec = call %struct.Memory* @routine_movss_0xb4__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4339ec)
  store %struct.Memory* %call_4339ec, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 4339f4	 Bytes: 5
  %loadMem1_4339f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4339f4 = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4339f4, i64 -48196, i64 5, i64 5)
  store %struct.Memory* %call1_4339f4, %struct.Memory** %MEMORY

  %loadMem2_4339f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4339f4 = load i64, i64* %3
  %call2_4339f4 = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_4339f4, %struct.Memory* %loadMem2_4339f4)
  store %struct.Memory* %call2_4339f4, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4339f9	 Bytes: 4
  %loadMem_4339f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4339f9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4339f9)
  store %struct.Memory* %call_4339f9, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x158(%rcx)	 RIP: 4339fd	 Bytes: 6
  %loadMem_4339fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4339fd = call %struct.Memory* @routine_movl__eax__0x158__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4339fd)
  store %struct.Memory* %call_4339fd, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433a03	 Bytes: 4
  %loadMem_433a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a03 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a03)
  store %struct.Memory* %call_433a03, %struct.Memory** %MEMORY

  ; Code: movss 0xc0(%rcx), %xmm0	 RIP: 433a07	 Bytes: 8
  %loadMem_433a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a07 = call %struct.Memory* @routine_movss_0xc0__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a07)
  store %struct.Memory* %call_433a07, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433a0f	 Bytes: 4
  %loadMem_433a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a0f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a0f)
  store %struct.Memory* %call_433a0f, %struct.Memory** %MEMORY

  ; Code: movss 0x130(%rcx), %xmm1	 RIP: 433a13	 Bytes: 8
  %loadMem_433a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a13 = call %struct.Memory* @routine_movss_0x130__rcx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a13)
  store %struct.Memory* %call_433a13, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 433a1b	 Bytes: 5
  %loadMem1_433a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433a1b = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433a1b, i64 -48235, i64 5, i64 5)
  store %struct.Memory* %call1_433a1b, %struct.Memory** %MEMORY

  %loadMem2_433a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433a1b = load i64, i64* %3
  %call2_433a1b = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_433a1b, %struct.Memory* %loadMem2_433a1b)
  store %struct.Memory* %call2_433a1b, %struct.Memory** %MEMORY

  ; Code: movsd 0x20db8(%rip), %xmm0	 RIP: 433a20	 Bytes: 8
  %loadMem_433a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a20 = call %struct.Memory* @routine_movsd_0x20db8__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a20)
  store %struct.Memory* %call_433a20, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433a28	 Bytes: 4
  %loadMem_433a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a28 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a28)
  store %struct.Memory* %call_433a28, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x164(%rcx)	 RIP: 433a2c	 Bytes: 6
  %loadMem_433a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a2c = call %struct.Memory* @routine_movl__eax__0x164__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a2c)
  store %struct.Memory* %call_433a2c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433a32	 Bytes: 4
  %loadMem_433a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a32 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a32)
  store %struct.Memory* %call_433a32, %struct.Memory** %MEMORY

  ; Code: movss 0xbc(%rcx), %xmm1	 RIP: 433a36	 Bytes: 8
  %loadMem_433a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a36 = call %struct.Memory* @routine_movss_0xbc__rcx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a36)
  store %struct.Memory* %call_433a36, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433a3e	 Bytes: 4
  %loadMem_433a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a3e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a3e)
  store %struct.Memory* %call_433a3e, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x130(%rcx), %xmm2	 RIP: 433a42	 Bytes: 8
  %loadMem_433a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a42 = call %struct.Memory* @routine_cvtss2sd_0x130__rcx____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a42)
  store %struct.Memory* %call_433a42, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm0	 RIP: 433a4a	 Bytes: 4
  %loadMem_433a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a4a = call %struct.Memory* @routine_subsd__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a4a)
  store %struct.Memory* %call_433a4a, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 433a4e	 Bytes: 4
  %loadMem_433a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a4e = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a4e)
  store %struct.Memory* %call_433a4e, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0xc8(%rbp)	 RIP: 433a52	 Bytes: 8
  %loadMem_433a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a52 = call %struct.Memory* @routine_movss__xmm0__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a52)
  store %struct.Memory* %call_433a52, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 433a5a	 Bytes: 3
  %loadMem_433a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a5a = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a5a)
  store %struct.Memory* %call_433a5a, %struct.Memory** %MEMORY

  ; Code: movss -0xc8(%rbp), %xmm1	 RIP: 433a5d	 Bytes: 8
  %loadMem_433a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a5d = call %struct.Memory* @routine_movss_MINUS0xc8__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a5d)
  store %struct.Memory* %call_433a5d, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 433a65	 Bytes: 5
  %loadMem1_433a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433a65 = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433a65, i64 -48309, i64 5, i64 5)
  store %struct.Memory* %call1_433a65, %struct.Memory** %MEMORY

  %loadMem2_433a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433a65 = load i64, i64* %3
  %call2_433a65 = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_433a65, %struct.Memory* %loadMem2_433a65)
  store %struct.Memory* %call2_433a65, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433a6a	 Bytes: 4
  %loadMem_433a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a6a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a6a)
  store %struct.Memory* %call_433a6a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x160(%rcx)	 RIP: 433a6e	 Bytes: 6
  %loadMem_433a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a6e = call %struct.Memory* @routine_movl__eax__0x160__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a6e)
  store %struct.Memory* %call_433a6e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433a74	 Bytes: 4
  %loadMem_433a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a74 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a74)
  store %struct.Memory* %call_433a74, %struct.Memory** %MEMORY

  ; Code: movss 0xc8(%rcx), %xmm0	 RIP: 433a78	 Bytes: 8
  %loadMem_433a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a78 = call %struct.Memory* @routine_movss_0xc8__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a78)
  store %struct.Memory* %call_433a78, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433a80	 Bytes: 4
  %loadMem_433a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a80 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a80)
  store %struct.Memory* %call_433a80, %struct.Memory** %MEMORY

  ; Code: movss 0x130(%rcx), %xmm1	 RIP: 433a84	 Bytes: 8
  %loadMem_433a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a84 = call %struct.Memory* @routine_movss_0x130__rcx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a84)
  store %struct.Memory* %call_433a84, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 433a8c	 Bytes: 5
  %loadMem1_433a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433a8c = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433a8c, i64 -48348, i64 5, i64 5)
  store %struct.Memory* %call1_433a8c, %struct.Memory** %MEMORY

  %loadMem2_433a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433a8c = load i64, i64* %3
  %call2_433a8c = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_433a8c, %struct.Memory* %loadMem2_433a8c)
  store %struct.Memory* %call2_433a8c, %struct.Memory** %MEMORY

  ; Code: movss 0x20c8f(%rip), %xmm1	 RIP: 433a91	 Bytes: 8
  %loadMem_433a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a91 = call %struct.Memory* @routine_movss_0x20c8f__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a91)
  store %struct.Memory* %call_433a91, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433a99	 Bytes: 4
  %loadMem_433a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a99 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a99)
  store %struct.Memory* %call_433a99, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x16c(%rcx)	 RIP: 433a9d	 Bytes: 6
  %loadMem_433a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433a9d = call %struct.Memory* @routine_movl__eax__0x16c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433a9d)
  store %struct.Memory* %call_433a9d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433aa3	 Bytes: 4
  %loadMem_433aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433aa3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433aa3)
  store %struct.Memory* %call_433aa3, %struct.Memory** %MEMORY

  ; Code: movss 0xc4(%rcx), %xmm0	 RIP: 433aa7	 Bytes: 8
  %loadMem_433aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433aa7 = call %struct.Memory* @routine_movss_0xc4__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433aa7)
  store %struct.Memory* %call_433aa7, %struct.Memory** %MEMORY

  ; Code: callq .Prob2Score	 RIP: 433aaf	 Bytes: 5
  %loadMem1_433aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433aaf = call %struct.Memory* @routine_callq_.Prob2Score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433aaf, i64 -48383, i64 5, i64 5)
  store %struct.Memory* %call1_433aaf, %struct.Memory** %MEMORY

  %loadMem2_433aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433aaf = load i64, i64* %3
  %call2_433aaf = call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* %0, i64  %loadPC_433aaf, %struct.Memory* %loadMem2_433aaf)
  store %struct.Memory* %call2_433aaf, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433ab4	 Bytes: 4
  %loadMem_433ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433ab4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433ab4)
  store %struct.Memory* %call_433ab4, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x168(%rcx)	 RIP: 433ab8	 Bytes: 6
  %loadMem_433ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433ab8 = call %struct.Memory* @routine_movl__eax__0x168__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433ab8)
  store %struct.Memory* %call_433ab8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 433abe	 Bytes: 4
  %loadMem_433abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433abe = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433abe)
  store %struct.Memory* %call_433abe, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rcx), %eax	 RIP: 433ac2	 Bytes: 6
  %loadMem_433ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433ac2 = call %struct.Memory* @routine_movl_0x1c8__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433ac2)
  store %struct.Memory* %call_433ac2, %struct.Memory** %MEMORY

  ; Code: orl $0x1, %eax	 RIP: 433ac8	 Bytes: 3
  %loadMem_433ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433ac8 = call %struct.Memory* @routine_orl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433ac8)
  store %struct.Memory* %call_433ac8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1c8(%rcx)	 RIP: 433acb	 Bytes: 6
  %loadMem_433acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433acb = call %struct.Memory* @routine_movl__eax__0x1c8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433acb)
  store %struct.Memory* %call_433acb, %struct.Memory** %MEMORY

  ; Code: .L_433ad1:	 RIP: 433ad1	 Bytes: 0
  br label %block_.L_433ad1
block_.L_433ad1:

  ; Code: addq $0xd0, %rsp	 RIP: 433ad1	 Bytes: 7
  %loadMem_433ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433ad1 = call %struct.Memory* @routine_addq__0xd0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433ad1)
  store %struct.Memory* %call_433ad1, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 433ad8	 Bytes: 1
  %loadMem_433ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433ad8 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433ad8)
  store %struct.Memory* %call_433ad8, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 433ad9	 Bytes: 1
  %loadMem_433ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433ad9 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433ad9)
  store %struct.Memory* %call_433ad9, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_433ad9
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

define %struct.Memory* @routine_subq__0xd0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 208)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x1c8__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_andl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
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

define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_je_.L_432f5d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_433ad1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jg_.L_433123(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jge_.L_43304c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_callq_.Prob2Score(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x140__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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








define %struct.Memory* @routine_jge_.L_433039(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movq_0x148__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_jmpq_.L_43303e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_432f7e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x677060___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x677060_type* @G_0x677060 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_cmpl_0x676ffc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x676ffc_type* @G_0x676ffc to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_433110(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0xe0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 224)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_callq_.DegenerateSymbolScore(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax____rcx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
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








define %struct.Memory* @routine_jge_.L_4330fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
































define %struct.Memory* @routine_jmpq_.L_433102(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_433056(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_433115(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_432f64(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jge_.L_4332fa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movss___rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movss_0x130__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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








define %struct.Memory* @routine_movq_0x90__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movss_0x4__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0x130__rcx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0x2157d__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x2157d__rip__type* @G_0x2157d__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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














define %struct.Memory* @routine_movss_0x8__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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














define %struct.Memory* @routine_movss_0xc__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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














define %struct.Memory* @routine_movss_0x10__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movq_0x20__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movss_0x14__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movss_0x21485__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x21485__rip__type* @G_0x21485__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movss_0x18__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_jmpq_.L_43312a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to i64*
  %7 = load i64, i64* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to i64*
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 8
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = xor i64 %12, %7
  %17 = xor i64 %15, %10
  %18 = trunc i64 %16 to i32
  %19 = lshr i64 %16, 32
  %20 = trunc i64 %19 to i32
  %21 = bitcast i8* %2 to i32*
  store i32 %18, i32* %21, align 1
  %22 = getelementptr inbounds i8, i8* %2, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %20, i32* %23, align 1
  %24 = trunc i64 %17 to i32
  %25 = getelementptr inbounds i8, i8* %2, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = lshr i64 %17, 32
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds i8, i8* %2, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = fpext float %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd_0xa8__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to double*
  %6 = load double, double* %5, align 1
  %7 = bitcast i8* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = fcmp uno double %6, %8
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %4
  %11 = fadd double %6, %8
  %12 = bitcast double %11 to i64
  %13 = and i64 %12, 9221120237041090560
  %14 = icmp eq i64 %13, 9218868437227405312
  %15 = and i64 %12, 2251799813685247
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %20, %struct.Memory* %0) #21
  br label %39

; <label>:22:                                     ; preds = %4
  %23 = fcmp ogt double %6, %8
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %6, %8
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %6, %8
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %10
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %10 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %10 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %10 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %39

; <label>:39:                                     ; preds = %35, %18
  %40 = phi %struct.Memory* [ %21, %18 ], [ %0, %35 ]
  ret %struct.Memory* %40
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_jbe_.L_43332e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cvtss2sd_0xa8__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.log_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 40
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_433340(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x215a2__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x215a2__rip__type* @G_0x215a2__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jg_.L_433659(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_jbe_.L_4333ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_4333be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x21524__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x21524__rip__type* @G_0x21524__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 28
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jle_.L_4335b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0x214fa__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x214fa__rip__type* @G_0x214fa__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jbe_.L_4335b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cvtss2sd_0x14__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jbe_.L_43352b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4334d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_cvtss2sd_0x14__rax____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 56
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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

define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movsd__xmm1__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fadd double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jbe_.L_433481(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_4334be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jmpq_.L_433526(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 84
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.LogSum(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_43352b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_cvtss2sd_0x18__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jbe_.L_433597(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm1__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 112
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_4335a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x21339__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x21339__rip__type* @G_0x21339__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 112
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movsd_0x21319__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x21319__rip__type* @G_0x21319__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jbe_.L_433630(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cvtss2sd_0x130__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 120
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movsd_0x211fc__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x211fc__rip__type* @G_0x211fc__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x21304__rip____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x21304__rip__type* @G_0x21304__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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

define %struct.Memory* @routine_subsd__xmm0___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_callq_.floor_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cvttsd2si__xmm0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i8* %11)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 368
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ECX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_433646(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 -987654321)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43364b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_433355(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movslq_0x88__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %2, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = select i1 %12, i64 %3, i64 %4
  store i64 %15, i64* %14, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jl_.L_433973(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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








define %struct.Memory* @routine_jbe_.L_4336dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 128
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_4336ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x211f4__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x211f4__rip__type* @G_0x211f4__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_0x211dd__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x211dd__rip__type* @G_0x211dd__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 32
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jbe_.L_4338f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jbe_.L_433864(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_433803(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 136
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm1__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jbe_.L_4337ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 152
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_4337ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 160
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm1__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 152
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jmpq_.L_43385f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movss_MINUS0x20__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movss__xmm0__MINUS0xa4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 164
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm1__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 176
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movss_MINUS0xa4__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jmpq_.L_433864(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_jbe_.L_4338cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movsd__xmm0__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 184
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm1__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 192
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_4338e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x21001__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x21001__rip__type* @G_0x21001__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 192
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movsd_0x20fdb__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x20fdb__rip__type* @G_0x20fdb__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jbe_.L_43393d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0x20edc__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x20edc__rip__type* @G_0x20edc__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x20fe4__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x20fe4__rip__type* @G_0x20fe4__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 196
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43394d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xc521974f___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 3307312975)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_0x178__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_jmpq_.L_43368e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movss_0xb0__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movss_0x20d90__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x20d90__rip__type* @G_0x20d90__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__eax__0x154__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 340
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movss_0xac__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0x20d6d__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x20d6d__rip__type* @G_0x20d6d__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__eax__0x150__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 336
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movss_0xb8__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0x20d4a__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x20d4a__rip__type* @G_0x20d4a__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__eax__0x15c__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 348
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movss_0xb4__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__0x158__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 344
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movss_0xc0__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd_0x20db8__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x20db8__rip__type* @G_0x20db8__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__eax__0x164__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 356
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movss_0xbc__rcx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtss2sd_0x130__rcx____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movss__xmm0__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 200
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_MINUS0xc8__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__0x160__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 352
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movss_0xc8__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movss_0x20c8f__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x20c8f__rip__type* @G_0x20c8f__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__eax__0x16c__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 364
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movss_0xc4__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__0x168__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 360
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x1c8__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = or i64 %4, %3
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

define %struct.Memory* @routine_orl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x1c8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 456
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_addq__0xd0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 208)
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

