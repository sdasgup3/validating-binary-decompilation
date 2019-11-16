; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99da04_type = type <{ [4 x i8] }>
%G_0x99da08_type = type <{ [4 x i8] }>
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
@G_0x99da08 = local_unnamed_addr global %G_0x99da08_type zeroinitializer
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57a4be = global %G__0x57a4be_type zeroinitializer
@G__0x57a4f4 = global %G__0x57a4f4_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40fc80.fastlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @accuratelib(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -152
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 144
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
  %43 = add i64 %10, 13
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
  %EDX.i1342 = bitcast %union.anon* %52 to i32*
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -16
  %55 = load i32, i32* %EDX.i1342, align 4
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 3
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %58, align 4
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1339 = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -24
  %62 = load i64, i64* %RCX.i1339, align 8
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -36
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 7
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %67 to i32*
  store i32 0, i32* %70, align 4
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -68
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 7
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %72 to i32*
  store i32 0, i32* %75, align 4
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -8
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %77 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %RCX.i1339, align 8
  %RDX.i1330 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %83 = add nsw i64 %82, 12099168
  %84 = add i64 %78, 12
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i8*
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i64
  store i64 %87, i64* %RDX.i1330, align 8
  %88 = zext i8 %86 to i32
  store i8 0, i8* %14, align 1
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88)
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %93 = icmp eq i8 %86, 0
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v190 = select i1 %93, i64 21, i64 26
  %95 = add i64 %78, %.v190
  store i64 %95, i64* %3, align 8
  br i1 %93, label %block_4120bb, label %block_.L_4120c0

block_4120bb:                                     ; preds = %entry
  %96 = add i64 %95, 94
  store i64 %96, i64* %3, align 8
  br label %block_.L_412119

block_.L_4120c0:                                  ; preds = %entry
  %RDI.i1323 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i1323, align 8
  %RSI.i1321 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 1745, i64* %RSI.i1321, align 8
  store i64 ptrtoint (%G__0x57a4be_type* @G__0x57a4be to i64), i64* %RDX.i1330, align 8
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1317 = getelementptr inbounds %union.anon, %union.anon* %97, i64 0, i32 0
  store i64 20, i64* %RAX.i1317, align 8
  %98 = add i64 %95, 33
  store i64 %98, i64* %3, align 8
  %99 = load i32, i32* %80, align 4
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RCX.i1339, align 8
  %EAX.i1311 = bitcast %union.anon* %97 to i32*
  %101 = add i64 %76, -96
  %102 = add i64 %95, 36
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i32*
  store i32 20, i32* %103, align 4
  %ECX.i1308 = bitcast %union.anon* %59 to i32*
  %104 = load i32, i32* %ECX.i1308, align 4
  %105 = zext i32 %104 to i64
  %106 = load i64, i64* %3, align 8
  store i64 %105, i64* %RAX.i1317, align 8
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -104
  %109 = load i64, i64* %RDX.i1330, align 8
  %110 = add i64 %106, 6
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %3, align 8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %114 = load i32, i32* %EAX.i1311, align 8
  %115 = sext i32 %114 to i64
  %116 = lshr i64 %115, 32
  store i64 %116, i64* %113, align 8
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -96
  %119 = add i64 %112, 4
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RCX.i1339, align 8
  %123 = add i64 %112, 6
  store i64 %123, i64* %3, align 8
  %124 = zext i32 %114 to i64
  %125 = sext i32 %121 to i64
  %126 = shl nuw i64 %116, 32
  %127 = or i64 %126, %124
  %128 = sdiv i64 %127, %125
  %129 = shl i64 %128, 32
  %130 = ashr exact i64 %129, 32
  %131 = icmp eq i64 %128, %130
  br i1 %131, label %134, label %132

; <label>:132:                                    ; preds = %block_.L_4120c0
  %133 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %123, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i1317, align 8
  %.pre129 = load i64, i64* %3, align 8
  %.pre130 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1297

; <label>:134:                                    ; preds = %block_.L_4120c0
  %135 = srem i64 %127, %125
  %136 = and i64 %128, 4294967295
  store i64 %136, i64* %RAX.i1317, align 8
  %137 = and i64 %135, 4294967295
  store i64 %137, i64* %RDX.i1330, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit1297

routine_idivl__ecx.exit1297:                      ; preds = %134, %132
  %138 = phi i64 [ %.pre130, %132 ], [ %117, %134 ]
  %139 = phi i64 [ %.pre129, %132 ], [ %123, %134 ]
  %140 = phi i64 [ %.pre, %132 ], [ %136, %134 ]
  %141 = phi %struct.Memory* [ %133, %132 ], [ %2, %134 ]
  %142 = trunc i64 %140 to i32
  %143 = add i32 %142, -1
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RAX.i1317, align 8
  %145 = icmp eq i32 %142, 0
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %14, align 1
  %147 = and i32 %143, 255
  %148 = tail call i32 @llvm.ctpop.i32(i32 %147)
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  store i8 %151, i8* %21, align 1
  %152 = xor i32 %143, %142
  %153 = lshr i32 %152, 4
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  store i8 %155, i8* %27, align 1
  %156 = icmp eq i32 %143, 0
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %30, align 1
  %158 = lshr i32 %143, 31
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %33, align 1
  %160 = lshr i32 %142, 31
  %161 = xor i32 %158, %160
  %162 = add nuw nsw i32 %161, %160
  %163 = icmp eq i32 %162, 2
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %39, align 1
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1291 = bitcast %union.anon* %165 to i32*
  %166 = getelementptr inbounds %union.anon, %union.anon* %165, i64 0, i32 0
  %167 = add i64 %138, -8
  %168 = add i64 %139, 7
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %166, align 8
  %172 = add i64 %138, -108
  %173 = add i64 %139, 10
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i32*
  store i32 %143, i32* %174, align 4
  %175 = load i32, i32* %R8D.i1291, align 4
  %176 = zext i32 %175 to i64
  %177 = load i64, i64* %3, align 8
  store i64 %176, i64* %RAX.i1317, align 8
  %178 = sext i32 %175 to i64
  %179 = lshr i64 %178, 32
  store i64 %179, i64* %113, align 8
  %180 = load i32, i32* %ECX.i1308, align 4
  %181 = add i64 %177, 6
  store i64 %181, i64* %3, align 8
  %182 = sext i32 %180 to i64
  %183 = shl nuw i64 %179, 32
  %184 = or i64 %183, %176
  %185 = sdiv i64 %184, %182
  %186 = shl i64 %185, 32
  %187 = ashr exact i64 %186, 32
  %188 = icmp eq i64 %185, %187
  br i1 %188, label %191, label %189

; <label>:189:                                    ; preds = %routine_idivl__ecx.exit1297
  %190 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %181, %struct.Memory* %141)
  %.pre131 = load i64, i64* %RDX.i1330, align 8
  %.pre132 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1280

; <label>:191:                                    ; preds = %routine_idivl__ecx.exit1297
  %192 = srem i64 %184, %182
  %193 = and i64 %185, 4294967295
  store i64 %193, i64* %RAX.i1317, align 8
  %194 = and i64 %192, 4294967295
  store i64 %194, i64* %RDX.i1330, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit1280

routine_idivl__ecx.exit1280:                      ; preds = %191, %189
  %195 = phi i64 [ %.pre132, %189 ], [ %181, %191 ]
  %196 = phi i64 [ %.pre131, %189 ], [ %194, %191 ]
  %197 = phi %struct.Memory* [ %190, %189 ], [ %141, %191 ]
  %198 = trunc i64 %196 to i32
  %199 = add i32 %198, -1
  %200 = zext i32 %199 to i64
  store i64 %200, i64* %RDX.i1330, align 8
  %201 = icmp eq i32 %198, 0
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %14, align 1
  %203 = and i32 %199, 255
  %204 = tail call i32 @llvm.ctpop.i32(i32 %203)
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  %207 = xor i8 %206, 1
  store i8 %207, i8* %21, align 1
  %208 = xor i32 %199, %198
  %209 = lshr i32 %208, 4
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  store i8 %211, i8* %27, align 1
  %212 = icmp eq i32 %199, 0
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %30, align 1
  %214 = lshr i32 %199, 31
  %215 = trunc i32 %214 to i8
  store i8 %215, i8* %33, align 1
  %216 = lshr i32 %198, 31
  %217 = xor i32 %214, %216
  %218 = add nuw nsw i32 %217, %216
  %219 = icmp eq i32 %218, 2
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %39, align 1
  %R9.i1275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %221 = load i64, i64* %RBP.i, align 8
  %222 = add i64 %221, -104
  %223 = add i64 %195, 7
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i64*
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %R9.i1275, align 8
  %226 = add i64 %221, -112
  %227 = add i64 %195, 10
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %226 to i32*
  store i32 %199, i32* %228, align 4
  %229 = load i64, i64* %R9.i1275, align 8
  %230 = load i64, i64* %3, align 8
  store i64 %229, i64* %RDX.i1330, align 8
  %231 = load i64, i64* %RBP.i, align 8
  %232 = add i64 %231, -108
  %233 = add i64 %230, 6
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RCX.i1339, align 8
  %237 = add i64 %231, -112
  %238 = add i64 %230, 10
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = zext i32 %240 to i64
  store i64 %241, i64* %166, align 8
  %242 = add i64 %230, 262022
  %243 = add i64 %230, 15
  %244 = load i64, i64* %6, align 8
  %245 = add i64 %244, -8
  %246 = inttoptr i64 %245 to i64*
  store i64 %243, i64* %246, align 8
  store i64 %245, i64* %6, align 8
  store i64 %242, i64* %3, align 8
  %call2_412114 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %242, %struct.Memory* %197)
  %.pre133 = load i64, i64* %RBP.i, align 8
  %.pre134 = load i64, i64* %3, align 8
  br label %block_.L_412119

block_.L_412119:                                  ; preds = %routine_idivl__ecx.exit1280, %block_4120bb
  %247 = phi i64 [ %.pre134, %routine_idivl__ecx.exit1280 ], [ %96, %block_4120bb ]
  %248 = phi i64 [ %.pre133, %routine_idivl__ecx.exit1280 ], [ %76, %block_4120bb ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_412114, %routine_idivl__ecx.exit1280 ], [ %2, %block_4120bb ]
  %249 = add i64 %248, -12
  %250 = add i64 %247, 4
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = add i32 %252, -1
  %254 = icmp eq i32 %252, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %14, align 1
  %256 = and i32 %253, 255
  %257 = tail call i32 @llvm.ctpop.i32(i32 %256)
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %21, align 1
  %261 = xor i32 %253, %252
  %262 = lshr i32 %261, 4
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %27, align 1
  %265 = icmp eq i32 %253, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %30, align 1
  %267 = lshr i32 %253, 31
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %33, align 1
  %269 = lshr i32 %252, 31
  %270 = xor i32 %267, %269
  %271 = add nuw nsw i32 %270, %269
  %272 = icmp eq i32 %271, 2
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %39, align 1
  %.v191 = select i1 %265, i64 20, i64 10
  %274 = add i64 %247, %.v191
  store i64 %274, i64* %3, align 8
  br i1 %265, label %block_.L_41212d, label %block_412123

block_412123:                                     ; preds = %block_.L_412119
  %275 = add i64 %274, 4
  store i64 %275, i64* %3, align 8
  %276 = load i32, i32* %251, align 4
  %277 = add i32 %276, -2
  %278 = icmp ult i32 %276, 2
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %14, align 1
  %280 = and i32 %277, 255
  %281 = tail call i32 @llvm.ctpop.i32(i32 %280)
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %21, align 1
  %285 = xor i32 %277, %276
  %286 = lshr i32 %285, 4
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %27, align 1
  %289 = icmp eq i32 %277, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %30, align 1
  %291 = lshr i32 %277, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %33, align 1
  %293 = lshr i32 %276, 31
  %294 = xor i32 %291, %293
  %295 = add nuw nsw i32 %294, %293
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %39, align 1
  %.v192 = select i1 %289, i64 10, i64 15
  %298 = add i64 %274, %.v192
  store i64 %298, i64* %3, align 8
  br i1 %289, label %block_.L_41212d, label %block_.L_412132

block_.L_41212d:                                  ; preds = %block_412123, %block_.L_412119
  %299 = phi i64 [ %298, %block_412123 ], [ %274, %block_.L_412119 ]
  %300 = add i64 %299, 106
  store i64 %300, i64* %3, align 8
  br label %block_.L_412197

block_.L_412132:                                  ; preds = %block_412123
  %RDI.i1252 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i1252, align 8
  %RSI.i1250 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 1746, i64* %RSI.i1250, align 8
  store i64 ptrtoint (%G__0x57a4f4_type* @G__0x57a4f4 to i64), i64* %RDX.i1330, align 8
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1246 = getelementptr inbounds %union.anon, %union.anon* %301, i64 0, i32 0
  store i64 20, i64* %RAX.i1246, align 8
  %302 = add i64 %248, -8
  %303 = add i64 %298, 33
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i32*
  %305 = load i32, i32* %304, align 4
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %RCX.i1339, align 8
  %EAX.i1240 = bitcast %union.anon* %301 to i32*
  %307 = add i64 %248, -116
  %308 = add i64 %298, 36
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i32*
  store i32 20, i32* %309, align 4
  %ECX.i1237 = bitcast %union.anon* %59 to i32*
  %310 = load i32, i32* %ECX.i1237, align 4
  %311 = zext i32 %310 to i64
  %312 = load i64, i64* %3, align 8
  store i64 %311, i64* %RAX.i1246, align 8
  %313 = load i64, i64* %RBP.i, align 8
  %314 = add i64 %313, -128
  %315 = load i64, i64* %RDX.i1330, align 8
  %316 = add i64 %312, 6
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %314 to i64*
  store i64 %315, i64* %317, align 8
  %318 = load i64, i64* %3, align 8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %320 = load i32, i32* %EAX.i1240, align 8
  %321 = sext i32 %320 to i64
  %322 = lshr i64 %321, 32
  store i64 %322, i64* %319, align 8
  %323 = load i64, i64* %RBP.i, align 8
  %324 = add i64 %323, -116
  %325 = add i64 %318, 4
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RCX.i1339, align 8
  %329 = add i64 %318, 6
  store i64 %329, i64* %3, align 8
  %330 = zext i32 %320 to i64
  %331 = sext i32 %327 to i64
  %332 = shl nuw i64 %322, 32
  %333 = or i64 %332, %330
  %334 = sdiv i64 %333, %331
  %335 = shl i64 %334, 32
  %336 = ashr exact i64 %335, 32
  %337 = icmp eq i64 %334, %336
  br i1 %337, label %340, label %338

; <label>:338:                                    ; preds = %block_.L_412132
  %339 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %329, %struct.Memory* %MEMORY.0)
  %.pre135 = load i64, i64* %RAX.i1246, align 8
  %.pre136 = load i64, i64* %3, align 8
  %.pre137 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1226

; <label>:340:                                    ; preds = %block_.L_412132
  %341 = srem i64 %333, %331
  %342 = and i64 %334, 4294967295
  store i64 %342, i64* %RAX.i1246, align 8
  %343 = and i64 %341, 4294967295
  store i64 %343, i64* %RDX.i1330, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit1226

routine_idivl__ecx.exit1226:                      ; preds = %340, %338
  %344 = phi i64 [ %.pre137, %338 ], [ %323, %340 ]
  %345 = phi i64 [ %.pre136, %338 ], [ %329, %340 ]
  %346 = phi i64 [ %.pre135, %338 ], [ %342, %340 ]
  %347 = phi %struct.Memory* [ %339, %338 ], [ %MEMORY.0, %340 ]
  %348 = trunc i64 %346 to i32
  %349 = add i32 %348, -1
  %350 = zext i32 %349 to i64
  store i64 %350, i64* %RAX.i1246, align 8
  %351 = icmp eq i32 %348, 0
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %14, align 1
  %353 = and i32 %349, 255
  %354 = tail call i32 @llvm.ctpop.i32(i32 %353)
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  %357 = xor i8 %356, 1
  store i8 %357, i8* %21, align 1
  %358 = xor i32 %349, %348
  %359 = lshr i32 %358, 4
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  store i8 %361, i8* %27, align 1
  %362 = icmp eq i32 %349, 0
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %30, align 1
  %364 = lshr i32 %349, 31
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %33, align 1
  %366 = lshr i32 %348, 31
  %367 = xor i32 %364, %366
  %368 = add nuw nsw i32 %367, %366
  %369 = icmp eq i32 %368, 2
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %39, align 1
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1220 = bitcast %union.anon* %371 to i32*
  %372 = getelementptr inbounds %union.anon, %union.anon* %371, i64 0, i32 0
  %373 = add i64 %344, -8
  %374 = add i64 %345, 7
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %372, align 8
  %378 = add i64 %344, -132
  %379 = add i64 %345, 13
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i32*
  store i32 %349, i32* %380, align 4
  %381 = load i32, i32* %R8D.i1220, align 4
  %382 = zext i32 %381 to i64
  %383 = load i64, i64* %3, align 8
  store i64 %382, i64* %RAX.i1246, align 8
  %384 = sext i32 %381 to i64
  %385 = lshr i64 %384, 32
  store i64 %385, i64* %319, align 8
  %386 = load i32, i32* %ECX.i1237, align 4
  %387 = add i64 %383, 6
  store i64 %387, i64* %3, align 8
  %388 = sext i32 %386 to i64
  %389 = shl nuw i64 %385, 32
  %390 = or i64 %389, %382
  %391 = sdiv i64 %390, %388
  %392 = shl i64 %391, 32
  %393 = ashr exact i64 %392, 32
  %394 = icmp eq i64 %391, %393
  br i1 %394, label %397, label %395

; <label>:395:                                    ; preds = %routine_idivl__ecx.exit1226
  %396 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %387, %struct.Memory* %347)
  %.pre138 = load i64, i64* %RDX.i1330, align 8
  %.pre139 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:397:                                    ; preds = %routine_idivl__ecx.exit1226
  %398 = srem i64 %390, %388
  %399 = and i64 %391, 4294967295
  store i64 %399, i64* %RAX.i1246, align 8
  %400 = and i64 %398, 4294967295
  store i64 %400, i64* %RDX.i1330, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %397, %395
  %401 = phi i64 [ %.pre139, %395 ], [ %387, %397 ]
  %402 = phi i64 [ %.pre138, %395 ], [ %400, %397 ]
  %403 = phi %struct.Memory* [ %396, %395 ], [ %347, %397 ]
  %404 = trunc i64 %402 to i32
  %405 = add i32 %404, -1
  %406 = zext i32 %405 to i64
  store i64 %406, i64* %RDX.i1330, align 8
  %407 = icmp eq i32 %404, 0
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %14, align 1
  %409 = and i32 %405, 255
  %410 = tail call i32 @llvm.ctpop.i32(i32 %409)
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  store i8 %413, i8* %21, align 1
  %414 = xor i32 %405, %404
  %415 = lshr i32 %414, 4
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  store i8 %417, i8* %27, align 1
  %418 = icmp eq i32 %405, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %30, align 1
  %420 = lshr i32 %405, 31
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %33, align 1
  %422 = lshr i32 %404, 31
  %423 = xor i32 %420, %422
  %424 = add nuw nsw i32 %423, %422
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %39, align 1
  %R9.i1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %427 = load i64, i64* %RBP.i, align 8
  %428 = add i64 %427, -128
  %429 = add i64 %401, 7
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i64*
  %431 = load i64, i64* %430, align 8
  store i64 %431, i64* %R9.i1204, align 8
  %432 = add i64 %427, -136
  %433 = add i64 %401, 13
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i32*
  store i32 %405, i32* %434, align 4
  %435 = load i64, i64* %R9.i1204, align 8
  %436 = load i64, i64* %3, align 8
  store i64 %435, i64* %RDX.i1330, align 8
  %437 = load i64, i64* %RBP.i, align 8
  %438 = add i64 %437, -132
  %439 = add i64 %436, 9
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = zext i32 %441 to i64
  store i64 %442, i64* %RCX.i1339, align 8
  %443 = add i64 %437, -136
  %444 = add i64 %436, 16
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = zext i32 %446 to i64
  store i64 %447, i64* %372, align 8
  %448 = add i64 %436, 261902
  %449 = add i64 %436, 21
  %450 = load i64, i64* %6, align 8
  %451 = add i64 %450, -8
  %452 = inttoptr i64 %451 to i64*
  store i64 %449, i64* %452, align 8
  store i64 %451, i64* %6, align 8
  store i64 %448, i64* %3, align 8
  %call2_412192 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %448, %struct.Memory* %403)
  %.pre140 = load i64, i64* %RBP.i, align 8
  %.pre141 = load i64, i64* %3, align 8
  br label %block_.L_412197

block_.L_412197:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_41212d
  %453 = phi i64 [ %300, %block_.L_41212d ], [ %.pre141, %routine_idivl__ecx.exit ]
  %454 = phi i64 [ %248, %block_.L_41212d ], [ %.pre140, %routine_idivl__ecx.exit ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_.L_41212d ], [ %call2_412192, %routine_idivl__ecx.exit ]
  %455 = add i64 %454, -24
  %456 = add i64 %453, 5
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i64*
  %458 = load i64, i64* %457, align 8
  store i8 0, i8* %14, align 1
  %459 = trunc i64 %458 to i32
  %460 = and i32 %459, 255
  %461 = tail call i32 @llvm.ctpop.i32(i32 %460)
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  store i8 %464, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %465 = icmp eq i64 %458, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %30, align 1
  %467 = lshr i64 %458, 63
  %468 = trunc i64 %467 to i8
  store i8 %468, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v193 = select i1 %465, i64 11, i64 53
  %469 = add i64 %453, %.v193
  store i64 %469, i64* %3, align 8
  br i1 %465, label %block_4121a2, label %block_.L_412197.block_.L_4121cc_crit_edge

block_.L_412197.block_.L_4121cc_crit_edge:        ; preds = %block_.L_412197
  %.pre185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre186 = bitcast %union.anon* %.pre185 to i32*
  %.pre187 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  br label %block_.L_4121cc

block_4121a2:                                     ; preds = %block_.L_412197
  store i64 0, i64* %RDX.i1330, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %470 = add i64 %454, -8
  %471 = add i64 %469, 5
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = zext i32 %473 to i64
  store i64 %474, i64* %RDI.i, align 8
  %RSI.i1181 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %475 = add i64 %454, -12
  %476 = add i64 %469, 8
  store i64 %476, i64* %3, align 8
  %477 = inttoptr i64 %475 to i32*
  %478 = load i32, i32* %477, align 4
  %479 = zext i32 %478 to i64
  store i64 %479, i64* %RSI.i1181, align 8
  %480 = add i64 %469, -9506
  %481 = add i64 %469, 13
  %482 = load i64, i64* %6, align 8
  %483 = add i64 %482, -8
  %484 = inttoptr i64 %483 to i64*
  store i64 %481, i64* %484, align 8
  store i64 %483, i64* %6, align 8
  store i64 %480, i64* %3, align 8
  %call2_4121aa = tail call %struct.Memory* @sub_40fc80.fastlib(%struct.State* nonnull %0, i64 %480, %struct.Memory* %MEMORY.2)
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i1177 = bitcast %union.anon* %485 to i32*
  %486 = load i64, i64* %RBP.i, align 8
  %487 = add i64 %486, -72
  %488 = load i32, i32* %EAX.i1177, align 4
  %489 = load i64, i64* %3, align 8
  %490 = add i64 %489, 3
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %487 to i32*
  store i32 %488, i32* %491, align 4
  %492 = load i64, i64* %RBP.i, align 8
  %493 = add i64 %492, -72
  %494 = load i64, i64* %3, align 8
  %495 = add i64 %494, 4
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %493 to i32*
  %497 = load i32, i32* %496, align 4
  store i8 0, i8* %14, align 1
  %498 = and i32 %497, 255
  %499 = tail call i32 @llvm.ctpop.i32(i32 %498)
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  store i8 %502, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %503 = icmp eq i32 %497, 0
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %30, align 1
  %505 = lshr i32 %497, 31
  %506 = trunc i32 %505 to i8
  store i8 %506, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %507 = icmp ne i8 %506, 0
  %.v = select i1 %507, i64 17, i64 6
  %508 = add i64 %495, %.v
  store i64 %508, i64* %3, align 8
  br i1 %507, label %block_.L_4121c7, label %block_4121bc

block_4121bc:                                     ; preds = %block_4121a2
  %RAX.i1171 = getelementptr inbounds %union.anon, %union.anon* %485, i64 0, i32 0
  %509 = add i64 %508, 3
  store i64 %509, i64* %3, align 8
  %510 = load i32, i32* %496, align 4
  %511 = zext i32 %510 to i64
  store i64 %511, i64* %RAX.i1171, align 8
  %512 = add i64 %492, -4
  %513 = add i64 %508, 6
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i32*
  store i32 %510, i32* %514, align 4
  %515 = load i64, i64* %3, align 8
  %516 = add i64 %515, 2258
  store i64 %516, i64* %3, align 8
  br label %block_.L_412a94

block_.L_4121c7:                                  ; preds = %block_4121a2
  %517 = add i64 %508, 5
  store i64 %517, i64* %3, align 8
  br label %block_.L_4121cc

block_.L_4121cc:                                  ; preds = %block_.L_412197.block_.L_4121cc_crit_edge, %block_.L_4121c7
  %RSI.i502.pre-phi = phi i64* [ %.pre187, %block_.L_412197.block_.L_4121cc_crit_edge ], [ %RSI.i1181, %block_.L_4121c7 ]
  %EAX.i1160.pre-phi = phi i32* [ %.pre186, %block_.L_412197.block_.L_4121cc_crit_edge ], [ %EAX.i1177, %block_.L_4121c7 ]
  %518 = phi i64 [ %454, %block_.L_412197.block_.L_4121cc_crit_edge ], [ %492, %block_.L_4121c7 ]
  %519 = phi i64 [ %469, %block_.L_412197.block_.L_4121cc_crit_edge ], [ %517, %block_.L_4121c7 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_412197.block_.L_4121cc_crit_edge ], [ %call2_4121aa, %block_.L_4121c7 ]
  %RAX.i1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %520 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %521 = add i32 %520, 1
  store i32 %521, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %522 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %523 = add i32 %522, 1
  %524 = zext i32 %523 to i64
  %525 = icmp eq i32 %522, -1
  %526 = icmp eq i32 %523, 0
  %527 = or i1 %525, %526
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %14, align 1
  %529 = and i32 %523, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %21, align 1
  %534 = xor i32 %523, %522
  %535 = lshr i32 %534, 4
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  store i8 %537, i8* %27, align 1
  %538 = zext i1 %526 to i8
  store i8 %538, i8* %30, align 1
  %539 = lshr i32 %523, 31
  %540 = trunc i32 %539 to i8
  store i8 %540, i8* %33, align 1
  %541 = lshr i32 %522, 31
  %542 = xor i32 %539, %541
  %543 = add nuw nsw i32 %542, %539
  %544 = icmp eq i32 %543, 2
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %39, align 1
  store i32 %523, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  store i64 %524, i64* %RAX.i1164, align 8
  %546 = add i64 %518, -8
  %547 = add i64 %519, 45
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i32*
  %549 = load i32, i32* %548, align 4
  %550 = sext i32 %549 to i64
  store i64 %550, i64* %RCX.i1339, align 8
  %551 = shl nsw i64 %550, 2
  %552 = add nsw i64 %551, 11185584
  %553 = add i64 %519, 52
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i32*
  store i32 %523, i32* %554, align 4
  %555 = load i64, i64* %RBP.i, align 8
  %556 = add i64 %555, -28
  %557 = load i64, i64* %3, align 8
  %558 = add i64 %557, 7
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %556 to i32*
  store i32 0, i32* %559, align 4
  %ECX.i1055 = bitcast %union.anon* %59 to i32*
  %.pre142 = load i64, i64* %3, align 8
  br label %block_.L_412207

block_.L_412207:                                  ; preds = %block_.L_4126bd, %block_.L_4121cc
  %560 = phi i64 [ %2611, %block_.L_4126bd ], [ %.pre142, %block_.L_4121cc ]
  %561 = load i64, i64* %RBP.i, align 8
  %562 = add i64 %561, -28
  %563 = add i64 %560, 4
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i32*
  %565 = load i32, i32* %564, align 4
  %566 = add i32 %565, -4
  %567 = icmp ult i32 %565, 4
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %14, align 1
  %569 = and i32 %566, 255
  %570 = tail call i32 @llvm.ctpop.i32(i32 %569)
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = xor i8 %572, 1
  store i8 %573, i8* %21, align 1
  %574 = xor i32 %566, %565
  %575 = lshr i32 %574, 4
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  store i8 %577, i8* %27, align 1
  %578 = icmp eq i32 %566, 0
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %30, align 1
  %580 = lshr i32 %566, 31
  %581 = trunc i32 %580 to i8
  store i8 %581, i8* %33, align 1
  %582 = lshr i32 %565, 31
  %583 = xor i32 %580, %582
  %584 = add nuw nsw i32 %583, %582
  %585 = icmp eq i32 %584, 2
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %39, align 1
  %587 = icmp ne i8 %581, 0
  %588 = xor i1 %587, %585
  %.v194 = select i1 %588, i64 10, i64 1225
  %589 = add i64 %560, %.v194
  store i64 %589, i64* %3, align 8
  br i1 %588, label %block_412211, label %block_.L_4126d0

block_412211:                                     ; preds = %block_.L_412207
  %590 = add i64 %561, -8
  %591 = add i64 %589, 3
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i32*
  %593 = load i32, i32* %592, align 4
  %594 = zext i32 %593 to i64
  store i64 %594, i64* %RAX.i1164, align 8
  %595 = add i64 %589, 7
  store i64 %595, i64* %3, align 8
  %596 = load i32, i32* %564, align 4
  %597 = sext i32 %596 to i64
  store i64 %597, i64* %RCX.i1339, align 8
  %598 = shl nsw i64 %597, 2
  %599 = add nsw i64 %598, 8053168
  %600 = add i64 %589, 14
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to i32*
  %602 = load i32, i32* %601, align 4
  %603 = add i32 %602, %593
  %604 = zext i32 %603 to i64
  store i64 %604, i64* %RAX.i1164, align 8
  %605 = icmp ult i32 %603, %593
  %606 = icmp ult i32 %603, %602
  %607 = or i1 %605, %606
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %14, align 1
  %609 = and i32 %603, 255
  %610 = tail call i32 @llvm.ctpop.i32(i32 %609)
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  %613 = xor i8 %612, 1
  store i8 %613, i8* %21, align 1
  %614 = xor i32 %602, %593
  %615 = xor i32 %614, %603
  %616 = lshr i32 %615, 4
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  store i8 %618, i8* %27, align 1
  %619 = icmp eq i32 %603, 0
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %30, align 1
  %621 = lshr i32 %603, 31
  %622 = trunc i32 %621 to i8
  store i8 %622, i8* %33, align 1
  %623 = lshr i32 %593, 31
  %624 = lshr i32 %602, 31
  %625 = xor i32 %621, %623
  %626 = xor i32 %621, %624
  %627 = add nuw nsw i32 %625, %626
  %628 = icmp eq i32 %627, 2
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %39, align 1
  %630 = add i64 %561, -76
  %631 = add i64 %589, 17
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %630 to i32*
  store i32 %603, i32* %632, align 4
  %633 = load i64, i64* %RBP.i, align 8
  %634 = add i64 %633, -76
  %635 = load i64, i64* %3, align 8
  %636 = add i64 %635, 4
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %634 to i32*
  %638 = load i32, i32* %637, align 4
  %639 = sext i32 %638 to i64
  store i64 %639, i64* %RCX.i1339, align 8
  %640 = add nsw i64 %639, 12099168
  %641 = add i64 %635, 12
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i8*
  %643 = load i8, i8* %642, align 1
  %644 = zext i8 %643 to i64
  store i64 %644, i64* %RAX.i1164, align 8
  %645 = zext i8 %643 to i32
  store i8 0, i8* %14, align 1
  %646 = tail call i32 @llvm.ctpop.i32(i32 %645)
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  store i8 %649, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %650 = icmp eq i8 %643, 0
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v218 = select i1 %650, i64 21, i64 125
  %652 = add i64 %635, %.v218
  store i64 %652, i64* %3, align 8
  br i1 %650, label %block_412237, label %block_.L_41229f

block_412237:                                     ; preds = %block_412211
  %653 = add i64 %652, 4
  store i64 %653, i64* %3, align 8
  %654 = load i32, i32* %637, align 4
  %655 = sext i32 %654 to i64
  store i64 %655, i64* %RAX.i1164, align 8
  %656 = shl nsw i64 %655, 2
  %657 = add nsw i64 %656, 11185584
  %658 = add i64 %652, 11
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = zext i32 %660 to i64
  store i64 %661, i64* %RCX.i1339, align 8
  %662 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %663 = sub i32 %660, %662
  %664 = icmp ult i32 %660, %662
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %14, align 1
  %666 = and i32 %663, 255
  %667 = tail call i32 @llvm.ctpop.i32(i32 %666)
  %668 = trunc i32 %667 to i8
  %669 = and i8 %668, 1
  %670 = xor i8 %669, 1
  store i8 %670, i8* %21, align 1
  %671 = xor i32 %662, %660
  %672 = xor i32 %671, %663
  %673 = lshr i32 %672, 4
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  store i8 %675, i8* %27, align 1
  %676 = icmp eq i32 %663, 0
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %30, align 1
  %678 = lshr i32 %663, 31
  %679 = trunc i32 %678 to i8
  store i8 %679, i8* %33, align 1
  %680 = lshr i32 %660, 31
  %681 = lshr i32 %662, 31
  %682 = xor i32 %681, %680
  %683 = xor i32 %678, %680
  %684 = add nuw nsw i32 %683, %682
  %685 = icmp eq i32 %684, 2
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %39, align 1
  %.v247 = select i1 %676, i64 104, i64 24
  %687 = add i64 %652, %.v247
  store i64 %687, i64* %3, align 8
  br i1 %676, label %block_.L_41229f, label %block_41224f

block_41224f:                                     ; preds = %block_412237
  %688 = add i64 %633, -24
  %689 = add i64 %687, 5
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i64*
  %691 = load i64, i64* %690, align 8
  store i8 0, i8* %14, align 1
  %692 = trunc i64 %691 to i32
  %693 = and i32 %692, 255
  %694 = tail call i32 @llvm.ctpop.i32(i32 %693)
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  %697 = xor i8 %696, 1
  store i8 %697, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %698 = icmp eq i64 %691, 0
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %30, align 1
  %700 = lshr i64 %691, 63
  %701 = trunc i64 %700 to i8
  store i8 %701, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v248 = select i1 %698, i64 25, i64 11
  %702 = add i64 %687, %.v248
  store i64 %702, i64* %3, align 8
  br i1 %698, label %block_.L_412268, label %block_41225a

