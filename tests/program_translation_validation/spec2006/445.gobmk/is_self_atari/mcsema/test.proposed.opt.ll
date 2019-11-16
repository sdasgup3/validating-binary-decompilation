; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99da08_type = type <{ [4 x i8] }>
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57a49b_type = type <{ [8 x i8] }>
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
@G_0x99da08 = local_unnamed_addr global %G_0x99da08_type zeroinitializer
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57a49b = global %G__0x57a49b_type zeroinitializer
@G__0x57a4be = global %G__0x57a4be_type zeroinitializer
@G__0x57a4f4 = global %G__0x57a4f4_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_412080.accuratelib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @is_self_atari(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -104
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 96
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
  %RAX.i865 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 3, i64* %RAX.i865, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -16
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 15
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
  %52 = load i64, i64* %RAX.i865, align 8
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -12
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %3, align 8
  %57 = trunc i64 %52 to i32
  %58 = inttoptr i64 %54 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = sub i32 %57, %59
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %RAX.i865, align 8
  %62 = icmp ult i32 %57, %59
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %14, align 1
  %64 = and i32 %60, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64)
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %21, align 1
  %69 = xor i32 %59, %57
  %70 = xor i32 %69, %60
  %71 = lshr i32 %70, 4
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  store i8 %73, i8* %26, align 1
  %74 = icmp eq i32 %60, 0
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %29, align 1
  %76 = lshr i32 %60, 31
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %32, align 1
  %78 = lshr i32 %57, 31
  %79 = lshr i32 %59, 31
  %80 = xor i32 %79, %78
  %81 = xor i32 %76, %78
  %82 = add nuw nsw i32 %81, %80
  %83 = icmp eq i32 %82, 2
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %38, align 1
  %EAX.i1002 = bitcast %union.anon* %39 to i32*
  %85 = add i64 %53, -16
  %86 = add i64 %55, 6
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %85 to i32*
  store i32 %60, i32* %87, align 4
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -20
  %90 = load i64, i64* %3, align 8
  %91 = add i64 %90, 7
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %89 to i32*
  store i32 0, i32* %92, align 4
  %93 = load i64, i64* %RBP.i, align 8
  %94 = add i64 %93, -24
  %95 = load i64, i64* %3, align 8
  %96 = add i64 %95, 7
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %94 to i32*
  store i32 0, i32* %97, align 4
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -28
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 7
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %99 to i32*
  store i32 0, i32* %102, align 4
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -8
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 7
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %104 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %108, -421
  %110 = icmp ult i32 %108, 421
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %14, align 1
  %112 = and i32 %109, 255
  %113 = tail call i32 @llvm.ctpop.i32(i32 %112)
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %21, align 1
  %117 = xor i32 %109, %108
  %118 = lshr i32 %117, 4
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  store i8 %120, i8* %26, align 1
  %121 = icmp eq i32 %109, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %29, align 1
  %123 = lshr i32 %109, 31
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %32, align 1
  %125 = lshr i32 %108, 31
  %126 = xor i32 %123, %125
  %127 = add nuw nsw i32 %126, %125
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %38, align 1
  %.v = select i1 %110, i64 13, i64 39
  %130 = add i64 %105, %.v
  store i64 %130, i64* %3, align 8
  br i1 %110, label %block_4142db, label %entry.block_.L_4142f5_crit_edge

entry.block_.L_4142f5_crit_edge:                  ; preds = %entry
  %.pre74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %.pre76 = getelementptr inbounds %union.anon, %union.anon* %.pre74, i64 0, i32 0
  %.pre77 = bitcast %union.anon* %.pre74 to i32*
  br label %block_.L_4142f5

block_4142db:                                     ; preds = %entry
  %131 = add i64 %130, 4
  store i64 %131, i64* %3, align 8
  %132 = load i32, i32* %107, align 4
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %RAX.i865, align 8
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i988 = getelementptr inbounds %union.anon, %union.anon* %134, i64 0, i32 0
  %135 = add nsw i64 %133, 12099168
  %136 = add i64 %130, 12
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i8*
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i64
  store i64 %139, i64* %RCX.i988, align 8
  %ECX.i985 = bitcast %union.anon* %134 to i32*
  %140 = zext i8 %138 to i32
  %141 = add nsw i32 %140, -3
  %142 = icmp ult i8 %138, 3
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %14, align 1
  %144 = and i32 %141, 255
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144)
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %21, align 1
  %149 = xor i32 %141, %140
  %150 = lshr i32 %149, 4
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  store i8 %152, i8* %26, align 1
  %153 = icmp eq i32 %141, 0
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %29, align 1
  %155 = lshr i32 %141, 31
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v114 = select i1 %153, i64 26, i64 21
  %157 = add i64 %130, %.v114
  store i64 %157, i64* %3, align 8
  br i1 %153, label %block_.L_4142f5, label %block_4142f0

block_4142f0:                                     ; preds = %block_4142db
  %158 = add i64 %157, 94
  store i64 %158, i64* %3, align 8
  br label %block_.L_41434e

block_.L_4142f5:                                  ; preds = %entry.block_.L_4142f5_crit_edge, %block_4142db
  %ECX.i966.pre-phi = phi i32* [ %.pre77, %entry.block_.L_4142f5_crit_edge ], [ %ECX.i985, %block_4142db ]
  %RCX.i972.pre-phi = phi i64* [ %.pre76, %entry.block_.L_4142f5_crit_edge ], [ %RCX.i988, %block_4142db ]
  %159 = phi i64 [ %130, %entry.block_.L_4142f5_crit_edge ], [ %157, %block_4142db ]
  %RDI.i981 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i981, align 8
  %RSI.i979 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 2294, i64* %RSI.i979, align 8
  %RDX.i977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a49b_type* @G__0x57a49b to i64), i64* %RDX.i977, align 8
  store i64 20, i64* %RAX.i865, align 8
  %160 = add i64 %159, 33
  store i64 %160, i64* %3, align 8
  %161 = load i32, i32* %107, align 4
  %162 = zext i32 %161 to i64
  store i64 %162, i64* %RCX.i972.pre-phi, align 8
  %163 = add i64 %103, -32
  %164 = add i64 %159, 36
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i32*
  store i32 20, i32* %165, align 4
  %166 = load i32, i32* %ECX.i966.pre-phi, align 4
  %167 = zext i32 %166 to i64
  %168 = load i64, i64* %3, align 8
  store i64 %167, i64* %RAX.i865, align 8
  %169 = load i64, i64* %RBP.i, align 8
  %170 = add i64 %169, -40
  %171 = load i64, i64* %RDX.i977, align 8
  %172 = add i64 %168, 6
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %170 to i64*
  store i64 %171, i64* %173, align 8
  %174 = load i64, i64* %3, align 8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %176 = load i32, i32* %EAX.i1002, align 8
  %177 = sext i32 %176 to i64
  %178 = lshr i64 %177, 32
  store i64 %178, i64* %175, align 8
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -32
  %181 = add i64 %174, 4
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RCX.i972.pre-phi, align 8
  %185 = add i64 %174, 6
  store i64 %185, i64* %3, align 8
  %186 = zext i32 %176 to i64
  %187 = sext i32 %183 to i64
  %188 = shl nuw i64 %178, 32
  %189 = or i64 %188, %186
  %190 = sdiv i64 %189, %187
  %191 = shl i64 %190, 32
  %192 = ashr exact i64 %191, 32
  %193 = icmp eq i64 %190, %192
  br i1 %193, label %196, label %194

; <label>:194:                                    ; preds = %block_.L_4142f5
  %195 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %185, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i865, align 8
  %.pre44 = load i64, i64* %3, align 8
  %.pre45 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit954

; <label>:196:                                    ; preds = %block_.L_4142f5
  %197 = srem i64 %189, %187
  %198 = and i64 %190, 4294967295
  store i64 %198, i64* %RAX.i865, align 8
  %199 = and i64 %197, 4294967295
  store i64 %199, i64* %RDX.i977, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit954

routine_idivl__ecx.exit954:                       ; preds = %196, %194
  %200 = phi i64 [ %.pre45, %194 ], [ %179, %196 ]
  %201 = phi i64 [ %.pre44, %194 ], [ %185, %196 ]
  %202 = phi i64 [ %.pre, %194 ], [ %198, %196 ]
  %203 = phi %struct.Memory* [ %195, %194 ], [ %2, %196 ]
  %204 = trunc i64 %202 to i32
  %205 = add i32 %204, -1
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RAX.i865, align 8
  %207 = icmp eq i32 %204, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %14, align 1
  %209 = and i32 %205, 255
  %210 = tail call i32 @llvm.ctpop.i32(i32 %209)
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  store i8 %213, i8* %21, align 1
  %214 = xor i32 %205, %204
  %215 = lshr i32 %214, 4
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  store i8 %217, i8* %26, align 1
  %218 = icmp eq i32 %205, 0
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %29, align 1
  %220 = lshr i32 %205, 31
  %221 = trunc i32 %220 to i8
  store i8 %221, i8* %32, align 1
  %222 = lshr i32 %204, 31
  %223 = xor i32 %220, %222
  %224 = add nuw nsw i32 %223, %222
  %225 = icmp eq i32 %224, 2
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %38, align 1
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i948 = bitcast %union.anon* %227 to i32*
  %228 = getelementptr inbounds %union.anon, %union.anon* %227, i64 0, i32 0
  %229 = add i64 %200, -8
  %230 = add i64 %201, 7
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %229 to i32*
  %232 = load i32, i32* %231, align 4
  %233 = zext i32 %232 to i64
  store i64 %233, i64* %228, align 8
  %234 = add i64 %200, -44
  %235 = add i64 %201, 10
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i32*
  store i32 %205, i32* %236, align 4
  %237 = load i32, i32* %R8D.i948, align 4
  %238 = zext i32 %237 to i64
  %239 = load i64, i64* %3, align 8
  store i64 %238, i64* %RAX.i865, align 8
  %240 = sext i32 %237 to i64
  %241 = lshr i64 %240, 32
  store i64 %241, i64* %175, align 8
  %242 = load i32, i32* %ECX.i966.pre-phi, align 4
  %243 = add i64 %239, 6
  store i64 %243, i64* %3, align 8
  %244 = sext i32 %242 to i64
  %245 = shl nuw i64 %241, 32
  %246 = or i64 %245, %238
  %247 = sdiv i64 %246, %244
  %248 = shl i64 %247, 32
  %249 = ashr exact i64 %248, 32
  %250 = icmp eq i64 %247, %249
  br i1 %250, label %253, label %251

; <label>:251:                                    ; preds = %routine_idivl__ecx.exit954
  %252 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %243, %struct.Memory* %203)
  %.pre46 = load i64, i64* %RDX.i977, align 8
  %.pre47 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit937

; <label>:253:                                    ; preds = %routine_idivl__ecx.exit954
  %254 = srem i64 %246, %244
  %255 = and i64 %247, 4294967295
  store i64 %255, i64* %RAX.i865, align 8
  %256 = and i64 %254, 4294967295
  store i64 %256, i64* %RDX.i977, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit937

routine_idivl__ecx.exit937:                       ; preds = %253, %251
  %257 = phi i64 [ %.pre47, %251 ], [ %243, %253 ]
  %258 = phi i64 [ %.pre46, %251 ], [ %256, %253 ]
  %259 = phi %struct.Memory* [ %252, %251 ], [ %203, %253 ]
  %260 = trunc i64 %258 to i32
  %261 = add i32 %260, -1
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %RDX.i977, align 8
  %263 = icmp eq i32 %260, 0
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %14, align 1
  %265 = and i32 %261, 255
  %266 = tail call i32 @llvm.ctpop.i32(i32 %265)
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %21, align 1
  %270 = xor i32 %261, %260
  %271 = lshr i32 %270, 4
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  store i8 %273, i8* %26, align 1
  %274 = icmp eq i32 %261, 0
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %29, align 1
  %276 = lshr i32 %261, 31
  %277 = trunc i32 %276 to i8
  store i8 %277, i8* %32, align 1
  %278 = lshr i32 %260, 31
  %279 = xor i32 %276, %278
  %280 = add nuw nsw i32 %279, %278
  %281 = icmp eq i32 %280, 2
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %38, align 1
  %R9.i932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -40
  %285 = add i64 %257, 7
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %R9.i932, align 8
  %288 = add i64 %283, -48
  %289 = add i64 %257, 10
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  store i32 %261, i32* %290, align 4
  %291 = load i64, i64* %R9.i932, align 8
  %292 = load i64, i64* %3, align 8
  store i64 %291, i64* %RDX.i977, align 8
  %293 = load i64, i64* %RBP.i, align 8
  %294 = add i64 %293, -44
  %295 = add i64 %292, 6
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i32*
  %297 = load i32, i32* %296, align 4
  %298 = zext i32 %297 to i64
  store i64 %298, i64* %RCX.i972.pre-phi, align 8
  %299 = add i64 %293, -48
  %300 = add i64 %292, 10
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %299 to i32*
  %302 = load i32, i32* %301, align 4
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %228, align 8
  %304 = add i64 %292, 253265
  %305 = add i64 %292, 15
  %306 = load i64, i64* %6, align 8
  %307 = add i64 %306, -8
  %308 = inttoptr i64 %307 to i64*
  store i64 %305, i64* %308, align 8
  store i64 %307, i64* %6, align 8
  store i64 %304, i64* %3, align 8
  %call2_414349 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %304, %struct.Memory* %259)
  %.pre48 = load i64, i64* %RBP.i, align 8
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_41434e

block_.L_41434e:                                  ; preds = %routine_idivl__ecx.exit937, %block_4142f0
  %ECX.i910.pre-phi = phi i32* [ %ECX.i966.pre-phi, %routine_idivl__ecx.exit937 ], [ %ECX.i985, %block_4142f0 ]
  %RCX.i913.pre-phi = phi i64* [ %RCX.i972.pre-phi, %routine_idivl__ecx.exit937 ], [ %RCX.i988, %block_4142f0 ]
  %309 = phi i64 [ %.pre49, %routine_idivl__ecx.exit937 ], [ %158, %block_4142f0 ]
  %310 = phi i64 [ %.pre48, %routine_idivl__ecx.exit937 ], [ %103, %block_4142f0 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_414349, %routine_idivl__ecx.exit937 ], [ %2, %block_4142f0 ]
  %311 = add i64 %310, -8
  %312 = add i64 %309, 4
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = sext i32 %314 to i64
  store i64 %315, i64* %RAX.i865, align 8
  %316 = add nsw i64 %315, 12099168
  %317 = add i64 %309, 12
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i8*
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i64
  store i64 %320, i64* %RCX.i913.pre-phi, align 8
  %321 = zext i8 %319 to i32
  store i8 0, i8* %14, align 1
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321)
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %326 = icmp eq i8 %319, 0
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v78 = select i1 %326, i64 21, i64 26
  %328 = add i64 %309, %.v78
  store i64 %328, i64* %3, align 8
  br i1 %326, label %block_414363, label %block_.L_414368

block_414363:                                     ; preds = %block_.L_41434e
  %329 = add i64 %328, 94
  store i64 %329, i64* %3, align 8
  br label %block_.L_4143c1

block_.L_414368:                                  ; preds = %block_.L_41434e
  %RDI.i906 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i906, align 8
  %RSI.i904 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 2295, i64* %RSI.i904, align 8
  %RDX.i902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a4be_type* @G__0x57a4be to i64), i64* %RDX.i902, align 8
  store i64 20, i64* %RAX.i865, align 8
  %330 = add i64 %328, 33
  store i64 %330, i64* %3, align 8
  %331 = load i32, i32* %313, align 4
  %332 = zext i32 %331 to i64
  store i64 %332, i64* %RCX.i913.pre-phi, align 8
  %333 = add i64 %310, -52
  %334 = add i64 %328, 36
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  store i32 20, i32* %335, align 4
  %336 = load i32, i32* %ECX.i910.pre-phi, align 4
  %337 = zext i32 %336 to i64
  %338 = load i64, i64* %3, align 8
  store i64 %337, i64* %RAX.i865, align 8
  %339 = load i64, i64* %RBP.i, align 8
  %340 = add i64 %339, -64
  %341 = load i64, i64* %RDX.i902, align 8
  %342 = add i64 %338, 6
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %340 to i64*
  store i64 %341, i64* %343, align 8
  %344 = load i64, i64* %3, align 8
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %346 = load i32, i32* %EAX.i1002, align 8
  %347 = sext i32 %346 to i64
  %348 = lshr i64 %347, 32
  store i64 %348, i64* %345, align 8
  %349 = load i64, i64* %RBP.i, align 8
  %350 = add i64 %349, -52
  %351 = add i64 %344, 4
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = zext i32 %353 to i64
  store i64 %354, i64* %RCX.i913.pre-phi, align 8
  %355 = add i64 %344, 6
  store i64 %355, i64* %3, align 8
  %356 = zext i32 %346 to i64
  %357 = sext i32 %353 to i64
  %358 = shl nuw i64 %348, 32
  %359 = or i64 %358, %356
  %360 = sdiv i64 %359, %357
  %361 = shl i64 %360, 32
  %362 = ashr exact i64 %361, 32
  %363 = icmp eq i64 %360, %362
  br i1 %363, label %366, label %364

; <label>:364:                                    ; preds = %block_.L_414368
  %365 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %355, %struct.Memory* %MEMORY.1)
  %.pre50 = load i64, i64* %RAX.i865, align 8
  %.pre51 = load i64, i64* %3, align 8
  %.pre52 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit880

; <label>:366:                                    ; preds = %block_.L_414368
  %367 = srem i64 %359, %357
  %368 = and i64 %360, 4294967295
  store i64 %368, i64* %RAX.i865, align 8
  %369 = and i64 %367, 4294967295
  store i64 %369, i64* %RDX.i902, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit880

routine_idivl__ecx.exit880:                       ; preds = %366, %364
  %370 = phi i64 [ %.pre52, %364 ], [ %349, %366 ]
  %371 = phi i64 [ %.pre51, %364 ], [ %355, %366 ]
  %372 = phi i64 [ %.pre50, %364 ], [ %368, %366 ]
  %373 = phi %struct.Memory* [ %365, %364 ], [ %MEMORY.1, %366 ]
  %374 = trunc i64 %372 to i32
  %375 = add i32 %374, -1
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RAX.i865, align 8
  %377 = icmp eq i32 %374, 0
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %14, align 1
  %379 = and i32 %375, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379)
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %21, align 1
  %384 = xor i32 %375, %374
  %385 = lshr i32 %384, 4
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  store i8 %387, i8* %26, align 1
  %388 = icmp eq i32 %375, 0
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %29, align 1
  %390 = lshr i32 %375, 31
  %391 = trunc i32 %390 to i8
  store i8 %391, i8* %32, align 1
  %392 = lshr i32 %374, 31
  %393 = xor i32 %390, %392
  %394 = add nuw nsw i32 %393, %392
  %395 = icmp eq i32 %394, 2
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %38, align 1
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i874 = bitcast %union.anon* %397 to i32*
  %398 = getelementptr inbounds %union.anon, %union.anon* %397, i64 0, i32 0
  %399 = add i64 %370, -8
  %400 = add i64 %371, 7
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %398, align 8
  %404 = add i64 %370, -68
  %405 = add i64 %371, 10
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i32*
  store i32 %375, i32* %406, align 4
  %407 = load i32, i32* %R8D.i874, align 4
  %408 = zext i32 %407 to i64
  %409 = load i64, i64* %3, align 8
  store i64 %408, i64* %RAX.i865, align 8
  %410 = add i64 %409, 4
  store i64 %410, i64* %3, align 8
  %411 = sext i32 %407 to i64
  %412 = lshr i64 %411, 32
  store i64 %412, i64* %345, align 8
  %413 = load i32, i32* %ECX.i910.pre-phi, align 4
  %414 = add i64 %409, 6
  store i64 %414, i64* %3, align 8
  %415 = sext i32 %413 to i64
  %416 = shl nuw i64 %412, 32
  %417 = or i64 %416, %408
  %418 = sdiv i64 %417, %415
  %419 = shl i64 %418, 32
  %420 = ashr exact i64 %419, 32
  %421 = icmp eq i64 %418, %420
  br i1 %421, label %424, label %422

; <label>:422:                                    ; preds = %routine_idivl__ecx.exit880
  %423 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %414, %struct.Memory* %373)
  %.pre53 = load i64, i64* %RDX.i902, align 8
  %.pre54 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit863

; <label>:424:                                    ; preds = %routine_idivl__ecx.exit880
  %425 = srem i64 %417, %415
  %426 = and i64 %418, 4294967295
  store i64 %426, i64* %RAX.i865, align 8
  %427 = and i64 %425, 4294967295
  store i64 %427, i64* %RDX.i902, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit863

routine_idivl__ecx.exit863:                       ; preds = %424, %422
  %428 = phi i64 [ %.pre54, %422 ], [ %414, %424 ]
  %429 = phi i64 [ %.pre53, %422 ], [ %427, %424 ]
  %430 = phi %struct.Memory* [ %423, %422 ], [ %373, %424 ]
  %431 = trunc i64 %429 to i32
  %432 = add i32 %431, -1
  %433 = zext i32 %432 to i64
  store i64 %433, i64* %RDX.i902, align 8
  %434 = icmp eq i32 %431, 0
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %14, align 1
  %436 = and i32 %432, 255
  %437 = tail call i32 @llvm.ctpop.i32(i32 %436)
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  store i8 %440, i8* %21, align 1
  %441 = xor i32 %432, %431
  %442 = lshr i32 %441, 4
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  store i8 %444, i8* %26, align 1
  %445 = icmp eq i32 %432, 0
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %29, align 1
  %447 = lshr i32 %432, 31
  %448 = trunc i32 %447 to i8
  store i8 %448, i8* %32, align 1
  %449 = lshr i32 %431, 31
  %450 = xor i32 %447, %449
  %451 = add nuw nsw i32 %450, %449
  %452 = icmp eq i32 %451, 2
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %38, align 1
  %R9.i858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %454 = load i64, i64* %RBP.i, align 8
  %455 = add i64 %454, -64
  %456 = add i64 %428, 7
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i64*
  %458 = load i64, i64* %457, align 8
  store i64 %458, i64* %R9.i858, align 8
  %459 = add i64 %454, -72
  %460 = add i64 %428, 10
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i32*
  store i32 %432, i32* %461, align 4
  %462 = load i64, i64* %R9.i858, align 8
  %463 = load i64, i64* %3, align 8
  store i64 %462, i64* %RDX.i902, align 8
  %464 = load i64, i64* %RBP.i, align 8
  %465 = add i64 %464, -68
  %466 = add i64 %463, 6
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i32*
  %468 = load i32, i32* %467, align 4
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RCX.i913.pre-phi, align 8
  %470 = add i64 %464, -72
  %471 = add i64 %463, 10
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = zext i32 %473 to i64
  store i64 %474, i64* %398, align 8
  %475 = add i64 %463, 253150
  %476 = add i64 %463, 15
  %477 = load i64, i64* %6, align 8
  %478 = add i64 %477, -8
  %479 = inttoptr i64 %478 to i64*
  store i64 %476, i64* %479, align 8
  store i64 %478, i64* %6, align 8
  store i64 %475, i64* %3, align 8
  %call2_4143bc = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %475, %struct.Memory* %430)
  %.pre55 = load i64, i64* %RBP.i, align 8
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_4143c1

block_.L_4143c1:                                  ; preds = %routine_idivl__ecx.exit863, %block_414363
  %480 = phi i64 [ %.pre56, %routine_idivl__ecx.exit863 ], [ %329, %block_414363 ]
  %481 = phi i64 [ %.pre55, %routine_idivl__ecx.exit863 ], [ %310, %block_414363 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_4143bc, %routine_idivl__ecx.exit863 ], [ %MEMORY.1, %block_414363 ]
  %482 = add i64 %481, -12
  %483 = add i64 %480, 4
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i32*
  %485 = load i32, i32* %484, align 4
  %486 = add i32 %485, -1
  %487 = icmp eq i32 %485, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %14, align 1
  %489 = and i32 %486, 255
  %490 = tail call i32 @llvm.ctpop.i32(i32 %489)
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = xor i8 %492, 1
  store i8 %493, i8* %21, align 1
  %494 = xor i32 %486, %485
  %495 = lshr i32 %494, 4
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  store i8 %497, i8* %26, align 1
  %498 = icmp eq i32 %486, 0
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %29, align 1
  %500 = lshr i32 %486, 31
  %501 = trunc i32 %500 to i8
  store i8 %501, i8* %32, align 1
  %502 = lshr i32 %485, 31
  %503 = xor i32 %500, %502
  %504 = add nuw nsw i32 %503, %502
  %505 = icmp eq i32 %504, 2
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %38, align 1
  %.v79 = select i1 %498, i64 20, i64 10
  %507 = add i64 %480, %.v79
  store i64 %507, i64* %3, align 8
  br i1 %498, label %block_.L_4143d5, label %block_4143cb

block_4143cb:                                     ; preds = %block_.L_4143c1
  %508 = add i64 %507, 4
  store i64 %508, i64* %3, align 8
  %509 = load i32, i32* %484, align 4
  %510 = add i32 %509, -2
  %511 = icmp ult i32 %509, 2
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %14, align 1
  %513 = and i32 %510, 255
  %514 = tail call i32 @llvm.ctpop.i32(i32 %513)
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  store i8 %517, i8* %21, align 1
  %518 = xor i32 %510, %509
  %519 = lshr i32 %518, 4
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  store i8 %521, i8* %26, align 1
  %522 = icmp eq i32 %510, 0
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %29, align 1
  %524 = lshr i32 %510, 31
  %525 = trunc i32 %524 to i8
  store i8 %525, i8* %32, align 1
  %526 = lshr i32 %509, 31
  %527 = xor i32 %524, %526
  %528 = add nuw nsw i32 %527, %526
  %529 = icmp eq i32 %528, 2
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %38, align 1
  %.v80 = select i1 %522, i64 10, i64 15
  %531 = add i64 %507, %.v80
  store i64 %531, i64* %3, align 8
  br i1 %522, label %block_.L_4143d5, label %block_.L_4143da

block_.L_4143d5:                                  ; preds = %block_4143cb, %block_.L_4143c1
  %532 = phi i64 [ %531, %block_4143cb ], [ %507, %block_.L_4143c1 ]
  %533 = add i64 %532, 94
  store i64 %533, i64* %3, align 8
  br label %block_.L_414433

