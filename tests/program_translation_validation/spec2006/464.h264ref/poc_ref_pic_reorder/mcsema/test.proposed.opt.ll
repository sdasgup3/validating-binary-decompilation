; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x70ea90_type = type <{ [8 x i8] }>
%G_0x70eaa8_type = type <{ [4 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x722c98_type = type <{ [4 x i8] }>
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
%union.anon = type { i64 }
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

@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x70ea90 = local_unnamed_addr global %G_0x70ea90_type zeroinitializer
@G_0x70eaa8 = local_unnamed_addr global %G_0x70eaa8_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer
@G_0x722c98 = local_unnamed_addr global %G_0x722c98_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @abs(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @poc_ref_pic_reorder(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -776
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 768
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i823 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = add i64 %7, 8
  %41 = add i64 %10, 13
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = zext i32 %43 to i64
  store i64 %44, i64* %RAX.i823, align 8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i1049 = bitcast %union.anon* %45 to i32*
  %46 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 1, i64* %46, align 8
  %RDI.i1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %47 = add i64 %7, -16
  %48 = load i64, i64* %RDI.i1046, align 8
  %49 = add i64 %10, 23
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %50, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1043 = bitcast %union.anon* %51 to i32*
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -12
  %54 = load i32, i32* %ESI.i1043, align 4
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %57, align 4
  %RDX.i1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -24
  %60 = load i64, i64* %RDX.i1040, align 8
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %63, align 8
  %RCX.i1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -32
  %66 = load i64, i64* %RCX.i1037, align 8
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %65 to i64*
  store i64 %66, i64* %69, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -40
  %72 = load i64, i64* %R8.i, align 8
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 4
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %71 to i64*
  store i64 %72, i64* %75, align 8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %76 to i32*
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -44
  %79 = load i32, i32* %R9D.i, align 4
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 4
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %78 to i32*
  store i32 %79, i32* %82, align 4
  %EAX.i1030 = bitcast %union.anon* %39 to i32*
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -48
  %85 = load i32, i32* %EAX.i1030, align 4
  %86 = load i64, i64* %3, align 8
  %87 = add i64 %86, 3
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %84 to i32*
  store i32 %85, i32* %88, align 4
  %89 = load i64, i64* %3, align 8
  %90 = load i32, i32* bitcast (%G_0x722c98_type* @G_0x722c98 to i32*), align 8
  %91 = add i32 %90, 4
  %92 = zext i32 %91 to i64
  store i64 %92, i64* %RAX.i823, align 8
  %93 = icmp ugt i32 %90, -5
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %14, align 1
  %95 = and i32 %91, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95)
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %21, align 1
  %100 = xor i32 %91, %90
  %101 = lshr i32 %100, 4
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  store i8 %103, i8* %26, align 1
  %104 = icmp eq i32 %91, 0
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %29, align 1
  %106 = lshr i32 %91, 31
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %32, align 1
  %108 = lshr i32 %90, 31
  %109 = xor i32 %106, %108
  %110 = add nuw nsw i32 %109, %106
  %111 = icmp eq i32 %110, 2
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %38, align 1
  store i64 %92, i64* %RCX.i1037, align 8
  %113 = load i32, i32* %R10D.i1049, align 4
  %114 = add i64 %89, 15
  store i64 %114, i64* %3, align 8
  %115 = trunc i32 %91 to i5
  switch i5 %115, label %121 [
    i5 0, label %routine_shll__cl___r10d.exit
    i5 1, label %116
  ]

; <label>:116:                                    ; preds = %entry
  %117 = shl i32 %113, 1
  %118 = icmp slt i32 %113, 0
  %119 = icmp slt i32 %117, 0
  %120 = xor i1 %118, %119
  br label %131

; <label>:121:                                    ; preds = %entry
  %122 = zext i32 %113 to i64
  %123 = and i32 %91, 31
  %124 = zext i32 %123 to i64
  %125 = add nuw nsw i64 %124, 4294967295
  %126 = and i64 %125, 4294967295
  %127 = shl i64 %122, %126
  %128 = trunc i64 %127 to i32
  %129 = icmp slt i32 %128, 0
  %130 = shl i32 %128, 1
  br label %131

; <label>:131:                                    ; preds = %121, %116
  %132 = phi i1 [ %118, %116 ], [ %129, %121 ]
  %133 = phi i1 [ %120, %116 ], [ false, %121 ]
  %134 = phi i32 [ %117, %116 ], [ %130, %121 ]
  %135 = zext i32 %134 to i64
  store i64 %135, i64* %46, align 8
  %136 = zext i1 %132 to i8
  store i8 %136, i8* %14, align 1
  %137 = and i32 %134, 254
  %138 = tail call i32 @llvm.ctpop.i32(i32 %137)
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  store i8 %141, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %142 = icmp eq i32 %134, 0
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %29, align 1
  %144 = lshr i32 %134, 31
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %32, align 1
  %146 = zext i1 %133 to i8
  store i8 %146, i8* %38, align 1
  br label %routine_shll__cl___r10d.exit

routine_shll__cl___r10d.exit:                     ; preds = %131, %entry
  %147 = phi i32 [ %134, %131 ], [ %113, %entry ]
  %148 = load i64, i64* %RBP.i, align 8
  %149 = add i64 %148, -756
  %150 = add i64 %89, 22
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i32*
  store i32 %147, i32* %151, align 4
  %152 = load i64, i64* %3, align 8
  %153 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %153, i64* %RDX.i1040, align 8
  %154 = add i64 %153, 28
  %155 = add i64 %152, 12
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i32*
  %157 = load i32, i32* %156, align 4
  store i8 0, i8* %14, align 1
  %158 = and i32 %157, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158)
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %163 = icmp eq i32 %157, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %29, align 1
  %165 = lshr i32 %157, 31
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v91 = select i1 %163, i64 18, i64 52
  %167 = add i64 %152, %.v91
  %168 = load i64, i64* %RBP.i, align 8
  %169 = add i64 %168, -756
  %170 = add i64 %167, 6
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RAX.i823, align 8
  br i1 %163, label %block_4a3296, label %block_.L_4a32b8

block_4a3296:                                     ; preds = %routine_shll__cl___r10d.exit
  %174 = add i64 %168, -752
  %175 = add i64 %167, 12
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  store i32 %172, i32* %176, align 4
  %177 = load i64, i64* %3, align 8
  %178 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %178, i64* %RCX.i1037, align 8
  %179 = add i64 %178, 72464
  %180 = add i64 %177, 14
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RAX.i823, align 8
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -64
  %186 = add i64 %177, 17
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i32*
  store i32 %182, i32* %187, align 4
  %188 = load i64, i64* %3, align 8
  %189 = add i64 %188, 43
  store i64 %189, i64* %3, align 8
  br label %block_.L_4a32de

block_.L_4a32b8:                                  ; preds = %routine_shll__cl___r10d.exit
  %190 = shl i32 %172, 1
  %191 = icmp slt i32 %172, 0
  %192 = icmp slt i32 %190, 0
  %193 = xor i1 %191, %192
  %194 = zext i32 %190 to i64
  store i64 %194, i64* %RAX.i823, align 8
  %.lobit = lshr i32 %172, 31
  %195 = trunc i32 %.lobit to i8
  store i8 %195, i8* %14, align 1
  %196 = and i32 %190, 254
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %201 = icmp eq i32 %190, 0
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %29, align 1
  %203 = lshr i32 %172, 30
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  store i8 %205, i8* %32, align 1
  %206 = zext i1 %193 to i8
  store i8 %206, i8* %38, align 1
  %207 = add i64 %168, -752
  %208 = add i64 %167, 14
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i32*
  store i32 %190, i32* %209, align 4
  %210 = load i64, i64* %3, align 8
  %211 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %211, i64* %RCX.i1037, align 8
  %212 = add i64 %211, 72464
  %213 = add i64 %210, 14
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = shl i32 %215, 1
  %217 = or i32 %216, 1
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX.i823, align 8
  store i8 0, i8* %14, align 1
  %219 = and i32 %217, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219)
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %224 = lshr i32 %215, 30
  %225 = and i32 %224, 1
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %32, align 1
  %227 = lshr i32 %215, 30
  %228 = and i32 %227, 1
  %229 = xor i32 %225, %228
  %230 = add nuw nsw i32 %229, %225
  %231 = icmp eq i32 %230, 2
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %38, align 1
  %233 = load i64, i64* %RBP.i, align 8
  %234 = add i64 %233, -64
  %235 = add i64 %210, 22
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i32*
  store i32 %217, i32* %236, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4a32de

block_.L_4a32de:                                  ; preds = %block_.L_4a32b8, %block_4a3296
  %237 = phi i64 [ %.pre, %block_.L_4a32b8 ], [ %189, %block_4a3296 ]
  %238 = load i64, i64* %RBP.i, align 8
  %239 = add i64 %238, -64
  %240 = add i64 %237, 3
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RAX.i823, align 8
  %244 = add i64 %238, -68
  %245 = add i64 %237, 6
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i32*
  store i32 %242, i32* %246, align 4
  %247 = load i64, i64* %RBP.i, align 8
  %248 = add i64 %247, -52
  %249 = load i64, i64* %3, align 8
  %250 = add i64 %249, 7
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %248 to i32*
  store i32 0, i32* %251, align 4
  %RSI.i946 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_4a32eb

block_.L_4a32eb:                                  ; preds = %block_4a32f7, %block_.L_4a32de
  %252 = phi i64 [ %344, %block_4a32f7 ], [ %.pre62, %block_.L_4a32de ]
  %253 = load i64, i64* %RBP.i, align 8
  %254 = add i64 %253, -52
  %255 = add i64 %252, 3
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RAX.i823, align 8
  %259 = add i64 %253, -12
  %260 = add i64 %252, 6
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = sub i32 %257, %262
  %264 = icmp ult i32 %257, %262
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %14, align 1
  %266 = and i32 %263, 255
  %267 = tail call i32 @llvm.ctpop.i32(i32 %266)
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  store i8 %270, i8* %21, align 1
  %271 = xor i32 %262, %257
  %272 = xor i32 %271, %263
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %26, align 1
  %276 = icmp eq i32 %263, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %29, align 1
  %278 = lshr i32 %263, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %32, align 1
  %280 = lshr i32 %257, 31
  %281 = lshr i32 %262, 31
  %282 = xor i32 %281, %280
  %283 = xor i32 %278, %280
  %284 = add nuw nsw i32 %283, %282
  %285 = icmp eq i32 %284, 2
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %38, align 1
  %.v92 = select i1 %264, i64 12, i64 57
  %287 = add i64 %252, %.v92
  store i64 %287, i64* %3, align 8
  br i1 %264, label %block_4a32f7, label %block_.L_4a3324

block_4a32f7:                                     ; preds = %block_.L_4a32eb
  %288 = add i64 %253, -8
  %289 = add i64 %287, 4
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i64*
  %291 = load i64, i64* %290, align 8
  store i64 %291, i64* %RAX.i823, align 8
  %292 = add i64 %287, 7
  store i64 %292, i64* %3, align 8
  %293 = load i32, i32* %256, align 4
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RCX.i1037, align 8
  store i64 %294, i64* %RDX.i1040, align 8
  %295 = shl nuw nsw i64 %294, 3
  %296 = add i64 %291, %295
  %297 = add i64 %287, 13
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i64*
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* %RAX.i823, align 8
  %300 = add i64 %299, 6364
  %301 = add i64 %287, 19
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %RCX.i1037, align 8
  %305 = add i64 %287, 22
  store i64 %305, i64* %3, align 8
  %306 = load i32, i32* %256, align 4
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %RSI.i946, align 8
  store i64 %307, i64* %RAX.i823, align 8
  %308 = shl nuw nsw i64 %307, 2
  %309 = add nsw i64 %308, -208
  %310 = add i64 %309, %253
  %311 = add i64 %287, 31
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i32*
  store i32 %303, i32* %312, align 4
  %313 = load i64, i64* %RBP.i, align 8
  %314 = add i64 %313, -52
  %315 = load i64, i64* %3, align 8
  %316 = add i64 %315, 3
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %314 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = add i32 %318, 1
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RAX.i823, align 8
  %321 = icmp eq i32 %318, -1
  %322 = icmp eq i32 %319, 0
  %323 = or i1 %321, %322
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %14, align 1
  %325 = and i32 %319, 255
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325)
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %21, align 1
  %330 = xor i32 %319, %318
  %331 = lshr i32 %330, 4
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  store i8 %333, i8* %26, align 1
  %334 = zext i1 %322 to i8
  store i8 %334, i8* %29, align 1
  %335 = lshr i32 %319, 31
  %336 = trunc i32 %335 to i8
  store i8 %336, i8* %32, align 1
  %337 = lshr i32 %318, 31
  %338 = xor i32 %335, %337
  %339 = add nuw nsw i32 %338, %335
  %340 = icmp eq i32 %339, 2
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %38, align 1
  %342 = add i64 %315, 9
  store i64 %342, i64* %3, align 8
  store i32 %319, i32* %317, align 4
  %343 = load i64, i64* %3, align 8
  %344 = add i64 %343, -52
  store i64 %344, i64* %3, align 8
  br label %block_.L_4a32eb

block_.L_4a3324:                                  ; preds = %block_.L_4a32eb
  %345 = add i64 %287, 7
  store i64 %345, i64* %3, align 8
  store i32 0, i32* %256, align 4
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_4a332b

block_.L_4a332b:                                  ; preds = %block_.L_4a34b7, %block_.L_4a3324
  %346 = phi i64 [ %.pre63, %block_.L_4a3324 ], [ %705, %block_.L_4a34b7 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_.L_4a3324 ], [ %MEMORY.6, %block_.L_4a34b7 ]
  %347 = load i64, i64* %RBP.i, align 8
  %348 = add i64 %347, -52
  %349 = add i64 %346, 3
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i32*
  %351 = load i32, i32* %350, align 4
  %352 = zext i32 %351 to i64
  store i64 %352, i64* %RAX.i823, align 8
  %353 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*), align 8
  %354 = sub i32 %351, %353
  %355 = icmp ult i32 %351, %353
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %14, align 1
  %357 = and i32 %354, 255
  %358 = tail call i32 @llvm.ctpop.i32(i32 %357)
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = xor i8 %360, 1
  store i8 %361, i8* %21, align 1
  %362 = xor i32 %353, %351
  %363 = xor i32 %362, %354
  %364 = lshr i32 %363, 4
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  store i8 %366, i8* %26, align 1
  %367 = icmp eq i32 %354, 0
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %29, align 1
  %369 = lshr i32 %354, 31
  %370 = trunc i32 %369 to i8
  store i8 %370, i8* %32, align 1
  %371 = lshr i32 %351, 31
  %372 = lshr i32 %353, 31
  %373 = xor i32 %372, %371
  %374 = xor i32 %369, %371
  %375 = add nuw nsw i32 %374, %373
  %376 = icmp eq i32 %375, 2
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %38, align 1
  %.v93 = select i1 %355, i64 16, i64 415
  %378 = add i64 %346, %.v93
  store i64 %378, i64* %3, align 8
  br i1 %355, label %block_4a333b, label %block_.L_4a34ca

block_4a333b:                                     ; preds = %block_.L_4a332b
  %379 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %379, i64* %RAX.i823, align 8
  %380 = add i64 %378, 11
  store i64 %380, i64* %3, align 8
  %381 = load i32, i32* %350, align 4
  %382 = zext i32 %381 to i64
  store i64 %382, i64* %RCX.i1037, align 8
  store i64 %382, i64* %RDX.i1040, align 8
  %383 = shl nuw nsw i64 %382, 3
  %384 = add i64 %379, %383
  %385 = add i64 %378, 17
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %384 to i64*
  %387 = load i64, i64* %386, align 8
  store i64 %387, i64* %RAX.i823, align 8
  %388 = add i64 %387, 40
  %389 = add i64 %378, 21
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i64*
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %RAX.i823, align 8
  %392 = add i64 %391, 6364
  %393 = add i64 %378, 27
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i32*
  %395 = load i32, i32* %394, align 4
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RCX.i1037, align 8
  %397 = add i64 %378, 30
  store i64 %397, i64* %3, align 8
  %398 = load i32, i32* %350, align 4
  %399 = zext i32 %398 to i64
  store i64 %399, i64* %RSI.i946, align 8
  %400 = shl nuw nsw i64 %399, 2
  %401 = add nsw i64 %400, -336
  %402 = add i64 %401, %347
  %403 = add i64 %378, 39
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i32*
  store i32 %395, i32* %404, align 4
  %405 = load i64, i64* %3, align 8
  %406 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %406, i64* %RAX.i823, align 8
  %407 = load i64, i64* %RBP.i, align 8
  %408 = add i64 %407, -52
  %409 = add i64 %405, 11
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RCX.i1037, align 8
  store i64 %412, i64* %RDX.i1040, align 8
  %413 = shl nuw nsw i64 %412, 3
  %414 = add i64 %406, %413
  %415 = add i64 %405, 17
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i64*
  %417 = load i64, i64* %416, align 8
  store i64 %417, i64* %RAX.i823, align 8
  %418 = add i64 %405, 20
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = add i32 %420, -3
  %422 = icmp ult i32 %420, 3
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %14, align 1
  %424 = and i32 %421, 255
  %425 = tail call i32 @llvm.ctpop.i32(i32 %424)
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = xor i8 %427, 1
  store i8 %428, i8* %21, align 1
  %429 = xor i32 %421, %420
  %430 = lshr i32 %429, 4
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  store i8 %432, i8* %26, align 1
  %433 = icmp eq i32 %421, 0
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %29, align 1
  %435 = lshr i32 %421, 31
  %436 = trunc i32 %435 to i8
  store i8 %436, i8* %32, align 1
  %437 = lshr i32 %420, 31
  %438 = xor i32 %435, %437
  %439 = add nuw nsw i32 %438, %437
  %440 = icmp eq i32 %439, 2
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %38, align 1
  %.v107 = select i1 %433, i64 26, i64 341
  %442 = add i64 %405, %.v107
  store i64 %442, i64* %3, align 8
  br i1 %433, label %block_4a337c, label %block_.L_4a34b7