block_41225a:                                     ; preds = %block_41224f
  %703 = add i64 %702, 3
  store i64 %703, i64* %3, align 8
  %704 = load i32, i32* %637, align 4
  %705 = zext i32 %704 to i64
  store i64 %705, i64* %RAX.i1164, align 8
  %706 = add i64 %702, 7
  store i64 %706, i64* %3, align 8
  %707 = load i64, i64* %690, align 8
  store i64 %707, i64* %RCX.i1339, align 8
  %708 = add i64 %633, -36
  %709 = add i64 %702, 11
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i32*
  %711 = load i32, i32* %710, align 4
  %712 = sext i32 %711 to i64
  store i64 %712, i64* %RDX.i1330, align 8
  %713 = shl nsw i64 %712, 2
  %714 = add i64 %713, %707
  %715 = add i64 %702, 14
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i32*
  store i32 %704, i32* %716, align 4
  %.pre157 = load i64, i64* %RBP.i, align 8
  %.pre158 = load i64, i64* %3, align 8
  br label %block_.L_412268

block_.L_412268:                                  ; preds = %block_41225a, %block_41224f
  %717 = phi i64 [ %.pre158, %block_41225a ], [ %702, %block_41224f ]
  %718 = phi i64 [ %.pre157, %block_41225a ], [ %633, %block_41224f ]
  %719 = add i64 %718, -36
  %720 = add i64 %717, 3
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = add i32 %722, 1
  %724 = zext i32 %723 to i64
  store i64 %724, i64* %RAX.i1164, align 8
  %725 = icmp eq i32 %722, -1
  %726 = icmp eq i32 %723, 0
  %727 = or i1 %725, %726
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %14, align 1
  %729 = and i32 %723, 255
  %730 = tail call i32 @llvm.ctpop.i32(i32 %729)
  %731 = trunc i32 %730 to i8
  %732 = and i8 %731, 1
  %733 = xor i8 %732, 1
  store i8 %733, i8* %21, align 1
  %734 = xor i32 %723, %722
  %735 = lshr i32 %734, 4
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  store i8 %737, i8* %27, align 1
  %738 = zext i1 %726 to i8
  store i8 %738, i8* %30, align 1
  %739 = lshr i32 %723, 31
  %740 = trunc i32 %739 to i8
  store i8 %740, i8* %33, align 1
  %741 = lshr i32 %722, 31
  %742 = xor i32 %739, %741
  %743 = add nuw nsw i32 %742, %739
  %744 = icmp eq i32 %743, 2
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %39, align 1
  %746 = add i64 %717, 9
  store i64 %746, i64* %3, align 8
  store i32 %723, i32* %721, align 4
  %747 = load i64, i64* %RBP.i, align 8
  %748 = add i64 %747, -36
  %749 = load i64, i64* %3, align 8
  %750 = add i64 %749, 3
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %748 to i32*
  %752 = load i32, i32* %751, align 4
  %753 = zext i32 %752 to i64
  store i64 %753, i64* %RAX.i1164, align 8
  %754 = add i64 %747, -16
  %755 = add i64 %749, 6
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i32*
  %757 = load i32, i32* %756, align 4
  %758 = sub i32 %752, %757
  %759 = icmp ult i32 %752, %757
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %14, align 1
  %761 = and i32 %758, 255
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761)
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %21, align 1
  %766 = xor i32 %757, %752
  %767 = xor i32 %766, %758
  %768 = lshr i32 %767, 4
  %769 = trunc i32 %768 to i8
  %770 = and i8 %769, 1
  store i8 %770, i8* %27, align 1
  %771 = icmp eq i32 %758, 0
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %30, align 1
  %773 = lshr i32 %758, 31
  %774 = trunc i32 %773 to i8
  store i8 %774, i8* %33, align 1
  %775 = lshr i32 %752, 31
  %776 = lshr i32 %757, 31
  %777 = xor i32 %776, %775
  %778 = xor i32 %773, %775
  %779 = add nuw nsw i32 %778, %777
  %780 = icmp eq i32 %779, 2
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %39, align 1
  %782 = icmp ne i8 %774, 0
  %783 = xor i1 %782, %780
  %.v249 = select i1 %783, i64 23, i64 12
  %784 = add i64 %749, %.v249
  store i64 %784, i64* %3, align 8
  br i1 %783, label %block_.L_412288, label %block_41227d

block_41227d:                                     ; preds = %block_.L_412268
  %785 = add i64 %784, 3
  store i64 %785, i64* %3, align 8
  %786 = load i32, i32* %751, align 4
  %787 = zext i32 %786 to i64
  store i64 %787, i64* %RAX.i1164, align 8
  %788 = add i64 %747, -4
  %789 = add i64 %784, 6
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i32*
  store i32 %786, i32* %790, align 4
  %791 = load i64, i64* %3, align 8
  %792 = add i64 %791, 2065
  store i64 %792, i64* %3, align 8
  br label %block_.L_412a94

block_.L_412288:                                  ; preds = %block_.L_412268
  %793 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %794 = zext i32 %793 to i64
  store i64 %794, i64* %RAX.i1164, align 8
  %795 = add i64 %747, -76
  %796 = add i64 %784, 11
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %795 to i32*
  %798 = load i32, i32* %797, align 4
  %799 = sext i32 %798 to i64
  store i64 %799, i64* %RCX.i1339, align 8
  %800 = shl nsw i64 %799, 2
  %801 = add nsw i64 %800, 11185584
  %802 = add i64 %784, 18
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i32*
  store i32 %793, i32* %803, align 4
  %804 = load i64, i64* %3, align 8
  %805 = add i64 %804, 1059
  br label %block_.L_4126bd

block_.L_41229f:                                  ; preds = %block_412211, %block_412237
  %806 = phi i64 [ %687, %block_412237 ], [ %652, %block_412211 ]
  %807 = add i64 %806, 4
  store i64 %807, i64* %3, align 8
  %808 = load i32, i32* %637, align 4
  %809 = sext i32 %808 to i64
  store i64 %809, i64* %RAX.i1164, align 8
  %810 = add nsw i64 %809, 12099168
  %811 = add i64 %806, 12
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i8*
  %813 = load i8, i8* %812, align 1
  %814 = zext i8 %813 to i64
  store i64 %814, i64* %RCX.i1339, align 8
  %815 = zext i8 %813 to i32
  %816 = add i64 %633, -12
  %817 = add i64 %806, 15
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = sub i32 %815, %819
  %821 = icmp ult i32 %815, %819
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %14, align 1
  %823 = and i32 %820, 255
  %824 = tail call i32 @llvm.ctpop.i32(i32 %823)
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  %827 = xor i8 %826, 1
  store i8 %827, i8* %21, align 1
  %828 = xor i32 %819, %815
  %829 = xor i32 %828, %820
  %830 = lshr i32 %829, 4
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  store i8 %832, i8* %27, align 1
  %833 = icmp eq i32 %820, 0
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %30, align 1
  %835 = lshr i32 %820, 31
  %836 = trunc i32 %835 to i8
  store i8 %836, i8* %33, align 1
  %837 = lshr i32 %819, 31
  %838 = add nuw nsw i32 %835, %837
  %839 = icmp eq i32 %838, 2
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %39, align 1
  %.v219 = select i1 %833, i64 21, i64 953
  %841 = add i64 %806, %.v219
  store i64 %841, i64* %3, align 8
  br i1 %833, label %block_4122b4, label %block_.L_412658

block_4122b4:                                     ; preds = %block_.L_41229f
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1164, align 8
  %842 = add i64 %841, 14
  store i64 %842, i64* %3, align 8
  %843 = load i32, i32* %637, align 4
  %844 = sext i32 %843 to i64
  store i64 %844, i64* %RCX.i1339, align 8
  %845 = shl nsw i64 %844, 2
  %846 = add nsw i64 %845, 11187184
  %847 = add i64 %841, 22
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i32*
  %849 = load i32, i32* %848, align 4
  %850 = sext i32 %849 to i64
  %851 = mul nsw i64 %850, 744
  store i64 %851, i64* %RCX.i1339, align 8
  %852 = lshr i64 %851, 63
  %853 = add i64 %851, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %853, i64* %RAX.i1164, align 8
  %854 = icmp ult i64 %853, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %855 = icmp ult i64 %853, %851
  %856 = or i1 %854, %855
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %14, align 1
  %858 = trunc i64 %853 to i32
  %859 = and i32 %858, 248
  %860 = tail call i32 @llvm.ctpop.i32(i32 %859)
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = xor i8 %862, 1
  store i8 %863, i8* %21, align 1
  %864 = xor i64 %851, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %865 = xor i64 %864, %853
  %866 = lshr i64 %865, 4
  %867 = trunc i64 %866 to i8
  %868 = and i8 %867, 1
  store i8 %868, i8* %27, align 1
  %869 = icmp eq i64 %853, 0
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %30, align 1
  %871 = lshr i64 %853, 63
  %872 = trunc i64 %871 to i8
  store i8 %872, i8* %33, align 1
  %873 = xor i64 %871, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %874 = xor i64 %871, %852
  %875 = add nuw nsw i64 %873, %874
  %876 = icmp eq i64 %875, 2
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %39, align 1
  %878 = add i64 %851, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %879 = add i64 %841, 38
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = zext i32 %881 to i64
  store i64 %882, i64* %RDX.i1330, align 8
  %883 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %884 = sub i32 %881, %883
  %885 = icmp ult i32 %881, %883
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %14, align 1
  %887 = and i32 %884, 255
  %888 = tail call i32 @llvm.ctpop.i32(i32 %887)
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  %891 = xor i8 %890, 1
  store i8 %891, i8* %21, align 1
  %892 = xor i32 %883, %881
  %893 = xor i32 %892, %884
  %894 = lshr i32 %893, 4
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  store i8 %896, i8* %27, align 1
  %897 = icmp eq i32 %884, 0
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %30, align 1
  %899 = lshr i32 %884, 31
  %900 = trunc i32 %899 to i8
  store i8 %900, i8* %33, align 1
  %901 = lshr i32 %881, 31
  %902 = lshr i32 %883, 31
  %903 = xor i32 %902, %901
  %904 = xor i32 %899, %901
  %905 = add nuw nsw i32 %904, %903
  %906 = icmp eq i32 %905, 2
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %39, align 1
  %.v222 = select i1 %897, i64 932, i64 51
  %908 = add i64 %841, %.v222
  store i64 %908, i64* %3, align 8
  br i1 %897, label %block_4122b4.block_.L_412658_crit_edge, label %block_4122e7

block_4122b4.block_.L_412658_crit_edge:           ; preds = %block_4122b4
  %.pre183 = load i64, i64* %RBP.i, align 8
  br label %block_.L_412658

block_4122e7:                                     ; preds = %block_4122b4
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1164, align 8
  %909 = load i64, i64* %RBP.i, align 8
  %910 = add i64 %909, -76
  %911 = add i64 %908, 14
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  %914 = sext i32 %913 to i64
  store i64 %914, i64* %RCX.i1339, align 8
  %915 = shl nsw i64 %914, 2
  %916 = add nsw i64 %915, 11187184
  %917 = add i64 %908, 22
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %916 to i32*
  %919 = load i32, i32* %918, align 4
  %920 = sext i32 %919 to i64
  %921 = mul nsw i64 %920, 744
  store i64 %921, i64* %RCX.i1339, align 8
  %922 = lshr i64 %921, 63
  %923 = add i64 %921, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %923, i64* %RAX.i1164, align 8
  %924 = icmp ult i64 %923, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %925 = icmp ult i64 %923, %921
  %926 = or i1 %924, %925
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %14, align 1
  %928 = trunc i64 %923 to i32
  %929 = and i32 %928, 248
  %930 = tail call i32 @llvm.ctpop.i32(i32 %929)
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  %933 = xor i8 %932, 1
  store i8 %933, i8* %21, align 1
  %934 = xor i64 %921, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %935 = xor i64 %934, %923
  %936 = lshr i64 %935, 4
  %937 = trunc i64 %936 to i8
  %938 = and i8 %937, 1
  store i8 %938, i8* %27, align 1
  %939 = icmp eq i64 %923, 0
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %30, align 1
  %941 = lshr i64 %923, 63
  %942 = trunc i64 %941 to i8
  store i8 %942, i8* %33, align 1
  %943 = xor i64 %941, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %944 = xor i64 %941, %922
  %945 = add nuw nsw i64 %943, %944
  %946 = icmp eq i64 %945, 2
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %39, align 1
  %948 = add i64 %909, -88
  %949 = add i64 %908, 36
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %948 to i64*
  store i64 %923, i64* %950, align 8
  %951 = load i64, i64* %RBP.i, align 8
  %952 = add i64 %951, -88
  %953 = load i64, i64* %3, align 8
  %954 = add i64 %953, 4
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %952 to i64*
  %956 = load i64, i64* %955, align 8
  store i64 %956, i64* %RAX.i1164, align 8
  %957 = add i64 %956, 12
  %958 = add i64 %953, 8
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %957 to i32*
  %960 = load i32, i32* %959, align 4
  %961 = add i32 %960, -20
  %962 = icmp ult i32 %960, 20
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %14, align 1
  %964 = and i32 %961, 255
  %965 = tail call i32 @llvm.ctpop.i32(i32 %964)
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  %968 = xor i8 %967, 1
  store i8 %968, i8* %21, align 1
  %969 = xor i32 %960, 16
  %970 = xor i32 %969, %961
  %971 = lshr i32 %970, 4
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  store i8 %973, i8* %27, align 1
  %974 = icmp eq i32 %961, 0
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %30, align 1
  %976 = lshr i32 %961, 31
  %977 = trunc i32 %976 to i8
  store i8 %977, i8* %33, align 1
  %978 = lshr i32 %960, 31
  %979 = xor i32 %976, %978
  %980 = add nuw nsw i32 %979, %978
  %981 = icmp eq i32 %980, 2
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %39, align 1
  %983 = icmp ne i8 %977, 0
  %984 = xor i1 %983, %981
  %985 = or i1 %974, %984
  %.v223 = select i1 %985, i64 24, i64 14
  %986 = add i64 %953, %.v223
  store i64 %986, i64* %3, align 8
  br i1 %985, label %block_.L_412323, label %block_412319

block_412319:                                     ; preds = %block_4122e7
  %987 = add i64 %951, -16
  %988 = add i64 %986, 4
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i32*
  %990 = load i32, i32* %989, align 4
  %991 = add i32 %990, -19
  %992 = icmp ult i32 %990, 19
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %14, align 1
  %994 = and i32 %991, 255
  %995 = tail call i32 @llvm.ctpop.i32(i32 %994)
  %996 = trunc i32 %995 to i8
  %997 = and i8 %996, 1
  %998 = xor i8 %997, 1
  store i8 %998, i8* %21, align 1
  %999 = xor i32 %990, 16
  %1000 = xor i32 %999, %991
  %1001 = lshr i32 %1000, 4
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  store i8 %1003, i8* %27, align 1
  %1004 = icmp eq i32 %991, 0
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %30, align 1
  %1006 = lshr i32 %991, 31
  %1007 = trunc i32 %1006 to i8
  store i8 %1007, i8* %33, align 1
  %1008 = lshr i32 %990, 31
  %1009 = xor i32 %1006, %1008
  %1010 = add nuw nsw i32 %1009, %1008
  %1011 = icmp eq i32 %1010, 2
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %39, align 1
  %1013 = icmp ne i8 %1007, 0
  %1014 = xor i1 %1013, %1011
  %.demorgan = or i1 %1004, %1014
  %.v224 = select i1 %.demorgan, i64 10, i64 192
  %1015 = add i64 %986, %.v224
  store i64 %1015, i64* %3, align 8
  br i1 %.demorgan, label %block_.L_412323, label %block_.L_4123d9

block_.L_412323:                                  ; preds = %block_412319, %block_4122e7
  %1016 = phi i64 [ %1015, %block_412319 ], [ %986, %block_4122e7 ]
  %1017 = add i64 %951, -32
  %1018 = add i64 %1016, 7
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i32*
  store i32 0, i32* %1019, align 4
  %.pre177 = load i64, i64* %3, align 8
  br label %block_.L_41232a

block_.L_41232a:                                  ; preds = %block_.L_4123c1, %block_.L_412323
  %1020 = phi i64 [ %1279, %block_.L_4123c1 ], [ %.pre177, %block_.L_412323 ]
  %1021 = load i64, i64* %RBP.i, align 8
  %1022 = add i64 %1021, -32
  %1023 = add i64 %1020, 3
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i32*
  %1025 = load i32, i32* %1024, align 4
  %1026 = zext i32 %1025 to i64
  store i64 %1026, i64* %RAX.i1164, align 8
  %1027 = add i64 %1021, -88
  %1028 = add i64 %1020, 7
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to i64*
  %1030 = load i64, i64* %1029, align 8
  store i64 %1030, i64* %RCX.i1339, align 8
  %1031 = add i64 %1030, 12
  %1032 = add i64 %1020, 10
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i32*
  %1034 = load i32, i32* %1033, align 4
  %1035 = sub i32 %1025, %1034
  %1036 = icmp ult i32 %1025, %1034
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %14, align 1
  %1038 = and i32 %1035, 255
  %1039 = tail call i32 @llvm.ctpop.i32(i32 %1038)
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  %1042 = xor i8 %1041, 1
  store i8 %1042, i8* %21, align 1
  %1043 = xor i32 %1034, %1025
  %1044 = xor i32 %1043, %1035
  %1045 = lshr i32 %1044, 4
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  store i8 %1047, i8* %27, align 1
  %1048 = icmp eq i32 %1035, 0
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %30, align 1
  %1050 = lshr i32 %1035, 31
  %1051 = trunc i32 %1050 to i8
  store i8 %1051, i8* %33, align 1
  %1052 = lshr i32 %1025, 31
  %1053 = lshr i32 %1034, 31
  %1054 = xor i32 %1053, %1052
  %1055 = xor i32 %1050, %1052
  %1056 = add nuw nsw i32 %1055, %1054
  %1057 = icmp eq i32 %1056, 2
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %39, align 1
  %1059 = icmp ne i8 %1051, 0
  %1060 = xor i1 %1059, %1057
  %.v242 = select i1 %1060, i64 16, i64 170
  %1061 = add i64 %1020, %.v242
  store i64 %1061, i64* %3, align 8
  br i1 %1060, label %block_41233a, label %block_.L_4123d4

block_41233a:                                     ; preds = %block_.L_41232a
  %1062 = add i64 %1061, 4
  store i64 %1062, i64* %3, align 8
  %1063 = load i64, i64* %1029, align 8
  store i64 %1063, i64* %RAX.i1164, align 8
  %1064 = add i64 %1061, 8
  store i64 %1064, i64* %3, align 8
  %1065 = load i32, i32* %1024, align 4
  %1066 = sext i32 %1065 to i64
  store i64 %1066, i64* %RCX.i1339, align 8
  %1067 = shl nsw i64 %1066, 2
  %1068 = add i64 %1063, 16
  %1069 = add i64 %1068, %1067
  %1070 = add i64 %1061, 12
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  %1072 = load i32, i32* %1071, align 4
  %1073 = zext i32 %1072 to i64
  store i64 %1073, i64* %RDX.i1330, align 8
  %1074 = add i64 %1021, -40
  %1075 = add i64 %1061, 15
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i32*
  store i32 %1072, i32* %1076, align 4
  %1077 = load i64, i64* %RBP.i, align 8
  %1078 = add i64 %1077, -40
  %1079 = load i64, i64* %3, align 8
  %1080 = add i64 %1079, 4
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1078 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = sext i32 %1082 to i64
  store i64 %1083, i64* %RAX.i1164, align 8
  %1084 = add nsw i64 %1083, 12099168
  %1085 = add i64 %1079, 12
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i8*
  %1087 = load i8, i8* %1086, align 1
  %1088 = zext i8 %1087 to i64
  store i64 %1088, i64* %RDX.i1330, align 8
  %1089 = zext i8 %1087 to i32
  store i8 0, i8* %14, align 1
  %1090 = tail call i32 @llvm.ctpop.i32(i32 %1089)
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = xor i8 %1092, 1
  store i8 %1093, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1094 = icmp eq i8 %1087, 0
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v243 = select i1 %1094, i64 21, i64 120
  %1096 = add i64 %1079, %.v243
  store i64 %1096, i64* %3, align 8
  br i1 %1094, label %block_41235e, label %block_.L_4123c1

block_41235e:                                     ; preds = %block_41233a
  %1097 = add i64 %1096, 4
  store i64 %1097, i64* %3, align 8
  %1098 = load i32, i32* %1081, align 4
  %1099 = sext i32 %1098 to i64
  store i64 %1099, i64* %RAX.i1164, align 8
  %1100 = shl nsw i64 %1099, 2
  %1101 = add nsw i64 %1100, 11185584
  %1102 = add i64 %1096, 11
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i32*
  %1104 = load i32, i32* %1103, align 4
  %1105 = zext i32 %1104 to i64
  store i64 %1105, i64* %RCX.i1339, align 8
  %1106 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1107 = sub i32 %1104, %1106
  %1108 = icmp ult i32 %1104, %1106
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %14, align 1
  %1110 = and i32 %1107, 255
  %1111 = tail call i32 @llvm.ctpop.i32(i32 %1110)
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  %1114 = xor i8 %1113, 1
  store i8 %1114, i8* %21, align 1
  %1115 = xor i32 %1106, %1104
  %1116 = xor i32 %1115, %1107
  %1117 = lshr i32 %1116, 4
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  store i8 %1119, i8* %27, align 1
  %1120 = icmp eq i32 %1107, 0
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %30, align 1
  %1122 = lshr i32 %1107, 31
  %1123 = trunc i32 %1122 to i8
  store i8 %1123, i8* %33, align 1
  %1124 = lshr i32 %1104, 31
  %1125 = lshr i32 %1106, 31
  %1126 = xor i32 %1125, %1124
  %1127 = xor i32 %1122, %1124
  %1128 = add nuw nsw i32 %1127, %1126
  %1129 = icmp eq i32 %1128, 2
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %39, align 1
  %.v244 = select i1 %1120, i64 99, i64 24
  %1131 = add i64 %1096, %.v244
  store i64 %1131, i64* %3, align 8
  br i1 %1120, label %block_.L_4123c1, label %block_412376

block_412376:                                     ; preds = %block_41235e
  %1132 = add i64 %1077, -24
  %1133 = add i64 %1131, 5
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i64*
  %1135 = load i64, i64* %1134, align 8
  store i8 0, i8* %14, align 1
  %1136 = trunc i64 %1135 to i32
  %1137 = and i32 %1136, 255
  %1138 = tail call i32 @llvm.ctpop.i32(i32 %1137)
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  store i8 %1141, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1142 = icmp eq i64 %1135, 0
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %30, align 1
  %1144 = lshr i64 %1135, 63
  %1145 = trunc i64 %1144 to i8
  store i8 %1145, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v245 = select i1 %1142, i64 25, i64 11
  %1146 = add i64 %1131, %.v245
  store i64 %1146, i64* %3, align 8
  br i1 %1142, label %block_.L_41238f, label %block_412381

block_412381:                                     ; preds = %block_412376
  %1147 = add i64 %1146, 3
  store i64 %1147, i64* %3, align 8
  %1148 = load i32, i32* %1081, align 4
  %1149 = zext i32 %1148 to i64
  store i64 %1149, i64* %RAX.i1164, align 8
  %1150 = add i64 %1146, 7
  store i64 %1150, i64* %3, align 8
  %1151 = load i64, i64* %1134, align 8
  store i64 %1151, i64* %RCX.i1339, align 8
  %1152 = add i64 %1077, -36
  %1153 = add i64 %1146, 11
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = sext i32 %1155 to i64
  store i64 %1156, i64* %RDX.i1330, align 8
  %1157 = shl nsw i64 %1156, 2
  %1158 = add i64 %1157, %1151
  %1159 = add i64 %1146, 14
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1158 to i32*
  store i32 %1148, i32* %1160, align 4
  %.pre178 = load i64, i64* %RBP.i, align 8
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_41238f

block_.L_41238f:                                  ; preds = %block_412381, %block_412376
  %1161 = phi i64 [ %.pre179, %block_412381 ], [ %1146, %block_412376 ]
  %1162 = phi i64 [ %.pre178, %block_412381 ], [ %1077, %block_412376 ]
  %1163 = add i64 %1162, -36
  %1164 = add i64 %1161, 3
  store i64 %1164, i64* %3, align 8
  %1165 = inttoptr i64 %1163 to i32*
  %1166 = load i32, i32* %1165, align 4
  %1167 = add i32 %1166, 1
  %1168 = zext i32 %1167 to i64
  store i64 %1168, i64* %RAX.i1164, align 8
  %1169 = icmp eq i32 %1166, -1
  %1170 = icmp eq i32 %1167, 0
  %1171 = or i1 %1169, %1170
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %14, align 1
  %1173 = and i32 %1167, 255
  %1174 = tail call i32 @llvm.ctpop.i32(i32 %1173)
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  %1177 = xor i8 %1176, 1
  store i8 %1177, i8* %21, align 1
  %1178 = xor i32 %1167, %1166
  %1179 = lshr i32 %1178, 4
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  store i8 %1181, i8* %27, align 1
  %1182 = zext i1 %1170 to i8
  store i8 %1182, i8* %30, align 1
  %1183 = lshr i32 %1167, 31
  %1184 = trunc i32 %1183 to i8
  store i8 %1184, i8* %33, align 1
  %1185 = lshr i32 %1166, 31
  %1186 = xor i32 %1183, %1185
  %1187 = add nuw nsw i32 %1186, %1183
  %1188 = icmp eq i32 %1187, 2
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %39, align 1
  %1190 = add i64 %1161, 9
  store i64 %1190, i64* %3, align 8
  store i32 %1167, i32* %1165, align 4
  %1191 = load i64, i64* %RBP.i, align 8
  %1192 = add i64 %1191, -36
  %1193 = load i64, i64* %3, align 8
  %1194 = add i64 %1193, 3
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1192 to i32*
  %1196 = load i32, i32* %1195, align 4
  %1197 = zext i32 %1196 to i64
  store i64 %1197, i64* %RAX.i1164, align 8
  %1198 = add i64 %1191, -16
  %1199 = add i64 %1193, 6
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = sub i32 %1196, %1201
  %1203 = icmp ult i32 %1196, %1201
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %14, align 1
  %1205 = and i32 %1202, 255
  %1206 = tail call i32 @llvm.ctpop.i32(i32 %1205)
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = xor i8 %1208, 1
  store i8 %1209, i8* %21, align 1
  %1210 = xor i32 %1201, %1196
  %1211 = xor i32 %1210, %1202
  %1212 = lshr i32 %1211, 4
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  store i8 %1214, i8* %27, align 1
  %1215 = icmp eq i32 %1202, 0
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %30, align 1
  %1217 = lshr i32 %1202, 31
  %1218 = trunc i32 %1217 to i8
  store i8 %1218, i8* %33, align 1
  %1219 = lshr i32 %1196, 31
  %1220 = lshr i32 %1201, 31
  %1221 = xor i32 %1220, %1219
  %1222 = xor i32 %1217, %1219
  %1223 = add nuw nsw i32 %1222, %1221
  %1224 = icmp eq i32 %1223, 2
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %39, align 1
  %1226 = icmp ne i8 %1218, 0
  %1227 = xor i1 %1226, %1224
  %.v246 = select i1 %1227, i64 23, i64 12
  %1228 = add i64 %1193, %.v246
  store i64 %1228, i64* %3, align 8
  br i1 %1227, label %block_.L_4123af, label %block_4123a4

block_4123a4:                                     ; preds = %block_.L_41238f
  %1229 = add i64 %1228, 3
  store i64 %1229, i64* %3, align 8
  %1230 = load i32, i32* %1195, align 4
  %1231 = zext i32 %1230 to i64
  store i64 %1231, i64* %RAX.i1164, align 8
  %1232 = add i64 %1191, -4
  %1233 = add i64 %1228, 6
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  store i32 %1230, i32* %1234, align 4
  %1235 = load i64, i64* %3, align 8
  %1236 = add i64 %1235, 1770
  store i64 %1236, i64* %3, align 8
  br label %block_.L_412a94

block_.L_4123af:                                  ; preds = %block_.L_41238f
  %1237 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1238 = zext i32 %1237 to i64
  store i64 %1238, i64* %RAX.i1164, align 8
  %1239 = add i64 %1191, -40
  %1240 = add i64 %1228, 11
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i32*
  %1242 = load i32, i32* %1241, align 4
  %1243 = sext i32 %1242 to i64
  store i64 %1243, i64* %RCX.i1339, align 8
  %1244 = shl nsw i64 %1243, 2
  %1245 = add nsw i64 %1244, 11185584
  %1246 = add i64 %1228, 18
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i32*
  store i32 %1237, i32* %1247, align 4
  %.pre181 = load i64, i64* %3, align 8
  %.pre182 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4123c1

block_.L_4123c1:                                  ; preds = %block_41233a, %block_.L_4123af, %block_41235e
  %1248 = phi i64 [ %.pre182, %block_.L_4123af ], [ %1077, %block_41235e ], [ %1077, %block_41233a ]
  %1249 = phi i64 [ %.pre181, %block_.L_4123af ], [ %1131, %block_41235e ], [ %1096, %block_41233a ]
  %1250 = add i64 %1248, -32
  %1251 = add i64 %1249, 8
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = add i32 %1253, 1
  %1255 = zext i32 %1254 to i64
  store i64 %1255, i64* %RAX.i1164, align 8
  %1256 = icmp eq i32 %1253, -1
  %1257 = icmp eq i32 %1254, 0
  %1258 = or i1 %1256, %1257
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %14, align 1
  %1260 = and i32 %1254, 255
  %1261 = tail call i32 @llvm.ctpop.i32(i32 %1260)
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  store i8 %1264, i8* %21, align 1
  %1265 = xor i32 %1254, %1253
  %1266 = lshr i32 %1265, 4
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  store i8 %1268, i8* %27, align 1
  %1269 = zext i1 %1257 to i8
  store i8 %1269, i8* %30, align 1
  %1270 = lshr i32 %1254, 31
  %1271 = trunc i32 %1270 to i8
  store i8 %1271, i8* %33, align 1
  %1272 = lshr i32 %1253, 31
  %1273 = xor i32 %1270, %1272
  %1274 = add nuw nsw i32 %1273, %1270
  %1275 = icmp eq i32 %1274, 2
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %39, align 1
  %1277 = add i64 %1249, 14
  store i64 %1277, i64* %3, align 8
  store i32 %1254, i32* %1252, align 4
  %1278 = load i64, i64* %3, align 8
  %1279 = add i64 %1278, -165
  store i64 %1279, i64* %3, align 8
  br label %block_.L_41232a

block_.L_4123d4:                                  ; preds = %block_.L_41232a
  %1280 = add i64 %1061, 594
  br label %block_.L_412626

block_.L_4123d9:                                  ; preds = %block_412319
  %1281 = add i64 %951, -76
  %1282 = add i64 %1015, 3
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i32*
  %1284 = load i32, i32* %1283, align 4
  %1285 = zext i32 %1284 to i64
  store i64 %1285, i64* %RAX.i1164, align 8
  %1286 = add i64 %951, -92
  %1287 = add i64 %1015, 6
  store i64 %1287, i64* %3, align 8
  %1288 = inttoptr i64 %1286 to i32*
  store i32 %1284, i32* %1288, align 4
  %.pre159 = load i64, i64* %RBP.i, align 8
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_4123df

block_.L_4123df:                                  ; preds = %block_.L_412607, %block_.L_4123d9
  %1289 = phi i64 [ %2382, %block_.L_412607 ], [ %.pre160, %block_.L_4123d9 ]
  %1290 = phi i64 [ %2347, %block_.L_412607 ], [ %.pre159, %block_.L_4123d9 ]
  %1291 = add i64 %1290, -92
  %1292 = add i64 %1289, 3
  store i64 %1292, i64* %3, align 8
  %1293 = inttoptr i64 %1291 to i32*
  %1294 = load i32, i32* %1293, align 4
  %1295 = add i32 %1294, 20
  %1296 = zext i32 %1295 to i64
  store i64 %1296, i64* %RAX.i1164, align 8
  %1297 = icmp ugt i32 %1294, -21
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %14, align 1
  %1299 = and i32 %1295, 255
  %1300 = tail call i32 @llvm.ctpop.i32(i32 %1299)
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  %1303 = xor i8 %1302, 1
  store i8 %1303, i8* %21, align 1
  %1304 = xor i32 %1294, 16
  %1305 = xor i32 %1304, %1295
  %1306 = lshr i32 %1305, 4
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  store i8 %1308, i8* %27, align 1
  %1309 = icmp eq i32 %1295, 0
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %30, align 1
  %1311 = lshr i32 %1295, 31
  %1312 = trunc i32 %1311 to i8
  store i8 %1312, i8* %33, align 1
  %1313 = lshr i32 %1294, 31
  %1314 = xor i32 %1311, %1313
  %1315 = add nuw nsw i32 %1314, %1311
  %1316 = icmp eq i32 %1315, 2
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %39, align 1
  %1318 = sext i32 %1295 to i64
  store i64 %1318, i64* %RCX.i1339, align 8
  %1319 = add nsw i64 %1318, 12099168
  %1320 = add i64 %1289, 17
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1319 to i8*
  %1322 = load i8, i8* %1321, align 1
  %1323 = zext i8 %1322 to i64
  store i64 %1323, i64* %RAX.i1164, align 8
  %1324 = zext i8 %1322 to i32
  store i8 0, i8* %14, align 1
  %1325 = tail call i32 @llvm.ctpop.i32(i32 %1324)
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  %1328 = xor i8 %1327, 1
  store i8 %1328, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1329 = icmp eq i8 %1322, 0
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v225 = select i1 %1329, i64 26, i64 138
  %1331 = add i64 %1289, %.v225
  store i64 %1331, i64* %3, align 8
  br i1 %1329, label %block_4123f9, label %block_.L_412469