block_.L_4143da:                                  ; preds = %block_4143cb
  %RDI.i835 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i835, align 8
  %RSI.i833 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  store i64 2296, i64* %RSI.i833, align 8
  %RDX.i831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a4f4_type* @G__0x57a4f4 to i64), i64* %RDX.i831, align 8
  store i64 20, i64* %RAX.i865, align 8
  %534 = add i64 %481, -8
  %535 = add i64 %531, 33
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = zext i32 %537 to i64
  store i64 %538, i64* %RCX.i913.pre-phi, align 8
  %539 = add i64 %481, -76
  %540 = add i64 %531, 36
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i32*
  store i32 20, i32* %541, align 4
  %542 = load i32, i32* %ECX.i910.pre-phi, align 4
  %543 = zext i32 %542 to i64
  %544 = load i64, i64* %3, align 8
  store i64 %543, i64* %RAX.i865, align 8
  %545 = load i64, i64* %RBP.i, align 8
  %546 = add i64 %545, -88
  %547 = load i64, i64* %RDX.i831, align 8
  %548 = add i64 %544, 6
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %546 to i64*
  store i64 %547, i64* %549, align 8
  %550 = load i64, i64* %3, align 8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %552 = load i32, i32* %EAX.i1002, align 8
  %553 = sext i32 %552 to i64
  %554 = lshr i64 %553, 32
  store i64 %554, i64* %551, align 8
  %555 = load i64, i64* %RBP.i, align 8
  %556 = add i64 %555, -76
  %557 = add i64 %550, 4
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RCX.i913.pre-phi, align 8
  %561 = add i64 %550, 6
  store i64 %561, i64* %3, align 8
  %562 = zext i32 %552 to i64
  %563 = sext i32 %559 to i64
  %564 = shl nuw i64 %554, 32
  %565 = or i64 %564, %562
  %566 = sdiv i64 %565, %563
  %567 = shl i64 %566, 32
  %568 = ashr exact i64 %567, 32
  %569 = icmp eq i64 %566, %568
  br i1 %569, label %572, label %570

; <label>:570:                                    ; preds = %block_.L_4143da
  %571 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %561, %struct.Memory* %MEMORY.2)
  %.pre57 = load i64, i64* %RAX.i865, align 8
  %.pre58 = load i64, i64* %3, align 8
  %.pre59 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit809

; <label>:572:                                    ; preds = %block_.L_4143da
  %573 = srem i64 %565, %563
  %574 = and i64 %566, 4294967295
  store i64 %574, i64* %RAX.i865, align 8
  %575 = and i64 %573, 4294967295
  store i64 %575, i64* %RDX.i831, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit809

routine_idivl__ecx.exit809:                       ; preds = %572, %570
  %576 = phi i64 [ %.pre59, %570 ], [ %555, %572 ]
  %577 = phi i64 [ %.pre58, %570 ], [ %561, %572 ]
  %578 = phi i64 [ %.pre57, %570 ], [ %574, %572 ]
  %579 = phi %struct.Memory* [ %571, %570 ], [ %MEMORY.2, %572 ]
  %580 = trunc i64 %578 to i32
  %581 = add i32 %580, -1
  %582 = zext i32 %581 to i64
  store i64 %582, i64* %RAX.i865, align 8
  %583 = icmp eq i32 %580, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %14, align 1
  %585 = and i32 %581, 255
  %586 = tail call i32 @llvm.ctpop.i32(i32 %585)
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  store i8 %589, i8* %21, align 1
  %590 = xor i32 %581, %580
  %591 = lshr i32 %590, 4
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  store i8 %593, i8* %26, align 1
  %594 = icmp eq i32 %581, 0
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %29, align 1
  %596 = lshr i32 %581, 31
  %597 = trunc i32 %596 to i8
  store i8 %597, i8* %32, align 1
  %598 = lshr i32 %580, 31
  %599 = xor i32 %596, %598
  %600 = add nuw nsw i32 %599, %598
  %601 = icmp eq i32 %600, 2
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %38, align 1
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i803 = bitcast %union.anon* %603 to i32*
  %604 = getelementptr inbounds %union.anon, %union.anon* %603, i64 0, i32 0
  %605 = add i64 %576, -8
  %606 = add i64 %577, 7
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %605 to i32*
  %608 = load i32, i32* %607, align 4
  %609 = zext i32 %608 to i64
  store i64 %609, i64* %604, align 8
  %610 = add i64 %576, -92
  %611 = add i64 %577, 10
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to i32*
  store i32 %581, i32* %612, align 4
  %613 = load i32, i32* %R8D.i803, align 4
  %614 = zext i32 %613 to i64
  %615 = load i64, i64* %3, align 8
  store i64 %614, i64* %RAX.i865, align 8
  %616 = add i64 %615, 4
  store i64 %616, i64* %3, align 8
  %617 = sext i32 %613 to i64
  %618 = lshr i64 %617, 32
  store i64 %618, i64* %551, align 8
  %619 = load i32, i32* %ECX.i910.pre-phi, align 4
  %620 = add i64 %615, 6
  store i64 %620, i64* %3, align 8
  %621 = sext i32 %619 to i64
  %622 = shl nuw i64 %618, 32
  %623 = or i64 %622, %614
  %624 = sdiv i64 %623, %621
  %625 = shl i64 %624, 32
  %626 = ashr exact i64 %625, 32
  %627 = icmp eq i64 %624, %626
  br i1 %627, label %630, label %628

; <label>:628:                                    ; preds = %routine_idivl__ecx.exit809
  %629 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %620, %struct.Memory* %579)
  %.pre60 = load i64, i64* %RDX.i831, align 8
  %.pre61 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:630:                                    ; preds = %routine_idivl__ecx.exit809
  %631 = srem i64 %623, %621
  %632 = and i64 %624, 4294967295
  store i64 %632, i64* %RAX.i865, align 8
  %633 = and i64 %631, 4294967295
  store i64 %633, i64* %RDX.i831, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %630, %628
  %634 = phi i64 [ %.pre61, %628 ], [ %620, %630 ]
  %635 = phi i64 [ %.pre60, %628 ], [ %633, %630 ]
  %636 = phi %struct.Memory* [ %629, %628 ], [ %579, %630 ]
  %637 = trunc i64 %635 to i32
  %638 = add i32 %637, -1
  %639 = zext i32 %638 to i64
  store i64 %639, i64* %RDX.i831, align 8
  %640 = icmp eq i32 %637, 0
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %14, align 1
  %642 = and i32 %638, 255
  %643 = tail call i32 @llvm.ctpop.i32(i32 %642)
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  %646 = xor i8 %645, 1
  store i8 %646, i8* %21, align 1
  %647 = xor i32 %638, %637
  %648 = lshr i32 %647, 4
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  store i8 %650, i8* %26, align 1
  %651 = icmp eq i32 %638, 0
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %29, align 1
  %653 = lshr i32 %638, 31
  %654 = trunc i32 %653 to i8
  store i8 %654, i8* %32, align 1
  %655 = lshr i32 %637, 31
  %656 = xor i32 %653, %655
  %657 = add nuw nsw i32 %656, %655
  %658 = icmp eq i32 %657, 2
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %38, align 1
  %R9.i787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %660 = load i64, i64* %RBP.i, align 8
  %661 = add i64 %660, -88
  %662 = add i64 %634, 7
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i64*
  %664 = load i64, i64* %663, align 8
  store i64 %664, i64* %R9.i787, align 8
  %665 = add i64 %660, -96
  %666 = add i64 %634, 10
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i32*
  store i32 %638, i32* %667, align 4
  %668 = load i64, i64* %R9.i787, align 8
  %669 = load i64, i64* %3, align 8
  store i64 %668, i64* %RDX.i831, align 8
  %670 = load i64, i64* %RBP.i, align 8
  %671 = add i64 %670, -92
  %672 = add i64 %669, 6
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to i32*
  %674 = load i32, i32* %673, align 4
  %675 = zext i32 %674 to i64
  store i64 %675, i64* %RCX.i913.pre-phi, align 8
  %676 = add i64 %670, -96
  %677 = add i64 %669, 10
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %676 to i32*
  %679 = load i32, i32* %678, align 4
  %680 = zext i32 %679 to i64
  store i64 %680, i64* %604, align 8
  %681 = add i64 %669, 253036
  %682 = add i64 %669, 15
  %683 = load i64, i64* %6, align 8
  %684 = add i64 %683, -8
  %685 = inttoptr i64 %684 to i64*
  store i64 %682, i64* %685, align 8
  store i64 %684, i64* %6, align 8
  store i64 %681, i64* %3, align 8
  %call2_41442e = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %681, %struct.Memory* %636)
  %.pre62 = load i64, i64* %3, align 8
  %.pre63 = load i64, i64* %RBP.i, align 8
  br label %block_.L_414433

block_.L_414433:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_4143d5
  %686 = phi i64 [ %481, %block_.L_4143d5 ], [ %.pre63, %routine_idivl__ecx.exit ]
  %687 = phi i64 [ %533, %block_.L_4143d5 ], [ %.pre62, %routine_idivl__ecx.exit ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_.L_4143d5 ], [ %call2_41442e, %routine_idivl__ecx.exit ]
  %688 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %689 = add i32 %688, 1
  %690 = zext i32 %689 to i64
  store i64 %690, i64* %RAX.i865, align 8
  %691 = icmp eq i32 %688, -1
  %692 = icmp eq i32 %689, 0
  %693 = or i1 %691, %692
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %14, align 1
  %695 = and i32 %689, 255
  %696 = tail call i32 @llvm.ctpop.i32(i32 %695)
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  %699 = xor i8 %698, 1
  store i8 %699, i8* %21, align 1
  %700 = xor i32 %689, %688
  %701 = lshr i32 %700, 4
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  store i8 %703, i8* %26, align 1
  %704 = zext i1 %692 to i8
  store i8 %704, i8* %29, align 1
  %705 = lshr i32 %689, 31
  %706 = trunc i32 %705 to i8
  store i8 %706, i8* %32, align 1
  %707 = lshr i32 %688, 31
  %708 = xor i32 %705, %707
  %709 = add nuw nsw i32 %708, %705
  %710 = icmp eq i32 %709, 2
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %38, align 1
  store i32 %689, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %712 = add i64 %686, -8
  %713 = add i64 %687, 20
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i32*
  %715 = load i32, i32* %714, align 4
  %716 = add i32 %715, 20
  %717 = zext i32 %716 to i64
  store i64 %717, i64* %RAX.i865, align 8
  %718 = icmp ugt i32 %715, -21
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %14, align 1
  %720 = and i32 %716, 255
  %721 = tail call i32 @llvm.ctpop.i32(i32 %720)
  %722 = trunc i32 %721 to i8
  %723 = and i8 %722, 1
  %724 = xor i8 %723, 1
  store i8 %724, i8* %21, align 1
  %725 = xor i32 %715, 16
  %726 = xor i32 %725, %716
  %727 = lshr i32 %726, 4
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  store i8 %729, i8* %26, align 1
  %730 = icmp eq i32 %716, 0
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %29, align 1
  %732 = lshr i32 %716, 31
  %733 = trunc i32 %732 to i8
  store i8 %733, i8* %32, align 1
  %734 = lshr i32 %715, 31
  %735 = xor i32 %732, %734
  %736 = add nuw nsw i32 %735, %732
  %737 = icmp eq i32 %736, 2
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %38, align 1
  %739 = sext i32 %716 to i64
  store i64 %739, i64* %RCX.i913.pre-phi, align 8
  %740 = add nsw i64 %739, 12099168
  %741 = add i64 %687, 34
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i8*
  %743 = load i8, i8* %742, align 1
  %744 = zext i8 %743 to i64
  store i64 %744, i64* %RAX.i865, align 8
  %745 = zext i8 %743 to i32
  store i8 0, i8* %14, align 1
  %746 = tail call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  store i8 %749, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %750 = icmp eq i8 %743, 0
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v81 = select i1 %750, i64 43, i64 57
  %752 = add i64 %687, %.v81
  store i64 %752, i64* %3, align 8
  %753 = load i64, i64* %RBP.i, align 8
  br i1 %750, label %block_41445e, label %block_.L_41446c

block_41445e:                                     ; preds = %block_.L_414433
  %754 = add i64 %753, -20
  %755 = add i64 %752, 3
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i32*
  %757 = load i32, i32* %756, align 4
  %758 = add i32 %757, 1
  %759 = zext i32 %758 to i64
  store i64 %759, i64* %RAX.i865, align 8
  %760 = icmp eq i32 %757, -1
  %761 = icmp eq i32 %758, 0
  %762 = or i1 %760, %761
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %14, align 1
  %764 = and i32 %758, 255
  %765 = tail call i32 @llvm.ctpop.i32(i32 %764)
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = xor i8 %767, 1
  store i8 %768, i8* %21, align 1
  %769 = xor i32 %758, %757
  %770 = lshr i32 %769, 4
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  store i8 %772, i8* %26, align 1
  %773 = zext i1 %761 to i8
  store i8 %773, i8* %29, align 1
  %774 = lshr i32 %758, 31
  %775 = trunc i32 %774 to i8
  store i8 %775, i8* %32, align 1
  %776 = lshr i32 %757, 31
  %777 = xor i32 %774, %776
  %778 = add nuw nsw i32 %777, %774
  %779 = icmp eq i32 %778, 2
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %38, align 1
  %781 = add i64 %752, 9
  store i64 %781, i64* %3, align 8
  store i32 %758, i32* %756, align 4
  %782 = load i64, i64* %3, align 8
  %783 = add i64 %782, 349
  br label %block_.L_4145c4

block_.L_41446c:                                  ; preds = %block_.L_414433
  %784 = add i64 %753, -8
  %785 = add i64 %752, 3
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %784 to i32*
  %787 = load i32, i32* %786, align 4
  %788 = add i32 %787, 20
  %789 = zext i32 %788 to i64
  store i64 %789, i64* %RAX.i865, align 8
  %790 = icmp ugt i32 %787, -21
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %14, align 1
  %792 = and i32 %788, 255
  %793 = tail call i32 @llvm.ctpop.i32(i32 %792)
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = xor i8 %795, 1
  store i8 %796, i8* %21, align 1
  %797 = xor i32 %787, 16
  %798 = xor i32 %797, %788
  %799 = lshr i32 %798, 4
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  store i8 %801, i8* %26, align 1
  %802 = icmp eq i32 %788, 0
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %29, align 1
  %804 = lshr i32 %788, 31
  %805 = trunc i32 %804 to i8
  store i8 %805, i8* %32, align 1
  %806 = lshr i32 %787, 31
  %807 = xor i32 %804, %806
  %808 = add nuw nsw i32 %807, %804
  %809 = icmp eq i32 %808, 2
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %38, align 1
  %811 = sext i32 %788 to i64
  store i64 %811, i64* %RCX.i913.pre-phi, align 8
  %812 = add nsw i64 %811, 12099168
  %813 = add i64 %752, 17
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i8*
  %815 = load i8, i8* %814, align 1
  %816 = zext i8 %815 to i64
  store i64 %816, i64* %RAX.i865, align 8
  %817 = zext i8 %815 to i32
  %818 = add i64 %753, -12
  %819 = add i64 %752, 20
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = sub i32 %817, %821
  %823 = icmp ult i32 %817, %821
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %14, align 1
  %825 = and i32 %822, 255
  %826 = tail call i32 @llvm.ctpop.i32(i32 %825)
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  store i8 %829, i8* %21, align 1
  %830 = xor i32 %821, %817
  %831 = xor i32 %830, %822
  %832 = lshr i32 %831, 4
  %833 = trunc i32 %832 to i8
  %834 = and i8 %833, 1
  store i8 %834, i8* %26, align 1
  %835 = icmp eq i32 %822, 0
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %29, align 1
  %837 = lshr i32 %822, 31
  %838 = trunc i32 %837 to i8
  store i8 %838, i8* %32, align 1
  %839 = lshr i32 %821, 31
  %840 = add nuw nsw i32 %837, %839
  %841 = icmp eq i32 %840, 2
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %38, align 1
  %.v82 = select i1 %835, i64 26, i64 146
  %843 = add i64 %752, %.v82
  store i64 %843, i64* %3, align 8
  br i1 %835, label %block_414486, label %block_.L_4144fe

block_414486:                                     ; preds = %block_.L_41446c
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %844 = add i64 %843, 13
  store i64 %844, i64* %3, align 8
  %845 = load i32, i32* %786, align 4
  %846 = add i32 %845, 20
  %847 = zext i32 %846 to i64
  store i64 %847, i64* %RCX.i913.pre-phi, align 8
  %848 = icmp ugt i32 %845, -21
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %14, align 1
  %850 = and i32 %846, 255
  %851 = tail call i32 @llvm.ctpop.i32(i32 %850)
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  %854 = xor i8 %853, 1
  store i8 %854, i8* %21, align 1
  %855 = xor i32 %845, 16
  %856 = xor i32 %855, %846
  %857 = lshr i32 %856, 4
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  store i8 %859, i8* %26, align 1
  %860 = icmp eq i32 %846, 0
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %29, align 1
  %862 = lshr i32 %846, 31
  %863 = trunc i32 %862 to i8
  store i8 %863, i8* %32, align 1
  %864 = lshr i32 %845, 31
  %865 = xor i32 %862, %864
  %866 = add nuw nsw i32 %865, %862
  %867 = icmp eq i32 %866, 2
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %38, align 1
  %RDX.i722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %869 = sext i32 %846 to i64
  store i64 %869, i64* %RDX.i722, align 8
  %870 = shl nsw i64 %869, 2
  %871 = add nsw i64 %870, 11187184
  %872 = add i64 %843, 27
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i32*
  %874 = load i32, i32* %873, align 4
  %875 = sext i32 %874 to i64
  %876 = mul nsw i64 %875, 744
  store i64 %876, i64* %RDX.i722, align 8
  %877 = lshr i64 %876, 63
  %878 = add i64 %876, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %878, i64* %RAX.i865, align 8
  %879 = icmp ult i64 %878, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %880 = icmp ult i64 %878, %876
  %881 = or i1 %879, %880
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %14, align 1
  %883 = trunc i64 %878 to i32
  %884 = and i32 %883, 248
  %885 = tail call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %21, align 1
  %889 = xor i64 %876, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %890 = xor i64 %889, %878
  %891 = lshr i64 %890, 4
  %892 = trunc i64 %891 to i8
  %893 = and i8 %892, 1
  store i8 %893, i8* %26, align 1
  %894 = icmp eq i64 %878, 0
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %29, align 1
  %896 = lshr i64 %878, 63
  %897 = trunc i64 %896 to i8
  store i8 %897, i8* %32, align 1
  %898 = xor i64 %896, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %899 = xor i64 %896, %877
  %900 = add nuw nsw i64 %898, %899
  %901 = icmp eq i64 %900, 2
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %38, align 1
  %903 = add i64 %876, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %904 = add i64 %843, 41
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i32*
  %906 = load i32, i32* %905, align 4
  %907 = add i32 %906, -2
  %908 = icmp ult i32 %906, 2
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %14, align 1
  %910 = and i32 %907, 255
  %911 = tail call i32 @llvm.ctpop.i32(i32 %910)
  %912 = trunc i32 %911 to i8
  %913 = and i8 %912, 1
  %914 = xor i8 %913, 1
  store i8 %914, i8* %21, align 1
  %915 = xor i32 %907, %906
  %916 = lshr i32 %915, 4
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  store i8 %918, i8* %26, align 1
  %919 = icmp eq i32 %907, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %29, align 1
  %921 = lshr i32 %907, 31
  %922 = trunc i32 %921 to i8
  store i8 %922, i8* %32, align 1
  %923 = lshr i32 %906, 31
  %924 = xor i32 %921, %923
  %925 = add nuw nsw i32 %924, %923
  %926 = icmp eq i32 %925, 2
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %38, align 1
  %928 = icmp ne i8 %922, 0
  %929 = xor i1 %928, %926
  %930 = or i1 %919, %929
  %.v112 = select i1 %930, i64 59, i64 47
  %931 = add i64 %843, %.v112
  store i64 %931, i64* %3, align 8
  br i1 %930, label %block_.L_4144c1, label %block_4144b5

block_4144b5:                                     ; preds = %block_414486
  %932 = load i64, i64* %RBP.i, align 8
  %933 = add i64 %932, -4
  %934 = add i64 %931, 7
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i32*
  store i32 0, i32* %935, align 4
  %936 = load i64, i64* %3, align 8
  %937 = add i64 %936, 1504
  store i64 %937, i64* %3, align 8
  br label %block_.L_414a9c

block_.L_4144c1:                                  ; preds = %block_414486
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %938 = load i64, i64* %RBP.i, align 8
  %939 = add i64 %938, -8
  %940 = add i64 %931, 13
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i32*
  %942 = load i32, i32* %941, align 4
  %943 = add i32 %942, 20
  %944 = zext i32 %943 to i64
  store i64 %944, i64* %RCX.i913.pre-phi, align 8
  %945 = icmp ugt i32 %942, -21
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %14, align 1
  %947 = and i32 %943, 255
  %948 = tail call i32 @llvm.ctpop.i32(i32 %947)
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  %951 = xor i8 %950, 1
  store i8 %951, i8* %21, align 1
  %952 = xor i32 %942, 16
  %953 = xor i32 %952, %943
  %954 = lshr i32 %953, 4
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  store i8 %956, i8* %26, align 1
  %957 = icmp eq i32 %943, 0
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %29, align 1
  %959 = lshr i32 %943, 31
  %960 = trunc i32 %959 to i8
  store i8 %960, i8* %32, align 1
  %961 = lshr i32 %942, 31
  %962 = xor i32 %959, %961
  %963 = add nuw nsw i32 %962, %959
  %964 = icmp eq i32 %963, 2
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %38, align 1
  %966 = sext i32 %943 to i64
  store i64 %966, i64* %RDX.i722, align 8
  %967 = shl nsw i64 %966, 2
  %968 = add nsw i64 %967, 11187184
  %969 = add i64 %931, 27
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i32*
  %971 = load i32, i32* %970, align 4
  %972 = sext i32 %971 to i64
  %973 = mul nsw i64 %972, 744
  store i64 %973, i64* %RDX.i722, align 8
  %974 = lshr i64 %973, 63
  %975 = add i64 %973, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %975, i64* %RAX.i865, align 8
  %976 = icmp ult i64 %975, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %977 = icmp ult i64 %975, %973
  %978 = or i1 %976, %977
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %14, align 1
  %980 = trunc i64 %975 to i32
  %981 = and i32 %980, 248
  %982 = tail call i32 @llvm.ctpop.i32(i32 %981)
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  store i8 %985, i8* %21, align 1
  %986 = xor i64 %973, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %987 = xor i64 %986, %975
  %988 = lshr i64 %987, 4
  %989 = trunc i64 %988 to i8
  %990 = and i8 %989, 1
  store i8 %990, i8* %26, align 1
  %991 = icmp eq i64 %975, 0
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %29, align 1
  %993 = lshr i64 %975, 63
  %994 = trunc i64 %993 to i8
  store i8 %994, i8* %32, align 1
  %995 = xor i64 %993, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %996 = xor i64 %993, %974
  %997 = add nuw nsw i64 %995, %996
  %998 = icmp eq i64 %997, 2
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %38, align 1
  %1000 = add i64 %973, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1001 = add i64 %931, 41
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = add i32 %1003, -2
  %1005 = icmp ult i32 %1003, 2
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %14, align 1
  %1007 = and i32 %1004, 255
  %1008 = tail call i32 @llvm.ctpop.i32(i32 %1007)
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  %1011 = xor i8 %1010, 1
  store i8 %1011, i8* %21, align 1
  %1012 = xor i32 %1004, %1003
  %1013 = lshr i32 %1012, 4
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  store i8 %1015, i8* %26, align 1
  %1016 = icmp eq i32 %1004, 0
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %29, align 1
  %1018 = lshr i32 %1004, 31
  %1019 = trunc i32 %1018 to i8
  store i8 %1019, i8* %32, align 1
  %1020 = lshr i32 %1003, 31
  %1021 = xor i32 %1018, %1020
  %1022 = add nuw nsw i32 %1021, %1020
  %1023 = icmp eq i32 %1022, 2
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %38, align 1
  %.v113 = select i1 %1016, i64 47, i64 56
  %1025 = add i64 %931, %.v113
  store i64 %1025, i64* %3, align 8
  br i1 %1016, label %block_4144f0, label %block_.L_4144f9

block_4144f0:                                     ; preds = %block_.L_4144c1
  %1026 = load i64, i64* %RBP.i, align 8
  %1027 = add i64 %1026, -28
  %1028 = add i64 %1025, 3
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to i32*
  %1030 = load i32, i32* %1029, align 4
  %1031 = add i32 %1030, 1
  %1032 = zext i32 %1031 to i64
  store i64 %1032, i64* %RAX.i865, align 8
  %1033 = icmp eq i32 %1030, -1
  %1034 = icmp eq i32 %1031, 0
  %1035 = or i1 %1033, %1034
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %14, align 1
  %1037 = and i32 %1031, 255
  %1038 = tail call i32 @llvm.ctpop.i32(i32 %1037)
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  %1041 = xor i8 %1040, 1
  store i8 %1041, i8* %21, align 1
  %1042 = xor i32 %1031, %1030
  %1043 = lshr i32 %1042, 4
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  store i8 %1045, i8* %26, align 1
  %1046 = zext i1 %1034 to i8
  store i8 %1046, i8* %29, align 1
  %1047 = lshr i32 %1031, 31
  %1048 = trunc i32 %1047 to i8
  store i8 %1048, i8* %32, align 1
  %1049 = lshr i32 %1030, 31
  %1050 = xor i32 %1047, %1049
  %1051 = add nuw nsw i32 %1050, %1047
  %1052 = icmp eq i32 %1051, 2
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %38, align 1
  %1054 = add i64 %1025, 9
  store i64 %1054, i64* %3, align 8
  store i32 %1031, i32* %1029, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_4144f9

block_.L_4144f9:                                  ; preds = %block_.L_4144c1, %block_4144f0
  %1055 = phi i64 [ %.pre64, %block_4144f0 ], [ %1025, %block_.L_4144c1 ]
  %1056 = add i64 %1055, 198
  br label %block_.L_4145bf