block_4a337c:                                     ; preds = %block_4a333b
  store i64 %406, i64* %RAX.i823, align 8
  %443 = add i64 %442, 11
  store i64 %443, i64* %3, align 8
  %444 = load i32, i32* %410, align 4
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RCX.i1037, align 8
  store i64 %445, i64* %RDX.i1040, align 8
  %446 = shl nuw nsw i64 %445, 3
  %447 = add i64 %406, %446
  %448 = add i64 %442, 17
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i64*
  %450 = load i64, i64* %449, align 8
  store i64 %450, i64* %RAX.i823, align 8
  %451 = add i64 %450, 40
  %452 = add i64 %442, 21
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i64*
  %454 = load i64, i64* %453, align 8
  store i64 %454, i64* %RAX.i823, align 8
  %455 = add i64 %454, 6380
  %456 = add i64 %442, 28
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  store i8 0, i8* %14, align 1
  %459 = and i32 %458, 255
  %460 = tail call i32 @llvm.ctpop.i32(i32 %459)
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = xor i8 %462, 1
  store i8 %463, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %464 = icmp eq i32 %458, 0
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %29, align 1
  %466 = lshr i32 %458, 31
  %467 = trunc i32 %466 to i8
  store i8 %467, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v108 = select i1 %464, i64 315, i64 34
  %468 = add i64 %442, %.v108
  store i64 %468, i64* %3, align 8
  br i1 %464, label %block_.L_4a34b7, label %block_4a339e

block_4a339e:                                     ; preds = %block_4a337c
  store i64 %406, i64* %RAX.i823, align 8
  %469 = add i64 %468, 11
  store i64 %469, i64* %3, align 8
  %470 = load i32, i32* %410, align 4
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %RCX.i1037, align 8
  store i64 %471, i64* %RDX.i1040, align 8
  %472 = shl nuw nsw i64 %471, 3
  %473 = add i64 %406, %472
  %474 = add i64 %468, 17
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i64*
  %476 = load i64, i64* %475, align 8
  store i64 %476, i64* %RAX.i823, align 8
  %477 = add i64 %476, 40
  %478 = add i64 %468, 21
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i64*
  %480 = load i64, i64* %479, align 8
  store i64 %480, i64* %RAX.i823, align 8
  %481 = add i64 %480, 6376
  %482 = add i64 %468, 28
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i32*
  %484 = load i32, i32* %483, align 4
  store i8 0, i8* %14, align 1
  %485 = and i32 %484, 255
  %486 = tail call i32 @llvm.ctpop.i32(i32 %485)
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %490 = icmp eq i32 %484, 0
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %29, align 1
  %492 = lshr i32 %484, 31
  %493 = trunc i32 %492 to i8
  store i8 %493, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v109 = select i1 %490, i64 34, i64 281
  %494 = add i64 %468, %.v109
  store i64 %494, i64* %3, align 8
  br i1 %490, label %block_4a33c0, label %block_.L_4a34b7

block_4a33c0:                                     ; preds = %block_4a339e
  store i64 %406, i64* %RAX.i823, align 8
  %495 = add i64 %494, 11
  store i64 %495, i64* %3, align 8
  %496 = load i32, i32* %410, align 4
  %497 = zext i32 %496 to i64
  store i64 %497, i64* %RCX.i1037, align 8
  store i64 %497, i64* %RDX.i1040, align 8
  %498 = shl nuw nsw i64 %497, 3
  %499 = add i64 %406, %498
  %500 = add i64 %494, 17
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i64*
  %502 = load i64, i64* %501, align 8
  store i64 %502, i64* %RAX.i823, align 8
  %503 = add i64 %502, 40
  %504 = add i64 %494, 21
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i64*
  %506 = load i64, i64* %505, align 8
  store i64 %506, i64* %RAX.i823, align 8
  %507 = add i64 %506, 4
  %508 = add i64 %494, 24
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i32*
  %510 = load i32, i32* %509, align 4
  %511 = zext i32 %510 to i64
  store i64 %511, i64* %RCX.i1037, align 8
  %512 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %512, i64* %RAX.i823, align 8
  %513 = add i64 %512, 4
  %514 = add i64 %494, 35
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = sub i32 %510, %516
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RCX.i1037, align 8
  %519 = icmp ult i32 %510, %516
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %14, align 1
  %521 = and i32 %517, 255
  %522 = tail call i32 @llvm.ctpop.i32(i32 %521)
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  store i8 %525, i8* %21, align 1
  %526 = xor i32 %516, %510
  %527 = xor i32 %526, %517
  %528 = lshr i32 %527, 4
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  store i8 %530, i8* %26, align 1
  %531 = icmp eq i32 %517, 0
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %29, align 1
  %533 = lshr i32 %517, 31
  %534 = trunc i32 %533 to i8
  store i8 %534, i8* %32, align 1
  %535 = lshr i32 %510, 31
  %536 = lshr i32 %516, 31
  %537 = xor i32 %536, %535
  %538 = xor i32 %533, %535
  %539 = add nuw nsw i32 %538, %537
  %540 = icmp eq i32 %539, 2
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %38, align 1
  store i64 %518, i64* %RDI.i1046, align 8
  %542 = add i64 %494, -664512
  %543 = add i64 %494, 42
  %544 = load i64, i64* %6, align 8
  %545 = add i64 %544, -8
  %546 = inttoptr i64 %545 to i64*
  store i64 %543, i64* %546, align 8
  store i64 %545, i64* %6, align 8
  store i64 %542, i64* %3, align 8
  %547 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.2)
  %548 = load i64, i64* %RBP.i, align 8
  %549 = add i64 %548, -748
  %550 = load i32, i32* %EAX.i1030, align 4
  %551 = load i64, i64* %3, align 8
  %552 = add i64 %551, 6
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %549 to i32*
  store i32 %550, i32* %553, align 4
  %554 = load i64, i64* %RBP.i, align 8
  %555 = add i64 %554, -748
  %556 = load i64, i64* %3, align 8
  %557 = add i64 %556, 6
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %555 to i32*
  %559 = load i32, i32* %558, align 4
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RAX.i823, align 8
  %561 = add i64 %554, -52
  %562 = add i64 %556, 9
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = zext i32 %564 to i64
  store i64 %565, i64* %RCX.i1037, align 8
  store i64 %565, i64* %RDX.i1040, align 8
  %566 = shl nuw nsw i64 %565, 2
  %567 = add nsw i64 %566, -736
  %568 = add i64 %567, %554
  %569 = add i64 %556, 18
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i32*
  store i32 %559, i32* %570, align 4
  %571 = load i64, i64* %RBP.i, align 8
  %572 = add i64 %571, -48
  %573 = load i64, i64* %3, align 8
  %574 = add i64 %573, 4
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %572 to i32*
  %576 = load i32, i32* %575, align 4
  store i8 0, i8* %14, align 1
  %577 = and i32 %576, 255
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577)
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %582 = icmp eq i32 %576, 0
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %29, align 1
  %584 = lshr i32 %576, 31
  %585 = trunc i32 %584 to i8
  store i8 %585, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v110 = select i1 %582, i64 10, i64 93
  %586 = add i64 %573, %.v110
  %587 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %587, i64* %RAX.i823, align 8
  %588 = add i64 %587, 4
  %589 = add i64 %586, 11
  store i64 %589, i64* %3, align 8
  %590 = inttoptr i64 %588 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = zext i32 %591 to i64
  store i64 %592, i64* %RCX.i1037, align 8
  %593 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %593, i64* %RAX.i823, align 8
  %594 = add i64 %571, -52
  %595 = add i64 %586, 22
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RDX.i1040, align 8
  store i64 %598, i64* %RSI.i946, align 8
  %599 = shl nuw nsw i64 %598, 3
  %600 = add i64 %593, %599
  %601 = add i64 %586, 28
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i64*
  %603 = load i64, i64* %602, align 8
  store i64 %603, i64* %RAX.i823, align 8
  %604 = add i64 %603, 40
  %605 = add i64 %586, 32
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %604 to i64*
  %607 = load i64, i64* %606, align 8
  store i64 %607, i64* %RAX.i823, align 8
  %608 = add i64 %607, 4
  %609 = add i64 %586, 35
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = sub i32 %591, %611
  %613 = icmp ult i32 %591, %611
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %14, align 1
  %615 = and i32 %612, 255
  %616 = tail call i32 @llvm.ctpop.i32(i32 %615)
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  %619 = xor i8 %618, 1
  store i8 %619, i8* %21, align 1
  %620 = xor i32 %611, %591
  %621 = xor i32 %620, %612
  %622 = lshr i32 %621, 4
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  store i8 %624, i8* %26, align 1
  %625 = icmp eq i32 %612, 0
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %29, align 1
  %627 = lshr i32 %612, 31
  %628 = trunc i32 %627 to i8
  store i8 %628, i8* %32, align 1
  %629 = lshr i32 %591, 31
  %630 = lshr i32 %611, 31
  %631 = xor i32 %630, %629
  %632 = xor i32 %627, %629
  %633 = add nuw nsw i32 %632, %631
  %634 = icmp eq i32 %633, 2
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %38, align 1
  %636 = add i64 %586, 62
  %637 = add i64 %586, 41
  store i64 %637, i64* %3, align 8
  %638 = icmp ne i8 %628, 0
  %639 = xor i1 %638, %634
  br i1 %582, label %block_4a340c, label %block_.L_4a345f

block_4a340c:                                     ; preds = %block_4a33c0
  %640 = select i1 %639, i64 %637, i64 %636
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -52
  %643 = add i64 %640, 3
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i32*
  %645 = load i32, i32* %644, align 4
  %646 = zext i32 %645 to i64
  store i64 %646, i64* %RAX.i823, align 8
  store i64 %646, i64* %RCX.i1037, align 8
  %647 = shl nuw nsw i64 %646, 2
  %648 = add nsw i64 %647, -592
  %649 = add i64 %648, %641
  %650 = add i64 %640, 16
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i32*
  br i1 %639, label %block_4a3435, label %block_.L_4a344a

block_4a3435:                                     ; preds = %block_4a340c
  store i32 1, i32* %651, align 4
  %652 = load i64, i64* %3, align 8
  %653 = add i64 %652, 21
  store i64 %653, i64* %3, align 8
  br label %block_.L_4a345a

block_.L_4a344a:                                  ; preds = %block_4a340c
  store i32 -1, i32* %651, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_4a345a

block_.L_4a345a:                                  ; preds = %block_.L_4a344a, %block_4a3435
  %654 = phi i64 [ %.pre64, %block_.L_4a344a ], [ %653, %block_4a3435 ]
  %655 = add i64 %654, 88
  br label %block_.L_4a34b2

block_.L_4a345f:                                  ; preds = %block_4a33c0
  %656 = or i1 %625, %639
  %657 = select i1 %656, i64 %636, i64 %637
  %658 = load i64, i64* %RBP.i, align 8
  %659 = add i64 %658, -52
  %660 = add i64 %657, 3
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i32*
  %662 = load i32, i32* %661, align 4
  %663 = zext i32 %662 to i64
  store i64 %663, i64* %RAX.i823, align 8
  store i64 %663, i64* %RCX.i1037, align 8
  %664 = shl nuw nsw i64 %663, 2
  %665 = add nsw i64 %664, -592
  %666 = add i64 %665, %658
  %667 = add i64 %657, 16
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to i32*
  br i1 %656, label %block_.L_4a349d, label %block_4a3488

block_4a3488:                                     ; preds = %block_.L_4a345f
  store i32 1, i32* %668, align 4
  %669 = load i64, i64* %3, align 8
  %670 = add i64 %669, 21
  store i64 %670, i64* %3, align 8
  br label %block_.L_4a34ad

block_.L_4a349d:                                  ; preds = %block_.L_4a345f
  store i32 -1, i32* %668, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_4a34ad

block_.L_4a34ad:                                  ; preds = %block_.L_4a349d, %block_4a3488
  %671 = phi i64 [ %.pre65, %block_.L_4a349d ], [ %670, %block_4a3488 ]
  %672 = add i64 %671, 5
  store i64 %672, i64* %3, align 8
  br label %block_.L_4a34b2

block_.L_4a34b2:                                  ; preds = %block_.L_4a34ad, %block_.L_4a345a
  %storemerge = phi i64 [ %655, %block_.L_4a345a ], [ %672, %block_.L_4a34ad ]
  %673 = add i64 %storemerge, 5
  store i64 %673, i64* %3, align 8
  %.pre66 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4a34b7

block_.L_4a34b7:                                  ; preds = %block_4a339e, %block_4a333b, %block_.L_4a34b2, %block_4a337c
  %674 = phi i64 [ %407, %block_4a333b ], [ %407, %block_4a337c ], [ %407, %block_4a339e ], [ %.pre66, %block_.L_4a34b2 ]
  %675 = phi i64 [ %442, %block_4a333b ], [ %468, %block_4a337c ], [ %494, %block_4a339e ], [ %673, %block_.L_4a34b2 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.2, %block_4a333b ], [ %MEMORY.2, %block_4a337c ], [ %MEMORY.2, %block_4a339e ], [ %547, %block_.L_4a34b2 ]
  %676 = add i64 %674, -52
  %677 = add i64 %675, 8
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %676 to i32*
  %679 = load i32, i32* %678, align 4
  %680 = add i32 %679, 1
  %681 = zext i32 %680 to i64
  store i64 %681, i64* %RAX.i823, align 8
  %682 = icmp eq i32 %679, -1
  %683 = icmp eq i32 %680, 0
  %684 = or i1 %682, %683
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %14, align 1
  %686 = and i32 %680, 255
  %687 = tail call i32 @llvm.ctpop.i32(i32 %686)
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  %690 = xor i8 %689, 1
  store i8 %690, i8* %21, align 1
  %691 = xor i32 %680, %679
  %692 = lshr i32 %691, 4
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  store i8 %694, i8* %26, align 1
  %695 = zext i1 %683 to i8
  store i8 %695, i8* %29, align 1
  %696 = lshr i32 %680, 31
  %697 = trunc i32 %696 to i8
  store i8 %697, i8* %32, align 1
  %698 = lshr i32 %679, 31
  %699 = xor i32 %696, %698
  %700 = add nuw nsw i32 %699, %696
  %701 = icmp eq i32 %700, 2
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %38, align 1
  %703 = add i64 %675, 14
  store i64 %703, i64* %3, align 8
  store i32 %680, i32* %678, align 4
  %704 = load i64, i64* %3, align 8
  %705 = add i64 %704, -410
  store i64 %705, i64* %3, align 8
  br label %block_.L_4a332b

block_.L_4a34ca:                                  ; preds = %block_.L_4a332b
  %706 = add i64 %378, 7
  store i64 %706, i64* %3, align 8
  store i32 0, i32* %350, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_4a34d1

