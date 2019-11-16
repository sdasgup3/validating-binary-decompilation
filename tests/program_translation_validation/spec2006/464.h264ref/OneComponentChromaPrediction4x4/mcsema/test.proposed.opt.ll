; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @OneComponentChromaPrediction4x4(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i202 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %RBX.i202, align 8
  %13 = add i64 %10, 4
  store i64 %13, i64* %3, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %7, -144
  store i64 %17, i64* %6, align 8
  %18 = icmp ult i64 %14, 128
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = trunc i64 %17 to i32
  %22 = and i32 %21, 255
  %23 = tail call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = xor i64 %14, %17
  %29 = lshr i64 %28, 4
  %30 = trunc i64 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i64 %17, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i64 %17, 63
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %14, 63
  %40 = xor i64 %36, %39
  %41 = add nuw nsw i64 %40, %39
  %42 = icmp eq i64 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX.i = bitcast %union.anon* %45 to i16*
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9W.i = bitcast %union.anon* %46 to i16*
  %47 = load i16, i16* %R9W.i, align 2
  store i16 %47, i16* %AX.i, align 2
  %R9D.i = bitcast %union.anon* %46 to i32*
  %48 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, 24
  %51 = add i64 %16, 15
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %50 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %48, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i = bitcast %union.anon* %55 to i32*
  %56 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  %57 = add i64 %49, 16
  %58 = add i64 %16, 19
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %57 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %56, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i = bitcast %union.anon* %62 to i32*
  %63 = getelementptr inbounds %union.anon, %union.anon* %62, i64 0, i32 0
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i8 0, i8* %32, align 1
  %BL.i = bitcast %union.anon* %11 to i8*
  store i8 0, i8* %BL.i, align 1
  store i64 64, i64* %63, align 8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i464 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %65 = add i64 %49, -16
  %66 = load i64, i64* %RDI.i464, align 8
  %67 = add i64 %16, 35
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %65 to i64*
  store i64 %66, i64* %68, align 8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i488 = bitcast %union.anon* %69 to i32*
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -20
  %72 = load i32, i32* %ESI.i488, align 4
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 3
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %75, align 4
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i527 = bitcast %union.anon* %76 to i32*
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -24
  %79 = load i32, i32* %EDX.i527, align 4
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 3
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %78 to i32*
  store i32 %79, i32* %82, align 4
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i551 = getelementptr inbounds %union.anon, %union.anon* %83, i64 0, i32 0
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -32
  %86 = load i64, i64* %RCX.i551, align 8
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89, align 8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %90 to i32*
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -36
  %93 = load i32, i32* %R8D.i, align 4
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 4
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %96, align 4
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -38
  %99 = load i16, i16* %AX.i, align 2
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 4
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %98 to i16*
  store i16 %99, i16* %102, align 2
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -44
  %105 = load i32, i32* %R10D.i, align 4
  %106 = load i64, i64* %3, align 8
  %107 = add i64 %106, 4
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %104 to i32*
  store i32 %105, i32* %108, align 4
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -48
  %111 = load i32, i32* %R9D.i, align 4
  %112 = load i64, i64* %3, align 8
  %113 = add i64 %112, 4
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %110 to i32*
  store i32 %111, i32* %114, align 4
  %115 = load i64, i64* %3, align 8
  %116 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %116, i64* %RCX.i551, align 8
  %RAX.i810 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %117 = load i32, i32* %R11D.i, align 4
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RAX.i810, align 8
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %120 = bitcast %union.anon* %45 to i32*
  %121 = sext i32 %117 to i64
  %122 = lshr i64 %121, 32
  store i64 %122, i64* %119, align 8
  %123 = add i64 %116, 72708
  %124 = add i64 %115, 18
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %123 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = shl nuw i64 %122, 32
  %129 = or i64 %128, %118
  %130 = sdiv i64 %129, %127
  %131 = shl i64 %130, 32
  %132 = ashr exact i64 %131, 32
  %133 = icmp eq i64 %130, %132
  br i1 %133, label %136, label %134

; <label>:134:                                    ; preds = %entry
  %135 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %124, %struct.Memory* %2)
  %.pre = load i32, i32* %120, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %routine_idivl_0x11c04__rcx_.exit

; <label>:136:                                    ; preds = %entry
  %137 = srem i64 %129, %127
  %138 = and i64 %130, 4294967295
  store i64 %138, i64* %RAX.i810, align 8
  %139 = getelementptr inbounds %union.anon, %union.anon* %76, i64 0, i32 0
  %140 = and i64 %137, 4294967295
  store i64 %140, i64* %139, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %141 = trunc i64 %130 to i32
  br label %routine_idivl_0x11c04__rcx_.exit

routine_idivl_0x11c04__rcx_.exit:                 ; preds = %136, %134
  %142 = phi i64 [ %.pre19, %134 ], [ %124, %136 ]
  %143 = phi i32 [ %.pre, %134 ], [ %141, %136 ]
  %144 = phi %struct.Memory* [ %135, %134 ], [ %2, %136 ]
  %145 = load i64, i64* %RBP.i, align 8
  %146 = add i64 %145, -116
  %147 = add i64 %142, 3
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i32*
  store i32 %143, i32* %148, align 4
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -116
  %151 = load i64, i64* %3, align 8
  %152 = add i64 %151, 3
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %150 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = add i32 %154, -1
  %156 = icmp eq i32 %154, 0
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %20, align 1
  %158 = and i32 %155, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158)
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %27, align 1
  %163 = xor i32 %155, %154
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  store i8 %166, i8* %32, align 1
  %167 = icmp eq i32 %155, 0
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %35, align 1
  %169 = lshr i32 %155, 31
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %38, align 1
  %171 = lshr i32 %154, 31
  %172 = xor i32 %169, %171
  %173 = add nuw nsw i32 %172, %171
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %44, align 1
  %176 = add i64 %149, -120
  %177 = add i64 %151, 9
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i32*
  store i32 %155, i32* %178, align 4
  %179 = load i64, i64* %3, align 8
  %180 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %180, i64* %RCX.i551, align 8
  %181 = load i32, i32* %R11D.i, align 4
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RAX.i810, align 8
  %183 = sext i32 %181 to i64
  %184 = lshr i64 %183, 32
  store i64 %184, i64* %119, align 8
  %185 = add i64 %180, 72712
  %186 = add i64 %179, 18
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = shl nuw i64 %184, 32
  %191 = or i64 %190, %182
  %192 = sdiv i64 %191, %189
  %193 = shl i64 %192, 32
  %194 = ashr exact i64 %193, 32
  %195 = icmp eq i64 %192, %194
  br i1 %195, label %198, label %196

; <label>:196:                                    ; preds = %routine_idivl_0x11c04__rcx_.exit
  %197 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %186, %struct.Memory* %144)
  %.pre20 = load i32, i32* %120, align 4
  %.pre21 = load i64, i64* %3, align 8
  br label %routine_idivl_0x11c08__rcx_.exit

; <label>:198:                                    ; preds = %routine_idivl_0x11c04__rcx_.exit
  %199 = srem i64 %191, %189
  %200 = and i64 %192, 4294967295
  store i64 %200, i64* %RAX.i810, align 8
  %201 = getelementptr inbounds %union.anon, %union.anon* %76, i64 0, i32 0
  %202 = and i64 %199, 4294967295
  store i64 %202, i64* %201, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %203 = trunc i64 %192 to i32
  br label %routine_idivl_0x11c08__rcx_.exit

routine_idivl_0x11c08__rcx_.exit:                 ; preds = %198, %196
  %204 = phi i64 [ %.pre21, %196 ], [ %186, %198 ]
  %205 = phi i32 [ %.pre20, %196 ], [ %203, %198 ]
  %206 = phi %struct.Memory* [ %197, %196 ], [ %144, %198 ]
  %207 = load i64, i64* %RBP.i, align 8
  %208 = add i64 %207, -124
  %209 = add i64 %204, 3
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to i32*
  store i32 %205, i32* %210, align 4
  %211 = load i64, i64* %RBP.i, align 8
  %212 = add i64 %211, -124
  %213 = load i64, i64* %3, align 8
  %214 = add i64 %213, 3
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %212 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = add i32 %216, -1
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX.i810, align 8
  %219 = icmp eq i32 %216, 0
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %20, align 1
  %221 = and i32 %217, 255
  %222 = tail call i32 @llvm.ctpop.i32(i32 %221)
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %27, align 1
  %226 = xor i32 %217, %216
  %227 = lshr i32 %226, 4
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  store i8 %229, i8* %32, align 1
  %230 = icmp eq i32 %217, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %35, align 1
  %232 = lshr i32 %217, 31
  %233 = trunc i32 %232 to i8
  store i8 %233, i8* %38, align 1
  %234 = lshr i32 %216, 31
  %235 = xor i32 %232, %234
  %236 = add nuw nsw i32 %235, %234
  %237 = icmp eq i32 %236, 2
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %44, align 1
  %239 = add i64 %211, -128
  %240 = add i64 %213, 9
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i32*
  store i32 %217, i32* %241, align 4
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -116
  %244 = load i64, i64* %3, align 8
  %245 = add i64 %244, 3
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %243 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = zext i32 %247 to i64
  store i64 %248, i64* %RAX.i810, align 8
  %249 = add i64 %242, -124
  %250 = add i64 %244, 7
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %247 to i64
  %254 = sext i32 %252 to i64
  %255 = mul nsw i64 %254, %253
  %256 = trunc i64 %255 to i32
  %257 = and i64 %255, 4294967295
  store i64 %257, i64* %RAX.i810, align 8
  %258 = shl i64 %255, 32
  %259 = ashr exact i64 %258, 32
  %260 = icmp ne i64 %259, %255
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %20, align 1
  %262 = and i32 %256, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  %267 = lshr i32 %256, 31
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %38, align 1
  store i8 %261, i8* %44, align 1
  %269 = add i64 %242, -132
  %270 = trunc i64 %255 to i32
  %271 = add i64 %244, 13
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %269 to i32*
  store i32 %270, i32* %272, align 4
  %273 = load i64, i64* %RBP.i, align 8
  %274 = add i64 %273, -132
  %275 = load i64, i64* %3, align 8
  %276 = add i64 %275, 6
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %274 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = zext i32 %278 to i64
  %280 = shl nuw i64 %279, 32
  %281 = ashr i64 %280, 33
  %282 = trunc i32 %278 to i8
  %283 = and i8 %282, 1
  %284 = trunc i64 %281 to i32
  %285 = and i64 %281, 4294967295
  store i64 %285, i64* %RAX.i810, align 8
  store i8 %283, i8* %20, align 1
  %286 = and i32 %284, 255
  %287 = tail call i32 @llvm.ctpop.i32(i32 %286)
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = xor i8 %289, 1
  store i8 %290, i8* %27, align 1
  store i8 0, i8* %32, align 1
  %291 = icmp eq i32 %284, 0
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %35, align 1
  %293 = lshr i64 %281, 31
  %294 = trunc i64 %293 to i8
  %295 = and i8 %294, 1
  store i8 %295, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %296 = add i64 %273, -136
  %297 = trunc i64 %281 to i32
  %298 = add i64 %275, 14
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %296 to i32*
  store i32 %297, i32* %299, align 4
  %300 = load i64, i64* %3, align 8
  %301 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %301, i64* %RCX.i551, align 8
  %302 = add i64 %301, 72400
  %303 = add i64 %300, 15
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i32*
  %305 = load i32, i32* %304, align 4
  store i8 0, i8* %20, align 1
  %306 = and i32 %305, 255
  %307 = tail call i32 @llvm.ctpop.i32(i32 %306)
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  %310 = xor i8 %309, 1
  store i8 %310, i8* %27, align 1
  store i8 0, i8* %32, align 1
  %311 = icmp eq i32 %305, 0
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %35, align 1
  %313 = lshr i32 %305, 31
  %314 = trunc i32 %313 to i8
  store i8 %314, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %315 = load i64, i64* %RBP.i, align 8
  %316 = add i64 %315, -157
  %317 = load i8, i8* %BL.i, align 1
  %318 = add i64 %300, 21
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %316 to i8*
  store i8 %317, i8* %319, align 1
  %320 = load i64, i64* %3, align 8
  %321 = load i8, i8* %35, align 1
  %322 = icmp ne i8 %321, 0
  %.v124 = select i1 %322, i64 59, i64 6
  %323 = add i64 %320, %.v124
  store i64 %323, i64* %3, align 8
  %cmpBr_4405df = icmp eq i8 %321, 1
  br i1 %cmpBr_4405df, label %block_.L_44061a, label %block_4405e5

block_4405e5:                                     ; preds = %routine_idivl_0x11c08__rcx_.exit
  %324 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %324, i64* %RAX.i810, align 8
  %325 = add i64 %324, 14168
  %326 = add i64 %323, 15
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i64*
  %328 = load i64, i64* %327, align 8
  store i64 %328, i64* %RAX.i810, align 8
  store i64 %324, i64* %RCX.i551, align 8
  %329 = add i64 %324, 12
  %330 = add i64 %323, 27
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = sext i32 %332 to i64
  %334 = mul nsw i64 %333, 632
  store i64 %334, i64* %RCX.i551, align 8
  %335 = lshr i64 %334, 63
  %336 = add i64 %334, %328
  store i64 %336, i64* %RAX.i810, align 8
  %337 = icmp ult i64 %336, %328
  %338 = icmp ult i64 %336, %334
  %339 = or i1 %337, %338
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %20, align 1
  %341 = trunc i64 %336 to i32
  %342 = and i32 %341, 255
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342)
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %27, align 1
  %347 = xor i64 %334, %328
  %348 = xor i64 %347, %336
  %349 = lshr i64 %348, 4
  %350 = trunc i64 %349 to i8
  %351 = and i8 %350, 1
  store i8 %351, i8* %32, align 1
  %352 = icmp eq i64 %336, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %35, align 1
  %354 = lshr i64 %336, 63
  %355 = trunc i64 %354 to i8
  store i8 %355, i8* %38, align 1
  %356 = lshr i64 %328, 63
  %357 = xor i64 %354, %356
  %358 = xor i64 %354, %335
  %359 = add nuw nsw i64 %357, %358
  %360 = icmp eq i64 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %44, align 1
  %362 = add i64 %336, 532
  %363 = add i64 %323, 44
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  store i8 0, i8* %20, align 1
  %366 = and i32 %365, 255
  %367 = tail call i32 @llvm.ctpop.i32(i32 %366)
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  %370 = xor i8 %369, 1
  store i8 %370, i8* %27, align 1
  store i8 0, i8* %32, align 1
  %371 = icmp eq i32 %365, 0
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %35, align 1
  %373 = lshr i32 %365, 31
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %DL.i1018 = bitcast %union.anon* %76 to i8*
  %375 = xor i1 %371, true
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %DL.i1018, align 1
  %377 = load i64, i64* %RBP.i, align 8
  %378 = add i64 %377, -157
  %379 = add i64 %323, 53
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i8*
  store i8 %376, i8* %380, align 1
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_44061a

block_.L_44061a:                                  ; preds = %block_4405e5, %routine_idivl_0x11c08__rcx_.exit
  %381 = phi i64 [ %.pre22, %block_4405e5 ], [ %323, %routine_idivl_0x11c08__rcx_.exit ]
  %AL.i1013 = bitcast %union.anon* %45 to i8*
  %382 = load i64, i64* %RBP.i, align 8
  %383 = add i64 %382, -157
  %384 = add i64 %381, 6
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %383 to i8*
  %386 = load i8, i8* %385, align 1
  %387 = and i8 %386, 1
  store i8 %387, i8* %AL.i1013, align 1
  store i8 0, i8* %20, align 1
  %388 = zext i8 %387 to i32
  %389 = tail call i32 @llvm.ctpop.i32(i32 %388)
  %390 = trunc i32 %389 to i8
  %391 = xor i8 %390, 1
  store i8 %391, i8* %27, align 1
  %392 = xor i8 %387, 1
  store i8 %392, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i8 0, i8* %32, align 1
  %393 = zext i8 %387 to i64
  store i64 %393, i64* %RCX.i551, align 8
  %ECX.i1006 = bitcast %union.anon* %83 to i32*
  %394 = add i64 %382, -156
  %395 = zext i8 %387 to i32
  %396 = add i64 %381, 17
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %394 to i32*
  store i32 %395, i32* %397, align 4
  %398 = load i64, i64* %RBP.i, align 8
  %399 = add i64 %398, -156
  %400 = load i64, i64* %3, align 8
  %401 = add i64 %400, 7
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %399 to i32*
  %403 = load i32, i32* %402, align 4
  store i8 0, i8* %20, align 1
  %404 = and i32 %403, 255
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404)
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  store i8 %408, i8* %27, align 1
  store i8 0, i8* %32, align 1
  %409 = icmp eq i32 %403, 0
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %35, align 1
  %411 = lshr i32 %403, 31
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v107 = select i1 %409, i64 127, i64 13
  %413 = add i64 %400, %.v107
  store i64 %413, i64* %3, align 8
  br i1 %409, label %block_.L_4406aa, label %block_440638

block_440638:                                     ; preds = %block_.L_44061a
  store i64 2, i64* %RAX.i810, align 8
  %414 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %414, i64* %RCX.i551, align 8
  %RDX.i997 = getelementptr inbounds %union.anon, %union.anon* %76, i64 0, i32 0
  %415 = add i64 %414, 12
  %416 = add i64 %413, 16
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RDX.i997, align 8
  %420 = add i64 %398, -164
  %421 = add i64 %413, 22
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i32*
  store i32 2, i32* %422, align 4
  %423 = load i32, i32* %EDX.i527, align 4
  %424 = zext i32 %423 to i64
  %425 = load i64, i64* %3, align 8
  store i64 %424, i64* %RAX.i810, align 8
  %426 = sext i32 %423 to i64
  %427 = lshr i64 %426, 32
  store i64 %427, i64* %119, align 8
  %RSI.i986 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %428 = load i64, i64* %RBP.i, align 8
  %429 = add i64 %428, -164
  %430 = add i64 %425, 9
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = zext i32 %432 to i64
  store i64 %433, i64* %RSI.i986, align 8
  %434 = add i64 %425, 11
  store i64 %434, i64* %3, align 8
  %435 = sext i32 %432 to i64
  %436 = shl nuw i64 %427, 32
  %437 = or i64 %436, %424
  %438 = sdiv i64 %437, %435
  %439 = shl i64 %438, 32
  %440 = ashr exact i64 %439, 32
  %441 = icmp eq i64 %438, %440
  br i1 %441, label %444, label %442

; <label>:442:                                    ; preds = %block_440638
  %443 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %434, %struct.Memory* %206)
  %.pre23 = load i32, i32* %EDX.i527, align 4
  %.pre24 = load i64, i64* %3, align 8
  %.pre25 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit982

; <label>:444:                                    ; preds = %block_440638
  %445 = srem i64 %437, %435
  %446 = and i64 %438, 4294967295
  store i64 %446, i64* %RAX.i810, align 8
  %447 = and i64 %445, 4294967295
  store i64 %447, i64* %RDX.i997, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %448 = trunc i64 %445 to i32
  br label %routine_idivl__esi.exit982

routine_idivl__esi.exit982:                       ; preds = %444, %442
  %449 = phi i64 [ %.pre25, %442 ], [ %428, %444 ]
  %450 = phi i64 [ %.pre24, %442 ], [ %434, %444 ]
  %451 = phi i32 [ %.pre23, %442 ], [ %448, %444 ]
  %452 = phi %struct.Memory* [ %443, %442 ], [ %206, %444 ]
  store i8 0, i8* %20, align 1
  %453 = and i32 %451, 255
  %454 = tail call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  store i8 %457, i8* %27, align 1
  store i8 0, i8* %32, align 1
  %458 = icmp eq i32 %451, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %35, align 1
  %460 = lshr i32 %451, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v = select i1 %458, i64 24, i64 9
  %462 = add i64 %450, %.v
  %463 = add i64 %449, -140
  %464 = add i64 %462, 10
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %463 to i32*
  br i1 %458, label %block_.L_440671, label %block_440662

block_440662:                                     ; preds = %routine_idivl__esi.exit982
  store i32 4, i32* %465, align 4
  %466 = load i64, i64* %3, align 8
  %467 = add i64 %466, 15
  store i64 %467, i64* %3, align 8
  br label %block_.L_44067b

block_.L_440671:                                  ; preds = %routine_idivl__esi.exit982
  store i32 2, i32* %465, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_44067b

block_.L_44067b:                                  ; preds = %block_.L_440671, %block_440662
  %468 = phi i64 [ %.pre26, %block_.L_440671 ], [ %467, %block_440662 ]
  store i64 2, i64* %RAX.i810, align 8
  %469 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %469, i64* %RCX.i551, align 8
  %470 = add i64 %469, 64
  %471 = add i64 %468, 16
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = zext i32 %473 to i64
  store i64 %474, i64* %RDX.i997, align 8
  %475 = load i64, i64* %RBP.i, align 8
  %476 = add i64 %475, -168
  %477 = add i64 %468, 22
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i32*
  store i32 2, i32* %478, align 4
  %479 = load i32, i32* %EDX.i527, align 4
  %480 = zext i32 %479 to i64
  %481 = load i64, i64* %3, align 8
  store i64 %480, i64* %RAX.i810, align 8
  %482 = sext i32 %479 to i64
  %483 = lshr i64 %482, 32
  store i64 %483, i64* %119, align 8
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -168
  %486 = add i64 %481, 9
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = zext i32 %488 to i64
  store i64 %489, i64* %RSI.i986, align 8
  %490 = add i64 %481, 11
  store i64 %490, i64* %3, align 8
  %491 = sext i32 %488 to i64
  %492 = shl nuw i64 %483, 32
  %493 = or i64 %492, %480
  %494 = sdiv i64 %493, %491
  %495 = shl i64 %494, 32
  %496 = ashr exact i64 %495, 32
  %497 = icmp eq i64 %494, %496
  br i1 %497, label %500, label %498

; <label>:498:                                    ; preds = %block_.L_44067b
  %499 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %490, %struct.Memory* %452)
  %.pre27 = load i64, i64* %RAX.i810, align 8
  %.pre28 = load i64, i64* %3, align 8
  %.pre29 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:500:                                    ; preds = %block_.L_44067b
  %501 = srem i64 %493, %491
  %502 = and i64 %494, 4294967295
  store i64 %502, i64* %RAX.i810, align 8
  %503 = and i64 %501, 4294967295
  store i64 %503, i64* %RDX.i997, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %500, %498
  %504 = phi i64 [ %.pre29, %498 ], [ %484, %500 ]
  %505 = phi i64 [ %.pre28, %498 ], [ %490, %500 ]
  %506 = phi i64 [ %.pre27, %498 ], [ %502, %500 ]
  %507 = phi %struct.Memory* [ %499, %498 ], [ %452, %500 ]
  %508 = trunc i64 %506 to i32
  %509 = add i32 %508, -1
  %510 = zext i32 %509 to i64
  store i64 %510, i64* %RAX.i810, align 8
  %511 = icmp eq i32 %508, 0
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %20, align 1
  %513 = and i32 %509, 255
  %514 = tail call i32 @llvm.ctpop.i32(i32 %513)
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  store i8 %517, i8* %27, align 1
  %518 = xor i32 %509, %508
  %519 = lshr i32 %518, 4
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  store i8 %521, i8* %32, align 1
  %522 = icmp eq i32 %509, 0
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %35, align 1
  %524 = lshr i32 %509, 31
  %525 = trunc i32 %524 to i8
  store i8 %525, i8* %38, align 1
  %526 = lshr i32 %508, 31
  %527 = xor i32 %524, %526
  %528 = add nuw nsw i32 %527, %526
  %529 = icmp eq i32 %528, 2
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %44, align 1
  %531 = add i64 %504, -144
  %532 = add i64 %505, 9
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i32*
  store i32 %509, i32* %533, align 4
  %534 = load i64, i64* %3, align 8
  %535 = add i64 %534, 35
  store i64 %535, i64* %3, align 8
  br label %block_.L_4406c8

block_.L_4406aa:                                  ; preds = %block_.L_44061a
  %536 = add i64 %398, -140
  %537 = add i64 %413, 10
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i32*
  store i32 0, i32* %538, align 4
  %539 = load i64, i64* %3, align 8
  %540 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %540, i64* %RAX.i810, align 8
  %541 = add i64 %540, 64
  %542 = add i64 %539, 11
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i32*
  %544 = load i32, i32* %543, align 4
  %545 = add i32 %544, -1
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RCX.i551, align 8
  %547 = icmp eq i32 %544, 0
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %20, align 1
  %549 = and i32 %545, 255
  %550 = tail call i32 @llvm.ctpop.i32(i32 %549)
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  store i8 %553, i8* %27, align 1
  %554 = xor i32 %545, %544
  %555 = lshr i32 %554, 4
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  store i8 %557, i8* %32, align 1
  %558 = icmp eq i32 %545, 0
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %35, align 1
  %560 = lshr i32 %545, 31
  %561 = trunc i32 %560 to i8
  store i8 %561, i8* %38, align 1
  %562 = lshr i32 %544, 31
  %563 = xor i32 %560, %562
  %564 = add nuw nsw i32 %563, %562
  %565 = icmp eq i32 %564, 2
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %44, align 1
  %567 = load i64, i64* %RBP.i, align 8
  %568 = add i64 %567, -144
  %569 = add i64 %539, 20
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i32*
  store i32 %545, i32* %570, align 4
  %.pre30 = load i64, i64* %3, align 8
  %.pre105 = getelementptr inbounds %union.anon, %union.anon* %76, i64 0, i32 0
  %.pre106 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  br label %block_.L_4406c8