block_.L_4144fe:                                  ; preds = %block_.L_41446c
  %1057 = add i64 %843, 3
  store i64 %1057, i64* %3, align 8
  %1058 = load i32, i32* %786, align 4
  %1059 = add i32 %1058, 20
  %1060 = zext i32 %1059 to i64
  store i64 %1060, i64* %RAX.i865, align 8
  %1061 = icmp ugt i32 %1058, -21
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %14, align 1
  %1063 = and i32 %1059, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %21, align 1
  %1068 = xor i32 %1058, 16
  %1069 = xor i32 %1068, %1059
  %1070 = lshr i32 %1069, 4
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  store i8 %1072, i8* %26, align 1
  %1073 = icmp eq i32 %1059, 0
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %29, align 1
  %1075 = lshr i32 %1059, 31
  %1076 = trunc i32 %1075 to i8
  store i8 %1076, i8* %32, align 1
  %1077 = lshr i32 %1058, 31
  %1078 = xor i32 %1075, %1077
  %1079 = add nuw nsw i32 %1078, %1075
  %1080 = icmp eq i32 %1079, 2
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %38, align 1
  %1082 = sext i32 %1059 to i64
  store i64 %1082, i64* %RCX.i913.pre-phi, align 8
  %1083 = add nsw i64 %1082, 12099168
  %1084 = add i64 %843, 17
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1083 to i8*
  %1086 = load i8, i8* %1085, align 1
  %1087 = zext i8 %1086 to i64
  store i64 %1087, i64* %RAX.i865, align 8
  %1088 = zext i8 %1086 to i32
  %1089 = add i64 %753, -16
  %1090 = add i64 %843, 20
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = sub i32 %1088, %1092
  %1094 = icmp ult i32 %1088, %1092
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %14, align 1
  %1096 = and i32 %1093, 255
  %1097 = tail call i32 @llvm.ctpop.i32(i32 %1096)
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  store i8 %1100, i8* %21, align 1
  %1101 = xor i32 %1092, %1088
  %1102 = xor i32 %1101, %1093
  %1103 = lshr i32 %1102, 4
  %1104 = trunc i32 %1103 to i8
  %1105 = and i8 %1104, 1
  store i8 %1105, i8* %26, align 1
  %1106 = icmp eq i32 %1093, 0
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %29, align 1
  %1108 = lshr i32 %1093, 31
  %1109 = trunc i32 %1108 to i8
  store i8 %1109, i8* %32, align 1
  %1110 = lshr i32 %1092, 31
  %1111 = add nuw nsw i32 %1108, %1110
  %1112 = icmp eq i32 %1111, 2
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %38, align 1
  %.v83 = select i1 %1106, i64 26, i64 188
  %1114 = add i64 %843, %.v83
  store i64 %1114, i64* %3, align 8
  br i1 %1106, label %block_414518, label %block_.L_4145ba

block_414518:                                     ; preds = %block_.L_4144fe
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %1115 = add i64 %1114, 13
  store i64 %1115, i64* %3, align 8
  %1116 = load i32, i32* %786, align 4
  %1117 = add i32 %1116, 20
  %1118 = zext i32 %1117 to i64
  store i64 %1118, i64* %RCX.i913.pre-phi, align 8
  %1119 = icmp ugt i32 %1116, -21
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %14, align 1
  %1121 = and i32 %1117, 255
  %1122 = tail call i32 @llvm.ctpop.i32(i32 %1121)
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  store i8 %1125, i8* %21, align 1
  %1126 = xor i32 %1116, 16
  %1127 = xor i32 %1126, %1117
  %1128 = lshr i32 %1127, 4
  %1129 = trunc i32 %1128 to i8
  %1130 = and i8 %1129, 1
  store i8 %1130, i8* %26, align 1
  %1131 = icmp eq i32 %1117, 0
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %29, align 1
  %1133 = lshr i32 %1117, 31
  %1134 = trunc i32 %1133 to i8
  store i8 %1134, i8* %32, align 1
  %1135 = lshr i32 %1116, 31
  %1136 = xor i32 %1133, %1135
  %1137 = add nuw nsw i32 %1136, %1133
  %1138 = icmp eq i32 %1137, 2
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %38, align 1
  %RDX.i655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1140 = sext i32 %1117 to i64
  store i64 %1140, i64* %RDX.i655, align 8
  %1141 = shl nsw i64 %1140, 2
  %1142 = add nsw i64 %1141, 11187184
  %1143 = add i64 %1114, 27
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = sext i32 %1145 to i64
  %1147 = mul nsw i64 %1146, 744
  store i64 %1147, i64* %RDX.i655, align 8
  %1148 = lshr i64 %1147, 63
  %1149 = add i64 %1147, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1149, i64* %RAX.i865, align 8
  %1150 = icmp ult i64 %1149, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1151 = icmp ult i64 %1149, %1147
  %1152 = or i1 %1150, %1151
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %14, align 1
  %1154 = trunc i64 %1149 to i32
  %1155 = and i32 %1154, 248
  %1156 = tail call i32 @llvm.ctpop.i32(i32 %1155)
  %1157 = trunc i32 %1156 to i8
  %1158 = and i8 %1157, 1
  %1159 = xor i8 %1158, 1
  store i8 %1159, i8* %21, align 1
  %1160 = xor i64 %1147, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1161 = xor i64 %1160, %1149
  %1162 = lshr i64 %1161, 4
  %1163 = trunc i64 %1162 to i8
  %1164 = and i8 %1163, 1
  store i8 %1164, i8* %26, align 1
  %1165 = icmp eq i64 %1149, 0
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %29, align 1
  %1167 = lshr i64 %1149, 63
  %1168 = trunc i64 %1167 to i8
  store i8 %1168, i8* %32, align 1
  %1169 = xor i64 %1167, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1170 = xor i64 %1167, %1148
  %1171 = add nuw nsw i64 %1169, %1170
  %1172 = icmp eq i64 %1171, 2
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %38, align 1
  %1174 = add i64 %1147, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1175 = add i64 %1114, 41
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1174 to i32*
  %1177 = load i32, i32* %1176, align 4
  %1178 = add i32 %1177, -1
  %1179 = icmp eq i32 %1177, 0
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %14, align 1
  %1181 = and i32 %1178, 255
  %1182 = tail call i32 @llvm.ctpop.i32(i32 %1181)
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  store i8 %1185, i8* %21, align 1
  %1186 = xor i32 %1178, %1177
  %1187 = lshr i32 %1186, 4
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  store i8 %1189, i8* %26, align 1
  %1190 = icmp eq i32 %1178, 0
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %29, align 1
  %1192 = lshr i32 %1178, 31
  %1193 = trunc i32 %1192 to i8
  store i8 %1193, i8* %32, align 1
  %1194 = lshr i32 %1177, 31
  %1195 = xor i32 %1192, %1194
  %1196 = add nuw nsw i32 %1195, %1194
  %1197 = icmp eq i32 %1196, 2
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %38, align 1
  %.v110 = select i1 %1190, i64 47, i64 162
  %1199 = add i64 %1114, %.v110
  store i64 %1199, i64* %3, align 8
  br i1 %1190, label %block_414547, label %block_.L_4145ba

block_414547:                                     ; preds = %block_414518
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %1200 = load i64, i64* %RBP.i, align 8
  %1201 = add i64 %1200, -8
  %1202 = add i64 %1199, 13
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i32*
  %1204 = load i32, i32* %1203, align 4
  %1205 = add i32 %1204, 20
  %1206 = zext i32 %1205 to i64
  store i64 %1206, i64* %RCX.i913.pre-phi, align 8
  %1207 = icmp ugt i32 %1204, -21
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %14, align 1
  %1209 = and i32 %1205, 255
  %1210 = tail call i32 @llvm.ctpop.i32(i32 %1209)
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = xor i8 %1212, 1
  store i8 %1213, i8* %21, align 1
  %1214 = xor i32 %1204, 16
  %1215 = xor i32 %1214, %1205
  %1216 = lshr i32 %1215, 4
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  store i8 %1218, i8* %26, align 1
  %1219 = icmp eq i32 %1205, 0
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %29, align 1
  %1221 = lshr i32 %1205, 31
  %1222 = trunc i32 %1221 to i8
  store i8 %1222, i8* %32, align 1
  %1223 = lshr i32 %1204, 31
  %1224 = xor i32 %1221, %1223
  %1225 = add nuw nsw i32 %1224, %1221
  %1226 = icmp eq i32 %1225, 2
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %38, align 1
  %1228 = sext i32 %1205 to i64
  store i64 %1228, i64* %RDX.i655, align 8
  %1229 = shl nsw i64 %1228, 2
  %1230 = add nsw i64 %1229, 11187184
  %1231 = add i64 %1199, 27
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i32*
  %1233 = load i32, i32* %1232, align 4
  %1234 = sext i32 %1233 to i64
  %1235 = mul nsw i64 %1234, 744
  store i64 %1235, i64* %RDX.i655, align 8
  %1236 = lshr i64 %1235, 63
  %1237 = add i64 %1235, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1237, i64* %RAX.i865, align 8
  %1238 = icmp ult i64 %1237, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1239 = icmp ult i64 %1237, %1235
  %1240 = or i1 %1238, %1239
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %14, align 1
  %1242 = trunc i64 %1237 to i32
  %1243 = and i32 %1242, 248
  %1244 = tail call i32 @llvm.ctpop.i32(i32 %1243)
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  %1247 = xor i8 %1246, 1
  store i8 %1247, i8* %21, align 1
  %1248 = xor i64 %1235, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1249 = xor i64 %1248, %1237
  %1250 = lshr i64 %1249, 4
  %1251 = trunc i64 %1250 to i8
  %1252 = and i8 %1251, 1
  store i8 %1252, i8* %26, align 1
  %1253 = icmp eq i64 %1237, 0
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %29, align 1
  %1255 = lshr i64 %1237, 63
  %1256 = trunc i64 %1255 to i8
  store i8 %1256, i8* %32, align 1
  %1257 = xor i64 %1255, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1258 = xor i64 %1255, %1236
  %1259 = add nuw nsw i64 %1257, %1258
  %1260 = icmp eq i64 %1259, 2
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %38, align 1
  %1262 = add i64 %1235, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %1263 = add i64 %1199, 43
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1262 to i32*
  %1265 = load i32, i32* %1264, align 4
  %1266 = zext i32 %1265 to i64
  store i64 %1266, i64* %RCX.i913.pre-phi, align 8
  %1267 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1268 = sub i32 %1265, %1267
  %1269 = icmp ult i32 %1265, %1267
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %14, align 1
  %1271 = and i32 %1268, 255
  %1272 = tail call i32 @llvm.ctpop.i32(i32 %1271)
  %1273 = trunc i32 %1272 to i8
  %1274 = and i8 %1273, 1
  %1275 = xor i8 %1274, 1
  store i8 %1275, i8* %21, align 1
  %1276 = xor i32 %1267, %1265
  %1277 = xor i32 %1276, %1268
  %1278 = lshr i32 %1277, 4
  %1279 = trunc i32 %1278 to i8
  %1280 = and i8 %1279, 1
  store i8 %1280, i8* %26, align 1
  %1281 = icmp eq i32 %1268, 0
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %29, align 1
  %1283 = lshr i32 %1268, 31
  %1284 = trunc i32 %1283 to i8
  store i8 %1284, i8* %32, align 1
  %1285 = lshr i32 %1265, 31
  %1286 = lshr i32 %1267, 31
  %1287 = xor i32 %1286, %1285
  %1288 = xor i32 %1283, %1285
  %1289 = add nuw nsw i32 %1288, %1287
  %1290 = icmp eq i32 %1289, 2
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %38, align 1
  %.v111 = select i1 %1281, i64 115, i64 56
  %1292 = add i64 %1199, %.v111
  store i64 %1292, i64* %3, align 8
  br i1 %1281, label %block_.L_4145ba, label %block_41457f

block_41457f:                                     ; preds = %block_414547
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %1293 = load i64, i64* %RBP.i, align 8
  %1294 = add i64 %1293, -24
  %1295 = add i64 %1292, 13
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i32*
  %1297 = load i32, i32* %1296, align 4
  %1298 = add i32 %1297, 1
  %1299 = zext i32 %1298 to i64
  store i64 %1299, i64* %RCX.i913.pre-phi, align 8
  %1300 = icmp eq i32 %1297, -1
  %1301 = icmp eq i32 %1298, 0
  %1302 = or i1 %1300, %1301
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %14, align 1
  %1304 = and i32 %1298, 255
  %1305 = tail call i32 @llvm.ctpop.i32(i32 %1304)
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  %1308 = xor i8 %1307, 1
  store i8 %1308, i8* %21, align 1
  %1309 = xor i32 %1298, %1297
  %1310 = lshr i32 %1309, 4
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  store i8 %1312, i8* %26, align 1
  %1313 = zext i1 %1301 to i8
  store i8 %1313, i8* %29, align 1
  %1314 = lshr i32 %1298, 31
  %1315 = trunc i32 %1314 to i8
  store i8 %1315, i8* %32, align 1
  %1316 = lshr i32 %1297, 31
  %1317 = xor i32 %1314, %1316
  %1318 = add nuw nsw i32 %1317, %1314
  %1319 = icmp eq i32 %1318, 2
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %38, align 1
  %1321 = add i64 %1292, 19
  store i64 %1321, i64* %3, align 8
  store i32 %1298, i32* %1296, align 4
  %1322 = load i64, i64* %3, align 8
  %1323 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1324 = zext i32 %1323 to i64
  store i64 %1324, i64* %RCX.i913.pre-phi, align 8
  %1325 = load i64, i64* %RBP.i, align 8
  %1326 = add i64 %1325, -8
  %1327 = add i64 %1322, 10
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i32*
  %1329 = load i32, i32* %1328, align 4
  %1330 = add i32 %1329, 20
  %1331 = zext i32 %1330 to i64
  store i64 %1331, i64* %RDX.i655, align 8
  %1332 = icmp ugt i32 %1329, -21
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %14, align 1
  %1334 = and i32 %1330, 255
  %1335 = tail call i32 @llvm.ctpop.i32(i32 %1334)
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  %1338 = xor i8 %1337, 1
  store i8 %1338, i8* %21, align 1
  %1339 = xor i32 %1329, 16
  %1340 = xor i32 %1339, %1330
  %1341 = lshr i32 %1340, 4
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  store i8 %1343, i8* %26, align 1
  %1344 = icmp eq i32 %1330, 0
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %29, align 1
  %1346 = lshr i32 %1330, 31
  %1347 = trunc i32 %1346 to i8
  store i8 %1347, i8* %32, align 1
  %1348 = lshr i32 %1329, 31
  %1349 = xor i32 %1346, %1348
  %1350 = add nuw nsw i32 %1349, %1346
  %1351 = icmp eq i32 %1350, 2
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %38, align 1
  %RSI.i602 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %1353 = sext i32 %1330 to i64
  store i64 %1353, i64* %RSI.i602, align 8
  %1354 = shl nsw i64 %1353, 2
  %1355 = add nsw i64 %1354, 11187184
  %1356 = add i64 %1322, 24
  store i64 %1356, i64* %3, align 8
  %1357 = inttoptr i64 %1355 to i32*
  %1358 = load i32, i32* %1357, align 4
  %1359 = sext i32 %1358 to i64
  %1360 = mul nsw i64 %1359, 744
  store i64 %1360, i64* %RSI.i602, align 8
  %1361 = lshr i64 %1360, 63
  %1362 = load i64, i64* %RAX.i865, align 8
  %1363 = add i64 %1322, 34
  store i64 %1363, i64* %3, align 8
  %1364 = add i64 %1360, %1362
  store i64 %1364, i64* %RAX.i865, align 8
  %1365 = icmp ult i64 %1364, %1362
  %1366 = icmp ult i64 %1364, %1360
  %1367 = or i1 %1365, %1366
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %14, align 1
  %1369 = trunc i64 %1364 to i32
  %1370 = and i32 %1369, 255
  %1371 = tail call i32 @llvm.ctpop.i32(i32 %1370)
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = xor i8 %1373, 1
  store i8 %1374, i8* %21, align 1
  %1375 = xor i64 %1360, %1362
  %1376 = xor i64 %1375, %1364
  %1377 = lshr i64 %1376, 4
  %1378 = trunc i64 %1377 to i8
  %1379 = and i8 %1378, 1
  store i8 %1379, i8* %26, align 1
  %1380 = icmp eq i64 %1364, 0
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %29, align 1
  %1382 = lshr i64 %1364, 63
  %1383 = trunc i64 %1382 to i8
  store i8 %1383, i8* %32, align 1
  %1384 = lshr i64 %1362, 63
  %1385 = xor i64 %1382, %1384
  %1386 = xor i64 %1382, %1361
  %1387 = add nuw nsw i64 %1385, %1386
  %1388 = icmp eq i64 %1387, 2
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %38, align 1
  %1390 = add i64 %1364, 740
  %1391 = load i32, i32* %ECX.i910.pre-phi, align 4
  %1392 = add i64 %1322, 40
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1390 to i32*
  store i32 %1391, i32* %1393, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_4145ba

block_.L_4145ba:                                  ; preds = %block_414518, %block_.L_4144fe, %block_41457f, %block_414547
  %1394 = phi i64 [ %.pre65, %block_41457f ], [ %1292, %block_414547 ], [ %1199, %block_414518 ], [ %1114, %block_.L_4144fe ]
  %1395 = add i64 %1394, 5
  store i64 %1395, i64* %3, align 8
  br label %block_.L_4145bf

block_.L_4145bf:                                  ; preds = %block_.L_4145ba, %block_.L_4144f9
  %storemerge43 = phi i64 [ %1056, %block_.L_4144f9 ], [ %1395, %block_.L_4145ba ]
  %1396 = add i64 %storemerge43, 5
  store i64 %1396, i64* %3, align 8
  br label %block_.L_4145c4

block_.L_4145c4:                                  ; preds = %block_.L_4145bf, %block_41445e
  %storemerge = phi i64 [ %783, %block_41445e ], [ %1396, %block_.L_4145bf ]
  %1397 = load i64, i64* %RBP.i, align 8
  %1398 = add i64 %1397, -8
  %1399 = add i64 %storemerge, 3
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i32*
  %1401 = load i32, i32* %1400, align 4
  %1402 = add i32 %1401, -1
  %1403 = zext i32 %1402 to i64
  store i64 %1403, i64* %RAX.i865, align 8
  %1404 = icmp eq i32 %1401, 0
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %14, align 1
  %1406 = and i32 %1402, 255
  %1407 = tail call i32 @llvm.ctpop.i32(i32 %1406)
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  %1410 = xor i8 %1409, 1
  store i8 %1410, i8* %21, align 1
  %1411 = xor i32 %1402, %1401
  %1412 = lshr i32 %1411, 4
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  store i8 %1414, i8* %26, align 1
  %1415 = icmp eq i32 %1402, 0
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %29, align 1
  %1417 = lshr i32 %1402, 31
  %1418 = trunc i32 %1417 to i8
  store i8 %1418, i8* %32, align 1
  %1419 = lshr i32 %1401, 31
  %1420 = xor i32 %1417, %1419
  %1421 = add nuw nsw i32 %1420, %1419
  %1422 = icmp eq i32 %1421, 2
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %38, align 1
  %1424 = sext i32 %1402 to i64
  store i64 %1424, i64* %RCX.i913.pre-phi, align 8
  %1425 = add nsw i64 %1424, 12099168
  %1426 = add i64 %storemerge, 17
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i8*
  %1428 = load i8, i8* %1427, align 1
  %1429 = zext i8 %1428 to i64
  store i64 %1429, i64* %RAX.i865, align 8
  %1430 = zext i8 %1428 to i32
  store i8 0, i8* %14, align 1
  %1431 = tail call i32 @llvm.ctpop.i32(i32 %1430)
  %1432 = trunc i32 %1431 to i8
  %1433 = and i8 %1432, 1
  %1434 = xor i8 %1433, 1
  store i8 %1434, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1435 = icmp eq i8 %1428, 0
  %1436 = zext i1 %1435 to i8
  store i8 %1436, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v84 = select i1 %1435, i64 26, i64 40
  %1437 = add i64 %storemerge, %.v84
  store i64 %1437, i64* %3, align 8
  br i1 %1435, label %block_4145de, label %block_.L_4145ec

block_4145de:                                     ; preds = %block_.L_4145c4
  %1438 = add i64 %1397, -20
  %1439 = add i64 %1437, 3
  store i64 %1439, i64* %3, align 8
  %1440 = inttoptr i64 %1438 to i32*
  %1441 = load i32, i32* %1440, align 4
  %1442 = add i32 %1441, 1
  %1443 = zext i32 %1442 to i64
  store i64 %1443, i64* %RAX.i865, align 8
  %1444 = icmp eq i32 %1441, -1
  %1445 = icmp eq i32 %1442, 0
  %1446 = or i1 %1444, %1445
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %14, align 1
  %1448 = and i32 %1442, 255
  %1449 = tail call i32 @llvm.ctpop.i32(i32 %1448)
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  %1452 = xor i8 %1451, 1
  store i8 %1452, i8* %21, align 1
  %1453 = xor i32 %1442, %1441
  %1454 = lshr i32 %1453, 4
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  store i8 %1456, i8* %26, align 1
  %1457 = zext i1 %1445 to i8
  store i8 %1457, i8* %29, align 1
  %1458 = lshr i32 %1442, 31
  %1459 = trunc i32 %1458 to i8
  store i8 %1459, i8* %32, align 1
  %1460 = lshr i32 %1441, 31
  %1461 = xor i32 %1458, %1460
  %1462 = add nuw nsw i32 %1461, %1458
  %1463 = icmp eq i32 %1462, 2
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %38, align 1
  %1465 = add i64 %1437, 9
  store i64 %1465, i64* %3, align 8
  store i32 %1442, i32* %1440, align 4
  %1466 = load i64, i64* %3, align 8
  %1467 = add i64 %1466, 349
  br label %block_.L_414744

block_.L_4145ec:                                  ; preds = %block_.L_4145c4
  %1468 = add i64 %1437, 3
  store i64 %1468, i64* %3, align 8
  %1469 = load i32, i32* %1400, align 4
  %1470 = add i32 %1469, -1
  %1471 = zext i32 %1470 to i64
  store i64 %1471, i64* %RAX.i865, align 8
  %1472 = icmp eq i32 %1469, 0
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %14, align 1
  %1474 = and i32 %1470, 255
  %1475 = tail call i32 @llvm.ctpop.i32(i32 %1474)
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  store i8 %1478, i8* %21, align 1
  %1479 = xor i32 %1470, %1469
  %1480 = lshr i32 %1479, 4
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  store i8 %1482, i8* %26, align 1
  %1483 = icmp eq i32 %1470, 0
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %29, align 1
  %1485 = lshr i32 %1470, 31
  %1486 = trunc i32 %1485 to i8
  store i8 %1486, i8* %32, align 1
  %1487 = lshr i32 %1469, 31
  %1488 = xor i32 %1485, %1487
  %1489 = add nuw nsw i32 %1488, %1487
  %1490 = icmp eq i32 %1489, 2
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %38, align 1
  %1492 = sext i32 %1470 to i64
  store i64 %1492, i64* %RCX.i913.pre-phi, align 8
  %1493 = add nsw i64 %1492, 12099168
  %1494 = add i64 %1437, 17
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i8*
  %1496 = load i8, i8* %1495, align 1
  %1497 = zext i8 %1496 to i64
  store i64 %1497, i64* %RAX.i865, align 8
  %1498 = zext i8 %1496 to i32
  %1499 = add i64 %1397, -12
  %1500 = add i64 %1437, 20
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i32*
  %1502 = load i32, i32* %1501, align 4
  %1503 = sub i32 %1498, %1502
  %1504 = icmp ult i32 %1498, %1502
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %14, align 1
  %1506 = and i32 %1503, 255
  %1507 = tail call i32 @llvm.ctpop.i32(i32 %1506)
  %1508 = trunc i32 %1507 to i8
  %1509 = and i8 %1508, 1
  %1510 = xor i8 %1509, 1
  store i8 %1510, i8* %21, align 1
  %1511 = xor i32 %1502, %1498
  %1512 = xor i32 %1511, %1503
  %1513 = lshr i32 %1512, 4
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  store i8 %1515, i8* %26, align 1
  %1516 = icmp eq i32 %1503, 0
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %29, align 1
  %1518 = lshr i32 %1503, 31
  %1519 = trunc i32 %1518 to i8
  store i8 %1519, i8* %32, align 1
  %1520 = lshr i32 %1502, 31
  %1521 = add nuw nsw i32 %1518, %1520
  %1522 = icmp eq i32 %1521, 2
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %38, align 1
  %.v85 = select i1 %1516, i64 26, i64 146
  %1524 = add i64 %1437, %.v85
  store i64 %1524, i64* %3, align 8
  br i1 %1516, label %block_414606, label %block_.L_41467e

block_414606:                                     ; preds = %block_.L_4145ec
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %1525 = add i64 %1524, 13
  store i64 %1525, i64* %3, align 8
  %1526 = load i32, i32* %1400, align 4
  %1527 = add i32 %1526, -1
  %1528 = zext i32 %1527 to i64
  store i64 %1528, i64* %RCX.i913.pre-phi, align 8
  %1529 = icmp eq i32 %1526, 0
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %14, align 1
  %1531 = and i32 %1527, 255
  %1532 = tail call i32 @llvm.ctpop.i32(i32 %1531)
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = xor i8 %1534, 1
  store i8 %1535, i8* %21, align 1
  %1536 = xor i32 %1527, %1526
  %1537 = lshr i32 %1536, 4
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  store i8 %1539, i8* %26, align 1
  %1540 = icmp eq i32 %1527, 0
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %29, align 1
  %1542 = lshr i32 %1527, 31
  %1543 = trunc i32 %1542 to i8
  store i8 %1543, i8* %32, align 1
  %1544 = lshr i32 %1526, 31
  %1545 = xor i32 %1542, %1544
  %1546 = add nuw nsw i32 %1545, %1544
  %1547 = icmp eq i32 %1546, 2
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %38, align 1
  %RDX.i542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1549 = sext i32 %1527 to i64
  store i64 %1549, i64* %RDX.i542, align 8
  %1550 = shl nsw i64 %1549, 2
  %1551 = add nsw i64 %1550, 11187184
  %1552 = add i64 %1524, 27
  store i64 %1552, i64* %3, align 8
  %1553 = inttoptr i64 %1551 to i32*
  %1554 = load i32, i32* %1553, align 4
  %1555 = sext i32 %1554 to i64
  %1556 = mul nsw i64 %1555, 744
  store i64 %1556, i64* %RDX.i542, align 8
  %1557 = lshr i64 %1556, 63
  %1558 = add i64 %1556, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1558, i64* %RAX.i865, align 8
  %1559 = icmp ult i64 %1558, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1560 = icmp ult i64 %1558, %1556
  %1561 = or i1 %1559, %1560
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %14, align 1
  %1563 = trunc i64 %1558 to i32
  %1564 = and i32 %1563, 248
  %1565 = tail call i32 @llvm.ctpop.i32(i32 %1564)
  %1566 = trunc i32 %1565 to i8
  %1567 = and i8 %1566, 1
  %1568 = xor i8 %1567, 1
  store i8 %1568, i8* %21, align 1
  %1569 = xor i64 %1556, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1570 = xor i64 %1569, %1558
  %1571 = lshr i64 %1570, 4
  %1572 = trunc i64 %1571 to i8
  %1573 = and i8 %1572, 1
  store i8 %1573, i8* %26, align 1
  %1574 = icmp eq i64 %1558, 0
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %29, align 1
  %1576 = lshr i64 %1558, 63
  %1577 = trunc i64 %1576 to i8
  store i8 %1577, i8* %32, align 1
  %1578 = xor i64 %1576, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1579 = xor i64 %1576, %1557
  %1580 = add nuw nsw i64 %1578, %1579
  %1581 = icmp eq i64 %1580, 2
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %38, align 1
  %1583 = add i64 %1556, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1584 = add i64 %1524, 41
  store i64 %1584, i64* %3, align 8
  %1585 = inttoptr i64 %1583 to i32*
  %1586 = load i32, i32* %1585, align 4
  %1587 = add i32 %1586, -2
  %1588 = icmp ult i32 %1586, 2
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %14, align 1
  %1590 = and i32 %1587, 255
  %1591 = tail call i32 @llvm.ctpop.i32(i32 %1590)
  %1592 = trunc i32 %1591 to i8
  %1593 = and i8 %1592, 1
  %1594 = xor i8 %1593, 1
  store i8 %1594, i8* %21, align 1
  %1595 = xor i32 %1587, %1586
  %1596 = lshr i32 %1595, 4
  %1597 = trunc i32 %1596 to i8
  %1598 = and i8 %1597, 1
  store i8 %1598, i8* %26, align 1
  %1599 = icmp eq i32 %1587, 0
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %29, align 1
  %1601 = lshr i32 %1587, 31
  %1602 = trunc i32 %1601 to i8
  store i8 %1602, i8* %32, align 1
  %1603 = lshr i32 %1586, 31
  %1604 = xor i32 %1601, %1603
  %1605 = add nuw nsw i32 %1604, %1603
  %1606 = icmp eq i32 %1605, 2
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %38, align 1
  %1608 = icmp ne i8 %1602, 0
  %1609 = xor i1 %1608, %1606
  %1610 = or i1 %1599, %1609
  %.v108 = select i1 %1610, i64 59, i64 47
  %1611 = add i64 %1524, %.v108
  store i64 %1611, i64* %3, align 8
  br i1 %1610, label %block_.L_414641, label %block_414635