block_.L_4a34d1:                                  ; preds = %block_.L_4a3620, %block_.L_4a34ca
  %707 = phi i64 [ %1173, %block_.L_4a3620 ], [ %.pre67, %block_.L_4a34ca ]
  %708 = load i64, i64* %RBP.i, align 8
  %709 = add i64 %708, -52
  %710 = add i64 %707, 3
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %709 to i32*
  %712 = load i32, i32* %711, align 4
  %713 = zext i32 %712 to i64
  store i64 %713, i64* %RAX.i823, align 8
  %714 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*), align 8
  %715 = add i32 %714, -1
  %716 = zext i32 %715 to i64
  store i64 %716, i64* %RCX.i1037, align 8
  %717 = lshr i32 %715, 31
  %718 = sub i32 %712, %715
  %719 = icmp ult i32 %712, %715
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %14, align 1
  %721 = and i32 %718, 255
  %722 = tail call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  store i8 %725, i8* %21, align 1
  %726 = xor i32 %715, %712
  %727 = xor i32 %726, %718
  %728 = lshr i32 %727, 4
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  store i8 %730, i8* %26, align 1
  %731 = icmp eq i32 %718, 0
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %29, align 1
  %733 = lshr i32 %718, 31
  %734 = trunc i32 %733 to i8
  store i8 %734, i8* %32, align 1
  %735 = lshr i32 %712, 31
  %736 = xor i32 %717, %735
  %737 = xor i32 %733, %735
  %738 = add nuw nsw i32 %737, %736
  %739 = icmp eq i32 %738, 2
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %38, align 1
  %.v94 = select i1 %719, i64 21, i64 354
  %741 = add i64 %707, %.v94
  store i64 %741, i64* %3, align 8
  br i1 %719, label %block_4a34e6, label %block_.L_4a3633

block_4a34e6:                                     ; preds = %block_.L_4a34d1
  %742 = add i64 %741, 3
  store i64 %742, i64* %3, align 8
  %743 = load i32, i32* %711, align 4
  %744 = add i32 %743, 1
  %745 = zext i32 %744 to i64
  store i64 %745, i64* %RAX.i823, align 8
  %746 = icmp eq i32 %743, -1
  %747 = icmp eq i32 %744, 0
  %748 = or i1 %746, %747
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %14, align 1
  %750 = and i32 %744, 255
  %751 = tail call i32 @llvm.ctpop.i32(i32 %750)
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = xor i8 %753, 1
  store i8 %754, i8* %21, align 1
  %755 = xor i32 %744, %743
  %756 = lshr i32 %755, 4
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  store i8 %758, i8* %26, align 1
  %759 = zext i1 %747 to i8
  store i8 %759, i8* %29, align 1
  %760 = lshr i32 %744, 31
  %761 = trunc i32 %760 to i8
  store i8 %761, i8* %32, align 1
  %762 = lshr i32 %743, 31
  %763 = xor i32 %760, %762
  %764 = add nuw nsw i32 %763, %760
  %765 = icmp eq i32 %764, 2
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %38, align 1
  %767 = add i64 %708, -56
  %768 = add i64 %741, 9
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i32*
  store i32 %744, i32* %769, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_4a34ef

block_.L_4a34ef:                                  ; preds = %block_.L_4a360d, %block_4a34e6
  %770 = phi i64 [ %1144, %block_.L_4a360d ], [ %.pre68, %block_4a34e6 ]
  %771 = load i64, i64* %RBP.i, align 8
  %772 = add i64 %771, -56
  %773 = add i64 %770, 3
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = zext i32 %775 to i64
  store i64 %776, i64* %RAX.i823, align 8
  %777 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*), align 8
  %778 = sub i32 %775, %777
  %779 = icmp ult i32 %775, %777
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %14, align 1
  %781 = and i32 %778, 255
  %782 = tail call i32 @llvm.ctpop.i32(i32 %781)
  %783 = trunc i32 %782 to i8
  %784 = and i8 %783, 1
  %785 = xor i8 %784, 1
  store i8 %785, i8* %21, align 1
  %786 = xor i32 %777, %775
  %787 = xor i32 %786, %778
  %788 = lshr i32 %787, 4
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  store i8 %790, i8* %26, align 1
  %791 = icmp eq i32 %778, 0
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %29, align 1
  %793 = lshr i32 %778, 31
  %794 = trunc i32 %793 to i8
  store i8 %794, i8* %32, align 1
  %795 = lshr i32 %775, 31
  %796 = lshr i32 %777, 31
  %797 = xor i32 %796, %795
  %798 = xor i32 %793, %795
  %799 = add nuw nsw i32 %798, %797
  %800 = icmp eq i32 %799, 2
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %38, align 1
  %.v86 = select i1 %779, i64 16, i64 305
  %802 = add i64 %770, %.v86
  store i64 %802, i64* %3, align 8
  %803 = add i64 %771, -52
  br i1 %779, label %block_4a34ff, label %block_.L_4a3620

block_4a34ff:                                     ; preds = %block_.L_4a34ef
  %804 = add i64 %802, 3
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  %807 = zext i32 %806 to i64
  store i64 %807, i64* %RAX.i823, align 8
  store i64 %807, i64* %RCX.i1037, align 8
  %808 = shl nuw nsw i64 %807, 2
  %809 = add nsw i64 %808, -736
  %810 = add i64 %809, %771
  %811 = add i64 %802, 12
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i32*
  %813 = load i32, i32* %812, align 4
  %814 = zext i32 %813 to i64
  store i64 %814, i64* %RAX.i823, align 8
  %815 = add i64 %802, 15
  store i64 %815, i64* %3, align 8
  %816 = load i32, i32* %774, align 4
  %817 = zext i32 %816 to i64
  store i64 %817, i64* %RDX.i1040, align 8
  store i64 %817, i64* %RCX.i1037, align 8
  %818 = shl nuw nsw i64 %817, 2
  %819 = add nsw i64 %818, -736
  %820 = add i64 %819, %771
  %821 = add i64 %802, 24
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = sub i32 %813, %823
  %825 = icmp ult i32 %813, %823
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %14, align 1
  %827 = and i32 %824, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827)
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %21, align 1
  %832 = xor i32 %823, %813
  %833 = xor i32 %832, %824
  %834 = lshr i32 %833, 4
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  store i8 %836, i8* %26, align 1
  %837 = icmp eq i32 %824, 0
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %29, align 1
  %839 = lshr i32 %824, 31
  %840 = trunc i32 %839 to i8
  store i8 %840, i8* %32, align 1
  %841 = lshr i32 %813, 31
  %842 = lshr i32 %823, 31
  %843 = xor i32 %842, %841
  %844 = xor i32 %839, %841
  %845 = add nuw nsw i32 %844, %843
  %846 = icmp eq i32 %845, 2
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %38, align 1
  %848 = icmp ne i8 %840, 0
  %849 = xor i1 %848, %846
  %.demorgan = or i1 %837, %849
  %.v104 = select i1 %.demorgan, i64 30, i64 90
  %850 = add i64 %802, %.v104
  store i64 %850, i64* %3, align 8
  br i1 %.demorgan, label %block_4a351d, label %block_.L_4a3559

block_4a351d:                                     ; preds = %block_4a34ff
  %851 = add i64 %850, 3
  store i64 %851, i64* %3, align 8
  %852 = load i32, i32* %805, align 4
  %853 = zext i32 %852 to i64
  store i64 %853, i64* %RAX.i823, align 8
  store i64 %853, i64* %RCX.i1037, align 8
  %854 = shl nuw nsw i64 %853, 2
  %855 = add nsw i64 %854, -736
  %856 = add i64 %855, %771
  %857 = add i64 %850, 12
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i32*
  %859 = load i32, i32* %858, align 4
  %860 = zext i32 %859 to i64
  store i64 %860, i64* %RAX.i823, align 8
  %861 = add i64 %850, 15
  store i64 %861, i64* %3, align 8
  %862 = load i32, i32* %774, align 4
  %863 = zext i32 %862 to i64
  store i64 %863, i64* %RDX.i1040, align 8
  store i64 %863, i64* %RCX.i1037, align 8
  %864 = shl nuw nsw i64 %863, 2
  %865 = add nsw i64 %864, -736
  %866 = add i64 %865, %771
  %867 = add i64 %850, 24
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i32*
  %869 = load i32, i32* %868, align 4
  %870 = sub i32 %859, %869
  %871 = icmp ult i32 %859, %869
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %14, align 1
  %873 = and i32 %870, 255
  %874 = tail call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  store i8 %877, i8* %21, align 1
  %878 = xor i32 %869, %859
  %879 = xor i32 %878, %870
  %880 = lshr i32 %879, 4
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  store i8 %882, i8* %26, align 1
  %883 = icmp eq i32 %870, 0
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %29, align 1
  %885 = lshr i32 %870, 31
  %886 = trunc i32 %885 to i8
  store i8 %886, i8* %32, align 1
  %887 = lshr i32 %859, 31
  %888 = lshr i32 %869, 31
  %889 = xor i32 %888, %887
  %890 = xor i32 %885, %887
  %891 = add nuw nsw i32 %890, %889
  %892 = icmp eq i32 %891, 2
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %38, align 1
  %.v105 = select i1 %883, i64 30, i64 240
  %894 = add i64 %850, %.v105
  store i64 %894, i64* %3, align 8
  br i1 %883, label %block_4a353b, label %block_.L_4a360d

block_4a353b:                                     ; preds = %block_4a351d
  %895 = add i64 %894, 3
  store i64 %895, i64* %3, align 8
  %896 = load i32, i32* %774, align 4
  %897 = zext i32 %896 to i64
  store i64 %897, i64* %RAX.i823, align 8
  store i64 %897, i64* %RCX.i1037, align 8
  %898 = shl nuw nsw i64 %897, 2
  %899 = add nsw i64 %898, -592
  %900 = add i64 %899, %771
  %901 = add i64 %894, 12
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i32*
  %903 = load i32, i32* %902, align 4
  %904 = zext i32 %903 to i64
  store i64 %904, i64* %RAX.i823, align 8
  %905 = add i64 %894, 15
  store i64 %905, i64* %3, align 8
  %906 = load i32, i32* %805, align 4
  %907 = zext i32 %906 to i64
  store i64 %907, i64* %RDX.i1040, align 8
  store i64 %907, i64* %RCX.i1037, align 8
  %908 = shl nuw nsw i64 %907, 2
  %909 = add nsw i64 %908, -592
  %910 = add i64 %909, %771
  %911 = add i64 %894, 24
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  %914 = sub i32 %903, %913
  %915 = icmp ult i32 %903, %913
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %14, align 1
  %917 = and i32 %914, 255
  %918 = tail call i32 @llvm.ctpop.i32(i32 %917)
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  %921 = xor i8 %920, 1
  store i8 %921, i8* %21, align 1
  %922 = xor i32 %913, %903
  %923 = xor i32 %922, %914
  %924 = lshr i32 %923, 4
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  store i8 %926, i8* %26, align 1
  %927 = icmp eq i32 %914, 0
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %29, align 1
  %929 = lshr i32 %914, 31
  %930 = trunc i32 %929 to i8
  store i8 %930, i8* %32, align 1
  %931 = lshr i32 %903, 31
  %932 = lshr i32 %913, 31
  %933 = xor i32 %932, %931
  %934 = xor i32 %929, %931
  %935 = add nuw nsw i32 %934, %933
  %936 = icmp eq i32 %935, 2
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %38, align 1
  %938 = icmp ne i8 %930, 0
  %939 = xor i1 %938, %936
  %940 = or i1 %927, %939
  %.v106 = select i1 %940, i64 210, i64 30
  %941 = add i64 %894, %.v106
  store i64 %941, i64* %3, align 8
  br i1 %940, label %block_.L_4a360d, label %block_.L_4a3559

block_.L_4a3559:                                  ; preds = %block_4a34ff, %block_4a353b
  %942 = phi i64 [ %941, %block_4a353b ], [ %850, %block_4a34ff ]
  %943 = add i64 %942, 3
  store i64 %943, i64* %3, align 8
  %944 = load i32, i32* %805, align 4
  %945 = zext i32 %944 to i64
  store i64 %945, i64* %RAX.i823, align 8
  store i64 %945, i64* %RCX.i1037, align 8
  %946 = shl nuw nsw i64 %945, 2
  %947 = add nsw i64 %946, -736
  %948 = add i64 %947, %771
  %949 = add i64 %942, 12
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %948 to i32*
  %951 = load i32, i32* %950, align 4
  %952 = zext i32 %951 to i64
  store i64 %952, i64* %RAX.i823, align 8
  %953 = add i64 %771, -740
  %954 = add i64 %942, 18
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i32*
  store i32 %951, i32* %955, align 4
  %956 = load i64, i64* %RBP.i, align 8
  %957 = add i64 %956, -56
  %958 = load i64, i64* %3, align 8
  %959 = add i64 %958, 3
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %957 to i32*
  %961 = load i32, i32* %960, align 4
  %962 = zext i32 %961 to i64
  store i64 %962, i64* %RAX.i823, align 8
  store i64 %962, i64* %RCX.i1037, align 8
  %963 = shl nuw nsw i64 %962, 2
  %964 = add nsw i64 %963, -736
  %965 = add i64 %964, %956
  %966 = add i64 %958, 12
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = zext i32 %968 to i64
  store i64 %969, i64* %RAX.i823, align 8
  %970 = add i64 %956, -52
  %971 = add i64 %958, 15
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %970 to i32*
  %973 = load i32, i32* %972, align 4
  %974 = zext i32 %973 to i64
  store i64 %974, i64* %RDX.i1040, align 8
  store i64 %974, i64* %RCX.i1037, align 8
  %975 = shl nuw nsw i64 %974, 2
  %976 = add nsw i64 %975, -736
  %977 = add i64 %976, %956
  %978 = add i64 %958, 24
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i32*
  store i32 %968, i32* %979, align 4
  %980 = load i64, i64* %RBP.i, align 8
  %981 = add i64 %980, -740
  %982 = load i64, i64* %3, align 8
  %983 = add i64 %982, 6
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %981 to i32*
  %985 = load i32, i32* %984, align 4
  %986 = zext i32 %985 to i64
  store i64 %986, i64* %RAX.i823, align 8
  %987 = add i64 %980, -56
  %988 = add i64 %982, 9
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i32*
  %990 = load i32, i32* %989, align 4
  %991 = zext i32 %990 to i64
  store i64 %991, i64* %RDX.i1040, align 8
  store i64 %991, i64* %RCX.i1037, align 8
  %992 = shl nuw nsw i64 %991, 2
  %993 = add nsw i64 %992, -736
  %994 = add i64 %993, %980
  %995 = add i64 %982, 18
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i32*
  store i32 %985, i32* %996, align 4
  %997 = load i64, i64* %RBP.i, align 8
  %998 = add i64 %997, -52
  %999 = load i64, i64* %3, align 8
  %1000 = add i64 %999, 3
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %998 to i32*
  %1002 = load i32, i32* %1001, align 4
  %1003 = zext i32 %1002 to i64
  store i64 %1003, i64* %RAX.i823, align 8
  store i64 %1003, i64* %RCX.i1037, align 8
  %1004 = shl nuw nsw i64 %1003, 2
  %1005 = add nsw i64 %1004, -336
  %1006 = add i64 %1005, %997
  %1007 = add i64 %999, 12
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i32*
  %1009 = load i32, i32* %1008, align 4
  %1010 = zext i32 %1009 to i64
  store i64 %1010, i64* %RAX.i823, align 8
  %1011 = add i64 %997, -740
  %1012 = add i64 %999, 18
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i32*
  store i32 %1009, i32* %1013, align 4
  %1014 = load i64, i64* %RBP.i, align 8
  %1015 = add i64 %1014, -56
  %1016 = load i64, i64* %3, align 8
  %1017 = add i64 %1016, 3
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1015 to i32*
  %1019 = load i32, i32* %1018, align 4
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RAX.i823, align 8
  store i64 %1020, i64* %RCX.i1037, align 8
  %1021 = shl nuw nsw i64 %1020, 2
  %1022 = add nsw i64 %1021, -336
  %1023 = add i64 %1022, %1014
  %1024 = add i64 %1016, 12
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i32*
  %1026 = load i32, i32* %1025, align 4
  %1027 = zext i32 %1026 to i64
  store i64 %1027, i64* %RAX.i823, align 8
  %1028 = add i64 %1014, -52
  %1029 = add i64 %1016, 15
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i32*
  %1031 = load i32, i32* %1030, align 4
  %1032 = zext i32 %1031 to i64
  store i64 %1032, i64* %RDX.i1040, align 8
  store i64 %1032, i64* %RCX.i1037, align 8
  %1033 = shl nuw nsw i64 %1032, 2
  %1034 = add nsw i64 %1033, -336
  %1035 = add i64 %1034, %1014
  %1036 = add i64 %1016, 24
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i32*
  store i32 %1026, i32* %1037, align 4
  %1038 = load i64, i64* %RBP.i, align 8
  %1039 = add i64 %1038, -740
  %1040 = load i64, i64* %3, align 8
  %1041 = add i64 %1040, 6
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1039 to i32*
  %1043 = load i32, i32* %1042, align 4
  %1044 = zext i32 %1043 to i64
  store i64 %1044, i64* %RAX.i823, align 8
  %1045 = add i64 %1038, -56
  %1046 = add i64 %1040, 9
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1045 to i32*
  %1048 = load i32, i32* %1047, align 4
  %1049 = zext i32 %1048 to i64
  store i64 %1049, i64* %RDX.i1040, align 8
  store i64 %1049, i64* %RCX.i1037, align 8
  %1050 = shl nuw nsw i64 %1049, 2
  %1051 = add nsw i64 %1050, -336
  %1052 = add i64 %1051, %1038
  %1053 = add i64 %1040, 18
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i32*
  store i32 %1043, i32* %1054, align 4
  %1055 = load i64, i64* %RBP.i, align 8
  %1056 = add i64 %1055, -52
  %1057 = load i64, i64* %3, align 8
  %1058 = add i64 %1057, 3
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1056 to i32*
  %1060 = load i32, i32* %1059, align 4
  %1061 = zext i32 %1060 to i64
  store i64 %1061, i64* %RAX.i823, align 8
  store i64 %1061, i64* %RCX.i1037, align 8
  %1062 = shl nuw nsw i64 %1061, 2
  %1063 = add nsw i64 %1062, -592
  %1064 = add i64 %1063, %1055
  %1065 = add i64 %1057, 12
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = zext i32 %1067 to i64
  store i64 %1068, i64* %RAX.i823, align 8
  %1069 = add i64 %1055, -740
  %1070 = add i64 %1057, 18
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  store i32 %1067, i32* %1071, align 4
  %1072 = load i64, i64* %RBP.i, align 8
  %1073 = add i64 %1072, -56
  %1074 = load i64, i64* %3, align 8
  %1075 = add i64 %1074, 3
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1073 to i32*
  %1077 = load i32, i32* %1076, align 4
  %1078 = zext i32 %1077 to i64
  store i64 %1078, i64* %RAX.i823, align 8
  store i64 %1078, i64* %RCX.i1037, align 8
  %1079 = shl nuw nsw i64 %1078, 2
  %1080 = add nsw i64 %1079, -592
  %1081 = add i64 %1080, %1072
  %1082 = add i64 %1074, 12
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i32*
  %1084 = load i32, i32* %1083, align 4
  %1085 = zext i32 %1084 to i64
  store i64 %1085, i64* %RAX.i823, align 8
  %1086 = add i64 %1072, -52
  %1087 = add i64 %1074, 15
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1086 to i32*
  %1089 = load i32, i32* %1088, align 4
  %1090 = zext i32 %1089 to i64
  store i64 %1090, i64* %RDX.i1040, align 8
  store i64 %1090, i64* %RCX.i1037, align 8
  %1091 = shl nuw nsw i64 %1090, 2
  %1092 = add nsw i64 %1091, -592
  %1093 = add i64 %1092, %1072
  %1094 = add i64 %1074, 24
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i32*
  store i32 %1084, i32* %1095, align 4
  %1096 = load i64, i64* %RBP.i, align 8
  %1097 = add i64 %1096, -740
  %1098 = load i64, i64* %3, align 8
  %1099 = add i64 %1098, 6
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1097 to i32*
  %1101 = load i32, i32* %1100, align 4
  %1102 = zext i32 %1101 to i64
  store i64 %1102, i64* %RAX.i823, align 8
  %1103 = add i64 %1096, -56
  %1104 = add i64 %1098, 9
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i32*
  %1106 = load i32, i32* %1105, align 4
  %1107 = zext i32 %1106 to i64
  store i64 %1107, i64* %RDX.i1040, align 8
  store i64 %1107, i64* %RCX.i1037, align 8
  %1108 = shl nuw nsw i64 %1107, 2
  %1109 = add nsw i64 %1108, -592
  %1110 = add i64 %1109, %1096
  %1111 = add i64 %1098, 18
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i32*
  store i32 %1101, i32* %1112, align 4
  %.pre69 = load i64, i64* %3, align 8
  %.pre70 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4a360d