block_4123f9:                                     ; preds = %block_.L_4123df
  %1332 = add i64 %1331, 3
  store i64 %1332, i64* %3, align 8
  %1333 = load i32, i32* %1293, align 4
  %1334 = add i32 %1333, 20
  %1335 = zext i32 %1334 to i64
  store i64 %1335, i64* %RAX.i1164, align 8
  %1336 = icmp ugt i32 %1333, -21
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %14, align 1
  %1338 = and i32 %1334, 255
  %1339 = tail call i32 @llvm.ctpop.i32(i32 %1338)
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  %1342 = xor i8 %1341, 1
  store i8 %1342, i8* %21, align 1
  %1343 = xor i32 %1333, 16
  %1344 = xor i32 %1343, %1334
  %1345 = lshr i32 %1344, 4
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  store i8 %1347, i8* %27, align 1
  %1348 = icmp eq i32 %1334, 0
  %1349 = zext i1 %1348 to i8
  store i8 %1349, i8* %30, align 1
  %1350 = lshr i32 %1334, 31
  %1351 = trunc i32 %1350 to i8
  store i8 %1351, i8* %33, align 1
  %1352 = lshr i32 %1333, 31
  %1353 = xor i32 %1350, %1352
  %1354 = add nuw nsw i32 %1353, %1350
  %1355 = icmp eq i32 %1354, 2
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %39, align 1
  %1357 = sext i32 %1334 to i64
  store i64 %1357, i64* %RCX.i1339, align 8
  %1358 = shl nsw i64 %1357, 2
  %1359 = add nsw i64 %1358, 11185584
  %1360 = add i64 %1331, 16
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1359 to i32*
  %1362 = load i32, i32* %1361, align 4
  %1363 = zext i32 %1362 to i64
  store i64 %1363, i64* %RAX.i1164, align 8
  %1364 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1365 = sub i32 %1362, %1364
  %1366 = icmp ult i32 %1362, %1364
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %14, align 1
  %1368 = and i32 %1365, 255
  %1369 = tail call i32 @llvm.ctpop.i32(i32 %1368)
  %1370 = trunc i32 %1369 to i8
  %1371 = and i8 %1370, 1
  %1372 = xor i8 %1371, 1
  store i8 %1372, i8* %21, align 1
  %1373 = xor i32 %1364, %1362
  %1374 = xor i32 %1373, %1365
  %1375 = lshr i32 %1374, 4
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  store i8 %1377, i8* %27, align 1
  %1378 = icmp eq i32 %1365, 0
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %30, align 1
  %1380 = lshr i32 %1365, 31
  %1381 = trunc i32 %1380 to i8
  store i8 %1381, i8* %33, align 1
  %1382 = lshr i32 %1362, 31
  %1383 = lshr i32 %1364, 31
  %1384 = xor i32 %1383, %1382
  %1385 = xor i32 %1380, %1382
  %1386 = add nuw nsw i32 %1385, %1384
  %1387 = icmp eq i32 %1386, 2
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %39, align 1
  %.v239 = select i1 %1378, i64 112, i64 29
  %1389 = add i64 %1331, %.v239
  store i64 %1389, i64* %3, align 8
  br i1 %1378, label %block_.L_412469, label %block_412416

block_412416:                                     ; preds = %block_4123f9
  %1390 = add i64 %1290, -24
  %1391 = add i64 %1389, 5
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i64*
  %1393 = load i64, i64* %1392, align 8
  store i8 0, i8* %14, align 1
  %1394 = trunc i64 %1393 to i32
  %1395 = and i32 %1394, 255
  %1396 = tail call i32 @llvm.ctpop.i32(i32 %1395)
  %1397 = trunc i32 %1396 to i8
  %1398 = and i8 %1397, 1
  %1399 = xor i8 %1398, 1
  store i8 %1399, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1400 = icmp eq i64 %1393, 0
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %30, align 1
  %1402 = lshr i64 %1393, 63
  %1403 = trunc i64 %1402 to i8
  store i8 %1403, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v240 = select i1 %1400, i64 28, i64 11
  %1404 = add i64 %1389, %.v240
  store i64 %1404, i64* %3, align 8
  br i1 %1400, label %block_.L_412432, label %block_412421

block_412421:                                     ; preds = %block_412416
  %1405 = add i64 %1404, 3
  store i64 %1405, i64* %3, align 8
  %1406 = load i32, i32* %1293, align 4
  %1407 = add i32 %1406, 20
  %1408 = zext i32 %1407 to i64
  store i64 %1408, i64* %RAX.i1164, align 8
  %1409 = icmp ugt i32 %1406, -21
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %14, align 1
  %1411 = and i32 %1407, 255
  %1412 = tail call i32 @llvm.ctpop.i32(i32 %1411)
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  %1415 = xor i8 %1414, 1
  store i8 %1415, i8* %21, align 1
  %1416 = xor i32 %1406, 16
  %1417 = xor i32 %1416, %1407
  %1418 = lshr i32 %1417, 4
  %1419 = trunc i32 %1418 to i8
  %1420 = and i8 %1419, 1
  store i8 %1420, i8* %27, align 1
  %1421 = icmp eq i32 %1407, 0
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %30, align 1
  %1423 = lshr i32 %1407, 31
  %1424 = trunc i32 %1423 to i8
  store i8 %1424, i8* %33, align 1
  %1425 = lshr i32 %1406, 31
  %1426 = xor i32 %1423, %1425
  %1427 = add nuw nsw i32 %1426, %1423
  %1428 = icmp eq i32 %1427, 2
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %39, align 1
  %1430 = add i64 %1404, 10
  store i64 %1430, i64* %3, align 8
  %1431 = load i64, i64* %1392, align 8
  store i64 %1431, i64* %RCX.i1339, align 8
  %1432 = add i64 %1290, -36
  %1433 = add i64 %1404, 14
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1432 to i32*
  %1435 = load i32, i32* %1434, align 4
  %1436 = sext i32 %1435 to i64
  store i64 %1436, i64* %RDX.i1330, align 8
  %1437 = shl nsw i64 %1436, 2
  %1438 = add i64 %1437, %1431
  %1439 = add i64 %1404, 17
  store i64 %1439, i64* %3, align 8
  %1440 = inttoptr i64 %1438 to i32*
  store i32 %1407, i32* %1440, align 4
  %.pre161 = load i64, i64* %RBP.i, align 8
  %.pre162 = load i64, i64* %3, align 8
  br label %block_.L_412432

block_.L_412432:                                  ; preds = %block_412421, %block_412416
  %1441 = phi i64 [ %.pre162, %block_412421 ], [ %1404, %block_412416 ]
  %1442 = phi i64 [ %.pre161, %block_412421 ], [ %1290, %block_412416 ]
  %1443 = add i64 %1442, -36
  %1444 = add i64 %1441, 3
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i32*
  %1446 = load i32, i32* %1445, align 4
  %1447 = add i32 %1446, 1
  %1448 = zext i32 %1447 to i64
  store i64 %1448, i64* %RAX.i1164, align 8
  %1449 = icmp eq i32 %1446, -1
  %1450 = icmp eq i32 %1447, 0
  %1451 = or i1 %1449, %1450
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %14, align 1
  %1453 = and i32 %1447, 255
  %1454 = tail call i32 @llvm.ctpop.i32(i32 %1453)
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = xor i8 %1456, 1
  store i8 %1457, i8* %21, align 1
  %1458 = xor i32 %1447, %1446
  %1459 = lshr i32 %1458, 4
  %1460 = trunc i32 %1459 to i8
  %1461 = and i8 %1460, 1
  store i8 %1461, i8* %27, align 1
  %1462 = zext i1 %1450 to i8
  store i8 %1462, i8* %30, align 1
  %1463 = lshr i32 %1447, 31
  %1464 = trunc i32 %1463 to i8
  store i8 %1464, i8* %33, align 1
  %1465 = lshr i32 %1446, 31
  %1466 = xor i32 %1463, %1465
  %1467 = add nuw nsw i32 %1466, %1463
  %1468 = icmp eq i32 %1467, 2
  %1469 = zext i1 %1468 to i8
  store i8 %1469, i8* %39, align 1
  %1470 = add i64 %1441, 9
  store i64 %1470, i64* %3, align 8
  store i32 %1447, i32* %1445, align 4
  %1471 = load i64, i64* %RBP.i, align 8
  %1472 = add i64 %1471, -36
  %1473 = load i64, i64* %3, align 8
  %1474 = add i64 %1473, 3
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1472 to i32*
  %1476 = load i32, i32* %1475, align 4
  %1477 = zext i32 %1476 to i64
  store i64 %1477, i64* %RAX.i1164, align 8
  %1478 = add i64 %1471, -16
  %1479 = add i64 %1473, 6
  store i64 %1479, i64* %3, align 8
  %1480 = inttoptr i64 %1478 to i32*
  %1481 = load i32, i32* %1480, align 4
  %1482 = sub i32 %1476, %1481
  %1483 = icmp ult i32 %1476, %1481
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %14, align 1
  %1485 = and i32 %1482, 255
  %1486 = tail call i32 @llvm.ctpop.i32(i32 %1485)
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  %1489 = xor i8 %1488, 1
  store i8 %1489, i8* %21, align 1
  %1490 = xor i32 %1481, %1476
  %1491 = xor i32 %1490, %1482
  %1492 = lshr i32 %1491, 4
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  store i8 %1494, i8* %27, align 1
  %1495 = icmp eq i32 %1482, 0
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %30, align 1
  %1497 = lshr i32 %1482, 31
  %1498 = trunc i32 %1497 to i8
  store i8 %1498, i8* %33, align 1
  %1499 = lshr i32 %1476, 31
  %1500 = lshr i32 %1481, 31
  %1501 = xor i32 %1500, %1499
  %1502 = xor i32 %1497, %1499
  %1503 = add nuw nsw i32 %1502, %1501
  %1504 = icmp eq i32 %1503, 2
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %39, align 1
  %1506 = icmp ne i8 %1498, 0
  %1507 = xor i1 %1506, %1504
  %.v241 = select i1 %1507, i64 23, i64 12
  %1508 = add i64 %1473, %.v241
  store i64 %1508, i64* %3, align 8
  br i1 %1507, label %block_.L_412452, label %block_412447

block_412447:                                     ; preds = %block_.L_412432
  %1509 = add i64 %1508, 3
  store i64 %1509, i64* %3, align 8
  %1510 = load i32, i32* %1475, align 4
  %1511 = zext i32 %1510 to i64
  store i64 %1511, i64* %RAX.i1164, align 8
  %1512 = add i64 %1471, -4
  %1513 = add i64 %1508, 6
  store i64 %1513, i64* %3, align 8
  %1514 = inttoptr i64 %1512 to i32*
  store i32 %1510, i32* %1514, align 4
  %1515 = load i64, i64* %3, align 8
  %1516 = add i64 %1515, 1607
  store i64 %1516, i64* %3, align 8
  br label %block_.L_412a94

block_.L_412452:                                  ; preds = %block_.L_412432
  %1517 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1518 = zext i32 %1517 to i64
  store i64 %1518, i64* %RAX.i1164, align 8
  %1519 = add i64 %1471, -92
  %1520 = add i64 %1508, 10
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1519 to i32*
  %1522 = load i32, i32* %1521, align 4
  %1523 = add i32 %1522, 20
  %1524 = zext i32 %1523 to i64
  store i64 %1524, i64* %RCX.i1339, align 8
  %1525 = icmp ugt i32 %1522, -21
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %14, align 1
  %1527 = and i32 %1523, 255
  %1528 = tail call i32 @llvm.ctpop.i32(i32 %1527)
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  %1531 = xor i8 %1530, 1
  store i8 %1531, i8* %21, align 1
  %1532 = xor i32 %1522, 16
  %1533 = xor i32 %1532, %1523
  %1534 = lshr i32 %1533, 4
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  store i8 %1536, i8* %27, align 1
  %1537 = icmp eq i32 %1523, 0
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %30, align 1
  %1539 = lshr i32 %1523, 31
  %1540 = trunc i32 %1539 to i8
  store i8 %1540, i8* %33, align 1
  %1541 = lshr i32 %1522, 31
  %1542 = xor i32 %1539, %1541
  %1543 = add nuw nsw i32 %1542, %1539
  %1544 = icmp eq i32 %1543, 2
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %39, align 1
  %1546 = sext i32 %1523 to i64
  store i64 %1546, i64* %RDX.i1330, align 8
  %1547 = shl nsw i64 %1546, 2
  %1548 = add nsw i64 %1547, 11185584
  %1549 = add i64 %1508, 23
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i32*
  store i32 %1517, i32* %1550, align 4
  %.pre163 = load i64, i64* %RBP.i, align 8
  %.pre164 = load i64, i64* %3, align 8
  br label %block_.L_412469

block_.L_412469:                                  ; preds = %block_.L_4123df, %block_.L_412452, %block_4123f9
  %1551 = phi i64 [ %.pre164, %block_.L_412452 ], [ %1389, %block_4123f9 ], [ %1331, %block_.L_4123df ]
  %1552 = phi i64 [ %.pre163, %block_.L_412452 ], [ %1290, %block_4123f9 ], [ %1290, %block_.L_4123df ]
  %1553 = add i64 %1552, -92
  %1554 = add i64 %1551, 3
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1553 to i32*
  %1556 = load i32, i32* %1555, align 4
  %1557 = add i32 %1556, -1
  %1558 = zext i32 %1557 to i64
  store i64 %1558, i64* %RAX.i1164, align 8
  %1559 = icmp eq i32 %1556, 0
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %14, align 1
  %1561 = and i32 %1557, 255
  %1562 = tail call i32 @llvm.ctpop.i32(i32 %1561)
  %1563 = trunc i32 %1562 to i8
  %1564 = and i8 %1563, 1
  %1565 = xor i8 %1564, 1
  store i8 %1565, i8* %21, align 1
  %1566 = xor i32 %1557, %1556
  %1567 = lshr i32 %1566, 4
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  store i8 %1569, i8* %27, align 1
  %1570 = icmp eq i32 %1557, 0
  %1571 = zext i1 %1570 to i8
  store i8 %1571, i8* %30, align 1
  %1572 = lshr i32 %1557, 31
  %1573 = trunc i32 %1572 to i8
  store i8 %1573, i8* %33, align 1
  %1574 = lshr i32 %1556, 31
  %1575 = xor i32 %1572, %1574
  %1576 = add nuw nsw i32 %1575, %1574
  %1577 = icmp eq i32 %1576, 2
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %39, align 1
  %1579 = sext i32 %1557 to i64
  store i64 %1579, i64* %RCX.i1339, align 8
  %1580 = add nsw i64 %1579, 12099168
  %1581 = add i64 %1551, 17
  store i64 %1581, i64* %3, align 8
  %1582 = inttoptr i64 %1580 to i8*
  %1583 = load i8, i8* %1582, align 1
  %1584 = zext i8 %1583 to i64
  store i64 %1584, i64* %RAX.i1164, align 8
  %1585 = zext i8 %1583 to i32
  store i8 0, i8* %14, align 1
  %1586 = tail call i32 @llvm.ctpop.i32(i32 %1585)
  %1587 = trunc i32 %1586 to i8
  %1588 = and i8 %1587, 1
  %1589 = xor i8 %1588, 1
  store i8 %1589, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1590 = icmp eq i8 %1583, 0
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v226 = select i1 %1590, i64 26, i64 138
  %1592 = add i64 %1551, %.v226
  store i64 %1592, i64* %3, align 8
  br i1 %1590, label %block_412483, label %block_.L_4124f3

block_412483:                                     ; preds = %block_.L_412469
  %1593 = add i64 %1592, 3
  store i64 %1593, i64* %3, align 8
  %1594 = load i32, i32* %1555, align 4
  %1595 = add i32 %1594, -1
  %1596 = zext i32 %1595 to i64
  store i64 %1596, i64* %RAX.i1164, align 8
  %1597 = icmp eq i32 %1594, 0
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %14, align 1
  %1599 = and i32 %1595, 255
  %1600 = tail call i32 @llvm.ctpop.i32(i32 %1599)
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  store i8 %1603, i8* %21, align 1
  %1604 = xor i32 %1595, %1594
  %1605 = lshr i32 %1604, 4
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  store i8 %1607, i8* %27, align 1
  %1608 = icmp eq i32 %1595, 0
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %30, align 1
  %1610 = lshr i32 %1595, 31
  %1611 = trunc i32 %1610 to i8
  store i8 %1611, i8* %33, align 1
  %1612 = lshr i32 %1594, 31
  %1613 = xor i32 %1610, %1612
  %1614 = add nuw nsw i32 %1613, %1612
  %1615 = icmp eq i32 %1614, 2
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %39, align 1
  %1617 = sext i32 %1595 to i64
  store i64 %1617, i64* %RCX.i1339, align 8
  %1618 = shl nsw i64 %1617, 2
  %1619 = add nsw i64 %1618, 11185584
  %1620 = add i64 %1592, 16
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1619 to i32*
  %1622 = load i32, i32* %1621, align 4
  %1623 = zext i32 %1622 to i64
  store i64 %1623, i64* %RAX.i1164, align 8
  %1624 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1625 = sub i32 %1622, %1624
  %1626 = icmp ult i32 %1622, %1624
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %14, align 1
  %1628 = and i32 %1625, 255
  %1629 = tail call i32 @llvm.ctpop.i32(i32 %1628)
  %1630 = trunc i32 %1629 to i8
  %1631 = and i8 %1630, 1
  %1632 = xor i8 %1631, 1
  store i8 %1632, i8* %21, align 1
  %1633 = xor i32 %1624, %1622
  %1634 = xor i32 %1633, %1625
  %1635 = lshr i32 %1634, 4
  %1636 = trunc i32 %1635 to i8
  %1637 = and i8 %1636, 1
  store i8 %1637, i8* %27, align 1
  %1638 = icmp eq i32 %1625, 0
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %30, align 1
  %1640 = lshr i32 %1625, 31
  %1641 = trunc i32 %1640 to i8
  store i8 %1641, i8* %33, align 1
  %1642 = lshr i32 %1622, 31
  %1643 = lshr i32 %1624, 31
  %1644 = xor i32 %1643, %1642
  %1645 = xor i32 %1640, %1642
  %1646 = add nuw nsw i32 %1645, %1644
  %1647 = icmp eq i32 %1646, 2
  %1648 = zext i1 %1647 to i8
  store i8 %1648, i8* %39, align 1
  %.v236 = select i1 %1638, i64 112, i64 29
  %1649 = add i64 %1592, %.v236
  store i64 %1649, i64* %3, align 8
  br i1 %1638, label %block_.L_4124f3, label %block_4124a0

block_4124a0:                                     ; preds = %block_412483
  %1650 = add i64 %1552, -24
  %1651 = add i64 %1649, 5
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1650 to i64*
  %1653 = load i64, i64* %1652, align 8
  store i8 0, i8* %14, align 1
  %1654 = trunc i64 %1653 to i32
  %1655 = and i32 %1654, 255
  %1656 = tail call i32 @llvm.ctpop.i32(i32 %1655)
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  %1659 = xor i8 %1658, 1
  store i8 %1659, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1660 = icmp eq i64 %1653, 0
  %1661 = zext i1 %1660 to i8
  store i8 %1661, i8* %30, align 1
  %1662 = lshr i64 %1653, 63
  %1663 = trunc i64 %1662 to i8
  store i8 %1663, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v237 = select i1 %1660, i64 28, i64 11
  %1664 = add i64 %1649, %.v237
  store i64 %1664, i64* %3, align 8
  br i1 %1660, label %block_.L_4124bc, label %block_4124ab

block_4124ab:                                     ; preds = %block_4124a0
  %1665 = add i64 %1664, 3
  store i64 %1665, i64* %3, align 8
  %1666 = load i32, i32* %1555, align 4
  %1667 = add i32 %1666, -1
  %1668 = zext i32 %1667 to i64
  store i64 %1668, i64* %RAX.i1164, align 8
  %1669 = icmp eq i32 %1666, 0
  %1670 = zext i1 %1669 to i8
  store i8 %1670, i8* %14, align 1
  %1671 = and i32 %1667, 255
  %1672 = tail call i32 @llvm.ctpop.i32(i32 %1671)
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  %1675 = xor i8 %1674, 1
  store i8 %1675, i8* %21, align 1
  %1676 = xor i32 %1667, %1666
  %1677 = lshr i32 %1676, 4
  %1678 = trunc i32 %1677 to i8
  %1679 = and i8 %1678, 1
  store i8 %1679, i8* %27, align 1
  %1680 = icmp eq i32 %1667, 0
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %30, align 1
  %1682 = lshr i32 %1667, 31
  %1683 = trunc i32 %1682 to i8
  store i8 %1683, i8* %33, align 1
  %1684 = lshr i32 %1666, 31
  %1685 = xor i32 %1682, %1684
  %1686 = add nuw nsw i32 %1685, %1684
  %1687 = icmp eq i32 %1686, 2
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %39, align 1
  %1689 = add i64 %1664, 10
  store i64 %1689, i64* %3, align 8
  %1690 = load i64, i64* %1652, align 8
  store i64 %1690, i64* %RCX.i1339, align 8
  %1691 = add i64 %1552, -36
  %1692 = add i64 %1664, 14
  store i64 %1692, i64* %3, align 8
  %1693 = inttoptr i64 %1691 to i32*
  %1694 = load i32, i32* %1693, align 4
  %1695 = sext i32 %1694 to i64
  store i64 %1695, i64* %RDX.i1330, align 8
  %1696 = shl nsw i64 %1695, 2
  %1697 = add i64 %1696, %1690
  %1698 = add i64 %1664, 17
  store i64 %1698, i64* %3, align 8
  %1699 = inttoptr i64 %1697 to i32*
  store i32 %1667, i32* %1699, align 4
  %.pre165 = load i64, i64* %RBP.i, align 8
  %.pre166 = load i64, i64* %3, align 8
  br label %block_.L_4124bc

block_.L_4124bc:                                  ; preds = %block_4124ab, %block_4124a0
  %1700 = phi i64 [ %.pre166, %block_4124ab ], [ %1664, %block_4124a0 ]
  %1701 = phi i64 [ %.pre165, %block_4124ab ], [ %1552, %block_4124a0 ]
  %1702 = add i64 %1701, -36
  %1703 = add i64 %1700, 3
  store i64 %1703, i64* %3, align 8
  %1704 = inttoptr i64 %1702 to i32*
  %1705 = load i32, i32* %1704, align 4
  %1706 = add i32 %1705, 1
  %1707 = zext i32 %1706 to i64
  store i64 %1707, i64* %RAX.i1164, align 8
  %1708 = icmp eq i32 %1705, -1
  %1709 = icmp eq i32 %1706, 0
  %1710 = or i1 %1708, %1709
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %14, align 1
  %1712 = and i32 %1706, 255
  %1713 = tail call i32 @llvm.ctpop.i32(i32 %1712)
  %1714 = trunc i32 %1713 to i8
  %1715 = and i8 %1714, 1
  %1716 = xor i8 %1715, 1
  store i8 %1716, i8* %21, align 1
  %1717 = xor i32 %1706, %1705
  %1718 = lshr i32 %1717, 4
  %1719 = trunc i32 %1718 to i8
  %1720 = and i8 %1719, 1
  store i8 %1720, i8* %27, align 1
  %1721 = zext i1 %1709 to i8
  store i8 %1721, i8* %30, align 1
  %1722 = lshr i32 %1706, 31
  %1723 = trunc i32 %1722 to i8
  store i8 %1723, i8* %33, align 1
  %1724 = lshr i32 %1705, 31
  %1725 = xor i32 %1722, %1724
  %1726 = add nuw nsw i32 %1725, %1722
  %1727 = icmp eq i32 %1726, 2
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %39, align 1
  %1729 = add i64 %1700, 9
  store i64 %1729, i64* %3, align 8
  store i32 %1706, i32* %1704, align 4
  %1730 = load i64, i64* %RBP.i, align 8
  %1731 = add i64 %1730, -36
  %1732 = load i64, i64* %3, align 8
  %1733 = add i64 %1732, 3
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1731 to i32*
  %1735 = load i32, i32* %1734, align 4
  %1736 = zext i32 %1735 to i64
  store i64 %1736, i64* %RAX.i1164, align 8
  %1737 = add i64 %1730, -16
  %1738 = add i64 %1732, 6
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1737 to i32*
  %1740 = load i32, i32* %1739, align 4
  %1741 = sub i32 %1735, %1740
  %1742 = icmp ult i32 %1735, %1740
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %14, align 1
  %1744 = and i32 %1741, 255
  %1745 = tail call i32 @llvm.ctpop.i32(i32 %1744)
  %1746 = trunc i32 %1745 to i8
  %1747 = and i8 %1746, 1
  %1748 = xor i8 %1747, 1
  store i8 %1748, i8* %21, align 1
  %1749 = xor i32 %1740, %1735
  %1750 = xor i32 %1749, %1741
  %1751 = lshr i32 %1750, 4
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  store i8 %1753, i8* %27, align 1
  %1754 = icmp eq i32 %1741, 0
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %30, align 1
  %1756 = lshr i32 %1741, 31
  %1757 = trunc i32 %1756 to i8
  store i8 %1757, i8* %33, align 1
  %1758 = lshr i32 %1735, 31
  %1759 = lshr i32 %1740, 31
  %1760 = xor i32 %1759, %1758
  %1761 = xor i32 %1756, %1758
  %1762 = add nuw nsw i32 %1761, %1760
  %1763 = icmp eq i32 %1762, 2
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %39, align 1
  %1765 = icmp ne i8 %1757, 0
  %1766 = xor i1 %1765, %1763
  %.v238 = select i1 %1766, i64 23, i64 12
  %1767 = add i64 %1732, %.v238
  store i64 %1767, i64* %3, align 8
  br i1 %1766, label %block_.L_4124dc, label %block_4124d1

block_4124d1:                                     ; preds = %block_.L_4124bc
  %1768 = add i64 %1767, 3
  store i64 %1768, i64* %3, align 8
  %1769 = load i32, i32* %1734, align 4
  %1770 = zext i32 %1769 to i64
  store i64 %1770, i64* %RAX.i1164, align 8
  %1771 = add i64 %1730, -4
  %1772 = add i64 %1767, 6
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i32*
  store i32 %1769, i32* %1773, align 4
  %1774 = load i64, i64* %3, align 8
  %1775 = add i64 %1774, 1469
  store i64 %1775, i64* %3, align 8
  br label %block_.L_412a94

block_.L_4124dc:                                  ; preds = %block_.L_4124bc
  %1776 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1777 = zext i32 %1776 to i64
  store i64 %1777, i64* %RAX.i1164, align 8
  %1778 = add i64 %1730, -92
  %1779 = add i64 %1767, 10
  store i64 %1779, i64* %3, align 8
  %1780 = inttoptr i64 %1778 to i32*
  %1781 = load i32, i32* %1780, align 4
  %1782 = add i32 %1781, -1
  %1783 = zext i32 %1782 to i64
  store i64 %1783, i64* %RCX.i1339, align 8
  %1784 = icmp eq i32 %1781, 0
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %14, align 1
  %1786 = and i32 %1782, 255
  %1787 = tail call i32 @llvm.ctpop.i32(i32 %1786)
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = xor i8 %1789, 1
  store i8 %1790, i8* %21, align 1
  %1791 = xor i32 %1782, %1781
  %1792 = lshr i32 %1791, 4
  %1793 = trunc i32 %1792 to i8
  %1794 = and i8 %1793, 1
  store i8 %1794, i8* %27, align 1
  %1795 = icmp eq i32 %1782, 0
  %1796 = zext i1 %1795 to i8
  store i8 %1796, i8* %30, align 1
  %1797 = lshr i32 %1782, 31
  %1798 = trunc i32 %1797 to i8
  store i8 %1798, i8* %33, align 1
  %1799 = lshr i32 %1781, 31
  %1800 = xor i32 %1797, %1799
  %1801 = add nuw nsw i32 %1800, %1799
  %1802 = icmp eq i32 %1801, 2
  %1803 = zext i1 %1802 to i8
  store i8 %1803, i8* %39, align 1
  %1804 = sext i32 %1782 to i64
  store i64 %1804, i64* %RDX.i1330, align 8
  %1805 = shl nsw i64 %1804, 2
  %1806 = add nsw i64 %1805, 11185584
  %1807 = add i64 %1767, 23
  store i64 %1807, i64* %3, align 8
  %1808 = inttoptr i64 %1806 to i32*
  store i32 %1776, i32* %1808, align 4
  %.pre167 = load i64, i64* %RBP.i, align 8
  %.pre168 = load i64, i64* %3, align 8
  br label %block_.L_4124f3

block_.L_4124f3:                                  ; preds = %block_.L_412469, %block_.L_4124dc, %block_412483
  %1809 = phi i64 [ %.pre168, %block_.L_4124dc ], [ %1649, %block_412483 ], [ %1592, %block_.L_412469 ]
  %1810 = phi i64 [ %.pre167, %block_.L_4124dc ], [ %1552, %block_412483 ], [ %1552, %block_.L_412469 ]
  %1811 = add i64 %1810, -92
  %1812 = add i64 %1809, 3
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1811 to i32*
  %1814 = load i32, i32* %1813, align 4
  %1815 = add i32 %1814, -20
  %1816 = zext i32 %1815 to i64
  store i64 %1816, i64* %RAX.i1164, align 8
  %1817 = icmp ult i32 %1814, 20
  %1818 = zext i1 %1817 to i8
  store i8 %1818, i8* %14, align 1
  %1819 = and i32 %1815, 255
  %1820 = tail call i32 @llvm.ctpop.i32(i32 %1819)
  %1821 = trunc i32 %1820 to i8
  %1822 = and i8 %1821, 1
  %1823 = xor i8 %1822, 1
  store i8 %1823, i8* %21, align 1
  %1824 = xor i32 %1814, 16
  %1825 = xor i32 %1824, %1815
  %1826 = lshr i32 %1825, 4
  %1827 = trunc i32 %1826 to i8
  %1828 = and i8 %1827, 1
  store i8 %1828, i8* %27, align 1
  %1829 = icmp eq i32 %1815, 0
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %30, align 1
  %1831 = lshr i32 %1815, 31
  %1832 = trunc i32 %1831 to i8
  store i8 %1832, i8* %33, align 1
  %1833 = lshr i32 %1814, 31
  %1834 = xor i32 %1831, %1833
  %1835 = add nuw nsw i32 %1834, %1833
  %1836 = icmp eq i32 %1835, 2
  %1837 = zext i1 %1836 to i8
  store i8 %1837, i8* %39, align 1
  %1838 = sext i32 %1815 to i64
  store i64 %1838, i64* %RCX.i1339, align 8
  %1839 = add nsw i64 %1838, 12099168
  %1840 = add i64 %1809, 17
  store i64 %1840, i64* %3, align 8
  %1841 = inttoptr i64 %1839 to i8*
  %1842 = load i8, i8* %1841, align 1
  %1843 = zext i8 %1842 to i64
  store i64 %1843, i64* %RAX.i1164, align 8
  %1844 = zext i8 %1842 to i32
  store i8 0, i8* %14, align 1
  %1845 = tail call i32 @llvm.ctpop.i32(i32 %1844)
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = xor i8 %1847, 1
  store i8 %1848, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1849 = icmp eq i8 %1842, 0
  %1850 = zext i1 %1849 to i8
  store i8 %1850, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v227 = select i1 %1849, i64 26, i64 138
  %1851 = add i64 %1809, %.v227
  store i64 %1851, i64* %3, align 8
  br i1 %1849, label %block_41250d, label %block_.L_41257d

block_41250d:                                     ; preds = %block_.L_4124f3
  %1852 = add i64 %1851, 3
  store i64 %1852, i64* %3, align 8
  %1853 = load i32, i32* %1813, align 4
  %1854 = add i32 %1853, -20
  %1855 = zext i32 %1854 to i64
  store i64 %1855, i64* %RAX.i1164, align 8
  %1856 = icmp ult i32 %1853, 20
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %14, align 1
  %1858 = and i32 %1854, 255
  %1859 = tail call i32 @llvm.ctpop.i32(i32 %1858)
  %1860 = trunc i32 %1859 to i8
  %1861 = and i8 %1860, 1
  %1862 = xor i8 %1861, 1
  store i8 %1862, i8* %21, align 1
  %1863 = xor i32 %1853, 16
  %1864 = xor i32 %1863, %1854
  %1865 = lshr i32 %1864, 4
  %1866 = trunc i32 %1865 to i8
  %1867 = and i8 %1866, 1
  store i8 %1867, i8* %27, align 1
  %1868 = icmp eq i32 %1854, 0
  %1869 = zext i1 %1868 to i8
  store i8 %1869, i8* %30, align 1
  %1870 = lshr i32 %1854, 31
  %1871 = trunc i32 %1870 to i8
  store i8 %1871, i8* %33, align 1
  %1872 = lshr i32 %1853, 31
  %1873 = xor i32 %1870, %1872
  %1874 = add nuw nsw i32 %1873, %1872
  %1875 = icmp eq i32 %1874, 2
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %39, align 1
  %1877 = sext i32 %1854 to i64
  store i64 %1877, i64* %RCX.i1339, align 8
  %1878 = shl nsw i64 %1877, 2
  %1879 = add nsw i64 %1878, 11185584
  %1880 = add i64 %1851, 16
  store i64 %1880, i64* %3, align 8
  %1881 = inttoptr i64 %1879 to i32*
  %1882 = load i32, i32* %1881, align 4
  %1883 = zext i32 %1882 to i64
  store i64 %1883, i64* %RAX.i1164, align 8
  %1884 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1885 = sub i32 %1882, %1884
  %1886 = icmp ult i32 %1882, %1884
  %1887 = zext i1 %1886 to i8
  store i8 %1887, i8* %14, align 1
  %1888 = and i32 %1885, 255
  %1889 = tail call i32 @llvm.ctpop.i32(i32 %1888)
  %1890 = trunc i32 %1889 to i8
  %1891 = and i8 %1890, 1
  %1892 = xor i8 %1891, 1
  store i8 %1892, i8* %21, align 1
  %1893 = xor i32 %1884, %1882
  %1894 = xor i32 %1893, %1885
  %1895 = lshr i32 %1894, 4
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  store i8 %1897, i8* %27, align 1
  %1898 = icmp eq i32 %1885, 0
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %30, align 1
  %1900 = lshr i32 %1885, 31
  %1901 = trunc i32 %1900 to i8
  store i8 %1901, i8* %33, align 1
  %1902 = lshr i32 %1882, 31
  %1903 = lshr i32 %1884, 31
  %1904 = xor i32 %1903, %1902
  %1905 = xor i32 %1900, %1902
  %1906 = add nuw nsw i32 %1905, %1904
  %1907 = icmp eq i32 %1906, 2
  %1908 = zext i1 %1907 to i8
  store i8 %1908, i8* %39, align 1
  %.v233 = select i1 %1898, i64 112, i64 29
  %1909 = add i64 %1851, %.v233
  store i64 %1909, i64* %3, align 8
  br i1 %1898, label %block_.L_41257d, label %block_41252a