block_.L_4406c8:                                  ; preds = %block_.L_4406aa, %routine_idivl__esi.exit
  %RSI.i876.pre-phi = phi i64* [ %.pre106, %block_.L_4406aa ], [ %RSI.i986, %routine_idivl__esi.exit ]
  %RDX.i913.pre-phi = phi i64* [ %.pre105, %block_.L_4406aa ], [ %RDX.i997, %routine_idivl__esi.exit ]
  %571 = phi i64 [ %.pre30, %block_.L_4406aa ], [ %535, %routine_idivl__esi.exit ]
  %MEMORY.2 = phi %struct.Memory* [ %206, %block_.L_4406aa ], [ %507, %routine_idivl__esi.exit ]
  %572 = load i64, i64* %RBP.i, align 8
  %573 = add i64 %572, -36
  %574 = add i64 %571, 3
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i32*
  %576 = load i32, i32* %575, align 4
  %577 = zext i32 %576 to i64
  store i64 %577, i64* %RAX.i810, align 8
  %578 = add i64 %572, -140
  %579 = add i64 %571, 9
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = add i32 %581, %576
  %583 = zext i32 %582 to i64
  store i64 %583, i64* %RAX.i810, align 8
  %584 = icmp ult i32 %582, %576
  %585 = icmp ult i32 %582, %581
  %586 = or i1 %584, %585
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %20, align 1
  %588 = and i32 %582, 255
  %589 = tail call i32 @llvm.ctpop.i32(i32 %588)
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  %592 = xor i8 %591, 1
  store i8 %592, i8* %27, align 1
  %593 = xor i32 %581, %576
  %594 = xor i32 %593, %582
  %595 = lshr i32 %594, 4
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  store i8 %597, i8* %32, align 1
  %598 = icmp eq i32 %582, 0
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %35, align 1
  %600 = lshr i32 %582, 31
  %601 = trunc i32 %600 to i8
  store i8 %601, i8* %38, align 1
  %602 = lshr i32 %576, 31
  %603 = lshr i32 %581, 31
  %604 = xor i32 %600, %602
  %605 = xor i32 %600, %603
  %606 = add nuw nsw i32 %604, %605
  %607 = icmp eq i32 %606, 2
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %44, align 1
  %609 = sext i32 %582 to i64
  store i64 %609, i64* %RCX.i551, align 8
  %610 = shl nsw i64 %609, 3
  %611 = add nsw i64 %610, 7482144
  %612 = add i64 %571, 20
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i64*
  %614 = load i64, i64* %613, align 8
  store i64 %614, i64* %RCX.i551, align 8
  %615 = add i64 %572, -152
  %616 = add i64 %571, 27
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to i64*
  store i64 %614, i64* %617, align 8
  %618 = load i64, i64* %RBP.i, align 8
  %619 = add i64 %618, -152
  %620 = load i64, i64* %3, align 8
  %621 = add i64 %620, 7
  store i64 %621, i64* %3, align 8
  %622 = inttoptr i64 %619 to i64*
  %623 = load i64, i64* %622, align 8
  store i64 %623, i64* %RCX.i551, align 8
  %624 = add i64 %618, -38
  %625 = add i64 %620, 12
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i16*
  %627 = load i16, i16* %626, align 2
  %628 = sext i16 %627 to i64
  store i64 %628, i64* %RDX.i913.pre-phi, align 8
  %629 = shl nsw i64 %628, 3
  %630 = add i64 %629, %623
  %631 = add i64 %620, 16
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %630 to i64*
  %633 = load i64, i64* %632, align 8
  store i64 %633, i64* %RCX.i551, align 8
  %634 = add i64 %633, 6464
  %635 = add i64 %620, 23
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i64*
  %637 = load i64, i64* %636, align 8
  store i64 %637, i64* %RCX.i551, align 8
  %638 = add i64 %618, -48
  %639 = add i64 %620, 27
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = sext i32 %641 to i64
  store i64 %642, i64* %RDX.i913.pre-phi, align 8
  %643 = shl nsw i64 %642, 3
  %644 = add i64 %643, %637
  %645 = add i64 %620, 31
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i64*
  %647 = load i64, i64* %646, align 8
  store i64 %647, i64* %RCX.i551, align 8
  %648 = add i64 %618, -112
  %649 = add i64 %620, 35
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i64*
  store i64 %647, i64* %650, align 8
  %651 = load i64, i64* %RBP.i, align 8
  %652 = add i64 %651, -56
  %653 = load i64, i64* %3, align 8
  %654 = add i64 %653, 7
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %652 to i32*
  store i32 0, i32* %655, align 4
  %EDI.i867 = bitcast %union.anon* %64 to i32*
  %656 = getelementptr inbounds %union.anon, %union.anon* %90, i64 0, i32 0
  %EBX.i740 = bitcast %union.anon* %11 to i32*
  %657 = bitcast %union.anon* %83 to i32**
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_44070d

block_.L_44070d:                                  ; preds = %block_.L_440c1f, %block_.L_4406c8
  %658 = phi i64 [ %.pre31, %block_.L_4406c8 ], [ %3479, %block_.L_440c1f ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_4406c8 ], [ %MEMORY.4, %block_.L_440c1f ]
  %659 = load i64, i64* %RBP.i, align 8
  %660 = add i64 %659, -56
  %661 = add i64 %658, 4
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i32*
  %663 = load i32, i32* %662, align 4
  %664 = add i32 %663, -4
  %665 = icmp ult i32 %663, 4
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %20, align 1
  %667 = and i32 %664, 255
  %668 = tail call i32 @llvm.ctpop.i32(i32 %667)
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 1
  %671 = xor i8 %670, 1
  store i8 %671, i8* %27, align 1
  %672 = xor i32 %664, %663
  %673 = lshr i32 %672, 4
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  store i8 %675, i8* %32, align 1
  %676 = icmp eq i32 %664, 0
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %35, align 1
  %678 = lshr i32 %664, 31
  %679 = trunc i32 %678 to i8
  store i8 %679, i8* %38, align 1
  %680 = lshr i32 %663, 31
  %681 = xor i32 %678, %680
  %682 = add nuw nsw i32 %681, %680
  %683 = icmp eq i32 %682, 2
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %44, align 1
  %685 = icmp ne i8 %679, 0
  %686 = xor i1 %685, %683
  %.v108 = select i1 %686, i64 10, i64 1317
  %687 = add i64 %658, %.v108
  store i64 %687, i64* %3, align 8
  br i1 %686, label %block_440717, label %block_.L_440c32

block_440717:                                     ; preds = %block_.L_44070d
  %688 = add i64 %659, -52
  %689 = add i64 %687, 7
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i32*
  store i32 0, i32* %690, align 4
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_44071e

block_.L_44071e:                                  ; preds = %routine_idivl_MINUS0x84__rbp_.exit, %block_440717
  %691 = phi i64 [ %.pre32, %block_440717 ], [ %3449, %routine_idivl_MINUS0x84__rbp_.exit ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_440717 ], [ %3386, %routine_idivl_MINUS0x84__rbp_.exit ]
  %692 = load i64, i64* %RBP.i, align 8
  %693 = add i64 %692, -52
  %694 = add i64 %691, 4
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = add i32 %696, -4
  %698 = icmp ult i32 %696, 4
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %20, align 1
  %700 = and i32 %697, 255
  %701 = tail call i32 @llvm.ctpop.i32(i32 %700)
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  %704 = xor i8 %703, 1
  store i8 %704, i8* %27, align 1
  %705 = xor i32 %697, %696
  %706 = lshr i32 %705, 4
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  store i8 %708, i8* %32, align 1
  %709 = icmp eq i32 %697, 0
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %35, align 1
  %711 = lshr i32 %697, 31
  %712 = trunc i32 %711 to i8
  store i8 %712, i8* %38, align 1
  %713 = lshr i32 %696, 31
  %714 = xor i32 %711, %713
  %715 = add nuw nsw i32 %714, %713
  %716 = icmp eq i32 %715, 2
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %44, align 1
  %718 = icmp ne i8 %712, 0
  %719 = xor i1 %718, %716
  %.v109 = select i1 %719, i64 10, i64 1281
  %720 = add i64 %691, %.v109
  %721 = add i64 %720, 5
  store i64 %721, i64* %3, align 8
  br i1 %719, label %block_440728, label %block_.L_440c1f

block_440728:                                     ; preds = %block_.L_44071e
  store i64 4, i64* %RAX.i810, align 8
  %722 = add i64 %692, -32
  %723 = add i64 %720, 9
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to i64*
  %725 = load i64, i64* %724, align 8
  store i64 %725, i64* %RCX.i551, align 8
  %726 = add i64 %720, 12
  store i64 %726, i64* %3, align 8
  %727 = load i32, i32* %695, align 4
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RDX.i913.pre-phi, align 8
  %729 = add i64 %692, -20
  %730 = add i64 %720, 15
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i32*
  %732 = load i32, i32* %731, align 4
  %733 = add i32 %732, %727
  %734 = zext i32 %733 to i64
  store i64 %734, i64* %RDX.i913.pre-phi, align 8
  %735 = icmp ult i32 %733, %727
  %736 = icmp ult i32 %733, %732
  %737 = or i1 %735, %736
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %20, align 1
  %739 = and i32 %733, 255
  %740 = tail call i32 @llvm.ctpop.i32(i32 %739)
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = xor i8 %742, 1
  store i8 %743, i8* %27, align 1
  %744 = xor i32 %732, %727
  %745 = xor i32 %744, %733
  %746 = lshr i32 %745, 4
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  store i8 %748, i8* %32, align 1
  %749 = icmp eq i32 %733, 0
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %35, align 1
  %751 = lshr i32 %733, 31
  %752 = trunc i32 %751 to i8
  store i8 %752, i8* %38, align 1
  %753 = lshr i32 %727, 31
  %754 = lshr i32 %732, 31
  %755 = xor i32 %751, %753
  %756 = xor i32 %751, %754
  %757 = add nuw nsw i32 %755, %756
  %758 = icmp eq i32 %757, 2
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %44, align 1
  %760 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %760, i64* %RSI.i876.pre-phi, align 8
  %761 = add i64 %760, 72708
  %762 = add i64 %720, 29
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i32*
  %764 = load i32, i32* %763, align 4
  %765 = zext i32 %764 to i64
  store i64 %765, i64* %RDI.i464, align 8
  %766 = add i64 %692, -172
  %767 = add i64 %720, 35
  store i64 %767, i64* %3, align 8
  %768 = inttoptr i64 %766 to i32*
  store i32 4, i32* %768, align 4
  %769 = load i32, i32* %EDI.i867, align 4
  %770 = zext i32 %769 to i64
  %771 = load i64, i64* %3, align 8
  store i64 %770, i64* %RAX.i810, align 8
  %772 = load i64, i64* %RBP.i, align 8
  %773 = add i64 %772, -176
  %774 = load i32, i32* %EDX.i527, align 4
  %775 = add i64 %771, 8
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %773 to i32*
  store i32 %774, i32* %776, align 4
  %777 = load i64, i64* %3, align 8
  %778 = load i32, i32* %120, align 8
  %779 = sext i32 %778 to i64
  %780 = lshr i64 %779, 32
  store i64 %780, i64* %119, align 8
  %781 = load i64, i64* %RBP.i, align 8
  %782 = add i64 %781, -172
  %783 = add i64 %777, 7
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i32*
  %785 = load i32, i32* %784, align 4
  %786 = zext i32 %785 to i64
  store i64 %786, i64* %RDI.i464, align 8
  %787 = add i64 %777, 9
  store i64 %787, i64* %3, align 8
  %788 = zext i32 %778 to i64
  %789 = sext i32 %785 to i64
  %790 = shl nuw i64 %780, 32
  %791 = or i64 %790, %788
  %792 = sdiv i64 %791, %789
  %793 = shl i64 %792, 32
  %794 = ashr exact i64 %793, 32
  %795 = icmp eq i64 %792, %794
  br i1 %795, label %798, label %796

; <label>:796:                                    ; preds = %block_440728
  %797 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %787, %struct.Memory* %MEMORY.4)
  %.pre33 = load i64, i64* %RBP.i, align 8
  %.pre34 = load i64, i64* %3, align 8
  %.pre35 = load i32, i32* %120, align 4
  br label %routine_idivl__edi.exit853

; <label>:798:                                    ; preds = %block_440728
  %799 = srem i64 %791, %789
  %800 = and i64 %792, 4294967295
  store i64 %800, i64* %RAX.i810, align 8
  %801 = and i64 %799, 4294967295
  store i64 %801, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %802 = trunc i64 %792 to i32
  br label %routine_idivl__edi.exit853

routine_idivl__edi.exit853:                       ; preds = %798, %796
  %803 = phi i32 [ %.pre35, %796 ], [ %802, %798 ]
  %804 = phi i64 [ %.pre34, %796 ], [ %787, %798 ]
  %805 = phi i64 [ %.pre33, %796 ], [ %781, %798 ]
  %806 = phi %struct.Memory* [ %797, %796 ], [ %MEMORY.4, %798 ]
  %807 = add i64 %805, -176
  %808 = add i64 %804, 7
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = zext i32 %810 to i64
  store i64 %811, i64* %656, align 8
  %812 = add i64 %805, -180
  %813 = add i64 %804, 13
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i32*
  store i32 %803, i32* %814, align 4
  %815 = load i32, i32* %R8D.i, align 4
  %816 = zext i32 %815 to i64
  %817 = load i64, i64* %3, align 8
  store i64 %816, i64* %RAX.i810, align 8
  %818 = sext i32 %815 to i64
  %819 = lshr i64 %818, 32
  store i64 %819, i64* %119, align 8
  %820 = load i64, i64* %RBP.i, align 8
  %821 = add i64 %820, -180
  %822 = add i64 %817, 11
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %48, align 8
  %826 = add i64 %817, 14
  store i64 %826, i64* %3, align 8
  %827 = sext i32 %824 to i64
  %828 = shl nuw i64 %819, 32
  %829 = or i64 %828, %816
  %830 = sdiv i64 %829, %827
  %831 = shl i64 %830, 32
  %832 = ashr exact i64 %831, 32
  %833 = icmp eq i64 %830, %832
  br i1 %833, label %836, label %834

; <label>:834:                                    ; preds = %routine_idivl__edi.exit853
  %835 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %826, %struct.Memory* %806)
  %.pre36 = load i32, i32* %120, align 4
  %.pre37 = load i64, i64* %3, align 8
  %.pre38 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r9d.exit

; <label>:836:                                    ; preds = %routine_idivl__edi.exit853
  %837 = srem i64 %829, %827
  %838 = and i64 %830, 4294967295
  store i64 %838, i64* %RAX.i810, align 8
  %839 = and i64 %837, 4294967295
  store i64 %839, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %840 = trunc i64 %830 to i32
  br label %routine_idivl__r9d.exit

routine_idivl__r9d.exit:                          ; preds = %836, %834
  %841 = phi i64 [ %.pre38, %834 ], [ %820, %836 ]
  %842 = phi i64 [ %.pre37, %834 ], [ %826, %836 ]
  %843 = phi i32 [ %.pre36, %834 ], [ %840, %836 ]
  %844 = phi %struct.Memory* [ %835, %834 ], [ %806, %836 ]
  %845 = sext i32 %843 to i64
  store i64 %845, i64* %RSI.i876.pre-phi, align 8
  %846 = load i64, i64* %RCX.i551, align 8
  %847 = shl nsw i64 %845, 3
  %848 = add i64 %846, %847
  %849 = add i64 %842, 7
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i64*
  %851 = load i64, i64* %850, align 8
  store i64 %851, i64* %RCX.i551, align 8
  %852 = add i64 %841, -56
  %853 = add i64 %842, 10
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %852 to i32*
  %855 = load i32, i32* %854, align 4
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RAX.i810, align 8
  %857 = add i64 %841, -24
  %858 = add i64 %842, 13
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i32*
  %860 = load i32, i32* %859, align 4
  %861 = add i32 %860, %855
  %862 = zext i32 %861 to i64
  store i64 %862, i64* %RAX.i810, align 8
  %863 = icmp ult i32 %861, %855
  %864 = icmp ult i32 %861, %860
  %865 = or i1 %863, %864
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %20, align 1
  %867 = and i32 %861, 255
  %868 = tail call i32 @llvm.ctpop.i32(i32 %867)
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  store i8 %871, i8* %27, align 1
  %872 = xor i32 %860, %855
  %873 = xor i32 %872, %861
  %874 = lshr i32 %873, 4
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  store i8 %876, i8* %32, align 1
  %877 = icmp eq i32 %861, 0
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %35, align 1
  %879 = lshr i32 %861, 31
  %880 = trunc i32 %879 to i8
  store i8 %880, i8* %38, align 1
  %881 = lshr i32 %855, 31
  %882 = lshr i32 %860, 31
  %883 = xor i32 %879, %881
  %884 = xor i32 %879, %882
  %885 = add nuw nsw i32 %883, %884
  %886 = icmp eq i32 %885, 2
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %44, align 1
  %888 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %888, i64* %RSI.i876.pre-phi, align 8
  %889 = add i64 %888, 72712
  %890 = add i64 %842, 28
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i32*
  %892 = load i32, i32* %891, align 4
  %893 = zext i32 %892 to i64
  store i64 %893, i64* %56, align 8
  %894 = add i64 %841, -184
  %895 = add i64 %842, 34
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i32*
  store i32 %861, i32* %896, align 4
  %897 = load i32, i32* %R10D.i, align 4
  %898 = zext i32 %897 to i64
  %899 = load i64, i64* %3, align 8
  store i64 %898, i64* %RAX.i810, align 8
  %900 = sext i32 %897 to i64
  %901 = lshr i64 %900, 32
  store i64 %901, i64* %119, align 8
  %902 = load i32, i32* %EDI.i867, align 4
  %903 = add i64 %899, 6
  store i64 %903, i64* %3, align 8
  %904 = sext i32 %902 to i64
  %905 = shl nuw i64 %901, 32
  %906 = or i64 %905, %898
  %907 = sdiv i64 %906, %904
  %908 = shl i64 %907, 32
  %909 = ashr exact i64 %908, 32
  %910 = icmp eq i64 %907, %909
  br i1 %910, label %913, label %911

; <label>:911:                                    ; preds = %routine_idivl__r9d.exit
  %912 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %903, %struct.Memory* %844)
  %.pre39 = load i64, i64* %3, align 8
  %.pre40 = load i32, i32* %120, align 4
  br label %routine_idivl__edi.exit

; <label>:913:                                    ; preds = %routine_idivl__r9d.exit
  %914 = srem i64 %906, %904
  %915 = and i64 %907, 4294967295
  store i64 %915, i64* %RAX.i810, align 8
  %916 = and i64 %914, 4294967295
  store i64 %916, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %917 = trunc i64 %907 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %913, %911
  %918 = phi i32 [ %.pre40, %911 ], [ %917, %913 ]
  %919 = phi i64 [ %.pre39, %911 ], [ %903, %913 ]
  %920 = phi %struct.Memory* [ %912, %911 ], [ %844, %913 ]
  %921 = load i64, i64* %RBP.i, align 8
  %922 = add i64 %921, -184
  %923 = add i64 %919, 7
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to i32*
  %925 = load i32, i32* %924, align 4
  %926 = zext i32 %925 to i64
  store i64 %926, i64* %56, align 8
  %927 = add i64 %921, -188
  %928 = add i64 %919, 13
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i32*
  store i32 %918, i32* %929, align 4
  %930 = load i32, i32* %R10D.i, align 4
  %931 = zext i32 %930 to i64
  %932 = load i64, i64* %3, align 8
  store i64 %931, i64* %RAX.i810, align 8
  %933 = sext i32 %930 to i64
  %934 = lshr i64 %933, 32
  store i64 %934, i64* %119, align 8
  %935 = load i64, i64* %RBP.i, align 8
  %936 = add i64 %935, -188
  %937 = add i64 %932, 11
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %936 to i32*
  %939 = load i32, i32* %938, align 4
  %940 = zext i32 %939 to i64
  store i64 %940, i64* %63, align 8
  %941 = add i64 %932, 14
  store i64 %941, i64* %3, align 8
  %942 = sext i32 %939 to i64
  %943 = shl nuw i64 %934, 32
  %944 = or i64 %943, %931
  %945 = sdiv i64 %944, %942
  %946 = shl i64 %945, 32
  %947 = ashr exact i64 %946, 32
  %948 = icmp eq i64 %945, %947
  br i1 %948, label %951, label %949

; <label>:949:                                    ; preds = %routine_idivl__edi.exit
  %950 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %941, %struct.Memory* %920)
  %.pre41 = load i32, i32* %120, align 4
  %.pre42 = load i64, i64* %3, align 8
  %.pre43 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r11d.exit

; <label>:951:                                    ; preds = %routine_idivl__edi.exit
  %952 = srem i64 %944, %942
  %953 = and i64 %945, 4294967295
  store i64 %953, i64* %RAX.i810, align 8
  %954 = and i64 %952, 4294967295
  store i64 %954, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %955 = trunc i64 %945 to i32
  br label %routine_idivl__r11d.exit