block_414635:                                     ; preds = %block_414606
  %1612 = load i64, i64* %RBP.i, align 8
  %1613 = add i64 %1612, -4
  %1614 = add i64 %1611, 7
  store i64 %1614, i64* %3, align 8
  %1615 = inttoptr i64 %1613 to i32*
  store i32 0, i32* %1615, align 4
  %1616 = load i64, i64* %3, align 8
  %1617 = add i64 %1616, 1120
  store i64 %1617, i64* %3, align 8
  br label %block_.L_414a9c

block_.L_414641:                                  ; preds = %block_414606
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %1618 = load i64, i64* %RBP.i, align 8
  %1619 = add i64 %1618, -8
  %1620 = add i64 %1611, 13
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1619 to i32*
  %1622 = load i32, i32* %1621, align 4
  %1623 = add i32 %1622, -1
  %1624 = zext i32 %1623 to i64
  store i64 %1624, i64* %RCX.i913.pre-phi, align 8
  %1625 = icmp eq i32 %1622, 0
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %14, align 1
  %1627 = and i32 %1623, 255
  %1628 = tail call i32 @llvm.ctpop.i32(i32 %1627)
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  %1631 = xor i8 %1630, 1
  store i8 %1631, i8* %21, align 1
  %1632 = xor i32 %1623, %1622
  %1633 = lshr i32 %1632, 4
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  store i8 %1635, i8* %26, align 1
  %1636 = icmp eq i32 %1623, 0
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %29, align 1
  %1638 = lshr i32 %1623, 31
  %1639 = trunc i32 %1638 to i8
  store i8 %1639, i8* %32, align 1
  %1640 = lshr i32 %1622, 31
  %1641 = xor i32 %1638, %1640
  %1642 = add nuw nsw i32 %1641, %1640
  %1643 = icmp eq i32 %1642, 2
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %38, align 1
  %1645 = sext i32 %1623 to i64
  store i64 %1645, i64* %RDX.i542, align 8
  %1646 = shl nsw i64 %1645, 2
  %1647 = add nsw i64 %1646, 11187184
  %1648 = add i64 %1611, 27
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i32*
  %1650 = load i32, i32* %1649, align 4
  %1651 = sext i32 %1650 to i64
  %1652 = mul nsw i64 %1651, 744
  store i64 %1652, i64* %RDX.i542, align 8
  %1653 = lshr i64 %1652, 63
  %1654 = add i64 %1652, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1654, i64* %RAX.i865, align 8
  %1655 = icmp ult i64 %1654, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1656 = icmp ult i64 %1654, %1652
  %1657 = or i1 %1655, %1656
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %14, align 1
  %1659 = trunc i64 %1654 to i32
  %1660 = and i32 %1659, 248
  %1661 = tail call i32 @llvm.ctpop.i32(i32 %1660)
  %1662 = trunc i32 %1661 to i8
  %1663 = and i8 %1662, 1
  %1664 = xor i8 %1663, 1
  store i8 %1664, i8* %21, align 1
  %1665 = xor i64 %1652, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1666 = xor i64 %1665, %1654
  %1667 = lshr i64 %1666, 4
  %1668 = trunc i64 %1667 to i8
  %1669 = and i8 %1668, 1
  store i8 %1669, i8* %26, align 1
  %1670 = icmp eq i64 %1654, 0
  %1671 = zext i1 %1670 to i8
  store i8 %1671, i8* %29, align 1
  %1672 = lshr i64 %1654, 63
  %1673 = trunc i64 %1672 to i8
  store i8 %1673, i8* %32, align 1
  %1674 = xor i64 %1672, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1675 = xor i64 %1672, %1653
  %1676 = add nuw nsw i64 %1674, %1675
  %1677 = icmp eq i64 %1676, 2
  %1678 = zext i1 %1677 to i8
  store i8 %1678, i8* %38, align 1
  %1679 = add i64 %1652, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1680 = add i64 %1611, 41
  store i64 %1680, i64* %3, align 8
  %1681 = inttoptr i64 %1679 to i32*
  %1682 = load i32, i32* %1681, align 4
  %1683 = add i32 %1682, -2
  %1684 = icmp ult i32 %1682, 2
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %14, align 1
  %1686 = and i32 %1683, 255
  %1687 = tail call i32 @llvm.ctpop.i32(i32 %1686)
  %1688 = trunc i32 %1687 to i8
  %1689 = and i8 %1688, 1
  %1690 = xor i8 %1689, 1
  store i8 %1690, i8* %21, align 1
  %1691 = xor i32 %1683, %1682
  %1692 = lshr i32 %1691, 4
  %1693 = trunc i32 %1692 to i8
  %1694 = and i8 %1693, 1
  store i8 %1694, i8* %26, align 1
  %1695 = icmp eq i32 %1683, 0
  %1696 = zext i1 %1695 to i8
  store i8 %1696, i8* %29, align 1
  %1697 = lshr i32 %1683, 31
  %1698 = trunc i32 %1697 to i8
  store i8 %1698, i8* %32, align 1
  %1699 = lshr i32 %1682, 31
  %1700 = xor i32 %1697, %1699
  %1701 = add nuw nsw i32 %1700, %1699
  %1702 = icmp eq i32 %1701, 2
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %38, align 1
  %.v109 = select i1 %1695, i64 47, i64 56
  %1704 = add i64 %1611, %.v109
  store i64 %1704, i64* %3, align 8
  br i1 %1695, label %block_414670, label %block_.L_414679

block_414670:                                     ; preds = %block_.L_414641
  %1705 = load i64, i64* %RBP.i, align 8
  %1706 = add i64 %1705, -28
  %1707 = add i64 %1704, 3
  store i64 %1707, i64* %3, align 8
  %1708 = inttoptr i64 %1706 to i32*
  %1709 = load i32, i32* %1708, align 4
  %1710 = add i32 %1709, 1
  %1711 = zext i32 %1710 to i64
  store i64 %1711, i64* %RAX.i865, align 8
  %1712 = icmp eq i32 %1709, -1
  %1713 = icmp eq i32 %1710, 0
  %1714 = or i1 %1712, %1713
  %1715 = zext i1 %1714 to i8
  store i8 %1715, i8* %14, align 1
  %1716 = and i32 %1710, 255
  %1717 = tail call i32 @llvm.ctpop.i32(i32 %1716)
  %1718 = trunc i32 %1717 to i8
  %1719 = and i8 %1718, 1
  %1720 = xor i8 %1719, 1
  store i8 %1720, i8* %21, align 1
  %1721 = xor i32 %1710, %1709
  %1722 = lshr i32 %1721, 4
  %1723 = trunc i32 %1722 to i8
  %1724 = and i8 %1723, 1
  store i8 %1724, i8* %26, align 1
  %1725 = zext i1 %1713 to i8
  store i8 %1725, i8* %29, align 1
  %1726 = lshr i32 %1710, 31
  %1727 = trunc i32 %1726 to i8
  store i8 %1727, i8* %32, align 1
  %1728 = lshr i32 %1709, 31
  %1729 = xor i32 %1726, %1728
  %1730 = add nuw nsw i32 %1729, %1726
  %1731 = icmp eq i32 %1730, 2
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %38, align 1
  %1733 = add i64 %1704, 9
  store i64 %1733, i64* %3, align 8
  store i32 %1710, i32* %1708, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_414679

block_.L_414679:                                  ; preds = %block_.L_414641, %block_414670
  %1734 = phi i64 [ %.pre66, %block_414670 ], [ %1704, %block_.L_414641 ]
  %1735 = add i64 %1734, 198
  br label %block_.L_41473f

block_.L_41467e:                                  ; preds = %block_.L_4145ec
  %1736 = add i64 %1524, 3
  store i64 %1736, i64* %3, align 8
  %1737 = load i32, i32* %1400, align 4
  %1738 = add i32 %1737, -1
  %1739 = zext i32 %1738 to i64
  store i64 %1739, i64* %RAX.i865, align 8
  %1740 = icmp eq i32 %1737, 0
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %14, align 1
  %1742 = and i32 %1738, 255
  %1743 = tail call i32 @llvm.ctpop.i32(i32 %1742)
  %1744 = trunc i32 %1743 to i8
  %1745 = and i8 %1744, 1
  %1746 = xor i8 %1745, 1
  store i8 %1746, i8* %21, align 1
  %1747 = xor i32 %1738, %1737
  %1748 = lshr i32 %1747, 4
  %1749 = trunc i32 %1748 to i8
  %1750 = and i8 %1749, 1
  store i8 %1750, i8* %26, align 1
  %1751 = icmp eq i32 %1738, 0
  %1752 = zext i1 %1751 to i8
  store i8 %1752, i8* %29, align 1
  %1753 = lshr i32 %1738, 31
  %1754 = trunc i32 %1753 to i8
  store i8 %1754, i8* %32, align 1
  %1755 = lshr i32 %1737, 31
  %1756 = xor i32 %1753, %1755
  %1757 = add nuw nsw i32 %1756, %1755
  %1758 = icmp eq i32 %1757, 2
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %38, align 1
  %1760 = sext i32 %1738 to i64
  store i64 %1760, i64* %RCX.i913.pre-phi, align 8
  %1761 = add nsw i64 %1760, 12099168
  %1762 = add i64 %1524, 17
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i8*
  %1764 = load i8, i8* %1763, align 1
  %1765 = zext i8 %1764 to i64
  store i64 %1765, i64* %RAX.i865, align 8
  %1766 = zext i8 %1764 to i32
  %1767 = add i64 %1397, -16
  %1768 = add i64 %1524, 20
  store i64 %1768, i64* %3, align 8
  %1769 = inttoptr i64 %1767 to i32*
  %1770 = load i32, i32* %1769, align 4
  %1771 = sub i32 %1766, %1770
  %1772 = icmp ult i32 %1766, %1770
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %14, align 1
  %1774 = and i32 %1771, 255
  %1775 = tail call i32 @llvm.ctpop.i32(i32 %1774)
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = xor i8 %1777, 1
  store i8 %1778, i8* %21, align 1
  %1779 = xor i32 %1770, %1766
  %1780 = xor i32 %1779, %1771
  %1781 = lshr i32 %1780, 4
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  store i8 %1783, i8* %26, align 1
  %1784 = icmp eq i32 %1771, 0
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %29, align 1
  %1786 = lshr i32 %1771, 31
  %1787 = trunc i32 %1786 to i8
  store i8 %1787, i8* %32, align 1
  %1788 = lshr i32 %1770, 31
  %1789 = add nuw nsw i32 %1786, %1788
  %1790 = icmp eq i32 %1789, 2
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %38, align 1
  %.v86 = select i1 %1784, i64 26, i64 188
  %1792 = add i64 %1524, %.v86
  store i64 %1792, i64* %3, align 8
  br i1 %1784, label %block_414698, label %block_.L_41473a

block_414698:                                     ; preds = %block_.L_41467e
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %1793 = add i64 %1792, 13
  store i64 %1793, i64* %3, align 8
  %1794 = load i32, i32* %1400, align 4
  %1795 = add i32 %1794, -1
  %1796 = zext i32 %1795 to i64
  store i64 %1796, i64* %RCX.i913.pre-phi, align 8
  %1797 = icmp eq i32 %1794, 0
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %14, align 1
  %1799 = and i32 %1795, 255
  %1800 = tail call i32 @llvm.ctpop.i32(i32 %1799)
  %1801 = trunc i32 %1800 to i8
  %1802 = and i8 %1801, 1
  %1803 = xor i8 %1802, 1
  store i8 %1803, i8* %21, align 1
  %1804 = xor i32 %1795, %1794
  %1805 = lshr i32 %1804, 4
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  store i8 %1807, i8* %26, align 1
  %1808 = icmp eq i32 %1795, 0
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %29, align 1
  %1810 = lshr i32 %1795, 31
  %1811 = trunc i32 %1810 to i8
  store i8 %1811, i8* %32, align 1
  %1812 = lshr i32 %1794, 31
  %1813 = xor i32 %1810, %1812
  %1814 = add nuw nsw i32 %1813, %1812
  %1815 = icmp eq i32 %1814, 2
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %38, align 1
  %RDX.i475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1817 = sext i32 %1795 to i64
  store i64 %1817, i64* %RDX.i475, align 8
  %1818 = shl nsw i64 %1817, 2
  %1819 = add nsw i64 %1818, 11187184
  %1820 = add i64 %1792, 27
  store i64 %1820, i64* %3, align 8
  %1821 = inttoptr i64 %1819 to i32*
  %1822 = load i32, i32* %1821, align 4
  %1823 = sext i32 %1822 to i64
  %1824 = mul nsw i64 %1823, 744
  store i64 %1824, i64* %RDX.i475, align 8
  %1825 = lshr i64 %1824, 63
  %1826 = add i64 %1824, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1826, i64* %RAX.i865, align 8
  %1827 = icmp ult i64 %1826, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1828 = icmp ult i64 %1826, %1824
  %1829 = or i1 %1827, %1828
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %14, align 1
  %1831 = trunc i64 %1826 to i32
  %1832 = and i32 %1831, 248
  %1833 = tail call i32 @llvm.ctpop.i32(i32 %1832)
  %1834 = trunc i32 %1833 to i8
  %1835 = and i8 %1834, 1
  %1836 = xor i8 %1835, 1
  store i8 %1836, i8* %21, align 1
  %1837 = xor i64 %1824, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1838 = xor i64 %1837, %1826
  %1839 = lshr i64 %1838, 4
  %1840 = trunc i64 %1839 to i8
  %1841 = and i8 %1840, 1
  store i8 %1841, i8* %26, align 1
  %1842 = icmp eq i64 %1826, 0
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %29, align 1
  %1844 = lshr i64 %1826, 63
  %1845 = trunc i64 %1844 to i8
  store i8 %1845, i8* %32, align 1
  %1846 = xor i64 %1844, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1847 = xor i64 %1844, %1825
  %1848 = add nuw nsw i64 %1846, %1847
  %1849 = icmp eq i64 %1848, 2
  %1850 = zext i1 %1849 to i8
  store i8 %1850, i8* %38, align 1
  %1851 = add i64 %1824, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1852 = add i64 %1792, 41
  store i64 %1852, i64* %3, align 8
  %1853 = inttoptr i64 %1851 to i32*
  %1854 = load i32, i32* %1853, align 4
  %1855 = add i32 %1854, -1
  %1856 = icmp eq i32 %1854, 0
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %14, align 1
  %1858 = and i32 %1855, 255
  %1859 = tail call i32 @llvm.ctpop.i32(i32 %1858)
  %1860 = trunc i32 %1859 to i8
  %1861 = and i8 %1860, 1
  %1862 = xor i8 %1861, 1
  store i8 %1862, i8* %21, align 1
  %1863 = xor i32 %1855, %1854
  %1864 = lshr i32 %1863, 4
  %1865 = trunc i32 %1864 to i8
  %1866 = and i8 %1865, 1
  store i8 %1866, i8* %26, align 1
  %1867 = icmp eq i32 %1855, 0
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %29, align 1
  %1869 = lshr i32 %1855, 31
  %1870 = trunc i32 %1869 to i8
  store i8 %1870, i8* %32, align 1
  %1871 = lshr i32 %1854, 31
  %1872 = xor i32 %1869, %1871
  %1873 = add nuw nsw i32 %1872, %1871
  %1874 = icmp eq i32 %1873, 2
  %1875 = zext i1 %1874 to i8
  store i8 %1875, i8* %38, align 1
  %.v106 = select i1 %1867, i64 47, i64 162
  %1876 = add i64 %1792, %.v106
  store i64 %1876, i64* %3, align 8
  br i1 %1867, label %block_4146c7, label %block_.L_41473a

block_4146c7:                                     ; preds = %block_414698
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %1877 = load i64, i64* %RBP.i, align 8
  %1878 = add i64 %1877, -8
  %1879 = add i64 %1876, 13
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1878 to i32*
  %1881 = load i32, i32* %1880, align 4
  %1882 = add i32 %1881, -1
  %1883 = zext i32 %1882 to i64
  store i64 %1883, i64* %RCX.i913.pre-phi, align 8
  %1884 = icmp eq i32 %1881, 0
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %14, align 1
  %1886 = and i32 %1882, 255
  %1887 = tail call i32 @llvm.ctpop.i32(i32 %1886)
  %1888 = trunc i32 %1887 to i8
  %1889 = and i8 %1888, 1
  %1890 = xor i8 %1889, 1
  store i8 %1890, i8* %21, align 1
  %1891 = xor i32 %1882, %1881
  %1892 = lshr i32 %1891, 4
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  store i8 %1894, i8* %26, align 1
  %1895 = icmp eq i32 %1882, 0
  %1896 = zext i1 %1895 to i8
  store i8 %1896, i8* %29, align 1
  %1897 = lshr i32 %1882, 31
  %1898 = trunc i32 %1897 to i8
  store i8 %1898, i8* %32, align 1
  %1899 = lshr i32 %1881, 31
  %1900 = xor i32 %1897, %1899
  %1901 = add nuw nsw i32 %1900, %1899
  %1902 = icmp eq i32 %1901, 2
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %38, align 1
  %1904 = sext i32 %1882 to i64
  store i64 %1904, i64* %RDX.i475, align 8
  %1905 = shl nsw i64 %1904, 2
  %1906 = add nsw i64 %1905, 11187184
  %1907 = add i64 %1876, 27
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1906 to i32*
  %1909 = load i32, i32* %1908, align 4
  %1910 = sext i32 %1909 to i64
  %1911 = mul nsw i64 %1910, 744
  store i64 %1911, i64* %RDX.i475, align 8
  %1912 = lshr i64 %1911, 63
  %1913 = add i64 %1911, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1913, i64* %RAX.i865, align 8
  %1914 = icmp ult i64 %1913, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1915 = icmp ult i64 %1913, %1911
  %1916 = or i1 %1914, %1915
  %1917 = zext i1 %1916 to i8
  store i8 %1917, i8* %14, align 1
  %1918 = trunc i64 %1913 to i32
  %1919 = and i32 %1918, 248
  %1920 = tail call i32 @llvm.ctpop.i32(i32 %1919)
  %1921 = trunc i32 %1920 to i8
  %1922 = and i8 %1921, 1
  %1923 = xor i8 %1922, 1
  store i8 %1923, i8* %21, align 1
  %1924 = xor i64 %1911, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1925 = xor i64 %1924, %1913
  %1926 = lshr i64 %1925, 4
  %1927 = trunc i64 %1926 to i8
  %1928 = and i8 %1927, 1
  store i8 %1928, i8* %26, align 1
  %1929 = icmp eq i64 %1913, 0
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %29, align 1
  %1931 = lshr i64 %1913, 63
  %1932 = trunc i64 %1931 to i8
  store i8 %1932, i8* %32, align 1
  %1933 = xor i64 %1931, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1934 = xor i64 %1931, %1912
  %1935 = add nuw nsw i64 %1933, %1934
  %1936 = icmp eq i64 %1935, 2
  %1937 = zext i1 %1936 to i8
  store i8 %1937, i8* %38, align 1
  %1938 = add i64 %1911, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %1939 = add i64 %1876, 43
  store i64 %1939, i64* %3, align 8
  %1940 = inttoptr i64 %1938 to i32*
  %1941 = load i32, i32* %1940, align 4
  %1942 = zext i32 %1941 to i64
  store i64 %1942, i64* %RCX.i913.pre-phi, align 8
  %1943 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1944 = sub i32 %1941, %1943
  %1945 = icmp ult i32 %1941, %1943
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %14, align 1
  %1947 = and i32 %1944, 255
  %1948 = tail call i32 @llvm.ctpop.i32(i32 %1947)
  %1949 = trunc i32 %1948 to i8
  %1950 = and i8 %1949, 1
  %1951 = xor i8 %1950, 1
  store i8 %1951, i8* %21, align 1
  %1952 = xor i32 %1943, %1941
  %1953 = xor i32 %1952, %1944
  %1954 = lshr i32 %1953, 4
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  store i8 %1956, i8* %26, align 1
  %1957 = icmp eq i32 %1944, 0
  %1958 = zext i1 %1957 to i8
  store i8 %1958, i8* %29, align 1
  %1959 = lshr i32 %1944, 31
  %1960 = trunc i32 %1959 to i8
  store i8 %1960, i8* %32, align 1
  %1961 = lshr i32 %1941, 31
  %1962 = lshr i32 %1943, 31
  %1963 = xor i32 %1962, %1961
  %1964 = xor i32 %1959, %1961
  %1965 = add nuw nsw i32 %1964, %1963
  %1966 = icmp eq i32 %1965, 2
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %38, align 1
  %.v107 = select i1 %1957, i64 115, i64 56
  %1968 = add i64 %1876, %.v107
  store i64 %1968, i64* %3, align 8
  br i1 %1957, label %block_.L_41473a, label %block_4146ff

block_4146ff:                                     ; preds = %block_4146c7
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %1969 = load i64, i64* %RBP.i, align 8
  %1970 = add i64 %1969, -24
  %1971 = add i64 %1968, 13
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1970 to i32*
  %1973 = load i32, i32* %1972, align 4
  %1974 = add i32 %1973, 1
  %1975 = zext i32 %1974 to i64
  store i64 %1975, i64* %RCX.i913.pre-phi, align 8
  %1976 = icmp eq i32 %1973, -1
  %1977 = icmp eq i32 %1974, 0
  %1978 = or i1 %1976, %1977
  %1979 = zext i1 %1978 to i8
  store i8 %1979, i8* %14, align 1
  %1980 = and i32 %1974, 255
  %1981 = tail call i32 @llvm.ctpop.i32(i32 %1980)
  %1982 = trunc i32 %1981 to i8
  %1983 = and i8 %1982, 1
  %1984 = xor i8 %1983, 1
  store i8 %1984, i8* %21, align 1
  %1985 = xor i32 %1974, %1973
  %1986 = lshr i32 %1985, 4
  %1987 = trunc i32 %1986 to i8
  %1988 = and i8 %1987, 1
  store i8 %1988, i8* %26, align 1
  %1989 = zext i1 %1977 to i8
  store i8 %1989, i8* %29, align 1
  %1990 = lshr i32 %1974, 31
  %1991 = trunc i32 %1990 to i8
  store i8 %1991, i8* %32, align 1
  %1992 = lshr i32 %1973, 31
  %1993 = xor i32 %1990, %1992
  %1994 = add nuw nsw i32 %1993, %1990
  %1995 = icmp eq i32 %1994, 2
  %1996 = zext i1 %1995 to i8
  store i8 %1996, i8* %38, align 1
  %1997 = add i64 %1968, 19
  store i64 %1997, i64* %3, align 8
  store i32 %1974, i32* %1972, align 4
  %1998 = load i64, i64* %3, align 8
  %1999 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2000 = zext i32 %1999 to i64
  store i64 %2000, i64* %RCX.i913.pre-phi, align 8
  %2001 = load i64, i64* %RBP.i, align 8
  %2002 = add i64 %2001, -8
  %2003 = add i64 %1998, 10
  store i64 %2003, i64* %3, align 8
  %2004 = inttoptr i64 %2002 to i32*
  %2005 = load i32, i32* %2004, align 4
  %2006 = add i32 %2005, -1
  %2007 = zext i32 %2006 to i64
  store i64 %2007, i64* %RDX.i475, align 8
  %2008 = icmp eq i32 %2005, 0
  %2009 = zext i1 %2008 to i8
  store i8 %2009, i8* %14, align 1
  %2010 = and i32 %2006, 255
  %2011 = tail call i32 @llvm.ctpop.i32(i32 %2010)
  %2012 = trunc i32 %2011 to i8
  %2013 = and i8 %2012, 1
  %2014 = xor i8 %2013, 1
  store i8 %2014, i8* %21, align 1
  %2015 = xor i32 %2006, %2005
  %2016 = lshr i32 %2015, 4
  %2017 = trunc i32 %2016 to i8
  %2018 = and i8 %2017, 1
  store i8 %2018, i8* %26, align 1
  %2019 = icmp eq i32 %2006, 0
  %2020 = zext i1 %2019 to i8
  store i8 %2020, i8* %29, align 1
  %2021 = lshr i32 %2006, 31
  %2022 = trunc i32 %2021 to i8
  store i8 %2022, i8* %32, align 1
  %2023 = lshr i32 %2005, 31
  %2024 = xor i32 %2021, %2023
  %2025 = add nuw nsw i32 %2024, %2023
  %2026 = icmp eq i32 %2025, 2
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %38, align 1
  %RSI.i422 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %2028 = sext i32 %2006 to i64
  store i64 %2028, i64* %RSI.i422, align 8
  %2029 = shl nsw i64 %2028, 2
  %2030 = add nsw i64 %2029, 11187184
  %2031 = add i64 %1998, 24
  store i64 %2031, i64* %3, align 8
  %2032 = inttoptr i64 %2030 to i32*
  %2033 = load i32, i32* %2032, align 4
  %2034 = sext i32 %2033 to i64
  %2035 = mul nsw i64 %2034, 744
  store i64 %2035, i64* %RSI.i422, align 8
  %2036 = lshr i64 %2035, 63
  %2037 = load i64, i64* %RAX.i865, align 8
  %2038 = add i64 %1998, 34
  store i64 %2038, i64* %3, align 8
  %2039 = add i64 %2035, %2037
  store i64 %2039, i64* %RAX.i865, align 8
  %2040 = icmp ult i64 %2039, %2037
  %2041 = icmp ult i64 %2039, %2035
  %2042 = or i1 %2040, %2041
  %2043 = zext i1 %2042 to i8
  store i8 %2043, i8* %14, align 1
  %2044 = trunc i64 %2039 to i32
  %2045 = and i32 %2044, 255
  %2046 = tail call i32 @llvm.ctpop.i32(i32 %2045)
  %2047 = trunc i32 %2046 to i8
  %2048 = and i8 %2047, 1
  %2049 = xor i8 %2048, 1
  store i8 %2049, i8* %21, align 1
  %2050 = xor i64 %2035, %2037
  %2051 = xor i64 %2050, %2039
  %2052 = lshr i64 %2051, 4
  %2053 = trunc i64 %2052 to i8
  %2054 = and i8 %2053, 1
  store i8 %2054, i8* %26, align 1
  %2055 = icmp eq i64 %2039, 0
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %29, align 1
  %2057 = lshr i64 %2039, 63
  %2058 = trunc i64 %2057 to i8
  store i8 %2058, i8* %32, align 1
  %2059 = lshr i64 %2037, 63
  %2060 = xor i64 %2057, %2059
  %2061 = xor i64 %2057, %2036
  %2062 = add nuw nsw i64 %2060, %2061
  %2063 = icmp eq i64 %2062, 2
  %2064 = zext i1 %2063 to i8
  store i8 %2064, i8* %38, align 1
  %2065 = add i64 %2039, 740
  %2066 = load i32, i32* %ECX.i910.pre-phi, align 4
  %2067 = add i64 %1998, 40
  store i64 %2067, i64* %3, align 8
  %2068 = inttoptr i64 %2065 to i32*
  store i32 %2066, i32* %2068, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_41473a