block_.L_4a360d:                                  ; preds = %block_4a351d, %block_.L_4a3559, %block_4a353b
  %1113 = phi i64 [ %.pre70, %block_.L_4a3559 ], [ %771, %block_4a353b ], [ %771, %block_4a351d ]
  %1114 = phi i64 [ %.pre69, %block_.L_4a3559 ], [ %941, %block_4a353b ], [ %894, %block_4a351d ]
  %1115 = add i64 %1113, -56
  %1116 = add i64 %1114, 8
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to i32*
  %1118 = load i32, i32* %1117, align 4
  %1119 = add i32 %1118, 1
  %1120 = zext i32 %1119 to i64
  store i64 %1120, i64* %RAX.i823, align 8
  %1121 = icmp eq i32 %1118, -1
  %1122 = icmp eq i32 %1119, 0
  %1123 = or i1 %1121, %1122
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %14, align 1
  %1125 = and i32 %1119, 255
  %1126 = tail call i32 @llvm.ctpop.i32(i32 %1125)
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %21, align 1
  %1130 = xor i32 %1119, %1118
  %1131 = lshr i32 %1130, 4
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  store i8 %1133, i8* %26, align 1
  %1134 = zext i1 %1122 to i8
  store i8 %1134, i8* %29, align 1
  %1135 = lshr i32 %1119, 31
  %1136 = trunc i32 %1135 to i8
  store i8 %1136, i8* %32, align 1
  %1137 = lshr i32 %1118, 31
  %1138 = xor i32 %1135, %1137
  %1139 = add nuw nsw i32 %1138, %1135
  %1140 = icmp eq i32 %1139, 2
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %38, align 1
  %1142 = add i64 %1114, 14
  store i64 %1142, i64* %3, align 8
  store i32 %1119, i32* %1117, align 4
  %1143 = load i64, i64* %3, align 8
  %1144 = add i64 %1143, -300
  store i64 %1144, i64* %3, align 8
  br label %block_.L_4a34ef

block_.L_4a3620:                                  ; preds = %block_.L_4a34ef
  %1145 = add i64 %802, 8
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %803 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = add i32 %1147, 1
  %1149 = zext i32 %1148 to i64
  store i64 %1149, i64* %RAX.i823, align 8
  %1150 = icmp eq i32 %1147, -1
  %1151 = icmp eq i32 %1148, 0
  %1152 = or i1 %1150, %1151
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %14, align 1
  %1154 = and i32 %1148, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %21, align 1
  %1159 = xor i32 %1148, %1147
  %1160 = lshr i32 %1159, 4
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  store i8 %1162, i8* %26, align 1
  %1163 = zext i1 %1151 to i8
  store i8 %1163, i8* %29, align 1
  %1164 = lshr i32 %1148, 31
  %1165 = trunc i32 %1164 to i8
  store i8 %1165, i8* %32, align 1
  %1166 = lshr i32 %1147, 31
  %1167 = xor i32 %1164, %1166
  %1168 = add nuw nsw i32 %1167, %1164
  %1169 = icmp eq i32 %1168, 2
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %38, align 1
  %1171 = add i64 %802, 14
  store i64 %1171, i64* %3, align 8
  store i32 %1148, i32* %1146, align 4
  %1172 = load i64, i64* %3, align 8
  %1173 = add i64 %1172, -349
  store i64 %1173, i64* %3, align 8
  br label %block_.L_4a34d1

block_.L_4a3633:                                  ; preds = %block_.L_4a34d1
  %1174 = add i64 %708, -600
  %1175 = add i64 %741, 10
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1174 to i32*
  store i32 1, i32* %1176, align 4
  %1177 = load i64, i64* %RBP.i, align 8
  %1178 = add i64 %1177, -52
  %1179 = load i64, i64* %3, align 8
  %1180 = add i64 %1179, 7
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1178 to i32*
  store i32 0, i32* %1181, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_4a3644

block_.L_4a3644:                                  ; preds = %block_.L_4a3678, %block_.L_4a3633
  %1182 = phi i64 [ %1296, %block_.L_4a3678 ], [ %.pre71, %block_.L_4a3633 ]
  %1183 = load i64, i64* %RBP.i, align 8
  %1184 = add i64 %1183, -52
  %1185 = add i64 %1182, 3
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i32*
  %1187 = load i32, i32* %1186, align 4
  %1188 = zext i32 %1187 to i64
  store i64 %1188, i64* %RAX.i823, align 8
  %1189 = add i64 %1183, -12
  %1190 = add i64 %1182, 6
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i32*
  %1192 = load i32, i32* %1191, align 4
  %1193 = sub i32 %1187, %1192
  %1194 = icmp ult i32 %1187, %1192
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %14, align 1
  %1196 = and i32 %1193, 255
  %1197 = tail call i32 @llvm.ctpop.i32(i32 %1196)
  %1198 = trunc i32 %1197 to i8
  %1199 = and i8 %1198, 1
  %1200 = xor i8 %1199, 1
  store i8 %1200, i8* %21, align 1
  %1201 = xor i32 %1192, %1187
  %1202 = xor i32 %1201, %1193
  %1203 = lshr i32 %1202, 4
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  store i8 %1205, i8* %26, align 1
  %1206 = icmp eq i32 %1193, 0
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %29, align 1
  %1208 = lshr i32 %1193, 31
  %1209 = trunc i32 %1208 to i8
  store i8 %1209, i8* %32, align 1
  %1210 = lshr i32 %1187, 31
  %1211 = lshr i32 %1192, 31
  %1212 = xor i32 %1211, %1210
  %1213 = xor i32 %1208, %1210
  %1214 = add nuw nsw i32 %1213, %1212
  %1215 = icmp eq i32 %1214, 2
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %38, align 1
  %.v95 = select i1 %1194, i64 12, i64 71
  %1217 = add i64 %1182, %.v95
  store i64 %1217, i64* %3, align 8
  br i1 %1194, label %block_4a3650, label %block_.L_4a368b

block_4a3650:                                     ; preds = %block_.L_4a3644
  %1218 = add i64 %1217, 3
  store i64 %1218, i64* %3, align 8
  %1219 = load i32, i32* %1186, align 4
  %1220 = zext i32 %1219 to i64
  store i64 %1220, i64* %RAX.i823, align 8
  store i64 %1220, i64* %RCX.i1037, align 8
  %1221 = shl nuw nsw i64 %1220, 2
  %1222 = add nsw i64 %1221, -208
  %1223 = add i64 %1222, %1183
  %1224 = add i64 %1217, 12
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = zext i32 %1226 to i64
  store i64 %1227, i64* %RAX.i823, align 8
  %1228 = add i64 %1217, 15
  store i64 %1228, i64* %3, align 8
  %1229 = load i32, i32* %1186, align 4
  %1230 = zext i32 %1229 to i64
  store i64 %1230, i64* %RDX.i1040, align 8
  store i64 %1230, i64* %RCX.i1037, align 8
  %1231 = shl nuw nsw i64 %1230, 2
  %1232 = add nsw i64 %1231, -336
  %1233 = add i64 %1232, %1183
  %1234 = add i64 %1217, 24
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1233 to i32*
  %1236 = load i32, i32* %1235, align 4
  %1237 = sub i32 %1226, %1236
  %1238 = icmp ult i32 %1226, %1236
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %14, align 1
  %1240 = and i32 %1237, 255
  %1241 = tail call i32 @llvm.ctpop.i32(i32 %1240)
  %1242 = trunc i32 %1241 to i8
  %1243 = and i8 %1242, 1
  %1244 = xor i8 %1243, 1
  store i8 %1244, i8* %21, align 1
  %1245 = xor i32 %1236, %1226
  %1246 = xor i32 %1245, %1237
  %1247 = lshr i32 %1246, 4
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  store i8 %1249, i8* %26, align 1
  %1250 = icmp eq i32 %1237, 0
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %29, align 1
  %1252 = lshr i32 %1237, 31
  %1253 = trunc i32 %1252 to i8
  store i8 %1253, i8* %32, align 1
  %1254 = lshr i32 %1226, 31
  %1255 = lshr i32 %1236, 31
  %1256 = xor i32 %1255, %1254
  %1257 = xor i32 %1252, %1254
  %1258 = add nuw nsw i32 %1257, %1256
  %1259 = icmp eq i32 %1258, 2
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %38, align 1
  %.v103 = select i1 %1250, i64 40, i64 30
  %1261 = add i64 %1217, %.v103
  store i64 %1261, i64* %3, align 8
  br i1 %1250, label %block_.L_4a3678, label %block_4a366e

block_4a366e:                                     ; preds = %block_4a3650
  %1262 = add i64 %1183, -600
  %1263 = add i64 %1261, 10
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1262 to i32*
  store i32 0, i32* %1264, align 4
  %.pre72 = load i64, i64* %3, align 8
  %.pre73 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4a3678

block_.L_4a3678:                                  ; preds = %block_4a366e, %block_4a3650
  %1265 = phi i64 [ %.pre73, %block_4a366e ], [ %1183, %block_4a3650 ]
  %1266 = phi i64 [ %.pre72, %block_4a366e ], [ %1261, %block_4a3650 ]
  %1267 = add i64 %1265, -52
  %1268 = add i64 %1266, 8
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i32*
  %1270 = load i32, i32* %1269, align 4
  %1271 = add i32 %1270, 1
  %1272 = zext i32 %1271 to i64
  store i64 %1272, i64* %RAX.i823, align 8
  %1273 = icmp eq i32 %1270, -1
  %1274 = icmp eq i32 %1271, 0
  %1275 = or i1 %1273, %1274
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %14, align 1
  %1277 = and i32 %1271, 255
  %1278 = tail call i32 @llvm.ctpop.i32(i32 %1277)
  %1279 = trunc i32 %1278 to i8
  %1280 = and i8 %1279, 1
  %1281 = xor i8 %1280, 1
  store i8 %1281, i8* %21, align 1
  %1282 = xor i32 %1271, %1270
  %1283 = lshr i32 %1282, 4
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  store i8 %1285, i8* %26, align 1
  %1286 = zext i1 %1274 to i8
  store i8 %1286, i8* %29, align 1
  %1287 = lshr i32 %1271, 31
  %1288 = trunc i32 %1287 to i8
  store i8 %1288, i8* %32, align 1
  %1289 = lshr i32 %1270, 31
  %1290 = xor i32 %1287, %1289
  %1291 = add nuw nsw i32 %1290, %1287
  %1292 = icmp eq i32 %1291, 2
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %38, align 1
  %1294 = add i64 %1266, 14
  store i64 %1294, i64* %3, align 8
  store i32 %1271, i32* %1269, align 4
  %1295 = load i64, i64* %3, align 8
  %1296 = add i64 %1295, -66
  store i64 %1296, i64* %3, align 8
  br label %block_.L_4a3644

block_.L_4a368b:                                  ; preds = %block_.L_4a3644
  %1297 = add i64 %1183, -600
  %1298 = add i64 %1217, 7
  store i64 %1298, i64* %3, align 8
  %1299 = inttoptr i64 %1297 to i32*
  %1300 = load i32, i32* %1299, align 4
  store i8 0, i8* %14, align 1
  %1301 = and i32 %1300, 255
  %1302 = tail call i32 @llvm.ctpop.i32(i32 %1301)
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  %1305 = xor i8 %1304, 1
  store i8 %1305, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1306 = icmp eq i32 %1300, 0
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %29, align 1
  %1308 = lshr i32 %1300, 31
  %1309 = trunc i32 %1308 to i8
  store i8 %1309, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v96 = select i1 %1306, i64 13, i64 675
  %1310 = add i64 %1217, %.v96
  store i64 %1310, i64* %3, align 8
  br i1 %1306, label %block_4a3698, label %block_.L_4a392e

block_4a3698:                                     ; preds = %block_.L_4a368b
  %1311 = add i64 %1310, 7
  store i64 %1311, i64* %3, align 8
  store i32 0, i32* %1186, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_4a369f

block_.L_4a369f:                                  ; preds = %block_.L_4a3892, %block_4a3698
  %1312 = phi i64 [ %.pre74, %block_4a3698 ], [ %2139, %block_.L_4a3892 ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.2, %block_4a3698 ], [ %MEMORY.15, %block_.L_4a3892 ]
  %1313 = load i64, i64* %RBP.i, align 8
  %1314 = add i64 %1313, -52
  %1315 = add i64 %1312, 3
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1314 to i32*
  %1317 = load i32, i32* %1316, align 4
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RAX.i823, align 8
  %1319 = add i64 %1313, -12
  %1320 = add i64 %1312, 6
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1319 to i32*
  %1322 = load i32, i32* %1321, align 4
  %1323 = sub i32 %1317, %1322
  %1324 = icmp ult i32 %1317, %1322
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %14, align 1
  %1326 = and i32 %1323, 255
  %1327 = tail call i32 @llvm.ctpop.i32(i32 %1326)
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  %1330 = xor i8 %1329, 1
  store i8 %1330, i8* %21, align 1
  %1331 = xor i32 %1322, %1317
  %1332 = xor i32 %1331, %1323
  %1333 = lshr i32 %1332, 4
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  store i8 %1335, i8* %26, align 1
  %1336 = icmp eq i32 %1323, 0
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %29, align 1
  %1338 = lshr i32 %1323, 31
  %1339 = trunc i32 %1338 to i8
  store i8 %1339, i8* %32, align 1
  %1340 = lshr i32 %1317, 31
  %1341 = lshr i32 %1322, 31
  %1342 = xor i32 %1341, %1340
  %1343 = xor i32 %1338, %1340
  %1344 = add nuw nsw i32 %1343, %1342
  %1345 = icmp eq i32 %1344, 2
  %1346 = zext i1 %1345 to i8
  store i8 %1346, i8* %38, align 1
  %.v97 = select i1 %1324, i64 12, i64 518
  %1347 = add i64 %1312, %.v97
  store i64 %1347, i64* %3, align 8
  br i1 %1324, label %block_4a36ab, label %block_.L_4a38a5.loopexit