routine_idivl__r11d.exit:                         ; preds = %951, %949
  %956 = phi i64 [ %.pre43, %949 ], [ %935, %951 ]
  %957 = phi i64 [ %.pre42, %949 ], [ %941, %951 ]
  %958 = phi i32 [ %.pre41, %949 ], [ %955, %951 ]
  %959 = phi %struct.Memory* [ %950, %949 ], [ %920, %951 ]
  %960 = sext i32 %958 to i64
  store i64 %960, i64* %RSI.i876.pre-phi, align 8
  %961 = load i64, i64* %RCX.i551, align 8
  %962 = shl nsw i64 %960, 3
  %963 = add i64 %961, %962
  %964 = add i64 %957, 7
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i64*
  %966 = load i64, i64* %965, align 8
  store i64 %966, i64* %RCX.i551, align 8
  %967 = add i64 %956, -36
  %968 = add i64 %957, 11
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i32*
  %970 = load i32, i32* %969, align 4
  %971 = sext i32 %970 to i64
  store i64 %971, i64* %RSI.i876.pre-phi, align 8
  %972 = shl nsw i64 %971, 3
  %973 = add i64 %972, %966
  %974 = add i64 %957, 15
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %973 to i64*
  %976 = load i64, i64* %975, align 8
  store i64 %976, i64* %RCX.i551, align 8
  %977 = add i64 %956, -38
  %978 = add i64 %957, 20
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i16*
  %980 = load i16, i16* %979, align 2
  %981 = sext i16 %980 to i64
  store i64 %981, i64* %RSI.i876.pre-phi, align 8
  %982 = shl nsw i64 %981, 3
  %983 = add i64 %982, %976
  %984 = add i64 %957, 24
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i64*
  %986 = load i64, i64* %985, align 8
  store i64 %986, i64* %RCX.i551, align 8
  %987 = add i64 %956, -44
  %988 = add i64 %957, 28
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i32*
  %990 = load i32, i32* %989, align 4
  %991 = sext i32 %990 to i64
  store i64 %991, i64* %RSI.i876.pre-phi, align 8
  %992 = shl nsw i64 %991, 3
  %993 = add i64 %992, %986
  %994 = add i64 %957, 32
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %993 to i64*
  %996 = load i64, i64* %995, align 8
  store i64 %996, i64* %RCX.i551, align 8
  %997 = add i64 %956, -104
  %998 = add i64 %957, 36
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %997 to i64*
  store i64 %996, i64* %999, align 8
  %1000 = load i64, i64* %RBP.i, align 8
  %1001 = add i64 %1000, -52
  %1002 = load i64, i64* %3, align 8
  %1003 = add i64 %1002, 3
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1001 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = zext i32 %1005 to i64
  store i64 %1006, i64* %RAX.i810, align 8
  %1007 = add i64 %1000, -20
  %1008 = add i64 %1002, 6
  store i64 %1008, i64* %3, align 8
  %1009 = inttoptr i64 %1007 to i32*
  %1010 = load i32, i32* %1009, align 4
  %1011 = add i32 %1010, %1005
  %1012 = zext i32 %1011 to i64
  store i64 %1012, i64* %RAX.i810, align 8
  %1013 = icmp ult i32 %1011, %1005
  %1014 = icmp ult i32 %1011, %1010
  %1015 = or i1 %1013, %1014
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %20, align 1
  %1017 = and i32 %1011, 255
  %1018 = tail call i32 @llvm.ctpop.i32(i32 %1017)
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %27, align 1
  %1022 = xor i32 %1010, %1005
  %1023 = xor i32 %1022, %1011
  %1024 = lshr i32 %1023, 4
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  store i8 %1026, i8* %32, align 1
  %1027 = icmp eq i32 %1011, 0
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %35, align 1
  %1029 = lshr i32 %1011, 31
  %1030 = trunc i32 %1029 to i8
  store i8 %1030, i8* %38, align 1
  %1031 = lshr i32 %1005, 31
  %1032 = lshr i32 %1010, 31
  %1033 = xor i32 %1029, %1031
  %1034 = xor i32 %1029, %1032
  %1035 = add nuw nsw i32 %1033, %1034
  %1036 = icmp eq i32 %1035, 2
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %44, align 1
  %1038 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1038, i64* %RCX.i551, align 8
  %1039 = add i64 %1038, 176
  %1040 = add i64 %1002, 20
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = add i32 %1042, %1011
  %1044 = zext i32 %1043 to i64
  store i64 %1044, i64* %RAX.i810, align 8
  %1045 = icmp ult i32 %1043, %1011
  %1046 = icmp ult i32 %1043, %1042
  %1047 = or i1 %1045, %1046
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %20, align 1
  %1049 = and i32 %1043, 255
  %1050 = tail call i32 @llvm.ctpop.i32(i32 %1049)
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  %1053 = xor i8 %1052, 1
  store i8 %1053, i8* %27, align 1
  %1054 = xor i32 %1042, %1011
  %1055 = xor i32 %1054, %1043
  %1056 = lshr i32 %1055, 4
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  store i8 %1058, i8* %32, align 1
  %1059 = icmp eq i32 %1043, 0
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %35, align 1
  %1061 = lshr i32 %1043, 31
  %1062 = trunc i32 %1061 to i8
  store i8 %1062, i8* %38, align 1
  %1063 = lshr i32 %1042, 31
  %1064 = xor i32 %1061, %1029
  %1065 = xor i32 %1061, %1063
  %1066 = add nuw nsw i32 %1064, %1065
  %1067 = icmp eq i32 %1066, 2
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %44, align 1
  %1069 = add i64 %1000, -116
  %1070 = add i64 %1002, 24
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  %1072 = load i32, i32* %1071, align 4
  %1073 = sext i32 %1043 to i64
  %1074 = sext i32 %1072 to i64
  %1075 = mul nsw i64 %1074, %1073
  %1076 = trunc i64 %1075 to i32
  %1077 = and i64 %1075, 4294967295
  store i64 %1077, i64* %RAX.i810, align 8
  %1078 = shl i64 %1075, 32
  %1079 = ashr exact i64 %1078, 32
  %1080 = icmp ne i64 %1079, %1075
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %20, align 1
  %1082 = and i32 %1076, 255
  %1083 = tail call i32 @llvm.ctpop.i32(i32 %1082)
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = xor i8 %1085, 1
  store i8 %1086, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  %1087 = lshr i32 %1076, 31
  %1088 = trunc i32 %1087 to i8
  store i8 %1088, i8* %38, align 1
  store i8 %1081, i8* %44, align 1
  %1089 = load i64, i64* %RBP.i, align 8
  %1090 = add i64 %1089, -104
  %1091 = add i64 %1002, 28
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1090 to i64*
  %1093 = load i64, i64* %1092, align 8
  store i64 %1093, i64* %RCX.i551, align 8
  %1094 = add i64 %1002, 31
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i16*
  %1096 = load i16, i16* %1095, align 2
  %1097 = sext i16 %1096 to i64
  %1098 = and i64 %1097, 4294967295
  store i64 %1098, i64* %RBX.i202, align 8
  %1099 = sext i16 %1096 to i32
  %1100 = zext i32 %1099 to i64
  %1101 = trunc i64 %1075 to i32
  %1102 = add i32 %1099, %1101
  %1103 = zext i32 %1102 to i64
  store i64 %1103, i64* %RAX.i810, align 8
  %1104 = icmp ult i32 %1102, %1101
  %1105 = icmp ult i32 %1102, %1099
  %1106 = or i1 %1104, %1105
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %20, align 1
  %1108 = and i32 %1102, 255
  %1109 = tail call i32 @llvm.ctpop.i32(i32 %1108)
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  %1112 = xor i8 %1111, 1
  store i8 %1112, i8* %27, align 1
  %1113 = xor i64 %1100, %1075
  %1114 = trunc i64 %1113 to i32
  %1115 = xor i32 %1114, %1102
  %1116 = lshr i32 %1115, 4
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  store i8 %1118, i8* %32, align 1
  %1119 = icmp eq i32 %1102, 0
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %35, align 1
  %1121 = lshr i32 %1102, 31
  %1122 = trunc i32 %1121 to i8
  store i8 %1122, i8* %38, align 1
  %1123 = lshr i32 %1101, 31
  %1124 = lshr i32 %1099, 31
  %1125 = xor i32 %1121, %1123
  %1126 = xor i32 %1121, %1124
  %1127 = add nuw nsw i32 %1125, %1126
  %1128 = icmp eq i32 %1127, 2
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %44, align 1
  %1130 = add i64 %1089, -60
  %1131 = add i64 %1002, 36
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i32*
  store i32 %1102, i32* %1132, align 4
  %1133 = load i64, i64* %RBP.i, align 8
  %1134 = add i64 %1133, -56
  %1135 = load i64, i64* %3, align 8
  %1136 = add i64 %1135, 3
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1134 to i32*
  %1138 = load i32, i32* %1137, align 4
  %1139 = zext i32 %1138 to i64
  store i64 %1139, i64* %RAX.i810, align 8
  %1140 = add i64 %1133, -24
  %1141 = add i64 %1135, 6
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i32*
  %1143 = load i32, i32* %1142, align 4
  %1144 = add i32 %1143, %1138
  %1145 = zext i32 %1144 to i64
  store i64 %1145, i64* %RAX.i810, align 8
  %1146 = icmp ult i32 %1144, %1138
  %1147 = icmp ult i32 %1144, %1143
  %1148 = or i1 %1146, %1147
  %1149 = zext i1 %1148 to i8
  store i8 %1149, i8* %20, align 1
  %1150 = and i32 %1144, 255
  %1151 = tail call i32 @llvm.ctpop.i32(i32 %1150)
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  %1154 = xor i8 %1153, 1
  store i8 %1154, i8* %27, align 1
  %1155 = xor i32 %1143, %1138
  %1156 = xor i32 %1155, %1144
  %1157 = lshr i32 %1156, 4
  %1158 = trunc i32 %1157 to i8
  %1159 = and i8 %1158, 1
  store i8 %1159, i8* %32, align 1
  %1160 = icmp eq i32 %1144, 0
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %35, align 1
  %1162 = lshr i32 %1144, 31
  %1163 = trunc i32 %1162 to i8
  store i8 %1163, i8* %38, align 1
  %1164 = lshr i32 %1138, 31
  %1165 = lshr i32 %1143, 31
  %1166 = xor i32 %1162, %1164
  %1167 = xor i32 %1162, %1165
  %1168 = add nuw nsw i32 %1166, %1167
  %1169 = icmp eq i32 %1168, 2
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %44, align 1
  %1171 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1171, i64* %RCX.i551, align 8
  %1172 = add i64 %1171, 180
  %1173 = add i64 %1135, 20
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = add i32 %1175, %1144
  %1177 = zext i32 %1176 to i64
  store i64 %1177, i64* %RAX.i810, align 8
  %1178 = icmp ult i32 %1176, %1144
  %1179 = icmp ult i32 %1176, %1175
  %1180 = or i1 %1178, %1179
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %20, align 1
  %1182 = and i32 %1176, 255
  %1183 = tail call i32 @llvm.ctpop.i32(i32 %1182)
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = xor i8 %1185, 1
  store i8 %1186, i8* %27, align 1
  %1187 = xor i32 %1175, %1144
  %1188 = xor i32 %1187, %1176
  %1189 = lshr i32 %1188, 4
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  store i8 %1191, i8* %32, align 1
  %1192 = icmp eq i32 %1176, 0
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %35, align 1
  %1194 = lshr i32 %1176, 31
  %1195 = trunc i32 %1194 to i8
  store i8 %1195, i8* %38, align 1
  %1196 = lshr i32 %1175, 31
  %1197 = xor i32 %1194, %1162
  %1198 = xor i32 %1194, %1196
  %1199 = add nuw nsw i32 %1197, %1198
  %1200 = icmp eq i32 %1199, 2
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %44, align 1
  %1202 = add i64 %1133, -124
  %1203 = add i64 %1135, 24
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i32*
  %1205 = load i32, i32* %1204, align 4
  %1206 = sext i32 %1176 to i64
  %1207 = sext i32 %1205 to i64
  %1208 = mul nsw i64 %1207, %1206
  %1209 = trunc i64 %1208 to i32
  %1210 = and i64 %1208, 4294967295
  store i64 %1210, i64* %RAX.i810, align 8
  %1211 = shl i64 %1208, 32
  %1212 = ashr exact i64 %1211, 32
  %1213 = icmp ne i64 %1212, %1208
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %20, align 1
  %1215 = and i32 %1209, 255
  %1216 = tail call i32 @llvm.ctpop.i32(i32 %1215)
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = xor i8 %1218, 1
  store i8 %1219, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  %1220 = lshr i32 %1209, 31
  %1221 = trunc i32 %1220 to i8
  store i8 %1221, i8* %38, align 1
  store i8 %1214, i8* %44, align 1
  %1222 = load i64, i64* %RBP.i, align 8
  %1223 = add i64 %1222, -104
  %1224 = add i64 %1135, 28
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i64*
  %1226 = load i64, i64* %1225, align 8
  store i64 %1226, i64* %RCX.i551, align 8
  %1227 = add i64 %1226, 2
  %1228 = add i64 %1135, 32
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to i16*
  %1230 = load i16, i16* %1229, align 2
  %1231 = sext i16 %1230 to i64
  %1232 = and i64 %1231, 4294967295
  store i64 %1232, i64* %RBX.i202, align 8
  %1233 = sext i16 %1230 to i32
  %1234 = zext i32 %1233 to i64
  %1235 = trunc i64 %1208 to i32
  %1236 = add i32 %1233, %1235
  %1237 = zext i32 %1236 to i64
  store i64 %1237, i64* %RAX.i810, align 8
  %1238 = icmp ult i32 %1236, %1235
  %1239 = icmp ult i32 %1236, %1233
  %1240 = or i1 %1238, %1239
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %20, align 1
  %1242 = and i32 %1236, 255
  %1243 = tail call i32 @llvm.ctpop.i32(i32 %1242)
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  store i8 %1246, i8* %27, align 1
  %1247 = xor i64 %1234, %1208
  %1248 = trunc i64 %1247 to i32
  %1249 = xor i32 %1248, %1236
  %1250 = lshr i32 %1249, 4
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  store i8 %1252, i8* %32, align 1
  %1253 = icmp eq i32 %1236, 0
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %35, align 1
  %1255 = lshr i32 %1236, 31
  %1256 = trunc i32 %1255 to i8
  store i8 %1256, i8* %38, align 1
  %1257 = lshr i32 %1235, 31
  %1258 = lshr i32 %1233, 31
  %1259 = xor i32 %1255, %1257
  %1260 = xor i32 %1255, %1258
  %1261 = add nuw nsw i32 %1259, %1260
  %1262 = icmp eq i32 %1261, 2
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %44, align 1
  %1264 = add i64 %1222, -64
  %1265 = add i64 %1135, 37
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1264 to i32*
  store i32 %1236, i32* %1266, align 4
  %1267 = load i64, i64* %RBP.i, align 8
  %1268 = add i64 %1267, -152
  %1269 = load i64, i64* %3, align 8
  %1270 = add i64 %1269, 7
  store i64 %1270, i64* %3, align 8
  %1271 = inttoptr i64 %1268 to i64*
  %1272 = load i64, i64* %1271, align 8
  store i64 %1272, i64* %RCX.i551, align 8
  %1273 = add i64 %1267, -38
  %1274 = add i64 %1269, 12
  store i64 %1274, i64* %3, align 8
  %1275 = inttoptr i64 %1273 to i16*
  %1276 = load i16, i16* %1275, align 2
  %1277 = sext i16 %1276 to i64
  store i64 %1277, i64* %RSI.i876.pre-phi, align 8
  %1278 = shl nsw i64 %1277, 3
  %1279 = add i64 %1278, %1272
  %1280 = add i64 %1269, 16
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1279 to i64*
  %1282 = load i64, i64* %1281, align 8
  store i64 %1282, i64* %RCX.i551, align 8
  %1283 = add i64 %1282, 6408
  %1284 = add i64 %1269, 22
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i32*
  %1286 = load i32, i32* %1285, align 4
  %1287 = zext i32 %1286 to i64
  store i64 %1287, i64* %RAX.i810, align 8
  %1288 = add i64 %1267, -64
  %1289 = add i64 %1269, 25
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = add i32 %1291, %1286
  %1293 = zext i32 %1292 to i64
  store i64 %1293, i64* %RAX.i810, align 8
  %1294 = icmp ult i32 %1292, %1286
  %1295 = icmp ult i32 %1292, %1291
  %1296 = or i1 %1294, %1295
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %20, align 1
  %1298 = and i32 %1292, 255
  %1299 = tail call i32 @llvm.ctpop.i32(i32 %1298)
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  store i8 %1302, i8* %27, align 1
  %1303 = xor i32 %1291, %1286
  %1304 = xor i32 %1303, %1292
  %1305 = lshr i32 %1304, 4
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  store i8 %1307, i8* %32, align 1
  %1308 = icmp eq i32 %1292, 0
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %35, align 1
  %1310 = lshr i32 %1292, 31
  %1311 = trunc i32 %1310 to i8
  store i8 %1311, i8* %38, align 1
  %1312 = lshr i32 %1286, 31
  %1313 = lshr i32 %1291, 31
  %1314 = xor i32 %1310, %1312
  %1315 = xor i32 %1310, %1313
  %1316 = add nuw nsw i32 %1314, %1315
  %1317 = icmp eq i32 %1316, 2
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %44, align 1
  %1319 = add i64 %1269, 28
  store i64 %1319, i64* %3, align 8
  store i32 %1292, i32* %1290, align 4
  %1320 = load i64, i64* %3, align 8
  %1321 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1321, i64* %RCX.i551, align 8
  %1322 = add i64 %1321, 56
  %1323 = add i64 %1320, 11
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i32*
  %1325 = load i32, i32* %1324, align 4
  %1326 = add i32 %1325, -1
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RAX.i810, align 8
  %1328 = icmp eq i32 %1325, 0
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %20, align 1
  %1330 = and i32 %1326, 255
  %1331 = tail call i32 @llvm.ctpop.i32(i32 %1330)
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  %1334 = xor i8 %1333, 1
  store i8 %1334, i8* %27, align 1
  %1335 = xor i32 %1326, %1325
  %1336 = lshr i32 %1335, 4
  %1337 = trunc i32 %1336 to i8
  %1338 = and i8 %1337, 1
  store i8 %1338, i8* %32, align 1
  %1339 = icmp eq i32 %1326, 0
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %35, align 1
  %1341 = lshr i32 %1326, 31
  %1342 = trunc i32 %1341 to i8
  store i8 %1342, i8* %38, align 1
  %1343 = lshr i32 %1325, 31
  %1344 = xor i32 %1341, %1343
  %1345 = add nuw nsw i32 %1344, %1343
  %1346 = icmp eq i32 %1345, 2
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %44, align 1
  %1348 = load i64, i64* %RBP.i, align 8
  %1349 = add i64 %1348, -60
  %1350 = add i64 %1320, 17
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to i32*
  %1352 = load i32, i32* %1351, align 4
  %1353 = zext i32 %1352 to i64
  store i64 %1353, i64* %RBX.i202, align 8
  %1354 = add i64 %1348, -192
  %1355 = add i64 %1320, 23
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i32*
  store i32 %1326, i32* %1356, align 4
  %1357 = load i32, i32* %EBX.i740, align 4
  %1358 = zext i32 %1357 to i64
  %1359 = load i64, i64* %3, align 8
  store i64 %1358, i64* %RAX.i810, align 8
  %1360 = sext i32 %1357 to i64
  %1361 = lshr i64 %1360, 32
  store i64 %1361, i64* %119, align 8
  %1362 = load i64, i64* %RBP.i, align 8
  %1363 = add i64 %1362, -116
  %1364 = add i64 %1359, 6
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1363 to i32*
  %1366 = load i32, i32* %1365, align 4
  %1367 = sext i32 %1366 to i64
  %1368 = shl nuw i64 %1361, 32
  %1369 = or i64 %1368, %1358
  %1370 = sdiv i64 %1369, %1367
  %1371 = shl i64 %1370, 32
  %1372 = ashr exact i64 %1371, 32
  %1373 = icmp eq i64 %1370, %1372
  br i1 %1373, label %1376, label %1374

; <label>:1374:                                   ; preds = %routine_idivl__r11d.exit
  %1375 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1364, %struct.Memory* %959)
  %.pre44 = load i64, i64* %RBP.i, align 8
  %.pre45 = load i64, i64* %3, align 8
  %.pre46 = load i32, i32* %120, align 4
  br label %routine_idivl_MINUS0x74__rbp_.exit671

; <label>:1376:                                   ; preds = %routine_idivl__r11d.exit
  %1377 = srem i64 %1369, %1367
  %1378 = and i64 %1370, 4294967295
  store i64 %1378, i64* %RAX.i810, align 8
  %1379 = and i64 %1377, 4294967295
  store i64 %1379, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %1380 = trunc i64 %1370 to i32
  br label %routine_idivl_MINUS0x74__rbp_.exit671

routine_idivl_MINUS0x74__rbp_.exit671:            ; preds = %1376, %1374
  %1381 = phi i32 [ %.pre46, %1374 ], [ %1380, %1376 ]
  %1382 = phi i64 [ %.pre45, %1374 ], [ %1364, %1376 ]
  %1383 = phi i64 [ %.pre44, %1374 ], [ %1362, %1376 ]
  %1384 = phi %struct.Memory* [ %1375, %1374 ], [ %959, %1376 ]
  %1385 = add i64 %1383, -192
  %1386 = add i64 %1382, 6
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i32*
  %1388 = load i32, i32* %1387, align 4
  %1389 = zext i32 %1388 to i64
  store i64 %1389, i64* %RBX.i202, align 8
  %1390 = sub i32 %1388, %1381
  %1391 = icmp ult i32 %1388, %1381
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %20, align 1
  %1393 = and i32 %1390, 255
  %1394 = tail call i32 @llvm.ctpop.i32(i32 %1393)
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  %1397 = xor i8 %1396, 1
  store i8 %1397, i8* %27, align 1
  %1398 = xor i32 %1381, %1388
  %1399 = xor i32 %1398, %1390
  %1400 = lshr i32 %1399, 4
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  store i8 %1402, i8* %32, align 1
  %1403 = icmp eq i32 %1390, 0
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %35, align 1
  %1405 = lshr i32 %1390, 31
  %1406 = trunc i32 %1405 to i8
  store i8 %1406, i8* %38, align 1
  %1407 = lshr i32 %1388, 31
  %1408 = lshr i32 %1381, 31
  %1409 = xor i32 %1408, %1407
  %1410 = xor i32 %1405, %1407
  %1411 = add nuw nsw i32 %1410, %1409
  %1412 = icmp eq i32 %1411, 2
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %44, align 1
  %1414 = icmp ne i8 %1406, 0
  %1415 = xor i1 %1414, %1412
  %.v110 = select i1 %1415, i64 14, i64 39
  %1416 = add i64 %1382, %.v110
  store i64 %1416, i64* %3, align 8
  br i1 %1415, label %block_44086e, label %block_.L_440887

block_44086e:                                     ; preds = %routine_idivl_MINUS0x74__rbp_.exit671
  %1417 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1417, i64* %RAX.i810, align 8
  %1418 = add i64 %1417, 56
  %1419 = add i64 %1416, 11
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i32*
  %1421 = load i32, i32* %1420, align 4
  %1422 = add i32 %1421, -1
  %1423 = zext i32 %1422 to i64
  store i64 %1423, i64* %RCX.i551, align 8
  %1424 = icmp eq i32 %1421, 0
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %20, align 1
  %1426 = and i32 %1422, 255
  %1427 = tail call i32 @llvm.ctpop.i32(i32 %1426)
  %1428 = trunc i32 %1427 to i8
  %1429 = and i8 %1428, 1
  %1430 = xor i8 %1429, 1
  store i8 %1430, i8* %27, align 1
  %1431 = xor i32 %1422, %1421
  %1432 = lshr i32 %1431, 4
  %1433 = trunc i32 %1432 to i8
  %1434 = and i8 %1433, 1
  store i8 %1434, i8* %32, align 1
  %1435 = icmp eq i32 %1422, 0
  %1436 = zext i1 %1435 to i8
  store i8 %1436, i8* %35, align 1
  %1437 = lshr i32 %1422, 31
  %1438 = trunc i32 %1437 to i8
  store i8 %1438, i8* %38, align 1
  %1439 = lshr i32 %1421, 31
  %1440 = xor i32 %1437, %1439
  %1441 = add nuw nsw i32 %1440, %1439
  %1442 = icmp eq i32 %1441, 2
  %1443 = zext i1 %1442 to i8
  store i8 %1443, i8* %44, align 1
  %1444 = add i64 %1383, -196
  %1445 = add i64 %1416, 20
  store i64 %1445, i64* %3, align 8
  %1446 = inttoptr i64 %1444 to i32*
  store i32 %1422, i32* %1446, align 4
  %1447 = load i64, i64* %3, align 8
  %1448 = add i64 %1447, 18
  store i64 %1448, i64* %3, align 8
  br label %block_.L_440894

block_.L_440887:                                  ; preds = %routine_idivl_MINUS0x74__rbp_.exit671
  %1449 = add i64 %1383, -60
  %1450 = add i64 %1416, 3
  store i64 %1450, i64* %3, align 8
  %1451 = inttoptr i64 %1449 to i32*
  %1452 = load i32, i32* %1451, align 4
  %1453 = zext i32 %1452 to i64
  store i64 %1453, i64* %RAX.i810, align 8
  %1454 = sext i32 %1452 to i64
  %1455 = lshr i64 %1454, 32
  store i64 %1455, i64* %119, align 8
  %1456 = add i64 %1383, -116
  %1457 = add i64 %1416, 7
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1456 to i32*
  %1459 = load i32, i32* %1458, align 4
  %1460 = sext i32 %1459 to i64
  %1461 = shl nuw i64 %1455, 32
  %1462 = or i64 %1461, %1453
  %1463 = sdiv i64 %1462, %1460
  %1464 = shl i64 %1463, 32
  %1465 = ashr exact i64 %1464, 32
  %1466 = icmp eq i64 %1463, %1465
  br i1 %1466, label %1469, label %1467

; <label>:1467:                                   ; preds = %block_.L_440887
  %1468 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1457, %struct.Memory* %1384)
  %.pre47 = load i64, i64* %RBP.i, align 8
  %.pre48 = load i32, i32* %120, align 4
  %.pre49 = load i64, i64* %3, align 8
  br label %routine_idivl_MINUS0x74__rbp_.exit644

; <label>:1469:                                   ; preds = %block_.L_440887
  %1470 = srem i64 %1462, %1460
  %1471 = and i64 %1463, 4294967295
  store i64 %1471, i64* %RAX.i810, align 8
  %1472 = and i64 %1470, 4294967295
  store i64 %1472, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %1473 = trunc i64 %1463 to i32
  br label %routine_idivl_MINUS0x74__rbp_.exit644

routine_idivl_MINUS0x74__rbp_.exit644:            ; preds = %1469, %1467
  %1474 = phi i64 [ %.pre49, %1467 ], [ %1457, %1469 ]
  %1475 = phi i32 [ %.pre48, %1467 ], [ %1473, %1469 ]
  %1476 = phi i64 [ %.pre47, %1467 ], [ %1383, %1469 ]
  %1477 = phi %struct.Memory* [ %1468, %1467 ], [ %1384, %1469 ]
  %1478 = add i64 %1476, -196
  %1479 = add i64 %1474, 6
  store i64 %1479, i64* %3, align 8
  %1480 = inttoptr i64 %1478 to i32*
  store i32 %1475, i32* %1480, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_440894

block_.L_440894:                                  ; preds = %routine_idivl_MINUS0x74__rbp_.exit644, %block_44086e
  %1481 = phi i64 [ %.pre50, %routine_idivl_MINUS0x74__rbp_.exit644 ], [ %1448, %block_44086e ]
  %MEMORY.5 = phi %struct.Memory* [ %1477, %routine_idivl_MINUS0x74__rbp_.exit644 ], [ %1384, %block_44086e ]
  %1482 = load i64, i64* %RBP.i, align 8
  %1483 = add i64 %1482, -196
  %1484 = add i64 %1481, 6
  store i64 %1484, i64* %3, align 8
  %1485 = inttoptr i64 %1483 to i32*
  %1486 = load i32, i32* %1485, align 4
  %1487 = zext i32 %1486 to i64
  store i64 %1487, i64* %RAX.i810, align 8
  store i64 0, i64* %RCX.i551, align 8
  %1488 = sub i32 0, %1486
  %1489 = icmp ne i32 %1486, 0
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %20, align 1
  %1491 = and i32 %1488, 255
  %1492 = tail call i32 @llvm.ctpop.i32(i32 %1491)
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  store i8 %1495, i8* %27, align 1
  %1496 = xor i32 %1486, %1488
  %1497 = lshr i32 %1496, 4
  %1498 = trunc i32 %1497 to i8
  %1499 = and i8 %1498, 1
  store i8 %1499, i8* %32, align 1
  %1500 = icmp eq i32 %1486, 0
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %35, align 1
  %1502 = lshr i32 %1488, 31
  %1503 = trunc i32 %1502 to i8
  store i8 %1503, i8* %38, align 1
  %1504 = lshr i32 %1486, 31
  %1505 = add nuw nsw i32 %1502, %1504
  %1506 = icmp eq i32 %1505, 2
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %44, align 1
  %1508 = icmp ne i8 %1503, 0
  %1509 = xor i1 %1508, %1506
  %1510 = or i1 %1500, %1509
  %.v111 = select i1 %1510, i64 29, i64 16
  %1511 = add i64 %1481, %.v111
  store i64 %1511, i64* %3, align 8
  br i1 %1510, label %block_.L_4408b1, label %block_4408a4

block_4408a4:                                     ; preds = %block_.L_440894
  store i64 0, i64* %RAX.i810, align 8
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i8 0, i8* %32, align 1
  %1512 = add i64 %1482, -200
  %1513 = add i64 %1511, 8
  store i64 %1513, i64* %3, align 8
  %1514 = inttoptr i64 %1512 to i32*
  store i32 0, i32* %1514, align 4
  %1515 = load i64, i64* %3, align 8
  %1516 = add i64 %1515, 84
  store i64 %1516, i64* %3, align 8
  br label %block_.L_440900

block_.L_4408b1:                                  ; preds = %block_.L_440894
  %1517 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1517, i64* %RAX.i810, align 8
  %1518 = add i64 %1517, 56
  %1519 = add i64 %1511, 11
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i32*
  %1521 = load i32, i32* %1520, align 4
  %1522 = add i32 %1521, -1
  %1523 = zext i32 %1522 to i64
  store i64 %1523, i64* %RCX.i551, align 8
  %1524 = icmp eq i32 %1521, 0
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %20, align 1
  %1526 = and i32 %1522, 255
  %1527 = tail call i32 @llvm.ctpop.i32(i32 %1526)
  %1528 = trunc i32 %1527 to i8
  %1529 = and i8 %1528, 1
  %1530 = xor i8 %1529, 1
  store i8 %1530, i8* %27, align 1
  %1531 = xor i32 %1522, %1521
  %1532 = lshr i32 %1531, 4
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  store i8 %1534, i8* %32, align 1
  %1535 = icmp eq i32 %1522, 0
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %35, align 1
  %1537 = lshr i32 %1522, 31
  %1538 = trunc i32 %1537 to i8
  store i8 %1538, i8* %38, align 1
  %1539 = lshr i32 %1521, 31
  %1540 = xor i32 %1537, %1539
  %1541 = add nuw nsw i32 %1540, %1539
  %1542 = icmp eq i32 %1541, 2
  %1543 = zext i1 %1542 to i8
  store i8 %1543, i8* %44, align 1
  %1544 = add i64 %1482, -60
  %1545 = add i64 %1511, 17
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to i32*
  %1547 = load i32, i32* %1546, align 4
  %1548 = zext i32 %1547 to i64
  store i64 %1548, i64* %RAX.i810, align 8
  %1549 = sext i32 %1547 to i64
  %1550 = lshr i64 %1549, 32
  store i64 %1550, i64* %119, align 8
  %1551 = add i64 %1482, -116
  %1552 = add i64 %1511, 21
  store i64 %1552, i64* %3, align 8
  %1553 = inttoptr i64 %1551 to i32*
  %1554 = load i32, i32* %1553, align 4
  %1555 = sext i32 %1554 to i64
  %1556 = shl nuw i64 %1550, 32
  %1557 = or i64 %1556, %1548
  %1558 = sdiv i64 %1557, %1555
  %1559 = shl i64 %1558, 32
  %1560 = ashr exact i64 %1559, 32
  %1561 = icmp eq i64 %1558, %1560
  br i1 %1561, label %1564, label %1562

; <label>:1562:                                   ; preds = %block_.L_4408b1
  %1563 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1552, %struct.Memory* %MEMORY.5)
  %.pre51 = load i32, i32* %ECX.i1006, align 4
  %.pre52 = load i32, i32* %120, align 4
  %.pre53 = load i64, i64* %3, align 8
  br label %routine_idivl_MINUS0x74__rbp_.exit607

; <label>:1564:                                   ; preds = %block_.L_4408b1
  %1565 = srem i64 %1557, %1555
  %1566 = and i64 %1558, 4294967295
  store i64 %1566, i64* %RAX.i810, align 8
  %1567 = and i64 %1565, 4294967295
  store i64 %1567, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %1568 = trunc i64 %1558 to i32
  br label %routine_idivl_MINUS0x74__rbp_.exit607

routine_idivl_MINUS0x74__rbp_.exit607:            ; preds = %1564, %1562
  %1569 = phi i64 [ %.pre53, %1562 ], [ %1552, %1564 ]
  %1570 = phi i32 [ %.pre52, %1562 ], [ %1568, %1564 ]
  %1571 = phi i32 [ %.pre51, %1562 ], [ %1522, %1564 ]
  %1572 = phi %struct.Memory* [ %1563, %1562 ], [ %MEMORY.5, %1564 ]
  %1573 = sub i32 %1571, %1570
  %1574 = icmp ult i32 %1571, %1570
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %20, align 1
  %1576 = and i32 %1573, 255
  %1577 = tail call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  store i8 %1580, i8* %27, align 1
  %1581 = xor i32 %1570, %1571
  %1582 = xor i32 %1581, %1573
  %1583 = lshr i32 %1582, 4
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  store i8 %1585, i8* %32, align 1
  %1586 = icmp eq i32 %1573, 0
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %35, align 1
  %1588 = lshr i32 %1573, 31
  %1589 = trunc i32 %1588 to i8
  store i8 %1589, i8* %38, align 1
  %1590 = lshr i32 %1571, 31
  %1591 = lshr i32 %1570, 31
  %1592 = xor i32 %1591, %1590
  %1593 = xor i32 %1588, %1590
  %1594 = add nuw nsw i32 %1593, %1592
  %1595 = icmp eq i32 %1594, 2
  %1596 = zext i1 %1595 to i8
  store i8 %1596, i8* %44, align 1
  %1597 = icmp ne i8 %1589, 0
  %1598 = xor i1 %1597, %1595
  %.v121 = select i1 %1598, i64 8, i64 33
  %1599 = add i64 %1569, %.v121
  store i64 %1599, i64* %3, align 8
  br i1 %1598, label %block_4408ce, label %block_.L_4408e7

