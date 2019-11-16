; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99da04_type = type <{ [4 x i8] }>
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57a4be_type = type <{ [8 x i8] }>
%G__0x57a4f4_type = type <{ [8 x i8] }>
%G__0xa7f430_type = type <{ [8 x i8] }>
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
@G_0x99da04 = local_unnamed_addr global %G_0x99da04_type zeroinitializer
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57a4be = global %G__0x57a4be_type zeroinitializer
@G__0x57a4f4 = global %G__0x57a4f4_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40fc80.fastlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_411db0.slow_approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @approxlib(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -120
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 112
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
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -16
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 10
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -12
  %48 = load i32, i32* %ESI.i, align 4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1106 = bitcast %union.anon* %52 to i32*
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -16
  %55 = load i32, i32* %EDX.i1106, align 4
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 3
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %58, align 4
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1103 = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -24
  %62 = load i64, i64* %RCX.i1103, align 8
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -32
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 7
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %67 to i32*
  store i32 0, i32* %70, align 4
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -8
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 4
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %72 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %RCX.i1103, align 8
  %RDX.i1096 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %78 = add nsw i64 %77, 12099168
  %79 = add i64 %73, 12
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i8*
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i64
  store i64 %82, i64* %RDX.i1096, align 8
  %83 = zext i8 %81 to i32
  store i8 0, i8* %14, align 1
  %84 = tail call i32 @llvm.ctpop.i32(i32 %83)
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  store i8 %87, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %88 = icmp eq i8 %81, 0
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v115 = select i1 %88, i64 21, i64 26
  %90 = add i64 %73, %.v115
  store i64 %90, i64* %3, align 8
  br i1 %88, label %block_4115e1, label %block_.L_4115e6

block_4115e1:                                     ; preds = %entry
  %91 = add i64 %90, 94
  store i64 %91, i64* %3, align 8
  br label %block_.L_41163f

block_.L_4115e6:                                  ; preds = %entry
  %RDI.i1089 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i1089, align 8
  %RSI.i1087 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 1595, i64* %RSI.i1087, align 8
  store i64 ptrtoint (%G__0x57a4be_type* @G__0x57a4be to i64), i64* %RDX.i1096, align 8
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1083 = getelementptr inbounds %union.anon, %union.anon* %92, i64 0, i32 0
  store i64 20, i64* %RAX.i1083, align 8
  %93 = add i64 %90, 33
  store i64 %93, i64* %3, align 8
  %94 = load i32, i32* %75, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RCX.i1103, align 8
  %EAX.i1077 = bitcast %union.anon* %92 to i32*
  %96 = add i64 %71, -72
  %97 = add i64 %90, 36
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  store i32 20, i32* %98, align 4
  %ECX.i1074 = bitcast %union.anon* %59 to i32*
  %99 = load i32, i32* %ECX.i1074, align 4
  %100 = zext i32 %99 to i64
  %101 = load i64, i64* %3, align 8
  store i64 %100, i64* %RAX.i1083, align 8
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -80
  %104 = load i64, i64* %RDX.i1096, align 8
  %105 = add i64 %101, 6
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %103 to i64*
  store i64 %104, i64* %106, align 8
  %107 = load i64, i64* %3, align 8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %109 = load i32, i32* %EAX.i1077, align 8
  %110 = sext i32 %109 to i64
  %111 = lshr i64 %110, 32
  store i64 %111, i64* %108, align 8
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -72
  %114 = add i64 %107, 4
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RCX.i1103, align 8
  %118 = add i64 %107, 6
  store i64 %118, i64* %3, align 8
  %119 = zext i32 %109 to i64
  %120 = sext i32 %116 to i64
  %121 = shl nuw i64 %111, 32
  %122 = or i64 %121, %119
  %123 = sdiv i64 %122, %120
  %124 = shl i64 %123, 32
  %125 = ashr exact i64 %124, 32
  %126 = icmp eq i64 %123, %125
  br i1 %126, label %129, label %127

; <label>:127:                                    ; preds = %block_.L_4115e6
  %128 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %118, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i1083, align 8
  %.pre71 = load i64, i64* %3, align 8
  %.pre72 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1063

; <label>:129:                                    ; preds = %block_.L_4115e6
  %130 = srem i64 %122, %120
  %131 = and i64 %123, 4294967295
  store i64 %131, i64* %RAX.i1083, align 8
  %132 = and i64 %130, 4294967295
  store i64 %132, i64* %RDX.i1096, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit1063

routine_idivl__ecx.exit1063:                      ; preds = %129, %127
  %133 = phi i64 [ %.pre72, %127 ], [ %112, %129 ]
  %134 = phi i64 [ %.pre71, %127 ], [ %118, %129 ]
  %135 = phi i64 [ %.pre, %127 ], [ %131, %129 ]
  %136 = phi %struct.Memory* [ %128, %127 ], [ %2, %129 ]
  %137 = trunc i64 %135 to i32
  %138 = add i32 %137, -1
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RAX.i1083, align 8
  %140 = icmp eq i32 %137, 0
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %14, align 1
  %142 = and i32 %138, 255
  %143 = tail call i32 @llvm.ctpop.i32(i32 %142)
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = xor i8 %145, 1
  store i8 %146, i8* %21, align 1
  %147 = xor i32 %138, %137
  %148 = lshr i32 %147, 4
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  store i8 %150, i8* %27, align 1
  %151 = icmp eq i32 %138, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %30, align 1
  %153 = lshr i32 %138, 31
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %33, align 1
  %155 = lshr i32 %137, 31
  %156 = xor i32 %153, %155
  %157 = add nuw nsw i32 %156, %155
  %158 = icmp eq i32 %157, 2
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %39, align 1
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1057 = bitcast %union.anon* %160 to i32*
  %161 = getelementptr inbounds %union.anon, %union.anon* %160, i64 0, i32 0
  %162 = add i64 %133, -8
  %163 = add i64 %134, 7
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %161, align 8
  %167 = add i64 %133, -84
  %168 = add i64 %134, 10
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  store i32 %138, i32* %169, align 4
  %170 = load i32, i32* %R8D.i1057, align 4
  %171 = zext i32 %170 to i64
  %172 = load i64, i64* %3, align 8
  store i64 %171, i64* %RAX.i1083, align 8
  %173 = sext i32 %170 to i64
  %174 = lshr i64 %173, 32
  store i64 %174, i64* %108, align 8
  %175 = load i32, i32* %ECX.i1074, align 4
  %176 = add i64 %172, 6
  store i64 %176, i64* %3, align 8
  %177 = sext i32 %175 to i64
  %178 = shl nuw i64 %174, 32
  %179 = or i64 %178, %171
  %180 = sdiv i64 %179, %177
  %181 = shl i64 %180, 32
  %182 = ashr exact i64 %181, 32
  %183 = icmp eq i64 %180, %182
  br i1 %183, label %186, label %184

; <label>:184:                                    ; preds = %routine_idivl__ecx.exit1063
  %185 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %176, %struct.Memory* %136)
  %.pre73 = load i64, i64* %RDX.i1096, align 8
  %.pre74 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1046

; <label>:186:                                    ; preds = %routine_idivl__ecx.exit1063
  %187 = srem i64 %179, %177
  %188 = and i64 %180, 4294967295
  store i64 %188, i64* %RAX.i1083, align 8
  %189 = and i64 %187, 4294967295
  store i64 %189, i64* %RDX.i1096, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit1046

routine_idivl__ecx.exit1046:                      ; preds = %186, %184
  %190 = phi i64 [ %.pre74, %184 ], [ %176, %186 ]
  %191 = phi i64 [ %.pre73, %184 ], [ %189, %186 ]
  %192 = phi %struct.Memory* [ %185, %184 ], [ %136, %186 ]
  %193 = trunc i64 %191 to i32
  %194 = add i32 %193, -1
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RDX.i1096, align 8
  %196 = icmp eq i32 %193, 0
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %14, align 1
  %198 = and i32 %194, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198)
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %21, align 1
  %203 = xor i32 %194, %193
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %27, align 1
  %207 = icmp eq i32 %194, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %30, align 1
  %209 = lshr i32 %194, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %33, align 1
  %211 = lshr i32 %193, 31
  %212 = xor i32 %209, %211
  %213 = add nuw nsw i32 %212, %211
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %39, align 1
  %R9.i1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %216 = load i64, i64* %RBP.i, align 8
  %217 = add i64 %216, -80
  %218 = add i64 %190, 7
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i64*
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %R9.i1041, align 8
  %221 = add i64 %216, -88
  %222 = add i64 %190, 10
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i32*
  store i32 %194, i32* %223, align 4
  %224 = load i64, i64* %R9.i1041, align 8
  %225 = load i64, i64* %3, align 8
  store i64 %224, i64* %RDX.i1096, align 8
  %226 = load i64, i64* %RBP.i, align 8
  %227 = add i64 %226, -84
  %228 = add i64 %225, 6
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RCX.i1103, align 8
  %232 = add i64 %226, -88
  %233 = add i64 %225, 10
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %161, align 8
  %237 = add i64 %225, 264800
  %238 = add i64 %225, 15
  %239 = load i64, i64* %6, align 8
  %240 = add i64 %239, -8
  %241 = inttoptr i64 %240 to i64*
  store i64 %238, i64* %241, align 8
  store i64 %240, i64* %6, align 8
  store i64 %237, i64* %3, align 8
  %call2_41163a = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %237, %struct.Memory* %192)
  %.pre75 = load i64, i64* %RBP.i, align 8
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_41163f

block_.L_41163f:                                  ; preds = %routine_idivl__ecx.exit1046, %block_4115e1
  %242 = phi i64 [ %.pre76, %routine_idivl__ecx.exit1046 ], [ %91, %block_4115e1 ]
  %243 = phi i64 [ %.pre75, %routine_idivl__ecx.exit1046 ], [ %71, %block_4115e1 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_41163a, %routine_idivl__ecx.exit1046 ], [ %2, %block_4115e1 ]
  %244 = add i64 %243, -12
  %245 = add i64 %242, 4
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = add i32 %247, -1
  %249 = icmp eq i32 %247, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %14, align 1
  %251 = and i32 %248, 255
  %252 = tail call i32 @llvm.ctpop.i32(i32 %251)
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  store i8 %255, i8* %21, align 1
  %256 = xor i32 %248, %247
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %27, align 1
  %260 = icmp eq i32 %248, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %30, align 1
  %262 = lshr i32 %248, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %33, align 1
  %264 = lshr i32 %247, 31
  %265 = xor i32 %262, %264
  %266 = add nuw nsw i32 %265, %264
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %39, align 1
  %.v116 = select i1 %260, i64 20, i64 10
  %269 = add i64 %242, %.v116
  store i64 %269, i64* %3, align 8
  br i1 %260, label %block_.L_411653, label %block_411649

block_411649:                                     ; preds = %block_.L_41163f
  %270 = add i64 %269, 4
  store i64 %270, i64* %3, align 8
  %271 = load i32, i32* %246, align 4
  %272 = add i32 %271, -2
  %273 = icmp ult i32 %271, 2
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %14, align 1
  %275 = and i32 %272, 255
  %276 = tail call i32 @llvm.ctpop.i32(i32 %275)
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  store i8 %279, i8* %21, align 1
  %280 = xor i32 %272, %271
  %281 = lshr i32 %280, 4
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  store i8 %283, i8* %27, align 1
  %284 = icmp eq i32 %272, 0
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %30, align 1
  %286 = lshr i32 %272, 31
  %287 = trunc i32 %286 to i8
  store i8 %287, i8* %33, align 1
  %288 = lshr i32 %271, 31
  %289 = xor i32 %286, %288
  %290 = add nuw nsw i32 %289, %288
  %291 = icmp eq i32 %290, 2
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %39, align 1
  %.v117 = select i1 %284, i64 10, i64 15
  %293 = add i64 %269, %.v117
  store i64 %293, i64* %3, align 8
  br i1 %284, label %block_.L_411653, label %block_.L_411658

block_.L_411653:                                  ; preds = %block_411649, %block_.L_41163f
  %294 = phi i64 [ %293, %block_411649 ], [ %269, %block_.L_41163f ]
  %295 = add i64 %294, 94
  store i64 %295, i64* %3, align 8
  br label %block_.L_4116b1

block_.L_411658:                                  ; preds = %block_411649
  %RDI.i1018 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i1018, align 8
  %RSI.i1016 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 1596, i64* %RSI.i1016, align 8
  store i64 ptrtoint (%G__0x57a4f4_type* @G__0x57a4f4 to i64), i64* %RDX.i1096, align 8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1012 = getelementptr inbounds %union.anon, %union.anon* %296, i64 0, i32 0
  store i64 20, i64* %RAX.i1012, align 8
  %297 = add i64 %243, -8
  %298 = add i64 %293, 33
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = zext i32 %300 to i64
  store i64 %301, i64* %RCX.i1103, align 8
  %EAX.i1006 = bitcast %union.anon* %296 to i32*
  %302 = add i64 %243, -92
  %303 = add i64 %293, 36
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i32*
  store i32 20, i32* %304, align 4
  %ECX.i1003 = bitcast %union.anon* %59 to i32*
  %305 = load i32, i32* %ECX.i1003, align 4
  %306 = zext i32 %305 to i64
  %307 = load i64, i64* %3, align 8
  store i64 %306, i64* %RAX.i1012, align 8
  %308 = load i64, i64* %RBP.i, align 8
  %309 = add i64 %308, -104
  %310 = load i64, i64* %RDX.i1096, align 8
  %311 = add i64 %307, 6
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %309 to i64*
  store i64 %310, i64* %312, align 8
  %313 = load i64, i64* %3, align 8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %315 = load i32, i32* %EAX.i1006, align 8
  %316 = sext i32 %315 to i64
  %317 = lshr i64 %316, 32
  store i64 %317, i64* %314, align 8
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -92
  %320 = add i64 %313, 4
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RCX.i1103, align 8
  %324 = add i64 %313, 6
  store i64 %324, i64* %3, align 8
  %325 = zext i32 %315 to i64
  %326 = sext i32 %322 to i64
  %327 = shl nuw i64 %317, 32
  %328 = or i64 %327, %325
  %329 = sdiv i64 %328, %326
  %330 = shl i64 %329, 32
  %331 = ashr exact i64 %330, 32
  %332 = icmp eq i64 %329, %331
  br i1 %332, label %335, label %333

; <label>:333:                                    ; preds = %block_.L_411658
  %334 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %324, %struct.Memory* %MEMORY.0)
  %.pre77 = load i64, i64* %RAX.i1012, align 8
  %.pre78 = load i64, i64* %3, align 8
  %.pre79 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit992

; <label>:335:                                    ; preds = %block_.L_411658
  %336 = srem i64 %328, %326
  %337 = and i64 %329, 4294967295
  store i64 %337, i64* %RAX.i1012, align 8
  %338 = and i64 %336, 4294967295
  store i64 %338, i64* %RDX.i1096, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit992

routine_idivl__ecx.exit992:                       ; preds = %335, %333
  %339 = phi i64 [ %.pre79, %333 ], [ %318, %335 ]
  %340 = phi i64 [ %.pre78, %333 ], [ %324, %335 ]
  %341 = phi i64 [ %.pre77, %333 ], [ %337, %335 ]
  %342 = phi %struct.Memory* [ %334, %333 ], [ %MEMORY.0, %335 ]
  %343 = trunc i64 %341 to i32
  %344 = add i32 %343, -1
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RAX.i1012, align 8
  %346 = icmp eq i32 %343, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %14, align 1
  %348 = and i32 %344, 255
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348)
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %21, align 1
  %353 = xor i32 %344, %343
  %354 = lshr i32 %353, 4
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  store i8 %356, i8* %27, align 1
  %357 = icmp eq i32 %344, 0
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %30, align 1
  %359 = lshr i32 %344, 31
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %33, align 1
  %361 = lshr i32 %343, 31
  %362 = xor i32 %359, %361
  %363 = add nuw nsw i32 %362, %361
  %364 = icmp eq i32 %363, 2
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %39, align 1
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i986 = bitcast %union.anon* %366 to i32*
  %367 = getelementptr inbounds %union.anon, %union.anon* %366, i64 0, i32 0
  %368 = add i64 %339, -8
  %369 = add i64 %340, 7
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %367, align 8
  %373 = add i64 %339, -108
  %374 = add i64 %340, 10
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  store i32 %344, i32* %375, align 4
  %376 = load i32, i32* %R8D.i986, align 4
  %377 = zext i32 %376 to i64
  %378 = load i64, i64* %3, align 8
  store i64 %377, i64* %RAX.i1012, align 8
  %379 = sext i32 %376 to i64
  %380 = lshr i64 %379, 32
  store i64 %380, i64* %314, align 8
  %381 = load i32, i32* %ECX.i1003, align 4
  %382 = add i64 %378, 6
  store i64 %382, i64* %3, align 8
  %383 = sext i32 %381 to i64
  %384 = shl nuw i64 %380, 32
  %385 = or i64 %384, %377
  %386 = sdiv i64 %385, %383
  %387 = shl i64 %386, 32
  %388 = ashr exact i64 %387, 32
  %389 = icmp eq i64 %386, %388
  br i1 %389, label %392, label %390

; <label>:390:                                    ; preds = %routine_idivl__ecx.exit992
  %391 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %382, %struct.Memory* %342)
  %.pre80 = load i64, i64* %RDX.i1096, align 8
  %.pre81 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:392:                                    ; preds = %routine_idivl__ecx.exit992
  %393 = srem i64 %385, %383
  %394 = and i64 %386, 4294967295
  store i64 %394, i64* %RAX.i1012, align 8
  %395 = and i64 %393, 4294967295
  store i64 %395, i64* %RDX.i1096, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %392, %390
  %396 = phi i64 [ %.pre81, %390 ], [ %382, %392 ]
  %397 = phi i64 [ %.pre80, %390 ], [ %395, %392 ]
  %398 = phi %struct.Memory* [ %391, %390 ], [ %342, %392 ]
  %399 = trunc i64 %397 to i32
  %400 = add i32 %399, -1
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %RDX.i1096, align 8
  %402 = icmp eq i32 %399, 0
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %14, align 1
  %404 = and i32 %400, 255
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404)
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  store i8 %408, i8* %21, align 1
  %409 = xor i32 %400, %399
  %410 = lshr i32 %409, 4
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  store i8 %412, i8* %27, align 1
  %413 = icmp eq i32 %400, 0
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %30, align 1
  %415 = lshr i32 %400, 31
  %416 = trunc i32 %415 to i8
  store i8 %416, i8* %33, align 1
  %417 = lshr i32 %399, 31
  %418 = xor i32 %415, %417
  %419 = add nuw nsw i32 %418, %417
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %39, align 1
  %R9.i970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %422 = load i64, i64* %RBP.i, align 8
  %423 = add i64 %422, -104
  %424 = add i64 %396, 7
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i64*
  %426 = load i64, i64* %425, align 8
  store i64 %426, i64* %R9.i970, align 8
  %427 = add i64 %422, -112
  %428 = add i64 %396, 10
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i32*
  store i32 %400, i32* %429, align 4
  %430 = load i64, i64* %R9.i970, align 8
  %431 = load i64, i64* %3, align 8
  store i64 %430, i64* %RDX.i1096, align 8
  %432 = load i64, i64* %RBP.i, align 8
  %433 = add i64 %432, -108
  %434 = add i64 %431, 6
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RCX.i1103, align 8
  %438 = add i64 %432, -112
  %439 = add i64 %431, 10
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = zext i32 %441 to i64
  store i64 %442, i64* %367, align 8
  %443 = add i64 %431, 264686
  %444 = add i64 %431, 15
  %445 = load i64, i64* %6, align 8
  %446 = add i64 %445, -8
  %447 = inttoptr i64 %446 to i64*
  store i64 %444, i64* %447, align 8
  store i64 %446, i64* %6, align 8
  store i64 %443, i64* %3, align 8
  %call2_4116ac = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %443, %struct.Memory* %398)
  %.pre82 = load i64, i64* %RBP.i, align 8
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_4116b1

block_.L_4116b1:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_411653
  %448 = phi i64 [ %295, %block_.L_411653 ], [ %.pre83, %routine_idivl__ecx.exit ]
  %449 = phi i64 [ %243, %block_.L_411653 ], [ %.pre82, %routine_idivl__ecx.exit ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_.L_411653 ], [ %call2_4116ac, %routine_idivl__ecx.exit ]
  %450 = add i64 %449, -24
  %451 = add i64 %448, 5
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i64*
  %453 = load i64, i64* %452, align 8
  store i8 0, i8* %14, align 1
  %454 = trunc i64 %453 to i32
  %455 = and i32 %454, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %460 = icmp eq i64 %453, 0
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %30, align 1
  %462 = lshr i64 %453, 63
  %463 = trunc i64 %462 to i8
  store i8 %463, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v118 = select i1 %460, i64 11, i64 56
  %464 = add i64 %448, %.v118
  store i64 %464, i64* %3, align 8
  br i1 %460, label %block_4116bc, label %block_.L_4116e9

block_4116bc:                                     ; preds = %block_.L_4116b1
  store i64 1, i64* %RDX.i1096, align 8
  %RDI.i950 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %465 = add i64 %449, -8
  %466 = add i64 %464, 8
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i32*
  %468 = load i32, i32* %467, align 4
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RDI.i950, align 8
  %RSI.i947 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %470 = add i64 %449, -12
  %471 = add i64 %464, 11
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = zext i32 %473 to i64
  store i64 %474, i64* %RSI.i947, align 8
  %475 = add i64 %464, -6716
  %476 = add i64 %464, 16
  %477 = load i64, i64* %6, align 8
  %478 = add i64 %477, -8
  %479 = inttoptr i64 %478 to i64*
  store i64 %476, i64* %479, align 8
  store i64 %478, i64* %6, align 8
  store i64 %475, i64* %3, align 8
  %call2_4116c7 = tail call %struct.Memory* @sub_40fc80.fastlib(%struct.State* nonnull %0, i64 %475, %struct.Memory* %MEMORY.2)
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i943 = bitcast %union.anon* %480 to i32*
  %481 = load i64, i64* %RBP.i, align 8
  %482 = add i64 %481, -36
  %483 = load i32, i32* %EAX.i943, align 4
  %484 = load i64, i64* %3, align 8
  %485 = add i64 %484, 3
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %482 to i32*
  store i32 %483, i32* %486, align 4
  %487 = load i64, i64* %RBP.i, align 8
  %488 = add i64 %487, -36
  %489 = load i64, i64* %3, align 8
  %490 = add i64 %489, 4
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %488 to i32*
  %492 = load i32, i32* %491, align 4
  store i8 0, i8* %14, align 1
  %493 = and i32 %492, 255
  %494 = tail call i32 @llvm.ctpop.i32(i32 %493)
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  %497 = xor i8 %496, 1
  store i8 %497, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %498 = icmp eq i32 %492, 0
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %30, align 1
  %500 = lshr i32 %492, 31
  %501 = trunc i32 %500 to i8
  store i8 %501, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %502 = icmp ne i8 %501, 0
  %.v = select i1 %502, i64 17, i64 6
  %503 = add i64 %490, %.v
  store i64 %503, i64* %3, align 8
  br i1 %502, label %block_.L_4116e4, label %block_4116d9

block_4116d9:                                     ; preds = %block_4116bc
  %RAX.i937 = getelementptr inbounds %union.anon, %union.anon* %480, i64 0, i32 0
  %504 = add i64 %503, 3
  store i64 %504, i64* %3, align 8
  %505 = load i32, i32* %491, align 4
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RAX.i937, align 8
  %507 = add i64 %487, -4
  %508 = add i64 %503, 6
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i32*
  store i32 %505, i32* %509, align 4
  %510 = load i64, i64* %3, align 8
  %511 = add i64 %510, 1724
  store i64 %511, i64* %3, align 8
  br label %block_.L_411d9b

block_.L_4116e4:                                  ; preds = %block_4116bc
  %512 = add i64 %503, 5
  store i64 %512, i64* %3, align 8
  br label %block_.L_4116e9

block_.L_4116e9:                                  ; preds = %block_.L_4116b1, %block_.L_4116e4
  %513 = phi i64 [ %464, %block_.L_4116b1 ], [ %512, %block_.L_4116e4 ]
  %514 = phi i64 [ %449, %block_.L_4116b1 ], [ %487, %block_.L_4116e4 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_4116b1 ], [ %call2_4116c7, %block_.L_4116e4 ]
  %515 = add i64 %514, -16
  %516 = add i64 %513, 4
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i32*
  %518 = load i32, i32* %517, align 4
  %519 = add i32 %518, -20
  %520 = icmp ult i32 %518, 20
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %14, align 1
  %522 = and i32 %519, 255
  %523 = tail call i32 @llvm.ctpop.i32(i32 %522)
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  %526 = xor i8 %525, 1
  store i8 %526, i8* %21, align 1
  %527 = xor i32 %518, 16
  %528 = xor i32 %527, %519
  %529 = lshr i32 %528, 4
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  store i8 %531, i8* %27, align 1
  %532 = icmp eq i32 %519, 0
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %30, align 1
  %534 = lshr i32 %519, 31
  %535 = trunc i32 %534 to i8
  store i8 %535, i8* %33, align 1
  %536 = lshr i32 %518, 31
  %537 = xor i32 %534, %536
  %538 = add nuw nsw i32 %537, %536
  %539 = icmp eq i32 %538, 2
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %39, align 1
  %541 = icmp ne i8 %535, 0
  %542 = xor i1 %541, %539
  %543 = or i1 %532, %542
  %.v119 = select i1 %543, i64 36, i64 10
  %544 = add i64 %513, %.v119
  store i64 %544, i64* %3, align 8
  br i1 %543, label %block_.L_41170d, label %block_4116f3

