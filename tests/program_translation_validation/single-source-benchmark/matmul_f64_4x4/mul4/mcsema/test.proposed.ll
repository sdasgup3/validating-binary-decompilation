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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

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

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

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


; Data Access Globals


define %struct.Memory* @mul4(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .mul4:	 RIP: 400580	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 400580	 Bytes: 1
  %loadMem_400580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400580 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400580)
  store %struct.Memory* %call_400580, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 400581	 Bytes: 3
  %loadMem_400581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400581 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400581)
  store %struct.Memory* %call_400581, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 400584	 Bytes: 4
  %loadMem_400584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400584 = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400584)
  store %struct.Memory* %call_400584, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 400588	 Bytes: 4
  %loadMem_400588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400588 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400588)
  store %struct.Memory* %call_400588, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 40058c	 Bytes: 4
  %loadMem_40058c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40058c = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40058c)
  store %struct.Memory* %call_40058c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 400590	 Bytes: 4
  %loadMem_400590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400590 = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400590)
  store %struct.Memory* %call_400590, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400594	 Bytes: 4
  %loadMem_400594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400594 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400594)
  store %struct.Memory* %call_400594, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx), %xmm0	 RIP: 400598	 Bytes: 4
  %loadMem_400598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400598 = call %struct.Memory* @routine_movsd___rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400598)
  store %struct.Memory* %call_400598, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40059c	 Bytes: 4
  %loadMem_40059c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40059c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40059c)
  store %struct.Memory* %call_40059c, %struct.Memory** %MEMORY

  ; Code: mulsd (%rdx), %xmm0	 RIP: 4005a0	 Bytes: 4
  %loadMem_4005a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005a0 = call %struct.Memory* @routine_mulsd___rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005a0)
  store %struct.Memory* %call_4005a0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4005a4	 Bytes: 4
  %loadMem_4005a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005a4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005a4)
  store %struct.Memory* %call_4005a4, %struct.Memory** %MEMORY

  ; Code: movsd 0x8(%rdx), %xmm1	 RIP: 4005a8	 Bytes: 5
  %loadMem_4005a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005a8 = call %struct.Memory* @routine_movsd_0x8__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005a8)
  store %struct.Memory* %call_4005a8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4005ad	 Bytes: 4
  %loadMem_4005ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005ad = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005ad)
  store %struct.Memory* %call_4005ad, %struct.Memory** %MEMORY

  ; Code: mulsd 0x20(%rdx), %xmm1	 RIP: 4005b1	 Bytes: 5
  %loadMem_4005b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005b1 = call %struct.Memory* @routine_mulsd_0x20__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005b1)
  store %struct.Memory* %call_4005b1, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4005b6	 Bytes: 4
  %loadMem_4005b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005b6 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005b6)
  store %struct.Memory* %call_4005b6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4005ba	 Bytes: 4
  %loadMem_4005ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005ba = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005ba)
  store %struct.Memory* %call_4005ba, %struct.Memory** %MEMORY

  ; Code: movsd 0x10(%rdx), %xmm1	 RIP: 4005be	 Bytes: 5
  %loadMem_4005be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005be = call %struct.Memory* @routine_movsd_0x10__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005be)
  store %struct.Memory* %call_4005be, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4005c3	 Bytes: 4
  %loadMem_4005c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005c3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005c3)
  store %struct.Memory* %call_4005c3, %struct.Memory** %MEMORY

  ; Code: mulsd 0x40(%rdx), %xmm1	 RIP: 4005c7	 Bytes: 5
  %loadMem_4005c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005c7 = call %struct.Memory* @routine_mulsd_0x40__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005c7)
  store %struct.Memory* %call_4005c7, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4005cc	 Bytes: 4
  %loadMem_4005cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005cc = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005cc)
  store %struct.Memory* %call_4005cc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4005d0	 Bytes: 4
  %loadMem_4005d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005d0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005d0)
  store %struct.Memory* %call_4005d0, %struct.Memory** %MEMORY

  ; Code: movsd 0x18(%rdx), %xmm1	 RIP: 4005d4	 Bytes: 5
  %loadMem_4005d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005d4 = call %struct.Memory* @routine_movsd_0x18__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005d4)
  store %struct.Memory* %call_4005d4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4005d9	 Bytes: 4
  %loadMem_4005d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005d9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005d9)
  store %struct.Memory* %call_4005d9, %struct.Memory** %MEMORY

  ; Code: mulsd 0x60(%rdx), %xmm1	 RIP: 4005dd	 Bytes: 5
  %loadMem_4005dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005dd = call %struct.Memory* @routine_mulsd_0x60__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005dd)
  store %struct.Memory* %call_4005dd, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4005e2	 Bytes: 4
  %loadMem_4005e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005e2 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005e2)
  store %struct.Memory* %call_4005e2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 4005e6	 Bytes: 8
  %loadMem_4005e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005e6 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005e6)
  store %struct.Memory* %call_4005e6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4005ee	 Bytes: 4
  %loadMem_4005ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005ee = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005ee)
  store %struct.Memory* %call_4005ee, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx), %xmm0	 RIP: 4005f2	 Bytes: 4
  %loadMem_4005f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005f2 = call %struct.Memory* @routine_movsd___rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005f2)
  store %struct.Memory* %call_4005f2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4005f6	 Bytes: 4
  %loadMem_4005f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005f6 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005f6)
  store %struct.Memory* %call_4005f6, %struct.Memory** %MEMORY

  ; Code: mulsd 0x8(%rdx), %xmm0	 RIP: 4005fa	 Bytes: 5
  %loadMem_4005fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005fa = call %struct.Memory* @routine_mulsd_0x8__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005fa)
  store %struct.Memory* %call_4005fa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4005ff	 Bytes: 4
  %loadMem_4005ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005ff = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005ff)
  store %struct.Memory* %call_4005ff, %struct.Memory** %MEMORY

  ; Code: movsd 0x8(%rdx), %xmm1	 RIP: 400603	 Bytes: 5
  %loadMem_400603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400603 = call %struct.Memory* @routine_movsd_0x8__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400603)
  store %struct.Memory* %call_400603, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400608	 Bytes: 4
  %loadMem_400608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400608 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400608)
  store %struct.Memory* %call_400608, %struct.Memory** %MEMORY

  ; Code: mulsd 0x28(%rdx), %xmm1	 RIP: 40060c	 Bytes: 5
  %loadMem_40060c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40060c = call %struct.Memory* @routine_mulsd_0x28__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40060c)
  store %struct.Memory* %call_40060c, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400611	 Bytes: 4
  %loadMem_400611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400611 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400611)
  store %struct.Memory* %call_400611, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400615	 Bytes: 4
  %loadMem_400615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400615 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400615)
  store %struct.Memory* %call_400615, %struct.Memory** %MEMORY

  ; Code: movsd 0x10(%rdx), %xmm1	 RIP: 400619	 Bytes: 5
  %loadMem_400619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400619 = call %struct.Memory* @routine_movsd_0x10__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400619)
  store %struct.Memory* %call_400619, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40061e	 Bytes: 4
  %loadMem_40061e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40061e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40061e)
  store %struct.Memory* %call_40061e, %struct.Memory** %MEMORY

  ; Code: mulsd 0x48(%rdx), %xmm1	 RIP: 400622	 Bytes: 5
  %loadMem_400622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400622 = call %struct.Memory* @routine_mulsd_0x48__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400622)
  store %struct.Memory* %call_400622, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400627	 Bytes: 4
  %loadMem_400627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400627 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400627)
  store %struct.Memory* %call_400627, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40062b	 Bytes: 4
  %loadMem_40062b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40062b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40062b)
  store %struct.Memory* %call_40062b, %struct.Memory** %MEMORY

  ; Code: movsd 0x18(%rdx), %xmm1	 RIP: 40062f	 Bytes: 5
  %loadMem_40062f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40062f = call %struct.Memory* @routine_movsd_0x18__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40062f)
  store %struct.Memory* %call_40062f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400634	 Bytes: 4
  %loadMem_400634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400634 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400634)
  store %struct.Memory* %call_400634, %struct.Memory** %MEMORY

  ; Code: mulsd 0x68(%rdx), %xmm1	 RIP: 400638	 Bytes: 5
  %loadMem_400638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400638 = call %struct.Memory* @routine_mulsd_0x68__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400638)
  store %struct.Memory* %call_400638, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 40063d	 Bytes: 4
  %loadMem_40063d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40063d = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40063d)
  store %struct.Memory* %call_40063d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 400641	 Bytes: 8
  %loadMem_400641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400641 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400641)
  store %struct.Memory* %call_400641, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400649	 Bytes: 4
  %loadMem_400649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400649 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400649)
  store %struct.Memory* %call_400649, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx), %xmm0	 RIP: 40064d	 Bytes: 4
  %loadMem_40064d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40064d = call %struct.Memory* @routine_movsd___rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40064d)
  store %struct.Memory* %call_40064d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400651	 Bytes: 4
  %loadMem_400651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400651 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400651)
  store %struct.Memory* %call_400651, %struct.Memory** %MEMORY

  ; Code: mulsd 0x10(%rdx), %xmm0	 RIP: 400655	 Bytes: 5
  %loadMem_400655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400655 = call %struct.Memory* @routine_mulsd_0x10__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400655)
  store %struct.Memory* %call_400655, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40065a	 Bytes: 4
  %loadMem_40065a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40065a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40065a)
  store %struct.Memory* %call_40065a, %struct.Memory** %MEMORY

  ; Code: movsd 0x8(%rdx), %xmm1	 RIP: 40065e	 Bytes: 5
  %loadMem_40065e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40065e = call %struct.Memory* @routine_movsd_0x8__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40065e)
  store %struct.Memory* %call_40065e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400663	 Bytes: 4
  %loadMem_400663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400663 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400663)
  store %struct.Memory* %call_400663, %struct.Memory** %MEMORY

  ; Code: mulsd 0x30(%rdx), %xmm1	 RIP: 400667	 Bytes: 5
  %loadMem_400667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400667 = call %struct.Memory* @routine_mulsd_0x30__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400667)
  store %struct.Memory* %call_400667, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 40066c	 Bytes: 4
  %loadMem_40066c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40066c = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40066c)
  store %struct.Memory* %call_40066c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400670	 Bytes: 4
  %loadMem_400670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400670 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400670)
  store %struct.Memory* %call_400670, %struct.Memory** %MEMORY

  ; Code: movsd 0x10(%rdx), %xmm1	 RIP: 400674	 Bytes: 5
  %loadMem_400674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400674 = call %struct.Memory* @routine_movsd_0x10__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400674)
  store %struct.Memory* %call_400674, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400679	 Bytes: 4
  %loadMem_400679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400679 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400679)
  store %struct.Memory* %call_400679, %struct.Memory** %MEMORY

  ; Code: mulsd 0x50(%rdx), %xmm1	 RIP: 40067d	 Bytes: 5
  %loadMem_40067d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40067d = call %struct.Memory* @routine_mulsd_0x50__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40067d)
  store %struct.Memory* %call_40067d, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400682	 Bytes: 4
  %loadMem_400682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400682 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400682)
  store %struct.Memory* %call_400682, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400686	 Bytes: 4
  %loadMem_400686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400686 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400686)
  store %struct.Memory* %call_400686, %struct.Memory** %MEMORY

  ; Code: movsd 0x18(%rdx), %xmm1	 RIP: 40068a	 Bytes: 5
  %loadMem_40068a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40068a = call %struct.Memory* @routine_movsd_0x18__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40068a)
  store %struct.Memory* %call_40068a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40068f	 Bytes: 4
  %loadMem_40068f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40068f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40068f)
  store %struct.Memory* %call_40068f, %struct.Memory** %MEMORY

  ; Code: mulsd 0x70(%rdx), %xmm1	 RIP: 400693	 Bytes: 5
  %loadMem_400693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400693 = call %struct.Memory* @routine_mulsd_0x70__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400693)
  store %struct.Memory* %call_400693, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400698	 Bytes: 4
  %loadMem_400698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400698 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400698)
  store %struct.Memory* %call_400698, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 40069c	 Bytes: 8
  %loadMem_40069c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40069c = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40069c)
  store %struct.Memory* %call_40069c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4006a4	 Bytes: 4
  %loadMem_4006a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006a4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006a4)
  store %struct.Memory* %call_4006a4, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx), %xmm0	 RIP: 4006a8	 Bytes: 4
  %loadMem_4006a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006a8 = call %struct.Memory* @routine_movsd___rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006a8)
  store %struct.Memory* %call_4006a8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4006ac	 Bytes: 4
  %loadMem_4006ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006ac = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006ac)
  store %struct.Memory* %call_4006ac, %struct.Memory** %MEMORY

  ; Code: mulsd 0x18(%rdx), %xmm0	 RIP: 4006b0	 Bytes: 5
  %loadMem_4006b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006b0 = call %struct.Memory* @routine_mulsd_0x18__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006b0)
  store %struct.Memory* %call_4006b0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4006b5	 Bytes: 4
  %loadMem_4006b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006b5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006b5)
  store %struct.Memory* %call_4006b5, %struct.Memory** %MEMORY

  ; Code: movsd 0x8(%rdx), %xmm1	 RIP: 4006b9	 Bytes: 5
  %loadMem_4006b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006b9 = call %struct.Memory* @routine_movsd_0x8__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006b9)
  store %struct.Memory* %call_4006b9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4006be	 Bytes: 4
  %loadMem_4006be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006be = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006be)
  store %struct.Memory* %call_4006be, %struct.Memory** %MEMORY

  ; Code: mulsd 0x38(%rdx), %xmm1	 RIP: 4006c2	 Bytes: 5
  %loadMem_4006c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006c2 = call %struct.Memory* @routine_mulsd_0x38__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006c2)
  store %struct.Memory* %call_4006c2, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4006c7	 Bytes: 4
  %loadMem_4006c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006c7 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006c7)
  store %struct.Memory* %call_4006c7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4006cb	 Bytes: 4
  %loadMem_4006cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006cb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006cb)
  store %struct.Memory* %call_4006cb, %struct.Memory** %MEMORY

  ; Code: movsd 0x10(%rdx), %xmm1	 RIP: 4006cf	 Bytes: 5
  %loadMem_4006cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006cf = call %struct.Memory* @routine_movsd_0x10__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006cf)
  store %struct.Memory* %call_4006cf, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4006d4	 Bytes: 4
  %loadMem_4006d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006d4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006d4)
  store %struct.Memory* %call_4006d4, %struct.Memory** %MEMORY

  ; Code: mulsd 0x58(%rdx), %xmm1	 RIP: 4006d8	 Bytes: 5
  %loadMem_4006d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006d8 = call %struct.Memory* @routine_mulsd_0x58__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006d8)
  store %struct.Memory* %call_4006d8, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4006dd	 Bytes: 4
  %loadMem_4006dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006dd = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006dd)
  store %struct.Memory* %call_4006dd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4006e1	 Bytes: 4
  %loadMem_4006e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006e1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006e1)
  store %struct.Memory* %call_4006e1, %struct.Memory** %MEMORY

  ; Code: movsd 0x18(%rdx), %xmm1	 RIP: 4006e5	 Bytes: 5
  %loadMem_4006e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006e5 = call %struct.Memory* @routine_movsd_0x18__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006e5)
  store %struct.Memory* %call_4006e5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4006ea	 Bytes: 4
  %loadMem_4006ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006ea = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006ea)
  store %struct.Memory* %call_4006ea, %struct.Memory** %MEMORY

  ; Code: mulsd 0x78(%rdx), %xmm1	 RIP: 4006ee	 Bytes: 5
  %loadMem_4006ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006ee = call %struct.Memory* @routine_mulsd_0x78__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006ee)
  store %struct.Memory* %call_4006ee, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4006f3	 Bytes: 4
  %loadMem_4006f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006f3 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006f3)
  store %struct.Memory* %call_4006f3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 4006f7	 Bytes: 8
  %loadMem_4006f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006f7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006f7)
  store %struct.Memory* %call_4006f7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4006ff	 Bytes: 4
  %loadMem_4006ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006ff = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006ff)
  store %struct.Memory* %call_4006ff, %struct.Memory** %MEMORY

  ; Code: movsd 0x20(%rdx), %xmm0	 RIP: 400703	 Bytes: 5
  %loadMem_400703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400703 = call %struct.Memory* @routine_movsd_0x20__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400703)
  store %struct.Memory* %call_400703, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400708	 Bytes: 4
  %loadMem_400708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400708 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400708)
  store %struct.Memory* %call_400708, %struct.Memory** %MEMORY

  ; Code: mulsd (%rdx), %xmm0	 RIP: 40070c	 Bytes: 4
  %loadMem_40070c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40070c = call %struct.Memory* @routine_mulsd___rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40070c)
  store %struct.Memory* %call_40070c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400710	 Bytes: 4
  %loadMem_400710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400710 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400710)
  store %struct.Memory* %call_400710, %struct.Memory** %MEMORY

  ; Code: movsd 0x28(%rdx), %xmm1	 RIP: 400714	 Bytes: 5
  %loadMem_400714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400714 = call %struct.Memory* @routine_movsd_0x28__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400714)
  store %struct.Memory* %call_400714, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400719	 Bytes: 4
  %loadMem_400719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400719 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400719)
  store %struct.Memory* %call_400719, %struct.Memory** %MEMORY

  ; Code: mulsd 0x20(%rdx), %xmm1	 RIP: 40071d	 Bytes: 5
  %loadMem_40071d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40071d = call %struct.Memory* @routine_mulsd_0x20__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40071d)
  store %struct.Memory* %call_40071d, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400722	 Bytes: 4
  %loadMem_400722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400722 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400722)
  store %struct.Memory* %call_400722, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400726	 Bytes: 4
  %loadMem_400726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400726 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400726)
  store %struct.Memory* %call_400726, %struct.Memory** %MEMORY

  ; Code: movsd 0x30(%rdx), %xmm1	 RIP: 40072a	 Bytes: 5
  %loadMem_40072a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40072a = call %struct.Memory* @routine_movsd_0x30__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40072a)
  store %struct.Memory* %call_40072a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40072f	 Bytes: 4
  %loadMem_40072f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40072f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40072f)
  store %struct.Memory* %call_40072f, %struct.Memory** %MEMORY

  ; Code: mulsd 0x40(%rdx), %xmm1	 RIP: 400733	 Bytes: 5
  %loadMem_400733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400733 = call %struct.Memory* @routine_mulsd_0x40__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400733)
  store %struct.Memory* %call_400733, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400738	 Bytes: 4
  %loadMem_400738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400738 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400738)
  store %struct.Memory* %call_400738, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40073c	 Bytes: 4
  %loadMem_40073c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40073c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40073c)
  store %struct.Memory* %call_40073c, %struct.Memory** %MEMORY

  ; Code: movsd 0x38(%rdx), %xmm1	 RIP: 400740	 Bytes: 5
  %loadMem_400740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400740 = call %struct.Memory* @routine_movsd_0x38__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400740)
  store %struct.Memory* %call_400740, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400745	 Bytes: 4
  %loadMem_400745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400745 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400745)
  store %struct.Memory* %call_400745, %struct.Memory** %MEMORY

  ; Code: mulsd 0x60(%rdx), %xmm1	 RIP: 400749	 Bytes: 5
  %loadMem_400749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400749 = call %struct.Memory* @routine_mulsd_0x60__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400749)
  store %struct.Memory* %call_400749, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 40074e	 Bytes: 4
  %loadMem_40074e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40074e = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40074e)
  store %struct.Memory* %call_40074e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 400752	 Bytes: 5
  %loadMem_400752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400752 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400752)
  store %struct.Memory* %call_400752, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400757	 Bytes: 4
  %loadMem_400757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400757 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400757)
  store %struct.Memory* %call_400757, %struct.Memory** %MEMORY

  ; Code: movsd 0x20(%rdx), %xmm0	 RIP: 40075b	 Bytes: 5
  %loadMem_40075b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40075b = call %struct.Memory* @routine_movsd_0x20__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40075b)
  store %struct.Memory* %call_40075b, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400760	 Bytes: 4
  %loadMem_400760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400760 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400760)
  store %struct.Memory* %call_400760, %struct.Memory** %MEMORY

  ; Code: mulsd 0x8(%rdx), %xmm0	 RIP: 400764	 Bytes: 5
  %loadMem_400764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400764 = call %struct.Memory* @routine_mulsd_0x8__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400764)
  store %struct.Memory* %call_400764, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400769	 Bytes: 4
  %loadMem_400769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400769 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400769)
  store %struct.Memory* %call_400769, %struct.Memory** %MEMORY

  ; Code: movsd 0x28(%rdx), %xmm1	 RIP: 40076d	 Bytes: 5
  %loadMem_40076d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40076d = call %struct.Memory* @routine_movsd_0x28__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40076d)
  store %struct.Memory* %call_40076d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400772	 Bytes: 4
  %loadMem_400772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400772 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400772)
  store %struct.Memory* %call_400772, %struct.Memory** %MEMORY

  ; Code: mulsd 0x28(%rdx), %xmm1	 RIP: 400776	 Bytes: 5
  %loadMem_400776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400776 = call %struct.Memory* @routine_mulsd_0x28__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400776)
  store %struct.Memory* %call_400776, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 40077b	 Bytes: 4
  %loadMem_40077b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40077b = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40077b)
  store %struct.Memory* %call_40077b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40077f	 Bytes: 4
  %loadMem_40077f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40077f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40077f)
  store %struct.Memory* %call_40077f, %struct.Memory** %MEMORY

  ; Code: movsd 0x30(%rdx), %xmm1	 RIP: 400783	 Bytes: 5
  %loadMem_400783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400783 = call %struct.Memory* @routine_movsd_0x30__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400783)
  store %struct.Memory* %call_400783, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400788	 Bytes: 4
  %loadMem_400788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400788 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400788)
  store %struct.Memory* %call_400788, %struct.Memory** %MEMORY

  ; Code: mulsd 0x48(%rdx), %xmm1	 RIP: 40078c	 Bytes: 5
  %loadMem_40078c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40078c = call %struct.Memory* @routine_mulsd_0x48__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40078c)
  store %struct.Memory* %call_40078c, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400791	 Bytes: 4
  %loadMem_400791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400791 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400791)
  store %struct.Memory* %call_400791, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400795	 Bytes: 4
  %loadMem_400795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400795 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400795)
  store %struct.Memory* %call_400795, %struct.Memory** %MEMORY

  ; Code: movsd 0x38(%rdx), %xmm1	 RIP: 400799	 Bytes: 5
  %loadMem_400799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400799 = call %struct.Memory* @routine_movsd_0x38__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400799)
  store %struct.Memory* %call_400799, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40079e	 Bytes: 4
  %loadMem_40079e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40079e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40079e)
  store %struct.Memory* %call_40079e, %struct.Memory** %MEMORY

  ; Code: mulsd 0x68(%rdx), %xmm1	 RIP: 4007a2	 Bytes: 5
  %loadMem_4007a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007a2 = call %struct.Memory* @routine_mulsd_0x68__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007a2)
  store %struct.Memory* %call_4007a2, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4007a7	 Bytes: 4
  %loadMem_4007a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007a7 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007a7)
  store %struct.Memory* %call_4007a7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 4007ab	 Bytes: 5
  %loadMem_4007ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007ab = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007ab)
  store %struct.Memory* %call_4007ab, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4007b0	 Bytes: 4
  %loadMem_4007b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007b0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007b0)
  store %struct.Memory* %call_4007b0, %struct.Memory** %MEMORY

  ; Code: movsd 0x20(%rdx), %xmm0	 RIP: 4007b4	 Bytes: 5
  %loadMem_4007b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007b4 = call %struct.Memory* @routine_movsd_0x20__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007b4)
  store %struct.Memory* %call_4007b4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4007b9	 Bytes: 4
  %loadMem_4007b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007b9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007b9)
  store %struct.Memory* %call_4007b9, %struct.Memory** %MEMORY

  ; Code: mulsd 0x10(%rdx), %xmm0	 RIP: 4007bd	 Bytes: 5
  %loadMem_4007bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007bd = call %struct.Memory* @routine_mulsd_0x10__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007bd)
  store %struct.Memory* %call_4007bd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4007c2	 Bytes: 4
  %loadMem_4007c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007c2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007c2)
  store %struct.Memory* %call_4007c2, %struct.Memory** %MEMORY

  ; Code: movsd 0x28(%rdx), %xmm1	 RIP: 4007c6	 Bytes: 5
  %loadMem_4007c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007c6 = call %struct.Memory* @routine_movsd_0x28__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007c6)
  store %struct.Memory* %call_4007c6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4007cb	 Bytes: 4
  %loadMem_4007cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007cb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007cb)
  store %struct.Memory* %call_4007cb, %struct.Memory** %MEMORY

  ; Code: mulsd 0x30(%rdx), %xmm1	 RIP: 4007cf	 Bytes: 5
  %loadMem_4007cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007cf = call %struct.Memory* @routine_mulsd_0x30__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007cf)
  store %struct.Memory* %call_4007cf, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4007d4	 Bytes: 4
  %loadMem_4007d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007d4 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007d4)
  store %struct.Memory* %call_4007d4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4007d8	 Bytes: 4
  %loadMem_4007d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007d8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007d8)
  store %struct.Memory* %call_4007d8, %struct.Memory** %MEMORY

  ; Code: movsd 0x30(%rdx), %xmm1	 RIP: 4007dc	 Bytes: 5
  %loadMem_4007dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007dc = call %struct.Memory* @routine_movsd_0x30__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007dc)
  store %struct.Memory* %call_4007dc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4007e1	 Bytes: 4
  %loadMem_4007e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007e1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007e1)
  store %struct.Memory* %call_4007e1, %struct.Memory** %MEMORY

  ; Code: mulsd 0x50(%rdx), %xmm1	 RIP: 4007e5	 Bytes: 5
  %loadMem_4007e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007e5 = call %struct.Memory* @routine_mulsd_0x50__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007e5)
  store %struct.Memory* %call_4007e5, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4007ea	 Bytes: 4
  %loadMem_4007ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007ea = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007ea)
  store %struct.Memory* %call_4007ea, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4007ee	 Bytes: 4
  %loadMem_4007ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007ee = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007ee)
  store %struct.Memory* %call_4007ee, %struct.Memory** %MEMORY

  ; Code: movsd 0x38(%rdx), %xmm1	 RIP: 4007f2	 Bytes: 5
  %loadMem_4007f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007f2 = call %struct.Memory* @routine_movsd_0x38__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007f2)
  store %struct.Memory* %call_4007f2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4007f7	 Bytes: 4
  %loadMem_4007f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007f7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007f7)
  store %struct.Memory* %call_4007f7, %struct.Memory** %MEMORY

  ; Code: mulsd 0x70(%rdx), %xmm1	 RIP: 4007fb	 Bytes: 5
  %loadMem_4007fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007fb = call %struct.Memory* @routine_mulsd_0x70__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007fb)
  store %struct.Memory* %call_4007fb, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400800	 Bytes: 4
  %loadMem_400800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400800 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400800)
  store %struct.Memory* %call_400800, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x70(%rbp)	 RIP: 400804	 Bytes: 5
  %loadMem_400804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400804 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400804)
  store %struct.Memory* %call_400804, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400809	 Bytes: 4
  %loadMem_400809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400809 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400809)
  store %struct.Memory* %call_400809, %struct.Memory** %MEMORY

  ; Code: movsd 0x20(%rdx), %xmm0	 RIP: 40080d	 Bytes: 5
  %loadMem_40080d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40080d = call %struct.Memory* @routine_movsd_0x20__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40080d)
  store %struct.Memory* %call_40080d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400812	 Bytes: 4
  %loadMem_400812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400812 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400812)
  store %struct.Memory* %call_400812, %struct.Memory** %MEMORY

  ; Code: mulsd 0x18(%rdx), %xmm0	 RIP: 400816	 Bytes: 5
  %loadMem_400816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400816 = call %struct.Memory* @routine_mulsd_0x18__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400816)
  store %struct.Memory* %call_400816, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40081b	 Bytes: 4
  %loadMem_40081b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40081b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40081b)
  store %struct.Memory* %call_40081b, %struct.Memory** %MEMORY

  ; Code: movsd 0x28(%rdx), %xmm1	 RIP: 40081f	 Bytes: 5
  %loadMem_40081f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40081f = call %struct.Memory* @routine_movsd_0x28__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40081f)
  store %struct.Memory* %call_40081f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400824	 Bytes: 4
  %loadMem_400824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400824 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400824)
  store %struct.Memory* %call_400824, %struct.Memory** %MEMORY

  ; Code: mulsd 0x38(%rdx), %xmm1	 RIP: 400828	 Bytes: 5
  %loadMem_400828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400828 = call %struct.Memory* @routine_mulsd_0x38__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400828)
  store %struct.Memory* %call_400828, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 40082d	 Bytes: 4
  %loadMem_40082d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40082d = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40082d)
  store %struct.Memory* %call_40082d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400831	 Bytes: 4
  %loadMem_400831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400831 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400831)
  store %struct.Memory* %call_400831, %struct.Memory** %MEMORY

  ; Code: movsd 0x30(%rdx), %xmm1	 RIP: 400835	 Bytes: 5
  %loadMem_400835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400835 = call %struct.Memory* @routine_movsd_0x30__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400835)
  store %struct.Memory* %call_400835, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40083a	 Bytes: 4
  %loadMem_40083a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40083a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40083a)
  store %struct.Memory* %call_40083a, %struct.Memory** %MEMORY

  ; Code: mulsd 0x58(%rdx), %xmm1	 RIP: 40083e	 Bytes: 5
  %loadMem_40083e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40083e = call %struct.Memory* @routine_mulsd_0x58__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40083e)
  store %struct.Memory* %call_40083e, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400843	 Bytes: 4
  %loadMem_400843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400843 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400843)
  store %struct.Memory* %call_400843, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400847	 Bytes: 4
  %loadMem_400847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400847 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400847)
  store %struct.Memory* %call_400847, %struct.Memory** %MEMORY

  ; Code: movsd 0x38(%rdx), %xmm1	 RIP: 40084b	 Bytes: 5
  %loadMem_40084b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40084b = call %struct.Memory* @routine_movsd_0x38__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40084b)
  store %struct.Memory* %call_40084b, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400850	 Bytes: 4
  %loadMem_400850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400850 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400850)
  store %struct.Memory* %call_400850, %struct.Memory** %MEMORY

  ; Code: mulsd 0x78(%rdx), %xmm1	 RIP: 400854	 Bytes: 5
  %loadMem_400854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400854 = call %struct.Memory* @routine_mulsd_0x78__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400854)
  store %struct.Memory* %call_400854, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400859	 Bytes: 4
  %loadMem_400859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400859 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400859)
  store %struct.Memory* %call_400859, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x68(%rbp)	 RIP: 40085d	 Bytes: 5
  %loadMem_40085d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40085d = call %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40085d)
  store %struct.Memory* %call_40085d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400862	 Bytes: 4
  %loadMem_400862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400862 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400862)
  store %struct.Memory* %call_400862, %struct.Memory** %MEMORY

  ; Code: movsd 0x40(%rdx), %xmm0	 RIP: 400866	 Bytes: 5
  %loadMem_400866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400866 = call %struct.Memory* @routine_movsd_0x40__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400866)
  store %struct.Memory* %call_400866, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40086b	 Bytes: 4
  %loadMem_40086b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40086b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40086b)
  store %struct.Memory* %call_40086b, %struct.Memory** %MEMORY

  ; Code: mulsd (%rdx), %xmm0	 RIP: 40086f	 Bytes: 4
  %loadMem_40086f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40086f = call %struct.Memory* @routine_mulsd___rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40086f)
  store %struct.Memory* %call_40086f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400873	 Bytes: 4
  %loadMem_400873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400873 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400873)
  store %struct.Memory* %call_400873, %struct.Memory** %MEMORY

  ; Code: movsd 0x48(%rdx), %xmm1	 RIP: 400877	 Bytes: 5
  %loadMem_400877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400877 = call %struct.Memory* @routine_movsd_0x48__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400877)
  store %struct.Memory* %call_400877, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40087c	 Bytes: 4
  %loadMem_40087c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40087c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40087c)
  store %struct.Memory* %call_40087c, %struct.Memory** %MEMORY

  ; Code: mulsd 0x20(%rdx), %xmm1	 RIP: 400880	 Bytes: 5
  %loadMem_400880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400880 = call %struct.Memory* @routine_mulsd_0x20__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400880)
  store %struct.Memory* %call_400880, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400885	 Bytes: 4
  %loadMem_400885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400885 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400885)
  store %struct.Memory* %call_400885, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400889	 Bytes: 4
  %loadMem_400889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400889 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400889)
  store %struct.Memory* %call_400889, %struct.Memory** %MEMORY

  ; Code: movsd 0x50(%rdx), %xmm1	 RIP: 40088d	 Bytes: 5
  %loadMem_40088d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40088d = call %struct.Memory* @routine_movsd_0x50__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40088d)
  store %struct.Memory* %call_40088d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400892	 Bytes: 4
  %loadMem_400892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400892 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400892)
  store %struct.Memory* %call_400892, %struct.Memory** %MEMORY

  ; Code: mulsd 0x40(%rdx), %xmm1	 RIP: 400896	 Bytes: 5
  %loadMem_400896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400896 = call %struct.Memory* @routine_mulsd_0x40__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400896)
  store %struct.Memory* %call_400896, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 40089b	 Bytes: 4
  %loadMem_40089b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40089b = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40089b)
  store %struct.Memory* %call_40089b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40089f	 Bytes: 4
  %loadMem_40089f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40089f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40089f)
  store %struct.Memory* %call_40089f, %struct.Memory** %MEMORY

  ; Code: movsd 0x58(%rdx), %xmm1	 RIP: 4008a3	 Bytes: 5
  %loadMem_4008a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008a3 = call %struct.Memory* @routine_movsd_0x58__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008a3)
  store %struct.Memory* %call_4008a3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4008a8	 Bytes: 4
  %loadMem_4008a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008a8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008a8)
  store %struct.Memory* %call_4008a8, %struct.Memory** %MEMORY

  ; Code: mulsd 0x60(%rdx), %xmm1	 RIP: 4008ac	 Bytes: 5
  %loadMem_4008ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008ac = call %struct.Memory* @routine_mulsd_0x60__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008ac)
  store %struct.Memory* %call_4008ac, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4008b1	 Bytes: 4
  %loadMem_4008b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008b1 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008b1)
  store %struct.Memory* %call_4008b1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x60(%rbp)	 RIP: 4008b5	 Bytes: 5
  %loadMem_4008b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008b5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008b5)
  store %struct.Memory* %call_4008b5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4008ba	 Bytes: 4
  %loadMem_4008ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008ba = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008ba)
  store %struct.Memory* %call_4008ba, %struct.Memory** %MEMORY

  ; Code: movsd 0x40(%rdx), %xmm0	 RIP: 4008be	 Bytes: 5
  %loadMem_4008be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008be = call %struct.Memory* @routine_movsd_0x40__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008be)
  store %struct.Memory* %call_4008be, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4008c3	 Bytes: 4
  %loadMem_4008c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008c3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008c3)
  store %struct.Memory* %call_4008c3, %struct.Memory** %MEMORY

  ; Code: mulsd 0x8(%rdx), %xmm0	 RIP: 4008c7	 Bytes: 5
  %loadMem_4008c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008c7 = call %struct.Memory* @routine_mulsd_0x8__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008c7)
  store %struct.Memory* %call_4008c7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4008cc	 Bytes: 4
  %loadMem_4008cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008cc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008cc)
  store %struct.Memory* %call_4008cc, %struct.Memory** %MEMORY

  ; Code: movsd 0x48(%rdx), %xmm1	 RIP: 4008d0	 Bytes: 5
  %loadMem_4008d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008d0 = call %struct.Memory* @routine_movsd_0x48__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008d0)
  store %struct.Memory* %call_4008d0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4008d5	 Bytes: 4
  %loadMem_4008d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008d5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008d5)
  store %struct.Memory* %call_4008d5, %struct.Memory** %MEMORY

  ; Code: mulsd 0x28(%rdx), %xmm1	 RIP: 4008d9	 Bytes: 5
  %loadMem_4008d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008d9 = call %struct.Memory* @routine_mulsd_0x28__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008d9)
  store %struct.Memory* %call_4008d9, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4008de	 Bytes: 4
  %loadMem_4008de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008de = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008de)
  store %struct.Memory* %call_4008de, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4008e2	 Bytes: 4
  %loadMem_4008e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008e2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008e2)
  store %struct.Memory* %call_4008e2, %struct.Memory** %MEMORY

  ; Code: movsd 0x50(%rdx), %xmm1	 RIP: 4008e6	 Bytes: 5
  %loadMem_4008e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008e6 = call %struct.Memory* @routine_movsd_0x50__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008e6)
  store %struct.Memory* %call_4008e6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4008eb	 Bytes: 4
  %loadMem_4008eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008eb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008eb)
  store %struct.Memory* %call_4008eb, %struct.Memory** %MEMORY

  ; Code: mulsd 0x48(%rdx), %xmm1	 RIP: 4008ef	 Bytes: 5
  %loadMem_4008ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008ef = call %struct.Memory* @routine_mulsd_0x48__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008ef)
  store %struct.Memory* %call_4008ef, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4008f4	 Bytes: 4
  %loadMem_4008f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008f4 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008f4)
  store %struct.Memory* %call_4008f4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4008f8	 Bytes: 4
  %loadMem_4008f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008f8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008f8)
  store %struct.Memory* %call_4008f8, %struct.Memory** %MEMORY

  ; Code: movsd 0x58(%rdx), %xmm1	 RIP: 4008fc	 Bytes: 5
  %loadMem_4008fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008fc = call %struct.Memory* @routine_movsd_0x58__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008fc)
  store %struct.Memory* %call_4008fc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400901	 Bytes: 4
  %loadMem_400901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400901 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400901)
  store %struct.Memory* %call_400901, %struct.Memory** %MEMORY

  ; Code: mulsd 0x68(%rdx), %xmm1	 RIP: 400905	 Bytes: 5
  %loadMem_400905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400905 = call %struct.Memory* @routine_mulsd_0x68__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400905)
  store %struct.Memory* %call_400905, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 40090a	 Bytes: 4
  %loadMem_40090a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40090a = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40090a)
  store %struct.Memory* %call_40090a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 40090e	 Bytes: 5
  %loadMem_40090e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40090e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40090e)
  store %struct.Memory* %call_40090e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400913	 Bytes: 4
  %loadMem_400913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400913 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400913)
  store %struct.Memory* %call_400913, %struct.Memory** %MEMORY

  ; Code: movsd 0x40(%rdx), %xmm0	 RIP: 400917	 Bytes: 5
  %loadMem_400917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400917 = call %struct.Memory* @routine_movsd_0x40__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400917)
  store %struct.Memory* %call_400917, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40091c	 Bytes: 4
  %loadMem_40091c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40091c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40091c)
  store %struct.Memory* %call_40091c, %struct.Memory** %MEMORY

  ; Code: mulsd 0x10(%rdx), %xmm0	 RIP: 400920	 Bytes: 5
  %loadMem_400920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400920 = call %struct.Memory* @routine_mulsd_0x10__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400920)
  store %struct.Memory* %call_400920, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400925	 Bytes: 4
  %loadMem_400925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400925 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400925)
  store %struct.Memory* %call_400925, %struct.Memory** %MEMORY

  ; Code: movsd 0x48(%rdx), %xmm1	 RIP: 400929	 Bytes: 5
  %loadMem_400929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400929 = call %struct.Memory* @routine_movsd_0x48__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400929)
  store %struct.Memory* %call_400929, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40092e	 Bytes: 4
  %loadMem_40092e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40092e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40092e)
  store %struct.Memory* %call_40092e, %struct.Memory** %MEMORY

  ; Code: mulsd 0x30(%rdx), %xmm1	 RIP: 400932	 Bytes: 5
  %loadMem_400932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400932 = call %struct.Memory* @routine_mulsd_0x30__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400932)
  store %struct.Memory* %call_400932, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400937	 Bytes: 4
  %loadMem_400937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400937 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400937)
  store %struct.Memory* %call_400937, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40093b	 Bytes: 4
  %loadMem_40093b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40093b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40093b)
  store %struct.Memory* %call_40093b, %struct.Memory** %MEMORY

  ; Code: movsd 0x50(%rdx), %xmm1	 RIP: 40093f	 Bytes: 5
  %loadMem_40093f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40093f = call %struct.Memory* @routine_movsd_0x50__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40093f)
  store %struct.Memory* %call_40093f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400944	 Bytes: 4
  %loadMem_400944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400944 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400944)
  store %struct.Memory* %call_400944, %struct.Memory** %MEMORY

  ; Code: mulsd 0x50(%rdx), %xmm1	 RIP: 400948	 Bytes: 5
  %loadMem_400948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400948 = call %struct.Memory* @routine_mulsd_0x50__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400948)
  store %struct.Memory* %call_400948, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 40094d	 Bytes: 4
  %loadMem_40094d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40094d = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40094d)
  store %struct.Memory* %call_40094d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400951	 Bytes: 4
  %loadMem_400951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400951 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400951)
  store %struct.Memory* %call_400951, %struct.Memory** %MEMORY

  ; Code: movsd 0x58(%rdx), %xmm1	 RIP: 400955	 Bytes: 5
  %loadMem_400955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400955 = call %struct.Memory* @routine_movsd_0x58__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400955)
  store %struct.Memory* %call_400955, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40095a	 Bytes: 4
  %loadMem_40095a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40095a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40095a)
  store %struct.Memory* %call_40095a, %struct.Memory** %MEMORY

  ; Code: mulsd 0x70(%rdx), %xmm1	 RIP: 40095e	 Bytes: 5
  %loadMem_40095e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40095e = call %struct.Memory* @routine_mulsd_0x70__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40095e)
  store %struct.Memory* %call_40095e, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400963	 Bytes: 4
  %loadMem_400963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400963 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400963)
  store %struct.Memory* %call_400963, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 400967	 Bytes: 5
  %loadMem_400967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400967 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400967)
  store %struct.Memory* %call_400967, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40096c	 Bytes: 4
  %loadMem_40096c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40096c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40096c)
  store %struct.Memory* %call_40096c, %struct.Memory** %MEMORY

  ; Code: movsd 0x40(%rdx), %xmm0	 RIP: 400970	 Bytes: 5
  %loadMem_400970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400970 = call %struct.Memory* @routine_movsd_0x40__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400970)
  store %struct.Memory* %call_400970, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400975	 Bytes: 4
  %loadMem_400975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400975 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400975)
  store %struct.Memory* %call_400975, %struct.Memory** %MEMORY

  ; Code: mulsd 0x18(%rdx), %xmm0	 RIP: 400979	 Bytes: 5
  %loadMem_400979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400979 = call %struct.Memory* @routine_mulsd_0x18__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400979)
  store %struct.Memory* %call_400979, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40097e	 Bytes: 4
  %loadMem_40097e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40097e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40097e)
  store %struct.Memory* %call_40097e, %struct.Memory** %MEMORY

  ; Code: movsd 0x48(%rdx), %xmm1	 RIP: 400982	 Bytes: 5
  %loadMem_400982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400982 = call %struct.Memory* @routine_movsd_0x48__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400982)
  store %struct.Memory* %call_400982, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400987	 Bytes: 4
  %loadMem_400987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400987 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400987)
  store %struct.Memory* %call_400987, %struct.Memory** %MEMORY

  ; Code: mulsd 0x38(%rdx), %xmm1	 RIP: 40098b	 Bytes: 5
  %loadMem_40098b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40098b = call %struct.Memory* @routine_mulsd_0x38__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40098b)
  store %struct.Memory* %call_40098b, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400990	 Bytes: 4
  %loadMem_400990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400990 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400990)
  store %struct.Memory* %call_400990, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400994	 Bytes: 4
  %loadMem_400994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400994 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400994)
  store %struct.Memory* %call_400994, %struct.Memory** %MEMORY

  ; Code: movsd 0x50(%rdx), %xmm1	 RIP: 400998	 Bytes: 5
  %loadMem_400998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400998 = call %struct.Memory* @routine_movsd_0x50__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400998)
  store %struct.Memory* %call_400998, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40099d	 Bytes: 4
  %loadMem_40099d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40099d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40099d)
  store %struct.Memory* %call_40099d, %struct.Memory** %MEMORY

  ; Code: mulsd 0x58(%rdx), %xmm1	 RIP: 4009a1	 Bytes: 5
  %loadMem_4009a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009a1 = call %struct.Memory* @routine_mulsd_0x58__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009a1)
  store %struct.Memory* %call_4009a1, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4009a6	 Bytes: 4
  %loadMem_4009a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009a6 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009a6)
  store %struct.Memory* %call_4009a6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4009aa	 Bytes: 4
  %loadMem_4009aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009aa = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009aa)
  store %struct.Memory* %call_4009aa, %struct.Memory** %MEMORY

  ; Code: movsd 0x58(%rdx), %xmm1	 RIP: 4009ae	 Bytes: 5
  %loadMem_4009ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009ae = call %struct.Memory* @routine_movsd_0x58__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009ae)
  store %struct.Memory* %call_4009ae, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4009b3	 Bytes: 4
  %loadMem_4009b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009b3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009b3)
  store %struct.Memory* %call_4009b3, %struct.Memory** %MEMORY

  ; Code: mulsd 0x78(%rdx), %xmm1	 RIP: 4009b7	 Bytes: 5
  %loadMem_4009b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009b7 = call %struct.Memory* @routine_mulsd_0x78__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009b7)
  store %struct.Memory* %call_4009b7, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4009bc	 Bytes: 4
  %loadMem_4009bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009bc = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009bc)
  store %struct.Memory* %call_4009bc, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 4009c0	 Bytes: 5
  %loadMem_4009c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c0 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c0)
  store %struct.Memory* %call_4009c0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4009c5	 Bytes: 4
  %loadMem_4009c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c5)
  store %struct.Memory* %call_4009c5, %struct.Memory** %MEMORY

  ; Code: movsd 0x60(%rdx), %xmm0	 RIP: 4009c9	 Bytes: 5
  %loadMem_4009c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c9 = call %struct.Memory* @routine_movsd_0x60__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c9)
  store %struct.Memory* %call_4009c9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4009ce	 Bytes: 4
  %loadMem_4009ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009ce = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009ce)
  store %struct.Memory* %call_4009ce, %struct.Memory** %MEMORY

  ; Code: mulsd (%rdx), %xmm0	 RIP: 4009d2	 Bytes: 4
  %loadMem_4009d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009d2 = call %struct.Memory* @routine_mulsd___rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009d2)
  store %struct.Memory* %call_4009d2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4009d6	 Bytes: 4
  %loadMem_4009d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009d6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009d6)
  store %struct.Memory* %call_4009d6, %struct.Memory** %MEMORY

  ; Code: movsd 0x68(%rdx), %xmm1	 RIP: 4009da	 Bytes: 5
  %loadMem_4009da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009da = call %struct.Memory* @routine_movsd_0x68__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009da)
  store %struct.Memory* %call_4009da, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4009df	 Bytes: 4
  %loadMem_4009df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009df = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009df)
  store %struct.Memory* %call_4009df, %struct.Memory** %MEMORY

  ; Code: mulsd 0x20(%rdx), %xmm1	 RIP: 4009e3	 Bytes: 5
  %loadMem_4009e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009e3 = call %struct.Memory* @routine_mulsd_0x20__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009e3)
  store %struct.Memory* %call_4009e3, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4009e8	 Bytes: 4
  %loadMem_4009e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009e8 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009e8)
  store %struct.Memory* %call_4009e8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4009ec	 Bytes: 4
  %loadMem_4009ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009ec = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009ec)
  store %struct.Memory* %call_4009ec, %struct.Memory** %MEMORY

  ; Code: movsd 0x70(%rdx), %xmm1	 RIP: 4009f0	 Bytes: 5
  %loadMem_4009f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f0 = call %struct.Memory* @routine_movsd_0x70__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f0)
  store %struct.Memory* %call_4009f0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4009f5	 Bytes: 4
  %loadMem_4009f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f5)
  store %struct.Memory* %call_4009f5, %struct.Memory** %MEMORY

  ; Code: mulsd 0x40(%rdx), %xmm1	 RIP: 4009f9	 Bytes: 5
  %loadMem_4009f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f9 = call %struct.Memory* @routine_mulsd_0x40__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f9)
  store %struct.Memory* %call_4009f9, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4009fe	 Bytes: 4
  %loadMem_4009fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009fe = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009fe)
  store %struct.Memory* %call_4009fe, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400a02	 Bytes: 4
  %loadMem_400a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a02 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a02)
  store %struct.Memory* %call_400a02, %struct.Memory** %MEMORY

  ; Code: movsd 0x78(%rdx), %xmm1	 RIP: 400a06	 Bytes: 5
  %loadMem_400a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a06 = call %struct.Memory* @routine_movsd_0x78__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a06)
  store %struct.Memory* %call_400a06, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400a0b	 Bytes: 4
  %loadMem_400a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a0b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a0b)
  store %struct.Memory* %call_400a0b, %struct.Memory** %MEMORY

  ; Code: mulsd 0x60(%rdx), %xmm1	 RIP: 400a0f	 Bytes: 5
  %loadMem_400a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a0f = call %struct.Memory* @routine_mulsd_0x60__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a0f)
  store %struct.Memory* %call_400a0f, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400a14	 Bytes: 4
  %loadMem_400a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a14 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a14)
  store %struct.Memory* %call_400a14, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 400a18	 Bytes: 5
  %loadMem_400a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a18 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a18)
  store %struct.Memory* %call_400a18, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400a1d	 Bytes: 4
  %loadMem_400a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a1d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a1d)
  store %struct.Memory* %call_400a1d, %struct.Memory** %MEMORY

  ; Code: movsd 0x60(%rdx), %xmm0	 RIP: 400a21	 Bytes: 5
  %loadMem_400a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a21 = call %struct.Memory* @routine_movsd_0x60__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a21)
  store %struct.Memory* %call_400a21, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400a26	 Bytes: 4
  %loadMem_400a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a26 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a26)
  store %struct.Memory* %call_400a26, %struct.Memory** %MEMORY

  ; Code: mulsd 0x8(%rdx), %xmm0	 RIP: 400a2a	 Bytes: 5
  %loadMem_400a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a2a = call %struct.Memory* @routine_mulsd_0x8__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a2a)
  store %struct.Memory* %call_400a2a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400a2f	 Bytes: 4
  %loadMem_400a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a2f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a2f)
  store %struct.Memory* %call_400a2f, %struct.Memory** %MEMORY

  ; Code: movsd 0x68(%rdx), %xmm1	 RIP: 400a33	 Bytes: 5
  %loadMem_400a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a33 = call %struct.Memory* @routine_movsd_0x68__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a33)
  store %struct.Memory* %call_400a33, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400a38	 Bytes: 4
  %loadMem_400a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a38 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a38)
  store %struct.Memory* %call_400a38, %struct.Memory** %MEMORY

  ; Code: mulsd 0x28(%rdx), %xmm1	 RIP: 400a3c	 Bytes: 5
  %loadMem_400a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a3c = call %struct.Memory* @routine_mulsd_0x28__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a3c)
  store %struct.Memory* %call_400a3c, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400a41	 Bytes: 4
  %loadMem_400a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a41 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a41)
  store %struct.Memory* %call_400a41, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400a45	 Bytes: 4
  %loadMem_400a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a45 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a45)
  store %struct.Memory* %call_400a45, %struct.Memory** %MEMORY

  ; Code: movsd 0x70(%rdx), %xmm1	 RIP: 400a49	 Bytes: 5
  %loadMem_400a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a49 = call %struct.Memory* @routine_movsd_0x70__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a49)
  store %struct.Memory* %call_400a49, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400a4e	 Bytes: 4
  %loadMem_400a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a4e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a4e)
  store %struct.Memory* %call_400a4e, %struct.Memory** %MEMORY

  ; Code: mulsd 0x48(%rdx), %xmm1	 RIP: 400a52	 Bytes: 5
  %loadMem_400a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a52 = call %struct.Memory* @routine_mulsd_0x48__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a52)
  store %struct.Memory* %call_400a52, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400a57	 Bytes: 4
  %loadMem_400a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a57 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a57)
  store %struct.Memory* %call_400a57, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400a5b	 Bytes: 4
  %loadMem_400a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a5b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a5b)
  store %struct.Memory* %call_400a5b, %struct.Memory** %MEMORY

  ; Code: movsd 0x78(%rdx), %xmm1	 RIP: 400a5f	 Bytes: 5
  %loadMem_400a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a5f = call %struct.Memory* @routine_movsd_0x78__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a5f)
  store %struct.Memory* %call_400a5f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400a64	 Bytes: 4
  %loadMem_400a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a64 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a64)
  store %struct.Memory* %call_400a64, %struct.Memory** %MEMORY

  ; Code: mulsd 0x68(%rdx), %xmm1	 RIP: 400a68	 Bytes: 5
  %loadMem_400a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a68 = call %struct.Memory* @routine_mulsd_0x68__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a68)
  store %struct.Memory* %call_400a68, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400a6d	 Bytes: 4
  %loadMem_400a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a6d = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a6d)
  store %struct.Memory* %call_400a6d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x38(%rbp)	 RIP: 400a71	 Bytes: 5
  %loadMem_400a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a71 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a71)
  store %struct.Memory* %call_400a71, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400a76	 Bytes: 4
  %loadMem_400a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a76 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a76)
  store %struct.Memory* %call_400a76, %struct.Memory** %MEMORY

  ; Code: movsd 0x60(%rdx), %xmm0	 RIP: 400a7a	 Bytes: 5
  %loadMem_400a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a7a = call %struct.Memory* @routine_movsd_0x60__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a7a)
  store %struct.Memory* %call_400a7a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400a7f	 Bytes: 4
  %loadMem_400a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a7f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a7f)
  store %struct.Memory* %call_400a7f, %struct.Memory** %MEMORY

  ; Code: mulsd 0x10(%rdx), %xmm0	 RIP: 400a83	 Bytes: 5
  %loadMem_400a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a83 = call %struct.Memory* @routine_mulsd_0x10__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a83)
  store %struct.Memory* %call_400a83, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400a88	 Bytes: 4
  %loadMem_400a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a88 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a88)
  store %struct.Memory* %call_400a88, %struct.Memory** %MEMORY

  ; Code: movsd 0x68(%rdx), %xmm1	 RIP: 400a8c	 Bytes: 5
  %loadMem_400a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a8c = call %struct.Memory* @routine_movsd_0x68__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a8c)
  store %struct.Memory* %call_400a8c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400a91	 Bytes: 4
  %loadMem_400a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a91 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a91)
  store %struct.Memory* %call_400a91, %struct.Memory** %MEMORY

  ; Code: mulsd 0x30(%rdx), %xmm1	 RIP: 400a95	 Bytes: 5
  %loadMem_400a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a95 = call %struct.Memory* @routine_mulsd_0x30__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a95)
  store %struct.Memory* %call_400a95, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400a9a	 Bytes: 4
  %loadMem_400a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a9a = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a9a)
  store %struct.Memory* %call_400a9a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400a9e	 Bytes: 4
  %loadMem_400a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a9e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a9e)
  store %struct.Memory* %call_400a9e, %struct.Memory** %MEMORY

  ; Code: movsd 0x70(%rdx), %xmm1	 RIP: 400aa2	 Bytes: 5
  %loadMem_400aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aa2 = call %struct.Memory* @routine_movsd_0x70__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aa2)
  store %struct.Memory* %call_400aa2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400aa7	 Bytes: 4
  %loadMem_400aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aa7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aa7)
  store %struct.Memory* %call_400aa7, %struct.Memory** %MEMORY

  ; Code: mulsd 0x50(%rdx), %xmm1	 RIP: 400aab	 Bytes: 5
  %loadMem_400aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aab = call %struct.Memory* @routine_mulsd_0x50__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aab)
  store %struct.Memory* %call_400aab, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400ab0	 Bytes: 4
  %loadMem_400ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab0 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab0)
  store %struct.Memory* %call_400ab0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400ab4	 Bytes: 4
  %loadMem_400ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab4)
  store %struct.Memory* %call_400ab4, %struct.Memory** %MEMORY

  ; Code: movsd 0x78(%rdx), %xmm1	 RIP: 400ab8	 Bytes: 5
  %loadMem_400ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab8 = call %struct.Memory* @routine_movsd_0x78__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab8)
  store %struct.Memory* %call_400ab8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400abd	 Bytes: 4
  %loadMem_400abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400abd = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400abd)
  store %struct.Memory* %call_400abd, %struct.Memory** %MEMORY

  ; Code: mulsd 0x70(%rdx), %xmm1	 RIP: 400ac1	 Bytes: 5
  %loadMem_400ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ac1 = call %struct.Memory* @routine_mulsd_0x70__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ac1)
  store %struct.Memory* %call_400ac1, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400ac6	 Bytes: 4
  %loadMem_400ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ac6 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ac6)
  store %struct.Memory* %call_400ac6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 400aca	 Bytes: 5
  %loadMem_400aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aca = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aca)
  store %struct.Memory* %call_400aca, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400acf	 Bytes: 4
  %loadMem_400acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400acf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400acf)
  store %struct.Memory* %call_400acf, %struct.Memory** %MEMORY

  ; Code: movsd 0x60(%rdx), %xmm0	 RIP: 400ad3	 Bytes: 5
  %loadMem_400ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ad3 = call %struct.Memory* @routine_movsd_0x60__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ad3)
  store %struct.Memory* %call_400ad3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400ad8	 Bytes: 4
  %loadMem_400ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ad8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ad8)
  store %struct.Memory* %call_400ad8, %struct.Memory** %MEMORY

  ; Code: mulsd 0x18(%rdx), %xmm0	 RIP: 400adc	 Bytes: 5
  %loadMem_400adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400adc = call %struct.Memory* @routine_mulsd_0x18__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400adc)
  store %struct.Memory* %call_400adc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400ae1	 Bytes: 4
  %loadMem_400ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ae1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ae1)
  store %struct.Memory* %call_400ae1, %struct.Memory** %MEMORY

  ; Code: movsd 0x68(%rdx), %xmm1	 RIP: 400ae5	 Bytes: 5
  %loadMem_400ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ae5 = call %struct.Memory* @routine_movsd_0x68__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ae5)
  store %struct.Memory* %call_400ae5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400aea	 Bytes: 4
  %loadMem_400aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aea = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aea)
  store %struct.Memory* %call_400aea, %struct.Memory** %MEMORY

  ; Code: mulsd 0x38(%rdx), %xmm1	 RIP: 400aee	 Bytes: 5
  %loadMem_400aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aee = call %struct.Memory* @routine_mulsd_0x38__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aee)
  store %struct.Memory* %call_400aee, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400af3	 Bytes: 4
  %loadMem_400af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400af3 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400af3)
  store %struct.Memory* %call_400af3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400af7	 Bytes: 4
  %loadMem_400af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400af7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400af7)
  store %struct.Memory* %call_400af7, %struct.Memory** %MEMORY

  ; Code: movsd 0x70(%rdx), %xmm1	 RIP: 400afb	 Bytes: 5
  %loadMem_400afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400afb = call %struct.Memory* @routine_movsd_0x70__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400afb)
  store %struct.Memory* %call_400afb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400b00	 Bytes: 4
  %loadMem_400b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b00 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b00)
  store %struct.Memory* %call_400b00, %struct.Memory** %MEMORY

  ; Code: mulsd 0x58(%rdx), %xmm1	 RIP: 400b04	 Bytes: 5
  %loadMem_400b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b04 = call %struct.Memory* @routine_mulsd_0x58__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b04)
  store %struct.Memory* %call_400b04, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400b09	 Bytes: 4
  %loadMem_400b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b09 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b09)
  store %struct.Memory* %call_400b09, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 400b0d	 Bytes: 4
  %loadMem_400b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b0d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b0d)
  store %struct.Memory* %call_400b0d, %struct.Memory** %MEMORY

  ; Code: movsd 0x78(%rdx), %xmm1	 RIP: 400b11	 Bytes: 5
  %loadMem_400b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b11 = call %struct.Memory* @routine_movsd_0x78__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b11)
  store %struct.Memory* %call_400b11, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 400b16	 Bytes: 4
  %loadMem_400b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b16 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b16)
  store %struct.Memory* %call_400b16, %struct.Memory** %MEMORY

  ; Code: mulsd 0x78(%rdx), %xmm1	 RIP: 400b1a	 Bytes: 5
  %loadMem_400b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b1a = call %struct.Memory* @routine_mulsd_0x78__rdx____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b1a)
  store %struct.Memory* %call_400b1a, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400b1f	 Bytes: 4
  %loadMem_400b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b1f = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b1f)
  store %struct.Memory* %call_400b1f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x28(%rbp)	 RIP: 400b23	 Bytes: 5
  %loadMem_400b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b23 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b23)
  store %struct.Memory* %call_400b23, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 400b28	 Bytes: 7
  %loadMem_400b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b28 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b28)
  store %struct.Memory* %call_400b28, %struct.Memory** %MEMORY

  ; Code: .L_400b2f:	 RIP: 400b2f	 Bytes: 0
  br label %block_.L_400b2f