block_4408ce:                                     ; preds = %routine_idivl_MINUS0x74__rbp_.exit607
  %1600 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1600, i64* %RAX.i810, align 8
  %1601 = add i64 %1600, 56
  %1602 = add i64 %1599, 11
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1601 to i32*
  %1604 = load i32, i32* %1603, align 4
  %1605 = add i32 %1604, -1
  %1606 = zext i32 %1605 to i64
  store i64 %1606, i64* %RCX.i551, align 8
  %1607 = icmp eq i32 %1604, 0
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %20, align 1
  %1609 = and i32 %1605, 255
  %1610 = tail call i32 @llvm.ctpop.i32(i32 %1609)
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  %1613 = xor i8 %1612, 1
  store i8 %1613, i8* %27, align 1
  %1614 = xor i32 %1605, %1604
  %1615 = lshr i32 %1614, 4
  %1616 = trunc i32 %1615 to i8
  %1617 = and i8 %1616, 1
  store i8 %1617, i8* %32, align 1
  %1618 = icmp eq i32 %1605, 0
  %1619 = zext i1 %1618 to i8
  store i8 %1619, i8* %35, align 1
  %1620 = lshr i32 %1605, 31
  %1621 = trunc i32 %1620 to i8
  store i8 %1621, i8* %38, align 1
  %1622 = lshr i32 %1604, 31
  %1623 = xor i32 %1620, %1622
  %1624 = add nuw nsw i32 %1623, %1622
  %1625 = icmp eq i32 %1624, 2
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %44, align 1
  %1627 = load i64, i64* %RBP.i, align 8
  %1628 = add i64 %1627, -204
  %1629 = add i64 %1599, 20
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1628 to i32*
  store i32 %1605, i32* %1630, align 4
  %1631 = load i64, i64* %3, align 8
  %1632 = add i64 %1631, 18
  store i64 %1632, i64* %3, align 8
  br label %block_.L_4408f4

block_.L_4408e7:                                  ; preds = %routine_idivl_MINUS0x74__rbp_.exit607
  %1633 = load i64, i64* %RBP.i, align 8
  %1634 = add i64 %1633, -60
  %1635 = add i64 %1599, 3
  store i64 %1635, i64* %3, align 8
  %1636 = inttoptr i64 %1634 to i32*
  %1637 = load i32, i32* %1636, align 4
  %1638 = zext i32 %1637 to i64
  store i64 %1638, i64* %RAX.i810, align 8
  %1639 = sext i32 %1637 to i64
  %1640 = lshr i64 %1639, 32
  store i64 %1640, i64* %119, align 8
  %1641 = add i64 %1633, -116
  %1642 = add i64 %1599, 7
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1641 to i32*
  %1644 = load i32, i32* %1643, align 4
  %1645 = sext i32 %1644 to i64
  %1646 = shl nuw i64 %1640, 32
  %1647 = or i64 %1646, %1638
  %1648 = sdiv i64 %1647, %1645
  %1649 = shl i64 %1648, 32
  %1650 = ashr exact i64 %1649, 32
  %1651 = icmp eq i64 %1648, %1650
  br i1 %1651, label %1654, label %1652

; <label>:1652:                                   ; preds = %block_.L_4408e7
  %1653 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1642, %struct.Memory* %1572)
  %.pre54 = load i64, i64* %RBP.i, align 8
  %.pre55 = load i32, i32* %120, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %routine_idivl_MINUS0x74__rbp_.exit583

; <label>:1654:                                   ; preds = %block_.L_4408e7
  %1655 = srem i64 %1647, %1645
  %1656 = and i64 %1648, 4294967295
  store i64 %1656, i64* %RAX.i810, align 8
  %1657 = and i64 %1655, 4294967295
  store i64 %1657, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %1658 = trunc i64 %1648 to i32
  br label %routine_idivl_MINUS0x74__rbp_.exit583

routine_idivl_MINUS0x74__rbp_.exit583:            ; preds = %1654, %1652
  %1659 = phi i64 [ %.pre56, %1652 ], [ %1642, %1654 ]
  %1660 = phi i32 [ %.pre55, %1652 ], [ %1658, %1654 ]
  %1661 = phi i64 [ %.pre54, %1652 ], [ %1633, %1654 ]
  %1662 = phi %struct.Memory* [ %1653, %1652 ], [ %1572, %1654 ]
  %1663 = add i64 %1661, -204
  %1664 = add i64 %1659, 6
  store i64 %1664, i64* %3, align 8
  %1665 = inttoptr i64 %1663 to i32*
  store i32 %1660, i32* %1665, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_4408f4

block_.L_4408f4:                                  ; preds = %routine_idivl_MINUS0x74__rbp_.exit583, %block_4408ce
  %1666 = phi i64 [ %.pre57, %routine_idivl_MINUS0x74__rbp_.exit583 ], [ %1632, %block_4408ce ]
  %MEMORY.6 = phi %struct.Memory* [ %1662, %routine_idivl_MINUS0x74__rbp_.exit583 ], [ %1572, %block_4408ce ]
  %1667 = load i64, i64* %RBP.i, align 8
  %1668 = add i64 %1667, -204
  %1669 = add i64 %1666, 6
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1668 to i32*
  %1671 = load i32, i32* %1670, align 4
  %1672 = zext i32 %1671 to i64
  store i64 %1672, i64* %RAX.i810, align 8
  %1673 = add i64 %1667, -200
  %1674 = add i64 %1666, 12
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1673 to i32*
  store i32 %1671, i32* %1675, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_440900

block_.L_440900:                                  ; preds = %block_.L_4408f4, %block_4408a4
  %1676 = phi i64 [ %.pre58, %block_.L_4408f4 ], [ %1516, %block_4408a4 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_.L_4408f4 ], [ %MEMORY.5, %block_4408a4 ]
  %1677 = load i64, i64* %RBP.i, align 8
  %1678 = add i64 %1677, -200
  %1679 = add i64 %1676, 6
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i32*
  %1681 = load i32, i32* %1680, align 4
  %1682 = zext i32 %1681 to i64
  store i64 %1682, i64* %RAX.i810, align 8
  %1683 = add i64 %1677, -68
  %1684 = add i64 %1676, 9
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1683 to i32*
  store i32 %1681, i32* %1685, align 4
  %1686 = load i64, i64* %RBP.i, align 8
  %1687 = add i64 %1686, -144
  %1688 = load i64, i64* %3, align 8
  %1689 = add i64 %1688, 6
  store i64 %1689, i64* %3, align 8
  %1690 = inttoptr i64 %1687 to i32*
  %1691 = load i32, i32* %1690, align 4
  %1692 = zext i32 %1691 to i64
  store i64 %1692, i64* %RAX.i810, align 8
  %1693 = add i64 %1686, -64
  %1694 = add i64 %1688, 9
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1693 to i32*
  %1696 = load i32, i32* %1695, align 4
  %1697 = zext i32 %1696 to i64
  store i64 %1697, i64* %RCX.i551, align 8
  %1698 = add i64 %1686, -208
  %1699 = add i64 %1688, 15
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1698 to i32*
  store i32 %1691, i32* %1700, align 4
  %1701 = load i32, i32* %ECX.i1006, align 4
  %1702 = zext i32 %1701 to i64
  %1703 = load i64, i64* %3, align 8
  store i64 %1702, i64* %RAX.i810, align 8
  %1704 = sext i32 %1701 to i64
  %1705 = lshr i64 %1704, 32
  store i64 %1705, i64* %119, align 8
  %1706 = load i64, i64* %RBP.i, align 8
  %1707 = add i64 %1706, -124
  %1708 = add i64 %1703, 6
  store i64 %1708, i64* %3, align 8
  %1709 = inttoptr i64 %1707 to i32*
  %1710 = load i32, i32* %1709, align 4
  %1711 = sext i32 %1710 to i64
  %1712 = shl nuw i64 %1705, 32
  %1713 = or i64 %1712, %1702
  %1714 = sdiv i64 %1713, %1711
  %1715 = shl i64 %1714, 32
  %1716 = ashr exact i64 %1715, 32
  %1717 = icmp eq i64 %1714, %1716
  br i1 %1717, label %1720, label %1718

; <label>:1718:                                   ; preds = %block_.L_440900
  %1719 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1708, %struct.Memory* %MEMORY.7)
  %.pre59 = load i64, i64* %RBP.i, align 8
  %.pre60 = load i64, i64* %3, align 8
  %.pre61 = load i32, i32* %120, align 4
  br label %routine_idivl_MINUS0x7c__rbp_.exit549

; <label>:1720:                                   ; preds = %block_.L_440900
  %1721 = srem i64 %1713, %1711
  %1722 = and i64 %1714, 4294967295
  store i64 %1722, i64* %RAX.i810, align 8
  %1723 = and i64 %1721, 4294967295
  store i64 %1723, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %1724 = trunc i64 %1714 to i32
  br label %routine_idivl_MINUS0x7c__rbp_.exit549

routine_idivl_MINUS0x7c__rbp_.exit549:            ; preds = %1720, %1718
  %1725 = phi i32 [ %.pre61, %1718 ], [ %1724, %1720 ]
  %1726 = phi i64 [ %.pre60, %1718 ], [ %1708, %1720 ]
  %1727 = phi i64 [ %.pre59, %1718 ], [ %1706, %1720 ]
  %1728 = phi %struct.Memory* [ %1719, %1718 ], [ %MEMORY.7, %1720 ]
  %1729 = add i64 %1727, -208
  %1730 = add i64 %1726, 6
  store i64 %1730, i64* %3, align 8
  %1731 = inttoptr i64 %1729 to i32*
  %1732 = load i32, i32* %1731, align 4
  %1733 = zext i32 %1732 to i64
  store i64 %1733, i64* %RCX.i551, align 8
  %1734 = sub i32 %1732, %1725
  %1735 = icmp ult i32 %1732, %1725
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %20, align 1
  %1737 = and i32 %1734, 255
  %1738 = tail call i32 @llvm.ctpop.i32(i32 %1737)
  %1739 = trunc i32 %1738 to i8
  %1740 = and i8 %1739, 1
  %1741 = xor i8 %1740, 1
  store i8 %1741, i8* %27, align 1
  %1742 = xor i32 %1725, %1732
  %1743 = xor i32 %1742, %1734
  %1744 = lshr i32 %1743, 4
  %1745 = trunc i32 %1744 to i8
  %1746 = and i8 %1745, 1
  store i8 %1746, i8* %32, align 1
  %1747 = icmp eq i32 %1734, 0
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %35, align 1
  %1749 = lshr i32 %1734, 31
  %1750 = trunc i32 %1749 to i8
  store i8 %1750, i8* %38, align 1
  %1751 = lshr i32 %1732, 31
  %1752 = lshr i32 %1725, 31
  %1753 = xor i32 %1752, %1751
  %1754 = xor i32 %1749, %1751
  %1755 = add nuw nsw i32 %1754, %1753
  %1756 = icmp eq i32 %1755, 2
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %44, align 1
  %1758 = icmp ne i8 %1750, 0
  %1759 = xor i1 %1758, %1756
  %.v112 = select i1 %1759, i64 14, i64 31
  %1760 = add i64 %1726, %.v112
  store i64 %1760, i64* %3, align 8
  br i1 %1759, label %block_44092c, label %block_.L_44093d

block_44092c:                                     ; preds = %routine_idivl_MINUS0x7c__rbp_.exit549
  %1761 = add i64 %1727, -144
  %1762 = add i64 %1760, 6
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i32*
  %1764 = load i32, i32* %1763, align 4
  %1765 = zext i32 %1764 to i64
  store i64 %1765, i64* %RAX.i810, align 8
  %1766 = add i64 %1727, -212
  %1767 = add i64 %1760, 12
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1766 to i32*
  store i32 %1764, i32* %1768, align 4
  %1769 = load i64, i64* %3, align 8
  %1770 = add i64 %1769, 18
  store i64 %1770, i64* %3, align 8
  br label %block_.L_44094a

block_.L_44093d:                                  ; preds = %routine_idivl_MINUS0x7c__rbp_.exit549
  %1771 = add i64 %1727, -64
  %1772 = add i64 %1760, 3
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i32*
  %1774 = load i32, i32* %1773, align 4
  %1775 = zext i32 %1774 to i64
  store i64 %1775, i64* %RAX.i810, align 8
  %1776 = sext i32 %1774 to i64
  %1777 = lshr i64 %1776, 32
  store i64 %1777, i64* %119, align 8
  %1778 = add i64 %1727, -124
  %1779 = add i64 %1760, 7
  store i64 %1779, i64* %3, align 8
  %1780 = inttoptr i64 %1778 to i32*
  %1781 = load i32, i32* %1780, align 4
  %1782 = sext i32 %1781 to i64
  %1783 = shl nuw i64 %1777, 32
  %1784 = or i64 %1783, %1775
  %1785 = sdiv i64 %1784, %1782
  %1786 = shl i64 %1785, 32
  %1787 = ashr exact i64 %1786, 32
  %1788 = icmp eq i64 %1785, %1787
  br i1 %1788, label %1791, label %1789

; <label>:1789:                                   ; preds = %block_.L_44093d
  %1790 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1779, %struct.Memory* %1728)
  %.pre62 = load i64, i64* %RBP.i, align 8
  %.pre63 = load i32, i32* %120, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %routine_idivl_MINUS0x7c__rbp_.exit525

; <label>:1791:                                   ; preds = %block_.L_44093d
  %1792 = srem i64 %1784, %1782
  %1793 = and i64 %1785, 4294967295
  store i64 %1793, i64* %RAX.i810, align 8
  %1794 = and i64 %1792, 4294967295
  store i64 %1794, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %1795 = trunc i64 %1785 to i32
  br label %routine_idivl_MINUS0x7c__rbp_.exit525

routine_idivl_MINUS0x7c__rbp_.exit525:            ; preds = %1791, %1789
  %1796 = phi i64 [ %.pre64, %1789 ], [ %1779, %1791 ]
  %1797 = phi i32 [ %.pre63, %1789 ], [ %1795, %1791 ]
  %1798 = phi i64 [ %.pre62, %1789 ], [ %1727, %1791 ]
  %1799 = phi %struct.Memory* [ %1790, %1789 ], [ %1728, %1791 ]
  %1800 = add i64 %1798, -212
  %1801 = add i64 %1796, 6
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i32*
  store i32 %1797, i32* %1802, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_44094a

block_.L_44094a:                                  ; preds = %routine_idivl_MINUS0x7c__rbp_.exit525, %block_44092c
  %1803 = phi i64 [ %.pre65, %routine_idivl_MINUS0x7c__rbp_.exit525 ], [ %1770, %block_44092c ]
  %MEMORY.8 = phi %struct.Memory* [ %1799, %routine_idivl_MINUS0x7c__rbp_.exit525 ], [ %1728, %block_44092c ]
  %1804 = load i64, i64* %RBP.i, align 8
  %1805 = add i64 %1804, -212
  %1806 = add i64 %1803, 6
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to i32*
  %1808 = load i32, i32* %1807, align 4
  %1809 = zext i32 %1808 to i64
  store i64 %1809, i64* %RAX.i810, align 8
  store i64 0, i64* %RCX.i551, align 8
  %1810 = sub i32 0, %1808
  %1811 = icmp ne i32 %1808, 0
  %1812 = zext i1 %1811 to i8
  store i8 %1812, i8* %20, align 1
  %1813 = and i32 %1810, 255
  %1814 = tail call i32 @llvm.ctpop.i32(i32 %1813)
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  store i8 %1817, i8* %27, align 1
  %1818 = xor i32 %1808, %1810
  %1819 = lshr i32 %1818, 4
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  store i8 %1821, i8* %32, align 1
  %1822 = icmp eq i32 %1808, 0
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %35, align 1
  %1824 = lshr i32 %1810, 31
  %1825 = trunc i32 %1824 to i8
  store i8 %1825, i8* %38, align 1
  %1826 = lshr i32 %1808, 31
  %1827 = add nuw nsw i32 %1824, %1826
  %1828 = icmp eq i32 %1827, 2
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %44, align 1
  %1830 = icmp ne i8 %1825, 0
  %1831 = xor i1 %1830, %1828
  %1832 = or i1 %1822, %1831
  %.v113 = select i1 %1832, i64 29, i64 16
  %1833 = add i64 %1803, %.v113
  store i64 %1833, i64* %3, align 8
  br i1 %1832, label %block_.L_440967, label %block_44095a

block_44095a:                                     ; preds = %block_.L_44094a
  store i64 0, i64* %RAX.i810, align 8
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i8 0, i8* %32, align 1
  %1834 = add i64 %1804, -216
  %1835 = add i64 %1833, 8
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1834 to i32*
  store i32 0, i32* %1836, align 4
  %1837 = load i64, i64* %3, align 8
  %1838 = add i64 %1837, 82
  store i64 %1838, i64* %3, align 8
  br label %block_.L_4409b4

block_.L_440967:                                  ; preds = %block_.L_44094a
  %1839 = add i64 %1804, -144
  %1840 = add i64 %1833, 6
  store i64 %1840, i64* %3, align 8
  %1841 = inttoptr i64 %1839 to i32*
  %1842 = load i32, i32* %1841, align 4
  %1843 = zext i32 %1842 to i64
  store i64 %1843, i64* %RAX.i810, align 8
  %1844 = add i64 %1804, -64
  %1845 = add i64 %1833, 9
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i32*
  %1847 = load i32, i32* %1846, align 4
  %1848 = zext i32 %1847 to i64
  store i64 %1848, i64* %RCX.i551, align 8
  %1849 = add i64 %1804, -220
  %1850 = add i64 %1833, 15
  store i64 %1850, i64* %3, align 8
  %1851 = inttoptr i64 %1849 to i32*
  store i32 %1842, i32* %1851, align 4
  %1852 = load i32, i32* %ECX.i1006, align 4
  %1853 = zext i32 %1852 to i64
  %1854 = load i64, i64* %3, align 8
  store i64 %1853, i64* %RAX.i810, align 8
  %1855 = sext i32 %1852 to i64
  %1856 = lshr i64 %1855, 32
  store i64 %1856, i64* %119, align 8
  %1857 = load i64, i64* %RBP.i, align 8
  %1858 = add i64 %1857, -124
  %1859 = add i64 %1854, 6
  store i64 %1859, i64* %3, align 8
  %1860 = inttoptr i64 %1858 to i32*
  %1861 = load i32, i32* %1860, align 4
  %1862 = sext i32 %1861 to i64
  %1863 = shl nuw i64 %1856, 32
  %1864 = or i64 %1863, %1853
  %1865 = sdiv i64 %1864, %1862
  %1866 = shl i64 %1865, 32
  %1867 = ashr exact i64 %1866, 32
  %1868 = icmp eq i64 %1865, %1867
  br i1 %1868, label %1871, label %1869

; <label>:1869:                                   ; preds = %block_.L_440967
  %1870 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1859, %struct.Memory* %MEMORY.8)
  %.pre66 = load i64, i64* %RBP.i, align 8
  %.pre67 = load i64, i64* %3, align 8
  %.pre68 = load i32, i32* %120, align 4
  br label %routine_idivl_MINUS0x7c__rbp_.exit486

; <label>:1871:                                   ; preds = %block_.L_440967
  %1872 = srem i64 %1864, %1862
  %1873 = and i64 %1865, 4294967295
  store i64 %1873, i64* %RAX.i810, align 8
  %1874 = and i64 %1872, 4294967295
  store i64 %1874, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %1875 = trunc i64 %1865 to i32
  br label %routine_idivl_MINUS0x7c__rbp_.exit486

routine_idivl_MINUS0x7c__rbp_.exit486:            ; preds = %1871, %1869
  %1876 = phi i32 [ %.pre68, %1869 ], [ %1875, %1871 ]
  %1877 = phi i64 [ %.pre67, %1869 ], [ %1859, %1871 ]
  %1878 = phi i64 [ %.pre66, %1869 ], [ %1857, %1871 ]
  %1879 = phi %struct.Memory* [ %1870, %1869 ], [ %MEMORY.8, %1871 ]
  %1880 = add i64 %1878, -220
  %1881 = add i64 %1877, 6
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i32*
  %1883 = load i32, i32* %1882, align 4
  %1884 = zext i32 %1883 to i64
  store i64 %1884, i64* %RCX.i551, align 8
  %1885 = sub i32 %1883, %1876
  %1886 = icmp ult i32 %1883, %1876
  %1887 = zext i1 %1886 to i8
  store i8 %1887, i8* %20, align 1
  %1888 = and i32 %1885, 255
  %1889 = tail call i32 @llvm.ctpop.i32(i32 %1888)
  %1890 = trunc i32 %1889 to i8
  %1891 = and i8 %1890, 1
  %1892 = xor i8 %1891, 1
  store i8 %1892, i8* %27, align 1
  %1893 = xor i32 %1876, %1883
  %1894 = xor i32 %1893, %1885
  %1895 = lshr i32 %1894, 4
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  store i8 %1897, i8* %32, align 1
  %1898 = icmp eq i32 %1885, 0
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %35, align 1
  %1900 = lshr i32 %1885, 31
  %1901 = trunc i32 %1900 to i8
  store i8 %1901, i8* %38, align 1
  %1902 = lshr i32 %1883, 31
  %1903 = lshr i32 %1876, 31
  %1904 = xor i32 %1903, %1902
  %1905 = xor i32 %1900, %1902
  %1906 = add nuw nsw i32 %1905, %1904
  %1907 = icmp eq i32 %1906, 2
  %1908 = zext i1 %1907 to i8
  store i8 %1908, i8* %44, align 1
  %1909 = icmp ne i8 %1901, 0
  %1910 = xor i1 %1909, %1907
  %.v120 = select i1 %1910, i64 14, i64 31
  %1911 = add i64 %1877, %.v120
  store i64 %1911, i64* %3, align 8
  br i1 %1910, label %block_44098a, label %block_.L_44099b

block_44098a:                                     ; preds = %routine_idivl_MINUS0x7c__rbp_.exit486
  %1912 = add i64 %1878, -144
  %1913 = add i64 %1911, 6
  store i64 %1913, i64* %3, align 8
  %1914 = inttoptr i64 %1912 to i32*
  %1915 = load i32, i32* %1914, align 4
  %1916 = zext i32 %1915 to i64
  store i64 %1916, i64* %RAX.i810, align 8
  %1917 = add i64 %1878, -224
  %1918 = add i64 %1911, 12
  store i64 %1918, i64* %3, align 8
  %1919 = inttoptr i64 %1917 to i32*
  store i32 %1915, i32* %1919, align 4
  %1920 = load i64, i64* %3, align 8
  %1921 = add i64 %1920, 18
  store i64 %1921, i64* %3, align 8
  br label %block_.L_4409a8

block_.L_44099b:                                  ; preds = %routine_idivl_MINUS0x7c__rbp_.exit486
  %1922 = add i64 %1878, -64
  %1923 = add i64 %1911, 3
  store i64 %1923, i64* %3, align 8
  %1924 = inttoptr i64 %1922 to i32*
  %1925 = load i32, i32* %1924, align 4
  %1926 = zext i32 %1925 to i64
  store i64 %1926, i64* %RAX.i810, align 8
  %1927 = sext i32 %1925 to i64
  %1928 = lshr i64 %1927, 32
  store i64 %1928, i64* %119, align 8
  %1929 = add i64 %1878, -124
  %1930 = add i64 %1911, 7
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1929 to i32*
  %1932 = load i32, i32* %1931, align 4
  %1933 = sext i32 %1932 to i64
  %1934 = shl nuw i64 %1928, 32
  %1935 = or i64 %1934, %1926
  %1936 = sdiv i64 %1935, %1933
  %1937 = shl i64 %1936, 32
  %1938 = ashr exact i64 %1937, 32
  %1939 = icmp eq i64 %1936, %1938
  br i1 %1939, label %1942, label %1940

; <label>:1940:                                   ; preds = %block_.L_44099b
  %1941 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1930, %struct.Memory* %1879)
  %.pre69 = load i64, i64* %RBP.i, align 8
  %.pre70 = load i32, i32* %120, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %routine_idivl_MINUS0x7c__rbp_.exit462

; <label>:1942:                                   ; preds = %block_.L_44099b
  %1943 = srem i64 %1935, %1933
  %1944 = and i64 %1936, 4294967295
  store i64 %1944, i64* %RAX.i810, align 8
  %1945 = and i64 %1943, 4294967295
  store i64 %1945, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %1946 = trunc i64 %1936 to i32
  br label %routine_idivl_MINUS0x7c__rbp_.exit462

routine_idivl_MINUS0x7c__rbp_.exit462:            ; preds = %1942, %1940
  %1947 = phi i64 [ %.pre71, %1940 ], [ %1930, %1942 ]
  %1948 = phi i32 [ %.pre70, %1940 ], [ %1946, %1942 ]
  %1949 = phi i64 [ %.pre69, %1940 ], [ %1878, %1942 ]
  %1950 = phi %struct.Memory* [ %1941, %1940 ], [ %1879, %1942 ]
  %1951 = add i64 %1949, -224
  %1952 = add i64 %1947, 6
  store i64 %1952, i64* %3, align 8
  %1953 = inttoptr i64 %1951 to i32*
  store i32 %1948, i32* %1953, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_4409a8

block_.L_4409a8:                                  ; preds = %routine_idivl_MINUS0x7c__rbp_.exit462, %block_44098a
  %1954 = phi i64 [ %.pre72, %routine_idivl_MINUS0x7c__rbp_.exit462 ], [ %1921, %block_44098a ]
  %MEMORY.9 = phi %struct.Memory* [ %1950, %routine_idivl_MINUS0x7c__rbp_.exit462 ], [ %1879, %block_44098a ]
  %1955 = load i64, i64* %RBP.i, align 8
  %1956 = add i64 %1955, -224
  %1957 = add i64 %1954, 6
  store i64 %1957, i64* %3, align 8
  %1958 = inttoptr i64 %1956 to i32*
  %1959 = load i32, i32* %1958, align 4
  %1960 = zext i32 %1959 to i64
  store i64 %1960, i64* %RAX.i810, align 8
  %1961 = add i64 %1955, -216
  %1962 = add i64 %1954, 12
  store i64 %1962, i64* %3, align 8
  %1963 = inttoptr i64 %1961 to i32*
  store i32 %1959, i32* %1963, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_4409b4