block_4a36ab:                                     ; preds = %block_.L_4a369f
  %1348 = add i64 %1347, 3
  store i64 %1348, i64* %3, align 8
  %1349 = load i32, i32* %1316, align 4
  %1350 = zext i32 %1349 to i64
  store i64 %1350, i64* %RAX.i823, align 8
  store i64 %1350, i64* %RCX.i1037, align 8
  %1351 = shl nuw nsw i64 %1350, 2
  %1352 = add nsw i64 %1351, -336
  %1353 = add i64 %1352, %1313
  %1354 = add i64 %1347, 12
  store i64 %1354, i64* %3, align 8
  %1355 = inttoptr i64 %1353 to i32*
  %1356 = load i32, i32* %1355, align 4
  %1357 = zext i32 %1356 to i64
  store i64 %1357, i64* %RAX.i823, align 8
  %1358 = add i64 %1313, -68
  %1359 = add i64 %1347, 15
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i32*
  %1361 = load i32, i32* %1360, align 4
  %1362 = sub i32 %1356, %1361
  %1363 = zext i32 %1362 to i64
  store i64 %1363, i64* %RAX.i823, align 8
  %1364 = icmp ult i32 %1356, %1361
  %1365 = zext i1 %1364 to i8
  store i8 %1365, i8* %14, align 1
  %1366 = and i32 %1362, 255
  %1367 = tail call i32 @llvm.ctpop.i32(i32 %1366)
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = xor i8 %1369, 1
  store i8 %1370, i8* %21, align 1
  %1371 = xor i32 %1361, %1356
  %1372 = xor i32 %1371, %1362
  %1373 = lshr i32 %1372, 4
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  store i8 %1375, i8* %26, align 1
  %1376 = icmp eq i32 %1362, 0
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %29, align 1
  %1378 = lshr i32 %1362, 31
  %1379 = trunc i32 %1378 to i8
  store i8 %1379, i8* %32, align 1
  %1380 = lshr i32 %1356, 31
  %1381 = lshr i32 %1361, 31
  %1382 = xor i32 %1381, %1380
  %1383 = xor i32 %1378, %1380
  %1384 = add nuw nsw i32 %1383, %1382
  %1385 = icmp eq i32 %1384, 2
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %38, align 1
  %1387 = add i64 %1313, -744
  %1388 = add i64 %1347, 21
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i32*
  store i32 %1362, i32* %1389, align 4
  %1390 = load i64, i64* %RBP.i, align 8
  %1391 = add i64 %1390, -744
  %1392 = load i64, i64* %3, align 8
  %1393 = add i64 %1392, 7
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1391 to i32*
  %1395 = load i32, i32* %1394, align 4
  store i8 0, i8* %14, align 1
  %1396 = and i32 %1395, 255
  %1397 = tail call i32 @llvm.ctpop.i32(i32 %1396)
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = xor i8 %1399, 1
  store i8 %1400, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1401 = icmp eq i32 %1395, 0
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %29, align 1
  %1403 = lshr i32 %1395, 31
  %1404 = trunc i32 %1403 to i8
  store i8 %1404, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1405 = xor i1 %1401, true
  %1406 = icmp eq i8 %1404, 0
  %1407 = and i1 %1406, %1405
  %.v87 = select i1 %1407, i64 100, i64 13
  %1408 = add i64 %1392, %.v87
  %1409 = add i64 %1390, -24
  %1410 = add i64 %1408, 4
  store i64 %1410, i64* %3, align 8
  %1411 = inttoptr i64 %1409 to i64*
  %1412 = load i64, i64* %1411, align 8
  store i64 %1412, i64* %RAX.i823, align 8
  %1413 = add i64 %1390, -52
  %1414 = add i64 %1408, 7
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1413 to i32*
  %1416 = load i32, i32* %1415, align 4
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RCX.i1037, align 8
  store i64 %1417, i64* %RDX.i1040, align 8
  %1418 = shl nuw nsw i64 %1417, 2
  %1419 = add i64 %1412, %1418
  %1420 = add i64 %1408, 16
  store i64 %1420, i64* %3, align 8
  %1421 = inttoptr i64 %1419 to i32*
  br i1 %1407, label %block_.L_4a3724, label %block_4a36cd

block_4a36cd:                                     ; preds = %block_4a36ab
  store i32 0, i32* %1421, align 4
  %1422 = load i64, i64* %RBP.i, align 8
  %1423 = add i64 %1422, -744
  %1424 = load i64, i64* %3, align 8
  %1425 = add i64 %1424, 6
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1423 to i32*
  %1427 = load i32, i32* %1426, align 4
  %1428 = zext i32 %1427 to i64
  store i64 %1428, i64* %RDI.i1046, align 8
  %1429 = add i64 %1424, -665309
  %1430 = add i64 %1424, 11
  %1431 = load i64, i64* %6, align 8
  %1432 = add i64 %1431, -8
  %1433 = inttoptr i64 %1432 to i64*
  store i64 %1430, i64* %1433, align 8
  store i64 %1432, i64* %6, align 8
  store i64 %1429, i64* %3, align 8
  %1434 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.13)
  %1435 = load i64, i64* %RAX.i823, align 8
  %1436 = load i64, i64* %3, align 8
  %1437 = trunc i64 %1435 to i32
  %1438 = add i32 %1437, -1
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RAX.i823, align 8
  %1440 = icmp eq i32 %1437, 0
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %14, align 1
  %1442 = and i32 %1438, 255
  %1443 = tail call i32 @llvm.ctpop.i32(i32 %1442)
  %1444 = trunc i32 %1443 to i8
  %1445 = and i8 %1444, 1
  %1446 = xor i8 %1445, 1
  store i8 %1446, i8* %21, align 1
  %1447 = xor i32 %1438, %1437
  %1448 = lshr i32 %1447, 4
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  store i8 %1450, i8* %26, align 1
  %1451 = icmp eq i32 %1438, 0
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %29, align 1
  %1453 = lshr i32 %1438, 31
  %1454 = trunc i32 %1453 to i8
  store i8 %1454, i8* %32, align 1
  %1455 = lshr i32 %1437, 31
  %1456 = xor i32 %1453, %1455
  %1457 = add nuw nsw i32 %1456, %1455
  %1458 = icmp eq i32 %1457, 2
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %38, align 1
  %1460 = load i64, i64* %RBP.i, align 8
  %1461 = add i64 %1460, -32
  %1462 = add i64 %1436, 7
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1461 to i64*
  %1464 = load i64, i64* %1463, align 8
  store i64 %1464, i64* %RDX.i1040, align 8
  %1465 = add i64 %1460, -52
  %1466 = add i64 %1436, 10
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1465 to i32*
  %1468 = load i32, i32* %1467, align 4
  %1469 = zext i32 %1468 to i64
  store i64 %1469, i64* %RCX.i1037, align 8
  store i64 %1469, i64* %RSI.i946, align 8
  %1470 = shl nuw nsw i64 %1469, 2
  %1471 = add i64 %1464, %1470
  %1472 = add i64 %1436, 15
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1471 to i32*
  store i32 %1438, i32* %1473, align 4
  %1474 = load i64, i64* %RBP.i, align 8
  %1475 = add i64 %1474, -32
  %1476 = load i64, i64* %3, align 8
  %1477 = add i64 %1476, 4
  store i64 %1477, i64* %3, align 8
  %1478 = inttoptr i64 %1475 to i64*
  %1479 = load i64, i64* %1478, align 8
  store i64 %1479, i64* %RDX.i1040, align 8
  %1480 = add i64 %1474, -52
  %1481 = add i64 %1476, 7
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1480 to i32*
  %1483 = load i32, i32* %1482, align 4
  %1484 = zext i32 %1483 to i64
  store i64 %1484, i64* %RAX.i823, align 8
  store i64 %1484, i64* %RSI.i946, align 8
  %1485 = shl nuw nsw i64 %1484, 2
  %1486 = add i64 %1479, %1485
  %1487 = add i64 %1476, 13
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1486 to i32*
  %1489 = load i32, i32* %1488, align 4
  store i8 0, i8* %14, align 1
  %1490 = and i32 %1489, 255
  %1491 = tail call i32 @llvm.ctpop.i32(i32 %1490)
  %1492 = trunc i32 %1491 to i8
  %1493 = and i8 %1492, 1
  %1494 = xor i8 %1493, 1
  store i8 %1494, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1495 = icmp eq i32 %1489, 0
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %29, align 1
  %1497 = lshr i32 %1489, 31
  %1498 = trunc i32 %1497 to i8
  store i8 %1498, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1499 = icmp ne i8 %1498, 0
  %.v = select i1 %1499, i64 6, i64 27
  %1500 = add i64 %1487, %.v
  store i64 %1500, i64* %3, align 8
  br i1 %1499, label %block_4a370a, label %block_.L_4a371f

block_4a370a:                                     ; preds = %block_4a36cd
  %1501 = add i64 %1474, -752
  %1502 = add i64 %1500, 6
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i32*
  %1504 = load i32, i32* %1503, align 4
  %1505 = add i32 %1504, -1
  %1506 = zext i32 %1505 to i64
  store i64 %1506, i64* %RAX.i823, align 8
  %1507 = icmp eq i32 %1504, 0
  %1508 = zext i1 %1507 to i8
  store i8 %1508, i8* %14, align 1
  %1509 = and i32 %1505, 255
  %1510 = tail call i32 @llvm.ctpop.i32(i32 %1509)
  %1511 = trunc i32 %1510 to i8
  %1512 = and i8 %1511, 1
  %1513 = xor i8 %1512, 1
  store i8 %1513, i8* %21, align 1
  %1514 = xor i32 %1505, %1504
  %1515 = lshr i32 %1514, 4
  %1516 = trunc i32 %1515 to i8
  %1517 = and i8 %1516, 1
  store i8 %1517, i8* %26, align 1
  %1518 = icmp eq i32 %1505, 0
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %29, align 1
  %1520 = lshr i32 %1505, 31
  %1521 = trunc i32 %1520 to i8
  store i8 %1521, i8* %32, align 1
  %1522 = lshr i32 %1504, 31
  %1523 = xor i32 %1520, %1522
  %1524 = add nuw nsw i32 %1523, %1522
  %1525 = icmp eq i32 %1524, 2
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %38, align 1
  %1527 = add i64 %1500, 13
  store i64 %1527, i64* %3, align 8
  %1528 = load i64, i64* %1478, align 8
  store i64 %1528, i64* %RCX.i1037, align 8
  %1529 = add i64 %1500, 16
  store i64 %1529, i64* %3, align 8
  %1530 = load i32, i32* %1482, align 4
  %1531 = zext i32 %1530 to i64
  store i64 %1531, i64* %RDX.i1040, align 8
  store i64 %1531, i64* %RSI.i946, align 8
  %1532 = shl nuw nsw i64 %1531, 2
  %1533 = add i64 %1528, %1532
  %1534 = add i64 %1500, 21
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  store i32 %1505, i32* %1535, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_4a371f

block_.L_4a371f:                                  ; preds = %block_4a36cd, %block_4a370a
  %1536 = phi i64 [ %1500, %block_4a36cd ], [ %.pre75, %block_4a370a ]
  %1537 = add i64 %1536, 47
  store i64 %1537, i64* %3, align 8
  br label %block_.L_4a374e

block_.L_4a3724:                                  ; preds = %block_4a36ab
  store i32 1, i32* %1421, align 4
  %1538 = load i64, i64* %RBP.i, align 8
  %1539 = add i64 %1538, -744
  %1540 = load i64, i64* %3, align 8
  %1541 = add i64 %1540, 6
  store i64 %1541, i64* %3, align 8
  %1542 = inttoptr i64 %1539 to i32*
  %1543 = load i32, i32* %1542, align 4
  %1544 = zext i32 %1543 to i64
  store i64 %1544, i64* %RDI.i1046, align 8
  %1545 = add i64 %1540, -665396
  %1546 = add i64 %1540, 11
  %1547 = load i64, i64* %6, align 8
  %1548 = add i64 %1547, -8
  %1549 = inttoptr i64 %1548 to i64*
  store i64 %1546, i64* %1549, align 8
  store i64 %1548, i64* %6, align 8
  store i64 %1545, i64* %3, align 8
  %1550 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.13)
  %1551 = load i64, i64* %RAX.i823, align 8
  %1552 = load i64, i64* %3, align 8
  %1553 = trunc i64 %1551 to i32
  %1554 = add i32 %1553, -1
  %1555 = zext i32 %1554 to i64
  store i64 %1555, i64* %RAX.i823, align 8
  %1556 = icmp eq i32 %1553, 0
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %14, align 1
  %1558 = and i32 %1554, 255
  %1559 = tail call i32 @llvm.ctpop.i32(i32 %1558)
  %1560 = trunc i32 %1559 to i8
  %1561 = and i8 %1560, 1
  %1562 = xor i8 %1561, 1
  store i8 %1562, i8* %21, align 1
  %1563 = xor i32 %1554, %1553
  %1564 = lshr i32 %1563, 4
  %1565 = trunc i32 %1564 to i8
  %1566 = and i8 %1565, 1
  store i8 %1566, i8* %26, align 1
  %1567 = icmp eq i32 %1554, 0
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %29, align 1
  %1569 = lshr i32 %1554, 31
  %1570 = trunc i32 %1569 to i8
  store i8 %1570, i8* %32, align 1
  %1571 = lshr i32 %1553, 31
  %1572 = xor i32 %1569, %1571
  %1573 = add nuw nsw i32 %1572, %1571
  %1574 = icmp eq i32 %1573, 2
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %38, align 1
  %1576 = load i64, i64* %RBP.i, align 8
  %1577 = add i64 %1576, -32
  %1578 = add i64 %1552, 7
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1577 to i64*
  %1580 = load i64, i64* %1579, align 8
  store i64 %1580, i64* %RDX.i1040, align 8
  %1581 = add i64 %1576, -52
  %1582 = add i64 %1552, 10
  store i64 %1582, i64* %3, align 8
  %1583 = inttoptr i64 %1581 to i32*
  %1584 = load i32, i32* %1583, align 4
  %1585 = zext i32 %1584 to i64
  store i64 %1585, i64* %RCX.i1037, align 8
  store i64 %1585, i64* %RSI.i946, align 8
  %1586 = shl nuw nsw i64 %1585, 2
  %1587 = add i64 %1580, %1586
  %1588 = add i64 %1552, 15
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1587 to i32*
  store i32 %1554, i32* %1589, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_4a374e