block_4116f3:                                     ; preds = %block_.L_4116e9
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %545 = add i64 %514, -8
  %546 = add i64 %544, 3
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RDI.i, align 8
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %550 = add i64 %514, -12
  %551 = add i64 %544, 6
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RSI.i, align 8
  %555 = add i64 %544, 9
  store i64 %555, i64* %3, align 8
  %556 = load i32, i32* %517, align 4
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RDX.i1096, align 8
  %558 = add i64 %514, -24
  %559 = add i64 %544, 13
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i64*
  %561 = load i64, i64* %560, align 8
  store i64 %561, i64* %RCX.i1103, align 8
  %562 = add i64 %544, 1725
  %563 = add i64 %544, 18
  %564 = load i64, i64* %6, align 8
  %565 = add i64 %564, -8
  %566 = inttoptr i64 %565 to i64*
  store i64 %563, i64* %566, align 8
  store i64 %565, i64* %6, align 8
  store i64 %562, i64* %3, align 8
  %call2_411700 = tail call %struct.Memory* @sub_411db0.slow_approxlib(%struct.State* nonnull %0, i64 %562, %struct.Memory* %MEMORY.3)
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i915 = bitcast %union.anon* %567 to i32*
  %568 = load i64, i64* %RBP.i, align 8
  %569 = add i64 %568, -4
  %570 = load i32, i32* %EAX.i915, align 4
  %571 = load i64, i64* %3, align 8
  %572 = add i64 %571, 3
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %569 to i32*
  store i32 %570, i32* %573, align 4
  %574 = load i64, i64* %3, align 8
  %575 = add i64 %574, 1683
  store i64 %575, i64* %3, align 8
  br label %block_.L_411d9b

block_.L_41170d:                                  ; preds = %block_.L_4116e9
  %RAX.i912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %576 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %577 = add i32 %576, 1
  %578 = zext i32 %577 to i64
  %579 = icmp eq i32 %576, -1
  %580 = icmp eq i32 %577, 0
  %581 = or i1 %579, %580
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %14, align 1
  %583 = and i32 %577, 255
  %584 = tail call i32 @llvm.ctpop.i32(i32 %583)
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  store i8 %587, i8* %21, align 1
  %588 = xor i32 %577, %576
  %589 = lshr i32 %588, 4
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  store i8 %591, i8* %27, align 1
  %592 = zext i1 %580 to i8
  store i8 %592, i8* %30, align 1
  %593 = lshr i32 %577, 31
  %594 = trunc i32 %593 to i8
  store i8 %594, i8* %33, align 1
  %595 = lshr i32 %576, 31
  %596 = xor i32 %593, %595
  %597 = add nuw nsw i32 %596, %593
  %598 = icmp eq i32 %597, 2
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %39, align 1
  store i32 %577, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  store i64 %578, i64* %RAX.i912, align 8
  %600 = add i64 %514, -8
  %601 = add i64 %544, 28
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i32*
  %603 = load i32, i32* %602, align 4
  %604 = sext i32 %603 to i64
  store i64 %604, i64* %RCX.i1103, align 8
  %605 = shl nsw i64 %604, 2
  %606 = add nsw i64 %605, 11185584
  %607 = add i64 %544, 35
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i32*
  store i32 %577, i32* %608, align 4
  %609 = load i64, i64* %RBP.i, align 8
  %610 = add i64 %609, -8
  %611 = load i64, i64* %3, align 8
  %612 = add i64 %611, 3
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %610 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = add i32 %614, 20
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RAX.i912, align 8
  %617 = icmp ugt i32 %614, -21
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %14, align 1
  %619 = and i32 %615, 255
  %620 = tail call i32 @llvm.ctpop.i32(i32 %619)
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  %623 = xor i8 %622, 1
  store i8 %623, i8* %21, align 1
  %624 = xor i32 %614, 16
  %625 = xor i32 %624, %615
  %626 = lshr i32 %625, 4
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  store i8 %628, i8* %27, align 1
  %629 = icmp eq i32 %615, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %30, align 1
  %631 = lshr i32 %615, 31
  %632 = trunc i32 %631 to i8
  store i8 %632, i8* %33, align 1
  %633 = lshr i32 %614, 31
  %634 = xor i32 %631, %633
  %635 = add nuw nsw i32 %634, %631
  %636 = icmp eq i32 %635, 2
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %39, align 1
  %638 = sext i32 %615 to i64
  store i64 %638, i64* %RCX.i1103, align 8
  %639 = add nsw i64 %638, 12099168
  %640 = add i64 %611, 17
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i8*
  %642 = load i8, i8* %641, align 1
  %643 = zext i8 %642 to i64
  store i64 %643, i64* %RAX.i912, align 8
  %644 = zext i8 %642 to i32
  store i8 0, i8* %14, align 1
  %645 = tail call i32 @llvm.ctpop.i32(i32 %644)
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  %648 = xor i8 %647, 1
  store i8 %648, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %649 = icmp eq i8 %642, 0
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v120 = select i1 %649, i64 26, i64 143
  %651 = add i64 %611, %.v120
  store i64 %651, i64* %3, align 8
  br i1 %649, label %block_41174a, label %block_.L_4117bf

block_41174a:                                     ; preds = %block_.L_41170d
  %652 = add i64 %651, 3
  store i64 %652, i64* %3, align 8
  %653 = load i32, i32* %613, align 4
  %654 = add i32 %653, 20
  %655 = zext i32 %654 to i64
  store i64 %655, i64* %RAX.i912, align 8
  %656 = icmp ugt i32 %653, -21
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %14, align 1
  %658 = and i32 %654, 255
  %659 = tail call i32 @llvm.ctpop.i32(i32 %658)
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = xor i8 %661, 1
  store i8 %662, i8* %21, align 1
  %663 = xor i32 %653, 16
  %664 = xor i32 %663, %654
  %665 = lshr i32 %664, 4
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  store i8 %667, i8* %27, align 1
  %668 = icmp eq i32 %654, 0
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %30, align 1
  %670 = lshr i32 %654, 31
  %671 = trunc i32 %670 to i8
  store i8 %671, i8* %33, align 1
  %672 = lshr i32 %653, 31
  %673 = xor i32 %670, %672
  %674 = add nuw nsw i32 %673, %670
  %675 = icmp eq i32 %674, 2
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %39, align 1
  %677 = sext i32 %654 to i64
  store i64 %677, i64* %RCX.i1103, align 8
  %678 = shl nsw i64 %677, 2
  %679 = add nsw i64 %678, 11185584
  %680 = add i64 %651, 16
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i32*
  %682 = load i32, i32* %681, align 4
  %683 = zext i32 %682 to i64
  store i64 %683, i64* %RAX.i912, align 8
  %684 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %685 = sub i32 %682, %684
  %686 = icmp ult i32 %682, %684
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %14, align 1
  %688 = and i32 %685, 255
  %689 = tail call i32 @llvm.ctpop.i32(i32 %688)
  %690 = trunc i32 %689 to i8
  %691 = and i8 %690, 1
  %692 = xor i8 %691, 1
  store i8 %692, i8* %21, align 1
  %693 = xor i32 %684, %682
  %694 = xor i32 %693, %685
  %695 = lshr i32 %694, 4
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  store i8 %697, i8* %27, align 1
  %698 = icmp eq i32 %685, 0
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %30, align 1
  %700 = lshr i32 %685, 31
  %701 = trunc i32 %700 to i8
  store i8 %701, i8* %33, align 1
  %702 = lshr i32 %682, 31
  %703 = lshr i32 %684, 31
  %704 = xor i32 %703, %702
  %705 = xor i32 %700, %702
  %706 = add nuw nsw i32 %705, %704
  %707 = icmp eq i32 %706, 2
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %39, align 1
  %.v157 = select i1 %698, i64 117, i64 29
  %709 = add i64 %651, %.v157
  store i64 %709, i64* %3, align 8
  br i1 %698, label %block_.L_4117bf, label %block_411767

block_411767:                                     ; preds = %block_41174a
  %710 = add i64 %609, -24
  %711 = add i64 %709, 5
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i64*
  %713 = load i64, i64* %712, align 8
  store i8 0, i8* %14, align 1
  %714 = trunc i64 %713 to i32
  %715 = and i32 %714, 255
  %716 = tail call i32 @llvm.ctpop.i32(i32 %715)
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  %719 = xor i8 %718, 1
  store i8 %719, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %720 = icmp eq i64 %713, 0
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %30, align 1
  %722 = lshr i64 %713, 63
  %723 = trunc i64 %722 to i8
  store i8 %723, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v158 = select i1 %720, i64 28, i64 11
  %724 = add i64 %709, %.v158
  store i64 %724, i64* %3, align 8
  br i1 %720, label %block_.L_411783, label %block_411772

block_411772:                                     ; preds = %block_411767
  %725 = add i64 %724, 3
  store i64 %725, i64* %3, align 8
  %726 = load i32, i32* %613, align 4
  %727 = add i32 %726, 20
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RAX.i912, align 8
  %729 = icmp ugt i32 %726, -21
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %14, align 1
  %731 = and i32 %727, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %21, align 1
  %736 = xor i32 %726, 16
  %737 = xor i32 %736, %727
  %738 = lshr i32 %737, 4
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  store i8 %740, i8* %27, align 1
  %741 = icmp eq i32 %727, 0
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %30, align 1
  %743 = lshr i32 %727, 31
  %744 = trunc i32 %743 to i8
  store i8 %744, i8* %33, align 1
  %745 = lshr i32 %726, 31
  %746 = xor i32 %743, %745
  %747 = add nuw nsw i32 %746, %743
  %748 = icmp eq i32 %747, 2
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %39, align 1
  %750 = add i64 %724, 10
  store i64 %750, i64* %3, align 8
  %751 = load i64, i64* %712, align 8
  store i64 %751, i64* %RCX.i1103, align 8
  %752 = add i64 %609, -32
  %753 = add i64 %724, 14
  store i64 %753, i64* %3, align 8
  %754 = inttoptr i64 %752 to i32*
  %755 = load i32, i32* %754, align 4
  %756 = sext i32 %755 to i64
  store i64 %756, i64* %RDX.i1096, align 8
  %757 = shl nsw i64 %756, 2
  %758 = add i64 %757, %751
  %759 = add i64 %724, 17
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i32*
  store i32 %727, i32* %760, align 4
  %.pre84 = load i64, i64* %RBP.i, align 8
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_411783

block_.L_411783:                                  ; preds = %block_411772, %block_411767
  %761 = phi i64 [ %.pre85, %block_411772 ], [ %724, %block_411767 ]
  %762 = phi i64 [ %.pre84, %block_411772 ], [ %609, %block_411767 ]
  %763 = add i64 %762, -32
  %764 = add i64 %761, 3
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %763 to i32*
  %766 = load i32, i32* %765, align 4
  %767 = add i32 %766, 1
  %768 = zext i32 %767 to i64
  store i64 %768, i64* %RAX.i912, align 8
  %769 = icmp eq i32 %766, -1
  %770 = icmp eq i32 %767, 0
  %771 = or i1 %769, %770
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %14, align 1
  %773 = and i32 %767, 255
  %774 = tail call i32 @llvm.ctpop.i32(i32 %773)
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  %777 = xor i8 %776, 1
  store i8 %777, i8* %21, align 1
  %778 = xor i32 %767, %766
  %779 = lshr i32 %778, 4
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  store i8 %781, i8* %27, align 1
  %782 = zext i1 %770 to i8
  store i8 %782, i8* %30, align 1
  %783 = lshr i32 %767, 31
  %784 = trunc i32 %783 to i8
  store i8 %784, i8* %33, align 1
  %785 = lshr i32 %766, 31
  %786 = xor i32 %783, %785
  %787 = add nuw nsw i32 %786, %783
  %788 = icmp eq i32 %787, 2
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %39, align 1
  %790 = add i64 %761, 9
  store i64 %790, i64* %3, align 8
  store i32 %767, i32* %765, align 4
  %791 = load i64, i64* %RBP.i, align 8
  %792 = add i64 %791, -32
  %793 = load i64, i64* %3, align 8
  %794 = add i64 %793, 3
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %792 to i32*
  %796 = load i32, i32* %795, align 4
  %797 = zext i32 %796 to i64
  store i64 %797, i64* %RAX.i912, align 8
  %798 = add i64 %791, -16
  %799 = add i64 %793, 6
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %798 to i32*
  %801 = load i32, i32* %800, align 4
  %802 = sub i32 %796, %801
  %803 = icmp ult i32 %796, %801
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %14, align 1
  %805 = and i32 %802, 255
  %806 = tail call i32 @llvm.ctpop.i32(i32 %805)
  %807 = trunc i32 %806 to i8
  %808 = and i8 %807, 1
  %809 = xor i8 %808, 1
  store i8 %809, i8* %21, align 1
  %810 = xor i32 %801, %796
  %811 = xor i32 %810, %802
  %812 = lshr i32 %811, 4
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  store i8 %814, i8* %27, align 1
  %815 = icmp eq i32 %802, 0
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %30, align 1
  %817 = lshr i32 %802, 31
  %818 = trunc i32 %817 to i8
  store i8 %818, i8* %33, align 1
  %819 = lshr i32 %796, 31
  %820 = lshr i32 %801, 31
  %821 = xor i32 %820, %819
  %822 = xor i32 %817, %819
  %823 = add nuw nsw i32 %822, %821
  %824 = icmp eq i32 %823, 2
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %39, align 1
  %826 = icmp ne i8 %818, 0
  %827 = xor i1 %826, %824
  %.v159 = select i1 %827, i64 23, i64 12
  %828 = add i64 %793, %.v159
  store i64 %828, i64* %3, align 8
  br i1 %827, label %block_.L_4117a3, label %block_411798

block_411798:                                     ; preds = %block_.L_411783
  %829 = add i64 %828, 3
  store i64 %829, i64* %3, align 8
  %830 = load i32, i32* %795, align 4
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RAX.i912, align 8
  %832 = add i64 %791, -4
  %833 = add i64 %828, 6
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to i32*
  store i32 %830, i32* %834, align 4
  %835 = load i64, i64* %3, align 8
  %836 = add i64 %835, 1533
  store i64 %836, i64* %3, align 8
  br label %block_.L_411d9b

block_.L_4117a3:                                  ; preds = %block_.L_411783
  %837 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %838 = zext i32 %837 to i64
  store i64 %838, i64* %RAX.i912, align 8
  %839 = add i64 %791, -8
  %840 = add i64 %828, 10
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i32*
  %842 = load i32, i32* %841, align 4
  %843 = add i32 %842, 20
  %844 = zext i32 %843 to i64
  store i64 %844, i64* %RCX.i1103, align 8
  %845 = icmp ugt i32 %842, -21
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %14, align 1
  %847 = and i32 %843, 255
  %848 = tail call i32 @llvm.ctpop.i32(i32 %847)
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  %851 = xor i8 %850, 1
  store i8 %851, i8* %21, align 1
  %852 = xor i32 %842, 16
  %853 = xor i32 %852, %843
  %854 = lshr i32 %853, 4
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  store i8 %856, i8* %27, align 1
  %857 = icmp eq i32 %843, 0
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %30, align 1
  %859 = lshr i32 %843, 31
  %860 = trunc i32 %859 to i8
  store i8 %860, i8* %33, align 1
  %861 = lshr i32 %842, 31
  %862 = xor i32 %859, %861
  %863 = add nuw nsw i32 %862, %859
  %864 = icmp eq i32 %863, 2
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %39, align 1
  %866 = sext i32 %843 to i64
  store i64 %866, i64* %RDX.i1096, align 8
  %867 = shl nsw i64 %866, 2
  %868 = add nsw i64 %867, 11185584
  %869 = add i64 %828, 23
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i32*
  store i32 %837, i32* %870, align 4
  %871 = load i64, i64* %3, align 8
  %872 = add i64 %871, 277
  br label %block_.L_4118cf

block_.L_4117bf:                                  ; preds = %block_.L_41170d, %block_41174a
  %873 = phi i64 [ %709, %block_41174a ], [ %651, %block_.L_41170d ]
  %874 = add i64 %873, 3
  store i64 %874, i64* %3, align 8
  %875 = load i32, i32* %613, align 4
  %876 = add i32 %875, 20
  %877 = zext i32 %876 to i64
  store i64 %877, i64* %RAX.i912, align 8
  %878 = icmp ugt i32 %875, -21
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %14, align 1
  %880 = and i32 %876, 255
  %881 = tail call i32 @llvm.ctpop.i32(i32 %880)
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  %884 = xor i8 %883, 1
  store i8 %884, i8* %21, align 1
  %885 = xor i32 %875, 16
  %886 = xor i32 %885, %876
  %887 = lshr i32 %886, 4
  %888 = trunc i32 %887 to i8
  %889 = and i8 %888, 1
  store i8 %889, i8* %27, align 1
  %890 = icmp eq i32 %876, 0
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %30, align 1
  %892 = lshr i32 %876, 31
  %893 = trunc i32 %892 to i8
  store i8 %893, i8* %33, align 1
  %894 = lshr i32 %875, 31
  %895 = xor i32 %892, %894
  %896 = add nuw nsw i32 %895, %892
  %897 = icmp eq i32 %896, 2
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %39, align 1
  %899 = sext i32 %876 to i64
  store i64 %899, i64* %RCX.i1103, align 8
  %900 = add nsw i64 %899, 12099168
  %901 = add i64 %873, 17
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i8*
  %903 = load i8, i8* %902, align 1
  %904 = zext i8 %903 to i64
  store i64 %904, i64* %RAX.i912, align 8
  %905 = zext i8 %903 to i32
  %906 = add i64 %609, -12
  %907 = add i64 %873, 20
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to i32*
  %909 = load i32, i32* %908, align 4
  %910 = sub i32 %905, %909
  %911 = icmp ult i32 %905, %909
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %14, align 1
  %913 = and i32 %910, 255
  %914 = tail call i32 @llvm.ctpop.i32(i32 %913)
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  store i8 %917, i8* %21, align 1
  %918 = xor i32 %909, %905
  %919 = xor i32 %918, %910
  %920 = lshr i32 %919, 4
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  store i8 %922, i8* %27, align 1
  %923 = icmp eq i32 %910, 0
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %30, align 1
  %925 = lshr i32 %910, 31
  %926 = trunc i32 %925 to i8
  store i8 %926, i8* %33, align 1
  %927 = lshr i32 %909, 31
  %928 = add nuw nsw i32 %925, %927
  %929 = icmp eq i32 %928, 2
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %39, align 1
  %.v121 = select i1 %923, i64 26, i64 267
  %931 = add i64 %873, %.v121
  store i64 %931, i64* %3, align 8
  br i1 %923, label %block_4117d9, label %block_.L_4118ca

block_4117d9:                                     ; preds = %block_.L_4117bf
  %932 = add i64 %931, 3
  store i64 %932, i64* %3, align 8
  %933 = load i32, i32* %613, align 4
  %934 = add i32 %933, 20
  %935 = zext i32 %934 to i64
  store i64 %935, i64* %RAX.i912, align 8
  %936 = icmp ugt i32 %933, -21
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %14, align 1
  %938 = and i32 %934, 255
  %939 = tail call i32 @llvm.ctpop.i32(i32 %938)
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  %942 = xor i8 %941, 1
  store i8 %942, i8* %21, align 1
  %943 = xor i32 %933, 16
  %944 = xor i32 %943, %934
  %945 = lshr i32 %944, 4
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  store i8 %947, i8* %27, align 1
  %948 = icmp eq i32 %934, 0
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %30, align 1
  %950 = lshr i32 %934, 31
  %951 = trunc i32 %950 to i8
  store i8 %951, i8* %33, align 1
  %952 = lshr i32 %933, 31
  %953 = xor i32 %950, %952
  %954 = add nuw nsw i32 %953, %950
  %955 = icmp eq i32 %954, 2
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %39, align 1
  %957 = sext i32 %934 to i64
  store i64 %957, i64* %RCX.i1103, align 8
  %958 = shl nsw i64 %957, 2
  %959 = add nsw i64 %958, 11187184
  %960 = add i64 %931, 16
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = zext i32 %962 to i64
  store i64 %963, i64* %RAX.i912, align 8
  %964 = add i64 %609, -40
  %965 = add i64 %931, 19
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %964 to i32*
  store i32 %962, i32* %966, align 4
  %967 = load i64, i64* %RBP.i, align 8
  %968 = add i64 %967, -28
  %969 = load i64, i64* %3, align 8
  %970 = add i64 %969, 7
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %968 to i32*
  store i32 0, i32* %971, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_4117f3

block_.L_4117f3:                                  ; preds = %block_.L_4118b2, %block_4117d9
  %972 = phi i64 [ %1292, %block_.L_4118b2 ], [ %.pre86, %block_4117d9 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i912, align 8
  %973 = load i64, i64* %RBP.i, align 8
  %974 = add i64 %973, -28
  %975 = add i64 %972, 13
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = zext i32 %977 to i64
  store i64 %978, i64* %RCX.i1103, align 8
  %979 = add i64 %973, -40
  %980 = add i64 %972, 17
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i32*
  %982 = load i32, i32* %981, align 4
  %983 = sext i32 %982 to i64
  %984 = mul nsw i64 %983, 744
  store i64 %984, i64* %RDX.i1096, align 8
  %985 = lshr i64 %984, 63
  %986 = add i64 %984, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %986, i64* %RAX.i912, align 8
  %987 = icmp ult i64 %986, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %988 = icmp ult i64 %986, %984
  %989 = or i1 %987, %988
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %14, align 1
  %991 = trunc i64 %986 to i32
  %992 = and i32 %991, 248
  %993 = tail call i32 @llvm.ctpop.i32(i32 %992)
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  %996 = xor i8 %995, 1
  store i8 %996, i8* %21, align 1
  %997 = xor i64 %984, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %998 = xor i64 %997, %986
  %999 = lshr i64 %998, 4
  %1000 = trunc i64 %999 to i8
  %1001 = and i8 %1000, 1
  store i8 %1001, i8* %27, align 1
  %1002 = icmp eq i64 %986, 0
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %30, align 1
  %1004 = lshr i64 %986, 63
  %1005 = trunc i64 %1004 to i8
  store i8 %1005, i8* %33, align 1
  %1006 = xor i64 %1004, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1007 = xor i64 %1004, %985
  %1008 = add nuw nsw i64 %1006, %1007
  %1009 = icmp eq i64 %1008, 2
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %39, align 1
  %1011 = add i64 %984, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1012 = add i64 %972, 30
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i32*
  %1014 = load i32, i32* %1013, align 4
  %1015 = sub i32 %977, %1014
  %1016 = icmp ult i32 %977, %1014
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %14, align 1
  %1018 = and i32 %1015, 255
  %1019 = tail call i32 @llvm.ctpop.i32(i32 %1018)
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  %1022 = xor i8 %1021, 1
  store i8 %1022, i8* %21, align 1
  %1023 = xor i32 %1014, %977
  %1024 = xor i32 %1023, %1015
  %1025 = lshr i32 %1024, 4
  %1026 = trunc i32 %1025 to i8
  %1027 = and i8 %1026, 1
  store i8 %1027, i8* %27, align 1
  %1028 = icmp eq i32 %1015, 0
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %30, align 1
  %1030 = lshr i32 %1015, 31
  %1031 = trunc i32 %1030 to i8
  store i8 %1031, i8* %33, align 1
  %1032 = lshr i32 %977, 31
  %1033 = lshr i32 %1014, 31
  %1034 = xor i32 %1033, %1032
  %1035 = xor i32 %1030, %1032
  %1036 = add nuw nsw i32 %1035, %1034
  %1037 = icmp eq i32 %1036, 2
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %39, align 1
  %1039 = icmp ne i8 %1031, 0
  %1040 = xor i1 %1039, %1037
  %.v152 = select i1 %1040, i64 36, i64 210
  %1041 = add i64 %972, %.v152
  store i64 %1041, i64* %3, align 8
  br i1 %1040, label %block_411817, label %block_.L_4118c5

block_411817:                                     ; preds = %block_.L_4117f3
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i912, align 8
  %1042 = load i64, i64* %RBP.i, align 8
  %1043 = add i64 %1042, -40
  %1044 = add i64 %1041, 14
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i32*
  %1046 = load i32, i32* %1045, align 4
  %1047 = sext i32 %1046 to i64
  %1048 = mul nsw i64 %1047, 744
  store i64 %1048, i64* %RCX.i1103, align 8
  %1049 = lshr i64 %1048, 63
  %1050 = add i64 %1048, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1050, i64* %RAX.i912, align 8
  %1051 = icmp ult i64 %1050, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1052 = icmp ult i64 %1050, %1048
  %1053 = or i1 %1051, %1052
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %14, align 1
  %1055 = trunc i64 %1050 to i32
  %1056 = and i32 %1055, 248
  %1057 = tail call i32 @llvm.ctpop.i32(i32 %1056)
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  %1060 = xor i8 %1059, 1
  store i8 %1060, i8* %21, align 1
  %1061 = xor i64 %1048, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1062 = xor i64 %1061, %1050
  %1063 = lshr i64 %1062, 4
  %1064 = trunc i64 %1063 to i8
  %1065 = and i8 %1064, 1
  store i8 %1065, i8* %27, align 1
  %1066 = icmp eq i64 %1050, 0
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %30, align 1
  %1068 = lshr i64 %1050, 63
  %1069 = trunc i64 %1068 to i8
  store i8 %1069, i8* %33, align 1
  %1070 = xor i64 %1068, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1071 = xor i64 %1068, %1049
  %1072 = add nuw nsw i64 %1070, %1071
  %1073 = icmp eq i64 %1072, 2
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %39, align 1
  %1075 = add i64 %1042, -28
  %1076 = add i64 %1041, 28
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i32*
  %1078 = load i32, i32* %1077, align 4
  %1079 = sext i32 %1078 to i64
  store i64 %1079, i64* %RCX.i1103, align 8
  %1080 = shl nsw i64 %1079, 2
  %1081 = add i64 %1048, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 16)
  %1082 = add i64 %1081, %1080
  %1083 = add i64 %1041, 32
  store i64 %1083, i64* %3, align 8
  %1084 = inttoptr i64 %1082 to i32*
  %1085 = load i32, i32* %1084, align 4
  %1086 = zext i32 %1085 to i64
  store i64 %1086, i64* %RDX.i1096, align 8
  %1087 = add i64 %1042, -44
  %1088 = add i64 %1041, 35
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1087 to i32*
  store i32 %1085, i32* %1089, align 4
  %1090 = load i64, i64* %RBP.i, align 8
  %1091 = add i64 %1090, -44
  %1092 = load i64, i64* %3, align 8
  %1093 = add i64 %1092, 4
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1091 to i32*
  %1095 = load i32, i32* %1094, align 4
  %1096 = sext i32 %1095 to i64
  store i64 %1096, i64* %RAX.i912, align 8
  %1097 = add nsw i64 %1096, 12099168
  %1098 = add i64 %1092, 12
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i8*
  %1100 = load i8, i8* %1099, align 1
  %1101 = zext i8 %1100 to i64
  store i64 %1101, i64* %RDX.i1096, align 8
  %1102 = zext i8 %1100 to i32
  store i8 0, i8* %14, align 1
  %1103 = tail call i32 @llvm.ctpop.i32(i32 %1102)
  %1104 = trunc i32 %1103 to i8
  %1105 = and i8 %1104, 1
  %1106 = xor i8 %1105, 1
  store i8 %1106, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1107 = icmp eq i8 %1100, 0
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v153 = select i1 %1107, i64 21, i64 120
  %1109 = add i64 %1092, %.v153
  store i64 %1109, i64* %3, align 8
  br i1 %1107, label %block_41184f, label %block_.L_4118b2