block_.L_4409b4:                                  ; preds = %block_.L_4409a8, %block_44095a
  %1964 = phi i64 [ %.pre73, %block_.L_4409a8 ], [ %1838, %block_44095a ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_4409a8 ], [ %MEMORY.8, %block_44095a ]
  %1965 = load i64, i64* %RBP.i, align 8
  %1966 = add i64 %1965, -216
  %1967 = add i64 %1964, 6
  store i64 %1967, i64* %3, align 8
  %1968 = inttoptr i64 %1966 to i32*
  %1969 = load i32, i32* %1968, align 4
  %1970 = zext i32 %1969 to i64
  store i64 %1970, i64* %RAX.i810, align 8
  %1971 = add i64 %1965, -72
  %1972 = add i64 %1964, 9
  store i64 %1972, i64* %3, align 8
  %1973 = inttoptr i64 %1971 to i32*
  store i32 %1969, i32* %1973, align 4
  %1974 = load i64, i64* %3, align 8
  %1975 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1975, i64* %RCX.i551, align 8
  %1976 = add i64 %1975, 56
  %1977 = add i64 %1974, 11
  store i64 %1977, i64* %3, align 8
  %1978 = inttoptr i64 %1976 to i32*
  %1979 = load i32, i32* %1978, align 4
  %1980 = add i32 %1979, -1
  %1981 = zext i32 %1980 to i64
  store i64 %1981, i64* %RAX.i810, align 8
  %1982 = icmp eq i32 %1979, 0
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %20, align 1
  %1984 = and i32 %1980, 255
  %1985 = tail call i32 @llvm.ctpop.i32(i32 %1984)
  %1986 = trunc i32 %1985 to i8
  %1987 = and i8 %1986, 1
  %1988 = xor i8 %1987, 1
  store i8 %1988, i8* %27, align 1
  %1989 = xor i32 %1980, %1979
  %1990 = lshr i32 %1989, 4
  %1991 = trunc i32 %1990 to i8
  %1992 = and i8 %1991, 1
  store i8 %1992, i8* %32, align 1
  %1993 = icmp eq i32 %1980, 0
  %1994 = zext i1 %1993 to i8
  store i8 %1994, i8* %35, align 1
  %1995 = lshr i32 %1980, 31
  %1996 = trunc i32 %1995 to i8
  store i8 %1996, i8* %38, align 1
  %1997 = lshr i32 %1979, 31
  %1998 = xor i32 %1995, %1997
  %1999 = add nuw nsw i32 %1998, %1997
  %2000 = icmp eq i32 %1999, 2
  %2001 = zext i1 %2000 to i8
  store i8 %2001, i8* %44, align 1
  %2002 = load i64, i64* %RBP.i, align 8
  %2003 = add i64 %2002, -60
  %2004 = add i64 %1974, 17
  store i64 %2004, i64* %3, align 8
  %2005 = inttoptr i64 %2003 to i32*
  %2006 = load i32, i32* %2005, align 4
  %2007 = zext i32 %2006 to i64
  store i64 %2007, i64* %RDX.i913.pre-phi, align 8
  %2008 = add i64 %2002, -120
  %2009 = add i64 %1974, 20
  store i64 %2009, i64* %3, align 8
  %2010 = inttoptr i64 %2008 to i32*
  %2011 = load i32, i32* %2010, align 4
  %2012 = add i32 %2011, %2006
  %2013 = zext i32 %2012 to i64
  store i64 %2013, i64* %RDX.i913.pre-phi, align 8
  %2014 = icmp ult i32 %2012, %2006
  %2015 = icmp ult i32 %2012, %2011
  %2016 = or i1 %2014, %2015
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %20, align 1
  %2018 = and i32 %2012, 255
  %2019 = tail call i32 @llvm.ctpop.i32(i32 %2018)
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  %2022 = xor i8 %2021, 1
  store i8 %2022, i8* %27, align 1
  %2023 = xor i32 %2011, %2006
  %2024 = xor i32 %2023, %2012
  %2025 = lshr i32 %2024, 4
  %2026 = trunc i32 %2025 to i8
  %2027 = and i8 %2026, 1
  store i8 %2027, i8* %32, align 1
  %2028 = icmp eq i32 %2012, 0
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %35, align 1
  %2030 = lshr i32 %2012, 31
  %2031 = trunc i32 %2030 to i8
  store i8 %2031, i8* %38, align 1
  %2032 = lshr i32 %2006, 31
  %2033 = lshr i32 %2011, 31
  %2034 = xor i32 %2030, %2032
  %2035 = xor i32 %2030, %2033
  %2036 = add nuw nsw i32 %2034, %2035
  %2037 = icmp eq i32 %2036, 2
  %2038 = zext i1 %2037 to i8
  store i8 %2038, i8* %44, align 1
  %2039 = add i64 %2002, -228
  %2040 = add i64 %1974, 26
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2039 to i32*
  store i32 %1980, i32* %2041, align 4
  %2042 = load i32, i32* %EDX.i527, align 4
  %2043 = zext i32 %2042 to i64
  %2044 = load i64, i64* %3, align 8
  store i64 %2043, i64* %RAX.i810, align 8
  %2045 = sext i32 %2042 to i64
  %2046 = lshr i64 %2045, 32
  store i64 %2046, i64* %119, align 8
  %2047 = load i64, i64* %RBP.i, align 8
  %2048 = add i64 %2047, -116
  %2049 = add i64 %2044, 6
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2048 to i32*
  %2051 = load i32, i32* %2050, align 4
  %2052 = sext i32 %2051 to i64
  %2053 = shl nuw i64 %2046, 32
  %2054 = or i64 %2053, %2043
  %2055 = sdiv i64 %2054, %2052
  %2056 = shl i64 %2055, 32
  %2057 = ashr exact i64 %2056, 32
  %2058 = icmp eq i64 %2055, %2057
  br i1 %2058, label %2061, label %2059

; <label>:2059:                                   ; preds = %block_.L_4409b4
  %2060 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2049, %struct.Memory* %MEMORY.10)
  %.pre74 = load i64, i64* %RBP.i, align 8
  %.pre75 = load i64, i64* %3, align 8
  %.pre76 = load i32, i32* %120, align 4
  br label %routine_idivl_MINUS0x74__rbp_.exit422

; <label>:2061:                                   ; preds = %block_.L_4409b4
  %2062 = srem i64 %2054, %2052
  %2063 = and i64 %2055, 4294967295
  store i64 %2063, i64* %RAX.i810, align 8
  %2064 = and i64 %2062, 4294967295
  store i64 %2064, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %2065 = trunc i64 %2055 to i32
  br label %routine_idivl_MINUS0x74__rbp_.exit422

routine_idivl_MINUS0x74__rbp_.exit422:            ; preds = %2061, %2059
  %2066 = phi i32 [ %.pre76, %2059 ], [ %2065, %2061 ]
  %2067 = phi i64 [ %.pre75, %2059 ], [ %2049, %2061 ]
  %2068 = phi i64 [ %.pre74, %2059 ], [ %2047, %2061 ]
  %2069 = phi %struct.Memory* [ %2060, %2059 ], [ %MEMORY.10, %2061 ]
  %2070 = add i64 %2068, -228
  %2071 = add i64 %2067, 6
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2070 to i32*
  %2073 = load i32, i32* %2072, align 4
  %2074 = zext i32 %2073 to i64
  store i64 %2074, i64* %RSI.i876.pre-phi, align 8
  %2075 = sub i32 %2073, %2066
  %2076 = icmp ult i32 %2073, %2066
  %2077 = zext i1 %2076 to i8
  store i8 %2077, i8* %20, align 1
  %2078 = and i32 %2075, 255
  %2079 = tail call i32 @llvm.ctpop.i32(i32 %2078)
  %2080 = trunc i32 %2079 to i8
  %2081 = and i8 %2080, 1
  %2082 = xor i8 %2081, 1
  store i8 %2082, i8* %27, align 1
  %2083 = xor i32 %2066, %2073
  %2084 = xor i32 %2083, %2075
  %2085 = lshr i32 %2084, 4
  %2086 = trunc i32 %2085 to i8
  %2087 = and i8 %2086, 1
  store i8 %2087, i8* %32, align 1
  %2088 = icmp eq i32 %2075, 0
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %35, align 1
  %2090 = lshr i32 %2075, 31
  %2091 = trunc i32 %2090 to i8
  store i8 %2091, i8* %38, align 1
  %2092 = lshr i32 %2073, 31
  %2093 = lshr i32 %2066, 31
  %2094 = xor i32 %2093, %2092
  %2095 = xor i32 %2090, %2092
  %2096 = add nuw nsw i32 %2095, %2094
  %2097 = icmp eq i32 %2096, 2
  %2098 = zext i1 %2097 to i8
  store i8 %2098, i8* %44, align 1
  %2099 = icmp ne i8 %2091, 0
  %2100 = xor i1 %2099, %2097
  %.v114 = select i1 %2100, i64 14, i64 39
  %2101 = add i64 %2067, %.v114
  store i64 %2101, i64* %3, align 8
  br i1 %2100, label %block_4409eb, label %block_.L_440a04

block_4409eb:                                     ; preds = %routine_idivl_MINUS0x74__rbp_.exit422
  %2102 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2102, i64* %RAX.i810, align 8
  %2103 = add i64 %2102, 56
  %2104 = add i64 %2101, 11
  store i64 %2104, i64* %3, align 8
  %2105 = inttoptr i64 %2103 to i32*
  %2106 = load i32, i32* %2105, align 4
  %2107 = add i32 %2106, -1
  %2108 = zext i32 %2107 to i64
  store i64 %2108, i64* %RCX.i551, align 8
  %2109 = icmp eq i32 %2106, 0
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %20, align 1
  %2111 = and i32 %2107, 255
  %2112 = tail call i32 @llvm.ctpop.i32(i32 %2111)
  %2113 = trunc i32 %2112 to i8
  %2114 = and i8 %2113, 1
  %2115 = xor i8 %2114, 1
  store i8 %2115, i8* %27, align 1
  %2116 = xor i32 %2107, %2106
  %2117 = lshr i32 %2116, 4
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  store i8 %2119, i8* %32, align 1
  %2120 = icmp eq i32 %2107, 0
  %2121 = zext i1 %2120 to i8
  store i8 %2121, i8* %35, align 1
  %2122 = lshr i32 %2107, 31
  %2123 = trunc i32 %2122 to i8
  store i8 %2123, i8* %38, align 1
  %2124 = lshr i32 %2106, 31
  %2125 = xor i32 %2122, %2124
  %2126 = add nuw nsw i32 %2125, %2124
  %2127 = icmp eq i32 %2126, 2
  %2128 = zext i1 %2127 to i8
  store i8 %2128, i8* %44, align 1
  %2129 = add i64 %2068, -232
  %2130 = add i64 %2101, 20
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2129 to i32*
  store i32 %2107, i32* %2131, align 4
  %2132 = load i64, i64* %3, align 8
  %2133 = add i64 %2132, 21
  store i64 %2133, i64* %3, align 8
  br label %block_.L_440a14

block_.L_440a04:                                  ; preds = %routine_idivl_MINUS0x74__rbp_.exit422
  %2134 = add i64 %2068, -60
  %2135 = add i64 %2101, 3
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2134 to i32*
  %2137 = load i32, i32* %2136, align 4
  %2138 = zext i32 %2137 to i64
  store i64 %2138, i64* %RAX.i810, align 8
  %2139 = add i64 %2068, -120
  %2140 = add i64 %2101, 6
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2139 to i32*
  %2142 = load i32, i32* %2141, align 4
  %2143 = add i32 %2142, %2137
  %2144 = zext i32 %2143 to i64
  store i64 %2144, i64* %RAX.i810, align 8
  %2145 = icmp ult i32 %2143, %2137
  %2146 = icmp ult i32 %2143, %2142
  %2147 = or i1 %2145, %2146
  %2148 = zext i1 %2147 to i8
  store i8 %2148, i8* %20, align 1
  %2149 = and i32 %2143, 255
  %2150 = tail call i32 @llvm.ctpop.i32(i32 %2149)
  %2151 = trunc i32 %2150 to i8
  %2152 = and i8 %2151, 1
  %2153 = xor i8 %2152, 1
  store i8 %2153, i8* %27, align 1
  %2154 = xor i32 %2142, %2137
  %2155 = xor i32 %2154, %2143
  %2156 = lshr i32 %2155, 4
  %2157 = trunc i32 %2156 to i8
  %2158 = and i8 %2157, 1
  store i8 %2158, i8* %32, align 1
  %2159 = icmp eq i32 %2143, 0
  %2160 = zext i1 %2159 to i8
  store i8 %2160, i8* %35, align 1
  %2161 = lshr i32 %2143, 31
  %2162 = trunc i32 %2161 to i8
  store i8 %2162, i8* %38, align 1
  %2163 = lshr i32 %2137, 31
  %2164 = lshr i32 %2142, 31
  %2165 = xor i32 %2161, %2163
  %2166 = xor i32 %2161, %2164
  %2167 = add nuw nsw i32 %2165, %2166
  %2168 = icmp eq i32 %2167, 2
  %2169 = zext i1 %2168 to i8
  store i8 %2169, i8* %44, align 1
  %2170 = sext i32 %2143 to i64
  %2171 = lshr i64 %2170, 32
  store i64 %2171, i64* %119, align 8
  %2172 = add i64 %2068, -116
  %2173 = add i64 %2101, 10
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i32*
  %2175 = load i32, i32* %2174, align 4
  %2176 = sext i32 %2175 to i64
  %2177 = shl nuw i64 %2171, 32
  %2178 = or i64 %2177, %2144
  %2179 = sdiv i64 %2178, %2176
  %2180 = shl i64 %2179, 32
  %2181 = ashr exact i64 %2180, 32
  %2182 = icmp eq i64 %2179, %2181
  br i1 %2182, label %2185, label %2183

; <label>:2183:                                   ; preds = %block_.L_440a04
  %2184 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2173, %struct.Memory* %2069)
  %.pre77 = load i64, i64* %RBP.i, align 8
  %.pre78 = load i32, i32* %120, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %routine_idivl_MINUS0x74__rbp_.exit393

; <label>:2185:                                   ; preds = %block_.L_440a04
  %2186 = srem i64 %2178, %2176
  %2187 = and i64 %2179, 4294967295
  store i64 %2187, i64* %RAX.i810, align 8
  %2188 = and i64 %2186, 4294967295
  store i64 %2188, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %2189 = trunc i64 %2179 to i32
  br label %routine_idivl_MINUS0x74__rbp_.exit393

routine_idivl_MINUS0x74__rbp_.exit393:            ; preds = %2185, %2183
  %2190 = phi i64 [ %.pre79, %2183 ], [ %2173, %2185 ]
  %2191 = phi i32 [ %.pre78, %2183 ], [ %2189, %2185 ]
  %2192 = phi i64 [ %.pre77, %2183 ], [ %2068, %2185 ]
  %2193 = phi %struct.Memory* [ %2184, %2183 ], [ %2069, %2185 ]
  %2194 = add i64 %2192, -232
  %2195 = add i64 %2190, 6
  store i64 %2195, i64* %3, align 8
  %2196 = inttoptr i64 %2194 to i32*
  store i32 %2191, i32* %2196, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_440a14

block_.L_440a14:                                  ; preds = %routine_idivl_MINUS0x74__rbp_.exit393, %block_4409eb
  %2197 = phi i64 [ %.pre80, %routine_idivl_MINUS0x74__rbp_.exit393 ], [ %2133, %block_4409eb ]
  %MEMORY.11 = phi %struct.Memory* [ %2193, %routine_idivl_MINUS0x74__rbp_.exit393 ], [ %2069, %block_4409eb ]
  %2198 = load i64, i64* %RBP.i, align 8
  %2199 = add i64 %2198, -232
  %2200 = add i64 %2197, 6
  store i64 %2200, i64* %3, align 8
  %2201 = inttoptr i64 %2199 to i32*
  %2202 = load i32, i32* %2201, align 4
  %2203 = zext i32 %2202 to i64
  store i64 %2203, i64* %RAX.i810, align 8
  store i64 0, i64* %RCX.i551, align 8
  %2204 = sub i32 0, %2202
  %2205 = icmp ne i32 %2202, 0
  %2206 = zext i1 %2205 to i8
  store i8 %2206, i8* %20, align 1
  %2207 = and i32 %2204, 255
  %2208 = tail call i32 @llvm.ctpop.i32(i32 %2207)
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  %2211 = xor i8 %2210, 1
  store i8 %2211, i8* %27, align 1
  %2212 = xor i32 %2202, %2204
  %2213 = lshr i32 %2212, 4
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  store i8 %2215, i8* %32, align 1
  %2216 = icmp eq i32 %2202, 0
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %35, align 1
  %2218 = lshr i32 %2204, 31
  %2219 = trunc i32 %2218 to i8
  store i8 %2219, i8* %38, align 1
  %2220 = lshr i32 %2202, 31
  %2221 = add nuw nsw i32 %2218, %2220
  %2222 = icmp eq i32 %2221, 2
  %2223 = zext i1 %2222 to i8
  store i8 %2223, i8* %44, align 1
  %2224 = icmp ne i8 %2219, 0
  %2225 = xor i1 %2224, %2222
  %2226 = or i1 %2216, %2225
  %.v115 = select i1 %2226, i64 29, i64 16
  %2227 = add i64 %2197, %.v115
  store i64 %2227, i64* %3, align 8
  br i1 %2226, label %block_.L_440a31, label %block_440a24

block_440a24:                                     ; preds = %block_.L_440a14
  store i64 0, i64* %RAX.i810, align 8
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i8 0, i8* %32, align 1
  %2228 = add i64 %2198, -236
  %2229 = add i64 %2227, 8
  store i64 %2229, i64* %3, align 8
  %2230 = inttoptr i64 %2228 to i32*
  store i32 0, i32* %2230, align 4
  %2231 = load i64, i64* %3, align 8
  %2232 = add i64 %2231, 92
  store i64 %2232, i64* %3, align 8
  br label %block_.L_440a88

block_.L_440a31:                                  ; preds = %block_.L_440a14
  %2233 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2233, i64* %RAX.i810, align 8
  %2234 = add i64 %2233, 56
  %2235 = add i64 %2227, 11
  store i64 %2235, i64* %3, align 8
  %2236 = inttoptr i64 %2234 to i32*
  %2237 = load i32, i32* %2236, align 4
  %2238 = add i32 %2237, -1
  %2239 = zext i32 %2238 to i64
  store i64 %2239, i64* %RCX.i551, align 8
  %2240 = icmp eq i32 %2237, 0
  %2241 = zext i1 %2240 to i8
  store i8 %2241, i8* %20, align 1
  %2242 = and i32 %2238, 255
  %2243 = tail call i32 @llvm.ctpop.i32(i32 %2242)
  %2244 = trunc i32 %2243 to i8
  %2245 = and i8 %2244, 1
  %2246 = xor i8 %2245, 1
  store i8 %2246, i8* %27, align 1
  %2247 = xor i32 %2238, %2237
  %2248 = lshr i32 %2247, 4
  %2249 = trunc i32 %2248 to i8
  %2250 = and i8 %2249, 1
  store i8 %2250, i8* %32, align 1
  %2251 = icmp eq i32 %2238, 0
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %35, align 1
  %2253 = lshr i32 %2238, 31
  %2254 = trunc i32 %2253 to i8
  store i8 %2254, i8* %38, align 1
  %2255 = lshr i32 %2237, 31
  %2256 = xor i32 %2253, %2255
  %2257 = add nuw nsw i32 %2256, %2255
  %2258 = icmp eq i32 %2257, 2
  %2259 = zext i1 %2258 to i8
  store i8 %2259, i8* %44, align 1
  %2260 = add i64 %2198, -60
  %2261 = add i64 %2227, 17
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i32*
  %2263 = load i32, i32* %2262, align 4
  %2264 = zext i32 %2263 to i64
  store i64 %2264, i64* %RDX.i913.pre-phi, align 8
  %2265 = add i64 %2198, -120
  %2266 = add i64 %2227, 20
  store i64 %2266, i64* %3, align 8
  %2267 = inttoptr i64 %2265 to i32*
  %2268 = load i32, i32* %2267, align 4
  %2269 = add i32 %2268, %2263
  %2270 = zext i32 %2269 to i64
  store i64 %2270, i64* %RDX.i913.pre-phi, align 8
  %2271 = icmp ult i32 %2269, %2263
  %2272 = icmp ult i32 %2269, %2268
  %2273 = or i1 %2271, %2272
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %20, align 1
  %2275 = and i32 %2269, 255
  %2276 = tail call i32 @llvm.ctpop.i32(i32 %2275)
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  %2279 = xor i8 %2278, 1
  store i8 %2279, i8* %27, align 1
  %2280 = xor i32 %2268, %2263
  %2281 = xor i32 %2280, %2269
  %2282 = lshr i32 %2281, 4
  %2283 = trunc i32 %2282 to i8
  %2284 = and i8 %2283, 1
  store i8 %2284, i8* %32, align 1
  %2285 = icmp eq i32 %2269, 0
  %2286 = zext i1 %2285 to i8
  store i8 %2286, i8* %35, align 1
  %2287 = lshr i32 %2269, 31
  %2288 = trunc i32 %2287 to i8
  store i8 %2288, i8* %38, align 1
  %2289 = lshr i32 %2263, 31
  %2290 = lshr i32 %2268, 31
  %2291 = xor i32 %2287, %2289
  %2292 = xor i32 %2287, %2290
  %2293 = add nuw nsw i32 %2291, %2292
  %2294 = icmp eq i32 %2293, 2
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %44, align 1
  store i64 %2270, i64* %RAX.i810, align 8
  %2296 = sext i32 %2269 to i64
  %2297 = lshr i64 %2296, 32
  store i64 %2297, i64* %119, align 8
  %2298 = add i64 %2198, -116
  %2299 = add i64 %2227, 26
  store i64 %2299, i64* %3, align 8
  %2300 = inttoptr i64 %2298 to i32*
  %2301 = load i32, i32* %2300, align 4
  %2302 = sext i32 %2301 to i64
  %2303 = shl nuw i64 %2297, 32
  %2304 = or i64 %2303, %2270
  %2305 = sdiv i64 %2304, %2302
  %2306 = shl i64 %2305, 32
  %2307 = ashr exact i64 %2306, 32
  %2308 = icmp eq i64 %2305, %2307
  br i1 %2308, label %2311, label %2309

; <label>:2309:                                   ; preds = %block_.L_440a31
  %2310 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2299, %struct.Memory* %MEMORY.11)
  %.pre81 = load i32, i32* %120, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %routine_idivl_MINUS0x74__rbp_.exit353

; <label>:2311:                                   ; preds = %block_.L_440a31
  %2312 = srem i64 %2304, %2302
  %2313 = and i64 %2305, 4294967295
  store i64 %2313, i64* %RAX.i810, align 8
  %2314 = and i64 %2312, 4294967295
  store i64 %2314, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %2315 = trunc i64 %2305 to i32
  br label %routine_idivl_MINUS0x74__rbp_.exit353

routine_idivl_MINUS0x74__rbp_.exit353:            ; preds = %2311, %2309
  %2316 = phi i64 [ %.pre82, %2309 ], [ %2299, %2311 ]
  %2317 = phi i32 [ %.pre81, %2309 ], [ %2315, %2311 ]
  %2318 = phi %struct.Memory* [ %2310, %2309 ], [ %MEMORY.11, %2311 ]
  %2319 = load i32, i32* %ECX.i1006, align 4
  %2320 = sub i32 %2319, %2317
  %2321 = icmp ult i32 %2319, %2317
  %2322 = zext i1 %2321 to i8
  store i8 %2322, i8* %20, align 1
  %2323 = and i32 %2320, 255
  %2324 = tail call i32 @llvm.ctpop.i32(i32 %2323)
  %2325 = trunc i32 %2324 to i8
  %2326 = and i8 %2325, 1
  %2327 = xor i8 %2326, 1
  store i8 %2327, i8* %27, align 1
  %2328 = xor i32 %2317, %2319
  %2329 = xor i32 %2328, %2320
  %2330 = lshr i32 %2329, 4
  %2331 = trunc i32 %2330 to i8
  %2332 = and i8 %2331, 1
  store i8 %2332, i8* %32, align 1
  %2333 = icmp eq i32 %2320, 0
  %2334 = zext i1 %2333 to i8
  store i8 %2334, i8* %35, align 1
  %2335 = lshr i32 %2320, 31
  %2336 = trunc i32 %2335 to i8
  store i8 %2336, i8* %38, align 1
  %2337 = lshr i32 %2319, 31
  %2338 = lshr i32 %2317, 31
  %2339 = xor i32 %2338, %2337
  %2340 = xor i32 %2335, %2337
  %2341 = add nuw nsw i32 %2340, %2339
  %2342 = icmp eq i32 %2341, 2
  %2343 = zext i1 %2342 to i8
  store i8 %2343, i8* %44, align 1
  %2344 = icmp ne i8 %2336, 0
  %2345 = xor i1 %2344, %2342
  %.v119 = select i1 %2345, i64 8, i64 33
  %2346 = add i64 %2316, %.v119
  store i64 %2346, i64* %3, align 8
  br i1 %2345, label %block_440a53, label %block_.L_440a6c

block_440a53:                                     ; preds = %routine_idivl_MINUS0x74__rbp_.exit353
  %2347 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2347, i64* %RAX.i810, align 8
  %2348 = add i64 %2347, 56
  %2349 = add i64 %2346, 11
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i32*
  %2351 = load i32, i32* %2350, align 4
  %2352 = add i32 %2351, -1
  %2353 = zext i32 %2352 to i64
  store i64 %2353, i64* %RCX.i551, align 8
  %2354 = icmp eq i32 %2351, 0
  %2355 = zext i1 %2354 to i8
  store i8 %2355, i8* %20, align 1
  %2356 = and i32 %2352, 255
  %2357 = tail call i32 @llvm.ctpop.i32(i32 %2356)
  %2358 = trunc i32 %2357 to i8
  %2359 = and i8 %2358, 1
  %2360 = xor i8 %2359, 1
  store i8 %2360, i8* %27, align 1
  %2361 = xor i32 %2352, %2351
  %2362 = lshr i32 %2361, 4
  %2363 = trunc i32 %2362 to i8
  %2364 = and i8 %2363, 1
  store i8 %2364, i8* %32, align 1
  %2365 = icmp eq i32 %2352, 0
  %2366 = zext i1 %2365 to i8
  store i8 %2366, i8* %35, align 1
  %2367 = lshr i32 %2352, 31
  %2368 = trunc i32 %2367 to i8
  store i8 %2368, i8* %38, align 1
  %2369 = lshr i32 %2351, 31
  %2370 = xor i32 %2367, %2369
  %2371 = add nuw nsw i32 %2370, %2369
  %2372 = icmp eq i32 %2371, 2
  %2373 = zext i1 %2372 to i8
  store i8 %2373, i8* %44, align 1
  %2374 = load i64, i64* %RBP.i, align 8
  %2375 = add i64 %2374, -240
  %2376 = add i64 %2346, 20
  store i64 %2376, i64* %3, align 8
  %2377 = inttoptr i64 %2375 to i32*
  store i32 %2352, i32* %2377, align 4
  %2378 = load i64, i64* %3, align 8
  %2379 = add i64 %2378, 21
  store i64 %2379, i64* %3, align 8
  br label %block_.L_440a7c