block_.L_4a374e:                                  ; preds = %block_.L_4a3724, %block_.L_4a371f
  %1590 = phi i64 [ %.pre76, %block_.L_4a3724 ], [ %1537, %block_.L_4a371f ]
  %MEMORY.15 = phi %struct.Memory* [ %1550, %block_.L_4a3724 ], [ %1434, %block_.L_4a371f ]
  %1591 = load i64, i64* %RBP.i, align 8
  %1592 = add i64 %1591, -52
  %1593 = add i64 %1590, 3
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1592 to i32*
  %1595 = load i32, i32* %1594, align 4
  %1596 = zext i32 %1595 to i64
  store i64 %1596, i64* %RAX.i823, align 8
  store i64 %1596, i64* %RCX.i1037, align 8
  %1597 = shl nuw nsw i64 %1596, 2
  %1598 = add nsw i64 %1597, -336
  %1599 = add i64 %1598, %1591
  %1600 = add i64 %1590, 12
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i32*
  %1602 = load i32, i32* %1601, align 4
  %1603 = zext i32 %1602 to i64
  store i64 %1603, i64* %RAX.i823, align 8
  %1604 = add i64 %1591, -68
  %1605 = add i64 %1590, 15
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i32*
  store i32 %1602, i32* %1606, align 4
  %1607 = load i64, i64* %RBP.i, align 8
  %1608 = add i64 %1607, -52
  %1609 = load i64, i64* %3, align 8
  %1610 = add i64 %1609, 3
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1608 to i32*
  %1612 = load i32, i32* %1611, align 4
  %1613 = zext i32 %1612 to i64
  store i64 %1613, i64* %RAX.i823, align 8
  store i64 %1613, i64* %RCX.i1037, align 8
  %1614 = shl nuw nsw i64 %1613, 2
  %1615 = add nsw i64 %1614, -336
  %1616 = add i64 %1615, %1607
  %1617 = add i64 %1609, 12
  store i64 %1617, i64* %3, align 8
  %1618 = inttoptr i64 %1616 to i32*
  %1619 = load i32, i32* %1618, align 4
  %1620 = zext i32 %1619 to i64
  store i64 %1620, i64* %RAX.i823, align 8
  %1621 = add i64 %1609, 15
  store i64 %1621, i64* %3, align 8
  %1622 = load i32, i32* %1611, align 4
  %1623 = zext i32 %1622 to i64
  store i64 %1623, i64* %RDX.i1040, align 8
  store i64 %1623, i64* %RCX.i1037, align 8
  %1624 = shl nuw nsw i64 %1623, 2
  %1625 = add nsw i64 %1624, -464
  %1626 = add i64 %1625, %1607
  %1627 = add i64 %1609, 24
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1626 to i32*
  store i32 %1619, i32* %1628, align 4
  %1629 = load i64, i64* %RBP.i, align 8
  %1630 = add i64 %1629, -52
  %1631 = load i64, i64* %3, align 8
  %1632 = add i64 %1631, 3
  store i64 %1632, i64* %3, align 8
  %1633 = inttoptr i64 %1630 to i32*
  %1634 = load i32, i32* %1633, align 4
  %1635 = zext i32 %1634 to i64
  store i64 %1635, i64* %RAX.i823, align 8
  %1636 = add i64 %1629, -60
  %1637 = add i64 %1631, 6
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i32*
  store i32 %1634, i32* %1638, align 4
  %1639 = load i64, i64* %RBP.i, align 8
  %1640 = add i64 %1639, -52
  %1641 = load i64, i64* %3, align 8
  %1642 = add i64 %1641, 3
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1640 to i32*
  %1644 = load i32, i32* %1643, align 4
  %1645 = zext i32 %1644 to i64
  store i64 %1645, i64* %RAX.i823, align 8
  %1646 = add i64 %1639, -56
  %1647 = add i64 %1641, 6
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1646 to i32*
  store i32 %1644, i32* %1648, align 4
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_4a3781

block_.L_4a3781:                                  ; preds = %block_.L_4a37cc, %block_.L_4a374e
  %1649 = phi i64 [ %1814, %block_.L_4a37cc ], [ %.pre77, %block_.L_4a374e ]
  %1650 = load i64, i64* %RBP.i, align 8
  %1651 = add i64 %1650, -56
  %1652 = add i64 %1649, 3
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1651 to i32*
  %1654 = load i32, i32* %1653, align 4
  %1655 = zext i32 %1654 to i64
  store i64 %1655, i64* %RAX.i823, align 8
  %1656 = add i64 %1650, -12
  %1657 = add i64 %1649, 6
  store i64 %1657, i64* %3, align 8
  %1658 = inttoptr i64 %1656 to i32*
  %1659 = load i32, i32* %1658, align 4
  %1660 = sub i32 %1654, %1659
  %1661 = icmp ult i32 %1654, %1659
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %14, align 1
  %1663 = and i32 %1660, 255
  %1664 = tail call i32 @llvm.ctpop.i32(i32 %1663)
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  %1667 = xor i8 %1666, 1
  store i8 %1667, i8* %21, align 1
  %1668 = xor i32 %1659, %1654
  %1669 = xor i32 %1668, %1660
  %1670 = lshr i32 %1669, 4
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  store i8 %1672, i8* %26, align 1
  %1673 = icmp eq i32 %1660, 0
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %29, align 1
  %1675 = lshr i32 %1660, 31
  %1676 = trunc i32 %1675 to i8
  store i8 %1676, i8* %32, align 1
  %1677 = lshr i32 %1654, 31
  %1678 = lshr i32 %1659, 31
  %1679 = xor i32 %1678, %1677
  %1680 = xor i32 %1675, %1677
  %1681 = add nuw nsw i32 %1680, %1679
  %1682 = icmp eq i32 %1681, 2
  %1683 = zext i1 %1682 to i8
  store i8 %1683, i8* %38, align 1
  %.v100 = select i1 %1661, i64 12, i64 94
  %1684 = add i64 %1649, %.v100
  store i64 %1684, i64* %3, align 8
  br i1 %1661, label %block_4a378d, label %block_.L_4a37df

block_4a378d:                                     ; preds = %block_.L_4a3781
  %1685 = add i64 %1684, 3
  store i64 %1685, i64* %3, align 8
  %1686 = load i32, i32* %1653, align 4
  %1687 = zext i32 %1686 to i64
  store i64 %1687, i64* %RAX.i823, align 8
  store i64 %1687, i64* %RCX.i1037, align 8
  %1688 = shl nuw nsw i64 %1687, 2
  %1689 = add nsw i64 %1688, -208
  %1690 = add i64 %1689, %1650
  %1691 = add i64 %1684, 12
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1690 to i32*
  %1693 = load i32, i32* %1692, align 4
  %1694 = zext i32 %1693 to i64
  store i64 %1694, i64* %RAX.i823, align 8
  %1695 = add i64 %1650, -52
  %1696 = add i64 %1684, 15
  store i64 %1696, i64* %3, align 8
  %1697 = inttoptr i64 %1695 to i32*
  %1698 = load i32, i32* %1697, align 4
  %1699 = zext i32 %1698 to i64
  store i64 %1699, i64* %RDX.i1040, align 8
  store i64 %1699, i64* %RCX.i1037, align 8
  %1700 = shl nuw nsw i64 %1699, 2
  %1701 = add nsw i64 %1700, -336
  %1702 = add i64 %1701, %1650
  %1703 = add i64 %1684, 24
  store i64 %1703, i64* %3, align 8
  %1704 = inttoptr i64 %1702 to i32*
  %1705 = load i32, i32* %1704, align 4
  %1706 = sub i32 %1693, %1705
  %1707 = icmp ult i32 %1693, %1705
  %1708 = zext i1 %1707 to i8
  store i8 %1708, i8* %14, align 1
  %1709 = and i32 %1706, 255
  %1710 = tail call i32 @llvm.ctpop.i32(i32 %1709)
  %1711 = trunc i32 %1710 to i8
  %1712 = and i8 %1711, 1
  %1713 = xor i8 %1712, 1
  store i8 %1713, i8* %21, align 1
  %1714 = xor i32 %1705, %1693
  %1715 = xor i32 %1714, %1706
  %1716 = lshr i32 %1715, 4
  %1717 = trunc i32 %1716 to i8
  %1718 = and i8 %1717, 1
  store i8 %1718, i8* %26, align 1
  %1719 = icmp eq i32 %1706, 0
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %29, align 1
  %1721 = lshr i32 %1706, 31
  %1722 = trunc i32 %1721 to i8
  store i8 %1722, i8* %32, align 1
  %1723 = lshr i32 %1693, 31
  %1724 = lshr i32 %1705, 31
  %1725 = xor i32 %1724, %1723
  %1726 = xor i32 %1721, %1723
  %1727 = add nuw nsw i32 %1726, %1725
  %1728 = icmp eq i32 %1727, 2
  %1729 = zext i1 %1728 to i8
  store i8 %1729, i8* %38, align 1
  %.v102 = select i1 %1719, i64 63, i64 30
  %1730 = add i64 %1684, %.v102
  store i64 %1730, i64* %3, align 8
  br i1 %1719, label %block_.L_4a37cc, label %block_4a37ab

block_4a37ab:                                     ; preds = %block_4a378d
  %1731 = add i64 %1650, -60
  %1732 = add i64 %1730, 3
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to i32*
  %1734 = load i32, i32* %1733, align 4
  %1735 = add i32 %1734, 1
  %1736 = zext i32 %1735 to i64
  store i64 %1736, i64* %RAX.i823, align 8
  %1737 = icmp eq i32 %1734, -1
  %1738 = icmp eq i32 %1735, 0
  %1739 = or i1 %1737, %1738
  %1740 = zext i1 %1739 to i8
  store i8 %1740, i8* %14, align 1
  %1741 = and i32 %1735, 255
  %1742 = tail call i32 @llvm.ctpop.i32(i32 %1741)
  %1743 = trunc i32 %1742 to i8
  %1744 = and i8 %1743, 1
  %1745 = xor i8 %1744, 1
  store i8 %1745, i8* %21, align 1
  %1746 = xor i32 %1735, %1734
  %1747 = lshr i32 %1746, 4
  %1748 = trunc i32 %1747 to i8
  %1749 = and i8 %1748, 1
  store i8 %1749, i8* %26, align 1
  %1750 = zext i1 %1738 to i8
  store i8 %1750, i8* %29, align 1
  %1751 = lshr i32 %1735, 31
  %1752 = trunc i32 %1751 to i8
  store i8 %1752, i8* %32, align 1
  %1753 = lshr i32 %1734, 31
  %1754 = xor i32 %1751, %1753
  %1755 = add nuw nsw i32 %1754, %1751
  %1756 = icmp eq i32 %1755, 2
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %38, align 1
  %1758 = add i64 %1730, 9
  store i64 %1758, i64* %3, align 8
  store i32 %1735, i32* %1733, align 4
  %1759 = load i64, i64* %RBP.i, align 8
  %1760 = add i64 %1759, -56
  %1761 = load i64, i64* %3, align 8
  %1762 = add i64 %1761, 3
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1760 to i32*
  %1764 = load i32, i32* %1763, align 4
  %1765 = zext i32 %1764 to i64
  store i64 %1765, i64* %RAX.i823, align 8
  store i64 %1765, i64* %RCX.i1037, align 8
  %1766 = shl nuw nsw i64 %1765, 2
  %1767 = add nsw i64 %1766, -208
  %1768 = add i64 %1767, %1759
  %1769 = add i64 %1761, 12
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1768 to i32*
  %1771 = load i32, i32* %1770, align 4
  %1772 = zext i32 %1771 to i64
  store i64 %1772, i64* %RAX.i823, align 8
  %1773 = add i64 %1759, -60
  %1774 = add i64 %1761, 15
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to i32*
  %1776 = load i32, i32* %1775, align 4
  %1777 = zext i32 %1776 to i64
  store i64 %1777, i64* %RDX.i1040, align 8
  store i64 %1777, i64* %RCX.i1037, align 8
  %1778 = shl nuw nsw i64 %1777, 2
  %1779 = add nsw i64 %1778, -464
  %1780 = add i64 %1779, %1759
  %1781 = add i64 %1761, 24
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1780 to i32*
  store i32 %1771, i32* %1782, align 4
  %.pre78 = load i64, i64* %3, align 8
  %.pre79 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4a37cc

block_.L_4a37cc:                                  ; preds = %block_4a37ab, %block_4a378d
  %1783 = phi i64 [ %.pre79, %block_4a37ab ], [ %1650, %block_4a378d ]
  %1784 = phi i64 [ %.pre78, %block_4a37ab ], [ %1730, %block_4a378d ]
  %1785 = add i64 %1783, -56
  %1786 = add i64 %1784, 8
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1785 to i32*
  %1788 = load i32, i32* %1787, align 4
  %1789 = add i32 %1788, 1
  %1790 = zext i32 %1789 to i64
  store i64 %1790, i64* %RAX.i823, align 8
  %1791 = icmp eq i32 %1788, -1
  %1792 = icmp eq i32 %1789, 0
  %1793 = or i1 %1791, %1792
  %1794 = zext i1 %1793 to i8
  store i8 %1794, i8* %14, align 1
  %1795 = and i32 %1789, 255
  %1796 = tail call i32 @llvm.ctpop.i32(i32 %1795)
  %1797 = trunc i32 %1796 to i8
  %1798 = and i8 %1797, 1
  %1799 = xor i8 %1798, 1
  store i8 %1799, i8* %21, align 1
  %1800 = xor i32 %1789, %1788
  %1801 = lshr i32 %1800, 4
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  store i8 %1803, i8* %26, align 1
  %1804 = zext i1 %1792 to i8
  store i8 %1804, i8* %29, align 1
  %1805 = lshr i32 %1789, 31
  %1806 = trunc i32 %1805 to i8
  store i8 %1806, i8* %32, align 1
  %1807 = lshr i32 %1788, 31
  %1808 = xor i32 %1805, %1807
  %1809 = add nuw nsw i32 %1808, %1805
  %1810 = icmp eq i32 %1809, 2
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %38, align 1
  %1812 = add i64 %1784, 14
  store i64 %1812, i64* %3, align 8
  store i32 %1789, i32* %1787, align 4
  %1813 = load i64, i64* %3, align 8
  %1814 = add i64 %1813, -89
  store i64 %1814, i64* %3, align 8
  br label %block_.L_4a3781

block_.L_4a37df:                                  ; preds = %block_.L_4a3781
  %1815 = add i64 %1650, -596
  %1816 = add i64 %1684, 10
  store i64 %1816, i64* %3, align 8
  %1817 = inttoptr i64 %1815 to i32*
  store i32 1, i32* %1817, align 4
  %1818 = load i64, i64* %RBP.i, align 8
  %1819 = add i64 %1818, -52
  %1820 = load i64, i64* %3, align 8
  %1821 = add i64 %1820, 3
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1819 to i32*
  %1823 = load i32, i32* %1822, align 4
  %1824 = add i32 %1823, 1
  %1825 = zext i32 %1824 to i64
  store i64 %1825, i64* %RAX.i823, align 8
  %1826 = icmp eq i32 %1823, -1
  %1827 = icmp eq i32 %1824, 0
  %1828 = or i1 %1826, %1827
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %14, align 1
  %1830 = and i32 %1824, 255
  %1831 = tail call i32 @llvm.ctpop.i32(i32 %1830)
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  %1834 = xor i8 %1833, 1
  store i8 %1834, i8* %21, align 1
  %1835 = xor i32 %1824, %1823
  %1836 = lshr i32 %1835, 4
  %1837 = trunc i32 %1836 to i8
  %1838 = and i8 %1837, 1
  store i8 %1838, i8* %26, align 1
  %1839 = zext i1 %1827 to i8
  store i8 %1839, i8* %29, align 1
  %1840 = lshr i32 %1824, 31
  %1841 = trunc i32 %1840 to i8
  store i8 %1841, i8* %32, align 1
  %1842 = lshr i32 %1823, 31
  %1843 = xor i32 %1840, %1842
  %1844 = add nuw nsw i32 %1843, %1840
  %1845 = icmp eq i32 %1844, 2
  %1846 = zext i1 %1845 to i8
  store i8 %1846, i8* %38, align 1
  %1847 = add i64 %1818, -56
  %1848 = add i64 %1820, 9
  store i64 %1848, i64* %3, align 8
  %1849 = inttoptr i64 %1847 to i32*
  store i32 %1824, i32* %1849, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_4a37f2

block_.L_4a37f2:                                  ; preds = %block_.L_4a382b, %block_.L_4a37df
  %1850 = phi i64 [ %1962, %block_.L_4a382b ], [ %.pre80, %block_.L_4a37df ]
  %1851 = load i64, i64* %RBP.i, align 8
  %1852 = add i64 %1851, -56
  %1853 = add i64 %1850, 3
  store i64 %1853, i64* %3, align 8
  %1854 = inttoptr i64 %1852 to i32*
  %1855 = load i32, i32* %1854, align 4
  %1856 = zext i32 %1855 to i64
  store i64 %1856, i64* %RAX.i823, align 8
  %1857 = add i64 %1851, -12
  %1858 = add i64 %1850, 6
  store i64 %1858, i64* %3, align 8
  %1859 = inttoptr i64 %1857 to i32*
  %1860 = load i32, i32* %1859, align 4
  %1861 = sub i32 %1855, %1860
  %1862 = icmp ult i32 %1855, %1860
  %1863 = zext i1 %1862 to i8
  store i8 %1863, i8* %14, align 1
  %1864 = and i32 %1861, 255
  %1865 = tail call i32 @llvm.ctpop.i32(i32 %1864)
  %1866 = trunc i32 %1865 to i8
  %1867 = and i8 %1866, 1
  %1868 = xor i8 %1867, 1
  store i8 %1868, i8* %21, align 1
  %1869 = xor i32 %1860, %1855
  %1870 = xor i32 %1869, %1861
  %1871 = lshr i32 %1870, 4
  %1872 = trunc i32 %1871 to i8
  %1873 = and i8 %1872, 1
  store i8 %1873, i8* %26, align 1
  %1874 = icmp eq i32 %1861, 0
  %1875 = zext i1 %1874 to i8
  store i8 %1875, i8* %29, align 1
  %1876 = lshr i32 %1861, 31
  %1877 = trunc i32 %1876 to i8
  store i8 %1877, i8* %32, align 1
  %1878 = lshr i32 %1855, 31
  %1879 = lshr i32 %1860, 31
  %1880 = xor i32 %1879, %1878
  %1881 = xor i32 %1876, %1878
  %1882 = add nuw nsw i32 %1881, %1880
  %1883 = icmp eq i32 %1882, 2
  %1884 = zext i1 %1883 to i8
  store i8 %1884, i8* %38, align 1
  %.v90 = select i1 %1862, i64 12, i64 76
  %1885 = add i64 %1850, %.v90
  store i64 %1885, i64* %3, align 8
  br i1 %1862, label %block_4a37fe, label %block_.L_4a383e.loopexit