block_41252a:                                     ; preds = %block_41250d
  %1910 = add i64 %1810, -24
  %1911 = add i64 %1909, 5
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1910 to i64*
  %1913 = load i64, i64* %1912, align 8
  store i8 0, i8* %14, align 1
  %1914 = trunc i64 %1913 to i32
  %1915 = and i32 %1914, 255
  %1916 = tail call i32 @llvm.ctpop.i32(i32 %1915)
  %1917 = trunc i32 %1916 to i8
  %1918 = and i8 %1917, 1
  %1919 = xor i8 %1918, 1
  store i8 %1919, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1920 = icmp eq i64 %1913, 0
  %1921 = zext i1 %1920 to i8
  store i8 %1921, i8* %30, align 1
  %1922 = lshr i64 %1913, 63
  %1923 = trunc i64 %1922 to i8
  store i8 %1923, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v234 = select i1 %1920, i64 28, i64 11
  %1924 = add i64 %1909, %.v234
  store i64 %1924, i64* %3, align 8
  br i1 %1920, label %block_.L_412546, label %block_412535

block_412535:                                     ; preds = %block_41252a
  %1925 = add i64 %1924, 3
  store i64 %1925, i64* %3, align 8
  %1926 = load i32, i32* %1813, align 4
  %1927 = add i32 %1926, -20
  %1928 = zext i32 %1927 to i64
  store i64 %1928, i64* %RAX.i1164, align 8
  %1929 = icmp ult i32 %1926, 20
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %14, align 1
  %1931 = and i32 %1927, 255
  %1932 = tail call i32 @llvm.ctpop.i32(i32 %1931)
  %1933 = trunc i32 %1932 to i8
  %1934 = and i8 %1933, 1
  %1935 = xor i8 %1934, 1
  store i8 %1935, i8* %21, align 1
  %1936 = xor i32 %1926, 16
  %1937 = xor i32 %1936, %1927
  %1938 = lshr i32 %1937, 4
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  store i8 %1940, i8* %27, align 1
  %1941 = icmp eq i32 %1927, 0
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %30, align 1
  %1943 = lshr i32 %1927, 31
  %1944 = trunc i32 %1943 to i8
  store i8 %1944, i8* %33, align 1
  %1945 = lshr i32 %1926, 31
  %1946 = xor i32 %1943, %1945
  %1947 = add nuw nsw i32 %1946, %1945
  %1948 = icmp eq i32 %1947, 2
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %39, align 1
  %1950 = add i64 %1924, 10
  store i64 %1950, i64* %3, align 8
  %1951 = load i64, i64* %1912, align 8
  store i64 %1951, i64* %RCX.i1339, align 8
  %1952 = add i64 %1810, -36
  %1953 = add i64 %1924, 14
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1952 to i32*
  %1955 = load i32, i32* %1954, align 4
  %1956 = sext i32 %1955 to i64
  store i64 %1956, i64* %RDX.i1330, align 8
  %1957 = shl nsw i64 %1956, 2
  %1958 = add i64 %1957, %1951
  %1959 = add i64 %1924, 17
  store i64 %1959, i64* %3, align 8
  %1960 = inttoptr i64 %1958 to i32*
  store i32 %1927, i32* %1960, align 4
  %.pre169 = load i64, i64* %RBP.i, align 8
  %.pre170 = load i64, i64* %3, align 8
  br label %block_.L_412546

block_.L_412546:                                  ; preds = %block_412535, %block_41252a
  %1961 = phi i64 [ %.pre170, %block_412535 ], [ %1924, %block_41252a ]
  %1962 = phi i64 [ %.pre169, %block_412535 ], [ %1810, %block_41252a ]
  %1963 = add i64 %1962, -36
  %1964 = add i64 %1961, 3
  store i64 %1964, i64* %3, align 8
  %1965 = inttoptr i64 %1963 to i32*
  %1966 = load i32, i32* %1965, align 4
  %1967 = add i32 %1966, 1
  %1968 = zext i32 %1967 to i64
  store i64 %1968, i64* %RAX.i1164, align 8
  %1969 = icmp eq i32 %1966, -1
  %1970 = icmp eq i32 %1967, 0
  %1971 = or i1 %1969, %1970
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %14, align 1
  %1973 = and i32 %1967, 255
  %1974 = tail call i32 @llvm.ctpop.i32(i32 %1973)
  %1975 = trunc i32 %1974 to i8
  %1976 = and i8 %1975, 1
  %1977 = xor i8 %1976, 1
  store i8 %1977, i8* %21, align 1
  %1978 = xor i32 %1967, %1966
  %1979 = lshr i32 %1978, 4
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  store i8 %1981, i8* %27, align 1
  %1982 = zext i1 %1970 to i8
  store i8 %1982, i8* %30, align 1
  %1983 = lshr i32 %1967, 31
  %1984 = trunc i32 %1983 to i8
  store i8 %1984, i8* %33, align 1
  %1985 = lshr i32 %1966, 31
  %1986 = xor i32 %1983, %1985
  %1987 = add nuw nsw i32 %1986, %1983
  %1988 = icmp eq i32 %1987, 2
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %39, align 1
  %1990 = add i64 %1961, 9
  store i64 %1990, i64* %3, align 8
  store i32 %1967, i32* %1965, align 4
  %1991 = load i64, i64* %RBP.i, align 8
  %1992 = add i64 %1991, -36
  %1993 = load i64, i64* %3, align 8
  %1994 = add i64 %1993, 3
  store i64 %1994, i64* %3, align 8
  %1995 = inttoptr i64 %1992 to i32*
  %1996 = load i32, i32* %1995, align 4
  %1997 = zext i32 %1996 to i64
  store i64 %1997, i64* %RAX.i1164, align 8
  %1998 = add i64 %1991, -16
  %1999 = add i64 %1993, 6
  store i64 %1999, i64* %3, align 8
  %2000 = inttoptr i64 %1998 to i32*
  %2001 = load i32, i32* %2000, align 4
  %2002 = sub i32 %1996, %2001
  %2003 = icmp ult i32 %1996, %2001
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %14, align 1
  %2005 = and i32 %2002, 255
  %2006 = tail call i32 @llvm.ctpop.i32(i32 %2005)
  %2007 = trunc i32 %2006 to i8
  %2008 = and i8 %2007, 1
  %2009 = xor i8 %2008, 1
  store i8 %2009, i8* %21, align 1
  %2010 = xor i32 %2001, %1996
  %2011 = xor i32 %2010, %2002
  %2012 = lshr i32 %2011, 4
  %2013 = trunc i32 %2012 to i8
  %2014 = and i8 %2013, 1
  store i8 %2014, i8* %27, align 1
  %2015 = icmp eq i32 %2002, 0
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %30, align 1
  %2017 = lshr i32 %2002, 31
  %2018 = trunc i32 %2017 to i8
  store i8 %2018, i8* %33, align 1
  %2019 = lshr i32 %1996, 31
  %2020 = lshr i32 %2001, 31
  %2021 = xor i32 %2020, %2019
  %2022 = xor i32 %2017, %2019
  %2023 = add nuw nsw i32 %2022, %2021
  %2024 = icmp eq i32 %2023, 2
  %2025 = zext i1 %2024 to i8
  store i8 %2025, i8* %39, align 1
  %2026 = icmp ne i8 %2018, 0
  %2027 = xor i1 %2026, %2024
  %.v235 = select i1 %2027, i64 23, i64 12
  %2028 = add i64 %1993, %.v235
  store i64 %2028, i64* %3, align 8
  br i1 %2027, label %block_.L_412566, label %block_41255b

block_41255b:                                     ; preds = %block_.L_412546
  %2029 = add i64 %2028, 3
  store i64 %2029, i64* %3, align 8
  %2030 = load i32, i32* %1995, align 4
  %2031 = zext i32 %2030 to i64
  store i64 %2031, i64* %RAX.i1164, align 8
  %2032 = add i64 %1991, -4
  %2033 = add i64 %2028, 6
  store i64 %2033, i64* %3, align 8
  %2034 = inttoptr i64 %2032 to i32*
  store i32 %2030, i32* %2034, align 4
  %2035 = load i64, i64* %3, align 8
  %2036 = add i64 %2035, 1331
  store i64 %2036, i64* %3, align 8
  br label %block_.L_412a94

block_.L_412566:                                  ; preds = %block_.L_412546
  %2037 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %2038 = zext i32 %2037 to i64
  store i64 %2038, i64* %RAX.i1164, align 8
  %2039 = add i64 %1991, -92
  %2040 = add i64 %2028, 10
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2039 to i32*
  %2042 = load i32, i32* %2041, align 4
  %2043 = add i32 %2042, -20
  %2044 = zext i32 %2043 to i64
  store i64 %2044, i64* %RCX.i1339, align 8
  %2045 = icmp ult i32 %2042, 20
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %14, align 1
  %2047 = and i32 %2043, 255
  %2048 = tail call i32 @llvm.ctpop.i32(i32 %2047)
  %2049 = trunc i32 %2048 to i8
  %2050 = and i8 %2049, 1
  %2051 = xor i8 %2050, 1
  store i8 %2051, i8* %21, align 1
  %2052 = xor i32 %2042, 16
  %2053 = xor i32 %2052, %2043
  %2054 = lshr i32 %2053, 4
  %2055 = trunc i32 %2054 to i8
  %2056 = and i8 %2055, 1
  store i8 %2056, i8* %27, align 1
  %2057 = icmp eq i32 %2043, 0
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %30, align 1
  %2059 = lshr i32 %2043, 31
  %2060 = trunc i32 %2059 to i8
  store i8 %2060, i8* %33, align 1
  %2061 = lshr i32 %2042, 31
  %2062 = xor i32 %2059, %2061
  %2063 = add nuw nsw i32 %2062, %2061
  %2064 = icmp eq i32 %2063, 2
  %2065 = zext i1 %2064 to i8
  store i8 %2065, i8* %39, align 1
  %2066 = sext i32 %2043 to i64
  store i64 %2066, i64* %RDX.i1330, align 8
  %2067 = shl nsw i64 %2066, 2
  %2068 = add nsw i64 %2067, 11185584
  %2069 = add i64 %2028, 23
  store i64 %2069, i64* %3, align 8
  %2070 = inttoptr i64 %2068 to i32*
  store i32 %2037, i32* %2070, align 4
  %.pre171 = load i64, i64* %RBP.i, align 8
  %.pre172 = load i64, i64* %3, align 8
  br label %block_.L_41257d

block_.L_41257d:                                  ; preds = %block_.L_4124f3, %block_.L_412566, %block_41250d
  %2071 = phi i64 [ %.pre172, %block_.L_412566 ], [ %1909, %block_41250d ], [ %1851, %block_.L_4124f3 ]
  %2072 = phi i64 [ %.pre171, %block_.L_412566 ], [ %1810, %block_41250d ], [ %1810, %block_.L_4124f3 ]
  %2073 = add i64 %2072, -92
  %2074 = add i64 %2071, 3
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2073 to i32*
  %2076 = load i32, i32* %2075, align 4
  %2077 = add i32 %2076, 1
  %2078 = zext i32 %2077 to i64
  store i64 %2078, i64* %RAX.i1164, align 8
  %2079 = icmp eq i32 %2076, -1
  %2080 = icmp eq i32 %2077, 0
  %2081 = or i1 %2079, %2080
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %14, align 1
  %2083 = and i32 %2077, 255
  %2084 = tail call i32 @llvm.ctpop.i32(i32 %2083)
  %2085 = trunc i32 %2084 to i8
  %2086 = and i8 %2085, 1
  %2087 = xor i8 %2086, 1
  store i8 %2087, i8* %21, align 1
  %2088 = xor i32 %2077, %2076
  %2089 = lshr i32 %2088, 4
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  store i8 %2091, i8* %27, align 1
  %2092 = zext i1 %2080 to i8
  store i8 %2092, i8* %30, align 1
  %2093 = lshr i32 %2077, 31
  %2094 = trunc i32 %2093 to i8
  store i8 %2094, i8* %33, align 1
  %2095 = lshr i32 %2076, 31
  %2096 = xor i32 %2093, %2095
  %2097 = add nuw nsw i32 %2096, %2093
  %2098 = icmp eq i32 %2097, 2
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %39, align 1
  %2100 = sext i32 %2077 to i64
  store i64 %2100, i64* %RCX.i1339, align 8
  %2101 = add nsw i64 %2100, 12099168
  %2102 = add i64 %2071, 17
  store i64 %2102, i64* %3, align 8
  %2103 = inttoptr i64 %2101 to i8*
  %2104 = load i8, i8* %2103, align 1
  %2105 = zext i8 %2104 to i64
  store i64 %2105, i64* %RAX.i1164, align 8
  %2106 = zext i8 %2104 to i32
  store i8 0, i8* %14, align 1
  %2107 = tail call i32 @llvm.ctpop.i32(i32 %2106)
  %2108 = trunc i32 %2107 to i8
  %2109 = and i8 %2108, 1
  %2110 = xor i8 %2109, 1
  store i8 %2110, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2111 = icmp eq i8 %2104, 0
  %2112 = zext i1 %2111 to i8
  store i8 %2112, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v228 = select i1 %2111, i64 26, i64 138
  %2113 = add i64 %2071, %.v228
  store i64 %2113, i64* %3, align 8
  br i1 %2111, label %block_412597, label %block_.L_412607

block_412597:                                     ; preds = %block_.L_41257d
  %2114 = add i64 %2113, 3
  store i64 %2114, i64* %3, align 8
  %2115 = load i32, i32* %2075, align 4
  %2116 = add i32 %2115, 1
  %2117 = zext i32 %2116 to i64
  store i64 %2117, i64* %RAX.i1164, align 8
  %2118 = icmp eq i32 %2115, -1
  %2119 = icmp eq i32 %2116, 0
  %2120 = or i1 %2118, %2119
  %2121 = zext i1 %2120 to i8
  store i8 %2121, i8* %14, align 1
  %2122 = and i32 %2116, 255
  %2123 = tail call i32 @llvm.ctpop.i32(i32 %2122)
  %2124 = trunc i32 %2123 to i8
  %2125 = and i8 %2124, 1
  %2126 = xor i8 %2125, 1
  store i8 %2126, i8* %21, align 1
  %2127 = xor i32 %2116, %2115
  %2128 = lshr i32 %2127, 4
  %2129 = trunc i32 %2128 to i8
  %2130 = and i8 %2129, 1
  store i8 %2130, i8* %27, align 1
  %2131 = zext i1 %2119 to i8
  store i8 %2131, i8* %30, align 1
  %2132 = lshr i32 %2116, 31
  %2133 = trunc i32 %2132 to i8
  store i8 %2133, i8* %33, align 1
  %2134 = lshr i32 %2115, 31
  %2135 = xor i32 %2132, %2134
  %2136 = add nuw nsw i32 %2135, %2132
  %2137 = icmp eq i32 %2136, 2
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %39, align 1
  %2139 = sext i32 %2116 to i64
  store i64 %2139, i64* %RCX.i1339, align 8
  %2140 = shl nsw i64 %2139, 2
  %2141 = add nsw i64 %2140, 11185584
  %2142 = add i64 %2113, 16
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2141 to i32*
  %2144 = load i32, i32* %2143, align 4
  %2145 = zext i32 %2144 to i64
  store i64 %2145, i64* %RAX.i1164, align 8
  %2146 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %2147 = sub i32 %2144, %2146
  %2148 = icmp ult i32 %2144, %2146
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %14, align 1
  %2150 = and i32 %2147, 255
  %2151 = tail call i32 @llvm.ctpop.i32(i32 %2150)
  %2152 = trunc i32 %2151 to i8
  %2153 = and i8 %2152, 1
  %2154 = xor i8 %2153, 1
  store i8 %2154, i8* %21, align 1
  %2155 = xor i32 %2146, %2144
  %2156 = xor i32 %2155, %2147
  %2157 = lshr i32 %2156, 4
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  store i8 %2159, i8* %27, align 1
  %2160 = icmp eq i32 %2147, 0
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %30, align 1
  %2162 = lshr i32 %2147, 31
  %2163 = trunc i32 %2162 to i8
  store i8 %2163, i8* %33, align 1
  %2164 = lshr i32 %2144, 31
  %2165 = lshr i32 %2146, 31
  %2166 = xor i32 %2165, %2164
  %2167 = xor i32 %2162, %2164
  %2168 = add nuw nsw i32 %2167, %2166
  %2169 = icmp eq i32 %2168, 2
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %39, align 1
  %.v230 = select i1 %2160, i64 112, i64 29
  %2171 = add i64 %2113, %.v230
  store i64 %2171, i64* %3, align 8
  br i1 %2160, label %block_.L_412607, label %block_4125b4

block_4125b4:                                     ; preds = %block_412597
  %2172 = add i64 %2072, -24
  %2173 = add i64 %2171, 5
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i64*
  %2175 = load i64, i64* %2174, align 8
  store i8 0, i8* %14, align 1
  %2176 = trunc i64 %2175 to i32
  %2177 = and i32 %2176, 255
  %2178 = tail call i32 @llvm.ctpop.i32(i32 %2177)
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  %2181 = xor i8 %2180, 1
  store i8 %2181, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2182 = icmp eq i64 %2175, 0
  %2183 = zext i1 %2182 to i8
  store i8 %2183, i8* %30, align 1
  %2184 = lshr i64 %2175, 63
  %2185 = trunc i64 %2184 to i8
  store i8 %2185, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v231 = select i1 %2182, i64 28, i64 11
  %2186 = add i64 %2171, %.v231
  store i64 %2186, i64* %3, align 8
  br i1 %2182, label %block_.L_4125d0, label %block_4125bf

block_4125bf:                                     ; preds = %block_4125b4
  %2187 = add i64 %2186, 3
  store i64 %2187, i64* %3, align 8
  %2188 = load i32, i32* %2075, align 4
  %2189 = add i32 %2188, 1
  %2190 = zext i32 %2189 to i64
  store i64 %2190, i64* %RAX.i1164, align 8
  %2191 = icmp eq i32 %2188, -1
  %2192 = icmp eq i32 %2189, 0
  %2193 = or i1 %2191, %2192
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %14, align 1
  %2195 = and i32 %2189, 255
  %2196 = tail call i32 @llvm.ctpop.i32(i32 %2195)
  %2197 = trunc i32 %2196 to i8
  %2198 = and i8 %2197, 1
  %2199 = xor i8 %2198, 1
  store i8 %2199, i8* %21, align 1
  %2200 = xor i32 %2189, %2188
  %2201 = lshr i32 %2200, 4
  %2202 = trunc i32 %2201 to i8
  %2203 = and i8 %2202, 1
  store i8 %2203, i8* %27, align 1
  %2204 = zext i1 %2192 to i8
  store i8 %2204, i8* %30, align 1
  %2205 = lshr i32 %2189, 31
  %2206 = trunc i32 %2205 to i8
  store i8 %2206, i8* %33, align 1
  %2207 = lshr i32 %2188, 31
  %2208 = xor i32 %2205, %2207
  %2209 = add nuw nsw i32 %2208, %2205
  %2210 = icmp eq i32 %2209, 2
  %2211 = zext i1 %2210 to i8
  store i8 %2211, i8* %39, align 1
  %2212 = add i64 %2186, 10
  store i64 %2212, i64* %3, align 8
  %2213 = load i64, i64* %2174, align 8
  store i64 %2213, i64* %RCX.i1339, align 8
  %2214 = add i64 %2072, -36
  %2215 = add i64 %2186, 14
  store i64 %2215, i64* %3, align 8
  %2216 = inttoptr i64 %2214 to i32*
  %2217 = load i32, i32* %2216, align 4
  %2218 = sext i32 %2217 to i64
  store i64 %2218, i64* %RDX.i1330, align 8
  %2219 = shl nsw i64 %2218, 2
  %2220 = add i64 %2219, %2213
  %2221 = add i64 %2186, 17
  store i64 %2221, i64* %3, align 8
  %2222 = inttoptr i64 %2220 to i32*
  store i32 %2189, i32* %2222, align 4
  %.pre173 = load i64, i64* %RBP.i, align 8
  %.pre174 = load i64, i64* %3, align 8
  br label %block_.L_4125d0

block_.L_4125d0:                                  ; preds = %block_4125bf, %block_4125b4
  %2223 = phi i64 [ %.pre174, %block_4125bf ], [ %2186, %block_4125b4 ]
  %2224 = phi i64 [ %.pre173, %block_4125bf ], [ %2072, %block_4125b4 ]
  %2225 = add i64 %2224, -36
  %2226 = add i64 %2223, 3
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2225 to i32*
  %2228 = load i32, i32* %2227, align 4
  %2229 = add i32 %2228, 1
  %2230 = zext i32 %2229 to i64
  store i64 %2230, i64* %RAX.i1164, align 8
  %2231 = icmp eq i32 %2228, -1
  %2232 = icmp eq i32 %2229, 0
  %2233 = or i1 %2231, %2232
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %14, align 1
  %2235 = and i32 %2229, 255
  %2236 = tail call i32 @llvm.ctpop.i32(i32 %2235)
  %2237 = trunc i32 %2236 to i8
  %2238 = and i8 %2237, 1
  %2239 = xor i8 %2238, 1
  store i8 %2239, i8* %21, align 1
  %2240 = xor i32 %2229, %2228
  %2241 = lshr i32 %2240, 4
  %2242 = trunc i32 %2241 to i8
  %2243 = and i8 %2242, 1
  store i8 %2243, i8* %27, align 1
  %2244 = zext i1 %2232 to i8
  store i8 %2244, i8* %30, align 1
  %2245 = lshr i32 %2229, 31
  %2246 = trunc i32 %2245 to i8
  store i8 %2246, i8* %33, align 1
  %2247 = lshr i32 %2228, 31
  %2248 = xor i32 %2245, %2247
  %2249 = add nuw nsw i32 %2248, %2245
  %2250 = icmp eq i32 %2249, 2
  %2251 = zext i1 %2250 to i8
  store i8 %2251, i8* %39, align 1
  %2252 = add i64 %2223, 9
  store i64 %2252, i64* %3, align 8
  store i32 %2229, i32* %2227, align 4
  %2253 = load i64, i64* %RBP.i, align 8
  %2254 = add i64 %2253, -36
  %2255 = load i64, i64* %3, align 8
  %2256 = add i64 %2255, 3
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2254 to i32*
  %2258 = load i32, i32* %2257, align 4
  %2259 = zext i32 %2258 to i64
  store i64 %2259, i64* %RAX.i1164, align 8
  %2260 = add i64 %2253, -16
  %2261 = add i64 %2255, 6
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i32*
  %2263 = load i32, i32* %2262, align 4
  %2264 = sub i32 %2258, %2263
  %2265 = icmp ult i32 %2258, %2263
  %2266 = zext i1 %2265 to i8
  store i8 %2266, i8* %14, align 1
  %2267 = and i32 %2264, 255
  %2268 = tail call i32 @llvm.ctpop.i32(i32 %2267)
  %2269 = trunc i32 %2268 to i8
  %2270 = and i8 %2269, 1
  %2271 = xor i8 %2270, 1
  store i8 %2271, i8* %21, align 1
  %2272 = xor i32 %2263, %2258
  %2273 = xor i32 %2272, %2264
  %2274 = lshr i32 %2273, 4
  %2275 = trunc i32 %2274 to i8
  %2276 = and i8 %2275, 1
  store i8 %2276, i8* %27, align 1
  %2277 = icmp eq i32 %2264, 0
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %30, align 1
  %2279 = lshr i32 %2264, 31
  %2280 = trunc i32 %2279 to i8
  store i8 %2280, i8* %33, align 1
  %2281 = lshr i32 %2258, 31
  %2282 = lshr i32 %2263, 31
  %2283 = xor i32 %2282, %2281
  %2284 = xor i32 %2279, %2281
  %2285 = add nuw nsw i32 %2284, %2283
  %2286 = icmp eq i32 %2285, 2
  %2287 = zext i1 %2286 to i8
  store i8 %2287, i8* %39, align 1
  %2288 = icmp ne i8 %2280, 0
  %2289 = xor i1 %2288, %2286
  %.v232 = select i1 %2289, i64 23, i64 12
  %2290 = add i64 %2255, %.v232
  store i64 %2290, i64* %3, align 8
  br i1 %2289, label %block_.L_4125f0, label %block_4125e5

block_4125e5:                                     ; preds = %block_.L_4125d0
  %2291 = add i64 %2290, 3
  store i64 %2291, i64* %3, align 8
  %2292 = load i32, i32* %2257, align 4
  %2293 = zext i32 %2292 to i64
  store i64 %2293, i64* %RAX.i1164, align 8
  %2294 = add i64 %2253, -4
  %2295 = add i64 %2290, 6
  store i64 %2295, i64* %3, align 8
  %2296 = inttoptr i64 %2294 to i32*
  store i32 %2292, i32* %2296, align 4
  %2297 = load i64, i64* %3, align 8
  %2298 = add i64 %2297, 1193
  store i64 %2298, i64* %3, align 8
  br label %block_.L_412a94

block_.L_4125f0:                                  ; preds = %block_.L_4125d0
  %2299 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %2300 = zext i32 %2299 to i64
  store i64 %2300, i64* %RAX.i1164, align 8
  %2301 = add i64 %2253, -92
  %2302 = add i64 %2290, 10
  store i64 %2302, i64* %3, align 8
  %2303 = inttoptr i64 %2301 to i32*
  %2304 = load i32, i32* %2303, align 4
  %2305 = add i32 %2304, 1
  %2306 = zext i32 %2305 to i64
  store i64 %2306, i64* %RCX.i1339, align 8
  %2307 = icmp eq i32 %2304, -1
  %2308 = icmp eq i32 %2305, 0
  %2309 = or i1 %2307, %2308
  %2310 = zext i1 %2309 to i8
  store i8 %2310, i8* %14, align 1
  %2311 = and i32 %2305, 255
  %2312 = tail call i32 @llvm.ctpop.i32(i32 %2311)
  %2313 = trunc i32 %2312 to i8
  %2314 = and i8 %2313, 1
  %2315 = xor i8 %2314, 1
  store i8 %2315, i8* %21, align 1
  %2316 = xor i32 %2305, %2304
  %2317 = lshr i32 %2316, 4
  %2318 = trunc i32 %2317 to i8
  %2319 = and i8 %2318, 1
  store i8 %2319, i8* %27, align 1
  %2320 = zext i1 %2308 to i8
  store i8 %2320, i8* %30, align 1
  %2321 = lshr i32 %2305, 31
  %2322 = trunc i32 %2321 to i8
  store i8 %2322, i8* %33, align 1
  %2323 = lshr i32 %2304, 31
  %2324 = xor i32 %2321, %2323
  %2325 = add nuw nsw i32 %2324, %2321
  %2326 = icmp eq i32 %2325, 2
  %2327 = zext i1 %2326 to i8
  store i8 %2327, i8* %39, align 1
  %2328 = sext i32 %2305 to i64
  store i64 %2328, i64* %RDX.i1330, align 8
  %2329 = shl nsw i64 %2328, 2
  %2330 = add nsw i64 %2329, 11185584
  %2331 = add i64 %2290, 23
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2330 to i32*
  store i32 %2299, i32* %2332, align 4
  %.pre175 = load i64, i64* %RBP.i, align 8
  %.pre176 = load i64, i64* %3, align 8
  br label %block_.L_412607

block_.L_412607:                                  ; preds = %block_.L_41257d, %block_.L_4125f0, %block_412597
  %2333 = phi i64 [ %.pre176, %block_.L_4125f0 ], [ %2171, %block_412597 ], [ %2113, %block_.L_41257d ]
  %2334 = phi i64 [ %.pre175, %block_.L_4125f0 ], [ %2072, %block_412597 ], [ %2072, %block_.L_41257d ]
  %2335 = add i64 %2334, -92
  %2336 = add i64 %2333, 4
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2335 to i32*
  %2338 = load i32, i32* %2337, align 4
  %2339 = sext i32 %2338 to i64
  store i64 %2339, i64* %RAX.i1164, align 8
  %2340 = shl nsw i64 %2339, 2
  %2341 = add nsw i64 %2340, 11188784
  %2342 = add i64 %2333, 11
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i32*
  %2344 = load i32, i32* %2343, align 4
  %2345 = zext i32 %2344 to i64
  store i64 %2345, i64* %RCX.i1339, align 8
  %2346 = add i64 %2333, 14
  store i64 %2346, i64* %3, align 8
  store i32 %2344, i32* %2337, align 4
  %2347 = load i64, i64* %RBP.i, align 8
  %2348 = add i64 %2347, -92
  %2349 = load i64, i64* %3, align 8
  %2350 = add i64 %2349, 3
  store i64 %2350, i64* %3, align 8
  %2351 = inttoptr i64 %2348 to i32*
  %2352 = load i32, i32* %2351, align 4
  %2353 = zext i32 %2352 to i64
  store i64 %2353, i64* %RAX.i1164, align 8
  %2354 = add i64 %2347, -76
  %2355 = add i64 %2349, 6
  store i64 %2355, i64* %3, align 8
  %2356 = inttoptr i64 %2354 to i32*
  %2357 = load i32, i32* %2356, align 4
  %2358 = sub i32 %2352, %2357
  %2359 = icmp ult i32 %2352, %2357
  %2360 = zext i1 %2359 to i8
  store i8 %2360, i8* %14, align 1
  %2361 = and i32 %2358, 255
  %2362 = tail call i32 @llvm.ctpop.i32(i32 %2361)
  %2363 = trunc i32 %2362 to i8
  %2364 = and i8 %2363, 1
  %2365 = xor i8 %2364, 1
  store i8 %2365, i8* %21, align 1
  %2366 = xor i32 %2357, %2352
  %2367 = xor i32 %2366, %2358
  %2368 = lshr i32 %2367, 4
  %2369 = trunc i32 %2368 to i8
  %2370 = and i8 %2369, 1
  store i8 %2370, i8* %27, align 1
  %2371 = icmp eq i32 %2358, 0
  %2372 = zext i1 %2371 to i8
  store i8 %2372, i8* %30, align 1
  %2373 = lshr i32 %2358, 31
  %2374 = trunc i32 %2373 to i8
  store i8 %2374, i8* %33, align 1
  %2375 = lshr i32 %2352, 31
  %2376 = lshr i32 %2357, 31
  %2377 = xor i32 %2376, %2375
  %2378 = xor i32 %2373, %2375
  %2379 = add nuw nsw i32 %2378, %2377
  %2380 = icmp eq i32 %2379, 2
  %2381 = zext i1 %2380 to i8
  store i8 %2381, i8* %39, align 1
  %.v229 = select i1 %2371, i64 12, i64 -566
  %2382 = add i64 %2349, %.v229
  store i64 %2382, i64* %3, align 8
  br i1 %2371, label %block_412621, label %block_.L_4123df

block_412621:                                     ; preds = %block_.L_412607
  %2383 = add i64 %2382, 5
  store i64 %2383, i64* %3, align 8
  br label %block_.L_412626