block_.L_41473a:                                  ; preds = %block_414698, %block_.L_41467e, %block_4146ff, %block_4146c7
  %2069 = phi i64 [ %.pre67, %block_4146ff ], [ %1968, %block_4146c7 ], [ %1876, %block_414698 ], [ %1792, %block_.L_41467e ]
  %2070 = add i64 %2069, 5
  store i64 %2070, i64* %3, align 8
  br label %block_.L_41473f

block_.L_41473f:                                  ; preds = %block_.L_41473a, %block_.L_414679
  %storemerge42 = phi i64 [ %1735, %block_.L_414679 ], [ %2070, %block_.L_41473a ]
  %2071 = add i64 %storemerge42, 5
  store i64 %2071, i64* %3, align 8
  br label %block_.L_414744

block_.L_414744:                                  ; preds = %block_.L_41473f, %block_4145de
  %storemerge37 = phi i64 [ %1467, %block_4145de ], [ %2071, %block_.L_41473f ]
  %2072 = load i64, i64* %RBP.i, align 8
  %2073 = add i64 %2072, -8
  %2074 = add i64 %storemerge37, 3
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2073 to i32*
  %2076 = load i32, i32* %2075, align 4
  %2077 = add i32 %2076, -20
  %2078 = zext i32 %2077 to i64
  store i64 %2078, i64* %RAX.i865, align 8
  %2079 = icmp ult i32 %2076, 20
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %14, align 1
  %2081 = and i32 %2077, 255
  %2082 = tail call i32 @llvm.ctpop.i32(i32 %2081)
  %2083 = trunc i32 %2082 to i8
  %2084 = and i8 %2083, 1
  %2085 = xor i8 %2084, 1
  store i8 %2085, i8* %21, align 1
  %2086 = xor i32 %2076, 16
  %2087 = xor i32 %2086, %2077
  %2088 = lshr i32 %2087, 4
  %2089 = trunc i32 %2088 to i8
  %2090 = and i8 %2089, 1
  store i8 %2090, i8* %26, align 1
  %2091 = icmp eq i32 %2077, 0
  %2092 = zext i1 %2091 to i8
  store i8 %2092, i8* %29, align 1
  %2093 = lshr i32 %2077, 31
  %2094 = trunc i32 %2093 to i8
  store i8 %2094, i8* %32, align 1
  %2095 = lshr i32 %2076, 31
  %2096 = xor i32 %2093, %2095
  %2097 = add nuw nsw i32 %2096, %2095
  %2098 = icmp eq i32 %2097, 2
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %38, align 1
  %2100 = sext i32 %2077 to i64
  store i64 %2100, i64* %RCX.i913.pre-phi, align 8
  %2101 = add nsw i64 %2100, 12099168
  %2102 = add i64 %storemerge37, 17
  store i64 %2102, i64* %3, align 8
  %2103 = inttoptr i64 %2101 to i8*
  %2104 = load i8, i8* %2103, align 1
  %2105 = zext i8 %2104 to i64
  store i64 %2105, i64* %RAX.i865, align 8
  %2106 = zext i8 %2104 to i32
  store i8 0, i8* %14, align 1
  %2107 = tail call i32 @llvm.ctpop.i32(i32 %2106)
  %2108 = trunc i32 %2107 to i8
  %2109 = and i8 %2108, 1
  %2110 = xor i8 %2109, 1
  store i8 %2110, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2111 = icmp eq i8 %2104, 0
  %2112 = zext i1 %2111 to i8
  store i8 %2112, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v87 = select i1 %2111, i64 26, i64 40
  %2113 = add i64 %storemerge37, %.v87
  store i64 %2113, i64* %3, align 8
  br i1 %2111, label %block_41475e, label %block_.L_41476c

block_41475e:                                     ; preds = %block_.L_414744
  %2114 = add i64 %2072, -20
  %2115 = add i64 %2113, 3
  store i64 %2115, i64* %3, align 8
  %2116 = inttoptr i64 %2114 to i32*
  %2117 = load i32, i32* %2116, align 4
  %2118 = add i32 %2117, 1
  %2119 = zext i32 %2118 to i64
  store i64 %2119, i64* %RAX.i865, align 8
  %2120 = icmp eq i32 %2117, -1
  %2121 = icmp eq i32 %2118, 0
  %2122 = or i1 %2120, %2121
  %2123 = zext i1 %2122 to i8
  store i8 %2123, i8* %14, align 1
  %2124 = and i32 %2118, 255
  %2125 = tail call i32 @llvm.ctpop.i32(i32 %2124)
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  %2128 = xor i8 %2127, 1
  store i8 %2128, i8* %21, align 1
  %2129 = xor i32 %2118, %2117
  %2130 = lshr i32 %2129, 4
  %2131 = trunc i32 %2130 to i8
  %2132 = and i8 %2131, 1
  store i8 %2132, i8* %26, align 1
  %2133 = zext i1 %2121 to i8
  store i8 %2133, i8* %29, align 1
  %2134 = lshr i32 %2118, 31
  %2135 = trunc i32 %2134 to i8
  store i8 %2135, i8* %32, align 1
  %2136 = lshr i32 %2117, 31
  %2137 = xor i32 %2134, %2136
  %2138 = add nuw nsw i32 %2137, %2134
  %2139 = icmp eq i32 %2138, 2
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %38, align 1
  %2141 = add i64 %2113, 9
  store i64 %2141, i64* %3, align 8
  store i32 %2118, i32* %2116, align 4
  %2142 = load i64, i64* %3, align 8
  %2143 = add i64 %2142, 349
  br label %block_.L_4148c4

block_.L_41476c:                                  ; preds = %block_.L_414744
  %2144 = add i64 %2113, 3
  store i64 %2144, i64* %3, align 8
  %2145 = load i32, i32* %2075, align 4
  %2146 = add i32 %2145, -20
  %2147 = zext i32 %2146 to i64
  store i64 %2147, i64* %RAX.i865, align 8
  %2148 = icmp ult i32 %2145, 20
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %14, align 1
  %2150 = and i32 %2146, 255
  %2151 = tail call i32 @llvm.ctpop.i32(i32 %2150)
  %2152 = trunc i32 %2151 to i8
  %2153 = and i8 %2152, 1
  %2154 = xor i8 %2153, 1
  store i8 %2154, i8* %21, align 1
  %2155 = xor i32 %2145, 16
  %2156 = xor i32 %2155, %2146
  %2157 = lshr i32 %2156, 4
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  store i8 %2159, i8* %26, align 1
  %2160 = icmp eq i32 %2146, 0
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %29, align 1
  %2162 = lshr i32 %2146, 31
  %2163 = trunc i32 %2162 to i8
  store i8 %2163, i8* %32, align 1
  %2164 = lshr i32 %2145, 31
  %2165 = xor i32 %2162, %2164
  %2166 = add nuw nsw i32 %2165, %2164
  %2167 = icmp eq i32 %2166, 2
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %38, align 1
  %2169 = sext i32 %2146 to i64
  store i64 %2169, i64* %RCX.i913.pre-phi, align 8
  %2170 = add nsw i64 %2169, 12099168
  %2171 = add i64 %2113, 17
  store i64 %2171, i64* %3, align 8
  %2172 = inttoptr i64 %2170 to i8*
  %2173 = load i8, i8* %2172, align 1
  %2174 = zext i8 %2173 to i64
  store i64 %2174, i64* %RAX.i865, align 8
  %2175 = zext i8 %2173 to i32
  %2176 = add i64 %2072, -12
  %2177 = add i64 %2113, 20
  store i64 %2177, i64* %3, align 8
  %2178 = inttoptr i64 %2176 to i32*
  %2179 = load i32, i32* %2178, align 4
  %2180 = sub i32 %2175, %2179
  %2181 = icmp ult i32 %2175, %2179
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %14, align 1
  %2183 = and i32 %2180, 255
  %2184 = tail call i32 @llvm.ctpop.i32(i32 %2183)
  %2185 = trunc i32 %2184 to i8
  %2186 = and i8 %2185, 1
  %2187 = xor i8 %2186, 1
  store i8 %2187, i8* %21, align 1
  %2188 = xor i32 %2179, %2175
  %2189 = xor i32 %2188, %2180
  %2190 = lshr i32 %2189, 4
  %2191 = trunc i32 %2190 to i8
  %2192 = and i8 %2191, 1
  store i8 %2192, i8* %26, align 1
  %2193 = icmp eq i32 %2180, 0
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %29, align 1
  %2195 = lshr i32 %2180, 31
  %2196 = trunc i32 %2195 to i8
  store i8 %2196, i8* %32, align 1
  %2197 = lshr i32 %2179, 31
  %2198 = add nuw nsw i32 %2195, %2197
  %2199 = icmp eq i32 %2198, 2
  %2200 = zext i1 %2199 to i8
  store i8 %2200, i8* %38, align 1
  %.v88 = select i1 %2193, i64 26, i64 146
  %2201 = add i64 %2113, %.v88
  store i64 %2201, i64* %3, align 8
  br i1 %2193, label %block_414786, label %block_.L_4147fe

block_414786:                                     ; preds = %block_.L_41476c
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %2202 = add i64 %2201, 13
  store i64 %2202, i64* %3, align 8
  %2203 = load i32, i32* %2075, align 4
  %2204 = add i32 %2203, -20
  %2205 = zext i32 %2204 to i64
  store i64 %2205, i64* %RCX.i913.pre-phi, align 8
  %2206 = icmp ult i32 %2203, 20
  %2207 = zext i1 %2206 to i8
  store i8 %2207, i8* %14, align 1
  %2208 = and i32 %2204, 255
  %2209 = tail call i32 @llvm.ctpop.i32(i32 %2208)
  %2210 = trunc i32 %2209 to i8
  %2211 = and i8 %2210, 1
  %2212 = xor i8 %2211, 1
  store i8 %2212, i8* %21, align 1
  %2213 = xor i32 %2203, 16
  %2214 = xor i32 %2213, %2204
  %2215 = lshr i32 %2214, 4
  %2216 = trunc i32 %2215 to i8
  %2217 = and i8 %2216, 1
  store i8 %2217, i8* %26, align 1
  %2218 = icmp eq i32 %2204, 0
  %2219 = zext i1 %2218 to i8
  store i8 %2219, i8* %29, align 1
  %2220 = lshr i32 %2204, 31
  %2221 = trunc i32 %2220 to i8
  store i8 %2221, i8* %32, align 1
  %2222 = lshr i32 %2203, 31
  %2223 = xor i32 %2220, %2222
  %2224 = add nuw nsw i32 %2223, %2222
  %2225 = icmp eq i32 %2224, 2
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %38, align 1
  %RDX.i362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2227 = sext i32 %2204 to i64
  store i64 %2227, i64* %RDX.i362, align 8
  %2228 = shl nsw i64 %2227, 2
  %2229 = add nsw i64 %2228, 11187184
  %2230 = add i64 %2201, 27
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i32*
  %2232 = load i32, i32* %2231, align 4
  %2233 = sext i32 %2232 to i64
  %2234 = mul nsw i64 %2233, 744
  store i64 %2234, i64* %RDX.i362, align 8
  %2235 = lshr i64 %2234, 63
  %2236 = add i64 %2234, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2236, i64* %RAX.i865, align 8
  %2237 = icmp ult i64 %2236, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2238 = icmp ult i64 %2236, %2234
  %2239 = or i1 %2237, %2238
  %2240 = zext i1 %2239 to i8
  store i8 %2240, i8* %14, align 1
  %2241 = trunc i64 %2236 to i32
  %2242 = and i32 %2241, 248
  %2243 = tail call i32 @llvm.ctpop.i32(i32 %2242)
  %2244 = trunc i32 %2243 to i8
  %2245 = and i8 %2244, 1
  %2246 = xor i8 %2245, 1
  store i8 %2246, i8* %21, align 1
  %2247 = xor i64 %2234, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2248 = xor i64 %2247, %2236
  %2249 = lshr i64 %2248, 4
  %2250 = trunc i64 %2249 to i8
  %2251 = and i8 %2250, 1
  store i8 %2251, i8* %26, align 1
  %2252 = icmp eq i64 %2236, 0
  %2253 = zext i1 %2252 to i8
  store i8 %2253, i8* %29, align 1
  %2254 = lshr i64 %2236, 63
  %2255 = trunc i64 %2254 to i8
  store i8 %2255, i8* %32, align 1
  %2256 = xor i64 %2254, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2257 = xor i64 %2254, %2235
  %2258 = add nuw nsw i64 %2256, %2257
  %2259 = icmp eq i64 %2258, 2
  %2260 = zext i1 %2259 to i8
  store i8 %2260, i8* %38, align 1
  %2261 = add i64 %2234, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %2262 = add i64 %2201, 41
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2261 to i32*
  %2264 = load i32, i32* %2263, align 4
  %2265 = add i32 %2264, -2
  %2266 = icmp ult i32 %2264, 2
  %2267 = zext i1 %2266 to i8
  store i8 %2267, i8* %14, align 1
  %2268 = and i32 %2265, 255
  %2269 = tail call i32 @llvm.ctpop.i32(i32 %2268)
  %2270 = trunc i32 %2269 to i8
  %2271 = and i8 %2270, 1
  %2272 = xor i8 %2271, 1
  store i8 %2272, i8* %21, align 1
  %2273 = xor i32 %2265, %2264
  %2274 = lshr i32 %2273, 4
  %2275 = trunc i32 %2274 to i8
  %2276 = and i8 %2275, 1
  store i8 %2276, i8* %26, align 1
  %2277 = icmp eq i32 %2265, 0
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %29, align 1
  %2279 = lshr i32 %2265, 31
  %2280 = trunc i32 %2279 to i8
  store i8 %2280, i8* %32, align 1
  %2281 = lshr i32 %2264, 31
  %2282 = xor i32 %2279, %2281
  %2283 = add nuw nsw i32 %2282, %2281
  %2284 = icmp eq i32 %2283, 2
  %2285 = zext i1 %2284 to i8
  store i8 %2285, i8* %38, align 1
  %2286 = icmp ne i8 %2280, 0
  %2287 = xor i1 %2286, %2284
  %2288 = or i1 %2277, %2287
  %.v104 = select i1 %2288, i64 59, i64 47
  %2289 = add i64 %2201, %.v104
  store i64 %2289, i64* %3, align 8
  br i1 %2288, label %block_.L_4147c1, label %block_4147b5

block_4147b5:                                     ; preds = %block_414786
  %2290 = load i64, i64* %RBP.i, align 8
  %2291 = add i64 %2290, -4
  %2292 = add i64 %2289, 7
  store i64 %2292, i64* %3, align 8
  %2293 = inttoptr i64 %2291 to i32*
  store i32 0, i32* %2293, align 4
  %2294 = load i64, i64* %3, align 8
  %2295 = add i64 %2294, 736
  store i64 %2295, i64* %3, align 8
  br label %block_.L_414a9c

block_.L_4147c1:                                  ; preds = %block_414786
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %2296 = load i64, i64* %RBP.i, align 8
  %2297 = add i64 %2296, -8
  %2298 = add i64 %2289, 13
  store i64 %2298, i64* %3, align 8
  %2299 = inttoptr i64 %2297 to i32*
  %2300 = load i32, i32* %2299, align 4
  %2301 = add i32 %2300, -20
  %2302 = zext i32 %2301 to i64
  store i64 %2302, i64* %RCX.i913.pre-phi, align 8
  %2303 = icmp ult i32 %2300, 20
  %2304 = zext i1 %2303 to i8
  store i8 %2304, i8* %14, align 1
  %2305 = and i32 %2301, 255
  %2306 = tail call i32 @llvm.ctpop.i32(i32 %2305)
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  %2309 = xor i8 %2308, 1
  store i8 %2309, i8* %21, align 1
  %2310 = xor i32 %2300, 16
  %2311 = xor i32 %2310, %2301
  %2312 = lshr i32 %2311, 4
  %2313 = trunc i32 %2312 to i8
  %2314 = and i8 %2313, 1
  store i8 %2314, i8* %26, align 1
  %2315 = icmp eq i32 %2301, 0
  %2316 = zext i1 %2315 to i8
  store i8 %2316, i8* %29, align 1
  %2317 = lshr i32 %2301, 31
  %2318 = trunc i32 %2317 to i8
  store i8 %2318, i8* %32, align 1
  %2319 = lshr i32 %2300, 31
  %2320 = xor i32 %2317, %2319
  %2321 = add nuw nsw i32 %2320, %2319
  %2322 = icmp eq i32 %2321, 2
  %2323 = zext i1 %2322 to i8
  store i8 %2323, i8* %38, align 1
  %2324 = sext i32 %2301 to i64
  store i64 %2324, i64* %RDX.i362, align 8
  %2325 = shl nsw i64 %2324, 2
  %2326 = add nsw i64 %2325, 11187184
  %2327 = add i64 %2289, 27
  store i64 %2327, i64* %3, align 8
  %2328 = inttoptr i64 %2326 to i32*
  %2329 = load i32, i32* %2328, align 4
  %2330 = sext i32 %2329 to i64
  %2331 = mul nsw i64 %2330, 744
  store i64 %2331, i64* %RDX.i362, align 8
  %2332 = lshr i64 %2331, 63
  %2333 = add i64 %2331, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2333, i64* %RAX.i865, align 8
  %2334 = icmp ult i64 %2333, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2335 = icmp ult i64 %2333, %2331
  %2336 = or i1 %2334, %2335
  %2337 = zext i1 %2336 to i8
  store i8 %2337, i8* %14, align 1
  %2338 = trunc i64 %2333 to i32
  %2339 = and i32 %2338, 248
  %2340 = tail call i32 @llvm.ctpop.i32(i32 %2339)
  %2341 = trunc i32 %2340 to i8
  %2342 = and i8 %2341, 1
  %2343 = xor i8 %2342, 1
  store i8 %2343, i8* %21, align 1
  %2344 = xor i64 %2331, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2345 = xor i64 %2344, %2333
  %2346 = lshr i64 %2345, 4
  %2347 = trunc i64 %2346 to i8
  %2348 = and i8 %2347, 1
  store i8 %2348, i8* %26, align 1
  %2349 = icmp eq i64 %2333, 0
  %2350 = zext i1 %2349 to i8
  store i8 %2350, i8* %29, align 1
  %2351 = lshr i64 %2333, 63
  %2352 = trunc i64 %2351 to i8
  store i8 %2352, i8* %32, align 1
  %2353 = xor i64 %2351, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2354 = xor i64 %2351, %2332
  %2355 = add nuw nsw i64 %2353, %2354
  %2356 = icmp eq i64 %2355, 2
  %2357 = zext i1 %2356 to i8
  store i8 %2357, i8* %38, align 1
  %2358 = add i64 %2331, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %2359 = add i64 %2289, 41
  store i64 %2359, i64* %3, align 8
  %2360 = inttoptr i64 %2358 to i32*
  %2361 = load i32, i32* %2360, align 4
  %2362 = add i32 %2361, -2
  %2363 = icmp ult i32 %2361, 2
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %14, align 1
  %2365 = and i32 %2362, 255
  %2366 = tail call i32 @llvm.ctpop.i32(i32 %2365)
  %2367 = trunc i32 %2366 to i8
  %2368 = and i8 %2367, 1
  %2369 = xor i8 %2368, 1
  store i8 %2369, i8* %21, align 1
  %2370 = xor i32 %2362, %2361
  %2371 = lshr i32 %2370, 4
  %2372 = trunc i32 %2371 to i8
  %2373 = and i8 %2372, 1
  store i8 %2373, i8* %26, align 1
  %2374 = icmp eq i32 %2362, 0
  %2375 = zext i1 %2374 to i8
  store i8 %2375, i8* %29, align 1
  %2376 = lshr i32 %2362, 31
  %2377 = trunc i32 %2376 to i8
  store i8 %2377, i8* %32, align 1
  %2378 = lshr i32 %2361, 31
  %2379 = xor i32 %2376, %2378
  %2380 = add nuw nsw i32 %2379, %2378
  %2381 = icmp eq i32 %2380, 2
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %38, align 1
  %.v105 = select i1 %2374, i64 47, i64 56
  %2383 = add i64 %2289, %.v105
  store i64 %2383, i64* %3, align 8
  br i1 %2374, label %block_4147f0, label %block_.L_4147f9

block_4147f0:                                     ; preds = %block_.L_4147c1
  %2384 = load i64, i64* %RBP.i, align 8
  %2385 = add i64 %2384, -28
  %2386 = add i64 %2383, 3
  store i64 %2386, i64* %3, align 8
  %2387 = inttoptr i64 %2385 to i32*
  %2388 = load i32, i32* %2387, align 4
  %2389 = add i32 %2388, 1
  %2390 = zext i32 %2389 to i64
  store i64 %2390, i64* %RAX.i865, align 8
  %2391 = icmp eq i32 %2388, -1
  %2392 = icmp eq i32 %2389, 0
  %2393 = or i1 %2391, %2392
  %2394 = zext i1 %2393 to i8
  store i8 %2394, i8* %14, align 1
  %2395 = and i32 %2389, 255
  %2396 = tail call i32 @llvm.ctpop.i32(i32 %2395)
  %2397 = trunc i32 %2396 to i8
  %2398 = and i8 %2397, 1
  %2399 = xor i8 %2398, 1
  store i8 %2399, i8* %21, align 1
  %2400 = xor i32 %2389, %2388
  %2401 = lshr i32 %2400, 4
  %2402 = trunc i32 %2401 to i8
  %2403 = and i8 %2402, 1
  store i8 %2403, i8* %26, align 1
  %2404 = zext i1 %2392 to i8
  store i8 %2404, i8* %29, align 1
  %2405 = lshr i32 %2389, 31
  %2406 = trunc i32 %2405 to i8
  store i8 %2406, i8* %32, align 1
  %2407 = lshr i32 %2388, 31
  %2408 = xor i32 %2405, %2407
  %2409 = add nuw nsw i32 %2408, %2405
  %2410 = icmp eq i32 %2409, 2
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %38, align 1
  %2412 = add i64 %2383, 9
  store i64 %2412, i64* %3, align 8
  store i32 %2389, i32* %2387, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_4147f9

block_.L_4147f9:                                  ; preds = %block_.L_4147c1, %block_4147f0
  %2413 = phi i64 [ %.pre68, %block_4147f0 ], [ %2383, %block_.L_4147c1 ]
  %2414 = add i64 %2413, 198
  br label %block_.L_4148bf