block_4a37fe:                                     ; preds = %block_.L_4a37f2
  %1886 = add i64 %1885, 3
  store i64 %1886, i64* %3, align 8
  %1887 = load i32, i32* %1854, align 4
  %1888 = zext i32 %1887 to i64
  store i64 %1888, i64* %RAX.i823, align 8
  store i64 %1888, i64* %RCX.i1037, align 8
  %1889 = shl nuw nsw i64 %1888, 2
  %1890 = add nsw i64 %1889, -464
  %1891 = add i64 %1890, %1851
  %1892 = add i64 %1885, 12
  store i64 %1892, i64* %3, align 8
  %1893 = inttoptr i64 %1891 to i32*
  %1894 = load i32, i32* %1893, align 4
  %1895 = zext i32 %1894 to i64
  store i64 %1895, i64* %RAX.i823, align 8
  %1896 = add i64 %1885, 15
  store i64 %1896, i64* %3, align 8
  %1897 = load i32, i32* %1854, align 4
  %1898 = zext i32 %1897 to i64
  store i64 %1898, i64* %RDX.i1040, align 8
  store i64 %1898, i64* %RCX.i1037, align 8
  %1899 = shl nuw nsw i64 %1898, 2
  %1900 = add nsw i64 %1899, -336
  %1901 = add i64 %1900, %1851
  %1902 = add i64 %1885, 24
  store i64 %1902, i64* %3, align 8
  %1903 = inttoptr i64 %1901 to i32*
  %1904 = load i32, i32* %1903, align 4
  %1905 = sub i32 %1894, %1904
  %1906 = icmp ult i32 %1894, %1904
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %14, align 1
  %1908 = and i32 %1905, 255
  %1909 = tail call i32 @llvm.ctpop.i32(i32 %1908)
  %1910 = trunc i32 %1909 to i8
  %1911 = and i8 %1910, 1
  %1912 = xor i8 %1911, 1
  store i8 %1912, i8* %21, align 1
  %1913 = xor i32 %1904, %1894
  %1914 = xor i32 %1913, %1905
  %1915 = lshr i32 %1914, 4
  %1916 = trunc i32 %1915 to i8
  %1917 = and i8 %1916, 1
  store i8 %1917, i8* %26, align 1
  %1918 = icmp eq i32 %1905, 0
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %29, align 1
  %1920 = lshr i32 %1905, 31
  %1921 = trunc i32 %1920 to i8
  store i8 %1921, i8* %32, align 1
  %1922 = lshr i32 %1894, 31
  %1923 = lshr i32 %1904, 31
  %1924 = xor i32 %1923, %1922
  %1925 = xor i32 %1920, %1922
  %1926 = add nuw nsw i32 %1925, %1924
  %1927 = icmp eq i32 %1926, 2
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %38, align 1
  %.v89 = select i1 %1918, i64 45, i64 30
  %1929 = add i64 %1885, %.v89
  store i64 %1929, i64* %3, align 8
  br i1 %1918, label %block_.L_4a382b, label %block_4a381c

block_4a381c:                                     ; preds = %block_4a37fe
  %1930 = add i64 %1851, -596
  %1931 = add i64 %1929, 10
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1930 to i32*
  store i32 0, i32* %1932, align 4
  %1933 = load i64, i64* %3, align 8
  %1934 = add i64 %1933, 24
  store i64 %1934, i64* %3, align 8
  %.pre81 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4a383e

block_.L_4a382b:                                  ; preds = %block_4a37fe
  %1935 = add i64 %1929, 8
  store i64 %1935, i64* %3, align 8
  %1936 = load i32, i32* %1854, align 4
  %1937 = add i32 %1936, 1
  %1938 = zext i32 %1937 to i64
  store i64 %1938, i64* %RAX.i823, align 8
  %1939 = icmp eq i32 %1936, -1
  %1940 = icmp eq i32 %1937, 0
  %1941 = or i1 %1939, %1940
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %14, align 1
  %1943 = and i32 %1937, 255
  %1944 = tail call i32 @llvm.ctpop.i32(i32 %1943)
  %1945 = trunc i32 %1944 to i8
  %1946 = and i8 %1945, 1
  %1947 = xor i8 %1946, 1
  store i8 %1947, i8* %21, align 1
  %1948 = xor i32 %1937, %1936
  %1949 = lshr i32 %1948, 4
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  store i8 %1951, i8* %26, align 1
  %1952 = zext i1 %1940 to i8
  store i8 %1952, i8* %29, align 1
  %1953 = lshr i32 %1937, 31
  %1954 = trunc i32 %1953 to i8
  store i8 %1954, i8* %32, align 1
  %1955 = lshr i32 %1936, 31
  %1956 = xor i32 %1953, %1955
  %1957 = add nuw nsw i32 %1956, %1953
  %1958 = icmp eq i32 %1957, 2
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %38, align 1
  %1960 = add i64 %1929, 14
  store i64 %1960, i64* %3, align 8
  store i32 %1937, i32* %1854, align 4
  %1961 = load i64, i64* %3, align 8
  %1962 = add i64 %1961, -71
  store i64 %1962, i64* %3, align 8
  br label %block_.L_4a37f2

block_.L_4a383e.loopexit:                         ; preds = %block_.L_4a37f2
  br label %block_.L_4a383e

block_.L_4a383e:                                  ; preds = %block_.L_4a383e.loopexit, %block_4a381c
  %1963 = phi i64 [ %1934, %block_4a381c ], [ %1885, %block_.L_4a383e.loopexit ]
  %1964 = phi i64 [ %.pre81, %block_4a381c ], [ %1851, %block_.L_4a383e.loopexit ]
  %1965 = add i64 %1964, -596
  %1966 = add i64 %1963, 7
  store i64 %1966, i64* %3, align 8
  %1967 = inttoptr i64 %1965 to i32*
  %1968 = load i32, i32* %1967, align 4
  %1969 = add i32 %1968, -1
  %1970 = icmp eq i32 %1968, 0
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %14, align 1
  %1972 = and i32 %1969, 255
  %1973 = tail call i32 @llvm.ctpop.i32(i32 %1972)
  %1974 = trunc i32 %1973 to i8
  %1975 = and i8 %1974, 1
  %1976 = xor i8 %1975, 1
  store i8 %1976, i8* %21, align 1
  %1977 = xor i32 %1969, %1968
  %1978 = lshr i32 %1977, 4
  %1979 = trunc i32 %1978 to i8
  %1980 = and i8 %1979, 1
  store i8 %1980, i8* %26, align 1
  %1981 = icmp eq i32 %1969, 0
  %1982 = zext i1 %1981 to i8
  store i8 %1982, i8* %29, align 1
  %1983 = lshr i32 %1969, 31
  %1984 = trunc i32 %1983 to i8
  store i8 %1984, i8* %32, align 1
  %1985 = lshr i32 %1968, 31
  %1986 = xor i32 %1983, %1985
  %1987 = add nuw nsw i32 %1986, %1985
  %1988 = icmp eq i32 %1987, 2
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %38, align 1
  %.v101 = select i1 %1981, i64 13, i64 27
  %1990 = add i64 %1963, %.v101
  store i64 %1990, i64* %3, align 8
  br i1 %1981, label %block_4a384b, label %block_.L_4a3859

block_4a384b:                                     ; preds = %block_.L_4a383e
  %1991 = add i64 %1964, -52
  %1992 = add i64 %1990, 3
  store i64 %1992, i64* %3, align 8
  %1993 = inttoptr i64 %1991 to i32*
  %1994 = load i32, i32* %1993, align 4
  %1995 = add i32 %1994, 1
  %1996 = zext i32 %1995 to i64
  store i64 %1996, i64* %RAX.i823, align 8
  %1997 = icmp eq i32 %1994, -1
  %1998 = icmp eq i32 %1995, 0
  %1999 = or i1 %1997, %1998
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %14, align 1
  %2001 = and i32 %1995, 255
  %2002 = tail call i32 @llvm.ctpop.i32(i32 %2001)
  %2003 = trunc i32 %2002 to i8
  %2004 = and i8 %2003, 1
  %2005 = xor i8 %2004, 1
  store i8 %2005, i8* %21, align 1
  %2006 = xor i32 %1995, %1994
  %2007 = lshr i32 %2006, 4
  %2008 = trunc i32 %2007 to i8
  %2009 = and i8 %2008, 1
  store i8 %2009, i8* %26, align 1
  %2010 = zext i1 %1998 to i8
  store i8 %2010, i8* %29, align 1
  %2011 = lshr i32 %1995, 31
  %2012 = trunc i32 %2011 to i8
  store i8 %2012, i8* %32, align 1
  %2013 = lshr i32 %1994, 31
  %2014 = xor i32 %2011, %2013
  %2015 = add nuw nsw i32 %2014, %2011
  %2016 = icmp eq i32 %2015, 2
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %38, align 1
  %2018 = add i64 %1990, 9
  store i64 %2018, i64* %3, align 8
  store i32 %1995, i32* %1993, align 4
  %2019 = load i64, i64* %3, align 8
  %2020 = add i64 %2019, 81
  store i64 %2020, i64* %3, align 8
  %.pre83 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4a38a5

block_.L_4a3859:                                  ; preds = %block_.L_4a383e
  %2021 = add i64 %1964, -56
  %2022 = add i64 %1990, 7
  store i64 %2022, i64* %3, align 8
  %2023 = inttoptr i64 %2021 to i32*
  store i32 0, i32* %2023, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_4a3860

block_.L_4a3860:                                  ; preds = %block_4a386c, %block_.L_4a3859
  %2024 = phi i64 [ %2109, %block_4a386c ], [ %.pre82, %block_.L_4a3859 ]
  %2025 = load i64, i64* %RBP.i, align 8
  %2026 = add i64 %2025, -56
  %2027 = add i64 %2024, 3
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i32*
  %2029 = load i32, i32* %2028, align 4
  %2030 = zext i32 %2029 to i64
  store i64 %2030, i64* %RAX.i823, align 8
  %2031 = add i64 %2025, -12
  %2032 = add i64 %2024, 6
  store i64 %2032, i64* %3, align 8
  %2033 = inttoptr i64 %2031 to i32*
  %2034 = load i32, i32* %2033, align 4
  %2035 = sub i32 %2029, %2034
  %2036 = icmp ult i32 %2029, %2034
  %2037 = zext i1 %2036 to i8
  store i8 %2037, i8* %14, align 1
  %2038 = and i32 %2035, 255
  %2039 = tail call i32 @llvm.ctpop.i32(i32 %2038)
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  %2042 = xor i8 %2041, 1
  store i8 %2042, i8* %21, align 1
  %2043 = xor i32 %2034, %2029
  %2044 = xor i32 %2043, %2035
  %2045 = lshr i32 %2044, 4
  %2046 = trunc i32 %2045 to i8
  %2047 = and i8 %2046, 1
  store i8 %2047, i8* %26, align 1
  %2048 = icmp eq i32 %2035, 0
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %29, align 1
  %2050 = lshr i32 %2035, 31
  %2051 = trunc i32 %2050 to i8
  store i8 %2051, i8* %32, align 1
  %2052 = lshr i32 %2029, 31
  %2053 = lshr i32 %2034, 31
  %2054 = xor i32 %2053, %2052
  %2055 = xor i32 %2050, %2052
  %2056 = add nuw nsw i32 %2055, %2054
  %2057 = icmp eq i32 %2056, 2
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %38, align 1
  %.v88 = select i1 %2036, i64 12, i64 50
  %2059 = add i64 %2024, %.v88
  store i64 %2059, i64* %3, align 8
  br i1 %2036, label %block_4a386c, label %block_.L_4a3892

block_4a386c:                                     ; preds = %block_.L_4a3860
  %2060 = add i64 %2059, 3
  store i64 %2060, i64* %3, align 8
  %2061 = load i32, i32* %2028, align 4
  %2062 = zext i32 %2061 to i64
  store i64 %2062, i64* %RAX.i823, align 8
  store i64 %2062, i64* %RCX.i1037, align 8
  %2063 = shl nuw nsw i64 %2062, 2
  %2064 = add nsw i64 %2063, -464
  %2065 = add i64 %2064, %2025
  %2066 = add i64 %2059, 12
  store i64 %2066, i64* %3, align 8
  %2067 = inttoptr i64 %2065 to i32*
  %2068 = load i32, i32* %2067, align 4
  %2069 = zext i32 %2068 to i64
  store i64 %2069, i64* %RAX.i823, align 8
  %2070 = add i64 %2059, 15
  store i64 %2070, i64* %3, align 8
  %2071 = load i32, i32* %2028, align 4
  %2072 = zext i32 %2071 to i64
  store i64 %2072, i64* %RDX.i1040, align 8
  store i64 %2072, i64* %RCX.i1037, align 8
  %2073 = shl nuw nsw i64 %2072, 2
  %2074 = add nsw i64 %2073, -208
  %2075 = add i64 %2074, %2025
  %2076 = add i64 %2059, 24
  store i64 %2076, i64* %3, align 8
  %2077 = inttoptr i64 %2075 to i32*
  store i32 %2068, i32* %2077, align 4
  %2078 = load i64, i64* %RBP.i, align 8
  %2079 = add i64 %2078, -56
  %2080 = load i64, i64* %3, align 8
  %2081 = add i64 %2080, 3
  store i64 %2081, i64* %3, align 8
  %2082 = inttoptr i64 %2079 to i32*
  %2083 = load i32, i32* %2082, align 4
  %2084 = add i32 %2083, 1
  %2085 = zext i32 %2084 to i64
  store i64 %2085, i64* %RAX.i823, align 8
  %2086 = icmp eq i32 %2083, -1
  %2087 = icmp eq i32 %2084, 0
  %2088 = or i1 %2086, %2087
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %14, align 1
  %2090 = and i32 %2084, 255
  %2091 = tail call i32 @llvm.ctpop.i32(i32 %2090)
  %2092 = trunc i32 %2091 to i8
  %2093 = and i8 %2092, 1
  %2094 = xor i8 %2093, 1
  store i8 %2094, i8* %21, align 1
  %2095 = xor i32 %2084, %2083
  %2096 = lshr i32 %2095, 4
  %2097 = trunc i32 %2096 to i8
  %2098 = and i8 %2097, 1
  store i8 %2098, i8* %26, align 1
  %2099 = zext i1 %2087 to i8
  store i8 %2099, i8* %29, align 1
  %2100 = lshr i32 %2084, 31
  %2101 = trunc i32 %2100 to i8
  store i8 %2101, i8* %32, align 1
  %2102 = lshr i32 %2083, 31
  %2103 = xor i32 %2100, %2102
  %2104 = add nuw nsw i32 %2103, %2100
  %2105 = icmp eq i32 %2104, 2
  %2106 = zext i1 %2105 to i8
  store i8 %2106, i8* %38, align 1
  %2107 = add i64 %2080, 9
  store i64 %2107, i64* %3, align 8
  store i32 %2084, i32* %2082, align 4
  %2108 = load i64, i64* %3, align 8
  %2109 = add i64 %2108, -45
  store i64 %2109, i64* %3, align 8
  br label %block_.L_4a3860

block_.L_4a3892:                                  ; preds = %block_.L_4a3860
  %2110 = add i64 %2025, -52
  %2111 = add i64 %2059, 8
  store i64 %2111, i64* %3, align 8
  %2112 = inttoptr i64 %2110 to i32*
  %2113 = load i32, i32* %2112, align 4
  %2114 = add i32 %2113, 1
  %2115 = zext i32 %2114 to i64
  store i64 %2115, i64* %RAX.i823, align 8
  %2116 = icmp eq i32 %2113, -1
  %2117 = icmp eq i32 %2114, 0
  %2118 = or i1 %2116, %2117
  %2119 = zext i1 %2118 to i8
  store i8 %2119, i8* %14, align 1
  %2120 = and i32 %2114, 255
  %2121 = tail call i32 @llvm.ctpop.i32(i32 %2120)
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  %2124 = xor i8 %2123, 1
  store i8 %2124, i8* %21, align 1
  %2125 = xor i32 %2114, %2113
  %2126 = lshr i32 %2125, 4
  %2127 = trunc i32 %2126 to i8
  %2128 = and i8 %2127, 1
  store i8 %2128, i8* %26, align 1
  %2129 = zext i1 %2117 to i8
  store i8 %2129, i8* %29, align 1
  %2130 = lshr i32 %2114, 31
  %2131 = trunc i32 %2130 to i8
  store i8 %2131, i8* %32, align 1
  %2132 = lshr i32 %2113, 31
  %2133 = xor i32 %2130, %2132
  %2134 = add nuw nsw i32 %2133, %2130
  %2135 = icmp eq i32 %2134, 2
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %38, align 1
  %2137 = add i64 %2059, 14
  store i64 %2137, i64* %3, align 8
  store i32 %2114, i32* %2112, align 4
  %2138 = load i64, i64* %3, align 8
  %2139 = add i64 %2138, -513
  store i64 %2139, i64* %3, align 8
  br label %block_.L_4a369f