block_.L_412626:                                  ; preds = %block_412621, %block_.L_4123d4
  %2384 = phi i64 [ %1021, %block_.L_4123d4 ], [ %2347, %block_412621 ]
  %storemerge63 = phi i64 [ %1280, %block_.L_4123d4 ], [ %2383, %block_412621 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1164, align 8
  %2385 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2386 = zext i32 %2385 to i64
  store i64 %2386, i64* %RCX.i1339, align 8
  %2387 = add i64 %2384, -76
  %2388 = add i64 %storemerge63, 21
  store i64 %2388, i64* %3, align 8
  %2389 = inttoptr i64 %2387 to i32*
  %2390 = load i32, i32* %2389, align 4
  %2391 = sext i32 %2390 to i64
  store i64 %2391, i64* %RDX.i1330, align 8
  %2392 = shl nsw i64 %2391, 2
  %2393 = add nsw i64 %2392, 11187184
  %2394 = add i64 %storemerge63, 29
  store i64 %2394, i64* %3, align 8
  %2395 = inttoptr i64 %2393 to i32*
  %2396 = load i32, i32* %2395, align 4
  %2397 = sext i32 %2396 to i64
  %2398 = mul nsw i64 %2397, 744
  store i64 %2398, i64* %RDX.i1330, align 8
  %2399 = lshr i64 %2398, 63
  %2400 = add i64 %2398, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2400, i64* %RAX.i1164, align 8
  %2401 = icmp ult i64 %2400, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2402 = icmp ult i64 %2400, %2398
  %2403 = or i1 %2401, %2402
  %2404 = zext i1 %2403 to i8
  store i8 %2404, i8* %14, align 1
  %2405 = trunc i64 %2400 to i32
  %2406 = and i32 %2405, 248
  %2407 = tail call i32 @llvm.ctpop.i32(i32 %2406)
  %2408 = trunc i32 %2407 to i8
  %2409 = and i8 %2408, 1
  %2410 = xor i8 %2409, 1
  store i8 %2410, i8* %21, align 1
  %2411 = xor i64 %2398, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2412 = xor i64 %2411, %2400
  %2413 = lshr i64 %2412, 4
  %2414 = trunc i64 %2413 to i8
  %2415 = and i8 %2414, 1
  store i8 %2415, i8* %27, align 1
  %2416 = icmp eq i64 %2400, 0
  %2417 = zext i1 %2416 to i8
  store i8 %2417, i8* %30, align 1
  %2418 = lshr i64 %2400, 63
  %2419 = trunc i64 %2418 to i8
  store i8 %2419, i8* %33, align 1
  %2420 = xor i64 %2418, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2421 = xor i64 %2418, %2399
  %2422 = add nuw nsw i64 %2420, %2421
  %2423 = icmp eq i64 %2422, 2
  %2424 = zext i1 %2423 to i8
  store i8 %2424, i8* %39, align 1
  %2425 = add i64 %2398, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2426 = add i64 %storemerge63, 45
  store i64 %2426, i64* %3, align 8
  %2427 = inttoptr i64 %2425 to i32*
  store i32 %2385, i32* %2427, align 4
  %2428 = load i64, i64* %3, align 8
  %2429 = add i64 %2428, 101
  br label %block_.L_4126b8

block_.L_412658:                                  ; preds = %block_.L_41229f, %block_4122b4.block_.L_412658_crit_edge
  %2430 = phi i64 [ %.pre183, %block_4122b4.block_.L_412658_crit_edge ], [ %633, %block_.L_41229f ]
  %2431 = phi i64 [ %908, %block_4122b4.block_.L_412658_crit_edge ], [ %841, %block_.L_41229f ]
  store i64 3, i64* %RAX.i1164, align 8
  %2432 = add i64 %2430, -76
  %2433 = add i64 %2431, 9
  store i64 %2433, i64* %3, align 8
  %2434 = inttoptr i64 %2432 to i32*
  %2435 = load i32, i32* %2434, align 4
  %2436 = sext i32 %2435 to i64
  store i64 %2436, i64* %RCX.i1339, align 8
  %2437 = add nsw i64 %2436, 12099168
  %2438 = add i64 %2431, 17
  store i64 %2438, i64* %3, align 8
  %2439 = inttoptr i64 %2437 to i8*
  %2440 = load i8, i8* %2439, align 1
  %2441 = zext i8 %2440 to i64
  store i64 %2441, i64* %RDX.i1330, align 8
  %2442 = add i64 %2430, -12
  %2443 = add i64 %2431, 20
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2442 to i32*
  %2445 = load i32, i32* %2444, align 4
  %2446 = sub i32 3, %2445
  %2447 = zext i32 %2446 to i64
  store i64 %2447, i64* %RAX.i1164, align 8
  %2448 = lshr i32 %2446, 31
  %2449 = zext i8 %2440 to i32
  %2450 = sub i32 %2449, %2446
  %2451 = icmp ult i32 %2449, %2446
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %14, align 1
  %2453 = and i32 %2450, 255
  %2454 = tail call i32 @llvm.ctpop.i32(i32 %2453)
  %2455 = trunc i32 %2454 to i8
  %2456 = and i8 %2455, 1
  %2457 = xor i8 %2456, 1
  store i8 %2457, i8* %21, align 1
  %2458 = xor i32 %2446, %2449
  %2459 = xor i32 %2458, %2450
  %2460 = lshr i32 %2459, 4
  %2461 = trunc i32 %2460 to i8
  %2462 = and i8 %2461, 1
  store i8 %2462, i8* %27, align 1
  %2463 = icmp eq i32 %2450, 0
  %2464 = zext i1 %2463 to i8
  store i8 %2464, i8* %30, align 1
  %2465 = lshr i32 %2450, 31
  %2466 = trunc i32 %2465 to i8
  store i8 %2466, i8* %33, align 1
  %2467 = add nuw nsw i32 %2465, %2448
  %2468 = icmp eq i32 %2467, 2
  %2469 = zext i1 %2468 to i8
  store i8 %2469, i8* %39, align 1
  %.v220 = select i1 %2463, i64 28, i64 91
  %2470 = add i64 %2431, %.v220
  store i64 %2470, i64* %3, align 8
  br i1 %2463, label %block_412674, label %block_.L_4126b3

block_412674:                                     ; preds = %block_.L_412658
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1164, align 8
  %2471 = add i64 %2470, 14
  store i64 %2471, i64* %3, align 8
  %2472 = load i32, i32* %2434, align 4
  %2473 = sext i32 %2472 to i64
  store i64 %2473, i64* %RCX.i1339, align 8
  %2474 = shl nsw i64 %2473, 2
  %2475 = add nsw i64 %2474, 11187184
  %2476 = add i64 %2470, 22
  store i64 %2476, i64* %3, align 8
  %2477 = inttoptr i64 %2475 to i32*
  %2478 = load i32, i32* %2477, align 4
  %2479 = sext i32 %2478 to i64
  %2480 = mul nsw i64 %2479, 744
  store i64 %2480, i64* %RCX.i1339, align 8
  %2481 = lshr i64 %2480, 63
  %2482 = add i64 %2480, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2482, i64* %RAX.i1164, align 8
  %2483 = icmp ult i64 %2482, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2484 = icmp ult i64 %2482, %2480
  %2485 = or i1 %2483, %2484
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %14, align 1
  %2487 = trunc i64 %2482 to i32
  %2488 = and i32 %2487, 248
  %2489 = tail call i32 @llvm.ctpop.i32(i32 %2488)
  %2490 = trunc i32 %2489 to i8
  %2491 = and i8 %2490, 1
  %2492 = xor i8 %2491, 1
  store i8 %2492, i8* %21, align 1
  %2493 = xor i64 %2480, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2494 = xor i64 %2493, %2482
  %2495 = lshr i64 %2494, 4
  %2496 = trunc i64 %2495 to i8
  %2497 = and i8 %2496, 1
  store i8 %2497, i8* %27, align 1
  %2498 = icmp eq i64 %2482, 0
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %30, align 1
  %2500 = lshr i64 %2482, 63
  %2501 = trunc i64 %2500 to i8
  store i8 %2501, i8* %33, align 1
  %2502 = xor i64 %2500, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2503 = xor i64 %2500, %2481
  %2504 = add nuw nsw i64 %2502, %2503
  %2505 = icmp eq i64 %2504, 2
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %39, align 1
  %2507 = add i64 %2480, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %2508 = add i64 %2470, 36
  store i64 %2508, i64* %3, align 8
  %2509 = inttoptr i64 %2507 to i32*
  %2510 = load i32, i32* %2509, align 4
  %2511 = add i32 %2510, -1
  %2512 = icmp eq i32 %2510, 0
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %14, align 1
  %2514 = and i32 %2511, 255
  %2515 = tail call i32 @llvm.ctpop.i32(i32 %2514)
  %2516 = trunc i32 %2515 to i8
  %2517 = and i8 %2516, 1
  %2518 = xor i8 %2517, 1
  store i8 %2518, i8* %21, align 1
  %2519 = xor i32 %2511, %2510
  %2520 = lshr i32 %2519, 4
  %2521 = trunc i32 %2520 to i8
  %2522 = and i8 %2521, 1
  store i8 %2522, i8* %27, align 1
  %2523 = icmp eq i32 %2511, 0
  %2524 = zext i1 %2523 to i8
  store i8 %2524, i8* %30, align 1
  %2525 = lshr i32 %2511, 31
  %2526 = trunc i32 %2525 to i8
  store i8 %2526, i8* %33, align 1
  %2527 = lshr i32 %2510, 31
  %2528 = xor i32 %2525, %2527
  %2529 = add nuw nsw i32 %2528, %2527
  %2530 = icmp eq i32 %2529, 2
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %39, align 1
  %.v221 = select i1 %2523, i64 42, i64 63
  %2532 = add i64 %2470, %.v221
  store i64 %2532, i64* %3, align 8
  br i1 %2523, label %block_41269e, label %block_.L_4126b3

block_41269e:                                     ; preds = %block_412674
  %2533 = load i64, i64* %RBP.i, align 8
  %2534 = add i64 %2533, -76
  %2535 = add i64 %2532, 3
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2534 to i32*
  %2537 = load i32, i32* %2536, align 4
  %2538 = zext i32 %2537 to i64
  store i64 %2538, i64* %RAX.i1164, align 8
  %2539 = add i64 %2533, -68
  %2540 = add i64 %2532, 6
  store i64 %2540, i64* %3, align 8
  %2541 = inttoptr i64 %2539 to i32*
  %2542 = load i32, i32* %2541, align 4
  %2543 = zext i32 %2542 to i64
  store i64 %2543, i64* %RCX.i1339, align 8
  %2544 = add i32 %2542, 1
  %2545 = zext i32 %2544 to i64
  store i64 %2545, i64* %RDX.i1330, align 8
  %2546 = icmp eq i32 %2542, -1
  %2547 = icmp eq i32 %2544, 0
  %2548 = or i1 %2546, %2547
  %2549 = zext i1 %2548 to i8
  store i8 %2549, i8* %14, align 1
  %2550 = and i32 %2544, 255
  %2551 = tail call i32 @llvm.ctpop.i32(i32 %2550)
  %2552 = trunc i32 %2551 to i8
  %2553 = and i8 %2552, 1
  %2554 = xor i8 %2553, 1
  store i8 %2554, i8* %21, align 1
  %2555 = xor i32 %2544, %2542
  %2556 = lshr i32 %2555, 4
  %2557 = trunc i32 %2556 to i8
  %2558 = and i8 %2557, 1
  store i8 %2558, i8* %27, align 1
  %2559 = zext i1 %2547 to i8
  store i8 %2559, i8* %30, align 1
  %2560 = lshr i32 %2544, 31
  %2561 = trunc i32 %2560 to i8
  store i8 %2561, i8* %33, align 1
  %2562 = lshr i32 %2542, 31
  %2563 = xor i32 %2560, %2562
  %2564 = add nuw nsw i32 %2563, %2560
  %2565 = icmp eq i32 %2564, 2
  %2566 = zext i1 %2565 to i8
  store i8 %2566, i8* %39, align 1
  %2567 = add i64 %2532, 14
  store i64 %2567, i64* %3, align 8
  store i32 %2544, i32* %2541, align 4
  %2568 = load i32, i32* %ECX.i1055, align 4
  %2569 = load i64, i64* %3, align 8
  %2570 = sext i32 %2568 to i64
  store i64 %2570, i64* %RSI.i502.pre-phi, align 8
  %2571 = load i64, i64* %RBP.i, align 8
  %2572 = shl nsw i64 %2570, 2
  %2573 = add nsw i64 %2572, -64
  %2574 = add i64 %2573, %2571
  %2575 = load i32, i32* %EAX.i1160.pre-phi, align 4
  %2576 = add i64 %2569, 7
  store i64 %2576, i64* %3, align 8
  %2577 = inttoptr i64 %2574 to i32*
  store i32 %2575, i32* %2577, align 4
  %.pre184 = load i64, i64* %3, align 8
  br label %block_.L_4126b3

block_.L_4126b3:                                  ; preds = %block_412674, %block_.L_412658, %block_41269e
  %2578 = phi i64 [ %.pre184, %block_41269e ], [ %2532, %block_412674 ], [ %2470, %block_.L_412658 ]
  %2579 = add i64 %2578, 5
  store i64 %2579, i64* %3, align 8
  br label %block_.L_4126b8

block_.L_4126b8:                                  ; preds = %block_.L_4126b3, %block_.L_412626
  %storemerge64 = phi i64 [ %2429, %block_.L_412626 ], [ %2579, %block_.L_4126b3 ]
  %2580 = add i64 %storemerge64, 5
  store i64 %2580, i64* %3, align 8
  br label %block_.L_4126bd

block_.L_4126bd:                                  ; preds = %block_.L_4126b8, %block_.L_412288
  %storemerge = phi i64 [ %805, %block_.L_412288 ], [ %2580, %block_.L_4126b8 ]
  %2581 = load i64, i64* %RBP.i, align 8
  %2582 = add i64 %2581, -28
  %2583 = add i64 %storemerge, 8
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2582 to i32*
  %2585 = load i32, i32* %2584, align 4
  %2586 = add i32 %2585, 1
  %2587 = zext i32 %2586 to i64
  store i64 %2587, i64* %RAX.i1164, align 8
  %2588 = icmp eq i32 %2585, -1
  %2589 = icmp eq i32 %2586, 0
  %2590 = or i1 %2588, %2589
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %14, align 1
  %2592 = and i32 %2586, 255
  %2593 = tail call i32 @llvm.ctpop.i32(i32 %2592)
  %2594 = trunc i32 %2593 to i8
  %2595 = and i8 %2594, 1
  %2596 = xor i8 %2595, 1
  store i8 %2596, i8* %21, align 1
  %2597 = xor i32 %2586, %2585
  %2598 = lshr i32 %2597, 4
  %2599 = trunc i32 %2598 to i8
  %2600 = and i8 %2599, 1
  store i8 %2600, i8* %27, align 1
  %2601 = zext i1 %2589 to i8
  store i8 %2601, i8* %30, align 1
  %2602 = lshr i32 %2586, 31
  %2603 = trunc i32 %2602 to i8
  store i8 %2603, i8* %33, align 1
  %2604 = lshr i32 %2585, 31
  %2605 = xor i32 %2602, %2604
  %2606 = add nuw nsw i32 %2605, %2602
  %2607 = icmp eq i32 %2606, 2
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %39, align 1
  %2609 = add i64 %storemerge, 14
  store i64 %2609, i64* %3, align 8
  store i32 %2586, i32* %2584, align 4
  %2610 = load i64, i64* %3, align 8
  %2611 = add i64 %2610, -1220
  store i64 %2611, i64* %3, align 8
  br label %block_.L_412207

block_.L_4126d0:                                  ; preds = %block_.L_412207
  %2612 = add i64 %589, 7
  store i64 %2612, i64* %3, align 8
  store i32 0, i32* %564, align 4
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_4126d7

block_.L_4126d7:                                  ; preds = %block_.L_412a7b, %block_.L_4126d0
  %2613 = phi i64 [ %4340, %block_.L_412a7b ], [ %.pre143, %block_.L_4126d0 ]
  %2614 = load i64, i64* %RBP.i, align 8
  %2615 = add i64 %2614, -28
  %2616 = add i64 %2613, 3
  store i64 %2616, i64* %3, align 8
  %2617 = inttoptr i64 %2615 to i32*
  %2618 = load i32, i32* %2617, align 4
  %2619 = zext i32 %2618 to i64
  store i64 %2619, i64* %RAX.i1164, align 8
  %2620 = add i64 %2614, -68
  %2621 = add i64 %2613, 6
  store i64 %2621, i64* %3, align 8
  %2622 = inttoptr i64 %2620 to i32*
  %2623 = load i32, i32* %2622, align 4
  %2624 = sub i32 %2618, %2623
  %2625 = icmp ult i32 %2618, %2623
  %2626 = zext i1 %2625 to i8
  store i8 %2626, i8* %14, align 1
  %2627 = and i32 %2624, 255
  %2628 = tail call i32 @llvm.ctpop.i32(i32 %2627)
  %2629 = trunc i32 %2628 to i8
  %2630 = and i8 %2629, 1
  %2631 = xor i8 %2630, 1
  store i8 %2631, i8* %21, align 1
  %2632 = xor i32 %2623, %2618
  %2633 = xor i32 %2632, %2624
  %2634 = lshr i32 %2633, 4
  %2635 = trunc i32 %2634 to i8
  %2636 = and i8 %2635, 1
  store i8 %2636, i8* %27, align 1
  %2637 = icmp eq i32 %2624, 0
  %2638 = zext i1 %2637 to i8
  store i8 %2638, i8* %30, align 1
  %2639 = lshr i32 %2624, 31
  %2640 = trunc i32 %2639 to i8
  store i8 %2640, i8* %33, align 1
  %2641 = lshr i32 %2618, 31
  %2642 = lshr i32 %2623, 31
  %2643 = xor i32 %2642, %2641
  %2644 = xor i32 %2639, %2641
  %2645 = add nuw nsw i32 %2644, %2643
  %2646 = icmp eq i32 %2645, 2
  %2647 = zext i1 %2646 to i8
  store i8 %2647, i8* %39, align 1
  %2648 = icmp ne i8 %2640, 0
  %2649 = xor i1 %2648, %2646
  %.v195 = select i1 %2649, i64 12, i64 951
  %2650 = add i64 %2613, %.v195
  store i64 %2650, i64* %3, align 8
  br i1 %2649, label %block_4126e3, label %block_.L_412a8e

block_4126e3:                                     ; preds = %block_.L_4126d7
  %2651 = add i64 %2650, 4
  store i64 %2651, i64* %3, align 8
  %2652 = load i32, i32* %2617, align 4
  %2653 = sext i32 %2652 to i64
  store i64 %2653, i64* %RAX.i1164, align 8
  %2654 = shl nsw i64 %2653, 2
  %2655 = add i64 %2614, -64
  %2656 = add i64 %2655, %2654
  %2657 = add i64 %2650, 8
  store i64 %2657, i64* %3, align 8
  %2658 = inttoptr i64 %2656 to i32*
  %2659 = load i32, i32* %2658, align 4
  %2660 = zext i32 %2659 to i64
  store i64 %2660, i64* %RCX.i1339, align 8
  %2661 = add i64 %2614, -40
  %2662 = add i64 %2650, 11
  store i64 %2662, i64* %3, align 8
  %2663 = inttoptr i64 %2661 to i32*
  store i32 %2659, i32* %2663, align 4
  %2664 = load i64, i64* %RBP.i, align 8
  %2665 = add i64 %2664, -40
  %2666 = load i64, i64* %3, align 8
  %2667 = add i64 %2666, 3
  store i64 %2667, i64* %3, align 8
  %2668 = inttoptr i64 %2665 to i32*
  %2669 = load i32, i32* %2668, align 4
  %2670 = add i32 %2669, 20
  %2671 = zext i32 %2670 to i64
  store i64 %2671, i64* %RCX.i1339, align 8
  %2672 = icmp ugt i32 %2669, -21
  %2673 = zext i1 %2672 to i8
  store i8 %2673, i8* %14, align 1
  %2674 = and i32 %2670, 255
  %2675 = tail call i32 @llvm.ctpop.i32(i32 %2674)
  %2676 = trunc i32 %2675 to i8
  %2677 = and i8 %2676, 1
  %2678 = xor i8 %2677, 1
  store i8 %2678, i8* %21, align 1
  %2679 = xor i32 %2669, 16
  %2680 = xor i32 %2679, %2670
  %2681 = lshr i32 %2680, 4
  %2682 = trunc i32 %2681 to i8
  %2683 = and i8 %2682, 1
  store i8 %2683, i8* %27, align 1
  %2684 = icmp eq i32 %2670, 0
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %30, align 1
  %2686 = lshr i32 %2670, 31
  %2687 = trunc i32 %2686 to i8
  store i8 %2687, i8* %33, align 1
  %2688 = lshr i32 %2669, 31
  %2689 = xor i32 %2686, %2688
  %2690 = add nuw nsw i32 %2689, %2686
  %2691 = icmp eq i32 %2690, 2
  %2692 = zext i1 %2691 to i8
  store i8 %2692, i8* %39, align 1
  %2693 = sext i32 %2670 to i64
  store i64 %2693, i64* %RAX.i1164, align 8
  %2694 = add nsw i64 %2693, 12099168
  %2695 = add i64 %2666, 17
  store i64 %2695, i64* %3, align 8
  %2696 = inttoptr i64 %2694 to i8*
  %2697 = load i8, i8* %2696, align 1
  %2698 = zext i8 %2697 to i64
  store i64 %2698, i64* %RCX.i1339, align 8
  %2699 = zext i8 %2697 to i32
  %2700 = add i64 %2664, -12
  %2701 = add i64 %2666, 20
  store i64 %2701, i64* %3, align 8
  %2702 = inttoptr i64 %2700 to i32*
  %2703 = load i32, i32* %2702, align 4
  %2704 = sub i32 %2699, %2703
  %2705 = icmp ult i32 %2699, %2703
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %14, align 1
  %2707 = and i32 %2704, 255
  %2708 = tail call i32 @llvm.ctpop.i32(i32 %2707)
  %2709 = trunc i32 %2708 to i8
  %2710 = and i8 %2709, 1
  %2711 = xor i8 %2710, 1
  store i8 %2711, i8* %21, align 1
  %2712 = xor i32 %2703, %2699
  %2713 = xor i32 %2712, %2704
  %2714 = lshr i32 %2713, 4
  %2715 = trunc i32 %2714 to i8
  %2716 = and i8 %2715, 1
  store i8 %2716, i8* %27, align 1
  %2717 = icmp eq i32 %2704, 0
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %30, align 1
  %2719 = lshr i32 %2704, 31
  %2720 = trunc i32 %2719 to i8
  store i8 %2720, i8* %33, align 1
  %2721 = lshr i32 %2703, 31
  %2722 = add nuw nsw i32 %2719, %2721
  %2723 = icmp eq i32 %2722, 2
  %2724 = zext i1 %2723 to i8
  store i8 %2724, i8* %39, align 1
  %.v196 = select i1 %2717, i64 26, i64 82
  %2725 = add i64 %2666, %.v196
  store i64 %2725, i64* %3, align 8
  br i1 %2717, label %block_412708, label %block_.L_412740

block_412708:                                     ; preds = %block_4126e3
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1164, align 8
  %2726 = add i64 %2725, 13
  store i64 %2726, i64* %3, align 8
  %2727 = load i32, i32* %2668, align 4
  %2728 = add i32 %2727, 20
  %2729 = zext i32 %2728 to i64
  store i64 %2729, i64* %RCX.i1339, align 8
  %2730 = icmp ugt i32 %2727, -21
  %2731 = zext i1 %2730 to i8
  store i8 %2731, i8* %14, align 1
  %2732 = and i32 %2728, 255
  %2733 = tail call i32 @llvm.ctpop.i32(i32 %2732)
  %2734 = trunc i32 %2733 to i8
  %2735 = and i8 %2734, 1
  %2736 = xor i8 %2735, 1
  store i8 %2736, i8* %21, align 1
  %2737 = xor i32 %2727, 16
  %2738 = xor i32 %2737, %2728
  %2739 = lshr i32 %2738, 4
  %2740 = trunc i32 %2739 to i8
  %2741 = and i8 %2740, 1
  store i8 %2741, i8* %27, align 1
  %2742 = icmp eq i32 %2728, 0
  %2743 = zext i1 %2742 to i8
  store i8 %2743, i8* %30, align 1
  %2744 = lshr i32 %2728, 31
  %2745 = trunc i32 %2744 to i8
  store i8 %2745, i8* %33, align 1
  %2746 = lshr i32 %2727, 31
  %2747 = xor i32 %2744, %2746
  %2748 = add nuw nsw i32 %2747, %2744
  %2749 = icmp eq i32 %2748, 2
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %39, align 1
  %2751 = sext i32 %2728 to i64
  store i64 %2751, i64* %RDX.i1330, align 8
  %2752 = shl nsw i64 %2751, 2
  %2753 = add nsw i64 %2752, 11187184
  %2754 = add i64 %2725, 27
  store i64 %2754, i64* %3, align 8
  %2755 = inttoptr i64 %2753 to i32*
  %2756 = load i32, i32* %2755, align 4
  %2757 = sext i32 %2756 to i64
  %2758 = mul nsw i64 %2757, 744
  store i64 %2758, i64* %RDX.i1330, align 8
  %2759 = lshr i64 %2758, 63
  %2760 = add i64 %2758, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2760, i64* %RAX.i1164, align 8
  %2761 = icmp ult i64 %2760, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2762 = icmp ult i64 %2760, %2758
  %2763 = or i1 %2761, %2762
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %14, align 1
  %2765 = trunc i64 %2760 to i32
  %2766 = and i32 %2765, 248
  %2767 = tail call i32 @llvm.ctpop.i32(i32 %2766)
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  %2770 = xor i8 %2769, 1
  store i8 %2770, i8* %21, align 1
  %2771 = xor i64 %2758, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2772 = xor i64 %2771, %2760
  %2773 = lshr i64 %2772, 4
  %2774 = trunc i64 %2773 to i8
  %2775 = and i8 %2774, 1
  store i8 %2775, i8* %27, align 1
  %2776 = icmp eq i64 %2760, 0
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %30, align 1
  %2778 = lshr i64 %2760, 63
  %2779 = trunc i64 %2778 to i8
  store i8 %2779, i8* %33, align 1
  %2780 = xor i64 %2778, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2781 = xor i64 %2778, %2759
  %2782 = add nuw nsw i64 %2780, %2781
  %2783 = icmp eq i64 %2782, 2
  %2784 = zext i1 %2783 to i8
  store i8 %2784, i8* %39, align 1
  %2785 = add i64 %2758, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2786 = add i64 %2725, 43
  store i64 %2786, i64* %3, align 8
  %2787 = inttoptr i64 %2785 to i32*
  %2788 = load i32, i32* %2787, align 4
  %2789 = zext i32 %2788 to i64
  store i64 %2789, i64* %RCX.i1339, align 8
  %2790 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2791 = sub i32 %2788, %2790
  %2792 = icmp ult i32 %2788, %2790
  %2793 = zext i1 %2792 to i8
  store i8 %2793, i8* %14, align 1
  %2794 = and i32 %2791, 255
  %2795 = tail call i32 @llvm.ctpop.i32(i32 %2794)
  %2796 = trunc i32 %2795 to i8
  %2797 = and i8 %2796, 1
  %2798 = xor i8 %2797, 1
  store i8 %2798, i8* %21, align 1
  %2799 = xor i32 %2790, %2788
  %2800 = xor i32 %2799, %2791
  %2801 = lshr i32 %2800, 4
  %2802 = trunc i32 %2801 to i8
  %2803 = and i8 %2802, 1
  store i8 %2803, i8* %27, align 1
  %2804 = icmp eq i32 %2791, 0
  %2805 = zext i1 %2804 to i8
  store i8 %2805, i8* %30, align 1
  %2806 = lshr i32 %2791, 31
  %2807 = trunc i32 %2806 to i8
  store i8 %2807, i8* %33, align 1
  %2808 = lshr i32 %2788, 31
  %2809 = lshr i32 %2790, 31
  %2810 = xor i32 %2809, %2808
  %2811 = xor i32 %2806, %2808
  %2812 = add nuw nsw i32 %2811, %2810
  %2813 = icmp eq i32 %2812, 2
  %2814 = zext i1 %2813 to i8
  store i8 %2814, i8* %39, align 1
  %.v217 = select i1 %2804, i64 364, i64 56
  %2815 = add i64 %2725, %.v217
  store i64 %2815, i64* %3, align 8
  br i1 %2804, label %block_.L_412874, label %block_412708.block_.L_412740_crit_edge

block_412708.block_.L_412740_crit_edge:           ; preds = %block_412708
  %.pre144 = load i64, i64* %RBP.i, align 8
  br label %block_.L_412740

block_.L_412740:                                  ; preds = %block_4126e3, %block_412708.block_.L_412740_crit_edge
  %2816 = phi i64 [ %2815, %block_412708.block_.L_412740_crit_edge ], [ %2725, %block_4126e3 ]
  %2817 = phi i64 [ %.pre144, %block_412708.block_.L_412740_crit_edge ], [ %2664, %block_4126e3 ]
  %2818 = add i64 %2817, -40
  %2819 = add i64 %2816, 3
  store i64 %2819, i64* %3, align 8
  %2820 = inttoptr i64 %2818 to i32*
  %2821 = load i32, i32* %2820, align 4
  %2822 = add i32 %2821, -1
  %2823 = zext i32 %2822 to i64
  store i64 %2823, i64* %RAX.i1164, align 8
  %2824 = icmp eq i32 %2821, 0
  %2825 = zext i1 %2824 to i8
  store i8 %2825, i8* %14, align 1
  %2826 = and i32 %2822, 255
  %2827 = tail call i32 @llvm.ctpop.i32(i32 %2826)
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  %2830 = xor i8 %2829, 1
  store i8 %2830, i8* %21, align 1
  %2831 = xor i32 %2822, %2821
  %2832 = lshr i32 %2831, 4
  %2833 = trunc i32 %2832 to i8
  %2834 = and i8 %2833, 1
  store i8 %2834, i8* %27, align 1
  %2835 = icmp eq i32 %2822, 0
  %2836 = zext i1 %2835 to i8
  store i8 %2836, i8* %30, align 1
  %2837 = lshr i32 %2822, 31
  %2838 = trunc i32 %2837 to i8
  store i8 %2838, i8* %33, align 1
  %2839 = lshr i32 %2821, 31
  %2840 = xor i32 %2837, %2839
  %2841 = add nuw nsw i32 %2840, %2839
  %2842 = icmp eq i32 %2841, 2
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %39, align 1
  %2844 = sext i32 %2822 to i64
  store i64 %2844, i64* %RCX.i1339, align 8
  %2845 = add nsw i64 %2844, 12099168
  %2846 = add i64 %2816, 17
  store i64 %2846, i64* %3, align 8
  %2847 = inttoptr i64 %2845 to i8*
  %2848 = load i8, i8* %2847, align 1
  %2849 = zext i8 %2848 to i64
  store i64 %2849, i64* %RAX.i1164, align 8
  %2850 = zext i8 %2848 to i32
  %2851 = add i64 %2817, -12
  %2852 = add i64 %2816, 20
  store i64 %2852, i64* %3, align 8
  %2853 = inttoptr i64 %2851 to i32*
  %2854 = load i32, i32* %2853, align 4
  %2855 = sub i32 %2850, %2854
  %2856 = icmp ult i32 %2850, %2854
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %14, align 1
  %2858 = and i32 %2855, 255
  %2859 = tail call i32 @llvm.ctpop.i32(i32 %2858)
  %2860 = trunc i32 %2859 to i8
  %2861 = and i8 %2860, 1
  %2862 = xor i8 %2861, 1
  store i8 %2862, i8* %21, align 1
  %2863 = xor i32 %2854, %2850
  %2864 = xor i32 %2863, %2855
  %2865 = lshr i32 %2864, 4
  %2866 = trunc i32 %2865 to i8
  %2867 = and i8 %2866, 1
  store i8 %2867, i8* %27, align 1
  %2868 = icmp eq i32 %2855, 0
  %2869 = zext i1 %2868 to i8
  store i8 %2869, i8* %30, align 1
  %2870 = lshr i32 %2855, 31
  %2871 = trunc i32 %2870 to i8
  store i8 %2871, i8* %33, align 1
  %2872 = lshr i32 %2854, 31
  %2873 = add nuw nsw i32 %2870, %2872
  %2874 = icmp eq i32 %2873, 2
  %2875 = zext i1 %2874 to i8
  store i8 %2875, i8* %39, align 1
  %.v197 = select i1 %2868, i64 26, i64 82
  %2876 = add i64 %2816, %.v197
  store i64 %2876, i64* %3, align 8
  br i1 %2868, label %block_41275a, label %block_.L_412792

block_41275a:                                     ; preds = %block_.L_412740
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1164, align 8
  %2877 = add i64 %2876, 13
  store i64 %2877, i64* %3, align 8
  %2878 = load i32, i32* %2820, align 4
  %2879 = add i32 %2878, -1
  %2880 = zext i32 %2879 to i64
  store i64 %2880, i64* %RCX.i1339, align 8
  %2881 = icmp eq i32 %2878, 0
  %2882 = zext i1 %2881 to i8
  store i8 %2882, i8* %14, align 1
  %2883 = and i32 %2879, 255
  %2884 = tail call i32 @llvm.ctpop.i32(i32 %2883)
  %2885 = trunc i32 %2884 to i8
  %2886 = and i8 %2885, 1
  %2887 = xor i8 %2886, 1
  store i8 %2887, i8* %21, align 1
  %2888 = xor i32 %2879, %2878
  %2889 = lshr i32 %2888, 4
  %2890 = trunc i32 %2889 to i8
  %2891 = and i8 %2890, 1
  store i8 %2891, i8* %27, align 1
  %2892 = icmp eq i32 %2879, 0
  %2893 = zext i1 %2892 to i8
  store i8 %2893, i8* %30, align 1
  %2894 = lshr i32 %2879, 31
  %2895 = trunc i32 %2894 to i8
  store i8 %2895, i8* %33, align 1
  %2896 = lshr i32 %2878, 31
  %2897 = xor i32 %2894, %2896
  %2898 = add nuw nsw i32 %2897, %2896
  %2899 = icmp eq i32 %2898, 2
  %2900 = zext i1 %2899 to i8
  store i8 %2900, i8* %39, align 1
  %2901 = sext i32 %2879 to i64
  store i64 %2901, i64* %RDX.i1330, align 8
  %2902 = shl nsw i64 %2901, 2
  %2903 = add nsw i64 %2902, 11187184
  %2904 = add i64 %2876, 27
  store i64 %2904, i64* %3, align 8
  %2905 = inttoptr i64 %2903 to i32*
  %2906 = load i32, i32* %2905, align 4
  %2907 = sext i32 %2906 to i64
  %2908 = mul nsw i64 %2907, 744
  store i64 %2908, i64* %RDX.i1330, align 8
  %2909 = lshr i64 %2908, 63
  %2910 = add i64 %2908, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2910, i64* %RAX.i1164, align 8
  %2911 = icmp ult i64 %2910, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2912 = icmp ult i64 %2910, %2908
  %2913 = or i1 %2911, %2912
  %2914 = zext i1 %2913 to i8
  store i8 %2914, i8* %14, align 1
  %2915 = trunc i64 %2910 to i32
  %2916 = and i32 %2915, 248
  %2917 = tail call i32 @llvm.ctpop.i32(i32 %2916)
  %2918 = trunc i32 %2917 to i8
  %2919 = and i8 %2918, 1
  %2920 = xor i8 %2919, 1
  store i8 %2920, i8* %21, align 1
  %2921 = xor i64 %2908, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2922 = xor i64 %2921, %2910
  %2923 = lshr i64 %2922, 4
  %2924 = trunc i64 %2923 to i8
  %2925 = and i8 %2924, 1
  store i8 %2925, i8* %27, align 1
  %2926 = icmp eq i64 %2910, 0
  %2927 = zext i1 %2926 to i8
  store i8 %2927, i8* %30, align 1
  %2928 = lshr i64 %2910, 63
  %2929 = trunc i64 %2928 to i8
  store i8 %2929, i8* %33, align 1
  %2930 = xor i64 %2928, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2931 = xor i64 %2928, %2909
  %2932 = add nuw nsw i64 %2930, %2931
  %2933 = icmp eq i64 %2932, 2
  %2934 = zext i1 %2933 to i8
  store i8 %2934, i8* %39, align 1
  %2935 = add i64 %2908, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2936 = add i64 %2876, 43
  store i64 %2936, i64* %3, align 8
  %2937 = inttoptr i64 %2935 to i32*
  %2938 = load i32, i32* %2937, align 4
  %2939 = zext i32 %2938 to i64
  store i64 %2939, i64* %RCX.i1339, align 8
  %2940 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2941 = sub i32 %2938, %2940
  %2942 = icmp ult i32 %2938, %2940
  %2943 = zext i1 %2942 to i8
  store i8 %2943, i8* %14, align 1
  %2944 = and i32 %2941, 255
  %2945 = tail call i32 @llvm.ctpop.i32(i32 %2944)
  %2946 = trunc i32 %2945 to i8
  %2947 = and i8 %2946, 1
  %2948 = xor i8 %2947, 1
  store i8 %2948, i8* %21, align 1
  %2949 = xor i32 %2940, %2938
  %2950 = xor i32 %2949, %2941
  %2951 = lshr i32 %2950, 4
  %2952 = trunc i32 %2951 to i8
  %2953 = and i8 %2952, 1
  store i8 %2953, i8* %27, align 1
  %2954 = icmp eq i32 %2941, 0
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %30, align 1
  %2956 = lshr i32 %2941, 31
  %2957 = trunc i32 %2956 to i8
  store i8 %2957, i8* %33, align 1
  %2958 = lshr i32 %2938, 31
  %2959 = lshr i32 %2940, 31
  %2960 = xor i32 %2959, %2958
  %2961 = xor i32 %2956, %2958
  %2962 = add nuw nsw i32 %2961, %2960
  %2963 = icmp eq i32 %2962, 2
  %2964 = zext i1 %2963 to i8
  store i8 %2964, i8* %39, align 1
  %.v216 = select i1 %2954, i64 282, i64 56
  %2965 = add i64 %2876, %.v216
  store i64 %2965, i64* %3, align 8
  br i1 %2954, label %block_.L_412874, label %block_41275a.block_.L_412792_crit_edge

block_41275a.block_.L_412792_crit_edge:           ; preds = %block_41275a
  %.pre145 = load i64, i64* %RBP.i, align 8
  br label %block_.L_412792

block_.L_412792:                                  ; preds = %block_.L_412740, %block_41275a.block_.L_412792_crit_edge
  %2966 = phi i64 [ %2965, %block_41275a.block_.L_412792_crit_edge ], [ %2876, %block_.L_412740 ]
  %2967 = phi i64 [ %.pre145, %block_41275a.block_.L_412792_crit_edge ], [ %2817, %block_.L_412740 ]
  %2968 = add i64 %2967, -40
  %2969 = add i64 %2966, 3
  store i64 %2969, i64* %3, align 8
  %2970 = inttoptr i64 %2968 to i32*
  %2971 = load i32, i32* %2970, align 4
  %2972 = add i32 %2971, -20
  %2973 = zext i32 %2972 to i64
  store i64 %2973, i64* %RAX.i1164, align 8
  %2974 = icmp ult i32 %2971, 20
  %2975 = zext i1 %2974 to i8
  store i8 %2975, i8* %14, align 1
  %2976 = and i32 %2972, 255
  %2977 = tail call i32 @llvm.ctpop.i32(i32 %2976)
  %2978 = trunc i32 %2977 to i8
  %2979 = and i8 %2978, 1
  %2980 = xor i8 %2979, 1
  store i8 %2980, i8* %21, align 1
  %2981 = xor i32 %2971, 16
  %2982 = xor i32 %2981, %2972
  %2983 = lshr i32 %2982, 4
  %2984 = trunc i32 %2983 to i8
  %2985 = and i8 %2984, 1
  store i8 %2985, i8* %27, align 1
  %2986 = icmp eq i32 %2972, 0
  %2987 = zext i1 %2986 to i8
  store i8 %2987, i8* %30, align 1
  %2988 = lshr i32 %2972, 31
  %2989 = trunc i32 %2988 to i8
  store i8 %2989, i8* %33, align 1
  %2990 = lshr i32 %2971, 31
  %2991 = xor i32 %2988, %2990
  %2992 = add nuw nsw i32 %2991, %2990
  %2993 = icmp eq i32 %2992, 2
  %2994 = zext i1 %2993 to i8
  store i8 %2994, i8* %39, align 1
  %2995 = sext i32 %2972 to i64
  store i64 %2995, i64* %RCX.i1339, align 8
  %2996 = add nsw i64 %2995, 12099168
  %2997 = add i64 %2966, 17
  store i64 %2997, i64* %3, align 8
  %2998 = inttoptr i64 %2996 to i8*
  %2999 = load i8, i8* %2998, align 1
  %3000 = zext i8 %2999 to i64
  store i64 %3000, i64* %RAX.i1164, align 8
  %3001 = zext i8 %2999 to i32
  %3002 = add i64 %2967, -12
  %3003 = add i64 %2966, 20
  store i64 %3003, i64* %3, align 8
  %3004 = inttoptr i64 %3002 to i32*
  %3005 = load i32, i32* %3004, align 4
  %3006 = sub i32 %3001, %3005
  %3007 = icmp ult i32 %3001, %3005
  %3008 = zext i1 %3007 to i8
  store i8 %3008, i8* %14, align 1
  %3009 = and i32 %3006, 255
  %3010 = tail call i32 @llvm.ctpop.i32(i32 %3009)
  %3011 = trunc i32 %3010 to i8
  %3012 = and i8 %3011, 1
  %3013 = xor i8 %3012, 1
  store i8 %3013, i8* %21, align 1
  %3014 = xor i32 %3005, %3001
  %3015 = xor i32 %3014, %3006
  %3016 = lshr i32 %3015, 4
  %3017 = trunc i32 %3016 to i8
  %3018 = and i8 %3017, 1
  store i8 %3018, i8* %27, align 1
  %3019 = icmp eq i32 %3006, 0
  %3020 = zext i1 %3019 to i8
  store i8 %3020, i8* %30, align 1
  %3021 = lshr i32 %3006, 31
  %3022 = trunc i32 %3021 to i8
  store i8 %3022, i8* %33, align 1
  %3023 = lshr i32 %3005, 31
  %3024 = add nuw nsw i32 %3021, %3023
  %3025 = icmp eq i32 %3024, 2
  %3026 = zext i1 %3025 to i8
  store i8 %3026, i8* %39, align 1
  %.v198 = select i1 %3019, i64 26, i64 82
  %3027 = add i64 %2966, %.v198
  store i64 %3027, i64* %3, align 8
  br i1 %3019, label %block_4127ac, label %block_.L_4127e4

block_4127ac:                                     ; preds = %block_.L_412792
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1164, align 8
  %3028 = add i64 %3027, 13
  store i64 %3028, i64* %3, align 8
  %3029 = load i32, i32* %2970, align 4
  %3030 = add i32 %3029, -20
  %3031 = zext i32 %3030 to i64
  store i64 %3031, i64* %RCX.i1339, align 8
  %3032 = icmp ult i32 %3029, 20
  %3033 = zext i1 %3032 to i8
  store i8 %3033, i8* %14, align 1
  %3034 = and i32 %3030, 255
  %3035 = tail call i32 @llvm.ctpop.i32(i32 %3034)
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  %3038 = xor i8 %3037, 1
  store i8 %3038, i8* %21, align 1
  %3039 = xor i32 %3029, 16
  %3040 = xor i32 %3039, %3030
  %3041 = lshr i32 %3040, 4
  %3042 = trunc i32 %3041 to i8
  %3043 = and i8 %3042, 1
  store i8 %3043, i8* %27, align 1
  %3044 = icmp eq i32 %3030, 0
  %3045 = zext i1 %3044 to i8
  store i8 %3045, i8* %30, align 1
  %3046 = lshr i32 %3030, 31
  %3047 = trunc i32 %3046 to i8
  store i8 %3047, i8* %33, align 1
  %3048 = lshr i32 %3029, 31
  %3049 = xor i32 %3046, %3048
  %3050 = add nuw nsw i32 %3049, %3048
  %3051 = icmp eq i32 %3050, 2
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %39, align 1
  %3053 = sext i32 %3030 to i64
  store i64 %3053, i64* %RDX.i1330, align 8
  %3054 = shl nsw i64 %3053, 2
  %3055 = add nsw i64 %3054, 11187184
  %3056 = add i64 %3027, 27
  store i64 %3056, i64* %3, align 8
  %3057 = inttoptr i64 %3055 to i32*
  %3058 = load i32, i32* %3057, align 4
  %3059 = sext i32 %3058 to i64
  %3060 = mul nsw i64 %3059, 744
  store i64 %3060, i64* %RDX.i1330, align 8
  %3061 = lshr i64 %3060, 63
  %3062 = add i64 %3060, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3062, i64* %RAX.i1164, align 8
  %3063 = icmp ult i64 %3062, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3064 = icmp ult i64 %3062, %3060
  %3065 = or i1 %3063, %3064
  %3066 = zext i1 %3065 to i8
  store i8 %3066, i8* %14, align 1
  %3067 = trunc i64 %3062 to i32
  %3068 = and i32 %3067, 248
  %3069 = tail call i32 @llvm.ctpop.i32(i32 %3068)
  %3070 = trunc i32 %3069 to i8
  %3071 = and i8 %3070, 1
  %3072 = xor i8 %3071, 1
  store i8 %3072, i8* %21, align 1
  %3073 = xor i64 %3060, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3074 = xor i64 %3073, %3062
  %3075 = lshr i64 %3074, 4
  %3076 = trunc i64 %3075 to i8
  %3077 = and i8 %3076, 1
  store i8 %3077, i8* %27, align 1
  %3078 = icmp eq i64 %3062, 0
  %3079 = zext i1 %3078 to i8
  store i8 %3079, i8* %30, align 1
  %3080 = lshr i64 %3062, 63
  %3081 = trunc i64 %3080 to i8
  store i8 %3081, i8* %33, align 1
  %3082 = xor i64 %3080, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3083 = xor i64 %3080, %3061
  %3084 = add nuw nsw i64 %3082, %3083
  %3085 = icmp eq i64 %3084, 2
  %3086 = zext i1 %3085 to i8
  store i8 %3086, i8* %39, align 1
  %3087 = add i64 %3060, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %3088 = add i64 %3027, 43
  store i64 %3088, i64* %3, align 8
  %3089 = inttoptr i64 %3087 to i32*
  %3090 = load i32, i32* %3089, align 4
  %3091 = zext i32 %3090 to i64
  store i64 %3091, i64* %RCX.i1339, align 8
  %3092 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %3093 = sub i32 %3090, %3092
  %3094 = icmp ult i32 %3090, %3092
  %3095 = zext i1 %3094 to i8
  store i8 %3095, i8* %14, align 1
  %3096 = and i32 %3093, 255
  %3097 = tail call i32 @llvm.ctpop.i32(i32 %3096)
  %3098 = trunc i32 %3097 to i8
  %3099 = and i8 %3098, 1
  %3100 = xor i8 %3099, 1
  store i8 %3100, i8* %21, align 1
  %3101 = xor i32 %3092, %3090
  %3102 = xor i32 %3101, %3093
  %3103 = lshr i32 %3102, 4
  %3104 = trunc i32 %3103 to i8
  %3105 = and i8 %3104, 1
  store i8 %3105, i8* %27, align 1
  %3106 = icmp eq i32 %3093, 0
  %3107 = zext i1 %3106 to i8
  store i8 %3107, i8* %30, align 1
  %3108 = lshr i32 %3093, 31
  %3109 = trunc i32 %3108 to i8
  store i8 %3109, i8* %33, align 1
  %3110 = lshr i32 %3090, 31
  %3111 = lshr i32 %3092, 31
  %3112 = xor i32 %3111, %3110
  %3113 = xor i32 %3108, %3110
  %3114 = add nuw nsw i32 %3113, %3112
  %3115 = icmp eq i32 %3114, 2
  %3116 = zext i1 %3115 to i8
  store i8 %3116, i8* %39, align 1
  %.v215 = select i1 %3106, i64 200, i64 56
  %3117 = add i64 %3027, %.v215
  store i64 %3117, i64* %3, align 8
  br i1 %3106, label %block_.L_412874, label %block_4127ac.block_.L_4127e4_crit_edge

block_4127ac.block_.L_4127e4_crit_edge:           ; preds = %block_4127ac
  %.pre146 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4127e4

block_.L_4127e4:                                  ; preds = %block_.L_412792, %block_4127ac.block_.L_4127e4_crit_edge
  %3118 = phi i64 [ %3117, %block_4127ac.block_.L_4127e4_crit_edge ], [ %3027, %block_.L_412792 ]
  %3119 = phi i64 [ %.pre146, %block_4127ac.block_.L_4127e4_crit_edge ], [ %2967, %block_.L_412792 ]
  %3120 = add i64 %3119, -40
  %3121 = add i64 %3118, 3
  store i64 %3121, i64* %3, align 8
  %3122 = inttoptr i64 %3120 to i32*
  %3123 = load i32, i32* %3122, align 4
  %3124 = add i32 %3123, 1
  %3125 = zext i32 %3124 to i64
  store i64 %3125, i64* %RAX.i1164, align 8
  %3126 = icmp eq i32 %3123, -1
  %3127 = icmp eq i32 %3124, 0
  %3128 = or i1 %3126, %3127
  %3129 = zext i1 %3128 to i8
  store i8 %3129, i8* %14, align 1
  %3130 = and i32 %3124, 255
  %3131 = tail call i32 @llvm.ctpop.i32(i32 %3130)
  %3132 = trunc i32 %3131 to i8
  %3133 = and i8 %3132, 1
  %3134 = xor i8 %3133, 1
  store i8 %3134, i8* %21, align 1
  %3135 = xor i32 %3124, %3123
  %3136 = lshr i32 %3135, 4
  %3137 = trunc i32 %3136 to i8
  %3138 = and i8 %3137, 1
  store i8 %3138, i8* %27, align 1
  %3139 = zext i1 %3127 to i8
  store i8 %3139, i8* %30, align 1
  %3140 = lshr i32 %3124, 31
  %3141 = trunc i32 %3140 to i8
  store i8 %3141, i8* %33, align 1
  %3142 = lshr i32 %3123, 31
  %3143 = xor i32 %3140, %3142
  %3144 = add nuw nsw i32 %3143, %3140
  %3145 = icmp eq i32 %3144, 2
  %3146 = zext i1 %3145 to i8
  store i8 %3146, i8* %39, align 1
  %3147 = sext i32 %3124 to i64
  store i64 %3147, i64* %RCX.i1339, align 8
  %3148 = add nsw i64 %3147, 12099168
  %3149 = add i64 %3118, 17
  store i64 %3149, i64* %3, align 8
  %3150 = inttoptr i64 %3148 to i8*
  %3151 = load i8, i8* %3150, align 1
  %3152 = zext i8 %3151 to i64
  store i64 %3152, i64* %RAX.i1164, align 8
  %3153 = zext i8 %3151 to i32
  %3154 = add i64 %3119, -12
  %3155 = add i64 %3118, 20
  store i64 %3155, i64* %3, align 8
  %3156 = inttoptr i64 %3154 to i32*
  %3157 = load i32, i32* %3156, align 4
  %3158 = sub i32 %3153, %3157
  %3159 = icmp ult i32 %3153, %3157
  %3160 = zext i1 %3159 to i8
  store i8 %3160, i8* %14, align 1
  %3161 = and i32 %3158, 255
  %3162 = tail call i32 @llvm.ctpop.i32(i32 %3161)
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  %3165 = xor i8 %3164, 1
  store i8 %3165, i8* %21, align 1
  %3166 = xor i32 %3157, %3153
  %3167 = xor i32 %3166, %3158
  %3168 = lshr i32 %3167, 4
  %3169 = trunc i32 %3168 to i8
  %3170 = and i8 %3169, 1
  store i8 %3170, i8* %27, align 1
  %3171 = icmp eq i32 %3158, 0
  %3172 = zext i1 %3171 to i8
  store i8 %3172, i8* %30, align 1
  %3173 = lshr i32 %3158, 31
  %3174 = trunc i32 %3173 to i8
  store i8 %3174, i8* %33, align 1
  %3175 = lshr i32 %3157, 31
  %3176 = add nuw nsw i32 %3173, %3175
  %3177 = icmp eq i32 %3176, 2
  %3178 = zext i1 %3177 to i8
  store i8 %3178, i8* %39, align 1
  %.v199 = select i1 %3171, i64 26, i64 82
  %3179 = add i64 %3118, %.v199
  store i64 %3179, i64* %3, align 8
  br i1 %3171, label %block_4127fe, label %block_.L_412836

block_4127fe:                                     ; preds = %block_.L_4127e4
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1164, align 8
  %3180 = add i64 %3179, 13
  store i64 %3180, i64* %3, align 8
  %3181 = load i32, i32* %3122, align 4
  %3182 = add i32 %3181, 1
  %3183 = zext i32 %3182 to i64
  store i64 %3183, i64* %RCX.i1339, align 8
  %3184 = icmp eq i32 %3181, -1
  %3185 = icmp eq i32 %3182, 0
  %3186 = or i1 %3184, %3185
  %3187 = zext i1 %3186 to i8
  store i8 %3187, i8* %14, align 1
  %3188 = and i32 %3182, 255
  %3189 = tail call i32 @llvm.ctpop.i32(i32 %3188)
  %3190 = trunc i32 %3189 to i8
  %3191 = and i8 %3190, 1
  %3192 = xor i8 %3191, 1
  store i8 %3192, i8* %21, align 1
  %3193 = xor i32 %3182, %3181
  %3194 = lshr i32 %3193, 4
  %3195 = trunc i32 %3194 to i8
  %3196 = and i8 %3195, 1
  store i8 %3196, i8* %27, align 1
  %3197 = zext i1 %3185 to i8
  store i8 %3197, i8* %30, align 1
  %3198 = lshr i32 %3182, 31
  %3199 = trunc i32 %3198 to i8
  store i8 %3199, i8* %33, align 1
  %3200 = lshr i32 %3181, 31
  %3201 = xor i32 %3198, %3200
  %3202 = add nuw nsw i32 %3201, %3198
  %3203 = icmp eq i32 %3202, 2
  %3204 = zext i1 %3203 to i8
  store i8 %3204, i8* %39, align 1
  %3205 = sext i32 %3182 to i64
  store i64 %3205, i64* %RDX.i1330, align 8
  %3206 = shl nsw i64 %3205, 2
  %3207 = add nsw i64 %3206, 11187184
  %3208 = add i64 %3179, 27
  store i64 %3208, i64* %3, align 8
  %3209 = inttoptr i64 %3207 to i32*
  %3210 = load i32, i32* %3209, align 4
  %3211 = sext i32 %3210 to i64
  %3212 = mul nsw i64 %3211, 744
  store i64 %3212, i64* %RDX.i1330, align 8
  %3213 = lshr i64 %3212, 63
  %3214 = add i64 %3212, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3214, i64* %RAX.i1164, align 8
  %3215 = icmp ult i64 %3214, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3216 = icmp ult i64 %3214, %3212
  %3217 = or i1 %3215, %3216
  %3218 = zext i1 %3217 to i8
  store i8 %3218, i8* %14, align 1
  %3219 = trunc i64 %3214 to i32
  %3220 = and i32 %3219, 248
  %3221 = tail call i32 @llvm.ctpop.i32(i32 %3220)
  %3222 = trunc i32 %3221 to i8
  %3223 = and i8 %3222, 1
  %3224 = xor i8 %3223, 1
  store i8 %3224, i8* %21, align 1
  %3225 = xor i64 %3212, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3226 = xor i64 %3225, %3214
  %3227 = lshr i64 %3226, 4
  %3228 = trunc i64 %3227 to i8
  %3229 = and i8 %3228, 1
  store i8 %3229, i8* %27, align 1
  %3230 = icmp eq i64 %3214, 0
  %3231 = zext i1 %3230 to i8
  store i8 %3231, i8* %30, align 1
  %3232 = lshr i64 %3214, 63
  %3233 = trunc i64 %3232 to i8
  store i8 %3233, i8* %33, align 1
  %3234 = xor i64 %3232, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3235 = xor i64 %3232, %3213
  %3236 = add nuw nsw i64 %3234, %3235
  %3237 = icmp eq i64 %3236, 2
  %3238 = zext i1 %3237 to i8
  store i8 %3238, i8* %39, align 1
  %3239 = add i64 %3212, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %3240 = add i64 %3179, 43
  store i64 %3240, i64* %3, align 8
  %3241 = inttoptr i64 %3239 to i32*
  %3242 = load i32, i32* %3241, align 4
  %3243 = zext i32 %3242 to i64
  store i64 %3243, i64* %RCX.i1339, align 8
  %3244 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %3245 = sub i32 %3242, %3244
  %3246 = icmp ult i32 %3242, %3244
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %14, align 1
  %3248 = and i32 %3245, 255
  %3249 = tail call i32 @llvm.ctpop.i32(i32 %3248)
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  %3252 = xor i8 %3251, 1
  store i8 %3252, i8* %21, align 1
  %3253 = xor i32 %3244, %3242
  %3254 = xor i32 %3253, %3245
  %3255 = lshr i32 %3254, 4
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  store i8 %3257, i8* %27, align 1
  %3258 = icmp eq i32 %3245, 0
  %3259 = zext i1 %3258 to i8
  store i8 %3259, i8* %30, align 1
  %3260 = lshr i32 %3245, 31
  %3261 = trunc i32 %3260 to i8
  store i8 %3261, i8* %33, align 1
  %3262 = lshr i32 %3242, 31
  %3263 = lshr i32 %3244, 31
  %3264 = xor i32 %3263, %3262
  %3265 = xor i32 %3260, %3262
  %3266 = add nuw nsw i32 %3265, %3264
  %3267 = icmp eq i32 %3266, 2
  %3268 = zext i1 %3267 to i8
  store i8 %3268, i8* %39, align 1
  %.v214 = select i1 %3258, i64 118, i64 56
  %3269 = add i64 %3179, %.v214
  store i64 %3269, i64* %3, align 8
  br i1 %3258, label %block_.L_412874, label %block_4127fe.block_.L_412836_crit_edge

block_4127fe.block_.L_412836_crit_edge:           ; preds = %block_4127fe
  %.pre147 = load i64, i64* %RBP.i, align 8
  br label %block_.L_412836

block_.L_412836:                                  ; preds = %block_.L_4127e4, %block_4127fe.block_.L_412836_crit_edge
  %3270 = phi i64 [ %3269, %block_4127fe.block_.L_412836_crit_edge ], [ %3179, %block_.L_4127e4 ]
  %3271 = phi i64 [ %.pre147, %block_4127fe.block_.L_412836_crit_edge ], [ %3119, %block_.L_4127e4 ]
  %3272 = add i64 %3271, -24
  %3273 = add i64 %3270, 5
  store i64 %3273, i64* %3, align 8
  %3274 = inttoptr i64 %3272 to i64*
  %3275 = load i64, i64* %3274, align 8
  store i8 0, i8* %14, align 1
  %3276 = trunc i64 %3275 to i32
  %3277 = and i32 %3276, 255
  %3278 = tail call i32 @llvm.ctpop.i32(i32 %3277)
  %3279 = trunc i32 %3278 to i8
  %3280 = and i8 %3279, 1
  %3281 = xor i8 %3280, 1
  store i8 %3281, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3282 = icmp eq i64 %3275, 0
  %3283 = zext i1 %3282 to i8
  store i8 %3283, i8* %30, align 1
  %3284 = lshr i64 %3275, 63
  %3285 = trunc i64 %3284 to i8
  store i8 %3285, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v200 = select i1 %3282, i64 25, i64 11
  %3286 = add i64 %3270, %.v200
  store i64 %3286, i64* %3, align 8
  br i1 %3282, label %block_.L_41284f, label %block_412841

block_412841:                                     ; preds = %block_.L_412836
  %3287 = add i64 %3271, -40
  %3288 = add i64 %3286, 3
  store i64 %3288, i64* %3, align 8
  %3289 = inttoptr i64 %3287 to i32*
  %3290 = load i32, i32* %3289, align 4
  %3291 = zext i32 %3290 to i64
  store i64 %3291, i64* %RAX.i1164, align 8
  %3292 = add i64 %3286, 7
  store i64 %3292, i64* %3, align 8
  %3293 = load i64, i64* %3274, align 8
  store i64 %3293, i64* %RCX.i1339, align 8
  %3294 = add i64 %3271, -36
  %3295 = add i64 %3286, 11
  store i64 %3295, i64* %3, align 8
  %3296 = inttoptr i64 %3294 to i32*
  %3297 = load i32, i32* %3296, align 4
  %3298 = sext i32 %3297 to i64
  store i64 %3298, i64* %RDX.i1330, align 8
  %3299 = shl nsw i64 %3298, 2
  %3300 = add i64 %3299, %3293
  %3301 = add i64 %3286, 14
  store i64 %3301, i64* %3, align 8
  %3302 = inttoptr i64 %3300 to i32*
  store i32 %3290, i32* %3302, align 4
  %.pre148 = load i64, i64* %RBP.i, align 8
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_41284f

block_.L_41284f:                                  ; preds = %block_412841, %block_.L_412836
  %3303 = phi i64 [ %.pre149, %block_412841 ], [ %3286, %block_.L_412836 ]
  %3304 = phi i64 [ %.pre148, %block_412841 ], [ %3271, %block_.L_412836 ]
  %3305 = add i64 %3304, -36
  %3306 = add i64 %3303, 3
  store i64 %3306, i64* %3, align 8
  %3307 = inttoptr i64 %3305 to i32*
  %3308 = load i32, i32* %3307, align 4
  %3309 = add i32 %3308, 1
  %3310 = zext i32 %3309 to i64
  store i64 %3310, i64* %RAX.i1164, align 8
  %3311 = icmp eq i32 %3308, -1
  %3312 = icmp eq i32 %3309, 0
  %3313 = or i1 %3311, %3312
  %3314 = zext i1 %3313 to i8
  store i8 %3314, i8* %14, align 1
  %3315 = and i32 %3309, 255
  %3316 = tail call i32 @llvm.ctpop.i32(i32 %3315)
  %3317 = trunc i32 %3316 to i8
  %3318 = and i8 %3317, 1
  %3319 = xor i8 %3318, 1
  store i8 %3319, i8* %21, align 1
  %3320 = xor i32 %3309, %3308
  %3321 = lshr i32 %3320, 4
  %3322 = trunc i32 %3321 to i8
  %3323 = and i8 %3322, 1
  store i8 %3323, i8* %27, align 1
  %3324 = zext i1 %3312 to i8
  store i8 %3324, i8* %30, align 1
  %3325 = lshr i32 %3309, 31
  %3326 = trunc i32 %3325 to i8
  store i8 %3326, i8* %33, align 1
  %3327 = lshr i32 %3308, 31
  %3328 = xor i32 %3325, %3327
  %3329 = add nuw nsw i32 %3328, %3325
  %3330 = icmp eq i32 %3329, 2
  %3331 = zext i1 %3330 to i8
  store i8 %3331, i8* %39, align 1
  %3332 = add i64 %3303, 9
  store i64 %3332, i64* %3, align 8
  store i32 %3309, i32* %3307, align 4
  %3333 = load i64, i64* %RBP.i, align 8
  %3334 = add i64 %3333, -36
  %3335 = load i64, i64* %3, align 8
  %3336 = add i64 %3335, 3
  store i64 %3336, i64* %3, align 8
  %3337 = inttoptr i64 %3334 to i32*
  %3338 = load i32, i32* %3337, align 4
  %3339 = zext i32 %3338 to i64
  store i64 %3339, i64* %RAX.i1164, align 8
  %3340 = add i64 %3333, -16
  %3341 = add i64 %3335, 6
  store i64 %3341, i64* %3, align 8
  %3342 = inttoptr i64 %3340 to i32*
  %3343 = load i32, i32* %3342, align 4
  %3344 = sub i32 %3338, %3343
  %3345 = icmp ult i32 %3338, %3343
  %3346 = zext i1 %3345 to i8
  store i8 %3346, i8* %14, align 1
  %3347 = and i32 %3344, 255
  %3348 = tail call i32 @llvm.ctpop.i32(i32 %3347)
  %3349 = trunc i32 %3348 to i8
  %3350 = and i8 %3349, 1
  %3351 = xor i8 %3350, 1
  store i8 %3351, i8* %21, align 1
  %3352 = xor i32 %3343, %3338
  %3353 = xor i32 %3352, %3344
  %3354 = lshr i32 %3353, 4
  %3355 = trunc i32 %3354 to i8
  %3356 = and i8 %3355, 1
  store i8 %3356, i8* %27, align 1
  %3357 = icmp eq i32 %3344, 0
  %3358 = zext i1 %3357 to i8
  store i8 %3358, i8* %30, align 1
  %3359 = lshr i32 %3344, 31
  %3360 = trunc i32 %3359 to i8
  store i8 %3360, i8* %33, align 1
  %3361 = lshr i32 %3338, 31
  %3362 = lshr i32 %3343, 31
  %3363 = xor i32 %3362, %3361
  %3364 = xor i32 %3359, %3361
  %3365 = add nuw nsw i32 %3364, %3363
  %3366 = icmp eq i32 %3365, 2
  %3367 = zext i1 %3366 to i8
  store i8 %3367, i8* %39, align 1
  %3368 = icmp ne i8 %3360, 0
  %3369 = xor i1 %3368, %3366
  %.v201 = select i1 %3369, i64 23, i64 12
  %3370 = add i64 %3335, %.v201
  store i64 %3370, i64* %3, align 8
  br i1 %3369, label %block_.L_41286f, label %block_412864

block_412864:                                     ; preds = %block_.L_41284f
  %3371 = add i64 %3370, 3
  store i64 %3371, i64* %3, align 8
  %3372 = load i32, i32* %3337, align 4
  %3373 = zext i32 %3372 to i64
  store i64 %3373, i64* %RAX.i1164, align 8
  %3374 = add i64 %3333, -4
  %3375 = add i64 %3370, 6
  store i64 %3375, i64* %3, align 8
  %3376 = inttoptr i64 %3374 to i32*
  store i32 %3372, i32* %3376, align 4
  %3377 = load i64, i64* %3, align 8
  %3378 = add i64 %3377, 554
  store i64 %3378, i64* %3, align 8
  br label %block_.L_412a94

block_.L_41286f:                                  ; preds = %block_.L_41284f
  %3379 = add i64 %3370, 5
  store i64 %3379, i64* %3, align 8
  br label %block_.L_412874

block_.L_412874:                                  ; preds = %block_.L_41286f, %block_4127fe, %block_4127ac, %block_41275a, %block_412708
  %3380 = phi i64 [ %3379, %block_.L_41286f ], [ %3269, %block_4127fe ], [ %3117, %block_4127ac ], [ %2965, %block_41275a ], [ %2815, %block_412708 ]
  %3381 = load i64, i64* %RBP.i, align 8
  %3382 = add i64 %3381, -32
  %3383 = add i64 %3380, 7
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i32*
  store i32 0, i32* %3384, align 4
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_41287b

block_.L_41287b:                                  ; preds = %block_.L_4128ad, %block_.L_412874
  %3385 = phi i64 [ %3502, %block_.L_4128ad ], [ %.pre150, %block_.L_412874 ]
  %3386 = load i64, i64* %RBP.i, align 8
  %3387 = add i64 %3386, -32
  %3388 = add i64 %3385, 3
  store i64 %3388, i64* %3, align 8
  %3389 = inttoptr i64 %3387 to i32*
  %3390 = load i32, i32* %3389, align 4
  %3391 = zext i32 %3390 to i64
  store i64 %3391, i64* %RAX.i1164, align 8
  %3392 = add i64 %3386, -28
  %3393 = add i64 %3385, 6
  store i64 %3393, i64* %3, align 8
  %3394 = inttoptr i64 %3392 to i32*
  %3395 = load i32, i32* %3394, align 4
  %3396 = sub i32 %3390, %3395
  %3397 = icmp ult i32 %3390, %3395
  %3398 = zext i1 %3397 to i8
  store i8 %3398, i8* %14, align 1
  %3399 = and i32 %3396, 255
  %3400 = tail call i32 @llvm.ctpop.i32(i32 %3399)
  %3401 = trunc i32 %3400 to i8
  %3402 = and i8 %3401, 1
  %3403 = xor i8 %3402, 1
  store i8 %3403, i8* %21, align 1
  %3404 = xor i32 %3395, %3390
  %3405 = xor i32 %3404, %3396
  %3406 = lshr i32 %3405, 4
  %3407 = trunc i32 %3406 to i8
  %3408 = and i8 %3407, 1
  store i8 %3408, i8* %27, align 1
  %3409 = icmp eq i32 %3396, 0
  %3410 = zext i1 %3409 to i8
  store i8 %3410, i8* %30, align 1
  %3411 = lshr i32 %3396, 31
  %3412 = trunc i32 %3411 to i8
  store i8 %3412, i8* %33, align 1
  %3413 = lshr i32 %3390, 31
  %3414 = lshr i32 %3395, 31
  %3415 = xor i32 %3414, %3413
  %3416 = xor i32 %3411, %3413
  %3417 = add nuw nsw i32 %3416, %3415
  %3418 = icmp eq i32 %3417, 2
  %3419 = zext i1 %3418 to i8
  store i8 %3419, i8* %39, align 1
  %3420 = icmp ne i8 %3412, 0
  %3421 = xor i1 %3420, %3418
  %.v189 = select i1 %3421, i64 12, i64 69
  %3422 = add i64 %3385, %.v189
  store i64 %3422, i64* %3, align 8
  br i1 %3421, label %block_412887, label %block_.L_4128c0.loopexit

block_412887:                                     ; preds = %block_.L_41287b
  %3423 = add i64 %3422, 4
  store i64 %3423, i64* %3, align 8
  %3424 = load i32, i32* %3389, align 4
  %3425 = sext i32 %3424 to i64
  store i64 %3425, i64* %RAX.i1164, align 8
  %3426 = shl nsw i64 %3425, 2
  %3427 = add i64 %3386, -64
  %3428 = add i64 %3427, %3426
  %3429 = add i64 %3422, 9
  store i64 %3429, i64* %3, align 8
  %3430 = inttoptr i64 %3428 to i32*
  %3431 = load i32, i32* %3430, align 4
  %3432 = sext i32 %3431 to i64
  store i64 %3432, i64* %RAX.i1164, align 8
  %3433 = shl nsw i64 %3432, 2
  %3434 = add nsw i64 %3433, 11187184
  %3435 = add i64 %3422, 16
  store i64 %3435, i64* %3, align 8
  %3436 = inttoptr i64 %3434 to i32*
  %3437 = load i32, i32* %3436, align 4
  %3438 = zext i32 %3437 to i64
  store i64 %3438, i64* %RCX.i1339, align 8
  %3439 = add i64 %3386, -40
  %3440 = add i64 %3422, 20
  store i64 %3440, i64* %3, align 8
  %3441 = inttoptr i64 %3439 to i32*
  %3442 = load i32, i32* %3441, align 4
  %3443 = sext i32 %3442 to i64
  store i64 %3443, i64* %RAX.i1164, align 8
  %3444 = shl nsw i64 %3443, 2
  %3445 = add nsw i64 %3444, 11187184
  %3446 = add i64 %3422, 27
  store i64 %3446, i64* %3, align 8
  %3447 = inttoptr i64 %3445 to i32*
  %3448 = load i32, i32* %3447, align 4
  %3449 = sub i32 %3437, %3448
  %3450 = icmp ult i32 %3437, %3448
  %3451 = zext i1 %3450 to i8
  store i8 %3451, i8* %14, align 1
  %3452 = and i32 %3449, 255
  %3453 = tail call i32 @llvm.ctpop.i32(i32 %3452)
  %3454 = trunc i32 %3453 to i8
  %3455 = and i8 %3454, 1
  %3456 = xor i8 %3455, 1
  store i8 %3456, i8* %21, align 1
  %3457 = xor i32 %3448, %3437
  %3458 = xor i32 %3457, %3449
  %3459 = lshr i32 %3458, 4
  %3460 = trunc i32 %3459 to i8
  %3461 = and i8 %3460, 1
  store i8 %3461, i8* %27, align 1
  %3462 = icmp eq i32 %3449, 0
  %3463 = zext i1 %3462 to i8
  store i8 %3463, i8* %30, align 1
  %3464 = lshr i32 %3449, 31
  %3465 = trunc i32 %3464 to i8
  store i8 %3465, i8* %33, align 1
  %3466 = lshr i32 %3437, 31
  %3467 = lshr i32 %3448, 31
  %3468 = xor i32 %3467, %3466
  %3469 = xor i32 %3464, %3466
  %3470 = add nuw nsw i32 %3469, %3468
  %3471 = icmp eq i32 %3470, 2
  %3472 = zext i1 %3471 to i8
  store i8 %3472, i8* %39, align 1
  %.v188 = select i1 %3462, i64 33, i64 38
  %3473 = add i64 %3422, %.v188
  store i64 %3473, i64* %3, align 8
  br i1 %3462, label %block_4128a8, label %block_.L_4128ad

block_4128a8:                                     ; preds = %block_412887
  %3474 = add i64 %3473, 24
  store i64 %3474, i64* %3, align 8
  br label %block_.L_4128c0

block_.L_4128ad:                                  ; preds = %block_412887
  %3475 = add i64 %3473, 8
  store i64 %3475, i64* %3, align 8
  %3476 = load i32, i32* %3389, align 4
  %3477 = add i32 %3476, 1
  %3478 = zext i32 %3477 to i64
  store i64 %3478, i64* %RAX.i1164, align 8
  %3479 = icmp eq i32 %3476, -1
  %3480 = icmp eq i32 %3477, 0
  %3481 = or i1 %3479, %3480
  %3482 = zext i1 %3481 to i8
  store i8 %3482, i8* %14, align 1
  %3483 = and i32 %3477, 255
  %3484 = tail call i32 @llvm.ctpop.i32(i32 %3483)
  %3485 = trunc i32 %3484 to i8
  %3486 = and i8 %3485, 1
  %3487 = xor i8 %3486, 1
  store i8 %3487, i8* %21, align 1
  %3488 = xor i32 %3477, %3476
  %3489 = lshr i32 %3488, 4
  %3490 = trunc i32 %3489 to i8
  %3491 = and i8 %3490, 1
  store i8 %3491, i8* %27, align 1
  %3492 = zext i1 %3480 to i8
  store i8 %3492, i8* %30, align 1
  %3493 = lshr i32 %3477, 31
  %3494 = trunc i32 %3493 to i8
  store i8 %3494, i8* %33, align 1
  %3495 = lshr i32 %3476, 31
  %3496 = xor i32 %3493, %3495
  %3497 = add nuw nsw i32 %3496, %3493
  %3498 = icmp eq i32 %3497, 2
  %3499 = zext i1 %3498 to i8
  store i8 %3499, i8* %39, align 1
  %3500 = add i64 %3473, 14
  store i64 %3500, i64* %3, align 8
  store i32 %3477, i32* %3389, align 4
  %3501 = load i64, i64* %3, align 8
  %3502 = add i64 %3501, -64
  store i64 %3502, i64* %3, align 8
  br label %block_.L_41287b

block_.L_4128c0.loopexit:                         ; preds = %block_.L_41287b
  br label %block_.L_4128c0

block_.L_4128c0:                                  ; preds = %block_.L_4128c0.loopexit, %block_4128a8
  %3503 = phi i64 [ %3474, %block_4128a8 ], [ %3422, %block_.L_4128c0.loopexit ]
  %3504 = add i64 %3503, 3
  store i64 %3504, i64* %3, align 8
  %3505 = load i32, i32* %3389, align 4
  %3506 = zext i32 %3505 to i64
  store i64 %3506, i64* %RAX.i1164, align 8
  %3507 = add i64 %3503, 6
  store i64 %3507, i64* %3, align 8
  %3508 = load i32, i32* %3394, align 4
  %3509 = sub i32 %3505, %3508
  %3510 = icmp ult i32 %3505, %3508
  %3511 = zext i1 %3510 to i8
  store i8 %3511, i8* %14, align 1
  %3512 = and i32 %3509, 255
  %3513 = tail call i32 @llvm.ctpop.i32(i32 %3512)
  %3514 = trunc i32 %3513 to i8
  %3515 = and i8 %3514, 1
  %3516 = xor i8 %3515, 1
  store i8 %3516, i8* %21, align 1
  %3517 = xor i32 %3508, %3505
  %3518 = xor i32 %3517, %3509
  %3519 = lshr i32 %3518, 4
  %3520 = trunc i32 %3519 to i8
  %3521 = and i8 %3520, 1
  store i8 %3521, i8* %27, align 1
  %3522 = icmp eq i32 %3509, 0
  %3523 = zext i1 %3522 to i8
  store i8 %3523, i8* %30, align 1
  %3524 = lshr i32 %3509, 31
  %3525 = trunc i32 %3524 to i8
  store i8 %3525, i8* %33, align 1
  %3526 = lshr i32 %3505, 31
  %3527 = lshr i32 %3508, 31
  %3528 = xor i32 %3527, %3526
  %3529 = xor i32 %3524, %3526
  %3530 = add nuw nsw i32 %3529, %3528
  %3531 = icmp eq i32 %3530, 2
  %3532 = zext i1 %3531 to i8
  store i8 %3532, i8* %39, align 1
  %.v202 = select i1 %3522, i64 12, i64 443
  %3533 = add i64 %3503, %.v202
  store i64 %3533, i64* %3, align 8
  br i1 %3522, label %block_4128cc, label %block_.L_412a7b

block_4128cc:                                     ; preds = %block_.L_4128c0
  %3534 = add i64 %3533, 5
  store i64 %3534, i64* %3, align 8
  br label %block_.L_4128d1

block_.L_4128d1:                                  ; preds = %block_.L_412a57, %block_4128cc
  %3535 = phi i64 [ %4307, %block_.L_412a57 ], [ %3534, %block_4128cc ]
  %3536 = phi i64 [ %4265, %block_.L_412a57 ], [ %3386, %block_4128cc ]
  %3537 = add i64 %3536, -40
  %3538 = add i64 %3535, 3
  store i64 %3538, i64* %3, align 8
  %3539 = inttoptr i64 %3537 to i32*
  %3540 = load i32, i32* %3539, align 4
  %3541 = add i32 %3540, 20
  %3542 = zext i32 %3541 to i64
  store i64 %3542, i64* %RAX.i1164, align 8
  %3543 = icmp ugt i32 %3540, -21
  %3544 = zext i1 %3543 to i8
  store i8 %3544, i8* %14, align 1
  %3545 = and i32 %3541, 255
  %3546 = tail call i32 @llvm.ctpop.i32(i32 %3545)
  %3547 = trunc i32 %3546 to i8
  %3548 = and i8 %3547, 1
  %3549 = xor i8 %3548, 1
  store i8 %3549, i8* %21, align 1
  %3550 = xor i32 %3540, 16
  %3551 = xor i32 %3550, %3541
  %3552 = lshr i32 %3551, 4
  %3553 = trunc i32 %3552 to i8
  %3554 = and i8 %3553, 1
  store i8 %3554, i8* %27, align 1
  %3555 = icmp eq i32 %3541, 0
  %3556 = zext i1 %3555 to i8
  store i8 %3556, i8* %30, align 1
  %3557 = lshr i32 %3541, 31
  %3558 = trunc i32 %3557 to i8
  store i8 %3558, i8* %33, align 1
  %3559 = lshr i32 %3540, 31
  %3560 = xor i32 %3557, %3559
  %3561 = add nuw nsw i32 %3560, %3557
  %3562 = icmp eq i32 %3561, 2
  %3563 = zext i1 %3562 to i8
  store i8 %3563, i8* %39, align 1
  %3564 = sext i32 %3541 to i64
  store i64 %3564, i64* %RCX.i1339, align 8
  %3565 = add nsw i64 %3564, 12099168
  %3566 = add i64 %3535, 17
  store i64 %3566, i64* %3, align 8
  %3567 = inttoptr i64 %3565 to i8*
  %3568 = load i8, i8* %3567, align 1
  %3569 = zext i8 %3568 to i64
  store i64 %3569, i64* %RAX.i1164, align 8
  %3570 = zext i8 %3568 to i32
  %3571 = add i64 %3536, -12
  %3572 = add i64 %3535, 20
  store i64 %3572, i64* %3, align 8
  %3573 = inttoptr i64 %3571 to i32*
  %3574 = load i32, i32* %3573, align 4
  %3575 = sub i32 %3570, %3574
  %3576 = icmp ult i32 %3570, %3574
  %3577 = zext i1 %3576 to i8
  store i8 %3577, i8* %14, align 1
  %3578 = and i32 %3575, 255
  %3579 = tail call i32 @llvm.ctpop.i32(i32 %3578)
  %3580 = trunc i32 %3579 to i8
  %3581 = and i8 %3580, 1
  %3582 = xor i8 %3581, 1
  store i8 %3582, i8* %21, align 1
  %3583 = xor i32 %3574, %3570
  %3584 = xor i32 %3583, %3575
  %3585 = lshr i32 %3584, 4
  %3586 = trunc i32 %3585 to i8
  %3587 = and i8 %3586, 1
  store i8 %3587, i8* %27, align 1
  %3588 = icmp eq i32 %3575, 0
  %3589 = zext i1 %3588 to i8
  store i8 %3589, i8* %30, align 1
  %3590 = lshr i32 %3575, 31
  %3591 = trunc i32 %3590 to i8
  store i8 %3591, i8* %33, align 1
  %3592 = lshr i32 %3574, 31
  %3593 = add nuw nsw i32 %3590, %3592
  %3594 = icmp eq i32 %3593, 2
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %39, align 1
  %.v203 = select i1 %3588, i64 26, i64 82
  %3596 = add i64 %3535, %.v203
  store i64 %3596, i64* %3, align 8
  br i1 %3588, label %block_4128eb, label %block_.L_412923

block_4128eb:                                     ; preds = %block_.L_4128d1
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1164, align 8
  %3597 = add i64 %3596, 13
  store i64 %3597, i64* %3, align 8
  %3598 = load i32, i32* %3539, align 4
  %3599 = add i32 %3598, 20
  %3600 = zext i32 %3599 to i64
  store i64 %3600, i64* %RCX.i1339, align 8
  %3601 = icmp ugt i32 %3598, -21
  %3602 = zext i1 %3601 to i8
  store i8 %3602, i8* %14, align 1
  %3603 = and i32 %3599, 255
  %3604 = tail call i32 @llvm.ctpop.i32(i32 %3603)
  %3605 = trunc i32 %3604 to i8
  %3606 = and i8 %3605, 1
  %3607 = xor i8 %3606, 1
  store i8 %3607, i8* %21, align 1
  %3608 = xor i32 %3598, 16
  %3609 = xor i32 %3608, %3599
  %3610 = lshr i32 %3609, 4
  %3611 = trunc i32 %3610 to i8
  %3612 = and i8 %3611, 1
  store i8 %3612, i8* %27, align 1
  %3613 = icmp eq i32 %3599, 0
  %3614 = zext i1 %3613 to i8
  store i8 %3614, i8* %30, align 1
  %3615 = lshr i32 %3599, 31
  %3616 = trunc i32 %3615 to i8
  store i8 %3616, i8* %33, align 1
  %3617 = lshr i32 %3598, 31
  %3618 = xor i32 %3615, %3617
  %3619 = add nuw nsw i32 %3618, %3615
  %3620 = icmp eq i32 %3619, 2
  %3621 = zext i1 %3620 to i8
  store i8 %3621, i8* %39, align 1
  %3622 = sext i32 %3599 to i64
  store i64 %3622, i64* %RDX.i1330, align 8
  %3623 = shl nsw i64 %3622, 2
  %3624 = add nsw i64 %3623, 11187184
  %3625 = add i64 %3596, 27
  store i64 %3625, i64* %3, align 8
  %3626 = inttoptr i64 %3624 to i32*
  %3627 = load i32, i32* %3626, align 4
  %3628 = sext i32 %3627 to i64
  %3629 = mul nsw i64 %3628, 744
  store i64 %3629, i64* %RDX.i1330, align 8
  %3630 = lshr i64 %3629, 63
  %3631 = add i64 %3629, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3631, i64* %RAX.i1164, align 8
  %3632 = icmp ult i64 %3631, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3633 = icmp ult i64 %3631, %3629
  %3634 = or i1 %3632, %3633
  %3635 = zext i1 %3634 to i8
  store i8 %3635, i8* %14, align 1
  %3636 = trunc i64 %3631 to i32
  %3637 = and i32 %3636, 248
  %3638 = tail call i32 @llvm.ctpop.i32(i32 %3637)
  %3639 = trunc i32 %3638 to i8
  %3640 = and i8 %3639, 1
  %3641 = xor i8 %3640, 1
  store i8 %3641, i8* %21, align 1
  %3642 = xor i64 %3629, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3643 = xor i64 %3642, %3631
  %3644 = lshr i64 %3643, 4
  %3645 = trunc i64 %3644 to i8
  %3646 = and i8 %3645, 1
  store i8 %3646, i8* %27, align 1
  %3647 = icmp eq i64 %3631, 0
  %3648 = zext i1 %3647 to i8
  store i8 %3648, i8* %30, align 1
  %3649 = lshr i64 %3631, 63
  %3650 = trunc i64 %3649 to i8
  store i8 %3650, i8* %33, align 1
  %3651 = xor i64 %3649, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3652 = xor i64 %3649, %3630
  %3653 = add nuw nsw i64 %3651, %3652
  %3654 = icmp eq i64 %3653, 2
  %3655 = zext i1 %3654 to i8
  store i8 %3655, i8* %39, align 1
  %3656 = add i64 %3629, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %3657 = add i64 %3596, 43
  store i64 %3657, i64* %3, align 8
  %3658 = inttoptr i64 %3656 to i32*
  %3659 = load i32, i32* %3658, align 4
  %3660 = zext i32 %3659 to i64
  store i64 %3660, i64* %RCX.i1339, align 8
  %3661 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %3662 = sub i32 %3659, %3661
  %3663 = icmp ult i32 %3659, %3661
  %3664 = zext i1 %3663 to i8
  store i8 %3664, i8* %14, align 1
  %3665 = and i32 %3662, 255
  %3666 = tail call i32 @llvm.ctpop.i32(i32 %3665)
  %3667 = trunc i32 %3666 to i8
  %3668 = and i8 %3667, 1
  %3669 = xor i8 %3668, 1
  store i8 %3669, i8* %21, align 1
  %3670 = xor i32 %3661, %3659
  %3671 = xor i32 %3670, %3662
  %3672 = lshr i32 %3671, 4
  %3673 = trunc i32 %3672 to i8
  %3674 = and i8 %3673, 1
  store i8 %3674, i8* %27, align 1
  %3675 = icmp eq i32 %3662, 0
  %3676 = zext i1 %3675 to i8
  store i8 %3676, i8* %30, align 1
  %3677 = lshr i32 %3662, 31
  %3678 = trunc i32 %3677 to i8
  store i8 %3678, i8* %33, align 1
  %3679 = lshr i32 %3659, 31
  %3680 = lshr i32 %3661, 31
  %3681 = xor i32 %3680, %3679
  %3682 = xor i32 %3677, %3679
  %3683 = add nuw nsw i32 %3682, %3681
  %3684 = icmp eq i32 %3683, 2
  %3685 = zext i1 %3684 to i8
  store i8 %3685, i8* %39, align 1
  %.v213 = select i1 %3675, i64 302, i64 56
  %3686 = add i64 %3596, %.v213
  store i64 %3686, i64* %3, align 8
  br i1 %3675, label %block_.L_412a19, label %block_4128eb.block_.L_412923_crit_edge

block_4128eb.block_.L_412923_crit_edge:           ; preds = %block_4128eb
  %.pre151 = load i64, i64* %RBP.i, align 8
  br label %block_.L_412923

block_.L_412923:                                  ; preds = %block_.L_4128d1, %block_4128eb.block_.L_412923_crit_edge
  %3687 = phi i64 [ %3686, %block_4128eb.block_.L_412923_crit_edge ], [ %3596, %block_.L_4128d1 ]
  %3688 = phi i64 [ %.pre151, %block_4128eb.block_.L_412923_crit_edge ], [ %3536, %block_.L_4128d1 ]
  %3689 = add i64 %3688, -40
  %3690 = add i64 %3687, 3
  store i64 %3690, i64* %3, align 8
  %3691 = inttoptr i64 %3689 to i32*
  %3692 = load i32, i32* %3691, align 4
  %3693 = add i32 %3692, -1
  %3694 = zext i32 %3693 to i64
  store i64 %3694, i64* %RAX.i1164, align 8
  %3695 = icmp eq i32 %3692, 0
  %3696 = zext i1 %3695 to i8
  store i8 %3696, i8* %14, align 1
  %3697 = and i32 %3693, 255
  %3698 = tail call i32 @llvm.ctpop.i32(i32 %3697)
  %3699 = trunc i32 %3698 to i8
  %3700 = and i8 %3699, 1
  %3701 = xor i8 %3700, 1
  store i8 %3701, i8* %21, align 1
  %3702 = xor i32 %3693, %3692
  %3703 = lshr i32 %3702, 4
  %3704 = trunc i32 %3703 to i8
  %3705 = and i8 %3704, 1
  store i8 %3705, i8* %27, align 1
  %3706 = icmp eq i32 %3693, 0
  %3707 = zext i1 %3706 to i8
  store i8 %3707, i8* %30, align 1
  %3708 = lshr i32 %3693, 31
  %3709 = trunc i32 %3708 to i8
  store i8 %3709, i8* %33, align 1
  %3710 = lshr i32 %3692, 31
  %3711 = xor i32 %3708, %3710
  %3712 = add nuw nsw i32 %3711, %3710
  %3713 = icmp eq i32 %3712, 2
  %3714 = zext i1 %3713 to i8
  store i8 %3714, i8* %39, align 1
  %3715 = sext i32 %3693 to i64
  store i64 %3715, i64* %RCX.i1339, align 8
  %3716 = add nsw i64 %3715, 12099168
  %3717 = add i64 %3687, 17
  store i64 %3717, i64* %3, align 8
  %3718 = inttoptr i64 %3716 to i8*
  %3719 = load i8, i8* %3718, align 1
  %3720 = zext i8 %3719 to i64
  store i64 %3720, i64* %RAX.i1164, align 8
  %3721 = zext i8 %3719 to i32
  %3722 = add i64 %3688, -12
  %3723 = add i64 %3687, 20
  store i64 %3723, i64* %3, align 8
  %3724 = inttoptr i64 %3722 to i32*
  %3725 = load i32, i32* %3724, align 4
  %3726 = sub i32 %3721, %3725
  %3727 = icmp ult i32 %3721, %3725
  %3728 = zext i1 %3727 to i8
  store i8 %3728, i8* %14, align 1
  %3729 = and i32 %3726, 255
  %3730 = tail call i32 @llvm.ctpop.i32(i32 %3729)
  %3731 = trunc i32 %3730 to i8
  %3732 = and i8 %3731, 1
  %3733 = xor i8 %3732, 1
  store i8 %3733, i8* %21, align 1
  %3734 = xor i32 %3725, %3721
  %3735 = xor i32 %3734, %3726
  %3736 = lshr i32 %3735, 4
  %3737 = trunc i32 %3736 to i8
  %3738 = and i8 %3737, 1
  store i8 %3738, i8* %27, align 1
  %3739 = icmp eq i32 %3726, 0
  %3740 = zext i1 %3739 to i8
  store i8 %3740, i8* %30, align 1
  %3741 = lshr i32 %3726, 31
  %3742 = trunc i32 %3741 to i8
  store i8 %3742, i8* %33, align 1
  %3743 = lshr i32 %3725, 31
  %3744 = add nuw nsw i32 %3741, %3743
  %3745 = icmp eq i32 %3744, 2
  %3746 = zext i1 %3745 to i8
  store i8 %3746, i8* %39, align 1
  %.v204 = select i1 %3739, i64 26, i64 82
  %3747 = add i64 %3687, %.v204
  store i64 %3747, i64* %3, align 8
  br i1 %3739, label %block_41293d, label %block_.L_412975

block_41293d:                                     ; preds = %block_.L_412923
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1164, align 8
  %3748 = add i64 %3747, 13
  store i64 %3748, i64* %3, align 8
  %3749 = load i32, i32* %3691, align 4
  %3750 = add i32 %3749, -1
  %3751 = zext i32 %3750 to i64
  store i64 %3751, i64* %RCX.i1339, align 8
  %3752 = icmp eq i32 %3749, 0
  %3753 = zext i1 %3752 to i8
  store i8 %3753, i8* %14, align 1
  %3754 = and i32 %3750, 255
  %3755 = tail call i32 @llvm.ctpop.i32(i32 %3754)
  %3756 = trunc i32 %3755 to i8
  %3757 = and i8 %3756, 1
  %3758 = xor i8 %3757, 1
  store i8 %3758, i8* %21, align 1
  %3759 = xor i32 %3750, %3749
  %3760 = lshr i32 %3759, 4
  %3761 = trunc i32 %3760 to i8
  %3762 = and i8 %3761, 1
  store i8 %3762, i8* %27, align 1
  %3763 = icmp eq i32 %3750, 0
  %3764 = zext i1 %3763 to i8
  store i8 %3764, i8* %30, align 1
  %3765 = lshr i32 %3750, 31
  %3766 = trunc i32 %3765 to i8
  store i8 %3766, i8* %33, align 1
  %3767 = lshr i32 %3749, 31
  %3768 = xor i32 %3765, %3767
  %3769 = add nuw nsw i32 %3768, %3767
  %3770 = icmp eq i32 %3769, 2
  %3771 = zext i1 %3770 to i8
  store i8 %3771, i8* %39, align 1
  %3772 = sext i32 %3750 to i64
  store i64 %3772, i64* %RDX.i1330, align 8
  %3773 = shl nsw i64 %3772, 2
  %3774 = add nsw i64 %3773, 11187184
  %3775 = add i64 %3747, 27
  store i64 %3775, i64* %3, align 8
  %3776 = inttoptr i64 %3774 to i32*
  %3777 = load i32, i32* %3776, align 4
  %3778 = sext i32 %3777 to i64
  %3779 = mul nsw i64 %3778, 744
  store i64 %3779, i64* %RDX.i1330, align 8
  %3780 = lshr i64 %3779, 63
  %3781 = add i64 %3779, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3781, i64* %RAX.i1164, align 8
  %3782 = icmp ult i64 %3781, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3783 = icmp ult i64 %3781, %3779
  %3784 = or i1 %3782, %3783
  %3785 = zext i1 %3784 to i8
  store i8 %3785, i8* %14, align 1
  %3786 = trunc i64 %3781 to i32
  %3787 = and i32 %3786, 248
  %3788 = tail call i32 @llvm.ctpop.i32(i32 %3787)
  %3789 = trunc i32 %3788 to i8
  %3790 = and i8 %3789, 1
  %3791 = xor i8 %3790, 1
  store i8 %3791, i8* %21, align 1
  %3792 = xor i64 %3779, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3793 = xor i64 %3792, %3781
  %3794 = lshr i64 %3793, 4
  %3795 = trunc i64 %3794 to i8
  %3796 = and i8 %3795, 1
  store i8 %3796, i8* %27, align 1
  %3797 = icmp eq i64 %3781, 0
  %3798 = zext i1 %3797 to i8
  store i8 %3798, i8* %30, align 1
  %3799 = lshr i64 %3781, 63
  %3800 = trunc i64 %3799 to i8
  store i8 %3800, i8* %33, align 1
  %3801 = xor i64 %3799, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3802 = xor i64 %3799, %3780
  %3803 = add nuw nsw i64 %3801, %3802
  %3804 = icmp eq i64 %3803, 2
  %3805 = zext i1 %3804 to i8
  store i8 %3805, i8* %39, align 1
  %3806 = add i64 %3779, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %3807 = add i64 %3747, 43
  store i64 %3807, i64* %3, align 8
  %3808 = inttoptr i64 %3806 to i32*
  %3809 = load i32, i32* %3808, align 4
  %3810 = zext i32 %3809 to i64
  store i64 %3810, i64* %RCX.i1339, align 8
  %3811 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %3812 = sub i32 %3809, %3811
  %3813 = icmp ult i32 %3809, %3811
  %3814 = zext i1 %3813 to i8
  store i8 %3814, i8* %14, align 1
  %3815 = and i32 %3812, 255
  %3816 = tail call i32 @llvm.ctpop.i32(i32 %3815)
  %3817 = trunc i32 %3816 to i8
  %3818 = and i8 %3817, 1
  %3819 = xor i8 %3818, 1
  store i8 %3819, i8* %21, align 1
  %3820 = xor i32 %3811, %3809
  %3821 = xor i32 %3820, %3812
  %3822 = lshr i32 %3821, 4
  %3823 = trunc i32 %3822 to i8
  %3824 = and i8 %3823, 1
  store i8 %3824, i8* %27, align 1
  %3825 = icmp eq i32 %3812, 0
  %3826 = zext i1 %3825 to i8
  store i8 %3826, i8* %30, align 1
  %3827 = lshr i32 %3812, 31
  %3828 = trunc i32 %3827 to i8
  store i8 %3828, i8* %33, align 1
  %3829 = lshr i32 %3809, 31
  %3830 = lshr i32 %3811, 31
  %3831 = xor i32 %3830, %3829
  %3832 = xor i32 %3827, %3829
  %3833 = add nuw nsw i32 %3832, %3831
  %3834 = icmp eq i32 %3833, 2
  %3835 = zext i1 %3834 to i8
  store i8 %3835, i8* %39, align 1
  %.v212 = select i1 %3825, i64 220, i64 56
  %3836 = add i64 %3747, %.v212
  store i64 %3836, i64* %3, align 8
  br i1 %3825, label %block_.L_412a19, label %block_41293d.block_.L_412975_crit_edge

block_41293d.block_.L_412975_crit_edge:           ; preds = %block_41293d
  %.pre152 = load i64, i64* %RBP.i, align 8
  br label %block_.L_412975

block_.L_412975:                                  ; preds = %block_.L_412923, %block_41293d.block_.L_412975_crit_edge
  %3837 = phi i64 [ %3836, %block_41293d.block_.L_412975_crit_edge ], [ %3747, %block_.L_412923 ]
  %3838 = phi i64 [ %.pre152, %block_41293d.block_.L_412975_crit_edge ], [ %3688, %block_.L_412923 ]
  %3839 = add i64 %3838, -40
  %3840 = add i64 %3837, 3
  store i64 %3840, i64* %3, align 8
  %3841 = inttoptr i64 %3839 to i32*
  %3842 = load i32, i32* %3841, align 4
  %3843 = add i32 %3842, -20
  %3844 = zext i32 %3843 to i64
  store i64 %3844, i64* %RAX.i1164, align 8
  %3845 = icmp ult i32 %3842, 20
  %3846 = zext i1 %3845 to i8
  store i8 %3846, i8* %14, align 1
  %3847 = and i32 %3843, 255
  %3848 = tail call i32 @llvm.ctpop.i32(i32 %3847)
  %3849 = trunc i32 %3848 to i8
  %3850 = and i8 %3849, 1
  %3851 = xor i8 %3850, 1
  store i8 %3851, i8* %21, align 1
  %3852 = xor i32 %3842, 16
  %3853 = xor i32 %3852, %3843
  %3854 = lshr i32 %3853, 4
  %3855 = trunc i32 %3854 to i8
  %3856 = and i8 %3855, 1
  store i8 %3856, i8* %27, align 1
  %3857 = icmp eq i32 %3843, 0
  %3858 = zext i1 %3857 to i8
  store i8 %3858, i8* %30, align 1
  %3859 = lshr i32 %3843, 31
  %3860 = trunc i32 %3859 to i8
  store i8 %3860, i8* %33, align 1
  %3861 = lshr i32 %3842, 31
  %3862 = xor i32 %3859, %3861
  %3863 = add nuw nsw i32 %3862, %3861
  %3864 = icmp eq i32 %3863, 2
  %3865 = zext i1 %3864 to i8
  store i8 %3865, i8* %39, align 1
  %3866 = sext i32 %3843 to i64
  store i64 %3866, i64* %RCX.i1339, align 8
  %3867 = add nsw i64 %3866, 12099168
  %3868 = add i64 %3837, 17
  store i64 %3868, i64* %3, align 8
  %3869 = inttoptr i64 %3867 to i8*
  %3870 = load i8, i8* %3869, align 1
  %3871 = zext i8 %3870 to i64
  store i64 %3871, i64* %RAX.i1164, align 8
  %3872 = zext i8 %3870 to i32
  %3873 = add i64 %3838, -12
  %3874 = add i64 %3837, 20
  store i64 %3874, i64* %3, align 8
  %3875 = inttoptr i64 %3873 to i32*
  %3876 = load i32, i32* %3875, align 4
  %3877 = sub i32 %3872, %3876
  %3878 = icmp ult i32 %3872, %3876
  %3879 = zext i1 %3878 to i8
  store i8 %3879, i8* %14, align 1
  %3880 = and i32 %3877, 255
  %3881 = tail call i32 @llvm.ctpop.i32(i32 %3880)
  %3882 = trunc i32 %3881 to i8
  %3883 = and i8 %3882, 1
  %3884 = xor i8 %3883, 1
  store i8 %3884, i8* %21, align 1
  %3885 = xor i32 %3876, %3872
  %3886 = xor i32 %3885, %3877
  %3887 = lshr i32 %3886, 4
  %3888 = trunc i32 %3887 to i8
  %3889 = and i8 %3888, 1
  store i8 %3889, i8* %27, align 1
  %3890 = icmp eq i32 %3877, 0
  %3891 = zext i1 %3890 to i8
  store i8 %3891, i8* %30, align 1
  %3892 = lshr i32 %3877, 31
  %3893 = trunc i32 %3892 to i8
  store i8 %3893, i8* %33, align 1
  %3894 = lshr i32 %3876, 31
  %3895 = add nuw nsw i32 %3892, %3894
  %3896 = icmp eq i32 %3895, 2
  %3897 = zext i1 %3896 to i8
  store i8 %3897, i8* %39, align 1
  %.v205 = select i1 %3890, i64 26, i64 82
  %3898 = add i64 %3837, %.v205
  store i64 %3898, i64* %3, align 8
  br i1 %3890, label %block_41298f, label %block_.L_4129c7

block_41298f:                                     ; preds = %block_.L_412975
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1164, align 8
  %3899 = add i64 %3898, 13
  store i64 %3899, i64* %3, align 8
  %3900 = load i32, i32* %3841, align 4
  %3901 = add i32 %3900, -20
  %3902 = zext i32 %3901 to i64
  store i64 %3902, i64* %RCX.i1339, align 8
  %3903 = icmp ult i32 %3900, 20
  %3904 = zext i1 %3903 to i8
  store i8 %3904, i8* %14, align 1
  %3905 = and i32 %3901, 255
  %3906 = tail call i32 @llvm.ctpop.i32(i32 %3905)
  %3907 = trunc i32 %3906 to i8
  %3908 = and i8 %3907, 1
  %3909 = xor i8 %3908, 1
  store i8 %3909, i8* %21, align 1
  %3910 = xor i32 %3900, 16
  %3911 = xor i32 %3910, %3901
  %3912 = lshr i32 %3911, 4
  %3913 = trunc i32 %3912 to i8
  %3914 = and i8 %3913, 1
  store i8 %3914, i8* %27, align 1
  %3915 = icmp eq i32 %3901, 0
  %3916 = zext i1 %3915 to i8
  store i8 %3916, i8* %30, align 1
  %3917 = lshr i32 %3901, 31
  %3918 = trunc i32 %3917 to i8
  store i8 %3918, i8* %33, align 1
  %3919 = lshr i32 %3900, 31
  %3920 = xor i32 %3917, %3919
  %3921 = add nuw nsw i32 %3920, %3919
  %3922 = icmp eq i32 %3921, 2
  %3923 = zext i1 %3922 to i8
  store i8 %3923, i8* %39, align 1
  %3924 = sext i32 %3901 to i64
  store i64 %3924, i64* %RDX.i1330, align 8
  %3925 = shl nsw i64 %3924, 2
  %3926 = add nsw i64 %3925, 11187184
  %3927 = add i64 %3898, 27
  store i64 %3927, i64* %3, align 8
  %3928 = inttoptr i64 %3926 to i32*
  %3929 = load i32, i32* %3928, align 4
  %3930 = sext i32 %3929 to i64
  %3931 = mul nsw i64 %3930, 744
  store i64 %3931, i64* %RDX.i1330, align 8
  %3932 = lshr i64 %3931, 63
  %3933 = add i64 %3931, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3933, i64* %RAX.i1164, align 8
  %3934 = icmp ult i64 %3933, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3935 = icmp ult i64 %3933, %3931
  %3936 = or i1 %3934, %3935
  %3937 = zext i1 %3936 to i8
  store i8 %3937, i8* %14, align 1
  %3938 = trunc i64 %3933 to i32
  %3939 = and i32 %3938, 248
  %3940 = tail call i32 @llvm.ctpop.i32(i32 %3939)
  %3941 = trunc i32 %3940 to i8
  %3942 = and i8 %3941, 1
  %3943 = xor i8 %3942, 1
  store i8 %3943, i8* %21, align 1
  %3944 = xor i64 %3931, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3945 = xor i64 %3944, %3933
  %3946 = lshr i64 %3945, 4
  %3947 = trunc i64 %3946 to i8
  %3948 = and i8 %3947, 1
  store i8 %3948, i8* %27, align 1
  %3949 = icmp eq i64 %3933, 0
  %3950 = zext i1 %3949 to i8
  store i8 %3950, i8* %30, align 1
  %3951 = lshr i64 %3933, 63
  %3952 = trunc i64 %3951 to i8
  store i8 %3952, i8* %33, align 1
  %3953 = xor i64 %3951, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3954 = xor i64 %3951, %3932
  %3955 = add nuw nsw i64 %3953, %3954
  %3956 = icmp eq i64 %3955, 2
  %3957 = zext i1 %3956 to i8
  store i8 %3957, i8* %39, align 1
  %3958 = add i64 %3931, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %3959 = add i64 %3898, 43
  store i64 %3959, i64* %3, align 8
  %3960 = inttoptr i64 %3958 to i32*
  %3961 = load i32, i32* %3960, align 4
  %3962 = zext i32 %3961 to i64
  store i64 %3962, i64* %RCX.i1339, align 8
  %3963 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %3964 = sub i32 %3961, %3963
  %3965 = icmp ult i32 %3961, %3963
  %3966 = zext i1 %3965 to i8
  store i8 %3966, i8* %14, align 1
  %3967 = and i32 %3964, 255
  %3968 = tail call i32 @llvm.ctpop.i32(i32 %3967)
  %3969 = trunc i32 %3968 to i8
  %3970 = and i8 %3969, 1
  %3971 = xor i8 %3970, 1
  store i8 %3971, i8* %21, align 1
  %3972 = xor i32 %3963, %3961
  %3973 = xor i32 %3972, %3964
  %3974 = lshr i32 %3973, 4
  %3975 = trunc i32 %3974 to i8
  %3976 = and i8 %3975, 1
  store i8 %3976, i8* %27, align 1
  %3977 = icmp eq i32 %3964, 0
  %3978 = zext i1 %3977 to i8
  store i8 %3978, i8* %30, align 1
  %3979 = lshr i32 %3964, 31
  %3980 = trunc i32 %3979 to i8
  store i8 %3980, i8* %33, align 1
  %3981 = lshr i32 %3961, 31
  %3982 = lshr i32 %3963, 31
  %3983 = xor i32 %3982, %3981
  %3984 = xor i32 %3979, %3981
  %3985 = add nuw nsw i32 %3984, %3983
  %3986 = icmp eq i32 %3985, 2
  %3987 = zext i1 %3986 to i8
  store i8 %3987, i8* %39, align 1
  %.v211 = select i1 %3977, i64 138, i64 56
  %3988 = add i64 %3898, %.v211
  store i64 %3988, i64* %3, align 8
  br i1 %3977, label %block_.L_412a19, label %block_41298f.block_.L_4129c7_crit_edge

block_41298f.block_.L_4129c7_crit_edge:           ; preds = %block_41298f
  %.pre153 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4129c7

block_.L_4129c7:                                  ; preds = %block_.L_412975, %block_41298f.block_.L_4129c7_crit_edge
  %3989 = phi i64 [ %3988, %block_41298f.block_.L_4129c7_crit_edge ], [ %3898, %block_.L_412975 ]
  %3990 = phi i64 [ %.pre153, %block_41298f.block_.L_4129c7_crit_edge ], [ %3838, %block_.L_412975 ]
  %3991 = add i64 %3990, -40
  %3992 = add i64 %3989, 3
  store i64 %3992, i64* %3, align 8
  %3993 = inttoptr i64 %3991 to i32*
  %3994 = load i32, i32* %3993, align 4
  %3995 = add i32 %3994, 1
  %3996 = zext i32 %3995 to i64
  store i64 %3996, i64* %RAX.i1164, align 8
  %3997 = icmp eq i32 %3994, -1
  %3998 = icmp eq i32 %3995, 0
  %3999 = or i1 %3997, %3998
  %4000 = zext i1 %3999 to i8
  store i8 %4000, i8* %14, align 1
  %4001 = and i32 %3995, 255
  %4002 = tail call i32 @llvm.ctpop.i32(i32 %4001)
  %4003 = trunc i32 %4002 to i8
  %4004 = and i8 %4003, 1
  %4005 = xor i8 %4004, 1
  store i8 %4005, i8* %21, align 1
  %4006 = xor i32 %3995, %3994
  %4007 = lshr i32 %4006, 4
  %4008 = trunc i32 %4007 to i8
  %4009 = and i8 %4008, 1
  store i8 %4009, i8* %27, align 1
  %4010 = zext i1 %3998 to i8
  store i8 %4010, i8* %30, align 1
  %4011 = lshr i32 %3995, 31
  %4012 = trunc i32 %4011 to i8
  store i8 %4012, i8* %33, align 1
  %4013 = lshr i32 %3994, 31
  %4014 = xor i32 %4011, %4013
  %4015 = add nuw nsw i32 %4014, %4011
  %4016 = icmp eq i32 %4015, 2
  %4017 = zext i1 %4016 to i8
  store i8 %4017, i8* %39, align 1
  %4018 = sext i32 %3995 to i64
  store i64 %4018, i64* %RCX.i1339, align 8
  %4019 = add nsw i64 %4018, 12099168
  %4020 = add i64 %3989, 17
  store i64 %4020, i64* %3, align 8
  %4021 = inttoptr i64 %4019 to i8*
  %4022 = load i8, i8* %4021, align 1
  %4023 = zext i8 %4022 to i64
  store i64 %4023, i64* %RAX.i1164, align 8
  %4024 = zext i8 %4022 to i32
  %4025 = add i64 %3990, -12
  %4026 = add i64 %3989, 20
  store i64 %4026, i64* %3, align 8
  %4027 = inttoptr i64 %4025 to i32*
  %4028 = load i32, i32* %4027, align 4
  %4029 = sub i32 %4024, %4028
  %4030 = icmp ult i32 %4024, %4028
  %4031 = zext i1 %4030 to i8
  store i8 %4031, i8* %14, align 1
  %4032 = and i32 %4029, 255
  %4033 = tail call i32 @llvm.ctpop.i32(i32 %4032)
  %4034 = trunc i32 %4033 to i8
  %4035 = and i8 %4034, 1
  %4036 = xor i8 %4035, 1
  store i8 %4036, i8* %21, align 1
  %4037 = xor i32 %4028, %4024
  %4038 = xor i32 %4037, %4029
  %4039 = lshr i32 %4038, 4
  %4040 = trunc i32 %4039 to i8
  %4041 = and i8 %4040, 1
  store i8 %4041, i8* %27, align 1
  %4042 = icmp eq i32 %4029, 0
  %4043 = zext i1 %4042 to i8
  store i8 %4043, i8* %30, align 1
  %4044 = lshr i32 %4029, 31
  %4045 = trunc i32 %4044 to i8
  store i8 %4045, i8* %33, align 1
  %4046 = lshr i32 %4028, 31
  %4047 = add nuw nsw i32 %4044, %4046
  %4048 = icmp eq i32 %4047, 2
  %4049 = zext i1 %4048 to i8
  store i8 %4049, i8* %39, align 1
  %.v206 = select i1 %4042, i64 26, i64 144
  %4050 = add i64 %3989, %.v206
  store i64 %4050, i64* %3, align 8
  br i1 %4042, label %block_4129e1, label %block_.L_412a57

block_4129e1:                                     ; preds = %block_.L_4129c7
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1164, align 8
  %4051 = add i64 %4050, 13
  store i64 %4051, i64* %3, align 8
  %4052 = load i32, i32* %3993, align 4
  %4053 = add i32 %4052, 1
  %4054 = zext i32 %4053 to i64
  store i64 %4054, i64* %RCX.i1339, align 8
  %4055 = icmp eq i32 %4052, -1
  %4056 = icmp eq i32 %4053, 0
  %4057 = or i1 %4055, %4056
  %4058 = zext i1 %4057 to i8
  store i8 %4058, i8* %14, align 1
  %4059 = and i32 %4053, 255
  %4060 = tail call i32 @llvm.ctpop.i32(i32 %4059)
  %4061 = trunc i32 %4060 to i8
  %4062 = and i8 %4061, 1
  %4063 = xor i8 %4062, 1
  store i8 %4063, i8* %21, align 1
  %4064 = xor i32 %4053, %4052
  %4065 = lshr i32 %4064, 4
  %4066 = trunc i32 %4065 to i8
  %4067 = and i8 %4066, 1
  store i8 %4067, i8* %27, align 1
  %4068 = zext i1 %4056 to i8
  store i8 %4068, i8* %30, align 1
  %4069 = lshr i32 %4053, 31
  %4070 = trunc i32 %4069 to i8
  store i8 %4070, i8* %33, align 1
  %4071 = lshr i32 %4052, 31
  %4072 = xor i32 %4069, %4071
  %4073 = add nuw nsw i32 %4072, %4069
  %4074 = icmp eq i32 %4073, 2
  %4075 = zext i1 %4074 to i8
  store i8 %4075, i8* %39, align 1
  %4076 = sext i32 %4053 to i64
  store i64 %4076, i64* %RDX.i1330, align 8
  %4077 = shl nsw i64 %4076, 2
  %4078 = add nsw i64 %4077, 11187184
  %4079 = add i64 %4050, 27
  store i64 %4079, i64* %3, align 8
  %4080 = inttoptr i64 %4078 to i32*
  %4081 = load i32, i32* %4080, align 4
  %4082 = sext i32 %4081 to i64
  %4083 = mul nsw i64 %4082, 744
  store i64 %4083, i64* %RDX.i1330, align 8
  %4084 = lshr i64 %4083, 63
  %4085 = add i64 %4083, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4085, i64* %RAX.i1164, align 8
  %4086 = icmp ult i64 %4085, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4087 = icmp ult i64 %4085, %4083
  %4088 = or i1 %4086, %4087
  %4089 = zext i1 %4088 to i8
  store i8 %4089, i8* %14, align 1
  %4090 = trunc i64 %4085 to i32
  %4091 = and i32 %4090, 248
  %4092 = tail call i32 @llvm.ctpop.i32(i32 %4091)
  %4093 = trunc i32 %4092 to i8
  %4094 = and i8 %4093, 1
  %4095 = xor i8 %4094, 1
  store i8 %4095, i8* %21, align 1
  %4096 = xor i64 %4083, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4097 = xor i64 %4096, %4085
  %4098 = lshr i64 %4097, 4
  %4099 = trunc i64 %4098 to i8
  %4100 = and i8 %4099, 1
  store i8 %4100, i8* %27, align 1
  %4101 = icmp eq i64 %4085, 0
  %4102 = zext i1 %4101 to i8
  store i8 %4102, i8* %30, align 1
  %4103 = lshr i64 %4085, 63
  %4104 = trunc i64 %4103 to i8
  store i8 %4104, i8* %33, align 1
  %4105 = xor i64 %4103, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4106 = xor i64 %4103, %4084
  %4107 = add nuw nsw i64 %4105, %4106
  %4108 = icmp eq i64 %4107, 2
  %4109 = zext i1 %4108 to i8
  store i8 %4109, i8* %39, align 1
  %4110 = add i64 %4083, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %4111 = add i64 %4050, 43
  store i64 %4111, i64* %3, align 8
  %4112 = inttoptr i64 %4110 to i32*
  %4113 = load i32, i32* %4112, align 4
  %4114 = zext i32 %4113 to i64
  store i64 %4114, i64* %RCX.i1339, align 8
  %4115 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %4116 = sub i32 %4113, %4115
  %4117 = icmp ult i32 %4113, %4115
  %4118 = zext i1 %4117 to i8
  store i8 %4118, i8* %14, align 1
  %4119 = and i32 %4116, 255
  %4120 = tail call i32 @llvm.ctpop.i32(i32 %4119)
  %4121 = trunc i32 %4120 to i8
  %4122 = and i8 %4121, 1
  %4123 = xor i8 %4122, 1
  store i8 %4123, i8* %21, align 1
  %4124 = xor i32 %4115, %4113
  %4125 = xor i32 %4124, %4116
  %4126 = lshr i32 %4125, 4
  %4127 = trunc i32 %4126 to i8
  %4128 = and i8 %4127, 1
  store i8 %4128, i8* %27, align 1
  %4129 = icmp eq i32 %4116, 0
  %4130 = zext i1 %4129 to i8
  store i8 %4130, i8* %30, align 1
  %4131 = lshr i32 %4116, 31
  %4132 = trunc i32 %4131 to i8
  store i8 %4132, i8* %33, align 1
  %4133 = lshr i32 %4113, 31
  %4134 = lshr i32 %4115, 31
  %4135 = xor i32 %4134, %4133
  %4136 = xor i32 %4131, %4133
  %4137 = add nuw nsw i32 %4136, %4135
  %4138 = icmp eq i32 %4137, 2
  %4139 = zext i1 %4138 to i8
  store i8 %4139, i8* %39, align 1
  %.v208 = select i1 %4129, i64 56, i64 118
  %4140 = add i64 %4050, %.v208
  store i64 %4140, i64* %3, align 8
  br i1 %4129, label %block_.L_412a19, label %block_4129e1.block_.L_412a57_crit_edge

block_4129e1.block_.L_412a57_crit_edge:           ; preds = %block_4129e1
  %.pre156 = load i64, i64* %RBP.i, align 8
  br label %block_.L_412a57

block_.L_412a19:                                  ; preds = %block_4129e1, %block_41298f, %block_41293d, %block_4128eb
  %4141 = phi i64 [ %4140, %block_4129e1 ], [ %3988, %block_41298f ], [ %3836, %block_41293d ], [ %3686, %block_4128eb ]
  %4142 = load i64, i64* %RBP.i, align 8
  %4143 = add i64 %4142, -24
  %4144 = add i64 %4141, 5
  store i64 %4144, i64* %3, align 8
  %4145 = inttoptr i64 %4143 to i64*
  %4146 = load i64, i64* %4145, align 8
  store i8 0, i8* %14, align 1
  %4147 = trunc i64 %4146 to i32
  %4148 = and i32 %4147, 255
  %4149 = tail call i32 @llvm.ctpop.i32(i32 %4148)
  %4150 = trunc i32 %4149 to i8
  %4151 = and i8 %4150, 1
  %4152 = xor i8 %4151, 1
  store i8 %4152, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4153 = icmp eq i64 %4146, 0
  %4154 = zext i1 %4153 to i8
  store i8 %4154, i8* %30, align 1
  %4155 = lshr i64 %4146, 63
  %4156 = trunc i64 %4155 to i8
  store i8 %4156, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v209 = select i1 %4153, i64 25, i64 11
  %4157 = add i64 %4141, %.v209
  store i64 %4157, i64* %3, align 8
  br i1 %4153, label %block_.L_412a32, label %block_412a24

block_412a24:                                     ; preds = %block_.L_412a19
  %4158 = add i64 %4142, -40
  %4159 = add i64 %4157, 3
  store i64 %4159, i64* %3, align 8
  %4160 = inttoptr i64 %4158 to i32*
  %4161 = load i32, i32* %4160, align 4
  %4162 = zext i32 %4161 to i64
  store i64 %4162, i64* %RAX.i1164, align 8
  %4163 = add i64 %4157, 7
  store i64 %4163, i64* %3, align 8
  %4164 = load i64, i64* %4145, align 8
  store i64 %4164, i64* %RCX.i1339, align 8
  %4165 = add i64 %4142, -36
  %4166 = add i64 %4157, 11
  store i64 %4166, i64* %3, align 8
  %4167 = inttoptr i64 %4165 to i32*
  %4168 = load i32, i32* %4167, align 4
  %4169 = sext i32 %4168 to i64
  store i64 %4169, i64* %RDX.i1330, align 8
  %4170 = shl nsw i64 %4169, 2
  %4171 = add i64 %4170, %4164
  %4172 = add i64 %4157, 14
  store i64 %4172, i64* %3, align 8
  %4173 = inttoptr i64 %4171 to i32*
  store i32 %4161, i32* %4173, align 4
  %.pre154 = load i64, i64* %RBP.i, align 8
  %.pre155 = load i64, i64* %3, align 8
  br label %block_.L_412a32

block_.L_412a32:                                  ; preds = %block_412a24, %block_.L_412a19
  %4174 = phi i64 [ %.pre155, %block_412a24 ], [ %4157, %block_.L_412a19 ]
  %4175 = phi i64 [ %.pre154, %block_412a24 ], [ %4142, %block_.L_412a19 ]
  %4176 = add i64 %4175, -36
  %4177 = add i64 %4174, 3
  store i64 %4177, i64* %3, align 8
  %4178 = inttoptr i64 %4176 to i32*
  %4179 = load i32, i32* %4178, align 4
  %4180 = add i32 %4179, 1
  %4181 = zext i32 %4180 to i64
  store i64 %4181, i64* %RAX.i1164, align 8
  %4182 = icmp eq i32 %4179, -1
  %4183 = icmp eq i32 %4180, 0
  %4184 = or i1 %4182, %4183
  %4185 = zext i1 %4184 to i8
  store i8 %4185, i8* %14, align 1
  %4186 = and i32 %4180, 255
  %4187 = tail call i32 @llvm.ctpop.i32(i32 %4186)
  %4188 = trunc i32 %4187 to i8
  %4189 = and i8 %4188, 1
  %4190 = xor i8 %4189, 1
  store i8 %4190, i8* %21, align 1
  %4191 = xor i32 %4180, %4179
  %4192 = lshr i32 %4191, 4
  %4193 = trunc i32 %4192 to i8
  %4194 = and i8 %4193, 1
  store i8 %4194, i8* %27, align 1
  %4195 = zext i1 %4183 to i8
  store i8 %4195, i8* %30, align 1
  %4196 = lshr i32 %4180, 31
  %4197 = trunc i32 %4196 to i8
  store i8 %4197, i8* %33, align 1
  %4198 = lshr i32 %4179, 31
  %4199 = xor i32 %4196, %4198
  %4200 = add nuw nsw i32 %4199, %4196
  %4201 = icmp eq i32 %4200, 2
  %4202 = zext i1 %4201 to i8
  store i8 %4202, i8* %39, align 1
  %4203 = add i64 %4174, 9
  store i64 %4203, i64* %3, align 8
  store i32 %4180, i32* %4178, align 4
  %4204 = load i64, i64* %RBP.i, align 8
  %4205 = add i64 %4204, -36
  %4206 = load i64, i64* %3, align 8
  %4207 = add i64 %4206, 3
  store i64 %4207, i64* %3, align 8
  %4208 = inttoptr i64 %4205 to i32*
  %4209 = load i32, i32* %4208, align 4
  %4210 = zext i32 %4209 to i64
  store i64 %4210, i64* %RAX.i1164, align 8
  %4211 = add i64 %4204, -16
  %4212 = add i64 %4206, 6
  store i64 %4212, i64* %3, align 8
  %4213 = inttoptr i64 %4211 to i32*
  %4214 = load i32, i32* %4213, align 4
  %4215 = sub i32 %4209, %4214
  %4216 = icmp ult i32 %4209, %4214
  %4217 = zext i1 %4216 to i8
  store i8 %4217, i8* %14, align 1
  %4218 = and i32 %4215, 255
  %4219 = tail call i32 @llvm.ctpop.i32(i32 %4218)
  %4220 = trunc i32 %4219 to i8
  %4221 = and i8 %4220, 1
  %4222 = xor i8 %4221, 1
  store i8 %4222, i8* %21, align 1
  %4223 = xor i32 %4214, %4209
  %4224 = xor i32 %4223, %4215
  %4225 = lshr i32 %4224, 4
  %4226 = trunc i32 %4225 to i8
  %4227 = and i8 %4226, 1
  store i8 %4227, i8* %27, align 1
  %4228 = icmp eq i32 %4215, 0
  %4229 = zext i1 %4228 to i8
  store i8 %4229, i8* %30, align 1
  %4230 = lshr i32 %4215, 31
  %4231 = trunc i32 %4230 to i8
  store i8 %4231, i8* %33, align 1
  %4232 = lshr i32 %4209, 31
  %4233 = lshr i32 %4214, 31
  %4234 = xor i32 %4233, %4232
  %4235 = xor i32 %4230, %4232
  %4236 = add nuw nsw i32 %4235, %4234
  %4237 = icmp eq i32 %4236, 2
  %4238 = zext i1 %4237 to i8
  store i8 %4238, i8* %39, align 1
  %4239 = icmp ne i8 %4231, 0
  %4240 = xor i1 %4239, %4237
  %.v210 = select i1 %4240, i64 23, i64 12
  %4241 = add i64 %4206, %.v210
  store i64 %4241, i64* %3, align 8
  br i1 %4240, label %block_.L_412a52, label %block_412a47

block_412a47:                                     ; preds = %block_.L_412a32
  %4242 = add i64 %4241, 3
  store i64 %4242, i64* %3, align 8
  %4243 = load i32, i32* %4208, align 4
  %4244 = zext i32 %4243 to i64
  store i64 %4244, i64* %RAX.i1164, align 8
  %4245 = add i64 %4204, -4
  %4246 = add i64 %4241, 6
  store i64 %4246, i64* %3, align 8
  %4247 = inttoptr i64 %4245 to i32*
  store i32 %4243, i32* %4247, align 4
  %4248 = load i64, i64* %3, align 8
  %4249 = add i64 %4248, 71
  store i64 %4249, i64* %3, align 8
  br label %block_.L_412a94

block_.L_412a52:                                  ; preds = %block_.L_412a32
  %4250 = add i64 %4241, 5
  store i64 %4250, i64* %3, align 8
  br label %block_.L_412a57

block_.L_412a57:                                  ; preds = %block_.L_4129c7, %block_4129e1.block_.L_412a57_crit_edge, %block_.L_412a52
  %4251 = phi i64 [ %4140, %block_4129e1.block_.L_412a57_crit_edge ], [ %4250, %block_.L_412a52 ], [ %4050, %block_.L_4129c7 ]
  %4252 = phi i64 [ %.pre156, %block_4129e1.block_.L_412a57_crit_edge ], [ %4204, %block_.L_412a52 ], [ %3990, %block_.L_4129c7 ]
  %4253 = add i64 %4252, -40
  %4254 = add i64 %4251, 4
  store i64 %4254, i64* %3, align 8
  %4255 = inttoptr i64 %4253 to i32*
  %4256 = load i32, i32* %4255, align 4
  %4257 = sext i32 %4256 to i64
  store i64 %4257, i64* %RAX.i1164, align 8
  %4258 = shl nsw i64 %4257, 2
  %4259 = add nsw i64 %4258, 11188784
  %4260 = add i64 %4251, 11
  store i64 %4260, i64* %3, align 8
  %4261 = inttoptr i64 %4259 to i32*
  %4262 = load i32, i32* %4261, align 4
  %4263 = zext i32 %4262 to i64
  store i64 %4263, i64* %RCX.i1339, align 8
  %4264 = add i64 %4251, 14
  store i64 %4264, i64* %3, align 8
  store i32 %4262, i32* %4255, align 4
  %4265 = load i64, i64* %RBP.i, align 8
  %4266 = add i64 %4265, -40
  %4267 = load i64, i64* %3, align 8
  %4268 = add i64 %4267, 3
  store i64 %4268, i64* %3, align 8
  %4269 = inttoptr i64 %4266 to i32*
  %4270 = load i32, i32* %4269, align 4
  %4271 = zext i32 %4270 to i64
  store i64 %4271, i64* %RAX.i1164, align 8
  %4272 = add i64 %4265, -28
  %4273 = add i64 %4267, 7
  store i64 %4273, i64* %3, align 8
  %4274 = inttoptr i64 %4272 to i32*
  %4275 = load i32, i32* %4274, align 4
  %4276 = sext i32 %4275 to i64
  store i64 %4276, i64* %RCX.i1339, align 8
  %4277 = shl nsw i64 %4276, 2
  %4278 = add nsw i64 %4277, -64
  %4279 = add i64 %4278, %4265
  %4280 = add i64 %4267, 11
  store i64 %4280, i64* %3, align 8
  %4281 = inttoptr i64 %4279 to i32*
  %4282 = load i32, i32* %4281, align 4
  %4283 = sub i32 %4270, %4282
  %4284 = icmp ult i32 %4270, %4282
  %4285 = zext i1 %4284 to i8
  store i8 %4285, i8* %14, align 1
  %4286 = and i32 %4283, 255
  %4287 = tail call i32 @llvm.ctpop.i32(i32 %4286)
  %4288 = trunc i32 %4287 to i8
  %4289 = and i8 %4288, 1
  %4290 = xor i8 %4289, 1
  store i8 %4290, i8* %21, align 1
  %4291 = xor i32 %4282, %4270
  %4292 = xor i32 %4291, %4283
  %4293 = lshr i32 %4292, 4
  %4294 = trunc i32 %4293 to i8
  %4295 = and i8 %4294, 1
  store i8 %4295, i8* %27, align 1
  %4296 = icmp eq i32 %4283, 0
  %4297 = zext i1 %4296 to i8
  store i8 %4297, i8* %30, align 1
  %4298 = lshr i32 %4283, 31
  %4299 = trunc i32 %4298 to i8
  store i8 %4299, i8* %33, align 1
  %4300 = lshr i32 %4270, 31
  %4301 = lshr i32 %4282, 31
  %4302 = xor i32 %4301, %4300
  %4303 = xor i32 %4298, %4300
  %4304 = add nuw nsw i32 %4303, %4302
  %4305 = icmp eq i32 %4304, 2
  %4306 = zext i1 %4305 to i8
  store i8 %4306, i8* %39, align 1
  %.v207 = select i1 %4296, i64 17, i64 -404
  %4307 = add i64 %4267, %.v207
  store i64 %4307, i64* %3, align 8
  br i1 %4296, label %block_412a76, label %block_.L_4128d1

block_412a76:                                     ; preds = %block_.L_412a57
  %4308 = add i64 %4307, 5
  store i64 %4308, i64* %3, align 8
  br label %block_.L_412a7b

block_.L_412a7b:                                  ; preds = %block_.L_4128c0, %block_412a76
  %4309 = phi i64 [ %4265, %block_412a76 ], [ %3386, %block_.L_4128c0 ]
  %4310 = phi i64 [ %4308, %block_412a76 ], [ %3533, %block_.L_4128c0 ]
  %4311 = add i64 %4309, -28
  %4312 = add i64 %4310, 8
  store i64 %4312, i64* %3, align 8
  %4313 = inttoptr i64 %4311 to i32*
  %4314 = load i32, i32* %4313, align 4
  %4315 = add i32 %4314, 1
  %4316 = zext i32 %4315 to i64
  store i64 %4316, i64* %RAX.i1164, align 8
  %4317 = icmp eq i32 %4314, -1
  %4318 = icmp eq i32 %4315, 0
  %4319 = or i1 %4317, %4318
  %4320 = zext i1 %4319 to i8
  store i8 %4320, i8* %14, align 1
  %4321 = and i32 %4315, 255
  %4322 = tail call i32 @llvm.ctpop.i32(i32 %4321)
  %4323 = trunc i32 %4322 to i8
  %4324 = and i8 %4323, 1
  %4325 = xor i8 %4324, 1
  store i8 %4325, i8* %21, align 1
  %4326 = xor i32 %4315, %4314
  %4327 = lshr i32 %4326, 4
  %4328 = trunc i32 %4327 to i8
  %4329 = and i8 %4328, 1
  store i8 %4329, i8* %27, align 1
  %4330 = zext i1 %4318 to i8
  store i8 %4330, i8* %30, align 1
  %4331 = lshr i32 %4315, 31
  %4332 = trunc i32 %4331 to i8
  store i8 %4332, i8* %33, align 1
  %4333 = lshr i32 %4314, 31
  %4334 = xor i32 %4331, %4333
  %4335 = add nuw nsw i32 %4334, %4331
  %4336 = icmp eq i32 %4335, 2
  %4337 = zext i1 %4336 to i8
  store i8 %4337, i8* %39, align 1
  %4338 = add i64 %4310, 14
  store i64 %4338, i64* %3, align 8
  store i32 %4315, i32* %4313, align 4
  %4339 = load i64, i64* %3, align 8
  %4340 = add i64 %4339, -946
  store i64 %4340, i64* %3, align 8
  br label %block_.L_4126d7

block_.L_412a8e:                                  ; preds = %block_.L_4126d7
  %4341 = add i64 %2614, -36
  %4342 = add i64 %2650, 3
  store i64 %4342, i64* %3, align 8
  %4343 = inttoptr i64 %4341 to i32*
  %4344 = load i32, i32* %4343, align 4
  %4345 = zext i32 %4344 to i64
  store i64 %4345, i64* %RAX.i1164, align 8
  %4346 = add i64 %2614, -4
  %4347 = add i64 %2650, 6
  store i64 %4347, i64* %3, align 8
  %4348 = inttoptr i64 %4346 to i32*
  store i32 %4344, i32* %4348, align 4
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_412a94

block_.L_412a94:                                  ; preds = %block_.L_412a8e, %block_412a47, %block_412864, %block_4125e5, %block_41255b, %block_4124d1, %block_412447, %block_4123a4, %block_41227d, %block_4121bc
  %4349 = phi i64 [ %.pre180, %block_.L_412a8e ], [ %4249, %block_412a47 ], [ %3378, %block_412864 ], [ %1236, %block_4123a4 ], [ %2298, %block_4125e5 ], [ %2036, %block_41255b ], [ %1775, %block_4124d1 ], [ %1516, %block_412447 ], [ %792, %block_41227d ], [ %516, %block_4121bc ]
  %MEMORY.42 = phi %struct.Memory* [ %MEMORY.3, %block_.L_412a8e ], [ %MEMORY.3, %block_412a47 ], [ %MEMORY.3, %block_412864 ], [ %MEMORY.3, %block_4123a4 ], [ %MEMORY.3, %block_4125e5 ], [ %MEMORY.3, %block_41255b ], [ %MEMORY.3, %block_4124d1 ], [ %MEMORY.3, %block_412447 ], [ %MEMORY.3, %block_41227d ], [ %call2_4121aa, %block_4121bc ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4350 = load i64, i64* %RBP.i, align 8
  %4351 = add i64 %4350, -4
  %4352 = add i64 %4349, 3
  store i64 %4352, i64* %3, align 8
  %4353 = inttoptr i64 %4351 to i32*
  %4354 = load i32, i32* %4353, align 4
  %4355 = zext i32 %4354 to i64
  store i64 %4355, i64* %RAX.i, align 8
  %4356 = load i64, i64* %6, align 8
  %4357 = add i64 %4356, 144
  store i64 %4357, i64* %6, align 8
  %4358 = icmp ugt i64 %4356, -145
  %4359 = zext i1 %4358 to i8
  store i8 %4359, i8* %14, align 1
  %4360 = trunc i64 %4357 to i32
  %4361 = and i32 %4360, 255
  %4362 = tail call i32 @llvm.ctpop.i32(i32 %4361)
  %4363 = trunc i32 %4362 to i8
  %4364 = and i8 %4363, 1
  %4365 = xor i8 %4364, 1
  store i8 %4365, i8* %21, align 1
  %4366 = xor i64 %4356, 16
  %4367 = xor i64 %4366, %4357
  %4368 = lshr i64 %4367, 4
  %4369 = trunc i64 %4368 to i8
  %4370 = and i8 %4369, 1
  store i8 %4370, i8* %27, align 1
  %4371 = icmp eq i64 %4357, 0
  %4372 = zext i1 %4371 to i8
  store i8 %4372, i8* %30, align 1
  %4373 = lshr i64 %4357, 63
  %4374 = trunc i64 %4373 to i8
  store i8 %4374, i8* %33, align 1
  %4375 = lshr i64 %4356, 63
  %4376 = xor i64 %4373, %4375
  %4377 = add nuw nsw i64 %4376, %4373
  %4378 = icmp eq i64 %4377, 2
  %4379 = zext i1 %4378 to i8
  store i8 %4379, i8* %39, align 1
  %4380 = add i64 %4349, 11
  store i64 %4380, i64* %3, align 8
  %4381 = add i64 %4356, 152
  %4382 = inttoptr i64 %4357 to i64*
  %4383 = load i64, i64* %4382, align 8
  store i64 %4383, i64* %RBP.i, align 8
  store i64 %4381, i64* %6, align 8
  %4384 = add i64 %4349, 12
  store i64 %4384, i64* %3, align 8
  %4385 = inttoptr i64 %4381 to i64*
  %4386 = load i64, i64* %4385, align 8
  store i64 %4386, i64* %3, align 8
  %4387 = add i64 %4356, 160
  store i64 %4387, i64* %6, align 8
  ret %struct.Memory* %MEMORY.42
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
define %struct.Memory* @routine_subq__0x90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -144
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 144
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
define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_jne_.L_4120c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_412119(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x6d1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1745, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_je_.L_41212d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_412132(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_412197(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6d2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1746, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movq_MINUS0x80__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x84__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
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
define %struct.Memory* @routine_movl_MINUS0x88__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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
define %struct.Memory* @routine_jne_.L_4121cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jl_.L_4121c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jmpq_.L_412a94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4121cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x99da08___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
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
define %struct.Memory* @routine_movl__eax__0x99da08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jge_.L_4126d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
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
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_jne_.L_41229f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_je_.L_41229f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_412268(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jl_.L_412288(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4126bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_412658(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 740
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_412658(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_jle_.L_412323(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x13__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -19
  %10 = icmp ult i32 %8, 19
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
define %struct.Memory* @routine_jg_.L_4123d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jge_.L_4123d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jne_.L_4123c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4123c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41238f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jl_.L_4123af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4123c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41232a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_412626(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_jne_.L_412469(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_412469(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_412432(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_412452(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4124f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4124f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4124bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_4124dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41257d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41257d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_412546(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_412566(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_412607(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_412607(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4125d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_4125f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl_0xaaba30___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11188784
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
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
define %struct.Memory* @routine_jne_.L_4123df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 740
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4126b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jne_.L_4126b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4126c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_412207(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
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
define %struct.Memory* @routine_jge_.L_412a8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -64
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_412740(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 740
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_412874(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_412792(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4127e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_412836(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41284f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_41286f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_412874(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_jge_.L_4128c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movslq_MINUS0x40__rbp__rax_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -64
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xaab3f0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
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
define %struct.Memory* @routine_cmpl_0xaab3f0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 11187184
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %4, %11
  %13 = icmp ult i32 %4, %11
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, %4
  %23 = xor i32 %22, %12
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %4, 31
  %35 = lshr i32 %11, 31
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
define %struct.Memory* @routine_jne_.L_4128ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4128c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4128b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41287b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_412a7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4128d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_412923(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_412a19(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_412975(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4129c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_412a57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_412a32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_412a52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_412a57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x40__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %8 = add i64 %5, -64
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
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
define %struct.Memory* @routine_jne_.L_4128d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_412a7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_412a80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4126d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 144
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -145
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