block_.L_440a6c:                                  ; preds = %routine_idivl_MINUS0x74__rbp_.exit353
  %2380 = load i64, i64* %RBP.i, align 8
  %2381 = add i64 %2380, -60
  %2382 = add i64 %2346, 3
  store i64 %2382, i64* %3, align 8
  %2383 = inttoptr i64 %2381 to i32*
  %2384 = load i32, i32* %2383, align 4
  %2385 = zext i32 %2384 to i64
  store i64 %2385, i64* %RAX.i810, align 8
  %2386 = add i64 %2380, -120
  %2387 = add i64 %2346, 6
  store i64 %2387, i64* %3, align 8
  %2388 = inttoptr i64 %2386 to i32*
  %2389 = load i32, i32* %2388, align 4
  %2390 = add i32 %2389, %2384
  %2391 = zext i32 %2390 to i64
  store i64 %2391, i64* %RAX.i810, align 8
  %2392 = icmp ult i32 %2390, %2384
  %2393 = icmp ult i32 %2390, %2389
  %2394 = or i1 %2392, %2393
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %20, align 1
  %2396 = and i32 %2390, 255
  %2397 = tail call i32 @llvm.ctpop.i32(i32 %2396)
  %2398 = trunc i32 %2397 to i8
  %2399 = and i8 %2398, 1
  %2400 = xor i8 %2399, 1
  store i8 %2400, i8* %27, align 1
  %2401 = xor i32 %2389, %2384
  %2402 = xor i32 %2401, %2390
  %2403 = lshr i32 %2402, 4
  %2404 = trunc i32 %2403 to i8
  %2405 = and i8 %2404, 1
  store i8 %2405, i8* %32, align 1
  %2406 = icmp eq i32 %2390, 0
  %2407 = zext i1 %2406 to i8
  store i8 %2407, i8* %35, align 1
  %2408 = lshr i32 %2390, 31
  %2409 = trunc i32 %2408 to i8
  store i8 %2409, i8* %38, align 1
  %2410 = lshr i32 %2384, 31
  %2411 = lshr i32 %2389, 31
  %2412 = xor i32 %2408, %2410
  %2413 = xor i32 %2408, %2411
  %2414 = add nuw nsw i32 %2412, %2413
  %2415 = icmp eq i32 %2414, 2
  %2416 = zext i1 %2415 to i8
  store i8 %2416, i8* %44, align 1
  %2417 = sext i32 %2390 to i64
  %2418 = lshr i64 %2417, 32
  store i64 %2418, i64* %119, align 8
  %2419 = add i64 %2380, -116
  %2420 = add i64 %2346, 10
  store i64 %2420, i64* %3, align 8
  %2421 = inttoptr i64 %2419 to i32*
  %2422 = load i32, i32* %2421, align 4
  %2423 = sext i32 %2422 to i64
  %2424 = shl nuw i64 %2418, 32
  %2425 = or i64 %2424, %2391
  %2426 = sdiv i64 %2425, %2423
  %2427 = shl i64 %2426, 32
  %2428 = ashr exact i64 %2427, 32
  %2429 = icmp eq i64 %2426, %2428
  br i1 %2429, label %2432, label %2430

; <label>:2430:                                   ; preds = %block_.L_440a6c
  %2431 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2420, %struct.Memory* %2318)
  %.pre83 = load i64, i64* %RBP.i, align 8
  %.pre84 = load i32, i32* %120, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %routine_idivl_MINUS0x74__rbp_.exit

; <label>:2432:                                   ; preds = %block_.L_440a6c
  %2433 = srem i64 %2425, %2423
  %2434 = and i64 %2426, 4294967295
  store i64 %2434, i64* %RAX.i810, align 8
  %2435 = and i64 %2433, 4294967295
  store i64 %2435, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %2436 = trunc i64 %2426 to i32
  br label %routine_idivl_MINUS0x74__rbp_.exit

routine_idivl_MINUS0x74__rbp_.exit:               ; preds = %2432, %2430
  %2437 = phi i64 [ %.pre85, %2430 ], [ %2420, %2432 ]
  %2438 = phi i32 [ %.pre84, %2430 ], [ %2436, %2432 ]
  %2439 = phi i64 [ %.pre83, %2430 ], [ %2380, %2432 ]
  %2440 = phi %struct.Memory* [ %2431, %2430 ], [ %2318, %2432 ]
  %2441 = add i64 %2439, -240
  %2442 = add i64 %2437, 6
  store i64 %2442, i64* %3, align 8
  %2443 = inttoptr i64 %2441 to i32*
  store i32 %2438, i32* %2443, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_440a7c

block_.L_440a7c:                                  ; preds = %routine_idivl_MINUS0x74__rbp_.exit, %block_440a53
  %2444 = phi i64 [ %.pre86, %routine_idivl_MINUS0x74__rbp_.exit ], [ %2379, %block_440a53 ]
  %MEMORY.12 = phi %struct.Memory* [ %2440, %routine_idivl_MINUS0x74__rbp_.exit ], [ %2318, %block_440a53 ]
  %2445 = load i64, i64* %RBP.i, align 8
  %2446 = add i64 %2445, -240
  %2447 = add i64 %2444, 6
  store i64 %2447, i64* %3, align 8
  %2448 = inttoptr i64 %2446 to i32*
  %2449 = load i32, i32* %2448, align 4
  %2450 = zext i32 %2449 to i64
  store i64 %2450, i64* %RAX.i810, align 8
  %2451 = add i64 %2445, -236
  %2452 = add i64 %2444, 12
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i32*
  store i32 %2449, i32* %2453, align 4
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_440a88

block_.L_440a88:                                  ; preds = %block_.L_440a7c, %block_440a24
  %2454 = phi i64 [ %.pre87, %block_.L_440a7c ], [ %2232, %block_440a24 ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.12, %block_.L_440a7c ], [ %MEMORY.11, %block_440a24 ]
  %2455 = load i64, i64* %RBP.i, align 8
  %2456 = add i64 %2455, -236
  %2457 = add i64 %2454, 6
  store i64 %2457, i64* %3, align 8
  %2458 = inttoptr i64 %2456 to i32*
  %2459 = load i32, i32* %2458, align 4
  %2460 = zext i32 %2459 to i64
  store i64 %2460, i64* %RAX.i810, align 8
  %2461 = add i64 %2455, -76
  %2462 = add i64 %2454, 9
  store i64 %2462, i64* %3, align 8
  %2463 = inttoptr i64 %2461 to i32*
  store i32 %2459, i32* %2463, align 4
  %2464 = load i64, i64* %RBP.i, align 8
  %2465 = add i64 %2464, -144
  %2466 = load i64, i64* %3, align 8
  %2467 = add i64 %2466, 6
  store i64 %2467, i64* %3, align 8
  %2468 = inttoptr i64 %2465 to i32*
  %2469 = load i32, i32* %2468, align 4
  %2470 = zext i32 %2469 to i64
  store i64 %2470, i64* %RAX.i810, align 8
  %2471 = add i64 %2464, -64
  %2472 = add i64 %2466, 9
  store i64 %2472, i64* %3, align 8
  %2473 = inttoptr i64 %2471 to i32*
  %2474 = load i32, i32* %2473, align 4
  %2475 = zext i32 %2474 to i64
  store i64 %2475, i64* %RCX.i551, align 8
  %2476 = add i64 %2464, -128
  %2477 = add i64 %2466, 12
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2476 to i32*
  %2479 = load i32, i32* %2478, align 4
  %2480 = add i32 %2479, %2474
  %2481 = zext i32 %2480 to i64
  store i64 %2481, i64* %RCX.i551, align 8
  %2482 = icmp ult i32 %2480, %2474
  %2483 = icmp ult i32 %2480, %2479
  %2484 = or i1 %2482, %2483
  %2485 = zext i1 %2484 to i8
  store i8 %2485, i8* %20, align 1
  %2486 = and i32 %2480, 255
  %2487 = tail call i32 @llvm.ctpop.i32(i32 %2486)
  %2488 = trunc i32 %2487 to i8
  %2489 = and i8 %2488, 1
  %2490 = xor i8 %2489, 1
  store i8 %2490, i8* %27, align 1
  %2491 = xor i32 %2479, %2474
  %2492 = xor i32 %2491, %2480
  %2493 = lshr i32 %2492, 4
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  store i8 %2495, i8* %32, align 1
  %2496 = icmp eq i32 %2480, 0
  %2497 = zext i1 %2496 to i8
  store i8 %2497, i8* %35, align 1
  %2498 = lshr i32 %2480, 31
  %2499 = trunc i32 %2498 to i8
  store i8 %2499, i8* %38, align 1
  %2500 = lshr i32 %2474, 31
  %2501 = lshr i32 %2479, 31
  %2502 = xor i32 %2498, %2500
  %2503 = xor i32 %2498, %2501
  %2504 = add nuw nsw i32 %2502, %2503
  %2505 = icmp eq i32 %2504, 2
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %44, align 1
  %2507 = add i64 %2464, -244
  %2508 = add i64 %2466, 18
  store i64 %2508, i64* %3, align 8
  %2509 = inttoptr i64 %2507 to i32*
  store i32 %2469, i32* %2509, align 4
  %2510 = load i32, i32* %ECX.i1006, align 4
  %2511 = zext i32 %2510 to i64
  %2512 = load i64, i64* %3, align 8
  store i64 %2511, i64* %RAX.i810, align 8
  %2513 = sext i32 %2510 to i64
  %2514 = lshr i64 %2513, 32
  store i64 %2514, i64* %119, align 8
  %2515 = load i64, i64* %RBP.i, align 8
  %2516 = add i64 %2515, -124
  %2517 = add i64 %2512, 6
  store i64 %2517, i64* %3, align 8
  %2518 = inttoptr i64 %2516 to i32*
  %2519 = load i32, i32* %2518, align 4
  %2520 = sext i32 %2519 to i64
  %2521 = shl nuw i64 %2514, 32
  %2522 = or i64 %2521, %2511
  %2523 = sdiv i64 %2522, %2520
  %2524 = shl i64 %2523, 32
  %2525 = ashr exact i64 %2524, 32
  %2526 = icmp eq i64 %2523, %2525
  br i1 %2526, label %2529, label %2527

; <label>:2527:                                   ; preds = %block_.L_440a88
  %2528 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2517, %struct.Memory* %MEMORY.13)
  %.pre88 = load i64, i64* %RBP.i, align 8
  %.pre89 = load i64, i64* %3, align 8
  %.pre90 = load i32, i32* %120, align 4
  br label %routine_idivl_MINUS0x7c__rbp_.exit291

; <label>:2529:                                   ; preds = %block_.L_440a88
  %2530 = srem i64 %2522, %2520
  %2531 = and i64 %2523, 4294967295
  store i64 %2531, i64* %RAX.i810, align 8
  %2532 = and i64 %2530, 4294967295
  store i64 %2532, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %2533 = trunc i64 %2523 to i32
  br label %routine_idivl_MINUS0x7c__rbp_.exit291

routine_idivl_MINUS0x7c__rbp_.exit291:            ; preds = %2529, %2527
  %2534 = phi i32 [ %.pre90, %2527 ], [ %2533, %2529 ]
  %2535 = phi i64 [ %.pre89, %2527 ], [ %2517, %2529 ]
  %2536 = phi i64 [ %.pre88, %2527 ], [ %2515, %2529 ]
  %2537 = phi %struct.Memory* [ %2528, %2527 ], [ %MEMORY.13, %2529 ]
  %2538 = add i64 %2536, -244
  %2539 = add i64 %2535, 6
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2538 to i32*
  %2541 = load i32, i32* %2540, align 4
  %2542 = zext i32 %2541 to i64
  store i64 %2542, i64* %RCX.i551, align 8
  %2543 = sub i32 %2541, %2534
  %2544 = icmp ult i32 %2541, %2534
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %20, align 1
  %2546 = and i32 %2543, 255
  %2547 = tail call i32 @llvm.ctpop.i32(i32 %2546)
  %2548 = trunc i32 %2547 to i8
  %2549 = and i8 %2548, 1
  %2550 = xor i8 %2549, 1
  store i8 %2550, i8* %27, align 1
  %2551 = xor i32 %2534, %2541
  %2552 = xor i32 %2551, %2543
  %2553 = lshr i32 %2552, 4
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  store i8 %2555, i8* %32, align 1
  %2556 = icmp eq i32 %2543, 0
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %35, align 1
  %2558 = lshr i32 %2543, 31
  %2559 = trunc i32 %2558 to i8
  store i8 %2559, i8* %38, align 1
  %2560 = lshr i32 %2541, 31
  %2561 = lshr i32 %2534, 31
  %2562 = xor i32 %2561, %2560
  %2563 = xor i32 %2558, %2560
  %2564 = add nuw nsw i32 %2563, %2562
  %2565 = icmp eq i32 %2564, 2
  %2566 = zext i1 %2565 to i8
  store i8 %2566, i8* %44, align 1
  %2567 = icmp ne i8 %2559, 0
  %2568 = xor i1 %2567, %2565
  %.v116 = select i1 %2568, i64 14, i64 31
  %2569 = add i64 %2535, %.v116
  store i64 %2569, i64* %3, align 8
  br i1 %2568, label %block_440ab7, label %block_.L_440ac8

block_440ab7:                                     ; preds = %routine_idivl_MINUS0x7c__rbp_.exit291
  %2570 = add i64 %2536, -144
  %2571 = add i64 %2569, 6
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2570 to i32*
  %2573 = load i32, i32* %2572, align 4
  %2574 = zext i32 %2573 to i64
  store i64 %2574, i64* %RAX.i810, align 8
  %2575 = add i64 %2536, -248
  %2576 = add i64 %2569, 12
  store i64 %2576, i64* %3, align 8
  %2577 = inttoptr i64 %2575 to i32*
  store i32 %2573, i32* %2577, align 4
  %2578 = load i64, i64* %3, align 8
  %2579 = add i64 %2578, 21
  store i64 %2579, i64* %3, align 8
  br label %block_.L_440ad8

block_.L_440ac8:                                  ; preds = %routine_idivl_MINUS0x7c__rbp_.exit291
  %2580 = add i64 %2536, -64
  %2581 = add i64 %2569, 3
  store i64 %2581, i64* %3, align 8
  %2582 = inttoptr i64 %2580 to i32*
  %2583 = load i32, i32* %2582, align 4
  %2584 = zext i32 %2583 to i64
  store i64 %2584, i64* %RAX.i810, align 8
  %2585 = add i64 %2536, -128
  %2586 = add i64 %2569, 6
  store i64 %2586, i64* %3, align 8
  %2587 = inttoptr i64 %2585 to i32*
  %2588 = load i32, i32* %2587, align 4
  %2589 = add i32 %2588, %2583
  %2590 = zext i32 %2589 to i64
  store i64 %2590, i64* %RAX.i810, align 8
  %2591 = icmp ult i32 %2589, %2583
  %2592 = icmp ult i32 %2589, %2588
  %2593 = or i1 %2591, %2592
  %2594 = zext i1 %2593 to i8
  store i8 %2594, i8* %20, align 1
  %2595 = and i32 %2589, 255
  %2596 = tail call i32 @llvm.ctpop.i32(i32 %2595)
  %2597 = trunc i32 %2596 to i8
  %2598 = and i8 %2597, 1
  %2599 = xor i8 %2598, 1
  store i8 %2599, i8* %27, align 1
  %2600 = xor i32 %2588, %2583
  %2601 = xor i32 %2600, %2589
  %2602 = lshr i32 %2601, 4
  %2603 = trunc i32 %2602 to i8
  %2604 = and i8 %2603, 1
  store i8 %2604, i8* %32, align 1
  %2605 = icmp eq i32 %2589, 0
  %2606 = zext i1 %2605 to i8
  store i8 %2606, i8* %35, align 1
  %2607 = lshr i32 %2589, 31
  %2608 = trunc i32 %2607 to i8
  store i8 %2608, i8* %38, align 1
  %2609 = lshr i32 %2583, 31
  %2610 = lshr i32 %2588, 31
  %2611 = xor i32 %2607, %2609
  %2612 = xor i32 %2607, %2610
  %2613 = add nuw nsw i32 %2611, %2612
  %2614 = icmp eq i32 %2613, 2
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %44, align 1
  %2616 = sext i32 %2589 to i64
  %2617 = lshr i64 %2616, 32
  store i64 %2617, i64* %119, align 8
  %2618 = add i64 %2536, -124
  %2619 = add i64 %2569, 10
  store i64 %2619, i64* %3, align 8
  %2620 = inttoptr i64 %2618 to i32*
  %2621 = load i32, i32* %2620, align 4
  %2622 = sext i32 %2621 to i64
  %2623 = shl nuw i64 %2617, 32
  %2624 = or i64 %2623, %2590
  %2625 = sdiv i64 %2624, %2622
  %2626 = shl i64 %2625, 32
  %2627 = ashr exact i64 %2626, 32
  %2628 = icmp eq i64 %2625, %2627
  br i1 %2628, label %2631, label %2629

; <label>:2629:                                   ; preds = %block_.L_440ac8
  %2630 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2619, %struct.Memory* %2537)
  %.pre91 = load i64, i64* %RBP.i, align 8
  %.pre92 = load i32, i32* %120, align 4
  %.pre93 = load i64, i64* %3, align 8
  br label %routine_idivl_MINUS0x7c__rbp_.exit266

; <label>:2631:                                   ; preds = %block_.L_440ac8
  %2632 = srem i64 %2624, %2622
  %2633 = and i64 %2625, 4294967295
  store i64 %2633, i64* %RAX.i810, align 8
  %2634 = and i64 %2632, 4294967295
  store i64 %2634, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %2635 = trunc i64 %2625 to i32
  br label %routine_idivl_MINUS0x7c__rbp_.exit266

routine_idivl_MINUS0x7c__rbp_.exit266:            ; preds = %2631, %2629
  %2636 = phi i64 [ %.pre93, %2629 ], [ %2619, %2631 ]
  %2637 = phi i32 [ %.pre92, %2629 ], [ %2635, %2631 ]
  %2638 = phi i64 [ %.pre91, %2629 ], [ %2536, %2631 ]
  %2639 = phi %struct.Memory* [ %2630, %2629 ], [ %2537, %2631 ]
  %2640 = add i64 %2638, -248
  %2641 = add i64 %2636, 6
  store i64 %2641, i64* %3, align 8
  %2642 = inttoptr i64 %2640 to i32*
  store i32 %2637, i32* %2642, align 4
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_440ad8

block_.L_440ad8:                                  ; preds = %routine_idivl_MINUS0x7c__rbp_.exit266, %block_440ab7
  %2643 = phi i64 [ %.pre94, %routine_idivl_MINUS0x7c__rbp_.exit266 ], [ %2579, %block_440ab7 ]
  %MEMORY.14 = phi %struct.Memory* [ %2639, %routine_idivl_MINUS0x7c__rbp_.exit266 ], [ %2537, %block_440ab7 ]
  %2644 = load i64, i64* %RBP.i, align 8
  %2645 = add i64 %2644, -248
  %2646 = add i64 %2643, 6
  store i64 %2646, i64* %3, align 8
  %2647 = inttoptr i64 %2645 to i32*
  %2648 = load i32, i32* %2647, align 4
  %2649 = zext i32 %2648 to i64
  store i64 %2649, i64* %RAX.i810, align 8
  store i64 0, i64* %RCX.i551, align 8
  %2650 = sub i32 0, %2648
  %2651 = icmp ne i32 %2648, 0
  %2652 = zext i1 %2651 to i8
  store i8 %2652, i8* %20, align 1
  %2653 = and i32 %2650, 255
  %2654 = tail call i32 @llvm.ctpop.i32(i32 %2653)
  %2655 = trunc i32 %2654 to i8
  %2656 = and i8 %2655, 1
  %2657 = xor i8 %2656, 1
  store i8 %2657, i8* %27, align 1
  %2658 = xor i32 %2648, %2650
  %2659 = lshr i32 %2658, 4
  %2660 = trunc i32 %2659 to i8
  %2661 = and i8 %2660, 1
  store i8 %2661, i8* %32, align 1
  %2662 = icmp eq i32 %2648, 0
  %2663 = zext i1 %2662 to i8
  store i8 %2663, i8* %35, align 1
  %2664 = lshr i32 %2650, 31
  %2665 = trunc i32 %2664 to i8
  store i8 %2665, i8* %38, align 1
  %2666 = lshr i32 %2648, 31
  %2667 = add nuw nsw i32 %2664, %2666
  %2668 = icmp eq i32 %2667, 2
  %2669 = zext i1 %2668 to i8
  store i8 %2669, i8* %44, align 1
  %2670 = icmp ne i8 %2665, 0
  %2671 = xor i1 %2670, %2668
  %2672 = or i1 %2662, %2671
  %.v117 = select i1 %2672, i64 29, i64 16
  %2673 = add i64 %2643, %.v117
  store i64 %2673, i64* %3, align 8
  br i1 %2672, label %block_.L_440af5, label %block_440ae8

block_440ae8:                                     ; preds = %block_.L_440ad8
  store i64 0, i64* %RAX.i810, align 8
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i8 0, i8* %32, align 1
  %2674 = add i64 %2644, -252
  %2675 = add i64 %2673, 8
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i32*
  store i32 0, i32* %2676, align 4
  %2677 = load i64, i64* %3, align 8
  %2678 = add i64 %2677, 88
  store i64 %2678, i64* %3, align 8
  br label %block_.L_440b48

block_.L_440af5:                                  ; preds = %block_.L_440ad8
  %2679 = add i64 %2644, -144
  %2680 = add i64 %2673, 6
  store i64 %2680, i64* %3, align 8
  %2681 = inttoptr i64 %2679 to i32*
  %2682 = load i32, i32* %2681, align 4
  %2683 = zext i32 %2682 to i64
  store i64 %2683, i64* %RAX.i810, align 8
  %2684 = add i64 %2644, -64
  %2685 = add i64 %2673, 9
  store i64 %2685, i64* %3, align 8
  %2686 = inttoptr i64 %2684 to i32*
  %2687 = load i32, i32* %2686, align 4
  %2688 = zext i32 %2687 to i64
  store i64 %2688, i64* %RCX.i551, align 8
  %2689 = add i64 %2644, -128
  %2690 = add i64 %2673, 12
  store i64 %2690, i64* %3, align 8
  %2691 = inttoptr i64 %2689 to i32*
  %2692 = load i32, i32* %2691, align 4
  %2693 = add i32 %2692, %2687
  %2694 = zext i32 %2693 to i64
  store i64 %2694, i64* %RCX.i551, align 8
  %2695 = icmp ult i32 %2693, %2687
  %2696 = icmp ult i32 %2693, %2692
  %2697 = or i1 %2695, %2696
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %20, align 1
  %2699 = and i32 %2693, 255
  %2700 = tail call i32 @llvm.ctpop.i32(i32 %2699)
  %2701 = trunc i32 %2700 to i8
  %2702 = and i8 %2701, 1
  %2703 = xor i8 %2702, 1
  store i8 %2703, i8* %27, align 1
  %2704 = xor i32 %2692, %2687
  %2705 = xor i32 %2704, %2693
  %2706 = lshr i32 %2705, 4
  %2707 = trunc i32 %2706 to i8
  %2708 = and i8 %2707, 1
  store i8 %2708, i8* %32, align 1
  %2709 = icmp eq i32 %2693, 0
  %2710 = zext i1 %2709 to i8
  store i8 %2710, i8* %35, align 1
  %2711 = lshr i32 %2693, 31
  %2712 = trunc i32 %2711 to i8
  store i8 %2712, i8* %38, align 1
  %2713 = lshr i32 %2687, 31
  %2714 = lshr i32 %2692, 31
  %2715 = xor i32 %2711, %2713
  %2716 = xor i32 %2711, %2714
  %2717 = add nuw nsw i32 %2715, %2716
  %2718 = icmp eq i32 %2717, 2
  %2719 = zext i1 %2718 to i8
  store i8 %2719, i8* %44, align 1
  %2720 = add i64 %2644, -256
  %2721 = add i64 %2673, 18
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2720 to i32*
  store i32 %2682, i32* %2722, align 4
  %2723 = load i32, i32* %ECX.i1006, align 4
  %2724 = zext i32 %2723 to i64
  %2725 = load i64, i64* %3, align 8
  store i64 %2724, i64* %RAX.i810, align 8
  %2726 = sext i32 %2723 to i64
  %2727 = lshr i64 %2726, 32
  store i64 %2727, i64* %119, align 8
  %2728 = load i64, i64* %RBP.i, align 8
  %2729 = add i64 %2728, -124
  %2730 = add i64 %2725, 6
  store i64 %2730, i64* %3, align 8
  %2731 = inttoptr i64 %2729 to i32*
  %2732 = load i32, i32* %2731, align 4
  %2733 = sext i32 %2732 to i64
  %2734 = shl nuw i64 %2727, 32
  %2735 = or i64 %2734, %2724
  %2736 = sdiv i64 %2735, %2733
  %2737 = shl i64 %2736, 32
  %2738 = ashr exact i64 %2737, 32
  %2739 = icmp eq i64 %2736, %2738
  br i1 %2739, label %2742, label %2740

; <label>:2740:                                   ; preds = %block_.L_440af5
  %2741 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2730, %struct.Memory* %MEMORY.14)
  %.pre95 = load i64, i64* %RBP.i, align 8
  %.pre96 = load i64, i64* %3, align 8
  %.pre97 = load i32, i32* %120, align 4
  br label %routine_idivl_MINUS0x7c__rbp_.exit225

; <label>:2742:                                   ; preds = %block_.L_440af5
  %2743 = srem i64 %2735, %2733
  %2744 = and i64 %2736, 4294967295
  store i64 %2744, i64* %RAX.i810, align 8
  %2745 = and i64 %2743, 4294967295
  store i64 %2745, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %2746 = trunc i64 %2736 to i32
  br label %routine_idivl_MINUS0x7c__rbp_.exit225

routine_idivl_MINUS0x7c__rbp_.exit225:            ; preds = %2742, %2740
  %2747 = phi i32 [ %.pre97, %2740 ], [ %2746, %2742 ]
  %2748 = phi i64 [ %.pre96, %2740 ], [ %2730, %2742 ]
  %2749 = phi i64 [ %.pre95, %2740 ], [ %2728, %2742 ]
  %2750 = phi %struct.Memory* [ %2741, %2740 ], [ %MEMORY.14, %2742 ]
  %2751 = add i64 %2749, -256
  %2752 = add i64 %2748, 6
  store i64 %2752, i64* %3, align 8
  %2753 = inttoptr i64 %2751 to i32*
  %2754 = load i32, i32* %2753, align 4
  %2755 = zext i32 %2754 to i64
  store i64 %2755, i64* %RCX.i551, align 8
  %2756 = sub i32 %2754, %2747
  %2757 = icmp ult i32 %2754, %2747
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %20, align 1
  %2759 = and i32 %2756, 255
  %2760 = tail call i32 @llvm.ctpop.i32(i32 %2759)
  %2761 = trunc i32 %2760 to i8
  %2762 = and i8 %2761, 1
  %2763 = xor i8 %2762, 1
  store i8 %2763, i8* %27, align 1
  %2764 = xor i32 %2747, %2754
  %2765 = xor i32 %2764, %2756
  %2766 = lshr i32 %2765, 4
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  store i8 %2768, i8* %32, align 1
  %2769 = icmp eq i32 %2756, 0
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %35, align 1
  %2771 = lshr i32 %2756, 31
  %2772 = trunc i32 %2771 to i8
  store i8 %2772, i8* %38, align 1
  %2773 = lshr i32 %2754, 31
  %2774 = lshr i32 %2747, 31
  %2775 = xor i32 %2774, %2773
  %2776 = xor i32 %2771, %2773
  %2777 = add nuw nsw i32 %2776, %2775
  %2778 = icmp eq i32 %2777, 2
  %2779 = zext i1 %2778 to i8
  store i8 %2779, i8* %44, align 1
  %2780 = icmp ne i8 %2772, 0
  %2781 = xor i1 %2780, %2778
  %.v118 = select i1 %2781, i64 14, i64 31
  %2782 = add i64 %2748, %.v118
  store i64 %2782, i64* %3, align 8
  br i1 %2781, label %block_440b1b, label %block_.L_440b2c