block_.L_4147fe:                                  ; preds = %block_.L_41476c
  %2415 = add i64 %2201, 3
  store i64 %2415, i64* %3, align 8
  %2416 = load i32, i32* %2075, align 4
  %2417 = add i32 %2416, -20
  %2418 = zext i32 %2417 to i64
  store i64 %2418, i64* %RAX.i865, align 8
  %2419 = icmp ult i32 %2416, 20
  %2420 = zext i1 %2419 to i8
  store i8 %2420, i8* %14, align 1
  %2421 = and i32 %2417, 255
  %2422 = tail call i32 @llvm.ctpop.i32(i32 %2421)
  %2423 = trunc i32 %2422 to i8
  %2424 = and i8 %2423, 1
  %2425 = xor i8 %2424, 1
  store i8 %2425, i8* %21, align 1
  %2426 = xor i32 %2416, 16
  %2427 = xor i32 %2426, %2417
  %2428 = lshr i32 %2427, 4
  %2429 = trunc i32 %2428 to i8
  %2430 = and i8 %2429, 1
  store i8 %2430, i8* %26, align 1
  %2431 = icmp eq i32 %2417, 0
  %2432 = zext i1 %2431 to i8
  store i8 %2432, i8* %29, align 1
  %2433 = lshr i32 %2417, 31
  %2434 = trunc i32 %2433 to i8
  store i8 %2434, i8* %32, align 1
  %2435 = lshr i32 %2416, 31
  %2436 = xor i32 %2433, %2435
  %2437 = add nuw nsw i32 %2436, %2435
  %2438 = icmp eq i32 %2437, 2
  %2439 = zext i1 %2438 to i8
  store i8 %2439, i8* %38, align 1
  %2440 = sext i32 %2417 to i64
  store i64 %2440, i64* %RCX.i913.pre-phi, align 8
  %2441 = add nsw i64 %2440, 12099168
  %2442 = add i64 %2201, 17
  store i64 %2442, i64* %3, align 8
  %2443 = inttoptr i64 %2441 to i8*
  %2444 = load i8, i8* %2443, align 1
  %2445 = zext i8 %2444 to i64
  store i64 %2445, i64* %RAX.i865, align 8
  %2446 = zext i8 %2444 to i32
  %2447 = add i64 %2072, -16
  %2448 = add i64 %2201, 20
  store i64 %2448, i64* %3, align 8
  %2449 = inttoptr i64 %2447 to i32*
  %2450 = load i32, i32* %2449, align 4
  %2451 = sub i32 %2446, %2450
  %2452 = icmp ult i32 %2446, %2450
  %2453 = zext i1 %2452 to i8
  store i8 %2453, i8* %14, align 1
  %2454 = and i32 %2451, 255
  %2455 = tail call i32 @llvm.ctpop.i32(i32 %2454)
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  %2458 = xor i8 %2457, 1
  store i8 %2458, i8* %21, align 1
  %2459 = xor i32 %2450, %2446
  %2460 = xor i32 %2459, %2451
  %2461 = lshr i32 %2460, 4
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  store i8 %2463, i8* %26, align 1
  %2464 = icmp eq i32 %2451, 0
  %2465 = zext i1 %2464 to i8
  store i8 %2465, i8* %29, align 1
  %2466 = lshr i32 %2451, 31
  %2467 = trunc i32 %2466 to i8
  store i8 %2467, i8* %32, align 1
  %2468 = lshr i32 %2450, 31
  %2469 = add nuw nsw i32 %2466, %2468
  %2470 = icmp eq i32 %2469, 2
  %2471 = zext i1 %2470 to i8
  store i8 %2471, i8* %38, align 1
  %.v89 = select i1 %2464, i64 26, i64 188
  %2472 = add i64 %2201, %.v89
  store i64 %2472, i64* %3, align 8
  br i1 %2464, label %block_414818, label %block_.L_4148ba

block_414818:                                     ; preds = %block_.L_4147fe
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %2473 = add i64 %2472, 13
  store i64 %2473, i64* %3, align 8
  %2474 = load i32, i32* %2075, align 4
  %2475 = add i32 %2474, -20
  %2476 = zext i32 %2475 to i64
  store i64 %2476, i64* %RCX.i913.pre-phi, align 8
  %2477 = icmp ult i32 %2474, 20
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %14, align 1
  %2479 = and i32 %2475, 255
  %2480 = tail call i32 @llvm.ctpop.i32(i32 %2479)
  %2481 = trunc i32 %2480 to i8
  %2482 = and i8 %2481, 1
  %2483 = xor i8 %2482, 1
  store i8 %2483, i8* %21, align 1
  %2484 = xor i32 %2474, 16
  %2485 = xor i32 %2484, %2475
  %2486 = lshr i32 %2485, 4
  %2487 = trunc i32 %2486 to i8
  %2488 = and i8 %2487, 1
  store i8 %2488, i8* %26, align 1
  %2489 = icmp eq i32 %2475, 0
  %2490 = zext i1 %2489 to i8
  store i8 %2490, i8* %29, align 1
  %2491 = lshr i32 %2475, 31
  %2492 = trunc i32 %2491 to i8
  store i8 %2492, i8* %32, align 1
  %2493 = lshr i32 %2474, 31
  %2494 = xor i32 %2491, %2493
  %2495 = add nuw nsw i32 %2494, %2493
  %2496 = icmp eq i32 %2495, 2
  %2497 = zext i1 %2496 to i8
  store i8 %2497, i8* %38, align 1
  %RDX.i295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2498 = sext i32 %2475 to i64
  store i64 %2498, i64* %RDX.i295, align 8
  %2499 = shl nsw i64 %2498, 2
  %2500 = add nsw i64 %2499, 11187184
  %2501 = add i64 %2472, 27
  store i64 %2501, i64* %3, align 8
  %2502 = inttoptr i64 %2500 to i32*
  %2503 = load i32, i32* %2502, align 4
  %2504 = sext i32 %2503 to i64
  %2505 = mul nsw i64 %2504, 744
  store i64 %2505, i64* %RDX.i295, align 8
  %2506 = lshr i64 %2505, 63
  %2507 = add i64 %2505, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2507, i64* %RAX.i865, align 8
  %2508 = icmp ult i64 %2507, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2509 = icmp ult i64 %2507, %2505
  %2510 = or i1 %2508, %2509
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %14, align 1
  %2512 = trunc i64 %2507 to i32
  %2513 = and i32 %2512, 248
  %2514 = tail call i32 @llvm.ctpop.i32(i32 %2513)
  %2515 = trunc i32 %2514 to i8
  %2516 = and i8 %2515, 1
  %2517 = xor i8 %2516, 1
  store i8 %2517, i8* %21, align 1
  %2518 = xor i64 %2505, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2519 = xor i64 %2518, %2507
  %2520 = lshr i64 %2519, 4
  %2521 = trunc i64 %2520 to i8
  %2522 = and i8 %2521, 1
  store i8 %2522, i8* %26, align 1
  %2523 = icmp eq i64 %2507, 0
  %2524 = zext i1 %2523 to i8
  store i8 %2524, i8* %29, align 1
  %2525 = lshr i64 %2507, 63
  %2526 = trunc i64 %2525 to i8
  store i8 %2526, i8* %32, align 1
  %2527 = xor i64 %2525, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2528 = xor i64 %2525, %2506
  %2529 = add nuw nsw i64 %2527, %2528
  %2530 = icmp eq i64 %2529, 2
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %38, align 1
  %2532 = add i64 %2505, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %2533 = add i64 %2472, 41
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i32*
  %2535 = load i32, i32* %2534, align 4
  %2536 = add i32 %2535, -1
  %2537 = icmp eq i32 %2535, 0
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %14, align 1
  %2539 = and i32 %2536, 255
  %2540 = tail call i32 @llvm.ctpop.i32(i32 %2539)
  %2541 = trunc i32 %2540 to i8
  %2542 = and i8 %2541, 1
  %2543 = xor i8 %2542, 1
  store i8 %2543, i8* %21, align 1
  %2544 = xor i32 %2536, %2535
  %2545 = lshr i32 %2544, 4
  %2546 = trunc i32 %2545 to i8
  %2547 = and i8 %2546, 1
  store i8 %2547, i8* %26, align 1
  %2548 = icmp eq i32 %2536, 0
  %2549 = zext i1 %2548 to i8
  store i8 %2549, i8* %29, align 1
  %2550 = lshr i32 %2536, 31
  %2551 = trunc i32 %2550 to i8
  store i8 %2551, i8* %32, align 1
  %2552 = lshr i32 %2535, 31
  %2553 = xor i32 %2550, %2552
  %2554 = add nuw nsw i32 %2553, %2552
  %2555 = icmp eq i32 %2554, 2
  %2556 = zext i1 %2555 to i8
  store i8 %2556, i8* %38, align 1
  %.v102 = select i1 %2548, i64 47, i64 162
  %2557 = add i64 %2472, %.v102
  store i64 %2557, i64* %3, align 8
  br i1 %2548, label %block_414847, label %block_.L_4148ba

block_414847:                                     ; preds = %block_414818
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %2558 = load i64, i64* %RBP.i, align 8
  %2559 = add i64 %2558, -8
  %2560 = add i64 %2557, 13
  store i64 %2560, i64* %3, align 8
  %2561 = inttoptr i64 %2559 to i32*
  %2562 = load i32, i32* %2561, align 4
  %2563 = add i32 %2562, -20
  %2564 = zext i32 %2563 to i64
  store i64 %2564, i64* %RCX.i913.pre-phi, align 8
  %2565 = icmp ult i32 %2562, 20
  %2566 = zext i1 %2565 to i8
  store i8 %2566, i8* %14, align 1
  %2567 = and i32 %2563, 255
  %2568 = tail call i32 @llvm.ctpop.i32(i32 %2567)
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  %2571 = xor i8 %2570, 1
  store i8 %2571, i8* %21, align 1
  %2572 = xor i32 %2562, 16
  %2573 = xor i32 %2572, %2563
  %2574 = lshr i32 %2573, 4
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  store i8 %2576, i8* %26, align 1
  %2577 = icmp eq i32 %2563, 0
  %2578 = zext i1 %2577 to i8
  store i8 %2578, i8* %29, align 1
  %2579 = lshr i32 %2563, 31
  %2580 = trunc i32 %2579 to i8
  store i8 %2580, i8* %32, align 1
  %2581 = lshr i32 %2562, 31
  %2582 = xor i32 %2579, %2581
  %2583 = add nuw nsw i32 %2582, %2581
  %2584 = icmp eq i32 %2583, 2
  %2585 = zext i1 %2584 to i8
  store i8 %2585, i8* %38, align 1
  %2586 = sext i32 %2563 to i64
  store i64 %2586, i64* %RDX.i295, align 8
  %2587 = shl nsw i64 %2586, 2
  %2588 = add nsw i64 %2587, 11187184
  %2589 = add i64 %2557, 27
  store i64 %2589, i64* %3, align 8
  %2590 = inttoptr i64 %2588 to i32*
  %2591 = load i32, i32* %2590, align 4
  %2592 = sext i32 %2591 to i64
  %2593 = mul nsw i64 %2592, 744
  store i64 %2593, i64* %RDX.i295, align 8
  %2594 = lshr i64 %2593, 63
  %2595 = add i64 %2593, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2595, i64* %RAX.i865, align 8
  %2596 = icmp ult i64 %2595, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2597 = icmp ult i64 %2595, %2593
  %2598 = or i1 %2596, %2597
  %2599 = zext i1 %2598 to i8
  store i8 %2599, i8* %14, align 1
  %2600 = trunc i64 %2595 to i32
  %2601 = and i32 %2600, 248
  %2602 = tail call i32 @llvm.ctpop.i32(i32 %2601)
  %2603 = trunc i32 %2602 to i8
  %2604 = and i8 %2603, 1
  %2605 = xor i8 %2604, 1
  store i8 %2605, i8* %21, align 1
  %2606 = xor i64 %2593, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2607 = xor i64 %2606, %2595
  %2608 = lshr i64 %2607, 4
  %2609 = trunc i64 %2608 to i8
  %2610 = and i8 %2609, 1
  store i8 %2610, i8* %26, align 1
  %2611 = icmp eq i64 %2595, 0
  %2612 = zext i1 %2611 to i8
  store i8 %2612, i8* %29, align 1
  %2613 = lshr i64 %2595, 63
  %2614 = trunc i64 %2613 to i8
  store i8 %2614, i8* %32, align 1
  %2615 = xor i64 %2613, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2616 = xor i64 %2613, %2594
  %2617 = add nuw nsw i64 %2615, %2616
  %2618 = icmp eq i64 %2617, 2
  %2619 = zext i1 %2618 to i8
  store i8 %2619, i8* %38, align 1
  %2620 = add i64 %2593, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2621 = add i64 %2557, 43
  store i64 %2621, i64* %3, align 8
  %2622 = inttoptr i64 %2620 to i32*
  %2623 = load i32, i32* %2622, align 4
  %2624 = zext i32 %2623 to i64
  store i64 %2624, i64* %RCX.i913.pre-phi, align 8
  %2625 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2626 = sub i32 %2623, %2625
  %2627 = icmp ult i32 %2623, %2625
  %2628 = zext i1 %2627 to i8
  store i8 %2628, i8* %14, align 1
  %2629 = and i32 %2626, 255
  %2630 = tail call i32 @llvm.ctpop.i32(i32 %2629)
  %2631 = trunc i32 %2630 to i8
  %2632 = and i8 %2631, 1
  %2633 = xor i8 %2632, 1
  store i8 %2633, i8* %21, align 1
  %2634 = xor i32 %2625, %2623
  %2635 = xor i32 %2634, %2626
  %2636 = lshr i32 %2635, 4
  %2637 = trunc i32 %2636 to i8
  %2638 = and i8 %2637, 1
  store i8 %2638, i8* %26, align 1
  %2639 = icmp eq i32 %2626, 0
  %2640 = zext i1 %2639 to i8
  store i8 %2640, i8* %29, align 1
  %2641 = lshr i32 %2626, 31
  %2642 = trunc i32 %2641 to i8
  store i8 %2642, i8* %32, align 1
  %2643 = lshr i32 %2623, 31
  %2644 = lshr i32 %2625, 31
  %2645 = xor i32 %2644, %2643
  %2646 = xor i32 %2641, %2643
  %2647 = add nuw nsw i32 %2646, %2645
  %2648 = icmp eq i32 %2647, 2
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %38, align 1
  %.v103 = select i1 %2639, i64 115, i64 56
  %2650 = add i64 %2557, %.v103
  store i64 %2650, i64* %3, align 8
  br i1 %2639, label %block_.L_4148ba, label %block_41487f

block_41487f:                                     ; preds = %block_414847
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %2651 = load i64, i64* %RBP.i, align 8
  %2652 = add i64 %2651, -24
  %2653 = add i64 %2650, 13
  store i64 %2653, i64* %3, align 8
  %2654 = inttoptr i64 %2652 to i32*
  %2655 = load i32, i32* %2654, align 4
  %2656 = add i32 %2655, 1
  %2657 = zext i32 %2656 to i64
  store i64 %2657, i64* %RCX.i913.pre-phi, align 8
  %2658 = icmp eq i32 %2655, -1
  %2659 = icmp eq i32 %2656, 0
  %2660 = or i1 %2658, %2659
  %2661 = zext i1 %2660 to i8
  store i8 %2661, i8* %14, align 1
  %2662 = and i32 %2656, 255
  %2663 = tail call i32 @llvm.ctpop.i32(i32 %2662)
  %2664 = trunc i32 %2663 to i8
  %2665 = and i8 %2664, 1
  %2666 = xor i8 %2665, 1
  store i8 %2666, i8* %21, align 1
  %2667 = xor i32 %2656, %2655
  %2668 = lshr i32 %2667, 4
  %2669 = trunc i32 %2668 to i8
  %2670 = and i8 %2669, 1
  store i8 %2670, i8* %26, align 1
  %2671 = zext i1 %2659 to i8
  store i8 %2671, i8* %29, align 1
  %2672 = lshr i32 %2656, 31
  %2673 = trunc i32 %2672 to i8
  store i8 %2673, i8* %32, align 1
  %2674 = lshr i32 %2655, 31
  %2675 = xor i32 %2672, %2674
  %2676 = add nuw nsw i32 %2675, %2672
  %2677 = icmp eq i32 %2676, 2
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %38, align 1
  %2679 = add i64 %2650, 19
  store i64 %2679, i64* %3, align 8
  store i32 %2656, i32* %2654, align 4
  %2680 = load i64, i64* %3, align 8
  %2681 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2682 = zext i32 %2681 to i64
  store i64 %2682, i64* %RCX.i913.pre-phi, align 8
  %2683 = load i64, i64* %RBP.i, align 8
  %2684 = add i64 %2683, -8
  %2685 = add i64 %2680, 10
  store i64 %2685, i64* %3, align 8
  %2686 = inttoptr i64 %2684 to i32*
  %2687 = load i32, i32* %2686, align 4
  %2688 = add i32 %2687, -20
  %2689 = zext i32 %2688 to i64
  store i64 %2689, i64* %RDX.i295, align 8
  %2690 = icmp ult i32 %2687, 20
  %2691 = zext i1 %2690 to i8
  store i8 %2691, i8* %14, align 1
  %2692 = and i32 %2688, 255
  %2693 = tail call i32 @llvm.ctpop.i32(i32 %2692)
  %2694 = trunc i32 %2693 to i8
  %2695 = and i8 %2694, 1
  %2696 = xor i8 %2695, 1
  store i8 %2696, i8* %21, align 1
  %2697 = xor i32 %2687, 16
  %2698 = xor i32 %2697, %2688
  %2699 = lshr i32 %2698, 4
  %2700 = trunc i32 %2699 to i8
  %2701 = and i8 %2700, 1
  store i8 %2701, i8* %26, align 1
  %2702 = icmp eq i32 %2688, 0
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %29, align 1
  %2704 = lshr i32 %2688, 31
  %2705 = trunc i32 %2704 to i8
  store i8 %2705, i8* %32, align 1
  %2706 = lshr i32 %2687, 31
  %2707 = xor i32 %2704, %2706
  %2708 = add nuw nsw i32 %2707, %2706
  %2709 = icmp eq i32 %2708, 2
  %2710 = zext i1 %2709 to i8
  store i8 %2710, i8* %38, align 1
  %RSI.i242 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %2711 = sext i32 %2688 to i64
  store i64 %2711, i64* %RSI.i242, align 8
  %2712 = shl nsw i64 %2711, 2
  %2713 = add nsw i64 %2712, 11187184
  %2714 = add i64 %2680, 24
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2713 to i32*
  %2716 = load i32, i32* %2715, align 4
  %2717 = sext i32 %2716 to i64
  %2718 = mul nsw i64 %2717, 744
  store i64 %2718, i64* %RSI.i242, align 8
  %2719 = lshr i64 %2718, 63
  %2720 = load i64, i64* %RAX.i865, align 8
  %2721 = add i64 %2680, 34
  store i64 %2721, i64* %3, align 8
  %2722 = add i64 %2718, %2720
  store i64 %2722, i64* %RAX.i865, align 8
  %2723 = icmp ult i64 %2722, %2720
  %2724 = icmp ult i64 %2722, %2718
  %2725 = or i1 %2723, %2724
  %2726 = zext i1 %2725 to i8
  store i8 %2726, i8* %14, align 1
  %2727 = trunc i64 %2722 to i32
  %2728 = and i32 %2727, 255
  %2729 = tail call i32 @llvm.ctpop.i32(i32 %2728)
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = xor i8 %2731, 1
  store i8 %2732, i8* %21, align 1
  %2733 = xor i64 %2718, %2720
  %2734 = xor i64 %2733, %2722
  %2735 = lshr i64 %2734, 4
  %2736 = trunc i64 %2735 to i8
  %2737 = and i8 %2736, 1
  store i8 %2737, i8* %26, align 1
  %2738 = icmp eq i64 %2722, 0
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %29, align 1
  %2740 = lshr i64 %2722, 63
  %2741 = trunc i64 %2740 to i8
  store i8 %2741, i8* %32, align 1
  %2742 = lshr i64 %2720, 63
  %2743 = xor i64 %2740, %2742
  %2744 = xor i64 %2740, %2719
  %2745 = add nuw nsw i64 %2743, %2744
  %2746 = icmp eq i64 %2745, 2
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %38, align 1
  %2748 = add i64 %2722, 740
  %2749 = load i32, i32* %ECX.i910.pre-phi, align 4
  %2750 = add i64 %2680, 40
  store i64 %2750, i64* %3, align 8
  %2751 = inttoptr i64 %2748 to i32*
  store i32 %2749, i32* %2751, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_4148ba

block_.L_4148ba:                                  ; preds = %block_414818, %block_.L_4147fe, %block_41487f, %block_414847
  %2752 = phi i64 [ %.pre69, %block_41487f ], [ %2650, %block_414847 ], [ %2557, %block_414818 ], [ %2472, %block_.L_4147fe ]
  %2753 = add i64 %2752, 5
  store i64 %2753, i64* %3, align 8
  br label %block_.L_4148bf

block_.L_4148bf:                                  ; preds = %block_.L_4148ba, %block_.L_4147f9
  %storemerge41 = phi i64 [ %2414, %block_.L_4147f9 ], [ %2753, %block_.L_4148ba ]
  %2754 = add i64 %storemerge41, 5
  store i64 %2754, i64* %3, align 8
  br label %block_.L_4148c4

block_.L_4148c4:                                  ; preds = %block_.L_4148bf, %block_41475e
  %storemerge38 = phi i64 [ %2143, %block_41475e ], [ %2754, %block_.L_4148bf ]
  %2755 = load i64, i64* %RBP.i, align 8
  %2756 = add i64 %2755, -8
  %2757 = add i64 %storemerge38, 3
  store i64 %2757, i64* %3, align 8
  %2758 = inttoptr i64 %2756 to i32*
  %2759 = load i32, i32* %2758, align 4
  %2760 = add i32 %2759, 1
  %2761 = zext i32 %2760 to i64
  store i64 %2761, i64* %RAX.i865, align 8
  %2762 = icmp eq i32 %2759, -1
  %2763 = icmp eq i32 %2760, 0
  %2764 = or i1 %2762, %2763
  %2765 = zext i1 %2764 to i8
  store i8 %2765, i8* %14, align 1
  %2766 = and i32 %2760, 255
  %2767 = tail call i32 @llvm.ctpop.i32(i32 %2766)
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  %2770 = xor i8 %2769, 1
  store i8 %2770, i8* %21, align 1
  %2771 = xor i32 %2760, %2759
  %2772 = lshr i32 %2771, 4
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  store i8 %2774, i8* %26, align 1
  %2775 = zext i1 %2763 to i8
  store i8 %2775, i8* %29, align 1
  %2776 = lshr i32 %2760, 31
  %2777 = trunc i32 %2776 to i8
  store i8 %2777, i8* %32, align 1
  %2778 = lshr i32 %2759, 31
  %2779 = xor i32 %2776, %2778
  %2780 = add nuw nsw i32 %2779, %2776
  %2781 = icmp eq i32 %2780, 2
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %38, align 1
  %2783 = sext i32 %2760 to i64
  store i64 %2783, i64* %RCX.i913.pre-phi, align 8
  %2784 = add nsw i64 %2783, 12099168
  %2785 = add i64 %storemerge38, 17
  store i64 %2785, i64* %3, align 8
  %2786 = inttoptr i64 %2784 to i8*
  %2787 = load i8, i8* %2786, align 1
  %2788 = zext i8 %2787 to i64
  store i64 %2788, i64* %RAX.i865, align 8
  %2789 = zext i8 %2787 to i32
  store i8 0, i8* %14, align 1
  %2790 = tail call i32 @llvm.ctpop.i32(i32 %2789)
  %2791 = trunc i32 %2790 to i8
  %2792 = and i8 %2791, 1
  %2793 = xor i8 %2792, 1
  store i8 %2793, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2794 = icmp eq i8 %2787, 0
  %2795 = zext i1 %2794 to i8
  store i8 %2795, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v90 = select i1 %2794, i64 26, i64 40
  %2796 = add i64 %storemerge38, %.v90
  store i64 %2796, i64* %3, align 8
  br i1 %2794, label %block_4148de, label %block_.L_4148ec

block_4148de:                                     ; preds = %block_.L_4148c4
  %2797 = add i64 %2755, -20
  %2798 = add i64 %2796, 3
  store i64 %2798, i64* %3, align 8
  %2799 = inttoptr i64 %2797 to i32*
  %2800 = load i32, i32* %2799, align 4
  %2801 = add i32 %2800, 1
  %2802 = zext i32 %2801 to i64
  store i64 %2802, i64* %RAX.i865, align 8
  %2803 = icmp eq i32 %2800, -1
  %2804 = icmp eq i32 %2801, 0
  %2805 = or i1 %2803, %2804
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %14, align 1
  %2807 = and i32 %2801, 255
  %2808 = tail call i32 @llvm.ctpop.i32(i32 %2807)
  %2809 = trunc i32 %2808 to i8
  %2810 = and i8 %2809, 1
  %2811 = xor i8 %2810, 1
  store i8 %2811, i8* %21, align 1
  %2812 = xor i32 %2801, %2800
  %2813 = lshr i32 %2812, 4
  %2814 = trunc i32 %2813 to i8
  %2815 = and i8 %2814, 1
  store i8 %2815, i8* %26, align 1
  %2816 = zext i1 %2804 to i8
  store i8 %2816, i8* %29, align 1
  %2817 = lshr i32 %2801, 31
  %2818 = trunc i32 %2817 to i8
  store i8 %2818, i8* %32, align 1
  %2819 = lshr i32 %2800, 31
  %2820 = xor i32 %2817, %2819
  %2821 = add nuw nsw i32 %2820, %2817
  %2822 = icmp eq i32 %2821, 2
  %2823 = zext i1 %2822 to i8
  store i8 %2823, i8* %38, align 1
  %2824 = add i64 %2796, 9
  store i64 %2824, i64* %3, align 8
  store i32 %2801, i32* %2799, align 4
  %2825 = load i64, i64* %3, align 8
  %2826 = add i64 %2825, 299
  br label %block_.L_414a12

block_.L_4148ec:                                  ; preds = %block_.L_4148c4
  %2827 = add i64 %2796, 3
  store i64 %2827, i64* %3, align 8
  %2828 = load i32, i32* %2758, align 4
  %2829 = add i32 %2828, 1
  %2830 = zext i32 %2829 to i64
  store i64 %2830, i64* %RAX.i865, align 8
  %2831 = icmp eq i32 %2828, -1
  %2832 = icmp eq i32 %2829, 0
  %2833 = or i1 %2831, %2832
  %2834 = zext i1 %2833 to i8
  store i8 %2834, i8* %14, align 1
  %2835 = and i32 %2829, 255
  %2836 = tail call i32 @llvm.ctpop.i32(i32 %2835)
  %2837 = trunc i32 %2836 to i8
  %2838 = and i8 %2837, 1
  %2839 = xor i8 %2838, 1
  store i8 %2839, i8* %21, align 1
  %2840 = xor i32 %2829, %2828
  %2841 = lshr i32 %2840, 4
  %2842 = trunc i32 %2841 to i8
  %2843 = and i8 %2842, 1
  store i8 %2843, i8* %26, align 1
  %2844 = zext i1 %2832 to i8
  store i8 %2844, i8* %29, align 1
  %2845 = lshr i32 %2829, 31
  %2846 = trunc i32 %2845 to i8
  store i8 %2846, i8* %32, align 1
  %2847 = lshr i32 %2828, 31
  %2848 = xor i32 %2845, %2847
  %2849 = add nuw nsw i32 %2848, %2845
  %2850 = icmp eq i32 %2849, 2
  %2851 = zext i1 %2850 to i8
  store i8 %2851, i8* %38, align 1
  %2852 = sext i32 %2829 to i64
  store i64 %2852, i64* %RCX.i913.pre-phi, align 8
  %2853 = add nsw i64 %2852, 12099168
  %2854 = add i64 %2796, 17
  store i64 %2854, i64* %3, align 8
  %2855 = inttoptr i64 %2853 to i8*
  %2856 = load i8, i8* %2855, align 1
  %2857 = zext i8 %2856 to i64
  store i64 %2857, i64* %RAX.i865, align 8
  %2858 = zext i8 %2856 to i32
  %2859 = add i64 %2755, -12
  %2860 = add i64 %2796, 20
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i32*
  %2862 = load i32, i32* %2861, align 4
  %2863 = sub i32 %2858, %2862
  %2864 = icmp ult i32 %2858, %2862
  %2865 = zext i1 %2864 to i8
  store i8 %2865, i8* %14, align 1
  %2866 = and i32 %2863, 255
  %2867 = tail call i32 @llvm.ctpop.i32(i32 %2866)
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  %2870 = xor i8 %2869, 1
  store i8 %2870, i8* %21, align 1
  %2871 = xor i32 %2862, %2858
  %2872 = xor i32 %2871, %2863
  %2873 = lshr i32 %2872, 4
  %2874 = trunc i32 %2873 to i8
  %2875 = and i8 %2874, 1
  store i8 %2875, i8* %26, align 1
  %2876 = icmp eq i32 %2863, 0
  %2877 = zext i1 %2876 to i8
  store i8 %2877, i8* %29, align 1
  %2878 = lshr i32 %2863, 31
  %2879 = trunc i32 %2878 to i8
  store i8 %2879, i8* %32, align 1
  %2880 = lshr i32 %2862, 31
  %2881 = add nuw nsw i32 %2878, %2880
  %2882 = icmp eq i32 %2881, 2
  %2883 = zext i1 %2882 to i8
  store i8 %2883, i8* %38, align 1
  %.v91 = select i1 %2876, i64 26, i64 146
  %2884 = add i64 %2796, %.v91
  store i64 %2884, i64* %3, align 8
  br i1 %2876, label %block_414906, label %block_.L_41497e