block_41184f:                                     ; preds = %block_411817
  %1110 = add i64 %1109, 4
  store i64 %1110, i64* %3, align 8
  %1111 = load i32, i32* %1094, align 4
  %1112 = sext i32 %1111 to i64
  store i64 %1112, i64* %RAX.i912, align 8
  %1113 = shl nsw i64 %1112, 2
  %1114 = add nsw i64 %1113, 11185584
  %1115 = add i64 %1109, 11
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i32*
  %1117 = load i32, i32* %1116, align 4
  %1118 = zext i32 %1117 to i64
  store i64 %1118, i64* %RCX.i1103, align 8
  %1119 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1120 = sub i32 %1117, %1119
  %1121 = icmp ult i32 %1117, %1119
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %14, align 1
  %1123 = and i32 %1120, 255
  %1124 = tail call i32 @llvm.ctpop.i32(i32 %1123)
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  %1127 = xor i8 %1126, 1
  store i8 %1127, i8* %21, align 1
  %1128 = xor i32 %1119, %1117
  %1129 = xor i32 %1128, %1120
  %1130 = lshr i32 %1129, 4
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  store i8 %1132, i8* %27, align 1
  %1133 = icmp eq i32 %1120, 0
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %30, align 1
  %1135 = lshr i32 %1120, 31
  %1136 = trunc i32 %1135 to i8
  store i8 %1136, i8* %33, align 1
  %1137 = lshr i32 %1117, 31
  %1138 = lshr i32 %1119, 31
  %1139 = xor i32 %1138, %1137
  %1140 = xor i32 %1135, %1137
  %1141 = add nuw nsw i32 %1140, %1139
  %1142 = icmp eq i32 %1141, 2
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %39, align 1
  %.v154 = select i1 %1133, i64 99, i64 24
  %1144 = add i64 %1109, %.v154
  store i64 %1144, i64* %3, align 8
  br i1 %1133, label %block_.L_4118b2, label %block_411867

block_411867:                                     ; preds = %block_41184f
  %1145 = add i64 %1090, -24
  %1146 = add i64 %1144, 5
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i64*
  %1148 = load i64, i64* %1147, align 8
  store i8 0, i8* %14, align 1
  %1149 = trunc i64 %1148 to i32
  %1150 = and i32 %1149, 255
  %1151 = tail call i32 @llvm.ctpop.i32(i32 %1150)
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  %1154 = xor i8 %1153, 1
  store i8 %1154, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1155 = icmp eq i64 %1148, 0
  %1156 = zext i1 %1155 to i8
  store i8 %1156, i8* %30, align 1
  %1157 = lshr i64 %1148, 63
  %1158 = trunc i64 %1157 to i8
  store i8 %1158, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v155 = select i1 %1155, i64 25, i64 11
  %1159 = add i64 %1144, %.v155
  store i64 %1159, i64* %3, align 8
  br i1 %1155, label %block_.L_411880, label %block_411872

block_411872:                                     ; preds = %block_411867
  %1160 = add i64 %1159, 3
  store i64 %1160, i64* %3, align 8
  %1161 = load i32, i32* %1094, align 4
  %1162 = zext i32 %1161 to i64
  store i64 %1162, i64* %RAX.i912, align 8
  %1163 = add i64 %1159, 7
  store i64 %1163, i64* %3, align 8
  %1164 = load i64, i64* %1147, align 8
  store i64 %1164, i64* %RCX.i1103, align 8
  %1165 = add i64 %1090, -32
  %1166 = add i64 %1159, 11
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i32*
  %1168 = load i32, i32* %1167, align 4
  %1169 = sext i32 %1168 to i64
  store i64 %1169, i64* %RDX.i1096, align 8
  %1170 = shl nsw i64 %1169, 2
  %1171 = add i64 %1170, %1164
  %1172 = add i64 %1159, 14
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i32*
  store i32 %1161, i32* %1173, align 4
  %.pre87 = load i64, i64* %RBP.i, align 8
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_411880

block_.L_411880:                                  ; preds = %block_411872, %block_411867
  %1174 = phi i64 [ %.pre88, %block_411872 ], [ %1159, %block_411867 ]
  %1175 = phi i64 [ %.pre87, %block_411872 ], [ %1090, %block_411867 ]
  %1176 = add i64 %1175, -32
  %1177 = add i64 %1174, 3
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i32*
  %1179 = load i32, i32* %1178, align 4
  %1180 = add i32 %1179, 1
  %1181 = zext i32 %1180 to i64
  store i64 %1181, i64* %RAX.i912, align 8
  %1182 = icmp eq i32 %1179, -1
  %1183 = icmp eq i32 %1180, 0
  %1184 = or i1 %1182, %1183
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %14, align 1
  %1186 = and i32 %1180, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %21, align 1
  %1191 = xor i32 %1180, %1179
  %1192 = lshr i32 %1191, 4
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  store i8 %1194, i8* %27, align 1
  %1195 = zext i1 %1183 to i8
  store i8 %1195, i8* %30, align 1
  %1196 = lshr i32 %1180, 31
  %1197 = trunc i32 %1196 to i8
  store i8 %1197, i8* %33, align 1
  %1198 = lshr i32 %1179, 31
  %1199 = xor i32 %1196, %1198
  %1200 = add nuw nsw i32 %1199, %1196
  %1201 = icmp eq i32 %1200, 2
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %39, align 1
  %1203 = add i64 %1174, 9
  store i64 %1203, i64* %3, align 8
  store i32 %1180, i32* %1178, align 4
  %1204 = load i64, i64* %RBP.i, align 8
  %1205 = add i64 %1204, -32
  %1206 = load i64, i64* %3, align 8
  %1207 = add i64 %1206, 3
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1205 to i32*
  %1209 = load i32, i32* %1208, align 4
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RAX.i912, align 8
  %1211 = add i64 %1204, -16
  %1212 = add i64 %1206, 6
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = sub i32 %1209, %1214
  %1216 = icmp ult i32 %1209, %1214
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %14, align 1
  %1218 = and i32 %1215, 255
  %1219 = tail call i32 @llvm.ctpop.i32(i32 %1218)
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = xor i8 %1221, 1
  store i8 %1222, i8* %21, align 1
  %1223 = xor i32 %1214, %1209
  %1224 = xor i32 %1223, %1215
  %1225 = lshr i32 %1224, 4
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  store i8 %1227, i8* %27, align 1
  %1228 = icmp eq i32 %1215, 0
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %30, align 1
  %1230 = lshr i32 %1215, 31
  %1231 = trunc i32 %1230 to i8
  store i8 %1231, i8* %33, align 1
  %1232 = lshr i32 %1209, 31
  %1233 = lshr i32 %1214, 31
  %1234 = xor i32 %1233, %1232
  %1235 = xor i32 %1230, %1232
  %1236 = add nuw nsw i32 %1235, %1234
  %1237 = icmp eq i32 %1236, 2
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %39, align 1
  %1239 = icmp ne i8 %1231, 0
  %1240 = xor i1 %1239, %1237
  %.v156 = select i1 %1240, i64 23, i64 12
  %1241 = add i64 %1206, %.v156
  store i64 %1241, i64* %3, align 8
  br i1 %1240, label %block_.L_4118a0, label %block_411895

block_411895:                                     ; preds = %block_.L_411880
  %1242 = add i64 %1241, 3
  store i64 %1242, i64* %3, align 8
  %1243 = load i32, i32* %1208, align 4
  %1244 = zext i32 %1243 to i64
  store i64 %1244, i64* %RAX.i912, align 8
  %1245 = add i64 %1204, -4
  %1246 = add i64 %1241, 6
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i32*
  store i32 %1243, i32* %1247, align 4
  %1248 = load i64, i64* %3, align 8
  %1249 = add i64 %1248, 1280
  store i64 %1249, i64* %3, align 8
  br label %block_.L_411d9b

block_.L_4118a0:                                  ; preds = %block_.L_411880
  %1250 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1251 = zext i32 %1250 to i64
  store i64 %1251, i64* %RAX.i912, align 8
  %1252 = add i64 %1204, -44
  %1253 = add i64 %1241, 11
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1252 to i32*
  %1255 = load i32, i32* %1254, align 4
  %1256 = sext i32 %1255 to i64
  store i64 %1256, i64* %RCX.i1103, align 8
  %1257 = shl nsw i64 %1256, 2
  %1258 = add nsw i64 %1257, 11185584
  %1259 = add i64 %1241, 18
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i32*
  store i32 %1250, i32* %1260, align 4
  %.pre89 = load i64, i64* %3, align 8
  %.pre90 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4118b2

block_.L_4118b2:                                  ; preds = %block_411817, %block_.L_4118a0, %block_41184f
  %1261 = phi i64 [ %.pre90, %block_.L_4118a0 ], [ %1090, %block_41184f ], [ %1090, %block_411817 ]
  %1262 = phi i64 [ %.pre89, %block_.L_4118a0 ], [ %1144, %block_41184f ], [ %1109, %block_411817 ]
  %1263 = add i64 %1261, -28
  %1264 = add i64 %1262, 8
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = add i32 %1266, 1
  %1268 = zext i32 %1267 to i64
  store i64 %1268, i64* %RAX.i912, align 8
  %1269 = icmp eq i32 %1266, -1
  %1270 = icmp eq i32 %1267, 0
  %1271 = or i1 %1269, %1270
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %14, align 1
  %1273 = and i32 %1267, 255
  %1274 = tail call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  store i8 %1277, i8* %21, align 1
  %1278 = xor i32 %1267, %1266
  %1279 = lshr i32 %1278, 4
  %1280 = trunc i32 %1279 to i8
  %1281 = and i8 %1280, 1
  store i8 %1281, i8* %27, align 1
  %1282 = zext i1 %1270 to i8
  store i8 %1282, i8* %30, align 1
  %1283 = lshr i32 %1267, 31
  %1284 = trunc i32 %1283 to i8
  store i8 %1284, i8* %33, align 1
  %1285 = lshr i32 %1266, 31
  %1286 = xor i32 %1283, %1285
  %1287 = add nuw nsw i32 %1286, %1283
  %1288 = icmp eq i32 %1287, 2
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %39, align 1
  %1290 = add i64 %1262, 14
  store i64 %1290, i64* %3, align 8
  store i32 %1267, i32* %1265, align 4
  %1291 = load i64, i64* %3, align 8
  %1292 = add i64 %1291, -205
  store i64 %1292, i64* %3, align 8
  br label %block_.L_4117f3

block_.L_4118c5:                                  ; preds = %block_.L_4117f3
  %1293 = add i64 %1041, 5
  store i64 %1293, i64* %3, align 8
  br label %block_.L_4118ca

block_.L_4118ca:                                  ; preds = %block_.L_4117bf, %block_.L_4118c5
  %1294 = phi i64 [ %1293, %block_.L_4118c5 ], [ %931, %block_.L_4117bf ]
  %1295 = add i64 %1294, 5
  store i64 %1295, i64* %3, align 8
  br label %block_.L_4118cf

block_.L_4118cf:                                  ; preds = %block_.L_4118ca, %block_.L_4117a3
  %storemerge = phi i64 [ %872, %block_.L_4117a3 ], [ %1295, %block_.L_4118ca ]
  %1296 = load i64, i64* %RBP.i, align 8
  %1297 = add i64 %1296, -8
  %1298 = add i64 %storemerge, 3
  store i64 %1298, i64* %3, align 8
  %1299 = inttoptr i64 %1297 to i32*
  %1300 = load i32, i32* %1299, align 4
  %1301 = add i32 %1300, -1
  %1302 = zext i32 %1301 to i64
  store i64 %1302, i64* %RAX.i912, align 8
  %1303 = icmp eq i32 %1300, 0
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %14, align 1
  %1305 = and i32 %1301, 255
  %1306 = tail call i32 @llvm.ctpop.i32(i32 %1305)
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  %1309 = xor i8 %1308, 1
  store i8 %1309, i8* %21, align 1
  %1310 = xor i32 %1301, %1300
  %1311 = lshr i32 %1310, 4
  %1312 = trunc i32 %1311 to i8
  %1313 = and i8 %1312, 1
  store i8 %1313, i8* %27, align 1
  %1314 = icmp eq i32 %1301, 0
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %30, align 1
  %1316 = lshr i32 %1301, 31
  %1317 = trunc i32 %1316 to i8
  store i8 %1317, i8* %33, align 1
  %1318 = lshr i32 %1300, 31
  %1319 = xor i32 %1316, %1318
  %1320 = add nuw nsw i32 %1319, %1318
  %1321 = icmp eq i32 %1320, 2
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %39, align 1
  %1323 = sext i32 %1301 to i64
  store i64 %1323, i64* %RCX.i1103, align 8
  %1324 = add nsw i64 %1323, 12099168
  %1325 = add i64 %storemerge, 17
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i8*
  %1327 = load i8, i8* %1326, align 1
  %1328 = zext i8 %1327 to i64
  store i64 %1328, i64* %RAX.i912, align 8
  %1329 = zext i8 %1327 to i32
  store i8 0, i8* %14, align 1
  %1330 = tail call i32 @llvm.ctpop.i32(i32 %1329)
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  %1333 = xor i8 %1332, 1
  store i8 %1333, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1334 = icmp eq i8 %1327, 0
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v122 = select i1 %1334, i64 26, i64 143
  %1336 = add i64 %storemerge, %.v122
  store i64 %1336, i64* %3, align 8
  br i1 %1334, label %block_4118e9, label %block_.L_41195e

block_4118e9:                                     ; preds = %block_.L_4118cf
  %1337 = add i64 %1336, 3
  store i64 %1337, i64* %3, align 8
  %1338 = load i32, i32* %1299, align 4
  %1339 = add i32 %1338, -1
  %1340 = zext i32 %1339 to i64
  store i64 %1340, i64* %RAX.i912, align 8
  %1341 = icmp eq i32 %1338, 0
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %14, align 1
  %1343 = and i32 %1339, 255
  %1344 = tail call i32 @llvm.ctpop.i32(i32 %1343)
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  store i8 %1347, i8* %21, align 1
  %1348 = xor i32 %1339, %1338
  %1349 = lshr i32 %1348, 4
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  store i8 %1351, i8* %27, align 1
  %1352 = icmp eq i32 %1339, 0
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %30, align 1
  %1354 = lshr i32 %1339, 31
  %1355 = trunc i32 %1354 to i8
  store i8 %1355, i8* %33, align 1
  %1356 = lshr i32 %1338, 31
  %1357 = xor i32 %1354, %1356
  %1358 = add nuw nsw i32 %1357, %1356
  %1359 = icmp eq i32 %1358, 2
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %39, align 1
  %1361 = sext i32 %1339 to i64
  store i64 %1361, i64* %RCX.i1103, align 8
  %1362 = shl nsw i64 %1361, 2
  %1363 = add nsw i64 %1362, 11185584
  %1364 = add i64 %1336, 16
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1363 to i32*
  %1366 = load i32, i32* %1365, align 4
  %1367 = zext i32 %1366 to i64
  store i64 %1367, i64* %RAX.i912, align 8
  %1368 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1369 = sub i32 %1366, %1368
  %1370 = icmp ult i32 %1366, %1368
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %14, align 1
  %1372 = and i32 %1369, 255
  %1373 = tail call i32 @llvm.ctpop.i32(i32 %1372)
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  %1376 = xor i8 %1375, 1
  store i8 %1376, i8* %21, align 1
  %1377 = xor i32 %1368, %1366
  %1378 = xor i32 %1377, %1369
  %1379 = lshr i32 %1378, 4
  %1380 = trunc i32 %1379 to i8
  %1381 = and i8 %1380, 1
  store i8 %1381, i8* %27, align 1
  %1382 = icmp eq i32 %1369, 0
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %30, align 1
  %1384 = lshr i32 %1369, 31
  %1385 = trunc i32 %1384 to i8
  store i8 %1385, i8* %33, align 1
  %1386 = lshr i32 %1366, 31
  %1387 = lshr i32 %1368, 31
  %1388 = xor i32 %1387, %1386
  %1389 = xor i32 %1384, %1386
  %1390 = add nuw nsw i32 %1389, %1388
  %1391 = icmp eq i32 %1390, 2
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %39, align 1
  %.v149 = select i1 %1382, i64 117, i64 29
  %1393 = add i64 %1336, %.v149
  store i64 %1393, i64* %3, align 8
  br i1 %1382, label %block_.L_41195e, label %block_411906

block_411906:                                     ; preds = %block_4118e9
  %1394 = add i64 %1296, -24
  %1395 = add i64 %1393, 5
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i64*
  %1397 = load i64, i64* %1396, align 8
  store i8 0, i8* %14, align 1
  %1398 = trunc i64 %1397 to i32
  %1399 = and i32 %1398, 255
  %1400 = tail call i32 @llvm.ctpop.i32(i32 %1399)
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = xor i8 %1402, 1
  store i8 %1403, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1404 = icmp eq i64 %1397, 0
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %30, align 1
  %1406 = lshr i64 %1397, 63
  %1407 = trunc i64 %1406 to i8
  store i8 %1407, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v150 = select i1 %1404, i64 28, i64 11
  %1408 = add i64 %1393, %.v150
  store i64 %1408, i64* %3, align 8
  br i1 %1404, label %block_.L_411922, label %block_411911

block_411911:                                     ; preds = %block_411906
  %1409 = add i64 %1408, 3
  store i64 %1409, i64* %3, align 8
  %1410 = load i32, i32* %1299, align 4
  %1411 = add i32 %1410, -1
  %1412 = zext i32 %1411 to i64
  store i64 %1412, i64* %RAX.i912, align 8
  %1413 = icmp eq i32 %1410, 0
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %14, align 1
  %1415 = and i32 %1411, 255
  %1416 = tail call i32 @llvm.ctpop.i32(i32 %1415)
  %1417 = trunc i32 %1416 to i8
  %1418 = and i8 %1417, 1
  %1419 = xor i8 %1418, 1
  store i8 %1419, i8* %21, align 1
  %1420 = xor i32 %1411, %1410
  %1421 = lshr i32 %1420, 4
  %1422 = trunc i32 %1421 to i8
  %1423 = and i8 %1422, 1
  store i8 %1423, i8* %27, align 1
  %1424 = icmp eq i32 %1411, 0
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %30, align 1
  %1426 = lshr i32 %1411, 31
  %1427 = trunc i32 %1426 to i8
  store i8 %1427, i8* %33, align 1
  %1428 = lshr i32 %1410, 31
  %1429 = xor i32 %1426, %1428
  %1430 = add nuw nsw i32 %1429, %1428
  %1431 = icmp eq i32 %1430, 2
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %39, align 1
  %1433 = add i64 %1408, 10
  store i64 %1433, i64* %3, align 8
  %1434 = load i64, i64* %1396, align 8
  store i64 %1434, i64* %RCX.i1103, align 8
  %1435 = add i64 %1296, -32
  %1436 = add i64 %1408, 14
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i32*
  %1438 = load i32, i32* %1437, align 4
  %1439 = sext i32 %1438 to i64
  store i64 %1439, i64* %RDX.i1096, align 8
  %1440 = shl nsw i64 %1439, 2
  %1441 = add i64 %1440, %1434
  %1442 = add i64 %1408, 17
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i32*
  store i32 %1411, i32* %1443, align 4
  %.pre91 = load i64, i64* %RBP.i, align 8
  %.pre92 = load i64, i64* %3, align 8
  br label %block_.L_411922

block_.L_411922:                                  ; preds = %block_411911, %block_411906
  %1444 = phi i64 [ %.pre92, %block_411911 ], [ %1408, %block_411906 ]
  %1445 = phi i64 [ %.pre91, %block_411911 ], [ %1296, %block_411906 ]
  %1446 = add i64 %1445, -32
  %1447 = add i64 %1444, 3
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1446 to i32*
  %1449 = load i32, i32* %1448, align 4
  %1450 = add i32 %1449, 1
  %1451 = zext i32 %1450 to i64
  store i64 %1451, i64* %RAX.i912, align 8
  %1452 = icmp eq i32 %1449, -1
  %1453 = icmp eq i32 %1450, 0
  %1454 = or i1 %1452, %1453
  %1455 = zext i1 %1454 to i8
  store i8 %1455, i8* %14, align 1
  %1456 = and i32 %1450, 255
  %1457 = tail call i32 @llvm.ctpop.i32(i32 %1456)
  %1458 = trunc i32 %1457 to i8
  %1459 = and i8 %1458, 1
  %1460 = xor i8 %1459, 1
  store i8 %1460, i8* %21, align 1
  %1461 = xor i32 %1450, %1449
  %1462 = lshr i32 %1461, 4
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  store i8 %1464, i8* %27, align 1
  %1465 = zext i1 %1453 to i8
  store i8 %1465, i8* %30, align 1
  %1466 = lshr i32 %1450, 31
  %1467 = trunc i32 %1466 to i8
  store i8 %1467, i8* %33, align 1
  %1468 = lshr i32 %1449, 31
  %1469 = xor i32 %1466, %1468
  %1470 = add nuw nsw i32 %1469, %1466
  %1471 = icmp eq i32 %1470, 2
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %39, align 1
  %1473 = add i64 %1444, 9
  store i64 %1473, i64* %3, align 8
  store i32 %1450, i32* %1448, align 4
  %1474 = load i64, i64* %RBP.i, align 8
  %1475 = add i64 %1474, -32
  %1476 = load i64, i64* %3, align 8
  %1477 = add i64 %1476, 3
  store i64 %1477, i64* %3, align 8
  %1478 = inttoptr i64 %1475 to i32*
  %1479 = load i32, i32* %1478, align 4
  %1480 = zext i32 %1479 to i64
  store i64 %1480, i64* %RAX.i912, align 8
  %1481 = add i64 %1474, -16
  %1482 = add i64 %1476, 6
  store i64 %1482, i64* %3, align 8
  %1483 = inttoptr i64 %1481 to i32*
  %1484 = load i32, i32* %1483, align 4
  %1485 = sub i32 %1479, %1484
  %1486 = icmp ult i32 %1479, %1484
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %14, align 1
  %1488 = and i32 %1485, 255
  %1489 = tail call i32 @llvm.ctpop.i32(i32 %1488)
  %1490 = trunc i32 %1489 to i8
  %1491 = and i8 %1490, 1
  %1492 = xor i8 %1491, 1
  store i8 %1492, i8* %21, align 1
  %1493 = xor i32 %1484, %1479
  %1494 = xor i32 %1493, %1485
  %1495 = lshr i32 %1494, 4
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  store i8 %1497, i8* %27, align 1
  %1498 = icmp eq i32 %1485, 0
  %1499 = zext i1 %1498 to i8
  store i8 %1499, i8* %30, align 1
  %1500 = lshr i32 %1485, 31
  %1501 = trunc i32 %1500 to i8
  store i8 %1501, i8* %33, align 1
  %1502 = lshr i32 %1479, 31
  %1503 = lshr i32 %1484, 31
  %1504 = xor i32 %1503, %1502
  %1505 = xor i32 %1500, %1502
  %1506 = add nuw nsw i32 %1505, %1504
  %1507 = icmp eq i32 %1506, 2
  %1508 = zext i1 %1507 to i8
  store i8 %1508, i8* %39, align 1
  %1509 = icmp ne i8 %1501, 0
  %1510 = xor i1 %1509, %1507
  %.v151 = select i1 %1510, i64 23, i64 12
  %1511 = add i64 %1476, %.v151
  store i64 %1511, i64* %3, align 8
  br i1 %1510, label %block_.L_411942, label %block_411937