block_.L_400b2f:

  ; Code: cmpl $0x10, -0x1c(%rbp)	 RIP: 400b2f	 Bytes: 4
  %loadMem_400b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b2f = call %struct.Memory* @routine_cmpl__0x10__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b2f)
  store %struct.Memory* %call_400b2f, %struct.Memory** %MEMORY

  ; Code: jae .L_400b63	 RIP: 400b33	 Bytes: 6
  %loadMem_400b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b33 = call %struct.Memory* @routine_jae_.L_400b63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b33, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_400b33, %struct.Memory** %MEMORY

  %loadBr_400b33 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b33 = icmp eq i8 %loadBr_400b33, 1
  br i1 %cmpBr_400b33, label %block_.L_400b63, label %block_400b39

block_400b39:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 400b39	 Bytes: 3
  %loadMem_400b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b39 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b39)
  store %struct.Memory* %call_400b39, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 400b3c	 Bytes: 2
  %loadMem_400b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b3c = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b3c)
  store %struct.Memory* %call_400b3c, %struct.Memory** %MEMORY

  ; Code: movsd -0xa0(%rbp,%rcx,8), %xmm0	 RIP: 400b3e	 Bytes: 9
  %loadMem_400b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b3e = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b3e)
  store %struct.Memory* %call_400b3e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 400b47	 Bytes: 4
  %loadMem_400b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b47 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b47)
  store %struct.Memory* %call_400b47, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 400b4b	 Bytes: 3
  %loadMem_400b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b4b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b4b)
  store %struct.Memory* %call_400b4b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 400b4e	 Bytes: 2
  %loadMem_400b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b4e = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b4e)
  store %struct.Memory* %call_400b4e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 400b50	 Bytes: 5
  %loadMem_400b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b50 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b50)
  store %struct.Memory* %call_400b50, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 400b55	 Bytes: 3
  %loadMem_400b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b55 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b55)
  store %struct.Memory* %call_400b55, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400b58	 Bytes: 3
  %loadMem_400b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b58 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b58)
  store %struct.Memory* %call_400b58, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 400b5b	 Bytes: 3
  %loadMem_400b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b5b = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b5b)
  store %struct.Memory* %call_400b5b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400b2f	 RIP: 400b5e	 Bytes: 5
  %loadMem_400b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b5e = call %struct.Memory* @routine_jmpq_.L_400b2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b5e, i64 -47, i64 5)
  store %struct.Memory* %call_400b5e, %struct.Memory** %MEMORY

  br label %block_.L_400b2f

  ; Code: .L_400b63:	 RIP: 400b63	 Bytes: 0