block_414906:                                     ; preds = %block_.L_4148ec
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %2885 = add i64 %2884, 13
  store i64 %2885, i64* %3, align 8
  %2886 = load i32, i32* %2758, align 4
  %2887 = add i32 %2886, 1
  %2888 = zext i32 %2887 to i64
  store i64 %2888, i64* %RCX.i913.pre-phi, align 8
  %2889 = icmp eq i32 %2886, -1
  %2890 = icmp eq i32 %2887, 0
  %2891 = or i1 %2889, %2890
  %2892 = zext i1 %2891 to i8
  store i8 %2892, i8* %14, align 1
  %2893 = and i32 %2887, 255
  %2894 = tail call i32 @llvm.ctpop.i32(i32 %2893)
  %2895 = trunc i32 %2894 to i8
  %2896 = and i8 %2895, 1
  %2897 = xor i8 %2896, 1
  store i8 %2897, i8* %21, align 1
  %2898 = xor i32 %2887, %2886
  %2899 = lshr i32 %2898, 4
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  store i8 %2901, i8* %26, align 1
  %2902 = zext i1 %2890 to i8
  store i8 %2902, i8* %29, align 1
  %2903 = lshr i32 %2887, 31
  %2904 = trunc i32 %2903 to i8
  store i8 %2904, i8* %32, align 1
  %2905 = lshr i32 %2886, 31
  %2906 = xor i32 %2903, %2905
  %2907 = add nuw nsw i32 %2906, %2903
  %2908 = icmp eq i32 %2907, 2
  %2909 = zext i1 %2908 to i8
  store i8 %2909, i8* %38, align 1
  %RDX.i183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2910 = sext i32 %2887 to i64
  store i64 %2910, i64* %RDX.i183, align 8
  %2911 = shl nsw i64 %2910, 2
  %2912 = add nsw i64 %2911, 11187184
  %2913 = add i64 %2884, 27
  store i64 %2913, i64* %3, align 8
  %2914 = inttoptr i64 %2912 to i32*
  %2915 = load i32, i32* %2914, align 4
  %2916 = sext i32 %2915 to i64
  %2917 = mul nsw i64 %2916, 744
  store i64 %2917, i64* %RDX.i183, align 8
  %2918 = lshr i64 %2917, 63
  %2919 = add i64 %2917, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2919, i64* %RAX.i865, align 8
  %2920 = icmp ult i64 %2919, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2921 = icmp ult i64 %2919, %2917
  %2922 = or i1 %2920, %2921
  %2923 = zext i1 %2922 to i8
  store i8 %2923, i8* %14, align 1
  %2924 = trunc i64 %2919 to i32
  %2925 = and i32 %2924, 248
  %2926 = tail call i32 @llvm.ctpop.i32(i32 %2925)
  %2927 = trunc i32 %2926 to i8
  %2928 = and i8 %2927, 1
  %2929 = xor i8 %2928, 1
  store i8 %2929, i8* %21, align 1
  %2930 = xor i64 %2917, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2931 = xor i64 %2930, %2919
  %2932 = lshr i64 %2931, 4
  %2933 = trunc i64 %2932 to i8
  %2934 = and i8 %2933, 1
  store i8 %2934, i8* %26, align 1
  %2935 = icmp eq i64 %2919, 0
  %2936 = zext i1 %2935 to i8
  store i8 %2936, i8* %29, align 1
  %2937 = lshr i64 %2919, 63
  %2938 = trunc i64 %2937 to i8
  store i8 %2938, i8* %32, align 1
  %2939 = xor i64 %2937, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2940 = xor i64 %2937, %2918
  %2941 = add nuw nsw i64 %2939, %2940
  %2942 = icmp eq i64 %2941, 2
  %2943 = zext i1 %2942 to i8
  store i8 %2943, i8* %38, align 1
  %2944 = add i64 %2917, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %2945 = add i64 %2884, 41
  store i64 %2945, i64* %3, align 8
  %2946 = inttoptr i64 %2944 to i32*
  %2947 = load i32, i32* %2946, align 4
  %2948 = add i32 %2947, -2
  %2949 = icmp ult i32 %2947, 2
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %14, align 1
  %2951 = and i32 %2948, 255
  %2952 = tail call i32 @llvm.ctpop.i32(i32 %2951)
  %2953 = trunc i32 %2952 to i8
  %2954 = and i8 %2953, 1
  %2955 = xor i8 %2954, 1
  store i8 %2955, i8* %21, align 1
  %2956 = xor i32 %2948, %2947
  %2957 = lshr i32 %2956, 4
  %2958 = trunc i32 %2957 to i8
  %2959 = and i8 %2958, 1
  store i8 %2959, i8* %26, align 1
  %2960 = icmp eq i32 %2948, 0
  %2961 = zext i1 %2960 to i8
  store i8 %2961, i8* %29, align 1
  %2962 = lshr i32 %2948, 31
  %2963 = trunc i32 %2962 to i8
  store i8 %2963, i8* %32, align 1
  %2964 = lshr i32 %2947, 31
  %2965 = xor i32 %2962, %2964
  %2966 = add nuw nsw i32 %2965, %2964
  %2967 = icmp eq i32 %2966, 2
  %2968 = zext i1 %2967 to i8
  store i8 %2968, i8* %38, align 1
  %2969 = icmp ne i8 %2963, 0
  %2970 = xor i1 %2969, %2967
  %2971 = or i1 %2960, %2970
  %.v100 = select i1 %2971, i64 59, i64 47
  %2972 = add i64 %2884, %.v100
  store i64 %2972, i64* %3, align 8
  br i1 %2971, label %block_.L_414941, label %block_414935

block_414935:                                     ; preds = %block_414906
  %2973 = load i64, i64* %RBP.i, align 8
  %2974 = add i64 %2973, -4
  %2975 = add i64 %2972, 7
  store i64 %2975, i64* %3, align 8
  %2976 = inttoptr i64 %2974 to i32*
  store i32 0, i32* %2976, align 4
  %2977 = load i64, i64* %3, align 8
  %2978 = add i64 %2977, 352
  store i64 %2978, i64* %3, align 8
  br label %block_.L_414a9c

block_.L_414941:                                  ; preds = %block_414906
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %2979 = load i64, i64* %RBP.i, align 8
  %2980 = add i64 %2979, -8
  %2981 = add i64 %2972, 13
  store i64 %2981, i64* %3, align 8
  %2982 = inttoptr i64 %2980 to i32*
  %2983 = load i32, i32* %2982, align 4
  %2984 = add i32 %2983, 1
  %2985 = zext i32 %2984 to i64
  store i64 %2985, i64* %RCX.i913.pre-phi, align 8
  %2986 = icmp eq i32 %2983, -1
  %2987 = icmp eq i32 %2984, 0
  %2988 = or i1 %2986, %2987
  %2989 = zext i1 %2988 to i8
  store i8 %2989, i8* %14, align 1
  %2990 = and i32 %2984, 255
  %2991 = tail call i32 @llvm.ctpop.i32(i32 %2990)
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  %2994 = xor i8 %2993, 1
  store i8 %2994, i8* %21, align 1
  %2995 = xor i32 %2984, %2983
  %2996 = lshr i32 %2995, 4
  %2997 = trunc i32 %2996 to i8
  %2998 = and i8 %2997, 1
  store i8 %2998, i8* %26, align 1
  %2999 = zext i1 %2987 to i8
  store i8 %2999, i8* %29, align 1
  %3000 = lshr i32 %2984, 31
  %3001 = trunc i32 %3000 to i8
  store i8 %3001, i8* %32, align 1
  %3002 = lshr i32 %2983, 31
  %3003 = xor i32 %3000, %3002
  %3004 = add nuw nsw i32 %3003, %3000
  %3005 = icmp eq i32 %3004, 2
  %3006 = zext i1 %3005 to i8
  store i8 %3006, i8* %38, align 1
  %3007 = sext i32 %2984 to i64
  store i64 %3007, i64* %RDX.i183, align 8
  %3008 = shl nsw i64 %3007, 2
  %3009 = add nsw i64 %3008, 11187184
  %3010 = add i64 %2972, 27
  store i64 %3010, i64* %3, align 8
  %3011 = inttoptr i64 %3009 to i32*
  %3012 = load i32, i32* %3011, align 4
  %3013 = sext i32 %3012 to i64
  %3014 = mul nsw i64 %3013, 744
  store i64 %3014, i64* %RDX.i183, align 8
  %3015 = lshr i64 %3014, 63
  %3016 = add i64 %3014, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3016, i64* %RAX.i865, align 8
  %3017 = icmp ult i64 %3016, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3018 = icmp ult i64 %3016, %3014
  %3019 = or i1 %3017, %3018
  %3020 = zext i1 %3019 to i8
  store i8 %3020, i8* %14, align 1
  %3021 = trunc i64 %3016 to i32
  %3022 = and i32 %3021, 248
  %3023 = tail call i32 @llvm.ctpop.i32(i32 %3022)
  %3024 = trunc i32 %3023 to i8
  %3025 = and i8 %3024, 1
  %3026 = xor i8 %3025, 1
  store i8 %3026, i8* %21, align 1
  %3027 = xor i64 %3014, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3028 = xor i64 %3027, %3016
  %3029 = lshr i64 %3028, 4
  %3030 = trunc i64 %3029 to i8
  %3031 = and i8 %3030, 1
  store i8 %3031, i8* %26, align 1
  %3032 = icmp eq i64 %3016, 0
  %3033 = zext i1 %3032 to i8
  store i8 %3033, i8* %29, align 1
  %3034 = lshr i64 %3016, 63
  %3035 = trunc i64 %3034 to i8
  store i8 %3035, i8* %32, align 1
  %3036 = xor i64 %3034, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3037 = xor i64 %3034, %3015
  %3038 = add nuw nsw i64 %3036, %3037
  %3039 = icmp eq i64 %3038, 2
  %3040 = zext i1 %3039 to i8
  store i8 %3040, i8* %38, align 1
  %3041 = add i64 %3014, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %3042 = add i64 %2972, 41
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3041 to i32*
  %3044 = load i32, i32* %3043, align 4
  %3045 = add i32 %3044, -2
  %3046 = icmp ult i32 %3044, 2
  %3047 = zext i1 %3046 to i8
  store i8 %3047, i8* %14, align 1
  %3048 = and i32 %3045, 255
  %3049 = tail call i32 @llvm.ctpop.i32(i32 %3048)
  %3050 = trunc i32 %3049 to i8
  %3051 = and i8 %3050, 1
  %3052 = xor i8 %3051, 1
  store i8 %3052, i8* %21, align 1
  %3053 = xor i32 %3045, %3044
  %3054 = lshr i32 %3053, 4
  %3055 = trunc i32 %3054 to i8
  %3056 = and i8 %3055, 1
  store i8 %3056, i8* %26, align 1
  %3057 = icmp eq i32 %3045, 0
  %3058 = zext i1 %3057 to i8
  store i8 %3058, i8* %29, align 1
  %3059 = lshr i32 %3045, 31
  %3060 = trunc i32 %3059 to i8
  store i8 %3060, i8* %32, align 1
  %3061 = lshr i32 %3044, 31
  %3062 = xor i32 %3059, %3061
  %3063 = add nuw nsw i32 %3062, %3061
  %3064 = icmp eq i32 %3063, 2
  %3065 = zext i1 %3064 to i8
  store i8 %3065, i8* %38, align 1
  %.v101 = select i1 %3057, i64 47, i64 56
  %3066 = add i64 %2972, %.v101
  store i64 %3066, i64* %3, align 8
  br i1 %3057, label %block_414970, label %block_.L_414979

block_414970:                                     ; preds = %block_.L_414941
  %3067 = load i64, i64* %RBP.i, align 8
  %3068 = add i64 %3067, -28
  %3069 = add i64 %3066, 3
  store i64 %3069, i64* %3, align 8
  %3070 = inttoptr i64 %3068 to i32*
  %3071 = load i32, i32* %3070, align 4
  %3072 = add i32 %3071, 1
  %3073 = zext i32 %3072 to i64
  store i64 %3073, i64* %RAX.i865, align 8
  %3074 = icmp eq i32 %3071, -1
  %3075 = icmp eq i32 %3072, 0
  %3076 = or i1 %3074, %3075
  %3077 = zext i1 %3076 to i8
  store i8 %3077, i8* %14, align 1
  %3078 = and i32 %3072, 255
  %3079 = tail call i32 @llvm.ctpop.i32(i32 %3078)
  %3080 = trunc i32 %3079 to i8
  %3081 = and i8 %3080, 1
  %3082 = xor i8 %3081, 1
  store i8 %3082, i8* %21, align 1
  %3083 = xor i32 %3072, %3071
  %3084 = lshr i32 %3083, 4
  %3085 = trunc i32 %3084 to i8
  %3086 = and i8 %3085, 1
  store i8 %3086, i8* %26, align 1
  %3087 = zext i1 %3075 to i8
  store i8 %3087, i8* %29, align 1
  %3088 = lshr i32 %3072, 31
  %3089 = trunc i32 %3088 to i8
  store i8 %3089, i8* %32, align 1
  %3090 = lshr i32 %3071, 31
  %3091 = xor i32 %3088, %3090
  %3092 = add nuw nsw i32 %3091, %3088
  %3093 = icmp eq i32 %3092, 2
  %3094 = zext i1 %3093 to i8
  store i8 %3094, i8* %38, align 1
  %3095 = add i64 %3066, 9
  store i64 %3095, i64* %3, align 8
  store i32 %3072, i32* %3070, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_414979

block_.L_414979:                                  ; preds = %block_.L_414941, %block_414970
  %3096 = phi i64 [ %.pre70, %block_414970 ], [ %3066, %block_.L_414941 ]
  %3097 = add i64 %3096, 148
  br label %block_.L_414a0d

block_.L_41497e:                                  ; preds = %block_.L_4148ec
  %3098 = add i64 %2884, 3
  store i64 %3098, i64* %3, align 8
  %3099 = load i32, i32* %2758, align 4
  %3100 = add i32 %3099, 1
  %3101 = zext i32 %3100 to i64
  store i64 %3101, i64* %RAX.i865, align 8
  %3102 = icmp eq i32 %3099, -1
  %3103 = icmp eq i32 %3100, 0
  %3104 = or i1 %3102, %3103
  %3105 = zext i1 %3104 to i8
  store i8 %3105, i8* %14, align 1
  %3106 = and i32 %3100, 255
  %3107 = tail call i32 @llvm.ctpop.i32(i32 %3106)
  %3108 = trunc i32 %3107 to i8
  %3109 = and i8 %3108, 1
  %3110 = xor i8 %3109, 1
  store i8 %3110, i8* %21, align 1
  %3111 = xor i32 %3100, %3099
  %3112 = lshr i32 %3111, 4
  %3113 = trunc i32 %3112 to i8
  %3114 = and i8 %3113, 1
  store i8 %3114, i8* %26, align 1
  %3115 = zext i1 %3103 to i8
  store i8 %3115, i8* %29, align 1
  %3116 = lshr i32 %3100, 31
  %3117 = trunc i32 %3116 to i8
  store i8 %3117, i8* %32, align 1
  %3118 = lshr i32 %3099, 31
  %3119 = xor i32 %3116, %3118
  %3120 = add nuw nsw i32 %3119, %3116
  %3121 = icmp eq i32 %3120, 2
  %3122 = zext i1 %3121 to i8
  store i8 %3122, i8* %38, align 1
  %3123 = sext i32 %3100 to i64
  store i64 %3123, i64* %RCX.i913.pre-phi, align 8
  %3124 = add nsw i64 %3123, 12099168
  %3125 = add i64 %2884, 17
  store i64 %3125, i64* %3, align 8
  %3126 = inttoptr i64 %3124 to i8*
  %3127 = load i8, i8* %3126, align 1
  %3128 = zext i8 %3127 to i64
  store i64 %3128, i64* %RAX.i865, align 8
  %3129 = zext i8 %3127 to i32
  %3130 = add i64 %2755, -16
  %3131 = add i64 %2884, 20
  store i64 %3131, i64* %3, align 8
  %3132 = inttoptr i64 %3130 to i32*
  %3133 = load i32, i32* %3132, align 4
  %3134 = sub i32 %3129, %3133
  %3135 = icmp ult i32 %3129, %3133
  %3136 = zext i1 %3135 to i8
  store i8 %3136, i8* %14, align 1
  %3137 = and i32 %3134, 255
  %3138 = tail call i32 @llvm.ctpop.i32(i32 %3137)
  %3139 = trunc i32 %3138 to i8
  %3140 = and i8 %3139, 1
  %3141 = xor i8 %3140, 1
  store i8 %3141, i8* %21, align 1
  %3142 = xor i32 %3133, %3129
  %3143 = xor i32 %3142, %3134
  %3144 = lshr i32 %3143, 4
  %3145 = trunc i32 %3144 to i8
  %3146 = and i8 %3145, 1
  store i8 %3146, i8* %26, align 1
  %3147 = icmp eq i32 %3134, 0
  %3148 = zext i1 %3147 to i8
  store i8 %3148, i8* %29, align 1
  %3149 = lshr i32 %3134, 31
  %3150 = trunc i32 %3149 to i8
  store i8 %3150, i8* %32, align 1
  %3151 = lshr i32 %3133, 31
  %3152 = add nuw nsw i32 %3149, %3151
  %3153 = icmp eq i32 %3152, 2
  %3154 = zext i1 %3153 to i8
  store i8 %3154, i8* %38, align 1
  %.v92 = select i1 %3147, i64 26, i64 138
  %3155 = add i64 %2884, %.v92
  store i64 %3155, i64* %3, align 8
  br i1 %3147, label %block_414998, label %block_.L_414a08

block_414998:                                     ; preds = %block_.L_41497e
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %3156 = add i64 %3155, 13
  store i64 %3156, i64* %3, align 8
  %3157 = load i32, i32* %2758, align 4
  %3158 = add i32 %3157, 1
  %3159 = zext i32 %3158 to i64
  store i64 %3159, i64* %RCX.i913.pre-phi, align 8
  %3160 = icmp eq i32 %3157, -1
  %3161 = icmp eq i32 %3158, 0
  %3162 = or i1 %3160, %3161
  %3163 = zext i1 %3162 to i8
  store i8 %3163, i8* %14, align 1
  %3164 = and i32 %3158, 255
  %3165 = tail call i32 @llvm.ctpop.i32(i32 %3164)
  %3166 = trunc i32 %3165 to i8
  %3167 = and i8 %3166, 1
  %3168 = xor i8 %3167, 1
  store i8 %3168, i8* %21, align 1
  %3169 = xor i32 %3158, %3157
  %3170 = lshr i32 %3169, 4
  %3171 = trunc i32 %3170 to i8
  %3172 = and i8 %3171, 1
  store i8 %3172, i8* %26, align 1
  %3173 = zext i1 %3161 to i8
  store i8 %3173, i8* %29, align 1
  %3174 = lshr i32 %3158, 31
  %3175 = trunc i32 %3174 to i8
  store i8 %3175, i8* %32, align 1
  %3176 = lshr i32 %3157, 31
  %3177 = xor i32 %3174, %3176
  %3178 = add nuw nsw i32 %3177, %3174
  %3179 = icmp eq i32 %3178, 2
  %3180 = zext i1 %3179 to i8
  store i8 %3180, i8* %38, align 1
  %RDX.i116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3181 = sext i32 %3158 to i64
  store i64 %3181, i64* %RDX.i116, align 8
  %3182 = shl nsw i64 %3181, 2
  %3183 = add nsw i64 %3182, 11187184
  %3184 = add i64 %3155, 27
  store i64 %3184, i64* %3, align 8
  %3185 = inttoptr i64 %3183 to i32*
  %3186 = load i32, i32* %3185, align 4
  %3187 = sext i32 %3186 to i64
  %3188 = mul nsw i64 %3187, 744
  store i64 %3188, i64* %RDX.i116, align 8
  %3189 = lshr i64 %3188, 63
  %3190 = add i64 %3188, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3190, i64* %RAX.i865, align 8
  %3191 = icmp ult i64 %3190, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3192 = icmp ult i64 %3190, %3188
  %3193 = or i1 %3191, %3192
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %14, align 1
  %3195 = trunc i64 %3190 to i32
  %3196 = and i32 %3195, 248
  %3197 = tail call i32 @llvm.ctpop.i32(i32 %3196)
  %3198 = trunc i32 %3197 to i8
  %3199 = and i8 %3198, 1
  %3200 = xor i8 %3199, 1
  store i8 %3200, i8* %21, align 1
  %3201 = xor i64 %3188, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3202 = xor i64 %3201, %3190
  %3203 = lshr i64 %3202, 4
  %3204 = trunc i64 %3203 to i8
  %3205 = and i8 %3204, 1
  store i8 %3205, i8* %26, align 1
  %3206 = icmp eq i64 %3190, 0
  %3207 = zext i1 %3206 to i8
  store i8 %3207, i8* %29, align 1
  %3208 = lshr i64 %3190, 63
  %3209 = trunc i64 %3208 to i8
  store i8 %3209, i8* %32, align 1
  %3210 = xor i64 %3208, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3211 = xor i64 %3208, %3189
  %3212 = add nuw nsw i64 %3210, %3211
  %3213 = icmp eq i64 %3212, 2
  %3214 = zext i1 %3213 to i8
  store i8 %3214, i8* %38, align 1
  %3215 = add i64 %3188, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %3216 = add i64 %3155, 41
  store i64 %3216, i64* %3, align 8
  %3217 = inttoptr i64 %3215 to i32*
  %3218 = load i32, i32* %3217, align 4
  %3219 = add i32 %3218, -1
  %3220 = icmp eq i32 %3218, 0
  %3221 = zext i1 %3220 to i8
  store i8 %3221, i8* %14, align 1
  %3222 = and i32 %3219, 255
  %3223 = tail call i32 @llvm.ctpop.i32(i32 %3222)
  %3224 = trunc i32 %3223 to i8
  %3225 = and i8 %3224, 1
  %3226 = xor i8 %3225, 1
  store i8 %3226, i8* %21, align 1
  %3227 = xor i32 %3219, %3218
  %3228 = lshr i32 %3227, 4
  %3229 = trunc i32 %3228 to i8
  %3230 = and i8 %3229, 1
  store i8 %3230, i8* %26, align 1
  %3231 = icmp eq i32 %3219, 0
  %3232 = zext i1 %3231 to i8
  store i8 %3232, i8* %29, align 1
  %3233 = lshr i32 %3219, 31
  %3234 = trunc i32 %3233 to i8
  store i8 %3234, i8* %32, align 1
  %3235 = lshr i32 %3218, 31
  %3236 = xor i32 %3233, %3235
  %3237 = add nuw nsw i32 %3236, %3235
  %3238 = icmp eq i32 %3237, 2
  %3239 = zext i1 %3238 to i8
  store i8 %3239, i8* %38, align 1
  %.v98 = select i1 %3231, i64 47, i64 112
  %3240 = add i64 %3155, %.v98
  store i64 %3240, i64* %3, align 8
  br i1 %3231, label %block_4149c7, label %block_.L_414a08