block_411937:                                     ; preds = %block_.L_411922
  %1512 = add i64 %1511, 3
  store i64 %1512, i64* %3, align 8
  %1513 = load i32, i32* %1478, align 4
  %1514 = zext i32 %1513 to i64
  store i64 %1514, i64* %RAX.i912, align 8
  %1515 = add i64 %1474, -4
  %1516 = add i64 %1511, 6
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1515 to i32*
  store i32 %1513, i32* %1517, align 4
  %1518 = load i64, i64* %3, align 8
  %1519 = add i64 %1518, 1118
  store i64 %1519, i64* %3, align 8
  br label %block_.L_411d9b

block_.L_411942:                                  ; preds = %block_.L_411922
  %1520 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1521 = zext i32 %1520 to i64
  store i64 %1521, i64* %RAX.i912, align 8
  %1522 = add i64 %1474, -8
  %1523 = add i64 %1511, 10
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i32*
  %1525 = load i32, i32* %1524, align 4
  %1526 = add i32 %1525, -1
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RCX.i1103, align 8
  %1528 = icmp eq i32 %1525, 0
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %14, align 1
  %1530 = and i32 %1526, 255
  %1531 = tail call i32 @llvm.ctpop.i32(i32 %1530)
  %1532 = trunc i32 %1531 to i8
  %1533 = and i8 %1532, 1
  %1534 = xor i8 %1533, 1
  store i8 %1534, i8* %21, align 1
  %1535 = xor i32 %1526, %1525
  %1536 = lshr i32 %1535, 4
  %1537 = trunc i32 %1536 to i8
  %1538 = and i8 %1537, 1
  store i8 %1538, i8* %27, align 1
  %1539 = icmp eq i32 %1526, 0
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %30, align 1
  %1541 = lshr i32 %1526, 31
  %1542 = trunc i32 %1541 to i8
  store i8 %1542, i8* %33, align 1
  %1543 = lshr i32 %1525, 31
  %1544 = xor i32 %1541, %1543
  %1545 = add nuw nsw i32 %1544, %1543
  %1546 = icmp eq i32 %1545, 2
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %39, align 1
  %1548 = sext i32 %1526 to i64
  store i64 %1548, i64* %RDX.i1096, align 8
  %1549 = shl nsw i64 %1548, 2
  %1550 = add nsw i64 %1549, 11185584
  %1551 = add i64 %1511, 23
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i32*
  store i32 %1520, i32* %1552, align 4
  %1553 = load i64, i64* %3, align 8
  %1554 = add i64 %1553, 277
  br label %block_.L_411a6e

block_.L_41195e:                                  ; preds = %block_.L_4118cf, %block_4118e9
  %1555 = phi i64 [ %1393, %block_4118e9 ], [ %1336, %block_.L_4118cf ]
  %1556 = add i64 %1555, 3
  store i64 %1556, i64* %3, align 8
  %1557 = load i32, i32* %1299, align 4
  %1558 = add i32 %1557, -1
  %1559 = zext i32 %1558 to i64
  store i64 %1559, i64* %RAX.i912, align 8
  %1560 = icmp eq i32 %1557, 0
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %14, align 1
  %1562 = and i32 %1558, 255
  %1563 = tail call i32 @llvm.ctpop.i32(i32 %1562)
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = xor i8 %1565, 1
  store i8 %1566, i8* %21, align 1
  %1567 = xor i32 %1558, %1557
  %1568 = lshr i32 %1567, 4
  %1569 = trunc i32 %1568 to i8
  %1570 = and i8 %1569, 1
  store i8 %1570, i8* %27, align 1
  %1571 = icmp eq i32 %1558, 0
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %30, align 1
  %1573 = lshr i32 %1558, 31
  %1574 = trunc i32 %1573 to i8
  store i8 %1574, i8* %33, align 1
  %1575 = lshr i32 %1557, 31
  %1576 = xor i32 %1573, %1575
  %1577 = add nuw nsw i32 %1576, %1575
  %1578 = icmp eq i32 %1577, 2
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %39, align 1
  %1580 = sext i32 %1558 to i64
  store i64 %1580, i64* %RCX.i1103, align 8
  %1581 = add nsw i64 %1580, 12099168
  %1582 = add i64 %1555, 17
  store i64 %1582, i64* %3, align 8
  %1583 = inttoptr i64 %1581 to i8*
  %1584 = load i8, i8* %1583, align 1
  %1585 = zext i8 %1584 to i64
  store i64 %1585, i64* %RAX.i912, align 8
  %1586 = zext i8 %1584 to i32
  %1587 = add i64 %1296, -12
  %1588 = add i64 %1555, 20
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1587 to i32*
  %1590 = load i32, i32* %1589, align 4
  %1591 = sub i32 %1586, %1590
  %1592 = icmp ult i32 %1586, %1590
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %14, align 1
  %1594 = and i32 %1591, 255
  %1595 = tail call i32 @llvm.ctpop.i32(i32 %1594)
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  %1598 = xor i8 %1597, 1
  store i8 %1598, i8* %21, align 1
  %1599 = xor i32 %1590, %1586
  %1600 = xor i32 %1599, %1591
  %1601 = lshr i32 %1600, 4
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  store i8 %1603, i8* %27, align 1
  %1604 = icmp eq i32 %1591, 0
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %30, align 1
  %1606 = lshr i32 %1591, 31
  %1607 = trunc i32 %1606 to i8
  store i8 %1607, i8* %33, align 1
  %1608 = lshr i32 %1590, 31
  %1609 = add nuw nsw i32 %1606, %1608
  %1610 = icmp eq i32 %1609, 2
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %39, align 1
  %.v123 = select i1 %1604, i64 26, i64 267
  %1612 = add i64 %1555, %.v123
  store i64 %1612, i64* %3, align 8
  br i1 %1604, label %block_411978, label %block_.L_411a69

block_411978:                                     ; preds = %block_.L_41195e
  %1613 = add i64 %1612, 3
  store i64 %1613, i64* %3, align 8
  %1614 = load i32, i32* %1299, align 4
  %1615 = add i32 %1614, -1
  %1616 = zext i32 %1615 to i64
  store i64 %1616, i64* %RAX.i912, align 8
  %1617 = icmp eq i32 %1614, 0
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %14, align 1
  %1619 = and i32 %1615, 255
  %1620 = tail call i32 @llvm.ctpop.i32(i32 %1619)
  %1621 = trunc i32 %1620 to i8
  %1622 = and i8 %1621, 1
  %1623 = xor i8 %1622, 1
  store i8 %1623, i8* %21, align 1
  %1624 = xor i32 %1615, %1614
  %1625 = lshr i32 %1624, 4
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  store i8 %1627, i8* %27, align 1
  %1628 = icmp eq i32 %1615, 0
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %30, align 1
  %1630 = lshr i32 %1615, 31
  %1631 = trunc i32 %1630 to i8
  store i8 %1631, i8* %33, align 1
  %1632 = lshr i32 %1614, 31
  %1633 = xor i32 %1630, %1632
  %1634 = add nuw nsw i32 %1633, %1632
  %1635 = icmp eq i32 %1634, 2
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %39, align 1
  %1637 = sext i32 %1615 to i64
  store i64 %1637, i64* %RCX.i1103, align 8
  %1638 = shl nsw i64 %1637, 2
  %1639 = add nsw i64 %1638, 11187184
  %1640 = add i64 %1612, 16
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1639 to i32*
  %1642 = load i32, i32* %1641, align 4
  %1643 = zext i32 %1642 to i64
  store i64 %1643, i64* %RAX.i912, align 8
  %1644 = add i64 %1296, -48
  %1645 = add i64 %1612, 19
  store i64 %1645, i64* %3, align 8
  %1646 = inttoptr i64 %1644 to i32*
  store i32 %1642, i32* %1646, align 4
  %1647 = load i64, i64* %RBP.i, align 8
  %1648 = add i64 %1647, -28
  %1649 = load i64, i64* %3, align 8
  %1650 = add i64 %1649, 7
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1648 to i32*
  store i32 0, i32* %1651, align 4
  %.pre93 = load i64, i64* %3, align 8
  br label %block_.L_411992

block_.L_411992:                                  ; preds = %block_.L_411a51, %block_411978
  %1652 = phi i64 [ %1972, %block_.L_411a51 ], [ %.pre93, %block_411978 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i912, align 8
  %1653 = load i64, i64* %RBP.i, align 8
  %1654 = add i64 %1653, -28
  %1655 = add i64 %1652, 13
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1654 to i32*
  %1657 = load i32, i32* %1656, align 4
  %1658 = zext i32 %1657 to i64
  store i64 %1658, i64* %RCX.i1103, align 8
  %1659 = add i64 %1653, -48
  %1660 = add i64 %1652, 17
  store i64 %1660, i64* %3, align 8
  %1661 = inttoptr i64 %1659 to i32*
  %1662 = load i32, i32* %1661, align 4
  %1663 = sext i32 %1662 to i64
  %1664 = mul nsw i64 %1663, 744
  store i64 %1664, i64* %RDX.i1096, align 8
  %1665 = lshr i64 %1664, 63
  %1666 = add i64 %1664, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1666, i64* %RAX.i912, align 8
  %1667 = icmp ult i64 %1666, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1668 = icmp ult i64 %1666, %1664
  %1669 = or i1 %1667, %1668
  %1670 = zext i1 %1669 to i8
  store i8 %1670, i8* %14, align 1
  %1671 = trunc i64 %1666 to i32
  %1672 = and i32 %1671, 248
  %1673 = tail call i32 @llvm.ctpop.i32(i32 %1672)
  %1674 = trunc i32 %1673 to i8
  %1675 = and i8 %1674, 1
  %1676 = xor i8 %1675, 1
  store i8 %1676, i8* %21, align 1
  %1677 = xor i64 %1664, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1678 = xor i64 %1677, %1666
  %1679 = lshr i64 %1678, 4
  %1680 = trunc i64 %1679 to i8
  %1681 = and i8 %1680, 1
  store i8 %1681, i8* %27, align 1
  %1682 = icmp eq i64 %1666, 0
  %1683 = zext i1 %1682 to i8
  store i8 %1683, i8* %30, align 1
  %1684 = lshr i64 %1666, 63
  %1685 = trunc i64 %1684 to i8
  store i8 %1685, i8* %33, align 1
  %1686 = xor i64 %1684, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1687 = xor i64 %1684, %1665
  %1688 = add nuw nsw i64 %1686, %1687
  %1689 = icmp eq i64 %1688, 2
  %1690 = zext i1 %1689 to i8
  store i8 %1690, i8* %39, align 1
  %1691 = add i64 %1664, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1692 = add i64 %1652, 30
  store i64 %1692, i64* %3, align 8
  %1693 = inttoptr i64 %1691 to i32*
  %1694 = load i32, i32* %1693, align 4
  %1695 = sub i32 %1657, %1694
  %1696 = icmp ult i32 %1657, %1694
  %1697 = zext i1 %1696 to i8
  store i8 %1697, i8* %14, align 1
  %1698 = and i32 %1695, 255
  %1699 = tail call i32 @llvm.ctpop.i32(i32 %1698)
  %1700 = trunc i32 %1699 to i8
  %1701 = and i8 %1700, 1
  %1702 = xor i8 %1701, 1
  store i8 %1702, i8* %21, align 1
  %1703 = xor i32 %1694, %1657
  %1704 = xor i32 %1703, %1695
  %1705 = lshr i32 %1704, 4
  %1706 = trunc i32 %1705 to i8
  %1707 = and i8 %1706, 1
  store i8 %1707, i8* %27, align 1
  %1708 = icmp eq i32 %1695, 0
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %30, align 1
  %1710 = lshr i32 %1695, 31
  %1711 = trunc i32 %1710 to i8
  store i8 %1711, i8* %33, align 1
  %1712 = lshr i32 %1657, 31
  %1713 = lshr i32 %1694, 31
  %1714 = xor i32 %1713, %1712
  %1715 = xor i32 %1710, %1712
  %1716 = add nuw nsw i32 %1715, %1714
  %1717 = icmp eq i32 %1716, 2
  %1718 = zext i1 %1717 to i8
  store i8 %1718, i8* %39, align 1
  %1719 = icmp ne i8 %1711, 0
  %1720 = xor i1 %1719, %1717
  %.v144 = select i1 %1720, i64 36, i64 210
  %1721 = add i64 %1652, %.v144
  store i64 %1721, i64* %3, align 8
  br i1 %1720, label %block_4119b6, label %block_.L_411a64

block_4119b6:                                     ; preds = %block_.L_411992
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i912, align 8
  %1722 = load i64, i64* %RBP.i, align 8
  %1723 = add i64 %1722, -48
  %1724 = add i64 %1721, 14
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1723 to i32*
  %1726 = load i32, i32* %1725, align 4
  %1727 = sext i32 %1726 to i64
  %1728 = mul nsw i64 %1727, 744
  store i64 %1728, i64* %RCX.i1103, align 8
  %1729 = lshr i64 %1728, 63
  %1730 = add i64 %1728, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1730, i64* %RAX.i912, align 8
  %1731 = icmp ult i64 %1730, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1732 = icmp ult i64 %1730, %1728
  %1733 = or i1 %1731, %1732
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %14, align 1
  %1735 = trunc i64 %1730 to i32
  %1736 = and i32 %1735, 248
  %1737 = tail call i32 @llvm.ctpop.i32(i32 %1736)
  %1738 = trunc i32 %1737 to i8
  %1739 = and i8 %1738, 1
  %1740 = xor i8 %1739, 1
  store i8 %1740, i8* %21, align 1
  %1741 = xor i64 %1728, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1742 = xor i64 %1741, %1730
  %1743 = lshr i64 %1742, 4
  %1744 = trunc i64 %1743 to i8
  %1745 = and i8 %1744, 1
  store i8 %1745, i8* %27, align 1
  %1746 = icmp eq i64 %1730, 0
  %1747 = zext i1 %1746 to i8
  store i8 %1747, i8* %30, align 1
  %1748 = lshr i64 %1730, 63
  %1749 = trunc i64 %1748 to i8
  store i8 %1749, i8* %33, align 1
  %1750 = xor i64 %1748, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1751 = xor i64 %1748, %1729
  %1752 = add nuw nsw i64 %1750, %1751
  %1753 = icmp eq i64 %1752, 2
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %39, align 1
  %1755 = add i64 %1722, -28
  %1756 = add i64 %1721, 28
  store i64 %1756, i64* %3, align 8
  %1757 = inttoptr i64 %1755 to i32*
  %1758 = load i32, i32* %1757, align 4
  %1759 = sext i32 %1758 to i64
  store i64 %1759, i64* %RCX.i1103, align 8
  %1760 = shl nsw i64 %1759, 2
  %1761 = add i64 %1728, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 16)
  %1762 = add i64 %1761, %1760
  %1763 = add i64 %1721, 32
  store i64 %1763, i64* %3, align 8
  %1764 = inttoptr i64 %1762 to i32*
  %1765 = load i32, i32* %1764, align 4
  %1766 = zext i32 %1765 to i64
  store i64 %1766, i64* %RDX.i1096, align 8
  %1767 = add i64 %1722, -52
  %1768 = add i64 %1721, 35
  store i64 %1768, i64* %3, align 8
  %1769 = inttoptr i64 %1767 to i32*
  store i32 %1765, i32* %1769, align 4
  %1770 = load i64, i64* %RBP.i, align 8
  %1771 = add i64 %1770, -52
  %1772 = load i64, i64* %3, align 8
  %1773 = add i64 %1772, 4
  store i64 %1773, i64* %3, align 8
  %1774 = inttoptr i64 %1771 to i32*
  %1775 = load i32, i32* %1774, align 4
  %1776 = sext i32 %1775 to i64
  store i64 %1776, i64* %RAX.i912, align 8
  %1777 = add nsw i64 %1776, 12099168
  %1778 = add i64 %1772, 12
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1777 to i8*
  %1780 = load i8, i8* %1779, align 1
  %1781 = zext i8 %1780 to i64
  store i64 %1781, i64* %RDX.i1096, align 8
  %1782 = zext i8 %1780 to i32
  store i8 0, i8* %14, align 1
  %1783 = tail call i32 @llvm.ctpop.i32(i32 %1782)
  %1784 = trunc i32 %1783 to i8
  %1785 = and i8 %1784, 1
  %1786 = xor i8 %1785, 1
  store i8 %1786, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1787 = icmp eq i8 %1780, 0
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v145 = select i1 %1787, i64 21, i64 120
  %1789 = add i64 %1772, %.v145
  store i64 %1789, i64* %3, align 8
  br i1 %1787, label %block_4119ee, label %block_.L_411a51

block_4119ee:                                     ; preds = %block_4119b6
  %1790 = add i64 %1789, 4
  store i64 %1790, i64* %3, align 8
  %1791 = load i32, i32* %1774, align 4
  %1792 = sext i32 %1791 to i64
  store i64 %1792, i64* %RAX.i912, align 8
  %1793 = shl nsw i64 %1792, 2
  %1794 = add nsw i64 %1793, 11185584
  %1795 = add i64 %1789, 11
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1794 to i32*
  %1797 = load i32, i32* %1796, align 4
  %1798 = zext i32 %1797 to i64
  store i64 %1798, i64* %RCX.i1103, align 8
  %1799 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1800 = sub i32 %1797, %1799
  %1801 = icmp ult i32 %1797, %1799
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %14, align 1
  %1803 = and i32 %1800, 255
  %1804 = tail call i32 @llvm.ctpop.i32(i32 %1803)
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  store i8 %1807, i8* %21, align 1
  %1808 = xor i32 %1799, %1797
  %1809 = xor i32 %1808, %1800
  %1810 = lshr i32 %1809, 4
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  store i8 %1812, i8* %27, align 1
  %1813 = icmp eq i32 %1800, 0
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %30, align 1
  %1815 = lshr i32 %1800, 31
  %1816 = trunc i32 %1815 to i8
  store i8 %1816, i8* %33, align 1
  %1817 = lshr i32 %1797, 31
  %1818 = lshr i32 %1799, 31
  %1819 = xor i32 %1818, %1817
  %1820 = xor i32 %1815, %1817
  %1821 = add nuw nsw i32 %1820, %1819
  %1822 = icmp eq i32 %1821, 2
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %39, align 1
  %.v146 = select i1 %1813, i64 99, i64 24
  %1824 = add i64 %1789, %.v146
  store i64 %1824, i64* %3, align 8
  br i1 %1813, label %block_.L_411a51, label %block_411a06

block_411a06:                                     ; preds = %block_4119ee
  %1825 = add i64 %1770, -24
  %1826 = add i64 %1824, 5
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1825 to i64*
  %1828 = load i64, i64* %1827, align 8
  store i8 0, i8* %14, align 1
  %1829 = trunc i64 %1828 to i32
  %1830 = and i32 %1829, 255
  %1831 = tail call i32 @llvm.ctpop.i32(i32 %1830)
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  %1834 = xor i8 %1833, 1
  store i8 %1834, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1835 = icmp eq i64 %1828, 0
  %1836 = zext i1 %1835 to i8
  store i8 %1836, i8* %30, align 1
  %1837 = lshr i64 %1828, 63
  %1838 = trunc i64 %1837 to i8
  store i8 %1838, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v147 = select i1 %1835, i64 25, i64 11
  %1839 = add i64 %1824, %.v147
  store i64 %1839, i64* %3, align 8
  br i1 %1835, label %block_.L_411a1f, label %block_411a11

block_411a11:                                     ; preds = %block_411a06
  %1840 = add i64 %1839, 3
  store i64 %1840, i64* %3, align 8
  %1841 = load i32, i32* %1774, align 4
  %1842 = zext i32 %1841 to i64
  store i64 %1842, i64* %RAX.i912, align 8
  %1843 = add i64 %1839, 7
  store i64 %1843, i64* %3, align 8
  %1844 = load i64, i64* %1827, align 8
  store i64 %1844, i64* %RCX.i1103, align 8
  %1845 = add i64 %1770, -32
  %1846 = add i64 %1839, 11
  store i64 %1846, i64* %3, align 8
  %1847 = inttoptr i64 %1845 to i32*
  %1848 = load i32, i32* %1847, align 4
  %1849 = sext i32 %1848 to i64
  store i64 %1849, i64* %RDX.i1096, align 8
  %1850 = shl nsw i64 %1849, 2
  %1851 = add i64 %1850, %1844
  %1852 = add i64 %1839, 14
  store i64 %1852, i64* %3, align 8
  %1853 = inttoptr i64 %1851 to i32*
  store i32 %1841, i32* %1853, align 4
  %.pre94 = load i64, i64* %RBP.i, align 8
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_411a1f

block_.L_411a1f:                                  ; preds = %block_411a11, %block_411a06
  %1854 = phi i64 [ %.pre95, %block_411a11 ], [ %1839, %block_411a06 ]
  %1855 = phi i64 [ %.pre94, %block_411a11 ], [ %1770, %block_411a06 ]
  %1856 = add i64 %1855, -32
  %1857 = add i64 %1854, 3
  store i64 %1857, i64* %3, align 8
  %1858 = inttoptr i64 %1856 to i32*
  %1859 = load i32, i32* %1858, align 4
  %1860 = add i32 %1859, 1
  %1861 = zext i32 %1860 to i64
  store i64 %1861, i64* %RAX.i912, align 8
  %1862 = icmp eq i32 %1859, -1
  %1863 = icmp eq i32 %1860, 0
  %1864 = or i1 %1862, %1863
  %1865 = zext i1 %1864 to i8
  store i8 %1865, i8* %14, align 1
  %1866 = and i32 %1860, 255
  %1867 = tail call i32 @llvm.ctpop.i32(i32 %1866)
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  %1870 = xor i8 %1869, 1
  store i8 %1870, i8* %21, align 1
  %1871 = xor i32 %1860, %1859
  %1872 = lshr i32 %1871, 4
  %1873 = trunc i32 %1872 to i8
  %1874 = and i8 %1873, 1
  store i8 %1874, i8* %27, align 1
  %1875 = zext i1 %1863 to i8
  store i8 %1875, i8* %30, align 1
  %1876 = lshr i32 %1860, 31
  %1877 = trunc i32 %1876 to i8
  store i8 %1877, i8* %33, align 1
  %1878 = lshr i32 %1859, 31
  %1879 = xor i32 %1876, %1878
  %1880 = add nuw nsw i32 %1879, %1876
  %1881 = icmp eq i32 %1880, 2
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %39, align 1
  %1883 = add i64 %1854, 9
  store i64 %1883, i64* %3, align 8
  store i32 %1860, i32* %1858, align 4
  %1884 = load i64, i64* %RBP.i, align 8
  %1885 = add i64 %1884, -32
  %1886 = load i64, i64* %3, align 8
  %1887 = add i64 %1886, 3
  store i64 %1887, i64* %3, align 8
  %1888 = inttoptr i64 %1885 to i32*
  %1889 = load i32, i32* %1888, align 4
  %1890 = zext i32 %1889 to i64
  store i64 %1890, i64* %RAX.i912, align 8
  %1891 = add i64 %1884, -16
  %1892 = add i64 %1886, 6
  store i64 %1892, i64* %3, align 8
  %1893 = inttoptr i64 %1891 to i32*
  %1894 = load i32, i32* %1893, align 4
  %1895 = sub i32 %1889, %1894
  %1896 = icmp ult i32 %1889, %1894
  %1897 = zext i1 %1896 to i8
  store i8 %1897, i8* %14, align 1
  %1898 = and i32 %1895, 255
  %1899 = tail call i32 @llvm.ctpop.i32(i32 %1898)
  %1900 = trunc i32 %1899 to i8
  %1901 = and i8 %1900, 1
  %1902 = xor i8 %1901, 1
  store i8 %1902, i8* %21, align 1
  %1903 = xor i32 %1894, %1889
  %1904 = xor i32 %1903, %1895
  %1905 = lshr i32 %1904, 4
  %1906 = trunc i32 %1905 to i8
  %1907 = and i8 %1906, 1
  store i8 %1907, i8* %27, align 1
  %1908 = icmp eq i32 %1895, 0
  %1909 = zext i1 %1908 to i8
  store i8 %1909, i8* %30, align 1
  %1910 = lshr i32 %1895, 31
  %1911 = trunc i32 %1910 to i8
  store i8 %1911, i8* %33, align 1
  %1912 = lshr i32 %1889, 31
  %1913 = lshr i32 %1894, 31
  %1914 = xor i32 %1913, %1912
  %1915 = xor i32 %1910, %1912
  %1916 = add nuw nsw i32 %1915, %1914
  %1917 = icmp eq i32 %1916, 2
  %1918 = zext i1 %1917 to i8
  store i8 %1918, i8* %39, align 1
  %1919 = icmp ne i8 %1911, 0
  %1920 = xor i1 %1919, %1917
  %.v148 = select i1 %1920, i64 23, i64 12
  %1921 = add i64 %1886, %.v148
  store i64 %1921, i64* %3, align 8
  br i1 %1920, label %block_.L_411a3f, label %block_411a34