block_440b1b:                                     ; preds = %routine_idivl_MINUS0x7c__rbp_.exit225
  %2783 = add i64 %2749, -144
  %2784 = add i64 %2782, 6
  store i64 %2784, i64* %3, align 8
  %2785 = inttoptr i64 %2783 to i32*
  %2786 = load i32, i32* %2785, align 4
  %2787 = zext i32 %2786 to i64
  store i64 %2787, i64* %RAX.i810, align 8
  %2788 = add i64 %2749, -260
  %2789 = add i64 %2782, 12
  store i64 %2789, i64* %3, align 8
  %2790 = inttoptr i64 %2788 to i32*
  store i32 %2786, i32* %2790, align 4
  %2791 = load i64, i64* %3, align 8
  %2792 = add i64 %2791, 21
  store i64 %2792, i64* %3, align 8
  br label %block_.L_440b3c

block_.L_440b2c:                                  ; preds = %routine_idivl_MINUS0x7c__rbp_.exit225
  %2793 = add i64 %2749, -64
  %2794 = add i64 %2782, 3
  store i64 %2794, i64* %3, align 8
  %2795 = inttoptr i64 %2793 to i32*
  %2796 = load i32, i32* %2795, align 4
  %2797 = zext i32 %2796 to i64
  store i64 %2797, i64* %RAX.i810, align 8
  %2798 = add i64 %2749, -128
  %2799 = add i64 %2782, 6
  store i64 %2799, i64* %3, align 8
  %2800 = inttoptr i64 %2798 to i32*
  %2801 = load i32, i32* %2800, align 4
  %2802 = add i32 %2801, %2796
  %2803 = zext i32 %2802 to i64
  store i64 %2803, i64* %RAX.i810, align 8
  %2804 = icmp ult i32 %2802, %2796
  %2805 = icmp ult i32 %2802, %2801
  %2806 = or i1 %2804, %2805
  %2807 = zext i1 %2806 to i8
  store i8 %2807, i8* %20, align 1
  %2808 = and i32 %2802, 255
  %2809 = tail call i32 @llvm.ctpop.i32(i32 %2808)
  %2810 = trunc i32 %2809 to i8
  %2811 = and i8 %2810, 1
  %2812 = xor i8 %2811, 1
  store i8 %2812, i8* %27, align 1
  %2813 = xor i32 %2801, %2796
  %2814 = xor i32 %2813, %2802
  %2815 = lshr i32 %2814, 4
  %2816 = trunc i32 %2815 to i8
  %2817 = and i8 %2816, 1
  store i8 %2817, i8* %32, align 1
  %2818 = icmp eq i32 %2802, 0
  %2819 = zext i1 %2818 to i8
  store i8 %2819, i8* %35, align 1
  %2820 = lshr i32 %2802, 31
  %2821 = trunc i32 %2820 to i8
  store i8 %2821, i8* %38, align 1
  %2822 = lshr i32 %2796, 31
  %2823 = lshr i32 %2801, 31
  %2824 = xor i32 %2820, %2822
  %2825 = xor i32 %2820, %2823
  %2826 = add nuw nsw i32 %2824, %2825
  %2827 = icmp eq i32 %2826, 2
  %2828 = zext i1 %2827 to i8
  store i8 %2828, i8* %44, align 1
  %2829 = sext i32 %2802 to i64
  %2830 = lshr i64 %2829, 32
  store i64 %2830, i64* %119, align 8
  %2831 = add i64 %2749, -124
  %2832 = add i64 %2782, 10
  store i64 %2832, i64* %3, align 8
  %2833 = inttoptr i64 %2831 to i32*
  %2834 = load i32, i32* %2833, align 4
  %2835 = sext i32 %2834 to i64
  %2836 = shl nuw i64 %2830, 32
  %2837 = or i64 %2836, %2803
  %2838 = sdiv i64 %2837, %2835
  %2839 = shl i64 %2838, 32
  %2840 = ashr exact i64 %2839, 32
  %2841 = icmp eq i64 %2838, %2840
  br i1 %2841, label %2844, label %2842

; <label>:2842:                                   ; preds = %block_.L_440b2c
  %2843 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2832, %struct.Memory* %2750)
  %.pre98 = load i64, i64* %RBP.i, align 8
  %.pre99 = load i32, i32* %120, align 4
  %.pre100 = load i64, i64* %3, align 8
  br label %routine_idivl_MINUS0x7c__rbp_.exit

; <label>:2844:                                   ; preds = %block_.L_440b2c
  %2845 = srem i64 %2837, %2835
  %2846 = and i64 %2838, 4294967295
  store i64 %2846, i64* %RAX.i810, align 8
  %2847 = and i64 %2845, 4294967295
  store i64 %2847, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %2848 = trunc i64 %2838 to i32
  br label %routine_idivl_MINUS0x7c__rbp_.exit

routine_idivl_MINUS0x7c__rbp_.exit:               ; preds = %2844, %2842
  %2849 = phi i64 [ %.pre100, %2842 ], [ %2832, %2844 ]
  %2850 = phi i32 [ %.pre99, %2842 ], [ %2848, %2844 ]
  %2851 = phi i64 [ %.pre98, %2842 ], [ %2749, %2844 ]
  %2852 = phi %struct.Memory* [ %2843, %2842 ], [ %2750, %2844 ]
  %2853 = add i64 %2851, -260
  %2854 = add i64 %2849, 6
  store i64 %2854, i64* %3, align 8
  %2855 = inttoptr i64 %2853 to i32*
  store i32 %2850, i32* %2855, align 4
  %.pre101 = load i64, i64* %3, align 8
  br label %block_.L_440b3c

block_.L_440b3c:                                  ; preds = %routine_idivl_MINUS0x7c__rbp_.exit, %block_440b1b
  %2856 = phi i64 [ %.pre101, %routine_idivl_MINUS0x7c__rbp_.exit ], [ %2792, %block_440b1b ]
  %MEMORY.15 = phi %struct.Memory* [ %2852, %routine_idivl_MINUS0x7c__rbp_.exit ], [ %2750, %block_440b1b ]
  %2857 = load i64, i64* %RBP.i, align 8
  %2858 = add i64 %2857, -260
  %2859 = add i64 %2856, 6
  store i64 %2859, i64* %3, align 8
  %2860 = inttoptr i64 %2858 to i32*
  %2861 = load i32, i32* %2860, align 4
  %2862 = zext i32 %2861 to i64
  store i64 %2862, i64* %RAX.i810, align 8
  %2863 = add i64 %2857, -252
  %2864 = add i64 %2856, 12
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2863 to i32*
  store i32 %2861, i32* %2865, align 4
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_440b48

block_.L_440b48:                                  ; preds = %block_.L_440b3c, %block_440ae8
  %2866 = phi i64 [ %.pre102, %block_.L_440b3c ], [ %2678, %block_440ae8 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.15, %block_.L_440b3c ], [ %MEMORY.14, %block_440ae8 ]
  %2867 = load i64, i64* %RBP.i, align 8
  %2868 = add i64 %2867, -252
  %2869 = add i64 %2866, 6
  store i64 %2869, i64* %3, align 8
  %2870 = inttoptr i64 %2868 to i32*
  %2871 = load i32, i32* %2870, align 4
  %2872 = zext i32 %2871 to i64
  store i64 %2872, i64* %RAX.i810, align 8
  %2873 = add i64 %2867, -80
  %2874 = add i64 %2866, 9
  store i64 %2874, i64* %3, align 8
  %2875 = inttoptr i64 %2873 to i32*
  store i32 %2871, i32* %2875, align 4
  %2876 = load i64, i64* %RBP.i, align 8
  %2877 = add i64 %2876, -60
  %2878 = load i64, i64* %3, align 8
  %2879 = add i64 %2878, 3
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2877 to i32*
  %2881 = load i32, i32* %2880, align 4
  %2882 = zext i32 %2881 to i64
  store i64 %2882, i64* %RAX.i810, align 8
  %2883 = add i64 %2876, -120
  %2884 = add i64 %2878, 6
  store i64 %2884, i64* %3, align 8
  %2885 = inttoptr i64 %2883 to i32*
  %2886 = load i32, i32* %2885, align 4
  %2887 = and i32 %2886, %2881
  %2888 = zext i32 %2887 to i64
  store i64 %2888, i64* %RAX.i810, align 8
  store i8 0, i8* %20, align 1
  %2889 = and i32 %2887, 255
  %2890 = tail call i32 @llvm.ctpop.i32(i32 %2889)
  %2891 = trunc i32 %2890 to i8
  %2892 = and i8 %2891, 1
  %2893 = xor i8 %2892, 1
  store i8 %2893, i8* %27, align 1
  %2894 = icmp eq i32 %2887, 0
  %2895 = zext i1 %2894 to i8
  store i8 %2895, i8* %35, align 1
  %2896 = lshr i32 %2887, 31
  %2897 = trunc i32 %2896 to i8
  store i8 %2897, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i8 0, i8* %32, align 1
  %2898 = add i64 %2876, -88
  %2899 = add i64 %2878, 9
  store i64 %2899, i64* %3, align 8
  %2900 = inttoptr i64 %2898 to i32*
  store i32 %2887, i32* %2900, align 4
  %2901 = load i64, i64* %RBP.i, align 8
  %2902 = add i64 %2901, -116
  %2903 = load i64, i64* %3, align 8
  %2904 = add i64 %2903, 3
  store i64 %2904, i64* %3, align 8
  %2905 = inttoptr i64 %2902 to i32*
  %2906 = load i32, i32* %2905, align 4
  %2907 = zext i32 %2906 to i64
  store i64 %2907, i64* %RAX.i810, align 8
  %2908 = add i64 %2901, -88
  %2909 = add i64 %2903, 6
  store i64 %2909, i64* %3, align 8
  %2910 = inttoptr i64 %2908 to i32*
  %2911 = load i32, i32* %2910, align 4
  %2912 = sub i32 %2906, %2911
  %2913 = zext i32 %2912 to i64
  store i64 %2913, i64* %RAX.i810, align 8
  %2914 = icmp ult i32 %2906, %2911
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %20, align 1
  %2916 = and i32 %2912, 255
  %2917 = tail call i32 @llvm.ctpop.i32(i32 %2916)
  %2918 = trunc i32 %2917 to i8
  %2919 = and i8 %2918, 1
  %2920 = xor i8 %2919, 1
  store i8 %2920, i8* %27, align 1
  %2921 = xor i32 %2911, %2906
  %2922 = xor i32 %2921, %2912
  %2923 = lshr i32 %2922, 4
  %2924 = trunc i32 %2923 to i8
  %2925 = and i8 %2924, 1
  store i8 %2925, i8* %32, align 1
  %2926 = icmp eq i32 %2912, 0
  %2927 = zext i1 %2926 to i8
  store i8 %2927, i8* %35, align 1
  %2928 = lshr i32 %2912, 31
  %2929 = trunc i32 %2928 to i8
  store i8 %2929, i8* %38, align 1
  %2930 = lshr i32 %2906, 31
  %2931 = lshr i32 %2911, 31
  %2932 = xor i32 %2931, %2930
  %2933 = xor i32 %2928, %2930
  %2934 = add nuw nsw i32 %2933, %2932
  %2935 = icmp eq i32 %2934, 2
  %2936 = zext i1 %2935 to i8
  store i8 %2936, i8* %44, align 1
  %2937 = add i64 %2901, -84
  %2938 = add i64 %2903, 9
  store i64 %2938, i64* %3, align 8
  %2939 = inttoptr i64 %2937 to i32*
  store i32 %2912, i32* %2939, align 4
  %2940 = load i64, i64* %RBP.i, align 8
  %2941 = add i64 %2940, -64
  %2942 = load i64, i64* %3, align 8
  %2943 = add i64 %2942, 3
  store i64 %2943, i64* %3, align 8
  %2944 = inttoptr i64 %2941 to i32*
  %2945 = load i32, i32* %2944, align 4
  %2946 = zext i32 %2945 to i64
  store i64 %2946, i64* %RAX.i810, align 8
  %2947 = add i64 %2940, -128
  %2948 = add i64 %2942, 6
  store i64 %2948, i64* %3, align 8
  %2949 = inttoptr i64 %2947 to i32*
  %2950 = load i32, i32* %2949, align 4
  %2951 = and i32 %2950, %2945
  %2952 = zext i32 %2951 to i64
  store i64 %2952, i64* %RAX.i810, align 8
  store i8 0, i8* %20, align 1
  %2953 = and i32 %2951, 255
  %2954 = tail call i32 @llvm.ctpop.i32(i32 %2953)
  %2955 = trunc i32 %2954 to i8
  %2956 = and i8 %2955, 1
  %2957 = xor i8 %2956, 1
  store i8 %2957, i8* %27, align 1
  %2958 = icmp eq i32 %2951, 0
  %2959 = zext i1 %2958 to i8
  store i8 %2959, i8* %35, align 1
  %2960 = lshr i32 %2951, 31
  %2961 = trunc i32 %2960 to i8
  store i8 %2961, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i8 0, i8* %32, align 1
  %2962 = add i64 %2940, -96
  %2963 = add i64 %2942, 9
  store i64 %2963, i64* %3, align 8
  %2964 = inttoptr i64 %2962 to i32*
  store i32 %2951, i32* %2964, align 4
  %2965 = load i64, i64* %RBP.i, align 8
  %2966 = add i64 %2965, -124
  %2967 = load i64, i64* %3, align 8
  %2968 = add i64 %2967, 3
  store i64 %2968, i64* %3, align 8
  %2969 = inttoptr i64 %2966 to i32*
  %2970 = load i32, i32* %2969, align 4
  %2971 = zext i32 %2970 to i64
  store i64 %2971, i64* %RAX.i810, align 8
  %2972 = add i64 %2965, -96
  %2973 = add i64 %2967, 6
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2972 to i32*
  %2975 = load i32, i32* %2974, align 4
  %2976 = sub i32 %2970, %2975
  %2977 = zext i32 %2976 to i64
  store i64 %2977, i64* %RAX.i810, align 8
  %2978 = icmp ult i32 %2970, %2975
  %2979 = zext i1 %2978 to i8
  store i8 %2979, i8* %20, align 1
  %2980 = and i32 %2976, 255
  %2981 = tail call i32 @llvm.ctpop.i32(i32 %2980)
  %2982 = trunc i32 %2981 to i8
  %2983 = and i8 %2982, 1
  %2984 = xor i8 %2983, 1
  store i8 %2984, i8* %27, align 1
  %2985 = xor i32 %2975, %2970
  %2986 = xor i32 %2985, %2976
  %2987 = lshr i32 %2986, 4
  %2988 = trunc i32 %2987 to i8
  %2989 = and i8 %2988, 1
  store i8 %2989, i8* %32, align 1
  %2990 = icmp eq i32 %2976, 0
  %2991 = zext i1 %2990 to i8
  store i8 %2991, i8* %35, align 1
  %2992 = lshr i32 %2976, 31
  %2993 = trunc i32 %2992 to i8
  store i8 %2993, i8* %38, align 1
  %2994 = lshr i32 %2970, 31
  %2995 = lshr i32 %2975, 31
  %2996 = xor i32 %2995, %2994
  %2997 = xor i32 %2992, %2994
  %2998 = add nuw nsw i32 %2997, %2996
  %2999 = icmp eq i32 %2998, 2
  %3000 = zext i1 %2999 to i8
  store i8 %3000, i8* %44, align 1
  %3001 = add i64 %2965, -92
  %3002 = add i64 %2967, 9
  store i64 %3002, i64* %3, align 8
  %3003 = inttoptr i64 %3001 to i32*
  store i32 %2976, i32* %3003, align 4
  %3004 = load i64, i64* %RBP.i, align 8
  %3005 = add i64 %3004, -84
  %3006 = load i64, i64* %3, align 8
  %3007 = add i64 %3006, 3
  store i64 %3007, i64* %3, align 8
  %3008 = inttoptr i64 %3005 to i32*
  %3009 = load i32, i32* %3008, align 4
  %3010 = zext i32 %3009 to i64
  store i64 %3010, i64* %RAX.i810, align 8
  %3011 = add i64 %3004, -92
  %3012 = add i64 %3006, 7
  store i64 %3012, i64* %3, align 8
  %3013 = inttoptr i64 %3011 to i32*
  %3014 = load i32, i32* %3013, align 4
  %3015 = sext i32 %3009 to i64
  %3016 = sext i32 %3014 to i64
  %3017 = mul nsw i64 %3016, %3015
  %3018 = trunc i64 %3017 to i32
  %3019 = and i64 %3017, 4294967295
  store i64 %3019, i64* %RAX.i810, align 8
  %3020 = shl i64 %3017, 32
  %3021 = ashr exact i64 %3020, 32
  %3022 = icmp ne i64 %3021, %3017
  %3023 = zext i1 %3022 to i8
  store i8 %3023, i8* %20, align 1
  %3024 = and i32 %3018, 255
  %3025 = tail call i32 @llvm.ctpop.i32(i32 %3024)
  %3026 = trunc i32 %3025 to i8
  %3027 = and i8 %3026, 1
  %3028 = xor i8 %3027, 1
  store i8 %3028, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  %3029 = lshr i32 %3018, 31
  %3030 = trunc i32 %3029 to i8
  store i8 %3030, i8* %38, align 1
  store i8 %3023, i8* %44, align 1
  %3031 = add i64 %3004, -112
  %3032 = add i64 %3006, 11
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3031 to i64*
  %3034 = load i64, i64* %3033, align 8
  store i64 %3034, i64* %RCX.i551, align 8
  %3035 = add i64 %3004, -72
  %3036 = add i64 %3006, 15
  store i64 %3036, i64* %3, align 8
  %3037 = inttoptr i64 %3035 to i32*
  %3038 = load i32, i32* %3037, align 4
  %3039 = sext i32 %3038 to i64
  store i64 %3039, i64* %RDX.i913.pre-phi, align 8
  %3040 = shl nsw i64 %3039, 3
  %3041 = add i64 %3040, %3034
  %3042 = add i64 %3006, 19
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3041 to i64*
  %3044 = load i64, i64* %3043, align 8
  store i64 %3044, i64* %RCX.i551, align 8
  %3045 = add i64 %3004, -68
  %3046 = add i64 %3006, 23
  store i64 %3046, i64* %3, align 8
  %3047 = inttoptr i64 %3045 to i32*
  %3048 = load i32, i32* %3047, align 4
  %3049 = sext i32 %3048 to i64
  store i64 %3049, i64* %RDX.i913.pre-phi, align 8
  %3050 = shl nsw i64 %3049, 1
  %3051 = add i64 %3050, %3044
  %3052 = add i64 %3006, 27
  store i64 %3052, i64* %3, align 8
  %3053 = inttoptr i64 %3051 to i16*
  %3054 = load i16, i16* %3053, align 2
  %3055 = zext i16 %3054 to i64
  store i64 %3055, i64* %RSI.i876.pre-phi, align 8
  %3056 = shl i64 %3017, 32
  %3057 = ashr exact i64 %3056, 32
  %3058 = zext i16 %3054 to i64
  %3059 = mul nsw i64 %3058, %3057
  %3060 = trunc i64 %3059 to i32
  %3061 = and i64 %3059, 4294967295
  store i64 %3061, i64* %RAX.i810, align 8
  %3062 = shl i64 %3059, 32
  %3063 = ashr exact i64 %3062, 32
  %3064 = icmp ne i64 %3063, %3059
  %3065 = zext i1 %3064 to i8
  store i8 %3065, i8* %20, align 1
  %3066 = and i32 %3060, 255
  %3067 = tail call i32 @llvm.ctpop.i32(i32 %3066)
  %3068 = trunc i32 %3067 to i8
  %3069 = and i8 %3068, 1
  %3070 = xor i8 %3069, 1
  store i8 %3070, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  %3071 = lshr i32 %3060, 31
  %3072 = trunc i32 %3071 to i8
  store i8 %3072, i8* %38, align 1
  store i8 %3065, i8* %44, align 1
  %3073 = add i64 %3004, -88
  %3074 = add i64 %3006, 33
  store i64 %3074, i64* %3, align 8
  %3075 = inttoptr i64 %3073 to i32*
  %3076 = load i32, i32* %3075, align 4
  %3077 = zext i32 %3076 to i64
  store i64 %3077, i64* %RSI.i876.pre-phi, align 8
  %3078 = load i64, i64* %RBP.i, align 8
  %3079 = add i64 %3078, -92
  %3080 = add i64 %3006, 37
  store i64 %3080, i64* %3, align 8
  %3081 = inttoptr i64 %3079 to i32*
  %3082 = load i32, i32* %3081, align 4
  %3083 = sext i32 %3076 to i64
  %3084 = sext i32 %3082 to i64
  %3085 = mul nsw i64 %3084, %3083
  %3086 = trunc i64 %3085 to i32
  %3087 = and i64 %3085, 4294967295
  store i64 %3087, i64* %RSI.i876.pre-phi, align 8
  %3088 = shl i64 %3085, 32
  %3089 = ashr exact i64 %3088, 32
  %3090 = icmp ne i64 %3089, %3085
  %3091 = zext i1 %3090 to i8
  store i8 %3091, i8* %20, align 1
  %3092 = and i32 %3086, 255
  %3093 = tail call i32 @llvm.ctpop.i32(i32 %3092)
  %3094 = trunc i32 %3093 to i8
  %3095 = and i8 %3094, 1
  %3096 = xor i8 %3095, 1
  store i8 %3096, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  %3097 = lshr i32 %3086, 31
  %3098 = trunc i32 %3097 to i8
  store i8 %3098, i8* %38, align 1
  store i8 %3091, i8* %44, align 1
  %3099 = add i64 %3078, -112
  %3100 = add i64 %3006, 41
  store i64 %3100, i64* %3, align 8
  %3101 = inttoptr i64 %3099 to i64*
  %3102 = load i64, i64* %3101, align 8
  store i64 %3102, i64* %RCX.i551, align 8
  %3103 = add i64 %3078, -72
  %3104 = add i64 %3006, 45
  store i64 %3104, i64* %3, align 8
  %3105 = inttoptr i64 %3103 to i32*
  %3106 = load i32, i32* %3105, align 4
  %3107 = sext i32 %3106 to i64
  store i64 %3107, i64* %RDX.i913.pre-phi, align 8
  %3108 = shl nsw i64 %3107, 3
  %3109 = add i64 %3108, %3102
  %3110 = add i64 %3006, 49
  store i64 %3110, i64* %3, align 8
  %3111 = inttoptr i64 %3109 to i64*
  %3112 = load i64, i64* %3111, align 8
  store i64 %3112, i64* %RCX.i551, align 8
  %3113 = add i64 %3078, -76
  %3114 = add i64 %3006, 53
  store i64 %3114, i64* %3, align 8
  %3115 = inttoptr i64 %3113 to i32*
  %3116 = load i32, i32* %3115, align 4
  %3117 = sext i32 %3116 to i64
  store i64 %3117, i64* %RDX.i913.pre-phi, align 8
  %3118 = shl nsw i64 %3117, 1
  %3119 = add i64 %3118, %3112
  %3120 = add i64 %3006, 57
  store i64 %3120, i64* %3, align 8
  %3121 = inttoptr i64 %3119 to i16*
  %3122 = load i16, i16* %3121, align 2
  %3123 = zext i16 %3122 to i64
  store i64 %3123, i64* %RDI.i464, align 8
  %3124 = shl i64 %3085, 32
  %3125 = ashr exact i64 %3124, 32
  %3126 = zext i16 %3122 to i64
  %3127 = mul nsw i64 %3126, %3125
  %3128 = and i64 %3127, 4294967295
  store i64 %3128, i64* %RSI.i876.pre-phi, align 8
  %3129 = load i64, i64* %RAX.i810, align 8
  %3130 = trunc i64 %3127 to i32
  %3131 = trunc i64 %3129 to i32
  %3132 = add i32 %3130, %3131
  %3133 = zext i32 %3132 to i64
  store i64 %3133, i64* %RAX.i810, align 8
  %3134 = icmp ult i32 %3132, %3131
  %3135 = icmp ult i32 %3132, %3130
  %3136 = or i1 %3134, %3135
  %3137 = zext i1 %3136 to i8
  store i8 %3137, i8* %20, align 1
  %3138 = and i32 %3132, 255
  %3139 = tail call i32 @llvm.ctpop.i32(i32 %3138)
  %3140 = trunc i32 %3139 to i8
  %3141 = and i8 %3140, 1
  %3142 = xor i8 %3141, 1
  store i8 %3142, i8* %27, align 1
  %3143 = xor i64 %3127, %3129
  %3144 = trunc i64 %3143 to i32
  %3145 = xor i32 %3144, %3132
  %3146 = lshr i32 %3145, 4
  %3147 = trunc i32 %3146 to i8
  %3148 = and i8 %3147, 1
  store i8 %3148, i8* %32, align 1
  %3149 = icmp eq i32 %3132, 0
  %3150 = zext i1 %3149 to i8
  store i8 %3150, i8* %35, align 1
  %3151 = lshr i32 %3132, 31
  %3152 = trunc i32 %3151 to i8
  store i8 %3152, i8* %38, align 1
  %3153 = lshr i32 %3131, 31
  %3154 = lshr i32 %3130, 31
  %3155 = xor i32 %3151, %3153
  %3156 = xor i32 %3151, %3154
  %3157 = add nuw nsw i32 %3155, %3156
  %3158 = icmp eq i32 %3157, 2
  %3159 = zext i1 %3158 to i8
  store i8 %3159, i8* %44, align 1
  %3160 = load i64, i64* %RBP.i, align 8
  %3161 = add i64 %3160, -84
  %3162 = add i64 %3006, 65
  store i64 %3162, i64* %3, align 8
  %3163 = inttoptr i64 %3161 to i32*
  %3164 = load i32, i32* %3163, align 4
  %3165 = zext i32 %3164 to i64
  store i64 %3165, i64* %RSI.i876.pre-phi, align 8
  %3166 = add i64 %3160, -96
  %3167 = add i64 %3006, 69
  store i64 %3167, i64* %3, align 8
  %3168 = inttoptr i64 %3166 to i32*
  %3169 = load i32, i32* %3168, align 4
  %3170 = sext i32 %3164 to i64
  %3171 = sext i32 %3169 to i64
  %3172 = mul nsw i64 %3171, %3170
  %3173 = trunc i64 %3172 to i32
  %3174 = and i64 %3172, 4294967295
  store i64 %3174, i64* %RSI.i876.pre-phi, align 8
  %3175 = shl i64 %3172, 32
  %3176 = ashr exact i64 %3175, 32
  %3177 = icmp ne i64 %3176, %3172
  %3178 = zext i1 %3177 to i8
  store i8 %3178, i8* %20, align 1
  %3179 = and i32 %3173, 255
  %3180 = tail call i32 @llvm.ctpop.i32(i32 %3179)
  %3181 = trunc i32 %3180 to i8
  %3182 = and i8 %3181, 1
  %3183 = xor i8 %3182, 1
  store i8 %3183, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  %3184 = lshr i32 %3173, 31
  %3185 = trunc i32 %3184 to i8
  store i8 %3185, i8* %38, align 1
  store i8 %3178, i8* %44, align 1
  %3186 = add i64 %3160, -112
  %3187 = add i64 %3006, 73
  store i64 %3187, i64* %3, align 8
  %3188 = inttoptr i64 %3186 to i64*
  %3189 = load i64, i64* %3188, align 8
  store i64 %3189, i64* %RCX.i551, align 8
  %3190 = add i64 %3160, -80
  %3191 = add i64 %3006, 77
  store i64 %3191, i64* %3, align 8
  %3192 = inttoptr i64 %3190 to i32*
  %3193 = load i32, i32* %3192, align 4
  %3194 = sext i32 %3193 to i64
  store i64 %3194, i64* %RDX.i913.pre-phi, align 8
  %3195 = shl nsw i64 %3194, 3
  %3196 = add i64 %3195, %3189
  %3197 = add i64 %3006, 81
  store i64 %3197, i64* %3, align 8
  %3198 = inttoptr i64 %3196 to i64*
  %3199 = load i64, i64* %3198, align 8
  store i64 %3199, i64* %RCX.i551, align 8
  %3200 = add i64 %3160, -68
  %3201 = add i64 %3006, 85
  store i64 %3201, i64* %3, align 8
  %3202 = inttoptr i64 %3200 to i32*
  %3203 = load i32, i32* %3202, align 4
  %3204 = sext i32 %3203 to i64
  store i64 %3204, i64* %RDX.i913.pre-phi, align 8
  %3205 = shl nsw i64 %3204, 1
  %3206 = add i64 %3205, %3199
  %3207 = add i64 %3006, 89
  store i64 %3207, i64* %3, align 8
  %3208 = inttoptr i64 %3206 to i16*
  %3209 = load i16, i16* %3208, align 2
  %3210 = zext i16 %3209 to i64
  store i64 %3210, i64* %RDI.i464, align 8
  %3211 = shl i64 %3172, 32
  %3212 = ashr exact i64 %3211, 32
  %3213 = zext i16 %3209 to i64
  %3214 = mul nsw i64 %3213, %3212
  %3215 = and i64 %3214, 4294967295
  store i64 %3215, i64* %RSI.i876.pre-phi, align 8
  %3216 = load i64, i64* %RAX.i810, align 8
  %3217 = trunc i64 %3214 to i32
  %3218 = trunc i64 %3216 to i32
  %3219 = add i32 %3217, %3218
  %3220 = zext i32 %3219 to i64
  store i64 %3220, i64* %RAX.i810, align 8
  %3221 = icmp ult i32 %3219, %3218
  %3222 = icmp ult i32 %3219, %3217
  %3223 = or i1 %3221, %3222
  %3224 = zext i1 %3223 to i8
  store i8 %3224, i8* %20, align 1
  %3225 = and i32 %3219, 255
  %3226 = tail call i32 @llvm.ctpop.i32(i32 %3225)
  %3227 = trunc i32 %3226 to i8
  %3228 = and i8 %3227, 1
  %3229 = xor i8 %3228, 1
  store i8 %3229, i8* %27, align 1
  %3230 = xor i64 %3214, %3216
  %3231 = trunc i64 %3230 to i32
  %3232 = xor i32 %3231, %3219
  %3233 = lshr i32 %3232, 4
  %3234 = trunc i32 %3233 to i8
  %3235 = and i8 %3234, 1
  store i8 %3235, i8* %32, align 1
  %3236 = icmp eq i32 %3219, 0
  %3237 = zext i1 %3236 to i8
  store i8 %3237, i8* %35, align 1
  %3238 = lshr i32 %3219, 31
  %3239 = trunc i32 %3238 to i8
  store i8 %3239, i8* %38, align 1
  %3240 = lshr i32 %3218, 31
  %3241 = lshr i32 %3217, 31
  %3242 = xor i32 %3238, %3240
  %3243 = xor i32 %3238, %3241
  %3244 = add nuw nsw i32 %3242, %3243
  %3245 = icmp eq i32 %3244, 2
  %3246 = zext i1 %3245 to i8
  store i8 %3246, i8* %44, align 1
  %3247 = load i64, i64* %RBP.i, align 8
  %3248 = add i64 %3247, -88
  %3249 = add i64 %3006, 97
  store i64 %3249, i64* %3, align 8
  %3250 = inttoptr i64 %3248 to i32*
  %3251 = load i32, i32* %3250, align 4
  %3252 = zext i32 %3251 to i64
  store i64 %3252, i64* %RSI.i876.pre-phi, align 8
  %3253 = add i64 %3247, -96
  %3254 = add i64 %3006, 101
  store i64 %3254, i64* %3, align 8
  %3255 = inttoptr i64 %3253 to i32*
  %3256 = load i32, i32* %3255, align 4
  %3257 = sext i32 %3251 to i64
  %3258 = sext i32 %3256 to i64
  %3259 = mul nsw i64 %3258, %3257
  %3260 = trunc i64 %3259 to i32
  %3261 = and i64 %3259, 4294967295
  store i64 %3261, i64* %RSI.i876.pre-phi, align 8
  %3262 = shl i64 %3259, 32
  %3263 = ashr exact i64 %3262, 32
  %3264 = icmp ne i64 %3263, %3259
  %3265 = zext i1 %3264 to i8
  store i8 %3265, i8* %20, align 1
  %3266 = and i32 %3260, 255
  %3267 = tail call i32 @llvm.ctpop.i32(i32 %3266)
  %3268 = trunc i32 %3267 to i8
  %3269 = and i8 %3268, 1
  %3270 = xor i8 %3269, 1
  store i8 %3270, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  %3271 = lshr i32 %3260, 31
  %3272 = trunc i32 %3271 to i8
  store i8 %3272, i8* %38, align 1
  store i8 %3265, i8* %44, align 1
  %3273 = add i64 %3247, -112
  %3274 = add i64 %3006, 105
  store i64 %3274, i64* %3, align 8
  %3275 = inttoptr i64 %3273 to i64*
  %3276 = load i64, i64* %3275, align 8
  store i64 %3276, i64* %RCX.i551, align 8
  %3277 = add i64 %3247, -80
  %3278 = add i64 %3006, 109
  store i64 %3278, i64* %3, align 8
  %3279 = inttoptr i64 %3277 to i32*
  %3280 = load i32, i32* %3279, align 4
  %3281 = sext i32 %3280 to i64
  store i64 %3281, i64* %RDX.i913.pre-phi, align 8
  %3282 = shl nsw i64 %3281, 3
  %3283 = add i64 %3282, %3276
  %3284 = add i64 %3006, 113
  store i64 %3284, i64* %3, align 8
  %3285 = inttoptr i64 %3283 to i64*
  %3286 = load i64, i64* %3285, align 8
  store i64 %3286, i64* %RCX.i551, align 8
  %3287 = add i64 %3247, -76
  %3288 = add i64 %3006, 117
  store i64 %3288, i64* %3, align 8
  %3289 = inttoptr i64 %3287 to i32*
  %3290 = load i32, i32* %3289, align 4
  %3291 = sext i32 %3290 to i64
  store i64 %3291, i64* %RDX.i913.pre-phi, align 8
  %3292 = shl nsw i64 %3291, 1
  %3293 = add i64 %3292, %3286
  %3294 = add i64 %3006, 121
  store i64 %3294, i64* %3, align 8
  %3295 = inttoptr i64 %3293 to i16*
  %3296 = load i16, i16* %3295, align 2
  %3297 = zext i16 %3296 to i64
  store i64 %3297, i64* %RDI.i464, align 8
  %3298 = shl i64 %3259, 32
  %3299 = ashr exact i64 %3298, 32
  %3300 = zext i16 %3296 to i64
  %3301 = mul nsw i64 %3300, %3299
  %3302 = and i64 %3301, 4294967295
  store i64 %3302, i64* %RSI.i876.pre-phi, align 8
  %3303 = load i64, i64* %RAX.i810, align 8
  %3304 = trunc i64 %3301 to i32
  %3305 = trunc i64 %3303 to i32
  %3306 = add i32 %3304, %3305
  %3307 = zext i32 %3306 to i64
  store i64 %3307, i64* %RAX.i810, align 8
  %3308 = icmp ult i32 %3306, %3305
  %3309 = icmp ult i32 %3306, %3304
  %3310 = or i1 %3308, %3309
  %3311 = zext i1 %3310 to i8
  store i8 %3311, i8* %20, align 1
  %3312 = and i32 %3306, 255
  %3313 = tail call i32 @llvm.ctpop.i32(i32 %3312)
  %3314 = trunc i32 %3313 to i8
  %3315 = and i8 %3314, 1
  %3316 = xor i8 %3315, 1
  store i8 %3316, i8* %27, align 1
  %3317 = xor i64 %3301, %3303
  %3318 = trunc i64 %3317 to i32
  %3319 = xor i32 %3318, %3306
  %3320 = lshr i32 %3319, 4
  %3321 = trunc i32 %3320 to i8
  %3322 = and i8 %3321, 1
  store i8 %3322, i8* %32, align 1
  %3323 = icmp eq i32 %3306, 0
  %3324 = zext i1 %3323 to i8
  store i8 %3324, i8* %35, align 1
  %3325 = lshr i32 %3306, 31
  %3326 = trunc i32 %3325 to i8
  store i8 %3326, i8* %38, align 1
  %3327 = lshr i32 %3305, 31
  %3328 = lshr i32 %3304, 31
  %3329 = xor i32 %3325, %3327
  %3330 = xor i32 %3325, %3328
  %3331 = add nuw nsw i32 %3329, %3330
  %3332 = icmp eq i32 %3331, 2
  %3333 = zext i1 %3332 to i8
  store i8 %3333, i8* %44, align 1
  %3334 = load i64, i64* %RBP.i, align 8
  %3335 = add i64 %3334, -136
  %3336 = add i64 %3006, 132
  store i64 %3336, i64* %3, align 8
  %3337 = inttoptr i64 %3335 to i32*
  %3338 = load i32, i32* %3337, align 4
  %3339 = add i32 %3338, %3306
  %3340 = zext i32 %3339 to i64
  store i64 %3340, i64* %RAX.i810, align 8
  %3341 = icmp ult i32 %3339, %3306
  %3342 = icmp ult i32 %3339, %3338
  %3343 = or i1 %3341, %3342
  %3344 = zext i1 %3343 to i8
  store i8 %3344, i8* %20, align 1
  %3345 = and i32 %3339, 255
  %3346 = tail call i32 @llvm.ctpop.i32(i32 %3345)
  %3347 = trunc i32 %3346 to i8
  %3348 = and i8 %3347, 1
  %3349 = xor i8 %3348, 1
  store i8 %3349, i8* %27, align 1
  %3350 = xor i32 %3338, %3306
  %3351 = xor i32 %3350, %3339
  %3352 = lshr i32 %3351, 4
  %3353 = trunc i32 %3352 to i8
  %3354 = and i8 %3353, 1
  store i8 %3354, i8* %32, align 1
  %3355 = icmp eq i32 %3339, 0
  %3356 = zext i1 %3355 to i8
  store i8 %3356, i8* %35, align 1
  %3357 = lshr i32 %3339, 31
  %3358 = trunc i32 %3357 to i8
  store i8 %3358, i8* %38, align 1
  %3359 = lshr i32 %3338, 31
  %3360 = xor i32 %3357, %3325
  %3361 = xor i32 %3357, %3359
  %3362 = add nuw nsw i32 %3360, %3361
  %3363 = icmp eq i32 %3362, 2
  %3364 = zext i1 %3363 to i8
  store i8 %3364, i8* %44, align 1
  %3365 = sext i32 %3339 to i64
  %3366 = lshr i64 %3365, 32
  store i64 %3366, i64* %119, align 8
  %3367 = add i64 %3334, -132
  %3368 = add i64 %3006, 139
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to i32*
  %3370 = load i32, i32* %3369, align 4
  %3371 = sext i32 %3370 to i64
  %3372 = shl nuw i64 %3366, 32
  %3373 = or i64 %3372, %3340
  %3374 = sdiv i64 %3373, %3371
  %3375 = shl i64 %3374, 32
  %3376 = ashr exact i64 %3375, 32
  %3377 = icmp eq i64 %3374, %3376
  br i1 %3377, label %3380, label %3378