block_.L_4a38a5.loopexit:                         ; preds = %block_.L_4a369f
  br label %block_.L_4a38a5

block_.L_4a38a5:                                  ; preds = %block_.L_4a38a5.loopexit, %block_4a384b
  %2140 = phi i64 [ %2020, %block_4a384b ], [ %1347, %block_.L_4a38a5.loopexit ]
  %2141 = phi i64 [ %.pre83, %block_4a384b ], [ %1313, %block_.L_4a38a5.loopexit ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.15, %block_4a384b ], [ %MEMORY.13, %block_.L_4a38a5.loopexit ]
  %2142 = add i64 %2141, -24
  %2143 = add i64 %2140, 4
  store i64 %2143, i64* %3, align 8
  %2144 = inttoptr i64 %2142 to i64*
  %2145 = load i64, i64* %2144, align 8
  store i64 %2145, i64* %RAX.i823, align 8
  %2146 = add i64 %2141, -52
  %2147 = add i64 %2140, 7
  store i64 %2147, i64* %3, align 8
  %2148 = inttoptr i64 %2146 to i32*
  %2149 = load i32, i32* %2148, align 4
  %2150 = zext i32 %2149 to i64
  store i64 %2150, i64* %RCX.i1037, align 8
  store i64 %2150, i64* %RDX.i1040, align 8
  %2151 = shl nuw nsw i64 %2150, 2
  %2152 = add i64 %2145, %2151
  %2153 = add i64 %2140, 16
  store i64 %2153, i64* %3, align 8
  %2154 = inttoptr i64 %2152 to i32*
  store i32 3, i32* %2154, align 4
  %2155 = load i64, i64* %RBP.i, align 8
  %2156 = add i64 %2155, -56
  %2157 = load i64, i64* %3, align 8
  %2158 = add i64 %2157, 7
  store i64 %2158, i64* %3, align 8
  %2159 = inttoptr i64 %2156 to i32*
  store i32 0, i32* %2159, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_4a38bc

block_.L_4a38bc:                                  ; preds = %block_4a38c8, %block_.L_4a38a5
  %2160 = phi i64 [ %2245, %block_4a38c8 ], [ %.pre84, %block_.L_4a38a5 ]
  %2161 = load i64, i64* %RBP.i, align 8
  %2162 = add i64 %2161, -56
  %2163 = add i64 %2160, 3
  store i64 %2163, i64* %3, align 8
  %2164 = inttoptr i64 %2162 to i32*
  %2165 = load i32, i32* %2164, align 4
  %2166 = zext i32 %2165 to i64
  store i64 %2166, i64* %RAX.i823, align 8
  %2167 = add i64 %2161, -12
  %2168 = add i64 %2160, 6
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2167 to i32*
  %2170 = load i32, i32* %2169, align 4
  %2171 = sub i32 %2165, %2170
  %2172 = icmp ult i32 %2165, %2170
  %2173 = zext i1 %2172 to i8
  store i8 %2173, i8* %14, align 1
  %2174 = and i32 %2171, 255
  %2175 = tail call i32 @llvm.ctpop.i32(i32 %2174)
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = xor i8 %2177, 1
  store i8 %2178, i8* %21, align 1
  %2179 = xor i32 %2170, %2165
  %2180 = xor i32 %2179, %2171
  %2181 = lshr i32 %2180, 4
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  store i8 %2183, i8* %26, align 1
  %2184 = icmp eq i32 %2171, 0
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %29, align 1
  %2186 = lshr i32 %2171, 31
  %2187 = trunc i32 %2186 to i8
  store i8 %2187, i8* %32, align 1
  %2188 = lshr i32 %2165, 31
  %2189 = lshr i32 %2170, 31
  %2190 = xor i32 %2189, %2188
  %2191 = xor i32 %2186, %2188
  %2192 = add nuw nsw i32 %2191, %2190
  %2193 = icmp eq i32 %2192, 2
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %38, align 1
  %.v98 = select i1 %2172, i64 12, i64 50
  %2195 = add i64 %2160, %.v98
  store i64 %2195, i64* %3, align 8
  br i1 %2172, label %block_4a38c8, label %block_.L_4a38ee

block_4a38c8:                                     ; preds = %block_.L_4a38bc
  %2196 = add i64 %2195, 3
  store i64 %2196, i64* %3, align 8
  %2197 = load i32, i32* %2164, align 4
  %2198 = zext i32 %2197 to i64
  store i64 %2198, i64* %RAX.i823, align 8
  store i64 %2198, i64* %RCX.i1037, align 8
  %2199 = shl nuw nsw i64 %2198, 2
  %2200 = add nsw i64 %2199, -464
  %2201 = add i64 %2200, %2161
  %2202 = add i64 %2195, 12
  store i64 %2202, i64* %3, align 8
  %2203 = inttoptr i64 %2201 to i32*
  %2204 = load i32, i32* %2203, align 4
  %2205 = zext i32 %2204 to i64
  store i64 %2205, i64* %RAX.i823, align 8
  %2206 = add i64 %2195, 15
  store i64 %2206, i64* %3, align 8
  %2207 = load i32, i32* %2164, align 4
  %2208 = zext i32 %2207 to i64
  store i64 %2208, i64* %RDX.i1040, align 8
  store i64 %2208, i64* %RCX.i1037, align 8
  %2209 = shl nuw nsw i64 %2208, 2
  %2210 = add nsw i64 %2209, -208
  %2211 = add i64 %2210, %2161
  %2212 = add i64 %2195, 24
  store i64 %2212, i64* %3, align 8
  %2213 = inttoptr i64 %2211 to i32*
  store i32 %2204, i32* %2213, align 4
  %2214 = load i64, i64* %RBP.i, align 8
  %2215 = add i64 %2214, -56
  %2216 = load i64, i64* %3, align 8
  %2217 = add i64 %2216, 3
  store i64 %2217, i64* %3, align 8
  %2218 = inttoptr i64 %2215 to i32*
  %2219 = load i32, i32* %2218, align 4
  %2220 = add i32 %2219, 1
  %2221 = zext i32 %2220 to i64
  store i64 %2221, i64* %RAX.i823, align 8
  %2222 = icmp eq i32 %2219, -1
  %2223 = icmp eq i32 %2220, 0
  %2224 = or i1 %2222, %2223
  %2225 = zext i1 %2224 to i8
  store i8 %2225, i8* %14, align 1
  %2226 = and i32 %2220, 255
  %2227 = tail call i32 @llvm.ctpop.i32(i32 %2226)
  %2228 = trunc i32 %2227 to i8
  %2229 = and i8 %2228, 1
  %2230 = xor i8 %2229, 1
  store i8 %2230, i8* %21, align 1
  %2231 = xor i32 %2220, %2219
  %2232 = lshr i32 %2231, 4
  %2233 = trunc i32 %2232 to i8
  %2234 = and i8 %2233, 1
  store i8 %2234, i8* %26, align 1
  %2235 = zext i1 %2223 to i8
  store i8 %2235, i8* %29, align 1
  %2236 = lshr i32 %2220, 31
  %2237 = trunc i32 %2236 to i8
  store i8 %2237, i8* %32, align 1
  %2238 = lshr i32 %2219, 31
  %2239 = xor i32 %2236, %2238
  %2240 = add nuw nsw i32 %2239, %2236
  %2241 = icmp eq i32 %2240, 2
  %2242 = zext i1 %2241 to i8
  store i8 %2242, i8* %38, align 1
  %2243 = add i64 %2216, 9
  store i64 %2243, i64* %3, align 8
  store i32 %2220, i32* %2218, align 4
  %2244 = load i64, i64* %3, align 8
  %2245 = add i64 %2244, -45
  store i64 %2245, i64* %3, align 8
  br label %block_.L_4a38bc

block_.L_4a38ee:                                  ; preds = %block_.L_4a38bc
  %2246 = add i64 %2161, -48
  %2247 = add i64 %2195, 4
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i32*
  %2249 = load i32, i32* %2248, align 4
  store i8 0, i8* %14, align 1
  %2250 = and i32 %2249, 255
  %2251 = tail call i32 @llvm.ctpop.i32(i32 %2250)
  %2252 = trunc i32 %2251 to i8
  %2253 = and i8 %2252, 1
  %2254 = xor i8 %2253, 1
  store i8 %2254, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2255 = icmp eq i32 %2249, 0
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %29, align 1
  %2257 = lshr i32 %2249, 31
  %2258 = trunc i32 %2257 to i8
  store i8 %2258, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v99 = select i1 %2255, i64 10, i64 37
  %2259 = add i64 %2195, %.v99
  %2260 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2260, i64* %RAX.i823, align 8
  %2261 = add i64 %2260, 14160
  %2262 = add i64 %2259, 15
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2261 to i64*
  %2264 = load i64, i64* %2263, align 8
  store i64 %2264, i64* %RAX.i823, align 8
  br i1 %2255, label %block_4a38f8, label %block_.L_4a3913

block_4a38f8:                                     ; preds = %block_.L_4a38ee
  %2265 = add i64 %2264, 56
  %2266 = add i64 %2259, 22
  store i64 %2266, i64* %3, align 8
  %2267 = inttoptr i64 %2265 to i32*
  store i32 1, i32* %2267, align 4
  %2268 = load i64, i64* %3, align 8
  %2269 = add i64 %2268, 27
  store i64 %2269, i64* %3, align 8
  br label %block_.L_4a3929

block_.L_4a3913:                                  ; preds = %block_.L_4a38ee
  %2270 = add i64 %2264, 88
  %2271 = add i64 %2259, 22
  store i64 %2271, i64* %3, align 8
  %2272 = inttoptr i64 %2270 to i32*
  store i32 1, i32* %2272, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_4a3929

block_.L_4a3929:                                  ; preds = %block_.L_4a3913, %block_4a38f8
  %2273 = phi i64 [ %.pre85, %block_.L_4a3913 ], [ %2269, %block_4a38f8 ]
  %2274 = add i64 %2273, 5
  store i64 %2274, i64* %3, align 8
  br label %block_.L_4a392e

block_.L_4a392e:                                  ; preds = %block_.L_4a368b, %block_.L_4a3929
  %2275 = phi i64 [ %1310, %block_.L_4a368b ], [ %2274, %block_.L_4a3929 ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.2, %block_.L_4a368b ], [ %MEMORY.21, %block_.L_4a3929 ]
  %2276 = load i64, i64* %6, align 8
  %2277 = add i64 %2276, 768
  store i64 %2277, i64* %6, align 8
  %2278 = icmp ugt i64 %2276, -769
  %2279 = zext i1 %2278 to i8
  store i8 %2279, i8* %14, align 1
  %2280 = trunc i64 %2277 to i32
  %2281 = and i32 %2280, 255
  %2282 = tail call i32 @llvm.ctpop.i32(i32 %2281)
  %2283 = trunc i32 %2282 to i8
  %2284 = and i8 %2283, 1
  %2285 = xor i8 %2284, 1
  store i8 %2285, i8* %21, align 1
  %2286 = xor i64 %2277, %2276
  %2287 = lshr i64 %2286, 4
  %2288 = trunc i64 %2287 to i8
  %2289 = and i8 %2288, 1
  store i8 %2289, i8* %26, align 1
  %2290 = icmp eq i64 %2277, 0
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %29, align 1
  %2292 = lshr i64 %2277, 63
  %2293 = trunc i64 %2292 to i8
  store i8 %2293, i8* %32, align 1
  %2294 = lshr i64 %2276, 63
  %2295 = xor i64 %2292, %2294
  %2296 = add nuw nsw i64 %2295, %2292
  %2297 = icmp eq i64 %2296, 2
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %38, align 1
  %2299 = add i64 %2275, 8
  store i64 %2299, i64* %3, align 8
  %2300 = add i64 %2276, 776
  %2301 = inttoptr i64 %2277 to i64*
  %2302 = load i64, i64* %2301, align 8
  store i64 %2302, i64* %RBP.i, align 8
  store i64 %2300, i64* %6, align 8
  %2303 = add i64 %2275, 9
  store i64 %2303, i64* %3, align 8
  %2304 = inttoptr i64 %2300 to i64*
  %2305 = load i64, i64* %2304, align 8
  store i64 %2305, i64* %3, align 8
  %2306 = add i64 %2276, 784
  store i64 %2306, i64* %6, align 8
  ret %struct.Memory* %MEMORY.24
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RBP, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x300___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -768
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 768
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 1, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x722c98___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x722c98_type* @G_0x722c98 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -5
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__cl___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %6 = load i32, i32* %R10D, align 4
  %7 = load i8, i8* %CL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i8 %7 to i5
  switch i5 %10, label %16 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %11
  ]

; <label>:11:                                     ; preds = %block_400488
  %12 = shl i32 %6, 1
  %13 = icmp slt i32 %6, 0
  %14 = icmp slt i32 %12, 0
  %15 = xor i1 %13, %14
  br label %26

; <label>:16:                                     ; preds = %block_400488
  %17 = zext i32 %6 to i64
  %18 = and i8 %7, 31
  %19 = zext i8 %18 to i64
  %20 = add nuw nsw i64 %19, 4294967295
  %21 = and i64 %20, 4294967295
  %22 = shl i64 %17, %21
  %23 = trunc i64 %22 to i32
  %24 = icmp slt i32 %23, 0
  %25 = shl i32 %23, 1
  br label %26

; <label>:26:                                     ; preds = %16, %11
  %27 = phi i1 [ %13, %11 ], [ %24, %16 ]
  %28 = phi i1 [ %15, %11 ], [ false, %16 ]
  %29 = phi i32 [ %12, %11 ], [ %25, %16 ]
  %30 = zext i32 %29 to i64
  store i64 %30, i64* %5, align 8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %32 = zext i1 %27 to i8
  store i8 %32, i8* %31, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %34 = and i32 %29, 254
  %35 = tail call i32 @llvm.ctpop.i32(i32 %34)
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = xor i8 %37, 1
  store i8 %38, i8* %33, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %41 = icmp eq i32 %29, 0
  %42 = zext i1 %41 to i8
  store i8 %42, i8* %40, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %44 = lshr i32 %29, 31
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %43, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %47 = zext i1 %28 to i8
  store i8 %47, i8* %46, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %26, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__MINUS0x2f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -756
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x1c__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a32b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2f4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -756
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -752
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11b10__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a32de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, -1
  %10 = icmp eq i32 %7, 0
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %7, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %7, %6
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %10 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_4a3324(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18dc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6364
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xd0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -208
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a32eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_4a34ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x150__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -336
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -3
  %9 = icmp ult i32 %7, 3
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a34b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18ec__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6380
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4a34b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abs_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -748
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2ec__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -748
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2e0__rbp__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -736
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a345f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4a344a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x250__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -592
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 1, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a345a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x250__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -592
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 -1, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a34b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4a349d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a34ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a34b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a34bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a332b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x70eaa8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp eq i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %6, %5
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_4a3633(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_4a3620(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2e0__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -736
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x2e0__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -736
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4a3559(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a360d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x250__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -592
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x250__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -592
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4a360d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -740
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2e0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -736
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2e4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -740
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x150__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -336
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x150__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -336
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x250__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -592
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a3612(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a34ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a3625(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a34d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x258__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_4a368b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd0__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -208
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x150__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -336
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4a3678(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x258__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a367d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a3644(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x258__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a392e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_4a38a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -744
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -744
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4a3724(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2e8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -744
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4a371f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2f0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -752
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a374e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 1, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1d0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -464
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_4a37df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4a37cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a37d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a3781(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x254__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -596
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_4a383e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1d0__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -464
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4a382b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x254__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -596
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a383e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a3830(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a37f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x254__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -596
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a3859(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a38a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_4a3892(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -208
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a3860(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a3897(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a369f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 3, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_4a38ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a38bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a3913(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a3929(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x58__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a392e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x300___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 768
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -769
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBP, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %PC, align 8
  %9 = add i64 %6, 8
  store i64 %9, i64* %5, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