block_411a34:                                     ; preds = %block_.L_411a1f
  %1922 = add i64 %1921, 3
  store i64 %1922, i64* %3, align 8
  %1923 = load i32, i32* %1888, align 4
  %1924 = zext i32 %1923 to i64
  store i64 %1924, i64* %RAX.i912, align 8
  %1925 = add i64 %1884, -4
  %1926 = add i64 %1921, 6
  store i64 %1926, i64* %3, align 8
  %1927 = inttoptr i64 %1925 to i32*
  store i32 %1923, i32* %1927, align 4
  %1928 = load i64, i64* %3, align 8
  %1929 = add i64 %1928, 865
  store i64 %1929, i64* %3, align 8
  br label %block_.L_411d9b

block_.L_411a3f:                                  ; preds = %block_.L_411a1f
  %1930 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1931 = zext i32 %1930 to i64
  store i64 %1931, i64* %RAX.i912, align 8
  %1932 = add i64 %1884, -52
  %1933 = add i64 %1921, 11
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to i32*
  %1935 = load i32, i32* %1934, align 4
  %1936 = sext i32 %1935 to i64
  store i64 %1936, i64* %RCX.i1103, align 8
  %1937 = shl nsw i64 %1936, 2
  %1938 = add nsw i64 %1937, 11185584
  %1939 = add i64 %1921, 18
  store i64 %1939, i64* %3, align 8
  %1940 = inttoptr i64 %1938 to i32*
  store i32 %1930, i32* %1940, align 4
  %.pre96 = load i64, i64* %3, align 8
  %.pre97 = load i64, i64* %RBP.i, align 8
  br label %block_.L_411a51

block_.L_411a51:                                  ; preds = %block_4119b6, %block_.L_411a3f, %block_4119ee
  %1941 = phi i64 [ %.pre97, %block_.L_411a3f ], [ %1770, %block_4119ee ], [ %1770, %block_4119b6 ]
  %1942 = phi i64 [ %.pre96, %block_.L_411a3f ], [ %1824, %block_4119ee ], [ %1789, %block_4119b6 ]
  %1943 = add i64 %1941, -28
  %1944 = add i64 %1942, 8
  store i64 %1944, i64* %3, align 8
  %1945 = inttoptr i64 %1943 to i32*
  %1946 = load i32, i32* %1945, align 4
  %1947 = add i32 %1946, 1
  %1948 = zext i32 %1947 to i64
  store i64 %1948, i64* %RAX.i912, align 8
  %1949 = icmp eq i32 %1946, -1
  %1950 = icmp eq i32 %1947, 0
  %1951 = or i1 %1949, %1950
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %14, align 1
  %1953 = and i32 %1947, 255
  %1954 = tail call i32 @llvm.ctpop.i32(i32 %1953)
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  %1957 = xor i8 %1956, 1
  store i8 %1957, i8* %21, align 1
  %1958 = xor i32 %1947, %1946
  %1959 = lshr i32 %1958, 4
  %1960 = trunc i32 %1959 to i8
  %1961 = and i8 %1960, 1
  store i8 %1961, i8* %27, align 1
  %1962 = zext i1 %1950 to i8
  store i8 %1962, i8* %30, align 1
  %1963 = lshr i32 %1947, 31
  %1964 = trunc i32 %1963 to i8
  store i8 %1964, i8* %33, align 1
  %1965 = lshr i32 %1946, 31
  %1966 = xor i32 %1963, %1965
  %1967 = add nuw nsw i32 %1966, %1963
  %1968 = icmp eq i32 %1967, 2
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %39, align 1
  %1970 = add i64 %1942, 14
  store i64 %1970, i64* %3, align 8
  store i32 %1947, i32* %1945, align 4
  %1971 = load i64, i64* %3, align 8
  %1972 = add i64 %1971, -205
  store i64 %1972, i64* %3, align 8
  br label %block_.L_411992

block_.L_411a64:                                  ; preds = %block_.L_411992
  %1973 = add i64 %1721, 5
  store i64 %1973, i64* %3, align 8
  br label %block_.L_411a69

block_.L_411a69:                                  ; preds = %block_.L_41195e, %block_.L_411a64
  %1974 = phi i64 [ %1973, %block_.L_411a64 ], [ %1612, %block_.L_41195e ]
  %1975 = add i64 %1974, 5
  store i64 %1975, i64* %3, align 8
  br label %block_.L_411a6e

block_.L_411a6e:                                  ; preds = %block_.L_411a69, %block_.L_411942
  %storemerge46 = phi i64 [ %1554, %block_.L_411942 ], [ %1975, %block_.L_411a69 ]
  %1976 = load i64, i64* %RBP.i, align 8
  %1977 = add i64 %1976, -8
  %1978 = add i64 %storemerge46, 3
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1977 to i32*
  %1980 = load i32, i32* %1979, align 4
  %1981 = add i32 %1980, -20
  %1982 = zext i32 %1981 to i64
  store i64 %1982, i64* %RAX.i912, align 8
  %1983 = icmp ult i32 %1980, 20
  %1984 = zext i1 %1983 to i8
  store i8 %1984, i8* %14, align 1
  %1985 = and i32 %1981, 255
  %1986 = tail call i32 @llvm.ctpop.i32(i32 %1985)
  %1987 = trunc i32 %1986 to i8
  %1988 = and i8 %1987, 1
  %1989 = xor i8 %1988, 1
  store i8 %1989, i8* %21, align 1
  %1990 = xor i32 %1980, 16
  %1991 = xor i32 %1990, %1981
  %1992 = lshr i32 %1991, 4
  %1993 = trunc i32 %1992 to i8
  %1994 = and i8 %1993, 1
  store i8 %1994, i8* %27, align 1
  %1995 = icmp eq i32 %1981, 0
  %1996 = zext i1 %1995 to i8
  store i8 %1996, i8* %30, align 1
  %1997 = lshr i32 %1981, 31
  %1998 = trunc i32 %1997 to i8
  store i8 %1998, i8* %33, align 1
  %1999 = lshr i32 %1980, 31
  %2000 = xor i32 %1997, %1999
  %2001 = add nuw nsw i32 %2000, %1999
  %2002 = icmp eq i32 %2001, 2
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %39, align 1
  %2004 = sext i32 %1981 to i64
  store i64 %2004, i64* %RCX.i1103, align 8
  %2005 = add nsw i64 %2004, 12099168
  %2006 = add i64 %storemerge46, 17
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i8*
  %2008 = load i8, i8* %2007, align 1
  %2009 = zext i8 %2008 to i64
  store i64 %2009, i64* %RAX.i912, align 8
  %2010 = zext i8 %2008 to i32
  store i8 0, i8* %14, align 1
  %2011 = tail call i32 @llvm.ctpop.i32(i32 %2010)
  %2012 = trunc i32 %2011 to i8
  %2013 = and i8 %2012, 1
  %2014 = xor i8 %2013, 1
  store i8 %2014, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2015 = icmp eq i8 %2008, 0
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v124 = select i1 %2015, i64 26, i64 143
  %2017 = add i64 %storemerge46, %.v124
  store i64 %2017, i64* %3, align 8
  br i1 %2015, label %block_411a88, label %block_.L_411afd

block_411a88:                                     ; preds = %block_.L_411a6e
  %2018 = add i64 %2017, 3
  store i64 %2018, i64* %3, align 8
  %2019 = load i32, i32* %1979, align 4
  %2020 = add i32 %2019, -20
  %2021 = zext i32 %2020 to i64
  store i64 %2021, i64* %RAX.i912, align 8
  %2022 = icmp ult i32 %2019, 20
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %14, align 1
  %2024 = and i32 %2020, 255
  %2025 = tail call i32 @llvm.ctpop.i32(i32 %2024)
  %2026 = trunc i32 %2025 to i8
  %2027 = and i8 %2026, 1
  %2028 = xor i8 %2027, 1
  store i8 %2028, i8* %21, align 1
  %2029 = xor i32 %2019, 16
  %2030 = xor i32 %2029, %2020
  %2031 = lshr i32 %2030, 4
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  store i8 %2033, i8* %27, align 1
  %2034 = icmp eq i32 %2020, 0
  %2035 = zext i1 %2034 to i8
  store i8 %2035, i8* %30, align 1
  %2036 = lshr i32 %2020, 31
  %2037 = trunc i32 %2036 to i8
  store i8 %2037, i8* %33, align 1
  %2038 = lshr i32 %2019, 31
  %2039 = xor i32 %2036, %2038
  %2040 = add nuw nsw i32 %2039, %2038
  %2041 = icmp eq i32 %2040, 2
  %2042 = zext i1 %2041 to i8
  store i8 %2042, i8* %39, align 1
  %2043 = sext i32 %2020 to i64
  store i64 %2043, i64* %RCX.i1103, align 8
  %2044 = shl nsw i64 %2043, 2
  %2045 = add nsw i64 %2044, 11185584
  %2046 = add i64 %2017, 16
  store i64 %2046, i64* %3, align 8
  %2047 = inttoptr i64 %2045 to i32*
  %2048 = load i32, i32* %2047, align 4
  %2049 = zext i32 %2048 to i64
  store i64 %2049, i64* %RAX.i912, align 8
  %2050 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %2051 = sub i32 %2048, %2050
  %2052 = icmp ult i32 %2048, %2050
  %2053 = zext i1 %2052 to i8
  store i8 %2053, i8* %14, align 1
  %2054 = and i32 %2051, 255
  %2055 = tail call i32 @llvm.ctpop.i32(i32 %2054)
  %2056 = trunc i32 %2055 to i8
  %2057 = and i8 %2056, 1
  %2058 = xor i8 %2057, 1
  store i8 %2058, i8* %21, align 1
  %2059 = xor i32 %2050, %2048
  %2060 = xor i32 %2059, %2051
  %2061 = lshr i32 %2060, 4
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  store i8 %2063, i8* %27, align 1
  %2064 = icmp eq i32 %2051, 0
  %2065 = zext i1 %2064 to i8
  store i8 %2065, i8* %30, align 1
  %2066 = lshr i32 %2051, 31
  %2067 = trunc i32 %2066 to i8
  store i8 %2067, i8* %33, align 1
  %2068 = lshr i32 %2048, 31
  %2069 = lshr i32 %2050, 31
  %2070 = xor i32 %2069, %2068
  %2071 = xor i32 %2066, %2068
  %2072 = add nuw nsw i32 %2071, %2070
  %2073 = icmp eq i32 %2072, 2
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %39, align 1
  %.v141 = select i1 %2064, i64 117, i64 29
  %2075 = add i64 %2017, %.v141
  store i64 %2075, i64* %3, align 8
  br i1 %2064, label %block_.L_411afd, label %block_411aa5

block_411aa5:                                     ; preds = %block_411a88
  %2076 = add i64 %1976, -24
  %2077 = add i64 %2075, 5
  store i64 %2077, i64* %3, align 8
  %2078 = inttoptr i64 %2076 to i64*
  %2079 = load i64, i64* %2078, align 8
  store i8 0, i8* %14, align 1
  %2080 = trunc i64 %2079 to i32
  %2081 = and i32 %2080, 255
  %2082 = tail call i32 @llvm.ctpop.i32(i32 %2081)
  %2083 = trunc i32 %2082 to i8
  %2084 = and i8 %2083, 1
  %2085 = xor i8 %2084, 1
  store i8 %2085, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2086 = icmp eq i64 %2079, 0
  %2087 = zext i1 %2086 to i8
  store i8 %2087, i8* %30, align 1
  %2088 = lshr i64 %2079, 63
  %2089 = trunc i64 %2088 to i8
  store i8 %2089, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v142 = select i1 %2086, i64 28, i64 11
  %2090 = add i64 %2075, %.v142
  store i64 %2090, i64* %3, align 8
  br i1 %2086, label %block_.L_411ac1, label %block_411ab0

block_411ab0:                                     ; preds = %block_411aa5
  %2091 = add i64 %2090, 3
  store i64 %2091, i64* %3, align 8
  %2092 = load i32, i32* %1979, align 4
  %2093 = add i32 %2092, -20
  %2094 = zext i32 %2093 to i64
  store i64 %2094, i64* %RAX.i912, align 8
  %2095 = icmp ult i32 %2092, 20
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %14, align 1
  %2097 = and i32 %2093, 255
  %2098 = tail call i32 @llvm.ctpop.i32(i32 %2097)
  %2099 = trunc i32 %2098 to i8
  %2100 = and i8 %2099, 1
  %2101 = xor i8 %2100, 1
  store i8 %2101, i8* %21, align 1
  %2102 = xor i32 %2092, 16
  %2103 = xor i32 %2102, %2093
  %2104 = lshr i32 %2103, 4
  %2105 = trunc i32 %2104 to i8
  %2106 = and i8 %2105, 1
  store i8 %2106, i8* %27, align 1
  %2107 = icmp eq i32 %2093, 0
  %2108 = zext i1 %2107 to i8
  store i8 %2108, i8* %30, align 1
  %2109 = lshr i32 %2093, 31
  %2110 = trunc i32 %2109 to i8
  store i8 %2110, i8* %33, align 1
  %2111 = lshr i32 %2092, 31
  %2112 = xor i32 %2109, %2111
  %2113 = add nuw nsw i32 %2112, %2111
  %2114 = icmp eq i32 %2113, 2
  %2115 = zext i1 %2114 to i8
  store i8 %2115, i8* %39, align 1
  %2116 = add i64 %2090, 10
  store i64 %2116, i64* %3, align 8
  %2117 = load i64, i64* %2078, align 8
  store i64 %2117, i64* %RCX.i1103, align 8
  %2118 = add i64 %1976, -32
  %2119 = add i64 %2090, 14
  store i64 %2119, i64* %3, align 8
  %2120 = inttoptr i64 %2118 to i32*
  %2121 = load i32, i32* %2120, align 4
  %2122 = sext i32 %2121 to i64
  store i64 %2122, i64* %RDX.i1096, align 8
  %2123 = shl nsw i64 %2122, 2
  %2124 = add i64 %2123, %2117
  %2125 = add i64 %2090, 17
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i32*
  store i32 %2093, i32* %2126, align 4
  %.pre98 = load i64, i64* %RBP.i, align 8
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_411ac1

block_.L_411ac1:                                  ; preds = %block_411ab0, %block_411aa5
  %2127 = phi i64 [ %.pre99, %block_411ab0 ], [ %2090, %block_411aa5 ]
  %2128 = phi i64 [ %.pre98, %block_411ab0 ], [ %1976, %block_411aa5 ]
  %2129 = add i64 %2128, -32
  %2130 = add i64 %2127, 3
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2129 to i32*
  %2132 = load i32, i32* %2131, align 4
  %2133 = add i32 %2132, 1
  %2134 = zext i32 %2133 to i64
  store i64 %2134, i64* %RAX.i912, align 8
  %2135 = icmp eq i32 %2132, -1
  %2136 = icmp eq i32 %2133, 0
  %2137 = or i1 %2135, %2136
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %14, align 1
  %2139 = and i32 %2133, 255
  %2140 = tail call i32 @llvm.ctpop.i32(i32 %2139)
  %2141 = trunc i32 %2140 to i8
  %2142 = and i8 %2141, 1
  %2143 = xor i8 %2142, 1
  store i8 %2143, i8* %21, align 1
  %2144 = xor i32 %2133, %2132
  %2145 = lshr i32 %2144, 4
  %2146 = trunc i32 %2145 to i8
  %2147 = and i8 %2146, 1
  store i8 %2147, i8* %27, align 1
  %2148 = zext i1 %2136 to i8
  store i8 %2148, i8* %30, align 1
  %2149 = lshr i32 %2133, 31
  %2150 = trunc i32 %2149 to i8
  store i8 %2150, i8* %33, align 1
  %2151 = lshr i32 %2132, 31
  %2152 = xor i32 %2149, %2151
  %2153 = add nuw nsw i32 %2152, %2149
  %2154 = icmp eq i32 %2153, 2
  %2155 = zext i1 %2154 to i8
  store i8 %2155, i8* %39, align 1
  %2156 = add i64 %2127, 9
  store i64 %2156, i64* %3, align 8
  store i32 %2133, i32* %2131, align 4
  %2157 = load i64, i64* %RBP.i, align 8
  %2158 = add i64 %2157, -32
  %2159 = load i64, i64* %3, align 8
  %2160 = add i64 %2159, 3
  store i64 %2160, i64* %3, align 8
  %2161 = inttoptr i64 %2158 to i32*
  %2162 = load i32, i32* %2161, align 4
  %2163 = zext i32 %2162 to i64
  store i64 %2163, i64* %RAX.i912, align 8
  %2164 = add i64 %2157, -16
  %2165 = add i64 %2159, 6
  store i64 %2165, i64* %3, align 8
  %2166 = inttoptr i64 %2164 to i32*
  %2167 = load i32, i32* %2166, align 4
  %2168 = sub i32 %2162, %2167
  %2169 = icmp ult i32 %2162, %2167
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %14, align 1
  %2171 = and i32 %2168, 255
  %2172 = tail call i32 @llvm.ctpop.i32(i32 %2171)
  %2173 = trunc i32 %2172 to i8
  %2174 = and i8 %2173, 1
  %2175 = xor i8 %2174, 1
  store i8 %2175, i8* %21, align 1
  %2176 = xor i32 %2167, %2162
  %2177 = xor i32 %2176, %2168
  %2178 = lshr i32 %2177, 4
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  store i8 %2180, i8* %27, align 1
  %2181 = icmp eq i32 %2168, 0
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %30, align 1
  %2183 = lshr i32 %2168, 31
  %2184 = trunc i32 %2183 to i8
  store i8 %2184, i8* %33, align 1
  %2185 = lshr i32 %2162, 31
  %2186 = lshr i32 %2167, 31
  %2187 = xor i32 %2186, %2185
  %2188 = xor i32 %2183, %2185
  %2189 = add nuw nsw i32 %2188, %2187
  %2190 = icmp eq i32 %2189, 2
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %39, align 1
  %2192 = icmp ne i8 %2184, 0
  %2193 = xor i1 %2192, %2190
  %.v143 = select i1 %2193, i64 23, i64 12
  %2194 = add i64 %2159, %.v143
  store i64 %2194, i64* %3, align 8
  br i1 %2193, label %block_.L_411ae1, label %block_411ad6

block_411ad6:                                     ; preds = %block_.L_411ac1
  %2195 = add i64 %2194, 3
  store i64 %2195, i64* %3, align 8
  %2196 = load i32, i32* %2161, align 4
  %2197 = zext i32 %2196 to i64
  store i64 %2197, i64* %RAX.i912, align 8
  %2198 = add i64 %2157, -4
  %2199 = add i64 %2194, 6
  store i64 %2199, i64* %3, align 8
  %2200 = inttoptr i64 %2198 to i32*
  store i32 %2196, i32* %2200, align 4
  %2201 = load i64, i64* %3, align 8
  %2202 = add i64 %2201, 703
  store i64 %2202, i64* %3, align 8
  br label %block_.L_411d9b

block_.L_411ae1:                                  ; preds = %block_.L_411ac1
  %2203 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %2204 = zext i32 %2203 to i64
  store i64 %2204, i64* %RAX.i912, align 8
  %2205 = add i64 %2157, -8
  %2206 = add i64 %2194, 10
  store i64 %2206, i64* %3, align 8
  %2207 = inttoptr i64 %2205 to i32*
  %2208 = load i32, i32* %2207, align 4
  %2209 = add i32 %2208, -20
  %2210 = zext i32 %2209 to i64
  store i64 %2210, i64* %RCX.i1103, align 8
  %2211 = icmp ult i32 %2208, 20
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %14, align 1
  %2213 = and i32 %2209, 255
  %2214 = tail call i32 @llvm.ctpop.i32(i32 %2213)
  %2215 = trunc i32 %2214 to i8
  %2216 = and i8 %2215, 1
  %2217 = xor i8 %2216, 1
  store i8 %2217, i8* %21, align 1
  %2218 = xor i32 %2208, 16
  %2219 = xor i32 %2218, %2209
  %2220 = lshr i32 %2219, 4
  %2221 = trunc i32 %2220 to i8
  %2222 = and i8 %2221, 1
  store i8 %2222, i8* %27, align 1
  %2223 = icmp eq i32 %2209, 0
  %2224 = zext i1 %2223 to i8
  store i8 %2224, i8* %30, align 1
  %2225 = lshr i32 %2209, 31
  %2226 = trunc i32 %2225 to i8
  store i8 %2226, i8* %33, align 1
  %2227 = lshr i32 %2208, 31
  %2228 = xor i32 %2225, %2227
  %2229 = add nuw nsw i32 %2228, %2227
  %2230 = icmp eq i32 %2229, 2
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %39, align 1
  %2232 = sext i32 %2209 to i64
  store i64 %2232, i64* %RDX.i1096, align 8
  %2233 = shl nsw i64 %2232, 2
  %2234 = add nsw i64 %2233, 11185584
  %2235 = add i64 %2194, 23
  store i64 %2235, i64* %3, align 8
  %2236 = inttoptr i64 %2234 to i32*
  store i32 %2203, i32* %2236, align 4
  %2237 = load i64, i64* %3, align 8
  %2238 = add i64 %2237, 277
  br label %block_.L_411c0d

block_.L_411afd:                                  ; preds = %block_.L_411a6e, %block_411a88
  %2239 = phi i64 [ %2075, %block_411a88 ], [ %2017, %block_.L_411a6e ]
  %2240 = add i64 %2239, 3
  store i64 %2240, i64* %3, align 8
  %2241 = load i32, i32* %1979, align 4
  %2242 = add i32 %2241, -20
  %2243 = zext i32 %2242 to i64
  store i64 %2243, i64* %RAX.i912, align 8
  %2244 = icmp ult i32 %2241, 20
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %14, align 1
  %2246 = and i32 %2242, 255
  %2247 = tail call i32 @llvm.ctpop.i32(i32 %2246)
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  %2250 = xor i8 %2249, 1
  store i8 %2250, i8* %21, align 1
  %2251 = xor i32 %2241, 16
  %2252 = xor i32 %2251, %2242
  %2253 = lshr i32 %2252, 4
  %2254 = trunc i32 %2253 to i8
  %2255 = and i8 %2254, 1
  store i8 %2255, i8* %27, align 1
  %2256 = icmp eq i32 %2242, 0
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %30, align 1
  %2258 = lshr i32 %2242, 31
  %2259 = trunc i32 %2258 to i8
  store i8 %2259, i8* %33, align 1
  %2260 = lshr i32 %2241, 31
  %2261 = xor i32 %2258, %2260
  %2262 = add nuw nsw i32 %2261, %2260
  %2263 = icmp eq i32 %2262, 2
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %39, align 1
  %2265 = sext i32 %2242 to i64
  store i64 %2265, i64* %RCX.i1103, align 8
  %2266 = add nsw i64 %2265, 12099168
  %2267 = add i64 %2239, 17
  store i64 %2267, i64* %3, align 8
  %2268 = inttoptr i64 %2266 to i8*
  %2269 = load i8, i8* %2268, align 1
  %2270 = zext i8 %2269 to i64
  store i64 %2270, i64* %RAX.i912, align 8
  %2271 = zext i8 %2269 to i32
  %2272 = add i64 %1976, -12
  %2273 = add i64 %2239, 20
  store i64 %2273, i64* %3, align 8
  %2274 = inttoptr i64 %2272 to i32*
  %2275 = load i32, i32* %2274, align 4
  %2276 = sub i32 %2271, %2275
  %2277 = icmp ult i32 %2271, %2275
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %14, align 1
  %2279 = and i32 %2276, 255
  %2280 = tail call i32 @llvm.ctpop.i32(i32 %2279)
  %2281 = trunc i32 %2280 to i8
  %2282 = and i8 %2281, 1
  %2283 = xor i8 %2282, 1
  store i8 %2283, i8* %21, align 1
  %2284 = xor i32 %2275, %2271
  %2285 = xor i32 %2284, %2276
  %2286 = lshr i32 %2285, 4
  %2287 = trunc i32 %2286 to i8
  %2288 = and i8 %2287, 1
  store i8 %2288, i8* %27, align 1
  %2289 = icmp eq i32 %2276, 0
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %30, align 1
  %2291 = lshr i32 %2276, 31
  %2292 = trunc i32 %2291 to i8
  store i8 %2292, i8* %33, align 1
  %2293 = lshr i32 %2275, 31
  %2294 = add nuw nsw i32 %2291, %2293
  %2295 = icmp eq i32 %2294, 2
  %2296 = zext i1 %2295 to i8
  store i8 %2296, i8* %39, align 1
  %.v125 = select i1 %2289, i64 26, i64 267
  %2297 = add i64 %2239, %.v125
  store i64 %2297, i64* %3, align 8
  br i1 %2289, label %block_411b17, label %block_.L_411c08