block_.L_400b63:

  ; Code: addq $0x20, %rsp	 RIP: 400b63	 Bytes: 4
  %loadMem_400b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b63 = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b63)
  store %struct.Memory* %call_400b63, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 400b67	 Bytes: 1
  %loadMem_400b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b67 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b67)
  store %struct.Memory* %call_400b67, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 400b68	 Bytes: 1
  %loadMem_400b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b68 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b68)
  store %struct.Memory* %call_400b68, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_400b68
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


define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movsd___rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fmul double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulsd___rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_0x8__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_mulsd_0x20__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movsd_0x10__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_mulsd_0x40__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movsd_0x18__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_mulsd_0x60__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
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








define %struct.Memory* @routine_mulsd_0x8__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_mulsd_0x28__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_mulsd_0x48__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_mulsd_0x68__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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








define %struct.Memory* @routine_mulsd_0x10__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_mulsd_0x30__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_mulsd_0x50__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_mulsd_0x70__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_mulsd_0x18__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_mulsd_0x38__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_mulsd_0x58__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_mulsd_0x78__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movsd_0x20__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd_0x28__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movsd_0x30__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movsd_0x38__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movsd_0x40__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd_0x48__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movsd_0x50__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movsd_0x58__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








































define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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




define %struct.Memory* @routine_movsd_0x60__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd_0x68__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movsd_0x70__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movsd_0x78__rdx____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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

define %struct.Memory* @routine_cmpl__0x10__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
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

define %struct.Memory* @routine_jae_.L_400b63(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movsd_MINUS0xa0__rbp__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, -160
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_400b2f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