; <label>:3378:                                   ; preds = %block_.L_440b48
  %3379 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3368, %struct.Memory* %MEMORY.16)
  %.pre103 = load i64, i64* %RBP.i, align 8
  %.pre104 = load i64, i64* %3, align 8
  br label %routine_idivl_MINUS0x84__rbp_.exit

; <label>:3380:                                   ; preds = %block_.L_440b48
  %3381 = srem i64 %3373, %3371
  %3382 = and i64 %3374, 4294967295
  store i64 %3382, i64* %RAX.i810, align 8
  %3383 = and i64 %3381, 4294967295
  store i64 %3383, i64* %RDX.i913.pre-phi, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  br label %routine_idivl_MINUS0x84__rbp_.exit

routine_idivl_MINUS0x84__rbp_.exit:               ; preds = %3380, %3378
  %3384 = phi i64 [ %.pre104, %3378 ], [ %3368, %3380 ]
  %3385 = phi i64 [ %.pre103, %3378 ], [ %3334, %3380 ]
  %3386 = phi %struct.Memory* [ %3379, %3378 ], [ %MEMORY.16, %3380 ]
  %3387 = add i64 %3385, -16
  %3388 = add i64 %3384, 4
  store i64 %3388, i64* %3, align 8
  %3389 = inttoptr i64 %3387 to i64*
  %3390 = load i64, i64* %3389, align 8
  store i64 %3390, i64* %RCX.i551, align 8
  %3391 = add i64 %3390, 4
  store i64 %3391, i64* %656, align 8
  %3392 = icmp ugt i64 %3390, -5
  %3393 = zext i1 %3392 to i8
  store i8 %3393, i8* %20, align 1
  %3394 = trunc i64 %3391 to i32
  %3395 = and i32 %3394, 255
  %3396 = tail call i32 @llvm.ctpop.i32(i32 %3395)
  %3397 = trunc i32 %3396 to i8
  %3398 = and i8 %3397, 1
  %3399 = xor i8 %3398, 1
  store i8 %3399, i8* %27, align 1
  %3400 = xor i64 %3391, %3390
  %3401 = lshr i64 %3400, 4
  %3402 = trunc i64 %3401 to i8
  %3403 = and i8 %3402, 1
  store i8 %3403, i8* %32, align 1
  %3404 = icmp eq i64 %3391, 0
  %3405 = zext i1 %3404 to i8
  store i8 %3405, i8* %35, align 1
  %3406 = lshr i64 %3391, 63
  %3407 = trunc i64 %3406 to i8
  store i8 %3407, i8* %38, align 1
  %3408 = lshr i64 %3390, 63
  %3409 = xor i64 %3406, %3408
  %3410 = add nuw nsw i64 %3409, %3406
  %3411 = icmp eq i64 %3410, 2
  %3412 = zext i1 %3411 to i8
  store i8 %3412, i8* %44, align 1
  %3413 = add i64 %3384, 15
  store i64 %3413, i64* %3, align 8
  store i64 %3391, i64* %3389, align 8
  %3414 = load i32*, i32** %657, align 8
  %3415 = load i32, i32* %120, align 4
  %3416 = load i64, i64* %3, align 8
  %3417 = add i64 %3416, 2
  store i64 %3417, i64* %3, align 8
  store i32 %3415, i32* %3414, align 4
  %3418 = load i64, i64* %RBP.i, align 8
  %3419 = add i64 %3418, -52
  %3420 = load i64, i64* %3, align 8
  %3421 = add i64 %3420, 3
  store i64 %3421, i64* %3, align 8
  %3422 = inttoptr i64 %3419 to i32*
  %3423 = load i32, i32* %3422, align 4
  %3424 = add i32 %3423, 1
  %3425 = zext i32 %3424 to i64
  store i64 %3425, i64* %RAX.i810, align 8
  %3426 = icmp eq i32 %3423, -1
  %3427 = icmp eq i32 %3424, 0
  %3428 = or i1 %3426, %3427
  %3429 = zext i1 %3428 to i8
  store i8 %3429, i8* %20, align 1
  %3430 = and i32 %3424, 255
  %3431 = tail call i32 @llvm.ctpop.i32(i32 %3430)
  %3432 = trunc i32 %3431 to i8
  %3433 = and i8 %3432, 1
  %3434 = xor i8 %3433, 1
  store i8 %3434, i8* %27, align 1
  %3435 = xor i32 %3424, %3423
  %3436 = lshr i32 %3435, 4
  %3437 = trunc i32 %3436 to i8
  %3438 = and i8 %3437, 1
  store i8 %3438, i8* %32, align 1
  %3439 = zext i1 %3427 to i8
  store i8 %3439, i8* %35, align 1
  %3440 = lshr i32 %3424, 31
  %3441 = trunc i32 %3440 to i8
  store i8 %3441, i8* %38, align 1
  %3442 = lshr i32 %3423, 31
  %3443 = xor i32 %3440, %3442
  %3444 = add nuw nsw i32 %3443, %3440
  %3445 = icmp eq i32 %3444, 2
  %3446 = zext i1 %3445 to i8
  store i8 %3446, i8* %44, align 1
  %3447 = add i64 %3420, 9
  store i64 %3447, i64* %3, align 8
  store i32 %3424, i32* %3422, align 4
  %3448 = load i64, i64* %3, align 8
  %3449 = add i64 %3448, -1276
  store i64 %3449, i64* %3, align 8
  br label %block_.L_44071e

block_.L_440c1f:                                  ; preds = %block_.L_44071e
  %3450 = add i64 %692, -56
  %3451 = add i64 %720, 8
  store i64 %3451, i64* %3, align 8
  %3452 = inttoptr i64 %3450 to i32*
  %3453 = load i32, i32* %3452, align 4
  %3454 = add i32 %3453, 1
  %3455 = zext i32 %3454 to i64
  store i64 %3455, i64* %RAX.i810, align 8
  %3456 = icmp eq i32 %3453, -1
  %3457 = icmp eq i32 %3454, 0
  %3458 = or i1 %3456, %3457
  %3459 = zext i1 %3458 to i8
  store i8 %3459, i8* %20, align 1
  %3460 = and i32 %3454, 255
  %3461 = tail call i32 @llvm.ctpop.i32(i32 %3460)
  %3462 = trunc i32 %3461 to i8
  %3463 = and i8 %3462, 1
  %3464 = xor i8 %3463, 1
  store i8 %3464, i8* %27, align 1
  %3465 = xor i32 %3454, %3453
  %3466 = lshr i32 %3465, 4
  %3467 = trunc i32 %3466 to i8
  %3468 = and i8 %3467, 1
  store i8 %3468, i8* %32, align 1
  %3469 = zext i1 %3457 to i8
  store i8 %3469, i8* %35, align 1
  %3470 = lshr i32 %3454, 31
  %3471 = trunc i32 %3470 to i8
  store i8 %3471, i8* %38, align 1
  %3472 = lshr i32 %3453, 31
  %3473 = xor i32 %3470, %3472
  %3474 = add nuw nsw i32 %3473, %3470
  %3475 = icmp eq i32 %3474, 2
  %3476 = zext i1 %3475 to i8
  store i8 %3476, i8* %44, align 1
  %3477 = add i64 %720, 14
  store i64 %3477, i64* %3, align 8
  store i32 %3454, i32* %3452, align 4
  %3478 = load i64, i64* %3, align 8
  %3479 = add i64 %3478, -1312
  store i64 %3479, i64* %3, align 8
  br label %block_.L_44070d

block_.L_440c32:                                  ; preds = %block_.L_44070d
  %3480 = load i64, i64* %6, align 8
  %3481 = add i64 %3480, 128
  store i64 %3481, i64* %6, align 8
  %3482 = icmp ugt i64 %3480, -129
  %3483 = zext i1 %3482 to i8
  store i8 %3483, i8* %20, align 1
  %3484 = trunc i64 %3481 to i32
  %3485 = and i32 %3484, 255
  %3486 = tail call i32 @llvm.ctpop.i32(i32 %3485)
  %3487 = trunc i32 %3486 to i8
  %3488 = and i8 %3487, 1
  %3489 = xor i8 %3488, 1
  store i8 %3489, i8* %27, align 1
  %3490 = xor i64 %3481, %3480
  %3491 = lshr i64 %3490, 4
  %3492 = trunc i64 %3491 to i8
  %3493 = and i8 %3492, 1
  store i8 %3493, i8* %32, align 1
  %3494 = icmp eq i64 %3481, 0
  %3495 = zext i1 %3494 to i8
  store i8 %3495, i8* %35, align 1
  %3496 = lshr i64 %3481, 63
  %3497 = trunc i64 %3496 to i8
  store i8 %3497, i8* %38, align 1
  %3498 = lshr i64 %3480, 63
  %3499 = xor i64 %3496, %3498
  %3500 = add nuw nsw i64 %3499, %3496
  %3501 = icmp eq i64 %3500, 2
  %3502 = zext i1 %3501 to i8
  store i8 %3502, i8* %44, align 1
  %3503 = add i64 %687, 8
  store i64 %3503, i64* %3, align 8
  %3504 = add i64 %3480, 136
  %3505 = inttoptr i64 %3481 to i64*
  %3506 = load i64, i64* %3505, align 8
  store i64 %3506, i64* %RBX.i202, align 8
  store i64 %3504, i64* %6, align 8
  %3507 = add i64 %687, 9
  store i64 %3507, i64* %3, align 8
  %3508 = add i64 %3480, 144
  %3509 = inttoptr i64 %3504 to i64*
  %3510 = load i64, i64* %3509, align 8
  store i64 %3510, i64* %RBP.i, align 8
  store i64 %3508, i64* %6, align 8
  %3511 = add i64 %687, 10
  store i64 %3511, i64* %3, align 8
  %3512 = inttoptr i64 %3508 to i64*
  %3513 = load i64, i64* %3512, align 8
  store i64 %3513, i64* %3, align 8
  %3514 = add i64 %3480, 152
  store i64 %3514, i64* %6, align 8
  ret %struct.Memory* %MEMORY.3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 128
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
define %struct.Memory* @routine_movw__r9w___ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9W = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %R9W, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %AX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r11d___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r11b___bl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %R11B, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %BL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x40___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 64, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__r8d__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__ax__MINUS0x26__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -38
  %6 = load i16, i16* %AX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
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
define %struct.Memory* @routine_movl__r11d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R11D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_0x11c04__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72708
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %4 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = shl nuw i64 %14, 32
  %19 = or i64 %18, %10
  %20 = sdiv i64 %19, %17
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:26:                                     ; preds = %block_400488
  %27 = srem i64 %19, %17
  %28 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %29 = and i64 %20, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %31 = and i64 %27, 4294967295
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %26, %24
  %38 = phi %struct.Memory* [ %25, %24 ], [ %2, %26 ]
  ret %struct.Memory* %38
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_0x11c08__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72712
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %4 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = shl nuw i64 %14, 32
  %19 = or i64 %18, %10
  %20 = sdiv i64 %19, %17
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:26:                                     ; preds = %block_400488
  %27 = srem i64 %19, %17
  %28 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %29 = and i64 %20, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %31 = and i64 %27, 4294967295
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %26, %24
  %38 = phi %struct.Memory* [ %25, %24 ], [ %2, %26 ]
  ret %struct.Memory* %38
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x7c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72400
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
define %struct.Memory* @routine_movb__bl__MINUS0x9d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -157
  %6 = load i8, i8* %BL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44061a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 532
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
define %struct.Memory* @routine_setne__dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x9d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -157
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x9d__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -157
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %AL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl__al___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
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
define %struct.Memory* @routine_je_.L_4406aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_440671(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 4, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44067b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x40__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4406c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x40__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_addl_MINUS0x8c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722b20___rcx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 7482144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x98__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswq_MINUS0x26__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -38
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1940__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jge_.L_440c32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jge_.L_440c1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x14__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11c04__rsi____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 72708
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb0__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R9D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11c08__rsi____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 72712
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb8__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R11D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswq_MINUS0x26__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -38
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0xb0__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 176
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x74__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl___rcx____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__ebx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %EBX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0xb4__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 180
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x2__rcx____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RBX, align 8
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
define %struct.Memory* @routine_movl_0x1908__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x38__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 56
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ebx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EBX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %4 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = shl nuw i64 %14, 32
  %19 = or i64 %18, %10
  %20 = sdiv i64 %19, %17
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:26:                                     ; preds = %block_400488
  %27 = srem i64 %19, %17
  %28 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %29 = and i64 %20, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %31 = and i64 %27, 4294967295
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %26, %24
  %38 = phi %struct.Memory* [ %25, %24 ], [ %2, %26 ]
  ret %struct.Memory* %38
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc0__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EBX, align 4
  %6 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_440887(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x38__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
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
define %struct.Memory* @routine_movl__ecx__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_440894(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jle_.L_4408b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_440900(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4408e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4408f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xcc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -204
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
define %struct.Memory* @routine_movl_MINUS0xc8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
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
define %struct.Memory* @routine_movl_MINUS0x90__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_MINUS0x7c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %4 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = shl nuw i64 %14, 32
  %19 = or i64 %18, %10
  %20 = sdiv i64 %19, %17
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:26:                                     ; preds = %block_400488
  %27 = srem i64 %19, %17
  %28 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %29 = and i64 %20, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %31 = and i64 %27, 4294967295
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %26, %24
  %38 = phi %struct.Memory* [ %25, %24 ], [ %2, %26 ]
  ret %struct.Memory* %38
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
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
define %struct.Memory* @routine_jge_.L_44093d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44094a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -212
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
define %struct.Memory* @routine_jle_.L_440967(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -216
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4409b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -220
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xdc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -220
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
define %struct.Memory* @routine_jge_.L_44099b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4409a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xe0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
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
define %struct.Memory* @routine_movl_MINUS0xd8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
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
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x78__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -228
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xe4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -228
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ESI, align 4
  %6 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_440a04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -232
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_440a14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -232
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xe8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
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
define %struct.Memory* @routine_jle_.L_440a31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -236
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_440a88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_440a6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -240
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_440a7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -240
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xf0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
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
define %struct.Memory* @routine_movl_MINUS0xec__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -236
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x80__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -244
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xf4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -244
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
define %struct.Memory* @routine_jge_.L_440ac8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_440ad8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x80__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xf8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
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
define %struct.Memory* @routine_jle_.L_440af5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -252
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_440b48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -256
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x100__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
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
define %struct.Memory* @routine_jge_.L_440b2c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -260
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_440b3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x104__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -260
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
define %struct.Memory* @routine_movl_MINUS0xfc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -252
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
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl_MINUS0x78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl_MINUS0x80__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_imull_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RAX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x5c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RSI, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rcx__rdx_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__edi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDI, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RSI, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x60__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RSI, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x88__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %4 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = shl nuw i64 %14, 32
  %19 = or i64 %18, %10
  %20 = sdiv i64 %19, %17
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:26:                                     ; preds = %block_400488
  %27 = srem i64 %19, %17
  %28 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %29 = and i64 %20, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %31 = and i64 %27, 4294967295
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %26, %24
  %38 = phi %struct.Memory* [ %25, %24 ], [ %2, %26 ]
  ret %struct.Memory* %38
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x4___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4
  store i64 %6, i64* %R8, align 8
  %7 = icmp ugt i64 %3, -5
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
define %struct.Memory* @routine_movq__r8__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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
define %struct.Memory* @routine_jmpq_.L_44071e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_440c24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_44070d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -129
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
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