block_411b17:                                     ; preds = %block_.L_411afd
  %2298 = add i64 %2297, 3
  store i64 %2298, i64* %3, align 8
  %2299 = load i32, i32* %1979, align 4
  %2300 = add i32 %2299, -20
  %2301 = zext i32 %2300 to i64
  store i64 %2301, i64* %RAX.i912, align 8
  %2302 = icmp ult i32 %2299, 20
  %2303 = zext i1 %2302 to i8
  store i8 %2303, i8* %14, align 1
  %2304 = and i32 %2300, 255
  %2305 = tail call i32 @llvm.ctpop.i32(i32 %2304)
  %2306 = trunc i32 %2305 to i8
  %2307 = and i8 %2306, 1
  %2308 = xor i8 %2307, 1
  store i8 %2308, i8* %21, align 1
  %2309 = xor i32 %2299, 16
  %2310 = xor i32 %2309, %2300
  %2311 = lshr i32 %2310, 4
  %2312 = trunc i32 %2311 to i8
  %2313 = and i8 %2312, 1
  store i8 %2313, i8* %27, align 1
  %2314 = icmp eq i32 %2300, 0
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %30, align 1
  %2316 = lshr i32 %2300, 31
  %2317 = trunc i32 %2316 to i8
  store i8 %2317, i8* %33, align 1
  %2318 = lshr i32 %2299, 31
  %2319 = xor i32 %2316, %2318
  %2320 = add nuw nsw i32 %2319, %2318
  %2321 = icmp eq i32 %2320, 2
  %2322 = zext i1 %2321 to i8
  store i8 %2322, i8* %39, align 1
  %2323 = sext i32 %2300 to i64
  store i64 %2323, i64* %RCX.i1103, align 8
  %2324 = shl nsw i64 %2323, 2
  %2325 = add nsw i64 %2324, 11187184
  %2326 = add i64 %2297, 16
  store i64 %2326, i64* %3, align 8
  %2327 = inttoptr i64 %2325 to i32*
  %2328 = load i32, i32* %2327, align 4
  %2329 = zext i32 %2328 to i64
  store i64 %2329, i64* %RAX.i912, align 8
  %2330 = add i64 %1976, -56
  %2331 = add i64 %2297, 19
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2330 to i32*
  store i32 %2328, i32* %2332, align 4
  %2333 = load i64, i64* %RBP.i, align 8
  %2334 = add i64 %2333, -28
  %2335 = load i64, i64* %3, align 8
  %2336 = add i64 %2335, 7
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2334 to i32*
  store i32 0, i32* %2337, align 4
  %.pre100 = load i64, i64* %3, align 8
  br label %block_.L_411b31

block_.L_411b31:                                  ; preds = %block_.L_411bf0, %block_411b17
  %2338 = phi i64 [ %2658, %block_.L_411bf0 ], [ %.pre100, %block_411b17 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i912, align 8
  %2339 = load i64, i64* %RBP.i, align 8
  %2340 = add i64 %2339, -28
  %2341 = add i64 %2338, 13
  store i64 %2341, i64* %3, align 8
  %2342 = inttoptr i64 %2340 to i32*
  %2343 = load i32, i32* %2342, align 4
  %2344 = zext i32 %2343 to i64
  store i64 %2344, i64* %RCX.i1103, align 8
  %2345 = add i64 %2339, -56
  %2346 = add i64 %2338, 17
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to i32*
  %2348 = load i32, i32* %2347, align 4
  %2349 = sext i32 %2348 to i64
  %2350 = mul nsw i64 %2349, 744
  store i64 %2350, i64* %RDX.i1096, align 8
  %2351 = lshr i64 %2350, 63
  %2352 = add i64 %2350, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2352, i64* %RAX.i912, align 8
  %2353 = icmp ult i64 %2352, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2354 = icmp ult i64 %2352, %2350
  %2355 = or i1 %2353, %2354
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %14, align 1
  %2357 = trunc i64 %2352 to i32
  %2358 = and i32 %2357, 248
  %2359 = tail call i32 @llvm.ctpop.i32(i32 %2358)
  %2360 = trunc i32 %2359 to i8
  %2361 = and i8 %2360, 1
  %2362 = xor i8 %2361, 1
  store i8 %2362, i8* %21, align 1
  %2363 = xor i64 %2350, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2364 = xor i64 %2363, %2352
  %2365 = lshr i64 %2364, 4
  %2366 = trunc i64 %2365 to i8
  %2367 = and i8 %2366, 1
  store i8 %2367, i8* %27, align 1
  %2368 = icmp eq i64 %2352, 0
  %2369 = zext i1 %2368 to i8
  store i8 %2369, i8* %30, align 1
  %2370 = lshr i64 %2352, 63
  %2371 = trunc i64 %2370 to i8
  store i8 %2371, i8* %33, align 1
  %2372 = xor i64 %2370, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2373 = xor i64 %2370, %2351
  %2374 = add nuw nsw i64 %2372, %2373
  %2375 = icmp eq i64 %2374, 2
  %2376 = zext i1 %2375 to i8
  store i8 %2376, i8* %39, align 1
  %2377 = add i64 %2350, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %2378 = add i64 %2338, 30
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2377 to i32*
  %2380 = load i32, i32* %2379, align 4
  %2381 = sub i32 %2343, %2380
  %2382 = icmp ult i32 %2343, %2380
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %14, align 1
  %2384 = and i32 %2381, 255
  %2385 = tail call i32 @llvm.ctpop.i32(i32 %2384)
  %2386 = trunc i32 %2385 to i8
  %2387 = and i8 %2386, 1
  %2388 = xor i8 %2387, 1
  store i8 %2388, i8* %21, align 1
  %2389 = xor i32 %2380, %2343
  %2390 = xor i32 %2389, %2381
  %2391 = lshr i32 %2390, 4
  %2392 = trunc i32 %2391 to i8
  %2393 = and i8 %2392, 1
  store i8 %2393, i8* %27, align 1
  %2394 = icmp eq i32 %2381, 0
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %30, align 1
  %2396 = lshr i32 %2381, 31
  %2397 = trunc i32 %2396 to i8
  store i8 %2397, i8* %33, align 1
  %2398 = lshr i32 %2343, 31
  %2399 = lshr i32 %2380, 31
  %2400 = xor i32 %2399, %2398
  %2401 = xor i32 %2396, %2398
  %2402 = add nuw nsw i32 %2401, %2400
  %2403 = icmp eq i32 %2402, 2
  %2404 = zext i1 %2403 to i8
  store i8 %2404, i8* %39, align 1
  %2405 = icmp ne i8 %2397, 0
  %2406 = xor i1 %2405, %2403
  %.v136 = select i1 %2406, i64 36, i64 210
  %2407 = add i64 %2338, %.v136
  store i64 %2407, i64* %3, align 8
  br i1 %2406, label %block_411b55, label %block_.L_411c03

block_411b55:                                     ; preds = %block_.L_411b31
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i912, align 8
  %2408 = load i64, i64* %RBP.i, align 8
  %2409 = add i64 %2408, -56
  %2410 = add i64 %2407, 14
  store i64 %2410, i64* %3, align 8
  %2411 = inttoptr i64 %2409 to i32*
  %2412 = load i32, i32* %2411, align 4
  %2413 = sext i32 %2412 to i64
  %2414 = mul nsw i64 %2413, 744
  store i64 %2414, i64* %RCX.i1103, align 8
  %2415 = lshr i64 %2414, 63
  %2416 = add i64 %2414, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2416, i64* %RAX.i912, align 8
  %2417 = icmp ult i64 %2416, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2418 = icmp ult i64 %2416, %2414
  %2419 = or i1 %2417, %2418
  %2420 = zext i1 %2419 to i8
  store i8 %2420, i8* %14, align 1
  %2421 = trunc i64 %2416 to i32
  %2422 = and i32 %2421, 248
  %2423 = tail call i32 @llvm.ctpop.i32(i32 %2422)
  %2424 = trunc i32 %2423 to i8
  %2425 = and i8 %2424, 1
  %2426 = xor i8 %2425, 1
  store i8 %2426, i8* %21, align 1
  %2427 = xor i64 %2414, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2428 = xor i64 %2427, %2416
  %2429 = lshr i64 %2428, 4
  %2430 = trunc i64 %2429 to i8
  %2431 = and i8 %2430, 1
  store i8 %2431, i8* %27, align 1
  %2432 = icmp eq i64 %2416, 0
  %2433 = zext i1 %2432 to i8
  store i8 %2433, i8* %30, align 1
  %2434 = lshr i64 %2416, 63
  %2435 = trunc i64 %2434 to i8
  store i8 %2435, i8* %33, align 1
  %2436 = xor i64 %2434, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2437 = xor i64 %2434, %2415
  %2438 = add nuw nsw i64 %2436, %2437
  %2439 = icmp eq i64 %2438, 2
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %39, align 1
  %2441 = add i64 %2408, -28
  %2442 = add i64 %2407, 28
  store i64 %2442, i64* %3, align 8
  %2443 = inttoptr i64 %2441 to i32*
  %2444 = load i32, i32* %2443, align 4
  %2445 = sext i32 %2444 to i64
  store i64 %2445, i64* %RCX.i1103, align 8
  %2446 = shl nsw i64 %2445, 2
  %2447 = add i64 %2414, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 16)
  %2448 = add i64 %2447, %2446
  %2449 = add i64 %2407, 32
  store i64 %2449, i64* %3, align 8
  %2450 = inttoptr i64 %2448 to i32*
  %2451 = load i32, i32* %2450, align 4
  %2452 = zext i32 %2451 to i64
  store i64 %2452, i64* %RDX.i1096, align 8
  %2453 = add i64 %2408, -60
  %2454 = add i64 %2407, 35
  store i64 %2454, i64* %3, align 8
  %2455 = inttoptr i64 %2453 to i32*
  store i32 %2451, i32* %2455, align 4
  %2456 = load i64, i64* %RBP.i, align 8
  %2457 = add i64 %2456, -60
  %2458 = load i64, i64* %3, align 8
  %2459 = add i64 %2458, 4
  store i64 %2459, i64* %3, align 8
  %2460 = inttoptr i64 %2457 to i32*
  %2461 = load i32, i32* %2460, align 4
  %2462 = sext i32 %2461 to i64
  store i64 %2462, i64* %RAX.i912, align 8
  %2463 = add nsw i64 %2462, 12099168
  %2464 = add i64 %2458, 12
  store i64 %2464, i64* %3, align 8
  %2465 = inttoptr i64 %2463 to i8*
  %2466 = load i8, i8* %2465, align 1
  %2467 = zext i8 %2466 to i64
  store i64 %2467, i64* %RDX.i1096, align 8
  %2468 = zext i8 %2466 to i32
  store i8 0, i8* %14, align 1
  %2469 = tail call i32 @llvm.ctpop.i32(i32 %2468)
  %2470 = trunc i32 %2469 to i8
  %2471 = and i8 %2470, 1
  %2472 = xor i8 %2471, 1
  store i8 %2472, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2473 = icmp eq i8 %2466, 0
  %2474 = zext i1 %2473 to i8
  store i8 %2474, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v137 = select i1 %2473, i64 21, i64 120
  %2475 = add i64 %2458, %.v137
  store i64 %2475, i64* %3, align 8
  br i1 %2473, label %block_411b8d, label %block_.L_411bf0

block_411b8d:                                     ; preds = %block_411b55
  %2476 = add i64 %2475, 4
  store i64 %2476, i64* %3, align 8
  %2477 = load i32, i32* %2460, align 4
  %2478 = sext i32 %2477 to i64
  store i64 %2478, i64* %RAX.i912, align 8
  %2479 = shl nsw i64 %2478, 2
  %2480 = add nsw i64 %2479, 11185584
  %2481 = add i64 %2475, 11
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2480 to i32*
  %2483 = load i32, i32* %2482, align 4
  %2484 = zext i32 %2483 to i64
  store i64 %2484, i64* %RCX.i1103, align 8
  %2485 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %2486 = sub i32 %2483, %2485
  %2487 = icmp ult i32 %2483, %2485
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %14, align 1
  %2489 = and i32 %2486, 255
  %2490 = tail call i32 @llvm.ctpop.i32(i32 %2489)
  %2491 = trunc i32 %2490 to i8
  %2492 = and i8 %2491, 1
  %2493 = xor i8 %2492, 1
  store i8 %2493, i8* %21, align 1
  %2494 = xor i32 %2485, %2483
  %2495 = xor i32 %2494, %2486
  %2496 = lshr i32 %2495, 4
  %2497 = trunc i32 %2496 to i8
  %2498 = and i8 %2497, 1
  store i8 %2498, i8* %27, align 1
  %2499 = icmp eq i32 %2486, 0
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %30, align 1
  %2501 = lshr i32 %2486, 31
  %2502 = trunc i32 %2501 to i8
  store i8 %2502, i8* %33, align 1
  %2503 = lshr i32 %2483, 31
  %2504 = lshr i32 %2485, 31
  %2505 = xor i32 %2504, %2503
  %2506 = xor i32 %2501, %2503
  %2507 = add nuw nsw i32 %2506, %2505
  %2508 = icmp eq i32 %2507, 2
  %2509 = zext i1 %2508 to i8
  store i8 %2509, i8* %39, align 1
  %.v138 = select i1 %2499, i64 99, i64 24
  %2510 = add i64 %2475, %.v138
  store i64 %2510, i64* %3, align 8
  br i1 %2499, label %block_.L_411bf0, label %block_411ba5

block_411ba5:                                     ; preds = %block_411b8d
  %2511 = add i64 %2456, -24
  %2512 = add i64 %2510, 5
  store i64 %2512, i64* %3, align 8
  %2513 = inttoptr i64 %2511 to i64*
  %2514 = load i64, i64* %2513, align 8
  store i8 0, i8* %14, align 1
  %2515 = trunc i64 %2514 to i32
  %2516 = and i32 %2515, 255
  %2517 = tail call i32 @llvm.ctpop.i32(i32 %2516)
  %2518 = trunc i32 %2517 to i8
  %2519 = and i8 %2518, 1
  %2520 = xor i8 %2519, 1
  store i8 %2520, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2521 = icmp eq i64 %2514, 0
  %2522 = zext i1 %2521 to i8
  store i8 %2522, i8* %30, align 1
  %2523 = lshr i64 %2514, 63
  %2524 = trunc i64 %2523 to i8
  store i8 %2524, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v139 = select i1 %2521, i64 25, i64 11
  %2525 = add i64 %2510, %.v139
  store i64 %2525, i64* %3, align 8
  br i1 %2521, label %block_.L_411bbe, label %block_411bb0

block_411bb0:                                     ; preds = %block_411ba5
  %2526 = add i64 %2525, 3
  store i64 %2526, i64* %3, align 8
  %2527 = load i32, i32* %2460, align 4
  %2528 = zext i32 %2527 to i64
  store i64 %2528, i64* %RAX.i912, align 8
  %2529 = add i64 %2525, 7
  store i64 %2529, i64* %3, align 8
  %2530 = load i64, i64* %2513, align 8
  store i64 %2530, i64* %RCX.i1103, align 8
  %2531 = add i64 %2456, -32
  %2532 = add i64 %2525, 11
  store i64 %2532, i64* %3, align 8
  %2533 = inttoptr i64 %2531 to i32*
  %2534 = load i32, i32* %2533, align 4
  %2535 = sext i32 %2534 to i64
  store i64 %2535, i64* %RDX.i1096, align 8
  %2536 = shl nsw i64 %2535, 2
  %2537 = add i64 %2536, %2530
  %2538 = add i64 %2525, 14
  store i64 %2538, i64* %3, align 8
  %2539 = inttoptr i64 %2537 to i32*
  store i32 %2527, i32* %2539, align 4
  %.pre101 = load i64, i64* %RBP.i, align 8
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_411bbe

block_.L_411bbe:                                  ; preds = %block_411bb0, %block_411ba5
  %2540 = phi i64 [ %.pre102, %block_411bb0 ], [ %2525, %block_411ba5 ]
  %2541 = phi i64 [ %.pre101, %block_411bb0 ], [ %2456, %block_411ba5 ]
  %2542 = add i64 %2541, -32
  %2543 = add i64 %2540, 3
  store i64 %2543, i64* %3, align 8
  %2544 = inttoptr i64 %2542 to i32*
  %2545 = load i32, i32* %2544, align 4
  %2546 = add i32 %2545, 1
  %2547 = zext i32 %2546 to i64
  store i64 %2547, i64* %RAX.i912, align 8
  %2548 = icmp eq i32 %2545, -1
  %2549 = icmp eq i32 %2546, 0
  %2550 = or i1 %2548, %2549
  %2551 = zext i1 %2550 to i8
  store i8 %2551, i8* %14, align 1
  %2552 = and i32 %2546, 255
  %2553 = tail call i32 @llvm.ctpop.i32(i32 %2552)
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  %2556 = xor i8 %2555, 1
  store i8 %2556, i8* %21, align 1
  %2557 = xor i32 %2546, %2545
  %2558 = lshr i32 %2557, 4
  %2559 = trunc i32 %2558 to i8
  %2560 = and i8 %2559, 1
  store i8 %2560, i8* %27, align 1
  %2561 = zext i1 %2549 to i8
  store i8 %2561, i8* %30, align 1
  %2562 = lshr i32 %2546, 31
  %2563 = trunc i32 %2562 to i8
  store i8 %2563, i8* %33, align 1
  %2564 = lshr i32 %2545, 31
  %2565 = xor i32 %2562, %2564
  %2566 = add nuw nsw i32 %2565, %2562
  %2567 = icmp eq i32 %2566, 2
  %2568 = zext i1 %2567 to i8
  store i8 %2568, i8* %39, align 1
  %2569 = add i64 %2540, 9
  store i64 %2569, i64* %3, align 8
  store i32 %2546, i32* %2544, align 4
  %2570 = load i64, i64* %RBP.i, align 8
  %2571 = add i64 %2570, -32
  %2572 = load i64, i64* %3, align 8
  %2573 = add i64 %2572, 3
  store i64 %2573, i64* %3, align 8
  %2574 = inttoptr i64 %2571 to i32*
  %2575 = load i32, i32* %2574, align 4
  %2576 = zext i32 %2575 to i64
  store i64 %2576, i64* %RAX.i912, align 8
  %2577 = add i64 %2570, -16
  %2578 = add i64 %2572, 6
  store i64 %2578, i64* %3, align 8
  %2579 = inttoptr i64 %2577 to i32*
  %2580 = load i32, i32* %2579, align 4
  %2581 = sub i32 %2575, %2580
  %2582 = icmp ult i32 %2575, %2580
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %14, align 1
  %2584 = and i32 %2581, 255
  %2585 = tail call i32 @llvm.ctpop.i32(i32 %2584)
  %2586 = trunc i32 %2585 to i8
  %2587 = and i8 %2586, 1
  %2588 = xor i8 %2587, 1
  store i8 %2588, i8* %21, align 1
  %2589 = xor i32 %2580, %2575
  %2590 = xor i32 %2589, %2581
  %2591 = lshr i32 %2590, 4
  %2592 = trunc i32 %2591 to i8
  %2593 = and i8 %2592, 1
  store i8 %2593, i8* %27, align 1
  %2594 = icmp eq i32 %2581, 0
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %30, align 1
  %2596 = lshr i32 %2581, 31
  %2597 = trunc i32 %2596 to i8
  store i8 %2597, i8* %33, align 1
  %2598 = lshr i32 %2575, 31
  %2599 = lshr i32 %2580, 31
  %2600 = xor i32 %2599, %2598
  %2601 = xor i32 %2596, %2598
  %2602 = add nuw nsw i32 %2601, %2600
  %2603 = icmp eq i32 %2602, 2
  %2604 = zext i1 %2603 to i8
  store i8 %2604, i8* %39, align 1
  %2605 = icmp ne i8 %2597, 0
  %2606 = xor i1 %2605, %2603
  %.v140 = select i1 %2606, i64 23, i64 12
  %2607 = add i64 %2572, %.v140
  store i64 %2607, i64* %3, align 8
  br i1 %2606, label %block_.L_411bde, label %block_411bd3

block_411bd3:                                     ; preds = %block_.L_411bbe
  %2608 = add i64 %2607, 3
  store i64 %2608, i64* %3, align 8
  %2609 = load i32, i32* %2574, align 4
  %2610 = zext i32 %2609 to i64
  store i64 %2610, i64* %RAX.i912, align 8
  %2611 = add i64 %2570, -4
  %2612 = add i64 %2607, 6
  store i64 %2612, i64* %3, align 8
  %2613 = inttoptr i64 %2611 to i32*
  store i32 %2609, i32* %2613, align 4
  %2614 = load i64, i64* %3, align 8
  %2615 = add i64 %2614, 450
  store i64 %2615, i64* %3, align 8
  br label %block_.L_411d9b

block_.L_411bde:                                  ; preds = %block_.L_411bbe
  %2616 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %2617 = zext i32 %2616 to i64
  store i64 %2617, i64* %RAX.i912, align 8
  %2618 = add i64 %2570, -60
  %2619 = add i64 %2607, 11
  store i64 %2619, i64* %3, align 8
  %2620 = inttoptr i64 %2618 to i32*
  %2621 = load i32, i32* %2620, align 4
  %2622 = sext i32 %2621 to i64
  store i64 %2622, i64* %RCX.i1103, align 8
  %2623 = shl nsw i64 %2622, 2
  %2624 = add nsw i64 %2623, 11185584
  %2625 = add i64 %2607, 18
  store i64 %2625, i64* %3, align 8
  %2626 = inttoptr i64 %2624 to i32*
  store i32 %2616, i32* %2626, align 4
  %.pre103 = load i64, i64* %3, align 8
  %.pre104 = load i64, i64* %RBP.i, align 8
  br label %block_.L_411bf0

block_.L_411bf0:                                  ; preds = %block_411b55, %block_.L_411bde, %block_411b8d
  %2627 = phi i64 [ %.pre104, %block_.L_411bde ], [ %2456, %block_411b8d ], [ %2456, %block_411b55 ]
  %2628 = phi i64 [ %.pre103, %block_.L_411bde ], [ %2510, %block_411b8d ], [ %2475, %block_411b55 ]
  %2629 = add i64 %2627, -28
  %2630 = add i64 %2628, 8
  store i64 %2630, i64* %3, align 8
  %2631 = inttoptr i64 %2629 to i32*
  %2632 = load i32, i32* %2631, align 4
  %2633 = add i32 %2632, 1
  %2634 = zext i32 %2633 to i64
  store i64 %2634, i64* %RAX.i912, align 8
  %2635 = icmp eq i32 %2632, -1
  %2636 = icmp eq i32 %2633, 0
  %2637 = or i1 %2635, %2636
  %2638 = zext i1 %2637 to i8
  store i8 %2638, i8* %14, align 1
  %2639 = and i32 %2633, 255
  %2640 = tail call i32 @llvm.ctpop.i32(i32 %2639)
  %2641 = trunc i32 %2640 to i8
  %2642 = and i8 %2641, 1
  %2643 = xor i8 %2642, 1
  store i8 %2643, i8* %21, align 1
  %2644 = xor i32 %2633, %2632
  %2645 = lshr i32 %2644, 4
  %2646 = trunc i32 %2645 to i8
  %2647 = and i8 %2646, 1
  store i8 %2647, i8* %27, align 1
  %2648 = zext i1 %2636 to i8
  store i8 %2648, i8* %30, align 1
  %2649 = lshr i32 %2633, 31
  %2650 = trunc i32 %2649 to i8
  store i8 %2650, i8* %33, align 1
  %2651 = lshr i32 %2632, 31
  %2652 = xor i32 %2649, %2651
  %2653 = add nuw nsw i32 %2652, %2649
  %2654 = icmp eq i32 %2653, 2
  %2655 = zext i1 %2654 to i8
  store i8 %2655, i8* %39, align 1
  %2656 = add i64 %2628, 14
  store i64 %2656, i64* %3, align 8
  store i32 %2633, i32* %2631, align 4
  %2657 = load i64, i64* %3, align 8
  %2658 = add i64 %2657, -205
  store i64 %2658, i64* %3, align 8
  br label %block_.L_411b31

block_.L_411c03:                                  ; preds = %block_.L_411b31
  %2659 = add i64 %2407, 5
  store i64 %2659, i64* %3, align 8
  br label %block_.L_411c08

block_.L_411c08:                                  ; preds = %block_.L_411afd, %block_.L_411c03
  %2660 = phi i64 [ %2659, %block_.L_411c03 ], [ %2297, %block_.L_411afd ]
  %2661 = add i64 %2660, 5
  store i64 %2661, i64* %3, align 8
  br label %block_.L_411c0d