block_4149c7:                                     ; preds = %block_414998
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i865, align 8
  %3241 = load i64, i64* %RBP.i, align 8
  %3242 = add i64 %3241, -8
  %3243 = add i64 %3240, 13
  store i64 %3243, i64* %3, align 8
  %3244 = inttoptr i64 %3242 to i32*
  %3245 = load i32, i32* %3244, align 4
  %3246 = add i32 %3245, 1
  %3247 = zext i32 %3246 to i64
  store i64 %3247, i64* %RCX.i913.pre-phi, align 8
  %3248 = icmp eq i32 %3245, -1
  %3249 = icmp eq i32 %3246, 0
  %3250 = or i1 %3248, %3249
  %3251 = zext i1 %3250 to i8
  store i8 %3251, i8* %14, align 1
  %3252 = and i32 %3246, 255
  %3253 = tail call i32 @llvm.ctpop.i32(i32 %3252)
  %3254 = trunc i32 %3253 to i8
  %3255 = and i8 %3254, 1
  %3256 = xor i8 %3255, 1
  store i8 %3256, i8* %21, align 1
  %3257 = xor i32 %3246, %3245
  %3258 = lshr i32 %3257, 4
  %3259 = trunc i32 %3258 to i8
  %3260 = and i8 %3259, 1
  store i8 %3260, i8* %26, align 1
  %3261 = zext i1 %3249 to i8
  store i8 %3261, i8* %29, align 1
  %3262 = lshr i32 %3246, 31
  %3263 = trunc i32 %3262 to i8
  store i8 %3263, i8* %32, align 1
  %3264 = lshr i32 %3245, 31
  %3265 = xor i32 %3262, %3264
  %3266 = add nuw nsw i32 %3265, %3262
  %3267 = icmp eq i32 %3266, 2
  %3268 = zext i1 %3267 to i8
  store i8 %3268, i8* %38, align 1
  %3269 = sext i32 %3246 to i64
  store i64 %3269, i64* %RDX.i116, align 8
  %3270 = shl nsw i64 %3269, 2
  %3271 = add nsw i64 %3270, 11187184
  %3272 = add i64 %3240, 27
  store i64 %3272, i64* %3, align 8
  %3273 = inttoptr i64 %3271 to i32*
  %3274 = load i32, i32* %3273, align 4
  %3275 = sext i32 %3274 to i64
  %3276 = mul nsw i64 %3275, 744
  store i64 %3276, i64* %RDX.i116, align 8
  %3277 = lshr i64 %3276, 63
  %3278 = add i64 %3276, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3278, i64* %RAX.i865, align 8
  %3279 = icmp ult i64 %3278, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3280 = icmp ult i64 %3278, %3276
  %3281 = or i1 %3279, %3280
  %3282 = zext i1 %3281 to i8
  store i8 %3282, i8* %14, align 1
  %3283 = trunc i64 %3278 to i32
  %3284 = and i32 %3283, 248
  %3285 = tail call i32 @llvm.ctpop.i32(i32 %3284)
  %3286 = trunc i32 %3285 to i8
  %3287 = and i8 %3286, 1
  %3288 = xor i8 %3287, 1
  store i8 %3288, i8* %21, align 1
  %3289 = xor i64 %3276, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3290 = xor i64 %3289, %3278
  %3291 = lshr i64 %3290, 4
  %3292 = trunc i64 %3291 to i8
  %3293 = and i8 %3292, 1
  store i8 %3293, i8* %26, align 1
  %3294 = icmp eq i64 %3278, 0
  %3295 = zext i1 %3294 to i8
  store i8 %3295, i8* %29, align 1
  %3296 = lshr i64 %3278, 63
  %3297 = trunc i64 %3296 to i8
  store i8 %3297, i8* %32, align 1
  %3298 = xor i64 %3296, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3299 = xor i64 %3296, %3277
  %3300 = add nuw nsw i64 %3298, %3299
  %3301 = icmp eq i64 %3300, 2
  %3302 = zext i1 %3301 to i8
  store i8 %3302, i8* %38, align 1
  %3303 = add i64 %3276, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %3304 = add i64 %3240, 43
  store i64 %3304, i64* %3, align 8
  %3305 = inttoptr i64 %3303 to i32*
  %3306 = load i32, i32* %3305, align 4
  %3307 = zext i32 %3306 to i64
  store i64 %3307, i64* %RCX.i913.pre-phi, align 8
  %3308 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %3309 = sub i32 %3306, %3308
  %3310 = icmp ult i32 %3306, %3308
  %3311 = zext i1 %3310 to i8
  store i8 %3311, i8* %14, align 1
  %3312 = and i32 %3309, 255
  %3313 = tail call i32 @llvm.ctpop.i32(i32 %3312)
  %3314 = trunc i32 %3313 to i8
  %3315 = and i8 %3314, 1
  %3316 = xor i8 %3315, 1
  store i8 %3316, i8* %21, align 1
  %3317 = xor i32 %3308, %3306
  %3318 = xor i32 %3317, %3309
  %3319 = lshr i32 %3318, 4
  %3320 = trunc i32 %3319 to i8
  %3321 = and i8 %3320, 1
  store i8 %3321, i8* %26, align 1
  %3322 = icmp eq i32 %3309, 0
  %3323 = zext i1 %3322 to i8
  store i8 %3323, i8* %29, align 1
  %3324 = lshr i32 %3309, 31
  %3325 = trunc i32 %3324 to i8
  store i8 %3325, i8* %32, align 1
  %3326 = lshr i32 %3306, 31
  %3327 = lshr i32 %3308, 31
  %3328 = xor i32 %3327, %3326
  %3329 = xor i32 %3324, %3326
  %3330 = add nuw nsw i32 %3329, %3328
  %3331 = icmp eq i32 %3330, 2
  %3332 = zext i1 %3331 to i8
  store i8 %3332, i8* %38, align 1
  %.v99 = select i1 %3322, i64 65, i64 56
  %3333 = add i64 %3240, %.v99
  store i64 %3333, i64* %3, align 8
  br i1 %3322, label %block_.L_414a08, label %block_4149ff

block_4149ff:                                     ; preds = %block_4149c7
  %3334 = load i64, i64* %RBP.i, align 8
  %3335 = add i64 %3334, -24
  %3336 = add i64 %3333, 3
  store i64 %3336, i64* %3, align 8
  %3337 = inttoptr i64 %3335 to i32*
  %3338 = load i32, i32* %3337, align 4
  %3339 = add i32 %3338, 1
  %3340 = zext i32 %3339 to i64
  store i64 %3340, i64* %RAX.i865, align 8
  %3341 = icmp eq i32 %3338, -1
  %3342 = icmp eq i32 %3339, 0
  %3343 = or i1 %3341, %3342
  %3344 = zext i1 %3343 to i8
  store i8 %3344, i8* %14, align 1
  %3345 = and i32 %3339, 255
  %3346 = tail call i32 @llvm.ctpop.i32(i32 %3345)
  %3347 = trunc i32 %3346 to i8
  %3348 = and i8 %3347, 1
  %3349 = xor i8 %3348, 1
  store i8 %3349, i8* %21, align 1
  %3350 = xor i32 %3339, %3338
  %3351 = lshr i32 %3350, 4
  %3352 = trunc i32 %3351 to i8
  %3353 = and i8 %3352, 1
  store i8 %3353, i8* %26, align 1
  %3354 = zext i1 %3342 to i8
  store i8 %3354, i8* %29, align 1
  %3355 = lshr i32 %3339, 31
  %3356 = trunc i32 %3355 to i8
  store i8 %3356, i8* %32, align 1
  %3357 = lshr i32 %3338, 31
  %3358 = xor i32 %3355, %3357
  %3359 = add nuw nsw i32 %3358, %3355
  %3360 = icmp eq i32 %3359, 2
  %3361 = zext i1 %3360 to i8
  store i8 %3361, i8* %38, align 1
  %3362 = add i64 %3333, 9
  store i64 %3362, i64* %3, align 8
  store i32 %3339, i32* %3337, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_414a08

block_.L_414a08:                                  ; preds = %block_414998, %block_.L_41497e, %block_4149ff, %block_4149c7
  %3363 = phi i64 [ %.pre71, %block_4149ff ], [ %3333, %block_4149c7 ], [ %3240, %block_414998 ], [ %3155, %block_.L_41497e ]
  %3364 = add i64 %3363, 5
  store i64 %3364, i64* %3, align 8
  br label %block_.L_414a0d

block_.L_414a0d:                                  ; preds = %block_.L_414a08, %block_.L_414979
  %storemerge40 = phi i64 [ %3097, %block_.L_414979 ], [ %3364, %block_.L_414a08 ]
  %3365 = add i64 %storemerge40, 5
  store i64 %3365, i64* %3, align 8
  br label %block_.L_414a12

block_.L_414a12:                                  ; preds = %block_.L_414a0d, %block_4148de
  %storemerge39 = phi i64 [ %2826, %block_4148de ], [ %3365, %block_.L_414a0d ]
  %3366 = load i64, i64* %RBP.i, align 8
  %3367 = add i64 %3366, -20
  %3368 = add i64 %storemerge39, 3
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to i32*
  %3370 = load i32, i32* %3369, align 4
  %3371 = zext i32 %3370 to i64
  store i64 %3371, i64* %RAX.i865, align 8
  %3372 = add i64 %3366, -24
  %3373 = add i64 %storemerge39, 6
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3372 to i32*
  %3375 = load i32, i32* %3374, align 4
  %3376 = add i32 %3375, %3370
  %3377 = zext i32 %3376 to i64
  store i64 %3377, i64* %RAX.i865, align 8
  %3378 = lshr i32 %3376, 31
  %3379 = add i32 %3376, -2
  %3380 = icmp ult i32 %3376, 2
  %3381 = zext i1 %3380 to i8
  store i8 %3381, i8* %14, align 1
  %3382 = and i32 %3379, 255
  %3383 = tail call i32 @llvm.ctpop.i32(i32 %3382)
  %3384 = trunc i32 %3383 to i8
  %3385 = and i8 %3384, 1
  %3386 = xor i8 %3385, 1
  store i8 %3386, i8* %21, align 1
  %3387 = xor i32 %3379, %3376
  %3388 = lshr i32 %3387, 4
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  store i8 %3390, i8* %26, align 1
  %3391 = icmp eq i32 %3379, 0
  %3392 = zext i1 %3391 to i8
  store i8 %3392, i8* %29, align 1
  %3393 = lshr i32 %3379, 31
  %3394 = trunc i32 %3393 to i8
  store i8 %3394, i8* %32, align 1
  %3395 = xor i32 %3393, %3378
  %3396 = add nuw nsw i32 %3395, %3378
  %3397 = icmp eq i32 %3396, 2
  %3398 = zext i1 %3397 to i8
  store i8 %3398, i8* %38, align 1
  %3399 = icmp ne i8 %3394, 0
  %3400 = xor i1 %3399, %3397
  %.v93 = select i1 %3400, i64 27, i64 15
  %3401 = add i64 %storemerge39, %.v93
  store i64 %3401, i64* %3, align 8
  br i1 %3400, label %block_.L_414a2d, label %block_414a21

block_414a21:                                     ; preds = %block_.L_414a12
  %3402 = add i64 %3366, -4
  %3403 = add i64 %3401, 7
  store i64 %3403, i64* %3, align 8
  %3404 = inttoptr i64 %3402 to i32*
  store i32 0, i32* %3404, align 4
  %3405 = load i64, i64* %3, align 8
  %3406 = add i64 %3405, 116
  store i64 %3406, i64* %3, align 8
  br label %block_.L_414a9c

block_.L_414a2d:                                  ; preds = %block_.L_414a12
  %3407 = add i64 %3366, -28
  %3408 = add i64 %3401, 4
  store i64 %3408, i64* %3, align 8
  %3409 = inttoptr i64 %3407 to i32*
  %3410 = load i32, i32* %3409, align 4
  %AL.i56 = bitcast %union.anon* %39 to i8*
  %3411 = icmp sgt i32 %3410, 0
  %3412 = zext i1 %3411 to i8
  store i8 %3412, i8* %AL.i56, align 1
  store i8 0, i8* %14, align 1
  %3413 = zext i1 %3411 to i32
  %3414 = tail call i32 @llvm.ctpop.i32(i32 %3413)
  %3415 = trunc i32 %3414 to i8
  %3416 = xor i8 %3415, 1
  store i8 %3416, i8* %21, align 1
  %3417 = icmp slt i32 %3410, 1
  %3418 = zext i1 %3417 to i8
  store i8 %3418, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3419 = zext i1 %3411 to i64
  store i64 %3419, i64* %RCX.i913.pre-phi, align 8
  %3420 = add i64 %3401, 15
  store i64 %3420, i64* %3, align 8
  %3421 = zext i1 %3411 to i32
  %3422 = load i32, i32* %3374, align 4
  %3423 = add i32 %3422, %3421
  %3424 = zext i32 %3423 to i64
  store i64 %3424, i64* %RCX.i913.pre-phi, align 8
  %3425 = lshr i32 %3423, 31
  %3426 = add i32 %3423, -2
  %3427 = icmp ult i32 %3423, 2
  %3428 = zext i1 %3427 to i8
  store i8 %3428, i8* %14, align 1
  %3429 = and i32 %3426, 255
  %3430 = tail call i32 @llvm.ctpop.i32(i32 %3429)
  %3431 = trunc i32 %3430 to i8
  %3432 = and i8 %3431, 1
  %3433 = xor i8 %3432, 1
  store i8 %3433, i8* %21, align 1
  %3434 = xor i32 %3426, %3423
  %3435 = lshr i32 %3434, 4
  %3436 = trunc i32 %3435 to i8
  %3437 = and i8 %3436, 1
  store i8 %3437, i8* %26, align 1
  %3438 = icmp eq i32 %3426, 0
  %3439 = zext i1 %3438 to i8
  store i8 %3439, i8* %29, align 1
  %3440 = lshr i32 %3426, 31
  %3441 = trunc i32 %3440 to i8
  store i8 %3441, i8* %32, align 1
  %3442 = xor i32 %3440, %3425
  %3443 = add nuw nsw i32 %3442, %3425
  %3444 = icmp eq i32 %3443, 2
  %3445 = zext i1 %3444 to i8
  store i8 %3445, i8* %38, align 1
  %3446 = icmp ne i8 %3441, 0
  %3447 = xor i1 %3446, %3444
  %.v95 = select i1 %3447, i64 36, i64 24
  %3448 = add i64 %3401, %.v95
  store i64 %3448, i64* %3, align 8
  %3449 = load i64, i64* %RBP.i, align 8
  br i1 %3447, label %block_.L_414a51, label %block_414a45

block_414a45:                                     ; preds = %block_.L_414a2d
  %3450 = add i64 %3449, -4
  %3451 = add i64 %3448, 7
  store i64 %3451, i64* %3, align 8
  %3452 = inttoptr i64 %3450 to i32*
  store i32 0, i32* %3452, align 4
  %3453 = load i64, i64* %3, align 8
  %3454 = add i64 %3453, 80
  store i64 %3454, i64* %3, align 8
  br label %block_.L_414a9c

block_.L_414a51:                                  ; preds = %block_.L_414a2d
  %3455 = add i64 %3449, -24
  %3456 = add i64 %3448, 4
  store i64 %3456, i64* %3, align 8
  %3457 = inttoptr i64 %3455 to i32*
  %3458 = load i32, i32* %3457, align 4
  store i8 0, i8* %14, align 1
  %3459 = and i32 %3458, 255
  %3460 = tail call i32 @llvm.ctpop.i32(i32 %3459)
  %3461 = trunc i32 %3460 to i8
  %3462 = and i8 %3461, 1
  %3463 = xor i8 %3462, 1
  store i8 %3463, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3464 = icmp eq i32 %3458, 0
  %3465 = zext i1 %3464 to i8
  store i8 %3465, i8* %29, align 1
  %3466 = lshr i32 %3458, 31
  %3467 = trunc i32 %3466 to i8
  store i8 %3467, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v96 = select i1 %3464, i64 10, i64 37
  %3468 = add i64 %3448, %.v96
  store i64 %3468, i64* %3, align 8
  br i1 %3464, label %block_414a5b, label %block_.L_414a51.block_.L_414a76_crit_edge

block_.L_414a51.block_.L_414a76_crit_edge:        ; preds = %block_.L_414a51
  %.pre72 = load i64, i64* %RAX.i865, align 8
  %3469 = trunc i64 %.pre72 to i32
  br label %block_.L_414a76

block_414a5b:                                     ; preds = %block_.L_414a51
  %3470 = add i64 %3449, -28
  %3471 = add i64 %3468, 3
  store i64 %3471, i64* %3, align 8
  %3472 = inttoptr i64 %3470 to i32*
  %3473 = load i32, i32* %3472, align 4
  %3474 = zext i32 %3473 to i64
  store i64 %3474, i64* %RAX.i865, align 8
  %3475 = add i64 %3449, -20
  %3476 = add i64 %3468, 6
  store i64 %3476, i64* %3, align 8
  %3477 = inttoptr i64 %3475 to i32*
  %3478 = load i32, i32* %3477, align 4
  %3479 = add i32 %3478, %3473
  %3480 = zext i32 %3479 to i64
  store i64 %3480, i64* %RAX.i865, align 8
  %3481 = icmp eq i32 %3479, 0
  %3482 = zext i1 %3481 to i8
  %3483 = lshr i32 %3479, 31
  %3484 = add i32 %3479, -1
  store i8 %3482, i8* %14, align 1
  %3485 = and i32 %3484, 255
  %3486 = tail call i32 @llvm.ctpop.i32(i32 %3485)
  %3487 = trunc i32 %3486 to i8
  %3488 = and i8 %3487, 1
  %3489 = xor i8 %3488, 1
  store i8 %3489, i8* %21, align 1
  %3490 = xor i32 %3484, %3479
  %3491 = lshr i32 %3490, 4
  %3492 = trunc i32 %3491 to i8
  %3493 = and i8 %3492, 1
  store i8 %3493, i8* %26, align 1
  %3494 = icmp eq i32 %3484, 0
  %3495 = zext i1 %3494 to i8
  store i8 %3495, i8* %29, align 1
  %3496 = lshr i32 %3484, 31
  %3497 = trunc i32 %3496 to i8
  store i8 %3497, i8* %32, align 1
  %3498 = xor i32 %3496, %3483
  %3499 = add nuw nsw i32 %3498, %3483
  %3500 = icmp eq i32 %3499, 2
  %3501 = zext i1 %3500 to i8
  store i8 %3501, i8* %38, align 1
  %3502 = icmp ne i8 %3497, 0
  %3503 = xor i1 %3502, %3500
  %.demorgan = or i1 %3494, %3503
  %.v97 = select i1 %.demorgan, i64 15, i64 27
  %3504 = add i64 %3468, %.v97
  store i64 %3504, i64* %3, align 8
  br i1 %.demorgan, label %block_414a6a, label %block_.L_414a76

block_414a6a:                                     ; preds = %block_414a5b
  %3505 = add i64 %3449, -4
  %3506 = add i64 %3504, 7
  store i64 %3506, i64* %3, align 8
  %3507 = inttoptr i64 %3505 to i32*
  store i32 1, i32* %3507, align 4
  %3508 = load i64, i64* %3, align 8
  %3509 = add i64 %3508, 43
  store i64 %3509, i64* %3, align 8
  br label %block_.L_414a9c

block_.L_414a76:                                  ; preds = %block_414a5b, %block_.L_414a51.block_.L_414a76_crit_edge
  %3510 = phi i32 [ %3479, %block_414a5b ], [ %3469, %block_.L_414a51.block_.L_414a76_crit_edge ]
  %3511 = phi i64 [ %3480, %block_414a5b ], [ %.pre72, %block_.L_414a51.block_.L_414a76_crit_edge ]
  %3512 = phi i64 [ %3504, %block_414a5b ], [ %3468, %block_.L_414a51.block_.L_414a76_crit_edge ]
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 2, i64* %RDX.i, align 8
  %3513 = zext i32 %3510 to i64
  %3514 = xor i64 %3513, %3511
  %3515 = trunc i64 %3514 to i32
  %3516 = and i64 %3514, 4294967295
  store i64 %3516, i64* %RAX.i865, align 8
  store i8 0, i8* %14, align 1
  %3517 = and i32 %3515, 255
  %3518 = tail call i32 @llvm.ctpop.i32(i32 %3517)
  %3519 = trunc i32 %3518 to i8
  %3520 = and i8 %3519, 1
  %3521 = xor i8 %3520, 1
  store i8 %3521, i8* %21, align 1
  %3522 = icmp eq i32 %3515, 0
  %3523 = zext i1 %3522 to i8
  store i8 %3523, i8* %29, align 1
  %3524 = lshr i32 %3515, 31
  %3525 = trunc i32 %3524 to i8
  store i8 %3525, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3526 = and i64 %3514, 4294967295
  store i64 %3526, i64* %RCX.i913.pre-phi, align 8
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %3527 = add i64 %3449, -8
  %3528 = add i64 %3512, 12
  store i64 %3528, i64* %3, align 8
  %3529 = inttoptr i64 %3527 to i32*
  %3530 = load i32, i32* %3529, align 4
  %3531 = zext i32 %3530 to i64
  store i64 %3531, i64* %RDI.i, align 8
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %3532 = add i64 %3449, -12
  %3533 = add i64 %3512, 15
  store i64 %3533, i64* %3, align 8
  %3534 = inttoptr i64 %3532 to i32*
  %3535 = load i32, i32* %3534, align 4
  %3536 = zext i32 %3535 to i64
  store i64 %3536, i64* %RSI.i, align 8
  %3537 = add i64 %3512, -10742
  %3538 = add i64 %3512, 20
  %3539 = load i64, i64* %6, align 8
  %3540 = add i64 %3539, -8
  %3541 = inttoptr i64 %3540 to i64*
  store i64 %3538, i64* %3541, align 8
  store i64 %3540, i64* %6, align 8
  store i64 %3537, i64* %3, align 8
  %call2_414a85 = tail call %struct.Memory* @sub_412080.accuratelib(%struct.State* nonnull %0, i64 %3537, %struct.Memory* %MEMORY.4)
  %3542 = load i32, i32* %EAX.i1002, align 4
  %3543 = load i64, i64* %3, align 8
  %3544 = add i32 %3542, -1
  %3545 = icmp eq i32 %3544, 0
  %3546 = lshr i32 %3544, 31
  %3547 = lshr i32 %3542, 31
  %3548 = xor i32 %3546, %3547
  %3549 = add nuw nsw i32 %3548, %3547
  %3550 = icmp eq i32 %3549, 2
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B.i14 = bitcast %union.anon* %3551 to i8*
  %3552 = icmp ne i32 %3546, 0
  %3553 = xor i1 %3552, %3550
  %3554 = or i1 %3545, %3553
  %3555 = zext i1 %3554 to i8
  store i8 %3555, i8* %R8B.i14, align 1
  store i8 0, i8* %14, align 1
  %3556 = zext i1 %3554 to i32
  %3557 = tail call i32 @llvm.ctpop.i32(i32 %3556)
  %3558 = trunc i32 %3557 to i8
  %3559 = xor i8 %3558, 1
  store i8 %3559, i8* %21, align 1
  %3560 = xor i1 %3554, true
  %3561 = zext i1 %3560 to i8
  store i8 %3561, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3562 = zext i1 %3554 to i64
  store i64 %3562, i64* %RAX.i865, align 8
  %3563 = load i64, i64* %RBP.i, align 8
  %3564 = add i64 %3563, -4
  %3565 = zext i1 %3554 to i32
  %3566 = add i64 %3543, 18
  store i64 %3566, i64* %3, align 8
  %3567 = inttoptr i64 %3564 to i32*
  store i32 %3565, i32* %3567, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_414a9c

block_.L_414a9c:                                  ; preds = %block_.L_414a76, %block_414a6a, %block_414a45, %block_414a21, %block_414935, %block_4147b5, %block_414635, %block_4144b5
  %3568 = phi i64 [ %.pre73, %block_.L_414a76 ], [ %3509, %block_414a6a ], [ %3454, %block_414a45 ], [ %3406, %block_414a21 ], [ %2978, %block_414935 ], [ %2295, %block_4147b5 ], [ %1617, %block_414635 ], [ %937, %block_4144b5 ]
  %MEMORY.22 = phi %struct.Memory* [ %call2_414a85, %block_.L_414a76 ], [ %MEMORY.4, %block_414a6a ], [ %MEMORY.4, %block_414a45 ], [ %MEMORY.4, %block_414a21 ], [ %MEMORY.4, %block_414935 ], [ %MEMORY.4, %block_4147b5 ], [ %MEMORY.4, %block_414635 ], [ %MEMORY.4, %block_4144b5 ]
  %3569 = load i64, i64* %RBP.i, align 8
  %3570 = add i64 %3569, -4
  %3571 = add i64 %3568, 3
  store i64 %3571, i64* %3, align 8
  %3572 = inttoptr i64 %3570 to i32*
  %3573 = load i32, i32* %3572, align 4
  %3574 = zext i32 %3573 to i64
  store i64 %3574, i64* %RAX.i865, align 8
  %3575 = load i64, i64* %6, align 8
  %3576 = add i64 %3575, 96
  store i64 %3576, i64* %6, align 8
  %3577 = icmp ugt i64 %3575, -97
  %3578 = zext i1 %3577 to i8
  store i8 %3578, i8* %14, align 1
  %3579 = trunc i64 %3576 to i32
  %3580 = and i32 %3579, 255
  %3581 = tail call i32 @llvm.ctpop.i32(i32 %3580)
  %3582 = trunc i32 %3581 to i8
  %3583 = and i8 %3582, 1
  %3584 = xor i8 %3583, 1
  store i8 %3584, i8* %21, align 1
  %3585 = xor i64 %3576, %3575
  %3586 = lshr i64 %3585, 4
  %3587 = trunc i64 %3586 to i8
  %3588 = and i8 %3587, 1
  store i8 %3588, i8* %26, align 1
  %3589 = icmp eq i64 %3576, 0
  %3590 = zext i1 %3589 to i8
  store i8 %3590, i8* %29, align 1
  %3591 = lshr i64 %3576, 63
  %3592 = trunc i64 %3591 to i8
  store i8 %3592, i8* %32, align 1
  %3593 = lshr i64 %3575, 63
  %3594 = xor i64 %3591, %3593
  %3595 = add nuw nsw i64 %3594, %3591
  %3596 = icmp eq i64 %3595, 2
  %3597 = zext i1 %3596 to i8
  store i8 %3597, i8* %38, align 1
  %3598 = add i64 %3568, 8
  store i64 %3598, i64* %3, align 8
  %3599 = add i64 %3575, 104
  %3600 = inttoptr i64 %3576 to i64*
  %3601 = load i64, i64* %3600, align 8
  store i64 %3601, i64* %RBP.i, align 8
  store i64 %3599, i64* %6, align 8
  %3602 = add i64 %3568, 9
  store i64 %3602, i64* %3, align 8
  %3603 = inttoptr i64 %3599 to i64*
  %3604 = load i64, i64* %3603, align 8
  store i64 %3604, i64* %3, align 8
  %3605 = add i64 %3575, 112
  store i64 %3605, i64* %6, align 8
  ret %struct.Memory* %MEMORY.22
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
define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 96
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -421
  %10 = icmp ult i32 %8, 421
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
define %struct.Memory* @routine_jae_.L_4142f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4142f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41434e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x8f6___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2294, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a49b___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a49b_type* @G__0x57a49b to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_414368(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4143c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8f7___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2295, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_je_.L_4143d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4143da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_414433(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8f8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2296, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x60__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_jne_.L_41446c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4145c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4144fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jle_.L_4144c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_414a9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4144f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4145bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_4145ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4145ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_addl__0x14___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xaab3f0___rsi_4____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x2e8___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 744
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_addq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_jne_.L_4145ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_414744(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41467e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_414641(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_414679(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41473f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41473a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41473a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41476c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4148c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4147fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4147c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4147f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4148bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4148ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4148ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_jne_.L_4148ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_414a12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41497e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_414941(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_414979(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_414a0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_414a08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_414a08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_414a2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_setg__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = xor i1 %15, true
  %17 = and i1 %8, %16
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %AL, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_414a51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jne_.L_414a76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_414a76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDX, align 8
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
define %struct.Memory* @routine_callq_.accuratelib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_setle__r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = or i1 %8, %15
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %R8B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %R8B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %R8B, align 1
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
define %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i8, i8* %R8B, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -97
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