block_.L_411c0d:                                  ; preds = %block_.L_411c08, %block_.L_411ae1
  %storemerge47 = phi i64 [ %2238, %block_.L_411ae1 ], [ %2661, %block_.L_411c08 ]
  %2662 = load i64, i64* %RBP.i, align 8
  %2663 = add i64 %2662, -8
  %2664 = add i64 %storemerge47, 3
  store i64 %2664, i64* %3, align 8
  %2665 = inttoptr i64 %2663 to i32*
  %2666 = load i32, i32* %2665, align 4
  %2667 = add i32 %2666, 1
  %2668 = zext i32 %2667 to i64
  store i64 %2668, i64* %RAX.i912, align 8
  %2669 = icmp eq i32 %2666, -1
  %2670 = icmp eq i32 %2667, 0
  %2671 = or i1 %2669, %2670
  %2672 = zext i1 %2671 to i8
  store i8 %2672, i8* %14, align 1
  %2673 = and i32 %2667, 255
  %2674 = tail call i32 @llvm.ctpop.i32(i32 %2673)
  %2675 = trunc i32 %2674 to i8
  %2676 = and i8 %2675, 1
  %2677 = xor i8 %2676, 1
  store i8 %2677, i8* %21, align 1
  %2678 = xor i32 %2667, %2666
  %2679 = lshr i32 %2678, 4
  %2680 = trunc i32 %2679 to i8
  %2681 = and i8 %2680, 1
  store i8 %2681, i8* %27, align 1
  %2682 = zext i1 %2670 to i8
  store i8 %2682, i8* %30, align 1
  %2683 = lshr i32 %2667, 31
  %2684 = trunc i32 %2683 to i8
  store i8 %2684, i8* %33, align 1
  %2685 = lshr i32 %2666, 31
  %2686 = xor i32 %2683, %2685
  %2687 = add nuw nsw i32 %2686, %2683
  %2688 = icmp eq i32 %2687, 2
  %2689 = zext i1 %2688 to i8
  store i8 %2689, i8* %39, align 1
  %2690 = sext i32 %2667 to i64
  store i64 %2690, i64* %RCX.i1103, align 8
  %2691 = add nsw i64 %2690, 12099168
  %2692 = add i64 %storemerge47, 17
  store i64 %2692, i64* %3, align 8
  %2693 = inttoptr i64 %2691 to i8*
  %2694 = load i8, i8* %2693, align 1
  %2695 = zext i8 %2694 to i64
  store i64 %2695, i64* %RAX.i912, align 8
  %2696 = zext i8 %2694 to i32
  store i8 0, i8* %14, align 1
  %2697 = tail call i32 @llvm.ctpop.i32(i32 %2696)
  %2698 = trunc i32 %2697 to i8
  %2699 = and i8 %2698, 1
  %2700 = xor i8 %2699, 1
  store i8 %2700, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2701 = icmp eq i8 %2694, 0
  %2702 = zext i1 %2701 to i8
  store i8 %2702, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v126 = select i1 %2701, i64 26, i64 120
  %2703 = add i64 %storemerge47, %.v126
  store i64 %2703, i64* %3, align 8
  br i1 %2701, label %block_411c27, label %block_.L_411c85

block_411c27:                                     ; preds = %block_.L_411c0d
  %2704 = add i64 %2703, 3
  store i64 %2704, i64* %3, align 8
  %2705 = load i32, i32* %2665, align 4
  %2706 = add i32 %2705, 1
  %2707 = zext i32 %2706 to i64
  store i64 %2707, i64* %RAX.i912, align 8
  %2708 = icmp eq i32 %2705, -1
  %2709 = icmp eq i32 %2706, 0
  %2710 = or i1 %2708, %2709
  %2711 = zext i1 %2710 to i8
  store i8 %2711, i8* %14, align 1
  %2712 = and i32 %2706, 255
  %2713 = tail call i32 @llvm.ctpop.i32(i32 %2712)
  %2714 = trunc i32 %2713 to i8
  %2715 = and i8 %2714, 1
  %2716 = xor i8 %2715, 1
  store i8 %2716, i8* %21, align 1
  %2717 = xor i32 %2706, %2705
  %2718 = lshr i32 %2717, 4
  %2719 = trunc i32 %2718 to i8
  %2720 = and i8 %2719, 1
  store i8 %2720, i8* %27, align 1
  %2721 = zext i1 %2709 to i8
  store i8 %2721, i8* %30, align 1
  %2722 = lshr i32 %2706, 31
  %2723 = trunc i32 %2722 to i8
  store i8 %2723, i8* %33, align 1
  %2724 = lshr i32 %2705, 31
  %2725 = xor i32 %2722, %2724
  %2726 = add nuw nsw i32 %2725, %2722
  %2727 = icmp eq i32 %2726, 2
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %39, align 1
  %2729 = sext i32 %2706 to i64
  store i64 %2729, i64* %RCX.i1103, align 8
  %2730 = shl nsw i64 %2729, 2
  %2731 = add nsw i64 %2730, 11185584
  %2732 = add i64 %2703, 16
  store i64 %2732, i64* %3, align 8
  %2733 = inttoptr i64 %2731 to i32*
  %2734 = load i32, i32* %2733, align 4
  %2735 = zext i32 %2734 to i64
  store i64 %2735, i64* %RAX.i912, align 8
  %2736 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %2737 = sub i32 %2734, %2736
  %2738 = icmp ult i32 %2734, %2736
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %14, align 1
  %2740 = and i32 %2737, 255
  %2741 = tail call i32 @llvm.ctpop.i32(i32 %2740)
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  %2744 = xor i8 %2743, 1
  store i8 %2744, i8* %21, align 1
  %2745 = xor i32 %2736, %2734
  %2746 = xor i32 %2745, %2737
  %2747 = lshr i32 %2746, 4
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  store i8 %2749, i8* %27, align 1
  %2750 = icmp eq i32 %2737, 0
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %30, align 1
  %2752 = lshr i32 %2737, 31
  %2753 = trunc i32 %2752 to i8
  store i8 %2753, i8* %33, align 1
  %2754 = lshr i32 %2734, 31
  %2755 = lshr i32 %2736, 31
  %2756 = xor i32 %2755, %2754
  %2757 = xor i32 %2752, %2754
  %2758 = add nuw nsw i32 %2757, %2756
  %2759 = icmp eq i32 %2758, 2
  %2760 = zext i1 %2759 to i8
  store i8 %2760, i8* %39, align 1
  %.v133 = select i1 %2750, i64 94, i64 29
  %2761 = add i64 %2703, %.v133
  store i64 %2761, i64* %3, align 8
  br i1 %2750, label %block_.L_411c85, label %block_411c44

block_411c44:                                     ; preds = %block_411c27
  %2762 = add i64 %2662, -24
  %2763 = add i64 %2761, 5
  store i64 %2763, i64* %3, align 8
  %2764 = inttoptr i64 %2762 to i64*
  %2765 = load i64, i64* %2764, align 8
  store i8 0, i8* %14, align 1
  %2766 = trunc i64 %2765 to i32
  %2767 = and i32 %2766, 255
  %2768 = tail call i32 @llvm.ctpop.i32(i32 %2767)
  %2769 = trunc i32 %2768 to i8
  %2770 = and i8 %2769, 1
  %2771 = xor i8 %2770, 1
  store i8 %2771, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2772 = icmp eq i64 %2765, 0
  %2773 = zext i1 %2772 to i8
  store i8 %2773, i8* %30, align 1
  %2774 = lshr i64 %2765, 63
  %2775 = trunc i64 %2774 to i8
  store i8 %2775, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v134 = select i1 %2772, i64 28, i64 11
  %2776 = add i64 %2761, %.v134
  store i64 %2776, i64* %3, align 8
  br i1 %2772, label %block_.L_411c60, label %block_411c4f

block_411c4f:                                     ; preds = %block_411c44
  %2777 = add i64 %2776, 3
  store i64 %2777, i64* %3, align 8
  %2778 = load i32, i32* %2665, align 4
  %2779 = add i32 %2778, 1
  %2780 = zext i32 %2779 to i64
  store i64 %2780, i64* %RAX.i912, align 8
  %2781 = icmp eq i32 %2778, -1
  %2782 = icmp eq i32 %2779, 0
  %2783 = or i1 %2781, %2782
  %2784 = zext i1 %2783 to i8
  store i8 %2784, i8* %14, align 1
  %2785 = and i32 %2779, 255
  %2786 = tail call i32 @llvm.ctpop.i32(i32 %2785)
  %2787 = trunc i32 %2786 to i8
  %2788 = and i8 %2787, 1
  %2789 = xor i8 %2788, 1
  store i8 %2789, i8* %21, align 1
  %2790 = xor i32 %2779, %2778
  %2791 = lshr i32 %2790, 4
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  store i8 %2793, i8* %27, align 1
  %2794 = zext i1 %2782 to i8
  store i8 %2794, i8* %30, align 1
  %2795 = lshr i32 %2779, 31
  %2796 = trunc i32 %2795 to i8
  store i8 %2796, i8* %33, align 1
  %2797 = lshr i32 %2778, 31
  %2798 = xor i32 %2795, %2797
  %2799 = add nuw nsw i32 %2798, %2795
  %2800 = icmp eq i32 %2799, 2
  %2801 = zext i1 %2800 to i8
  store i8 %2801, i8* %39, align 1
  %2802 = add i64 %2776, 10
  store i64 %2802, i64* %3, align 8
  %2803 = load i64, i64* %2764, align 8
  store i64 %2803, i64* %RCX.i1103, align 8
  %2804 = add i64 %2662, -32
  %2805 = add i64 %2776, 14
  store i64 %2805, i64* %3, align 8
  %2806 = inttoptr i64 %2804 to i32*
  %2807 = load i32, i32* %2806, align 4
  %2808 = sext i32 %2807 to i64
  store i64 %2808, i64* %RDX.i1096, align 8
  %2809 = shl nsw i64 %2808, 2
  %2810 = add i64 %2809, %2803
  %2811 = add i64 %2776, 17
  store i64 %2811, i64* %3, align 8
  %2812 = inttoptr i64 %2810 to i32*
  store i32 %2779, i32* %2812, align 4
  %.pre105 = load i64, i64* %RBP.i, align 8
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_411c60

block_.L_411c60:                                  ; preds = %block_411c4f, %block_411c44
  %2813 = phi i64 [ %.pre106, %block_411c4f ], [ %2776, %block_411c44 ]
  %2814 = phi i64 [ %.pre105, %block_411c4f ], [ %2662, %block_411c44 ]
  %2815 = add i64 %2814, -32
  %2816 = add i64 %2813, 3
  store i64 %2816, i64* %3, align 8
  %2817 = inttoptr i64 %2815 to i32*
  %2818 = load i32, i32* %2817, align 4
  %2819 = add i32 %2818, 1
  %2820 = zext i32 %2819 to i64
  store i64 %2820, i64* %RAX.i912, align 8
  %2821 = icmp eq i32 %2818, -1
  %2822 = icmp eq i32 %2819, 0
  %2823 = or i1 %2821, %2822
  %2824 = zext i1 %2823 to i8
  store i8 %2824, i8* %14, align 1
  %2825 = and i32 %2819, 255
  %2826 = tail call i32 @llvm.ctpop.i32(i32 %2825)
  %2827 = trunc i32 %2826 to i8
  %2828 = and i8 %2827, 1
  %2829 = xor i8 %2828, 1
  store i8 %2829, i8* %21, align 1
  %2830 = xor i32 %2819, %2818
  %2831 = lshr i32 %2830, 4
  %2832 = trunc i32 %2831 to i8
  %2833 = and i8 %2832, 1
  store i8 %2833, i8* %27, align 1
  %2834 = zext i1 %2822 to i8
  store i8 %2834, i8* %30, align 1
  %2835 = lshr i32 %2819, 31
  %2836 = trunc i32 %2835 to i8
  store i8 %2836, i8* %33, align 1
  %2837 = lshr i32 %2818, 31
  %2838 = xor i32 %2835, %2837
  %2839 = add nuw nsw i32 %2838, %2835
  %2840 = icmp eq i32 %2839, 2
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %39, align 1
  %2842 = add i64 %2813, 9
  store i64 %2842, i64* %3, align 8
  store i32 %2819, i32* %2817, align 4
  %2843 = load i64, i64* %RBP.i, align 8
  %2844 = add i64 %2843, -32
  %2845 = load i64, i64* %3, align 8
  %2846 = add i64 %2845, 3
  store i64 %2846, i64* %3, align 8
  %2847 = inttoptr i64 %2844 to i32*
  %2848 = load i32, i32* %2847, align 4
  %2849 = zext i32 %2848 to i64
  store i64 %2849, i64* %RAX.i912, align 8
  %2850 = add i64 %2843, -16
  %2851 = add i64 %2845, 6
  store i64 %2851, i64* %3, align 8
  %2852 = inttoptr i64 %2850 to i32*
  %2853 = load i32, i32* %2852, align 4
  %2854 = sub i32 %2848, %2853
  %2855 = icmp ult i32 %2848, %2853
  %2856 = zext i1 %2855 to i8
  store i8 %2856, i8* %14, align 1
  %2857 = and i32 %2854, 255
  %2858 = tail call i32 @llvm.ctpop.i32(i32 %2857)
  %2859 = trunc i32 %2858 to i8
  %2860 = and i8 %2859, 1
  %2861 = xor i8 %2860, 1
  store i8 %2861, i8* %21, align 1
  %2862 = xor i32 %2853, %2848
  %2863 = xor i32 %2862, %2854
  %2864 = lshr i32 %2863, 4
  %2865 = trunc i32 %2864 to i8
  %2866 = and i8 %2865, 1
  store i8 %2866, i8* %27, align 1
  %2867 = icmp eq i32 %2854, 0
  %2868 = zext i1 %2867 to i8
  store i8 %2868, i8* %30, align 1
  %2869 = lshr i32 %2854, 31
  %2870 = trunc i32 %2869 to i8
  store i8 %2870, i8* %33, align 1
  %2871 = lshr i32 %2848, 31
  %2872 = lshr i32 %2853, 31
  %2873 = xor i32 %2872, %2871
  %2874 = xor i32 %2869, %2871
  %2875 = add nuw nsw i32 %2874, %2873
  %2876 = icmp eq i32 %2875, 2
  %2877 = zext i1 %2876 to i8
  store i8 %2877, i8* %39, align 1
  %2878 = icmp ne i8 %2870, 0
  %2879 = xor i1 %2878, %2876
  %.v135 = select i1 %2879, i64 23, i64 12
  %2880 = add i64 %2845, %.v135
  store i64 %2880, i64* %3, align 8
  br i1 %2879, label %block_.L_411c80, label %block_411c75

block_411c75:                                     ; preds = %block_.L_411c60
  %2881 = add i64 %2880, 3
  store i64 %2881, i64* %3, align 8
  %2882 = load i32, i32* %2847, align 4
  %2883 = zext i32 %2882 to i64
  store i64 %2883, i64* %RAX.i912, align 8
  %2884 = add i64 %2843, -4
  %2885 = add i64 %2880, 6
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2884 to i32*
  store i32 %2882, i32* %2886, align 4
  %2887 = load i64, i64* %3, align 8
  %2888 = add i64 %2887, 288
  store i64 %2888, i64* %3, align 8
  br label %block_.L_411d9b

block_.L_411c80:                                  ; preds = %block_.L_411c60
  %2889 = add i64 %2880, 277
  br label %block_.L_411d95

block_.L_411c85:                                  ; preds = %block_.L_411c0d, %block_411c27
  %2890 = phi i64 [ %2761, %block_411c27 ], [ %2703, %block_.L_411c0d ]
  %2891 = add i64 %2890, 3
  store i64 %2891, i64* %3, align 8
  %2892 = load i32, i32* %2665, align 4
  %2893 = add i32 %2892, 1
  %2894 = zext i32 %2893 to i64
  store i64 %2894, i64* %RAX.i912, align 8
  %2895 = icmp eq i32 %2892, -1
  %2896 = icmp eq i32 %2893, 0
  %2897 = or i1 %2895, %2896
  %2898 = zext i1 %2897 to i8
  store i8 %2898, i8* %14, align 1
  %2899 = and i32 %2893, 255
  %2900 = tail call i32 @llvm.ctpop.i32(i32 %2899)
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  %2903 = xor i8 %2902, 1
  store i8 %2903, i8* %21, align 1
  %2904 = xor i32 %2893, %2892
  %2905 = lshr i32 %2904, 4
  %2906 = trunc i32 %2905 to i8
  %2907 = and i8 %2906, 1
  store i8 %2907, i8* %27, align 1
  %2908 = zext i1 %2896 to i8
  store i8 %2908, i8* %30, align 1
  %2909 = lshr i32 %2893, 31
  %2910 = trunc i32 %2909 to i8
  store i8 %2910, i8* %33, align 1
  %2911 = lshr i32 %2892, 31
  %2912 = xor i32 %2909, %2911
  %2913 = add nuw nsw i32 %2912, %2909
  %2914 = icmp eq i32 %2913, 2
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %39, align 1
  %2916 = sext i32 %2893 to i64
  store i64 %2916, i64* %RCX.i1103, align 8
  %2917 = add nsw i64 %2916, 12099168
  %2918 = add i64 %2890, 17
  store i64 %2918, i64* %3, align 8
  %2919 = inttoptr i64 %2917 to i8*
  %2920 = load i8, i8* %2919, align 1
  %2921 = zext i8 %2920 to i64
  store i64 %2921, i64* %RAX.i912, align 8
  %2922 = zext i8 %2920 to i32
  %2923 = add i64 %2662, -12
  %2924 = add i64 %2890, 20
  store i64 %2924, i64* %3, align 8
  %2925 = inttoptr i64 %2923 to i32*
  %2926 = load i32, i32* %2925, align 4
  %2927 = sub i32 %2922, %2926
  %2928 = icmp ult i32 %2922, %2926
  %2929 = zext i1 %2928 to i8
  store i8 %2929, i8* %14, align 1
  %2930 = and i32 %2927, 255
  %2931 = tail call i32 @llvm.ctpop.i32(i32 %2930)
  %2932 = trunc i32 %2931 to i8
  %2933 = and i8 %2932, 1
  %2934 = xor i8 %2933, 1
  store i8 %2934, i8* %21, align 1
  %2935 = xor i32 %2926, %2922
  %2936 = xor i32 %2935, %2927
  %2937 = lshr i32 %2936, 4
  %2938 = trunc i32 %2937 to i8
  %2939 = and i8 %2938, 1
  store i8 %2939, i8* %27, align 1
  %2940 = icmp eq i32 %2927, 0
  %2941 = zext i1 %2940 to i8
  store i8 %2941, i8* %30, align 1
  %2942 = lshr i32 %2927, 31
  %2943 = trunc i32 %2942 to i8
  store i8 %2943, i8* %33, align 1
  %2944 = lshr i32 %2926, 31
  %2945 = add nuw nsw i32 %2942, %2944
  %2946 = icmp eq i32 %2945, 2
  %2947 = zext i1 %2946 to i8
  store i8 %2947, i8* %39, align 1
  %.v127 = select i1 %2940, i64 26, i64 267
  %2948 = add i64 %2890, %.v127
  store i64 %2948, i64* %3, align 8
  br i1 %2940, label %block_411c9f, label %block_.L_411d90

block_411c9f:                                     ; preds = %block_.L_411c85
  %2949 = add i64 %2948, 3
  store i64 %2949, i64* %3, align 8
  %2950 = load i32, i32* %2665, align 4
  %2951 = add i32 %2950, 1
  %2952 = zext i32 %2951 to i64
  store i64 %2952, i64* %RAX.i912, align 8
  %2953 = icmp eq i32 %2950, -1
  %2954 = icmp eq i32 %2951, 0
  %2955 = or i1 %2953, %2954
  %2956 = zext i1 %2955 to i8
  store i8 %2956, i8* %14, align 1
  %2957 = and i32 %2951, 255
  %2958 = tail call i32 @llvm.ctpop.i32(i32 %2957)
  %2959 = trunc i32 %2958 to i8
  %2960 = and i8 %2959, 1
  %2961 = xor i8 %2960, 1
  store i8 %2961, i8* %21, align 1
  %2962 = xor i32 %2951, %2950
  %2963 = lshr i32 %2962, 4
  %2964 = trunc i32 %2963 to i8
  %2965 = and i8 %2964, 1
  store i8 %2965, i8* %27, align 1
  %2966 = zext i1 %2954 to i8
  store i8 %2966, i8* %30, align 1
  %2967 = lshr i32 %2951, 31
  %2968 = trunc i32 %2967 to i8
  store i8 %2968, i8* %33, align 1
  %2969 = lshr i32 %2950, 31
  %2970 = xor i32 %2967, %2969
  %2971 = add nuw nsw i32 %2970, %2967
  %2972 = icmp eq i32 %2971, 2
  %2973 = zext i1 %2972 to i8
  store i8 %2973, i8* %39, align 1
  %2974 = sext i32 %2951 to i64
  store i64 %2974, i64* %RCX.i1103, align 8
  %2975 = shl nsw i64 %2974, 2
  %2976 = add nsw i64 %2975, 11187184
  %2977 = add i64 %2948, 16
  store i64 %2977, i64* %3, align 8
  %2978 = inttoptr i64 %2976 to i32*
  %2979 = load i32, i32* %2978, align 4
  %2980 = zext i32 %2979 to i64
  store i64 %2980, i64* %RAX.i912, align 8
  %2981 = add i64 %2662, -64
  %2982 = add i64 %2948, 19
  store i64 %2982, i64* %3, align 8
  %2983 = inttoptr i64 %2981 to i32*
  store i32 %2979, i32* %2983, align 4
  %2984 = load i64, i64* %RBP.i, align 8
  %2985 = add i64 %2984, -28
  %2986 = load i64, i64* %3, align 8
  %2987 = add i64 %2986, 7
  store i64 %2987, i64* %3, align 8
  %2988 = inttoptr i64 %2985 to i32*
  store i32 0, i32* %2988, align 4
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_411cb9

block_.L_411cb9:                                  ; preds = %block_.L_411d78, %block_411c9f
  %2989 = phi i64 [ %3309, %block_.L_411d78 ], [ %.pre107, %block_411c9f ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i912, align 8
  %2990 = load i64, i64* %RBP.i, align 8
  %2991 = add i64 %2990, -28
  %2992 = add i64 %2989, 13
  store i64 %2992, i64* %3, align 8
  %2993 = inttoptr i64 %2991 to i32*
  %2994 = load i32, i32* %2993, align 4
  %2995 = zext i32 %2994 to i64
  store i64 %2995, i64* %RCX.i1103, align 8
  %2996 = add i64 %2990, -64
  %2997 = add i64 %2989, 17
  store i64 %2997, i64* %3, align 8
  %2998 = inttoptr i64 %2996 to i32*
  %2999 = load i32, i32* %2998, align 4
  %3000 = sext i32 %2999 to i64
  %3001 = mul nsw i64 %3000, 744
  store i64 %3001, i64* %RDX.i1096, align 8
  %3002 = lshr i64 %3001, 63
  %3003 = add i64 %3001, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3003, i64* %RAX.i912, align 8
  %3004 = icmp ult i64 %3003, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3005 = icmp ult i64 %3003, %3001
  %3006 = or i1 %3004, %3005
  %3007 = zext i1 %3006 to i8
  store i8 %3007, i8* %14, align 1
  %3008 = trunc i64 %3003 to i32
  %3009 = and i32 %3008, 248
  %3010 = tail call i32 @llvm.ctpop.i32(i32 %3009)
  %3011 = trunc i32 %3010 to i8
  %3012 = and i8 %3011, 1
  %3013 = xor i8 %3012, 1
  store i8 %3013, i8* %21, align 1
  %3014 = xor i64 %3001, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3015 = xor i64 %3014, %3003
  %3016 = lshr i64 %3015, 4
  %3017 = trunc i64 %3016 to i8
  %3018 = and i8 %3017, 1
  store i8 %3018, i8* %27, align 1
  %3019 = icmp eq i64 %3003, 0
  %3020 = zext i1 %3019 to i8
  store i8 %3020, i8* %30, align 1
  %3021 = lshr i64 %3003, 63
  %3022 = trunc i64 %3021 to i8
  store i8 %3022, i8* %33, align 1
  %3023 = xor i64 %3021, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3024 = xor i64 %3021, %3002
  %3025 = add nuw nsw i64 %3023, %3024
  %3026 = icmp eq i64 %3025, 2
  %3027 = zext i1 %3026 to i8
  store i8 %3027, i8* %39, align 1
  %3028 = add i64 %3001, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %3029 = add i64 %2989, 30
  store i64 %3029, i64* %3, align 8
  %3030 = inttoptr i64 %3028 to i32*
  %3031 = load i32, i32* %3030, align 4
  %3032 = sub i32 %2994, %3031
  %3033 = icmp ult i32 %2994, %3031
  %3034 = zext i1 %3033 to i8
  store i8 %3034, i8* %14, align 1
  %3035 = and i32 %3032, 255
  %3036 = tail call i32 @llvm.ctpop.i32(i32 %3035)
  %3037 = trunc i32 %3036 to i8
  %3038 = and i8 %3037, 1
  %3039 = xor i8 %3038, 1
  store i8 %3039, i8* %21, align 1
  %3040 = xor i32 %3031, %2994
  %3041 = xor i32 %3040, %3032
  %3042 = lshr i32 %3041, 4
  %3043 = trunc i32 %3042 to i8
  %3044 = and i8 %3043, 1
  store i8 %3044, i8* %27, align 1
  %3045 = icmp eq i32 %3032, 0
  %3046 = zext i1 %3045 to i8
  store i8 %3046, i8* %30, align 1
  %3047 = lshr i32 %3032, 31
  %3048 = trunc i32 %3047 to i8
  store i8 %3048, i8* %33, align 1
  %3049 = lshr i32 %2994, 31
  %3050 = lshr i32 %3031, 31
  %3051 = xor i32 %3050, %3049
  %3052 = xor i32 %3047, %3049
  %3053 = add nuw nsw i32 %3052, %3051
  %3054 = icmp eq i32 %3053, 2
  %3055 = zext i1 %3054 to i8
  store i8 %3055, i8* %39, align 1
  %3056 = icmp ne i8 %3048, 0
  %3057 = xor i1 %3056, %3054
  %.v128 = select i1 %3057, i64 36, i64 210
  %3058 = add i64 %2989, %.v128
  store i64 %3058, i64* %3, align 8
  br i1 %3057, label %block_411cdd, label %block_.L_411d8b

block_411cdd:                                     ; preds = %block_.L_411cb9
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i912, align 8
  %3059 = load i64, i64* %RBP.i, align 8
  %3060 = add i64 %3059, -64
  %3061 = add i64 %3058, 14
  store i64 %3061, i64* %3, align 8
  %3062 = inttoptr i64 %3060 to i32*
  %3063 = load i32, i32* %3062, align 4
  %3064 = sext i32 %3063 to i64
  %3065 = mul nsw i64 %3064, 744
  store i64 %3065, i64* %RCX.i1103, align 8
  %3066 = lshr i64 %3065, 63
  %3067 = add i64 %3065, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3067, i64* %RAX.i912, align 8
  %3068 = icmp ult i64 %3067, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3069 = icmp ult i64 %3067, %3065
  %3070 = or i1 %3068, %3069
  %3071 = zext i1 %3070 to i8
  store i8 %3071, i8* %14, align 1
  %3072 = trunc i64 %3067 to i32
  %3073 = and i32 %3072, 248
  %3074 = tail call i32 @llvm.ctpop.i32(i32 %3073)
  %3075 = trunc i32 %3074 to i8
  %3076 = and i8 %3075, 1
  %3077 = xor i8 %3076, 1
  store i8 %3077, i8* %21, align 1
  %3078 = xor i64 %3065, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3079 = xor i64 %3078, %3067
  %3080 = lshr i64 %3079, 4
  %3081 = trunc i64 %3080 to i8
  %3082 = and i8 %3081, 1
  store i8 %3082, i8* %27, align 1
  %3083 = icmp eq i64 %3067, 0
  %3084 = zext i1 %3083 to i8
  store i8 %3084, i8* %30, align 1
  %3085 = lshr i64 %3067, 63
  %3086 = trunc i64 %3085 to i8
  store i8 %3086, i8* %33, align 1
  %3087 = xor i64 %3085, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3088 = xor i64 %3085, %3066
  %3089 = add nuw nsw i64 %3087, %3088
  %3090 = icmp eq i64 %3089, 2
  %3091 = zext i1 %3090 to i8
  store i8 %3091, i8* %39, align 1
  %3092 = add i64 %3059, -28
  %3093 = add i64 %3058, 28
  store i64 %3093, i64* %3, align 8
  %3094 = inttoptr i64 %3092 to i32*
  %3095 = load i32, i32* %3094, align 4
  %3096 = sext i32 %3095 to i64
  store i64 %3096, i64* %RCX.i1103, align 8
  %3097 = shl nsw i64 %3096, 2
  %3098 = add i64 %3065, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 16)
  %3099 = add i64 %3098, %3097
  %3100 = add i64 %3058, 32
  store i64 %3100, i64* %3, align 8
  %3101 = inttoptr i64 %3099 to i32*
  %3102 = load i32, i32* %3101, align 4
  %3103 = zext i32 %3102 to i64
  store i64 %3103, i64* %RDX.i1096, align 8
  %3104 = add i64 %3059, -68
  %3105 = add i64 %3058, 35
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3104 to i32*
  store i32 %3102, i32* %3106, align 4
  %3107 = load i64, i64* %RBP.i, align 8
  %3108 = add i64 %3107, -68
  %3109 = load i64, i64* %3, align 8
  %3110 = add i64 %3109, 4
  store i64 %3110, i64* %3, align 8
  %3111 = inttoptr i64 %3108 to i32*
  %3112 = load i32, i32* %3111, align 4
  %3113 = sext i32 %3112 to i64
  store i64 %3113, i64* %RAX.i912, align 8
  %3114 = add nsw i64 %3113, 12099168
  %3115 = add i64 %3109, 12
  store i64 %3115, i64* %3, align 8
  %3116 = inttoptr i64 %3114 to i8*
  %3117 = load i8, i8* %3116, align 1
  %3118 = zext i8 %3117 to i64
  store i64 %3118, i64* %RDX.i1096, align 8
  %3119 = zext i8 %3117 to i32
  store i8 0, i8* %14, align 1
  %3120 = tail call i32 @llvm.ctpop.i32(i32 %3119)
  %3121 = trunc i32 %3120 to i8
  %3122 = and i8 %3121, 1
  %3123 = xor i8 %3122, 1
  store i8 %3123, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3124 = icmp eq i8 %3117, 0
  %3125 = zext i1 %3124 to i8
  store i8 %3125, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v129 = select i1 %3124, i64 21, i64 120
  %3126 = add i64 %3109, %.v129
  store i64 %3126, i64* %3, align 8
  br i1 %3124, label %block_411d15, label %block_.L_411d78

block_411d15:                                     ; preds = %block_411cdd
  %3127 = add i64 %3126, 4
  store i64 %3127, i64* %3, align 8
  %3128 = load i32, i32* %3111, align 4
  %3129 = sext i32 %3128 to i64
  store i64 %3129, i64* %RAX.i912, align 8
  %3130 = shl nsw i64 %3129, 2
  %3131 = add nsw i64 %3130, 11185584
  %3132 = add i64 %3126, 11
  store i64 %3132, i64* %3, align 8
  %3133 = inttoptr i64 %3131 to i32*
  %3134 = load i32, i32* %3133, align 4
  %3135 = zext i32 %3134 to i64
  store i64 %3135, i64* %RCX.i1103, align 8
  %3136 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %3137 = sub i32 %3134, %3136
  %3138 = icmp ult i32 %3134, %3136
  %3139 = zext i1 %3138 to i8
  store i8 %3139, i8* %14, align 1
  %3140 = and i32 %3137, 255
  %3141 = tail call i32 @llvm.ctpop.i32(i32 %3140)
  %3142 = trunc i32 %3141 to i8
  %3143 = and i8 %3142, 1
  %3144 = xor i8 %3143, 1
  store i8 %3144, i8* %21, align 1
  %3145 = xor i32 %3136, %3134
  %3146 = xor i32 %3145, %3137
  %3147 = lshr i32 %3146, 4
  %3148 = trunc i32 %3147 to i8
  %3149 = and i8 %3148, 1
  store i8 %3149, i8* %27, align 1
  %3150 = icmp eq i32 %3137, 0
  %3151 = zext i1 %3150 to i8
  store i8 %3151, i8* %30, align 1
  %3152 = lshr i32 %3137, 31
  %3153 = trunc i32 %3152 to i8
  store i8 %3153, i8* %33, align 1
  %3154 = lshr i32 %3134, 31
  %3155 = lshr i32 %3136, 31
  %3156 = xor i32 %3155, %3154
  %3157 = xor i32 %3152, %3154
  %3158 = add nuw nsw i32 %3157, %3156
  %3159 = icmp eq i32 %3158, 2
  %3160 = zext i1 %3159 to i8
  store i8 %3160, i8* %39, align 1
  %.v130 = select i1 %3150, i64 99, i64 24
  %3161 = add i64 %3126, %.v130
  store i64 %3161, i64* %3, align 8
  br i1 %3150, label %block_.L_411d78, label %block_411d2d

block_411d2d:                                     ; preds = %block_411d15
  %3162 = add i64 %3107, -24
  %3163 = add i64 %3161, 5
  store i64 %3163, i64* %3, align 8
  %3164 = inttoptr i64 %3162 to i64*
  %3165 = load i64, i64* %3164, align 8
  store i8 0, i8* %14, align 1
  %3166 = trunc i64 %3165 to i32
  %3167 = and i32 %3166, 255
  %3168 = tail call i32 @llvm.ctpop.i32(i32 %3167)
  %3169 = trunc i32 %3168 to i8
  %3170 = and i8 %3169, 1
  %3171 = xor i8 %3170, 1
  store i8 %3171, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3172 = icmp eq i64 %3165, 0
  %3173 = zext i1 %3172 to i8
  store i8 %3173, i8* %30, align 1
  %3174 = lshr i64 %3165, 63
  %3175 = trunc i64 %3174 to i8
  store i8 %3175, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v131 = select i1 %3172, i64 25, i64 11
  %3176 = add i64 %3161, %.v131
  store i64 %3176, i64* %3, align 8
  br i1 %3172, label %block_.L_411d46, label %block_411d38

block_411d38:                                     ; preds = %block_411d2d
  %3177 = add i64 %3176, 3
  store i64 %3177, i64* %3, align 8
  %3178 = load i32, i32* %3111, align 4
  %3179 = zext i32 %3178 to i64
  store i64 %3179, i64* %RAX.i912, align 8
  %3180 = add i64 %3176, 7
  store i64 %3180, i64* %3, align 8
  %3181 = load i64, i64* %3164, align 8
  store i64 %3181, i64* %RCX.i1103, align 8
  %3182 = add i64 %3107, -32
  %3183 = add i64 %3176, 11
  store i64 %3183, i64* %3, align 8
  %3184 = inttoptr i64 %3182 to i32*
  %3185 = load i32, i32* %3184, align 4
  %3186 = sext i32 %3185 to i64
  store i64 %3186, i64* %RDX.i1096, align 8
  %3187 = shl nsw i64 %3186, 2
  %3188 = add i64 %3187, %3181
  %3189 = add i64 %3176, 14
  store i64 %3189, i64* %3, align 8
  %3190 = inttoptr i64 %3188 to i32*
  store i32 %3178, i32* %3190, align 4
  %.pre108 = load i64, i64* %RBP.i, align 8
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_411d46

block_.L_411d46:                                  ; preds = %block_411d38, %block_411d2d
  %3191 = phi i64 [ %.pre109, %block_411d38 ], [ %3176, %block_411d2d ]
  %3192 = phi i64 [ %.pre108, %block_411d38 ], [ %3107, %block_411d2d ]
  %3193 = add i64 %3192, -32
  %3194 = add i64 %3191, 3
  store i64 %3194, i64* %3, align 8
  %3195 = inttoptr i64 %3193 to i32*
  %3196 = load i32, i32* %3195, align 4
  %3197 = add i32 %3196, 1
  %3198 = zext i32 %3197 to i64
  store i64 %3198, i64* %RAX.i912, align 8
  %3199 = icmp eq i32 %3196, -1
  %3200 = icmp eq i32 %3197, 0
  %3201 = or i1 %3199, %3200
  %3202 = zext i1 %3201 to i8
  store i8 %3202, i8* %14, align 1
  %3203 = and i32 %3197, 255
  %3204 = tail call i32 @llvm.ctpop.i32(i32 %3203)
  %3205 = trunc i32 %3204 to i8
  %3206 = and i8 %3205, 1
  %3207 = xor i8 %3206, 1
  store i8 %3207, i8* %21, align 1
  %3208 = xor i32 %3197, %3196
  %3209 = lshr i32 %3208, 4
  %3210 = trunc i32 %3209 to i8
  %3211 = and i8 %3210, 1
  store i8 %3211, i8* %27, align 1
  %3212 = zext i1 %3200 to i8
  store i8 %3212, i8* %30, align 1
  %3213 = lshr i32 %3197, 31
  %3214 = trunc i32 %3213 to i8
  store i8 %3214, i8* %33, align 1
  %3215 = lshr i32 %3196, 31
  %3216 = xor i32 %3213, %3215
  %3217 = add nuw nsw i32 %3216, %3213
  %3218 = icmp eq i32 %3217, 2
  %3219 = zext i1 %3218 to i8
  store i8 %3219, i8* %39, align 1
  %3220 = add i64 %3191, 9
  store i64 %3220, i64* %3, align 8
  store i32 %3197, i32* %3195, align 4
  %3221 = load i64, i64* %RBP.i, align 8
  %3222 = add i64 %3221, -32
  %3223 = load i64, i64* %3, align 8
  %3224 = add i64 %3223, 3
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3222 to i32*
  %3226 = load i32, i32* %3225, align 4
  %3227 = zext i32 %3226 to i64
  store i64 %3227, i64* %RAX.i912, align 8
  %3228 = add i64 %3221, -16
  %3229 = add i64 %3223, 6
  store i64 %3229, i64* %3, align 8
  %3230 = inttoptr i64 %3228 to i32*
  %3231 = load i32, i32* %3230, align 4
  %3232 = sub i32 %3226, %3231
  %3233 = icmp ult i32 %3226, %3231
  %3234 = zext i1 %3233 to i8
  store i8 %3234, i8* %14, align 1
  %3235 = and i32 %3232, 255
  %3236 = tail call i32 @llvm.ctpop.i32(i32 %3235)
  %3237 = trunc i32 %3236 to i8
  %3238 = and i8 %3237, 1
  %3239 = xor i8 %3238, 1
  store i8 %3239, i8* %21, align 1
  %3240 = xor i32 %3231, %3226
  %3241 = xor i32 %3240, %3232
  %3242 = lshr i32 %3241, 4
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  store i8 %3244, i8* %27, align 1
  %3245 = icmp eq i32 %3232, 0
  %3246 = zext i1 %3245 to i8
  store i8 %3246, i8* %30, align 1
  %3247 = lshr i32 %3232, 31
  %3248 = trunc i32 %3247 to i8
  store i8 %3248, i8* %33, align 1
  %3249 = lshr i32 %3226, 31
  %3250 = lshr i32 %3231, 31
  %3251 = xor i32 %3250, %3249
  %3252 = xor i32 %3247, %3249
  %3253 = add nuw nsw i32 %3252, %3251
  %3254 = icmp eq i32 %3253, 2
  %3255 = zext i1 %3254 to i8
  store i8 %3255, i8* %39, align 1
  %3256 = icmp ne i8 %3248, 0
  %3257 = xor i1 %3256, %3254
  %.v132 = select i1 %3257, i64 23, i64 12
  %3258 = add i64 %3223, %.v132
  store i64 %3258, i64* %3, align 8
  br i1 %3257, label %block_.L_411d66, label %block_411d5b

block_411d5b:                                     ; preds = %block_.L_411d46
  %3259 = add i64 %3258, 3
  store i64 %3259, i64* %3, align 8
  %3260 = load i32, i32* %3225, align 4
  %3261 = zext i32 %3260 to i64
  store i64 %3261, i64* %RAX.i912, align 8
  %3262 = add i64 %3221, -4
  %3263 = add i64 %3258, 6
  store i64 %3263, i64* %3, align 8
  %3264 = inttoptr i64 %3262 to i32*
  store i32 %3260, i32* %3264, align 4
  %3265 = load i64, i64* %3, align 8
  %3266 = add i64 %3265, 58
  store i64 %3266, i64* %3, align 8
  br label %block_.L_411d9b

block_.L_411d66:                                  ; preds = %block_.L_411d46
  %3267 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %3268 = zext i32 %3267 to i64
  store i64 %3268, i64* %RAX.i912, align 8
  %3269 = add i64 %3221, -68
  %3270 = add i64 %3258, 11
  store i64 %3270, i64* %3, align 8
  %3271 = inttoptr i64 %3269 to i32*
  %3272 = load i32, i32* %3271, align 4
  %3273 = sext i32 %3272 to i64
  store i64 %3273, i64* %RCX.i1103, align 8
  %3274 = shl nsw i64 %3273, 2
  %3275 = add nsw i64 %3274, 11185584
  %3276 = add i64 %3258, 18
  store i64 %3276, i64* %3, align 8
  %3277 = inttoptr i64 %3275 to i32*
  store i32 %3267, i32* %3277, align 4
  %.pre110 = load i64, i64* %3, align 8
  %.pre111 = load i64, i64* %RBP.i, align 8
  br label %block_.L_411d78

block_.L_411d78:                                  ; preds = %block_411cdd, %block_.L_411d66, %block_411d15
  %3278 = phi i64 [ %.pre111, %block_.L_411d66 ], [ %3107, %block_411d15 ], [ %3107, %block_411cdd ]
  %3279 = phi i64 [ %.pre110, %block_.L_411d66 ], [ %3161, %block_411d15 ], [ %3126, %block_411cdd ]
  %3280 = add i64 %3278, -28
  %3281 = add i64 %3279, 8
  store i64 %3281, i64* %3, align 8
  %3282 = inttoptr i64 %3280 to i32*
  %3283 = load i32, i32* %3282, align 4
  %3284 = add i32 %3283, 1
  %3285 = zext i32 %3284 to i64
  store i64 %3285, i64* %RAX.i912, align 8
  %3286 = icmp eq i32 %3283, -1
  %3287 = icmp eq i32 %3284, 0
  %3288 = or i1 %3286, %3287
  %3289 = zext i1 %3288 to i8
  store i8 %3289, i8* %14, align 1
  %3290 = and i32 %3284, 255
  %3291 = tail call i32 @llvm.ctpop.i32(i32 %3290)
  %3292 = trunc i32 %3291 to i8
  %3293 = and i8 %3292, 1
  %3294 = xor i8 %3293, 1
  store i8 %3294, i8* %21, align 1
  %3295 = xor i32 %3284, %3283
  %3296 = lshr i32 %3295, 4
  %3297 = trunc i32 %3296 to i8
  %3298 = and i8 %3297, 1
  store i8 %3298, i8* %27, align 1
  %3299 = zext i1 %3287 to i8
  store i8 %3299, i8* %30, align 1
  %3300 = lshr i32 %3284, 31
  %3301 = trunc i32 %3300 to i8
  store i8 %3301, i8* %33, align 1
  %3302 = lshr i32 %3283, 31
  %3303 = xor i32 %3300, %3302
  %3304 = add nuw nsw i32 %3303, %3300
  %3305 = icmp eq i32 %3304, 2
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %39, align 1
  %3307 = add i64 %3279, 14
  store i64 %3307, i64* %3, align 8
  store i32 %3284, i32* %3282, align 4
  %3308 = load i64, i64* %3, align 8
  %3309 = add i64 %3308, -205
  store i64 %3309, i64* %3, align 8
  br label %block_.L_411cb9

block_.L_411d8b:                                  ; preds = %block_.L_411cb9
  %3310 = add i64 %3058, 5
  store i64 %3310, i64* %3, align 8
  %.pre112.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_411d90

block_.L_411d90:                                  ; preds = %block_.L_411c85, %block_.L_411d8b
  %.pre112 = phi i64 [ %.pre112.pre, %block_.L_411d8b ], [ %2662, %block_.L_411c85 ]
  %3311 = phi i64 [ %3310, %block_.L_411d8b ], [ %2948, %block_.L_411c85 ]
  %3312 = add i64 %3311, 5
  store i64 %3312, i64* %3, align 8
  br label %block_.L_411d95

block_.L_411d95:                                  ; preds = %block_.L_411d90, %block_.L_411c80
  %3313 = phi i64 [ %2843, %block_.L_411c80 ], [ %.pre112, %block_.L_411d90 ]
  %storemerge48 = phi i64 [ %2889, %block_.L_411c80 ], [ %3312, %block_.L_411d90 ]
  %3314 = add i64 %3313, -32
  %3315 = add i64 %storemerge48, 3
  store i64 %3315, i64* %3, align 8
  %3316 = inttoptr i64 %3314 to i32*
  %3317 = load i32, i32* %3316, align 4
  %3318 = zext i32 %3317 to i64
  store i64 %3318, i64* %RAX.i912, align 8
  %3319 = add i64 %3313, -4
  %3320 = add i64 %storemerge48, 6
  store i64 %3320, i64* %3, align 8
  %3321 = inttoptr i64 %3319 to i32*
  store i32 %3317, i32* %3321, align 4
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_411d9b

block_.L_411d9b:                                  ; preds = %block_.L_411d95, %block_411d5b, %block_411c75, %block_411bd3, %block_411ad6, %block_411a34, %block_411937, %block_411895, %block_411798, %block_4116f3, %block_4116d9
  %3322 = phi i64 [ %.pre113, %block_.L_411d95 ], [ %3266, %block_411d5b ], [ %2888, %block_411c75 ], [ %2615, %block_411bd3 ], [ %2202, %block_411ad6 ], [ %1929, %block_411a34 ], [ %1519, %block_411937 ], [ %1249, %block_411895 ], [ %836, %block_411798 ], [ %575, %block_4116f3 ], [ %511, %block_4116d9 ]
  %MEMORY.32 = phi %struct.Memory* [ %MEMORY.3, %block_.L_411d95 ], [ %MEMORY.3, %block_411d5b ], [ %MEMORY.3, %block_411c75 ], [ %MEMORY.3, %block_411bd3 ], [ %MEMORY.3, %block_411ad6 ], [ %MEMORY.3, %block_411a34 ], [ %MEMORY.3, %block_411937 ], [ %MEMORY.3, %block_411895 ], [ %MEMORY.3, %block_411798 ], [ %call2_411700, %block_4116f3 ], [ %call2_4116c7, %block_4116d9 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3323 = load i64, i64* %RBP.i, align 8
  %3324 = add i64 %3323, -4
  %3325 = add i64 %3322, 3
  store i64 %3325, i64* %3, align 8
  %3326 = inttoptr i64 %3324 to i32*
  %3327 = load i32, i32* %3326, align 4
  %3328 = zext i32 %3327 to i64
  store i64 %3328, i64* %RAX.i, align 8
  %3329 = load i64, i64* %6, align 8
  %3330 = add i64 %3329, 112
  store i64 %3330, i64* %6, align 8
  %3331 = icmp ugt i64 %3329, -113
  %3332 = zext i1 %3331 to i8
  store i8 %3332, i8* %14, align 1
  %3333 = trunc i64 %3330 to i32
  %3334 = and i32 %3333, 255
  %3335 = tail call i32 @llvm.ctpop.i32(i32 %3334)
  %3336 = trunc i32 %3335 to i8
  %3337 = and i8 %3336, 1
  %3338 = xor i8 %3337, 1
  store i8 %3338, i8* %21, align 1
  %3339 = xor i64 %3329, 16
  %3340 = xor i64 %3339, %3330
  %3341 = lshr i64 %3340, 4
  %3342 = trunc i64 %3341 to i8
  %3343 = and i8 %3342, 1
  store i8 %3343, i8* %27, align 1
  %3344 = icmp eq i64 %3330, 0
  %3345 = zext i1 %3344 to i8
  store i8 %3345, i8* %30, align 1
  %3346 = lshr i64 %3330, 63
  %3347 = trunc i64 %3346 to i8
  store i8 %3347, i8* %33, align 1
  %3348 = lshr i64 %3329, 63
  %3349 = xor i64 %3346, %3348
  %3350 = add nuw nsw i64 %3349, %3346
  %3351 = icmp eq i64 %3350, 2
  %3352 = zext i1 %3351 to i8
  store i8 %3352, i8* %39, align 1
  %3353 = add i64 %3322, 8
  store i64 %3353, i64* %3, align 8
  %3354 = add i64 %3329, 120
  %3355 = inttoptr i64 %3330 to i64*
  %3356 = load i64, i64* %3355, align 8
  store i64 %3356, i64* %RBP.i, align 8
  store i64 %3354, i64* %6, align 8
  %3357 = add i64 %3322, 9
  store i64 %3357, i64* %3, align 8
  %3358 = inttoptr i64 %3354 to i64*
  %3359 = load i64, i64* %3358, align 8
  store i64 %3359, i64* %3, align 8
  %3360 = add i64 %3329, 128
  store i64 %3360, i64* %6, align 8
  ret %struct.Memory* %MEMORY.32
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
define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 112
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_jne_.L_4115e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41163f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x63b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1595, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a4be___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a4be_type* @G__0x57a4be to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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
define %struct.Memory* @routine_callq_.abortgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_je_.L_411653(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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
define %struct.Memory* @routine_jne_.L_411658(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4116b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x63c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1596, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a4f4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a4f4_type* @G__0x57a4f4 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_movl_MINUS0x70__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4116e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_callq_.fastlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jl_.L_4116e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411d9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4116e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x14__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -20
  %10 = icmp ult i32 %8, 20
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_41170d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.slow_approxlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x99da04___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__0x99da04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xaaadb0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11185584
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_addl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -21
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
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
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jne_.L_4117bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11185584
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_4117bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_411783(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_jl_.L_4117a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -21
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
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
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xaaadb0___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11185584
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4118cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_4118ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 744
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 12
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
define %struct.Memory* @routine_jge_.L_4118c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 744
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 16
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4118b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaaadb0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11185584
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x99da04___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_4118b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_411880(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_jl_.L_4118a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4118b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4117f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4118ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41195e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41195e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_411922(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_411942(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_411a6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411a69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_411a64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411a51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_411a51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_411a1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_411a3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411a56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411992(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411a69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 20
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411afd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_411afd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_411ac1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_411ae1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 20
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411c0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411c08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_jge_.L_411c03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411bf0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_411bf0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_411bbe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_411bde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411bf5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411b31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411c08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411c85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_411c85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_411c60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_411c80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411d95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411d90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_jge_.L_411d8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411d78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_411d78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_411d46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_jl_.L_411d66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411d7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411cb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411d90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -113
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
