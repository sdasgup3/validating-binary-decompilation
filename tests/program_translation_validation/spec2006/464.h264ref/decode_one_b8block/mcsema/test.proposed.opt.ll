; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cb918_type = type <{ [8 x i8] }>
%G_0x6cc020_type = type <{ [4 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x710a50_type = type <{ [8 x i8] }>
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
@G_0x6cb918 = local_unnamed_addr global %G_0x6cb918_type zeroinitializer
@G_0x6cc020 = local_unnamed_addr global %G_0x6cc020_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer
@G_0x710a50 = local_unnamed_addr global %G_0x710a50_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_41aef0.Get_Reference_Block(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @decode_one_b8block(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1256
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 1248
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
  %RAX.i1112 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 2, i64* %RAX.i1112, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 18
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1158 = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -8
  %48 = load i32, i32* %ESI.i1158, align 4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1155 = bitcast %union.anon* %52 to i32*
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -12
  %55 = load i32, i32* %EDX.i1155, align 4
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 3
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %58, align 4
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1152 = bitcast %union.anon* %59 to i32*
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -16
  %62 = load i32, i32* %ECX.i1152, align 4
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 3
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %65, align 4
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1149 = bitcast %union.anon* %66 to i32*
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -20
  %69 = load i32, i32* %R8D.i1149, align 4
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %68 to i32*
  store i32 %69, i32* %72, align 4
  %R9.i1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %73 = load i64, i64* %3, align 8
  %74 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %74, i64* %R9.i1147, align 8
  %RCX.i1144 = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %75 = add i64 %73, 11
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*), align 8
  %79 = sub i32 %77, %78
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i8
  %82 = lshr i32 %79, 31
  %83 = add i32 %79, -1
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %RCX.i1144, align 8
  store i8 %81, i8* %14, align 1
  %85 = and i32 %83, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %21, align 1
  %90 = xor i32 %83, %79
  %91 = lshr i32 %90, 4
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %26, align 1
  %94 = icmp eq i32 %83, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %29, align 1
  %96 = lshr i32 %83, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %32, align 1
  %98 = xor i32 %96, %82
  %99 = add nuw nsw i32 %98, %82
  %100 = icmp eq i32 %99, 2
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %38, align 1
  store i64 %74, i64* %R9.i1147, align 8
  %EAX.i1135 = bitcast %union.anon* %39 to i32*
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -1236
  %104 = load i32, i32* %EAX.i1135, align 4
  %105 = add i64 %73, 35
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %103 to i32*
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %ECX.i1152, align 4
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* %3, align 8
  store i64 %108, i64* %RAX.i1112, align 8
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %111 = sext i32 %107 to i64
  %112 = lshr i64 %111, 32
  store i64 %112, i64* %110, align 8
  %113 = load i64, i64* %R9.i1147, align 8
  %114 = add i64 %113, 32
  %115 = add i64 %109, 7
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = shl nuw i64 %112, 32
  %120 = or i64 %119, %108
  %121 = sdiv i64 %120, %118
  %122 = shl i64 %121, 32
  %123 = ashr exact i64 %122, 32
  %124 = icmp eq i64 %121, %123
  br i1 %124, label %127, label %125

; <label>:125:                                    ; preds = %entry
  %126 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %115, %struct.Memory* %2)
  %.pre = load i32, i32* %EDX.i1155, align 4
  %.pre89 = load i64, i64* %3, align 8
  br label %routine_idivl_0x20__r9_.exit

; <label>:127:                                    ; preds = %entry
  %128 = srem i64 %120, %118
  %129 = and i64 %121, 4294967295
  store i64 %129, i64* %RAX.i1112, align 8
  %130 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %131 = and i64 %128, 4294967295
  store i64 %131, i64* %130, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %132 = trunc i64 %128 to i32
  br label %routine_idivl_0x20__r9_.exit

routine_idivl_0x20__r9_.exit:                     ; preds = %127, %125
  %133 = phi i64 [ %.pre89, %125 ], [ %115, %127 ]
  %134 = phi i32 [ %.pre, %125 ], [ %132, %127 ]
  %135 = phi %struct.Memory* [ %126, %125 ], [ %2, %127 ]
  %136 = load i64, i64* %RBP.i, align 8
  %137 = add i64 %136, -48
  %138 = add i64 %133, 3
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i32*
  store i32 %134, i32* %139, align 4
  %140 = load i64, i64* %RBP.i, align 8
  %141 = add i64 %140, -12
  %142 = load i64, i64* %3, align 8
  %143 = add i64 %142, 3
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %141 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RCX.i1144, align 8
  store i64 %146, i64* %RAX.i1112, align 8
  %147 = sext i32 %145 to i64
  %148 = lshr i64 %147, 32
  store i64 %148, i64* %110, align 8
  %149 = add i64 %140, -1236
  %150 = add i64 %142, 12
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RCX.i1144, align 8
  %154 = add i64 %142, 14
  store i64 %154, i64* %3, align 8
  %155 = sext i32 %152 to i64
  %156 = shl nuw i64 %148, 32
  %157 = or i64 %156, %146
  %158 = sdiv i64 %157, %155
  %159 = shl i64 %158, 32
  %160 = ashr exact i64 %159, 32
  %161 = icmp eq i64 %158, %160
  br i1 %161, label %164, label %162

; <label>:162:                                    ; preds = %routine_idivl_0x20__r9_.exit
  %163 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %154, %struct.Memory* %135)
  %RDX.i1107.phi.trans.insert = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %.pre90 = load i64, i64* %RDX.i1107.phi.trans.insert, align 8
  %.pre91 = load i64, i64* %3, align 8
  %.pre92 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1110

; <label>:164:                                    ; preds = %routine_idivl_0x20__r9_.exit
  %165 = srem i64 %157, %155
  %166 = and i64 %158, 4294967295
  store i64 %166, i64* %RAX.i1112, align 8
  %167 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %168 = and i64 %165, 4294967295
  store i64 %168, i64* %167, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit1110

routine_idivl__ecx.exit1110:                      ; preds = %164, %162
  %RDX.i1107.pre-phi = phi i64* [ %167, %164 ], [ %RDX.i1107.phi.trans.insert, %162 ]
  %169 = phi i64 [ %140, %164 ], [ %.pre92, %162 ]
  %170 = phi i64 [ %154, %164 ], [ %.pre91, %162 ]
  %171 = phi i64 [ %168, %164 ], [ %.pre90, %162 ]
  %172 = phi %struct.Memory* [ %135, %164 ], [ %163, %162 ]
  %.tr = trunc i64 %171 to i32
  %173 = shl i32 %.tr, 3
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RDX.i1107.pre-phi, align 8
  %175 = lshr i64 %171, 29
  %176 = trunc i64 %175 to i8
  %177 = and i8 %176, 1
  store i8 %177, i8* %14, align 1
  %178 = and i32 %173, 248
  %179 = tail call i32 @llvm.ctpop.i32(i32 %178)
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  store i8 %182, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %183 = icmp eq i32 %173, 0
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %29, align 1
  %185 = lshr i32 %.tr, 28
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  store i8 %187, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %188 = add i64 %169, -1204
  %189 = add i64 %170, 9
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i32*
  store i32 %173, i32* %190, align 4
  %191 = load i64, i64* %RBP.i, align 8
  %192 = add i64 %191, -1204
  %193 = load i64, i64* %3, align 8
  %194 = add i64 %193, 6
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %192 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = add i32 %196, 8
  %198 = zext i32 %197 to i64
  store i64 %198, i64* %RDX.i1107.pre-phi, align 8
  %199 = icmp ugt i32 %196, -9
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %14, align 1
  %201 = and i32 %197, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201)
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %21, align 1
  %206 = xor i32 %197, %196
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %26, align 1
  %210 = icmp eq i32 %197, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %29, align 1
  %212 = lshr i32 %197, 31
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %32, align 1
  %214 = lshr i32 %196, 31
  %215 = xor i32 %212, %214
  %216 = add nuw nsw i32 %215, %212
  %217 = icmp eq i32 %216, 2
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %38, align 1
  %219 = add i64 %191, -1208
  %220 = add i64 %193, 15
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i32*
  store i32 %197, i32* %221, align 4
  %222 = load i64, i64* %RBP.i, align 8
  %223 = add i64 %222, -1204
  %224 = load i64, i64* %3, align 8
  %225 = add i64 %224, 6
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %223 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = ashr i64 %228, 1
  %230 = lshr i64 %229, 1
  %231 = trunc i64 %229 to i8
  %232 = and i8 %231, 1
  %233 = trunc i64 %230 to i32
  %234 = and i64 %230, 4294967295
  store i64 %234, i64* %RDX.i1107.pre-phi, align 8
  store i8 %232, i8* %14, align 1
  %235 = and i32 %233, 255
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235)
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %240 = icmp eq i32 %233, 0
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %29, align 1
  %242 = lshr i64 %229, 32
  %243 = trunc i64 %242 to i8
  %244 = and i8 %243, 1
  store i8 %244, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %245 = add i64 %222, -1212
  %246 = trunc i64 %230 to i32
  %247 = add i64 %224, 15
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %245 to i32*
  store i32 %246, i32* %248, align 4
  %249 = load i64, i64* %RBP.i, align 8
  %250 = add i64 %249, -1212
  %251 = load i64, i64* %3, align 8
  %252 = add i64 %251, 6
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %250 to i32*
  %254 = load i32, i32* %253, align 4
  %255 = add i32 %254, 2
  %256 = zext i32 %255 to i64
  store i64 %256, i64* %RDX.i1107.pre-phi, align 8
  %257 = icmp ugt i32 %254, -3
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %14, align 1
  %259 = and i32 %255, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259)
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %21, align 1
  %264 = xor i32 %255, %254
  %265 = lshr i32 %264, 4
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  store i8 %267, i8* %26, align 1
  %268 = icmp eq i32 %255, 0
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %29, align 1
  %270 = lshr i32 %255, 31
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* %32, align 1
  %272 = lshr i32 %254, 31
  %273 = xor i32 %270, %272
  %274 = add nuw nsw i32 %273, %270
  %275 = icmp eq i32 %274, 2
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %38, align 1
  %277 = add i64 %249, -1216
  %278 = add i64 %251, 15
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i32*
  store i32 %255, i32* %279, align 4
  %280 = load i64, i64* %RBP.i, align 8
  %281 = add i64 %280, -12
  %282 = load i64, i64* %3, align 8
  %283 = add i64 %282, 3
  store i64 %283, i64* %3, align 8
  %284 = inttoptr i64 %281 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %RDX.i1107.pre-phi, align 8
  store i64 %286, i64* %RAX.i1112, align 8
  %287 = sext i32 %285 to i64
  %288 = lshr i64 %287, 32
  store i64 %288, i64* %110, align 8
  %289 = load i32, i32* %ECX.i1152, align 4
  %290 = add i64 %282, 8
  store i64 %290, i64* %3, align 8
  %291 = sext i32 %289 to i64
  %292 = shl nuw i64 %288, 32
  %293 = or i64 %292, %286
  %294 = sdiv i64 %293, %291
  %295 = shl i64 %294, 32
  %296 = ashr exact i64 %295, 32
  %297 = icmp eq i64 %294, %296
  br i1 %297, label %300, label %298

; <label>:298:                                    ; preds = %routine_idivl__ecx.exit1110
  %299 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %290, %struct.Memory* %172)
  %.pre93 = load i64, i64* %RAX.i1112, align 8
  %.pre94 = load i64, i64* %3, align 8
  %.pre95 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:300:                                    ; preds = %routine_idivl__ecx.exit1110
  %301 = srem i64 %293, %291
  %302 = and i64 %294, 4294967295
  store i64 %302, i64* %RAX.i1112, align 8
  %303 = and i64 %301, 4294967295
  store i64 %303, i64* %RDX.i1107.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %300, %298
  %304 = phi i64 [ %.pre95, %298 ], [ %280, %300 ]
  %305 = phi i64 [ %.pre94, %298 ], [ %290, %300 ]
  %306 = phi i64 [ %.pre93, %298 ], [ %302, %300 ]
  %307 = phi %struct.Memory* [ %299, %298 ], [ %172, %300 ]
  %.tr34 = trunc i64 %306 to i32
  %308 = shl i32 %.tr34, 3
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RAX.i1112, align 8
  %310 = lshr i64 %306, 29
  %311 = trunc i64 %310 to i8
  %312 = and i8 %311, 1
  store i8 %312, i8* %14, align 1
  %313 = and i32 %308, 248
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313)
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %318 = icmp eq i32 %308, 0
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %29, align 1
  %320 = lshr i32 %.tr34, 28
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  store i8 %322, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %323 = add i64 %304, -1220
  %324 = add i64 %305, 9
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i32*
  store i32 %308, i32* %325, align 4
  %326 = load i64, i64* %RBP.i, align 8
  %327 = add i64 %326, -1220
  %328 = load i64, i64* %3, align 8
  %329 = add i64 %328, 6
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %327 to i32*
  %331 = load i32, i32* %330, align 4
  %332 = add i32 %331, 8
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %RAX.i1112, align 8
  %334 = icmp ugt i32 %331, -9
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %14, align 1
  %336 = and i32 %332, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %21, align 1
  %341 = xor i32 %332, %331
  %342 = lshr i32 %341, 4
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  store i8 %344, i8* %26, align 1
  %345 = icmp eq i32 %332, 0
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %29, align 1
  %347 = lshr i32 %332, 31
  %348 = trunc i32 %347 to i8
  store i8 %348, i8* %32, align 1
  %349 = lshr i32 %331, 31
  %350 = xor i32 %347, %349
  %351 = add nuw nsw i32 %350, %347
  %352 = icmp eq i32 %351, 2
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %38, align 1
  %354 = add i64 %326, -1224
  %355 = add i64 %328, 15
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i32*
  store i32 %332, i32* %356, align 4
  %357 = load i64, i64* %RBP.i, align 8
  %358 = add i64 %357, -1220
  %359 = load i64, i64* %3, align 8
  %360 = add i64 %359, 6
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %358 to i32*
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = ashr i64 %363, 1
  %365 = lshr i64 %364, 1
  %366 = trunc i64 %364 to i8
  %367 = and i8 %366, 1
  %368 = trunc i64 %365 to i32
  %369 = and i64 %365, 4294967295
  store i64 %369, i64* %RAX.i1112, align 8
  store i8 %367, i8* %14, align 1
  %370 = and i32 %368, 255
  %371 = tail call i32 @llvm.ctpop.i32(i32 %370)
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  %374 = xor i8 %373, 1
  store i8 %374, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %375 = icmp eq i32 %368, 0
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %29, align 1
  %377 = lshr i64 %364, 32
  %378 = trunc i64 %377 to i8
  %379 = and i8 %378, 1
  store i8 %379, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %380 = add i64 %357, -1228
  %381 = trunc i64 %365 to i32
  %382 = add i64 %359, 15
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %380 to i32*
  store i32 %381, i32* %383, align 4
  %384 = load i64, i64* %RBP.i, align 8
  %385 = add i64 %384, -1228
  %386 = load i64, i64* %3, align 8
  %387 = add i64 %386, 6
  store i64 %387, i64* %3, align 8
  %388 = inttoptr i64 %385 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = add i32 %389, 2
  %391 = zext i32 %390 to i64
  store i64 %391, i64* %RAX.i1112, align 8
  %392 = icmp ugt i32 %389, -3
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %14, align 1
  %394 = and i32 %390, 255
  %395 = tail call i32 @llvm.ctpop.i32(i32 %394)
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  store i8 %398, i8* %21, align 1
  %399 = xor i32 %390, %389
  %400 = lshr i32 %399, 4
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  store i8 %402, i8* %26, align 1
  %403 = icmp eq i32 %390, 0
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %29, align 1
  %405 = lshr i32 %390, 31
  %406 = trunc i32 %405 to i8
  store i8 %406, i8* %32, align 1
  %407 = lshr i32 %389, 31
  %408 = xor i32 %405, %407
  %409 = add nuw nsw i32 %408, %405
  %410 = icmp eq i32 %409, 2
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %38, align 1
  %412 = add i64 %384, -1232
  %413 = add i64 %386, 15
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i32*
  store i32 %390, i32* %414, align 4
  %415 = load i64, i64* %3, align 8
  %416 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %416, i64* %R9.i1147, align 8
  %417 = add i64 %416, 24
  %418 = add i64 %415, 13
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = add i32 %420, -2
  %422 = icmp ult i32 %420, 2
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
  %.v128 = select i1 %433, i64 19, i64 236
  %442 = add i64 %415, %.v128
  store i64 %442, i64* %3, align 8
  %443 = load i64, i64* %RBP.i, align 8
  br i1 %433, label %block_41a762, label %block_.L_41a83b

block_41a762:                                     ; preds = %routine_idivl__ecx.exit
  %444 = add i64 %443, -1204
  %445 = add i64 %442, 6
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = zext i32 %447 to i64
  store i64 %448, i64* %RAX.i1112, align 8
  %449 = add i64 %443, -24
  %450 = add i64 %442, 9
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to i32*
  store i32 %447, i32* %451, align 4
  %SI.i976 = bitcast %union.anon* %45 to i16*
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_41a76b

block_.L_41a76b:                                  ; preds = %block_.L_41a823, %block_41a762
  %452 = phi i64 [ %786, %block_.L_41a823 ], [ %.pre96, %block_41a762 ]
  %453 = load i64, i64* %RBP.i, align 8
  %454 = add i64 %453, -24
  %455 = add i64 %452, 3
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RAX.i1112, align 8
  %459 = add i64 %453, -1208
  %460 = add i64 %452, 9
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = sub i32 %457, %462
  %464 = icmp ult i32 %457, %462
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %14, align 1
  %466 = and i32 %463, 255
  %467 = tail call i32 @llvm.ctpop.i32(i32 %466)
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  store i8 %470, i8* %21, align 1
  %471 = xor i32 %462, %457
  %472 = xor i32 %471, %463
  %473 = lshr i32 %472, 4
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  store i8 %475, i8* %26, align 1
  %476 = icmp eq i32 %463, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %29, align 1
  %478 = lshr i32 %463, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %32, align 1
  %480 = lshr i32 %457, 31
  %481 = lshr i32 %462, 31
  %482 = xor i32 %481, %480
  %483 = xor i32 %478, %480
  %484 = add nuw nsw i32 %483, %482
  %485 = icmp eq i32 %484, 2
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %38, align 1
  %487 = icmp ne i8 %479, 0
  %488 = xor i1 %487, %485
  %.v150 = select i1 %488, i64 15, i64 203
  %489 = add i64 %452, %.v150
  store i64 %489, i64* %3, align 8
  br i1 %488, label %block_41a77a, label %block_.L_41a836

block_41a77a:                                     ; preds = %block_.L_41a76b
  %490 = add i64 %453, -1220
  %491 = add i64 %489, 6
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %490 to i32*
  %493 = load i32, i32* %492, align 4
  %494 = zext i32 %493 to i64
  store i64 %494, i64* %RAX.i1112, align 8
  %495 = add i64 %453, -28
  %496 = add i64 %489, 9
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i32*
  store i32 %493, i32* %497, align 4
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_41a783

block_.L_41a783:                                  ; preds = %block_41a792, %block_41a77a
  %498 = phi i64 [ %756, %block_41a792 ], [ %.pre97, %block_41a77a ]
  %499 = load i64, i64* %RBP.i, align 8
  %500 = add i64 %499, -28
  %501 = add i64 %498, 3
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %500 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = zext i32 %503 to i64
  store i64 %504, i64* %RAX.i1112, align 8
  %505 = add i64 %499, -1224
  %506 = add i64 %498, 9
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i32*
  %508 = load i32, i32* %507, align 4
  %509 = sub i32 %503, %508
  %510 = icmp ult i32 %503, %508
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %14, align 1
  %512 = and i32 %509, 255
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %21, align 1
  %517 = xor i32 %508, %503
  %518 = xor i32 %517, %509
  %519 = lshr i32 %518, 4
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  store i8 %521, i8* %26, align 1
  %522 = icmp eq i32 %509, 0
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %29, align 1
  %524 = lshr i32 %509, 31
  %525 = trunc i32 %524 to i8
  store i8 %525, i8* %32, align 1
  %526 = lshr i32 %503, 31
  %527 = lshr i32 %508, 31
  %528 = xor i32 %527, %526
  %529 = xor i32 %524, %526
  %530 = add nuw nsw i32 %529, %528
  %531 = icmp eq i32 %530, 2
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %38, align 1
  %533 = icmp ne i8 %525, 0
  %534 = xor i1 %533, %531
  %.v = select i1 %534, i64 15, i64 160
  %535 = add i64 %498, %.v
  store i64 %535, i64* %3, align 8
  br i1 %534, label %block_41a792, label %block_.L_41a823

block_41a792:                                     ; preds = %block_.L_41a783
  %536 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %536, i64* %RAX.i1112, align 8
  %537 = add i64 %536, 6424
  %538 = add i64 %535, 15
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %RAX.i1112, align 8
  %541 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %541, i64* %RCX.i1144, align 8
  %542 = add i64 %541, 156
  %543 = add i64 %535, 29
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i32*
  %545 = load i32, i32* %544, align 4
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RDX.i1107.pre-phi, align 8
  %547 = add i64 %535, 32
  store i64 %547, i64* %3, align 8
  %548 = load i32, i32* %502, align 4
  %549 = add i32 %548, %545
  %550 = zext i32 %549 to i64
  store i64 %550, i64* %RDX.i1107.pre-phi, align 8
  %551 = icmp ult i32 %549, %545
  %552 = icmp ult i32 %549, %548
  %553 = or i1 %551, %552
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %14, align 1
  %555 = and i32 %549, 255
  %556 = tail call i32 @llvm.ctpop.i32(i32 %555)
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  %559 = xor i8 %558, 1
  store i8 %559, i8* %21, align 1
  %560 = xor i32 %548, %545
  %561 = xor i32 %560, %549
  %562 = lshr i32 %561, 4
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  store i8 %564, i8* %26, align 1
  %565 = icmp eq i32 %549, 0
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %29, align 1
  %567 = lshr i32 %549, 31
  %568 = trunc i32 %567 to i8
  store i8 %568, i8* %32, align 1
  %569 = lshr i32 %545, 31
  %570 = lshr i32 %548, 31
  %571 = xor i32 %567, %569
  %572 = xor i32 %567, %570
  %573 = add nuw nsw i32 %571, %572
  %574 = icmp eq i32 %573, 2
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %38, align 1
  %576 = sext i32 %549 to i64
  store i64 %576, i64* %RCX.i1144, align 8
  %577 = shl nsw i64 %576, 3
  %578 = add i64 %540, %577
  %579 = add i64 %535, 39
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i64*
  %581 = load i64, i64* %580, align 8
  store i64 %581, i64* %RAX.i1112, align 8
  store i64 %541, i64* %RCX.i1144, align 8
  %582 = add i64 %541, 152
  %583 = add i64 %535, 53
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i32*
  %585 = load i32, i32* %584, align 4
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RDX.i1107.pre-phi, align 8
  %587 = add i64 %499, -24
  %588 = add i64 %535, 56
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = add i32 %590, %585
  %592 = zext i32 %591 to i64
  store i64 %592, i64* %RDX.i1107.pre-phi, align 8
  %593 = icmp ult i32 %591, %585
  %594 = icmp ult i32 %591, %590
  %595 = or i1 %593, %594
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %14, align 1
  %597 = and i32 %591, 255
  %598 = tail call i32 @llvm.ctpop.i32(i32 %597)
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  %601 = xor i8 %600, 1
  store i8 %601, i8* %21, align 1
  %602 = xor i32 %590, %585
  %603 = xor i32 %602, %591
  %604 = lshr i32 %603, 4
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  store i8 %606, i8* %26, align 1
  %607 = icmp eq i32 %591, 0
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %29, align 1
  %609 = lshr i32 %591, 31
  %610 = trunc i32 %609 to i8
  store i8 %610, i8* %32, align 1
  %611 = lshr i32 %585, 31
  %612 = lshr i32 %590, 31
  %613 = xor i32 %609, %611
  %614 = xor i32 %609, %612
  %615 = add nuw nsw i32 %613, %614
  %616 = icmp eq i32 %615, 2
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %38, align 1
  %618 = sext i32 %591 to i64
  store i64 %618, i64* %RCX.i1144, align 8
  %619 = shl nsw i64 %618, 1
  %620 = add i64 %581, %619
  %621 = add i64 %535, 63
  store i64 %621, i64* %3, align 8
  %622 = inttoptr i64 %620 to i16*
  %623 = load i16, i16* %622, align 2
  store i16 %623, i16* %SI.i976, align 2
  %624 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*), align 8
  store i64 %624, i64* %RAX.i1112, align 8
  %625 = add i64 %624, 8
  %626 = add i64 %535, 75
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to i64*
  %628 = load i64, i64* %627, align 8
  store i64 %628, i64* %RAX.i1112, align 8
  %629 = load i64, i64* %RBP.i, align 8
  %630 = add i64 %629, -4
  %631 = add i64 %535, 79
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %630 to i32*
  %633 = load i32, i32* %632, align 4
  %634 = sext i32 %633 to i64
  store i64 %634, i64* %RCX.i1144, align 8
  %635 = shl nsw i64 %634, 3
  %636 = add i64 %635, %628
  %637 = add i64 %535, 83
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i64*
  %639 = load i64, i64* %638, align 8
  store i64 %639, i64* %RAX.i1112, align 8
  %640 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %640, i64* %RCX.i1144, align 8
  %641 = add i64 %640, 156
  %642 = add i64 %535, 97
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %641 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RDX.i1107.pre-phi, align 8
  %646 = add i64 %629, -28
  %647 = add i64 %535, 100
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = add i32 %649, %644
  %651 = zext i32 %650 to i64
  store i64 %651, i64* %RDX.i1107.pre-phi, align 8
  %652 = icmp ult i32 %650, %644
  %653 = icmp ult i32 %650, %649
  %654 = or i1 %652, %653
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %14, align 1
  %656 = and i32 %650, 255
  %657 = tail call i32 @llvm.ctpop.i32(i32 %656)
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  store i8 %660, i8* %21, align 1
  %661 = xor i32 %649, %644
  %662 = xor i32 %661, %650
  %663 = lshr i32 %662, 4
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  store i8 %665, i8* %26, align 1
  %666 = icmp eq i32 %650, 0
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %29, align 1
  %668 = lshr i32 %650, 31
  %669 = trunc i32 %668 to i8
  store i8 %669, i8* %32, align 1
  %670 = lshr i32 %644, 31
  %671 = lshr i32 %649, 31
  %672 = xor i32 %668, %670
  %673 = xor i32 %668, %671
  %674 = add nuw nsw i32 %672, %673
  %675 = icmp eq i32 %674, 2
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %38, align 1
  %677 = sext i32 %650 to i64
  store i64 %677, i64* %RCX.i1144, align 8
  %678 = shl nsw i64 %677, 3
  %679 = add i64 %639, %678
  %680 = add i64 %535, 107
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i64*
  %682 = load i64, i64* %681, align 8
  store i64 %682, i64* %RAX.i1112, align 8
  store i64 %640, i64* %RCX.i1144, align 8
  %683 = add i64 %640, 152
  %684 = add i64 %535, 121
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to i32*
  %686 = load i32, i32* %685, align 4
  %687 = zext i32 %686 to i64
  store i64 %687, i64* %RDX.i1107.pre-phi, align 8
  %688 = add i64 %629, -24
  %689 = add i64 %535, 124
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = add i32 %691, %686
  %693 = zext i32 %692 to i64
  store i64 %693, i64* %RDX.i1107.pre-phi, align 8
  %694 = icmp ult i32 %692, %686
  %695 = icmp ult i32 %692, %691
  %696 = or i1 %694, %695
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %14, align 1
  %698 = and i32 %692, 255
  %699 = tail call i32 @llvm.ctpop.i32(i32 %698)
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = xor i8 %701, 1
  store i8 %702, i8* %21, align 1
  %703 = xor i32 %691, %686
  %704 = xor i32 %703, %692
  %705 = lshr i32 %704, 4
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  store i8 %707, i8* %26, align 1
  %708 = icmp eq i32 %692, 0
  %709 = zext i1 %708 to i8
  store i8 %709, i8* %29, align 1
  %710 = lshr i32 %692, 31
  %711 = trunc i32 %710 to i8
  store i8 %711, i8* %32, align 1
  %712 = lshr i32 %686, 31
  %713 = lshr i32 %691, 31
  %714 = xor i32 %710, %712
  %715 = xor i32 %710, %713
  %716 = add nuw nsw i32 %714, %715
  %717 = icmp eq i32 %716, 2
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %38, align 1
  %719 = sext i32 %692 to i64
  store i64 %719, i64* %RCX.i1144, align 8
  %720 = shl nsw i64 %719, 1
  %721 = add i64 %682, %720
  %722 = load i16, i16* %SI.i976, align 2
  %723 = add i64 %535, 131
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %721 to i16*
  store i16 %722, i16* %724, align 2
  %725 = load i64, i64* %RBP.i, align 8
  %726 = add i64 %725, -28
  %727 = load i64, i64* %3, align 8
  %728 = add i64 %727, 3
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %726 to i32*
  %730 = load i32, i32* %729, align 4
  %731 = add i32 %730, 1
  %732 = zext i32 %731 to i64
  store i64 %732, i64* %RAX.i1112, align 8
  %733 = icmp eq i32 %730, -1
  %734 = icmp eq i32 %731, 0
  %735 = or i1 %733, %734
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %14, align 1
  %737 = and i32 %731, 255
  %738 = tail call i32 @llvm.ctpop.i32(i32 %737)
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = xor i8 %740, 1
  store i8 %741, i8* %21, align 1
  %742 = xor i32 %731, %730
  %743 = lshr i32 %742, 4
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  store i8 %745, i8* %26, align 1
  %746 = zext i1 %734 to i8
  store i8 %746, i8* %29, align 1
  %747 = lshr i32 %731, 31
  %748 = trunc i32 %747 to i8
  store i8 %748, i8* %32, align 1
  %749 = lshr i32 %730, 31
  %750 = xor i32 %747, %749
  %751 = add nuw nsw i32 %750, %747
  %752 = icmp eq i32 %751, 2
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %38, align 1
  %754 = add i64 %727, 9
  store i64 %754, i64* %3, align 8
  store i32 %731, i32* %729, align 4
  %755 = load i64, i64* %3, align 8
  %756 = add i64 %755, -155
  store i64 %756, i64* %3, align 8
  br label %block_.L_41a783

block_.L_41a823:                                  ; preds = %block_.L_41a783
  %757 = add i64 %499, -24
  %758 = add i64 %535, 8
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %757 to i32*
  %760 = load i32, i32* %759, align 4
  %761 = add i32 %760, 1
  %762 = zext i32 %761 to i64
  store i64 %762, i64* %RAX.i1112, align 8
  %763 = icmp eq i32 %760, -1
  %764 = icmp eq i32 %761, 0
  %765 = or i1 %763, %764
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %14, align 1
  %767 = and i32 %761, 255
  %768 = tail call i32 @llvm.ctpop.i32(i32 %767)
  %769 = trunc i32 %768 to i8
  %770 = and i8 %769, 1
  %771 = xor i8 %770, 1
  store i8 %771, i8* %21, align 1
  %772 = xor i32 %761, %760
  %773 = lshr i32 %772, 4
  %774 = trunc i32 %773 to i8
  %775 = and i8 %774, 1
  store i8 %775, i8* %26, align 1
  %776 = zext i1 %764 to i8
  store i8 %776, i8* %29, align 1
  %777 = lshr i32 %761, 31
  %778 = trunc i32 %777 to i8
  store i8 %778, i8* %32, align 1
  %779 = lshr i32 %760, 31
  %780 = xor i32 %777, %779
  %781 = add nuw nsw i32 %780, %777
  %782 = icmp eq i32 %781, 2
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %38, align 1
  %784 = add i64 %535, 14
  store i64 %784, i64* %3, align 8
  store i32 %761, i32* %759, align 4
  %785 = load i64, i64* %3, align 8
  %786 = add i64 %785, -198
  store i64 %786, i64* %3, align 8
  br label %block_.L_41a76b

block_.L_41a836:                                  ; preds = %block_.L_41a76b
  %787 = add i64 %489, 1700
  br label %block_.L_41aeda

block_.L_41a83b:                                  ; preds = %routine_idivl__ecx.exit
  %788 = add i64 %443, -8
  %789 = add i64 %442, 4
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i32*
  %791 = load i32, i32* %790, align 4
  store i8 0, i8* %14, align 1
  %792 = and i32 %791, 255
  %793 = tail call i32 @llvm.ctpop.i32(i32 %792)
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = xor i8 %795, 1
  store i8 %796, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %797 = icmp eq i32 %791, 0
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %29, align 1
  %799 = lshr i32 %791, 31
  %800 = trunc i32 %799 to i8
  store i8 %800, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v129 = select i1 %797, i64 10, i64 321
  %801 = add i64 %442, %.v129
  store i64 %801, i64* %3, align 8
  br i1 %797, label %block_41a845, label %block_.L_41a97c

block_41a845:                                     ; preds = %block_.L_41a83b
  store i64 %416, i64* %RAX.i1112, align 8
  %802 = add i64 %801, 12
  store i64 %802, i64* %3, align 8
  %803 = load i32, i32* %419, align 4
  store i8 0, i8* %14, align 1
  %804 = and i32 %803, 255
  %805 = tail call i32 @llvm.ctpop.i32(i32 %804)
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  store i8 %808, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %809 = icmp eq i32 %803, 0
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %29, align 1
  %811 = lshr i32 %803, 31
  %812 = trunc i32 %811 to i8
  store i8 %812, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v145 = select i1 %809, i64 57, i64 18
  %813 = add i64 %801, %.v145
  store i64 %813, i64* %3, align 8
  br i1 %809, label %block_.L_41a87e, label %block_41a857

block_41a857:                                     ; preds = %block_41a845
  store i64 %416, i64* %RAX.i1112, align 8
  %814 = add i64 %813, 12
  store i64 %814, i64* %3, align 8
  %815 = load i32, i32* %419, align 4
  %816 = add i32 %815, -1
  %817 = icmp eq i32 %815, 0
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %14, align 1
  %819 = and i32 %816, 255
  %820 = tail call i32 @llvm.ctpop.i32(i32 %819)
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  store i8 %823, i8* %21, align 1
  %824 = xor i32 %816, %815
  %825 = lshr i32 %824, 4
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  store i8 %827, i8* %26, align 1
  %828 = icmp eq i32 %816, 0
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %29, align 1
  %830 = lshr i32 %816, 31
  %831 = trunc i32 %830 to i8
  store i8 %831, i8* %32, align 1
  %832 = lshr i32 %815, 31
  %833 = xor i32 %830, %832
  %834 = add nuw nsw i32 %833, %832
  %835 = icmp eq i32 %834, 2
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %38, align 1
  %.v146 = select i1 %828, i64 18, i64 293
  %837 = add i64 %813, %.v146
  store i64 %837, i64* %3, align 8
  br i1 %828, label %block_41a869, label %block_.L_41a97c

block_41a869:                                     ; preds = %block_41a857
  store i64 %416, i64* %RAX.i1112, align 8
  %838 = add i64 %416, 72496
  %839 = add i64 %837, 15
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i32*
  %841 = load i32, i32* %840, align 4
  store i8 0, i8* %14, align 1
  %842 = and i32 %841, 255
  %843 = tail call i32 @llvm.ctpop.i32(i32 %842)
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  %846 = xor i8 %845, 1
  store i8 %846, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %847 = icmp eq i32 %841, 0
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %29, align 1
  %849 = lshr i32 %841, 31
  %850 = trunc i32 %849 to i8
  store i8 %850, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %851 = icmp ne i8 %850, 0
  %852 = or i1 %847, %851
  %.v147 = select i1 %852, i64 275, i64 21
  %853 = add i64 %837, %.v147
  store i64 %853, i64* %3, align 8
  br i1 %852, label %block_.L_41a97c, label %block_.L_41a87e

block_.L_41a87e:                                  ; preds = %block_41a869, %block_41a845
  %854 = phi i64 [ %853, %block_41a869 ], [ %813, %block_41a845 ]
  %855 = add i64 %443, -1204
  %856 = add i64 %854, 6
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = zext i32 %858 to i64
  store i64 %859, i64* %RAX.i1112, align 8
  %860 = add i64 %443, -24
  %861 = add i64 %854, 9
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i32*
  store i32 %858, i32* %862, align 4
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_41a887

block_.L_41a887:                                  ; preds = %block_.L_41a8d9, %block_.L_41a87e
  %863 = phi i64 [ %1049, %block_.L_41a8d9 ], [ %.pre98, %block_.L_41a87e ]
  %864 = load i64, i64* %RBP.i, align 8
  %865 = add i64 %864, -24
  %866 = add i64 %863, 3
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to i32*
  %868 = load i32, i32* %867, align 4
  %869 = zext i32 %868 to i64
  store i64 %869, i64* %RAX.i1112, align 8
  %870 = add i64 %864, -1208
  %871 = add i64 %863, 9
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i32*
  %873 = load i32, i32* %872, align 4
  %874 = sub i32 %868, %873
  %875 = icmp ult i32 %868, %873
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %14, align 1
  %877 = and i32 %874, 255
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %21, align 1
  %882 = xor i32 %873, %868
  %883 = xor i32 %882, %874
  %884 = lshr i32 %883, 4
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  store i8 %886, i8* %26, align 1
  %887 = icmp eq i32 %874, 0
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %29, align 1
  %889 = lshr i32 %874, 31
  %890 = trunc i32 %889 to i8
  store i8 %890, i8* %32, align 1
  %891 = lshr i32 %868, 31
  %892 = lshr i32 %873, 31
  %893 = xor i32 %892, %891
  %894 = xor i32 %889, %891
  %895 = add nuw nsw i32 %894, %893
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %38, align 1
  %898 = icmp ne i8 %890, 0
  %899 = xor i1 %898, %896
  %.v148 = select i1 %899, i64 15, i64 101
  %900 = add i64 %863, %.v148
  store i64 %900, i64* %3, align 8
  br i1 %899, label %block_41a896, label %block_.L_41a8ec

block_41a896:                                     ; preds = %block_.L_41a887
  %901 = add i64 %864, -1220
  %902 = add i64 %900, 6
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i32*
  %904 = load i32, i32* %903, align 4
  %905 = zext i32 %904 to i64
  store i64 %905, i64* %RAX.i1112, align 8
  %906 = add i64 %864, -28
  %907 = add i64 %900, 9
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to i32*
  store i32 %904, i32* %908, align 4
  %.pre101 = load i64, i64* %3, align 8
  br label %block_.L_41a89f

block_.L_41a89f:                                  ; preds = %block_41a8ae, %block_41a896
  %909 = phi i64 [ %1019, %block_41a8ae ], [ %.pre101, %block_41a896 ]
  %910 = load i64, i64* %RBP.i, align 8
  %911 = add i64 %910, -28
  %912 = add i64 %909, 3
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = zext i32 %914 to i64
  store i64 %915, i64* %RAX.i1112, align 8
  %916 = add i64 %910, -1224
  %917 = add i64 %909, 9
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %916 to i32*
  %919 = load i32, i32* %918, align 4
  %920 = sub i32 %914, %919
  %921 = icmp ult i32 %914, %919
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %14, align 1
  %923 = and i32 %920, 255
  %924 = tail call i32 @llvm.ctpop.i32(i32 %923)
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  store i8 %927, i8* %21, align 1
  %928 = xor i32 %919, %914
  %929 = xor i32 %928, %920
  %930 = lshr i32 %929, 4
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  store i8 %932, i8* %26, align 1
  %933 = icmp eq i32 %920, 0
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %29, align 1
  %935 = lshr i32 %920, 31
  %936 = trunc i32 %935 to i8
  store i8 %936, i8* %32, align 1
  %937 = lshr i32 %914, 31
  %938 = lshr i32 %919, 31
  %939 = xor i32 %938, %937
  %940 = xor i32 %935, %937
  %941 = add nuw nsw i32 %940, %939
  %942 = icmp eq i32 %941, 2
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %38, align 1
  %944 = icmp ne i8 %936, 0
  %945 = xor i1 %944, %942
  %.v124 = select i1 %945, i64 15, i64 58
  %946 = add i64 %909, %.v124
  store i64 %946, i64* %3, align 8
  br i1 %945, label %block_41a8ae, label %block_.L_41a8d9

block_41a8ae:                                     ; preds = %block_.L_41a89f
  %947 = add i64 %910, -1200
  store i64 %947, i64* %RAX.i1112, align 8
  %948 = add i64 %946, 11
  store i64 %948, i64* %3, align 8
  %949 = load i32, i32* %913, align 4
  %950 = sext i32 %949 to i64
  %951 = shl nsw i64 %950, 6
  store i64 %951, i64* %RCX.i1144, align 8
  %952 = add i64 %951, %947
  store i64 %952, i64* %RAX.i1112, align 8
  %953 = icmp ult i64 %952, %947
  %954 = icmp ult i64 %952, %951
  %955 = or i1 %953, %954
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %14, align 1
  %957 = trunc i64 %952 to i32
  %958 = and i32 %957, 255
  %959 = tail call i32 @llvm.ctpop.i32(i32 %958)
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  %962 = xor i8 %961, 1
  store i8 %962, i8* %21, align 1
  %963 = xor i64 %947, %952
  %964 = lshr i64 %963, 4
  %965 = trunc i64 %964 to i8
  %966 = and i8 %965, 1
  store i8 %966, i8* %26, align 1
  %967 = icmp eq i64 %952, 0
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %29, align 1
  %969 = lshr i64 %952, 63
  %970 = trunc i64 %969 to i8
  store i8 %970, i8* %32, align 1
  %971 = lshr i64 %947, 63
  %972 = lshr i64 %950, 57
  %973 = and i64 %972, 1
  %974 = xor i64 %969, %971
  %975 = xor i64 %969, %973
  %976 = add nuw nsw i64 %974, %975
  %977 = icmp eq i64 %976, 2
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %38, align 1
  %979 = add i64 %910, -24
  %980 = add i64 %946, 22
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i32*
  %982 = load i32, i32* %981, align 4
  %983 = sext i32 %982 to i64
  store i64 %983, i64* %RCX.i1144, align 8
  %984 = shl nsw i64 %983, 2
  %985 = add i64 %984, %952
  %986 = add i64 %946, 29
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i32*
  store i32 0, i32* %987, align 4
  %988 = load i64, i64* %RBP.i, align 8
  %989 = add i64 %988, -28
  %990 = load i64, i64* %3, align 8
  %991 = add i64 %990, 3
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %989 to i32*
  %993 = load i32, i32* %992, align 4
  %994 = add i32 %993, 1
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RAX.i1112, align 8
  %996 = icmp eq i32 %993, -1
  %997 = icmp eq i32 %994, 0
  %998 = or i1 %996, %997
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %14, align 1
  %1000 = and i32 %994, 255
  %1001 = tail call i32 @llvm.ctpop.i32(i32 %1000)
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  %1004 = xor i8 %1003, 1
  store i8 %1004, i8* %21, align 1
  %1005 = xor i32 %994, %993
  %1006 = lshr i32 %1005, 4
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  store i8 %1008, i8* %26, align 1
  %1009 = zext i1 %997 to i8
  store i8 %1009, i8* %29, align 1
  %1010 = lshr i32 %994, 31
  %1011 = trunc i32 %1010 to i8
  store i8 %1011, i8* %32, align 1
  %1012 = lshr i32 %993, 31
  %1013 = xor i32 %1010, %1012
  %1014 = add nuw nsw i32 %1013, %1010
  %1015 = icmp eq i32 %1014, 2
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %38, align 1
  %1017 = add i64 %990, 9
  store i64 %1017, i64* %3, align 8
  store i32 %994, i32* %992, align 4
  %1018 = load i64, i64* %3, align 8
  %1019 = add i64 %1018, -53
  store i64 %1019, i64* %3, align 8
  br label %block_.L_41a89f

block_.L_41a8d9:                                  ; preds = %block_.L_41a89f
  %1020 = add i64 %910, -24
  %1021 = add i64 %946, 8
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i32*
  %1023 = load i32, i32* %1022, align 4
  %1024 = add i32 %1023, 1
  %1025 = zext i32 %1024 to i64
  store i64 %1025, i64* %RAX.i1112, align 8
  %1026 = icmp eq i32 %1023, -1
  %1027 = icmp eq i32 %1024, 0
  %1028 = or i1 %1026, %1027
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %14, align 1
  %1030 = and i32 %1024, 255
  %1031 = tail call i32 @llvm.ctpop.i32(i32 %1030)
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  %1034 = xor i8 %1033, 1
  store i8 %1034, i8* %21, align 1
  %1035 = xor i32 %1024, %1023
  %1036 = lshr i32 %1035, 4
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  store i8 %1038, i8* %26, align 1
  %1039 = zext i1 %1027 to i8
  store i8 %1039, i8* %29, align 1
  %1040 = lshr i32 %1024, 31
  %1041 = trunc i32 %1040 to i8
  store i8 %1041, i8* %32, align 1
  %1042 = lshr i32 %1023, 31
  %1043 = xor i32 %1040, %1042
  %1044 = add nuw nsw i32 %1043, %1040
  %1045 = icmp eq i32 %1044, 2
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %38, align 1
  %1047 = add i64 %946, 14
  store i64 %1047, i64* %3, align 8
  store i32 %1024, i32* %1022, align 4
  %1048 = load i64, i64* %3, align 8
  %1049 = add i64 %1048, -96
  store i64 %1049, i64* %3, align 8
  br label %block_.L_41a887

block_.L_41a8ec:                                  ; preds = %block_.L_41a887
  %1050 = add i64 %864, -1228
  %1051 = add i64 %900, 6
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i32*
  %1053 = load i32, i32* %1052, align 4
  %1054 = zext i32 %1053 to i64
  store i64 %1054, i64* %RAX.i1112, align 8
  %1055 = add i64 %864, -44
  %1056 = add i64 %900, 9
  store i64 %1056, i64* %3, align 8
  %1057 = inttoptr i64 %1055 to i32*
  store i32 %1053, i32* %1057, align 4
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_41a8f5

block_.L_41a8f5:                                  ; preds = %block_.L_41a964, %block_.L_41a8ec
  %1058 = phi i64 [ %1317, %block_.L_41a964 ], [ %.pre99, %block_.L_41a8ec ]
  %1059 = load i64, i64* %RBP.i, align 8
  %1060 = add i64 %1059, -44
  %1061 = add i64 %1058, 3
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i32*
  %1063 = load i32, i32* %1062, align 4
  %1064 = zext i32 %1063 to i64
  store i64 %1064, i64* %RAX.i1112, align 8
  %1065 = add i64 %1059, -1232
  %1066 = add i64 %1058, 9
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i32*
  %1068 = load i32, i32* %1067, align 4
  %1069 = sub i32 %1063, %1068
  %1070 = icmp ult i32 %1063, %1068
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %14, align 1
  %1072 = and i32 %1069, 255
  %1073 = tail call i32 @llvm.ctpop.i32(i32 %1072)
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = xor i8 %1075, 1
  store i8 %1076, i8* %21, align 1
  %1077 = xor i32 %1068, %1063
  %1078 = xor i32 %1077, %1069
  %1079 = lshr i32 %1078, 4
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  store i8 %1081, i8* %26, align 1
  %1082 = icmp eq i32 %1069, 0
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %29, align 1
  %1084 = lshr i32 %1069, 31
  %1085 = trunc i32 %1084 to i8
  store i8 %1085, i8* %32, align 1
  %1086 = lshr i32 %1063, 31
  %1087 = lshr i32 %1068, 31
  %1088 = xor i32 %1087, %1086
  %1089 = xor i32 %1084, %1086
  %1090 = add nuw nsw i32 %1089, %1088
  %1091 = icmp eq i32 %1090, 2
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %38, align 1
  %1093 = icmp ne i8 %1085, 0
  %1094 = xor i1 %1093, %1091
  %.v149 = select i1 %1094, i64 15, i64 130
  %1095 = add i64 %1058, %.v149
  store i64 %1095, i64* %3, align 8
  br i1 %1094, label %block_41a904, label %block_.L_41a977

block_41a904:                                     ; preds = %block_.L_41a8f5
  %1096 = add i64 %1059, -1212
  %1097 = add i64 %1095, 6
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1096 to i32*
  %1099 = load i32, i32* %1098, align 4
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RAX.i1112, align 8
  %1101 = add i64 %1059, -40
  %1102 = add i64 %1095, 9
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i32*
  store i32 %1099, i32* %1103, align 4
  %.pre100 = load i64, i64* %3, align 8
  br label %block_.L_41a90d

block_.L_41a90d:                                  ; preds = %block_41a91c, %block_41a904
  %1104 = phi i64 [ %1287, %block_41a91c ], [ %.pre100, %block_41a904 ]
  %1105 = load i64, i64* %RBP.i, align 8
  %1106 = add i64 %1105, -40
  %1107 = add i64 %1104, 3
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i32*
  %1109 = load i32, i32* %1108, align 4
  %1110 = zext i32 %1109 to i64
  store i64 %1110, i64* %RAX.i1112, align 8
  %1111 = add i64 %1105, -1216
  %1112 = add i64 %1104, 9
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = sub i32 %1109, %1114
  %1116 = icmp ult i32 %1109, %1114
  %1117 = zext i1 %1116 to i8
  store i8 %1117, i8* %14, align 1
  %1118 = and i32 %1115, 255
  %1119 = tail call i32 @llvm.ctpop.i32(i32 %1118)
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  %1122 = xor i8 %1121, 1
  store i8 %1122, i8* %21, align 1
  %1123 = xor i32 %1114, %1109
  %1124 = xor i32 %1123, %1115
  %1125 = lshr i32 %1124, 4
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  store i8 %1127, i8* %26, align 1
  %1128 = icmp eq i32 %1115, 0
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %29, align 1
  %1130 = lshr i32 %1115, 31
  %1131 = trunc i32 %1130 to i8
  store i8 %1131, i8* %32, align 1
  %1132 = lshr i32 %1109, 31
  %1133 = lshr i32 %1114, 31
  %1134 = xor i32 %1133, %1132
  %1135 = xor i32 %1130, %1132
  %1136 = add nuw nsw i32 %1135, %1134
  %1137 = icmp eq i32 %1136, 2
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %38, align 1
  %1139 = icmp ne i8 %1131, 0
  %1140 = xor i1 %1139, %1137
  %.v123 = select i1 %1140, i64 15, i64 87
  %1141 = add i64 %1104, %.v123
  store i64 %1141, i64* %3, align 8
  br i1 %1140, label %block_41a91c, label %block_.L_41a964

block_41a91c:                                     ; preds = %block_.L_41a90d
  %1142 = add i64 %1105, -176
  store i64 %1142, i64* %RAX.i1112, align 8
  %1143 = add i64 %1105, -112
  store i64 %1143, i64* %RCX.i1144, align 8
  %1144 = icmp ult i64 %1143, %1142
  %1145 = icmp ult i64 %1143, 64
  %1146 = or i1 %1144, %1145
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %14, align 1
  %1148 = trunc i64 %1143 to i32
  %1149 = and i32 %1148, 255
  %1150 = tail call i32 @llvm.ctpop.i32(i32 %1149)
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = xor i8 %1152, 1
  store i8 %1153, i8* %21, align 1
  %1154 = xor i64 %1142, %1143
  %1155 = lshr i64 %1154, 4
  %1156 = trunc i64 %1155 to i8
  %1157 = and i8 %1156, 1
  store i8 %1157, i8* %26, align 1
  %1158 = icmp eq i64 %1143, 0
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %29, align 1
  %1160 = lshr i64 %1143, 63
  %1161 = trunc i64 %1160 to i8
  store i8 %1161, i8* %32, align 1
  %1162 = lshr i64 %1142, 63
  %1163 = xor i64 %1160, %1162
  %1164 = add nuw nsw i64 %1163, %1160
  %1165 = icmp eq i64 %1164, 2
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %38, align 1
  %1167 = add i64 %1105, -44
  %1168 = add i64 %1141, 18
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i32*
  %1170 = load i32, i32* %1169, align 4
  %1171 = sext i32 %1170 to i64
  %1172 = shl nsw i64 %1171, 4
  store i64 %1172, i64* %RDX.i1107.pre-phi, align 8
  %1173 = add i64 %1172, %1143
  store i64 %1173, i64* %RCX.i1144, align 8
  %1174 = icmp ult i64 %1173, %1143
  %1175 = icmp ult i64 %1173, %1172
  %1176 = or i1 %1174, %1175
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %14, align 1
  %1178 = trunc i64 %1173 to i32
  %1179 = and i32 %1178, 255
  %1180 = tail call i32 @llvm.ctpop.i32(i32 %1179)
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  %1183 = xor i8 %1182, 1
  store i8 %1183, i8* %21, align 1
  %1184 = xor i64 %1172, %1143
  %1185 = xor i64 %1184, %1173
  %1186 = lshr i64 %1185, 4
  %1187 = trunc i64 %1186 to i8
  %1188 = and i8 %1187, 1
  store i8 %1188, i8* %26, align 1
  %1189 = icmp eq i64 %1173, 0
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %29, align 1
  %1191 = lshr i64 %1173, 63
  %1192 = trunc i64 %1191 to i8
  store i8 %1192, i8* %32, align 1
  %1193 = lshr i64 %1171, 59
  %1194 = and i64 %1193, 1
  %1195 = xor i64 %1191, %1160
  %1196 = xor i64 %1191, %1194
  %1197 = add nuw nsw i64 %1195, %1196
  %1198 = icmp eq i64 %1197, 2
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %38, align 1
  %1200 = load i64, i64* %RBP.i, align 8
  %1201 = add i64 %1200, -40
  %1202 = add i64 %1141, 29
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i32*
  %1204 = load i32, i32* %1203, align 4
  %1205 = sext i32 %1204 to i64
  store i64 %1205, i64* %RDX.i1107.pre-phi, align 8
  %1206 = shl nsw i64 %1205, 2
  %1207 = add i64 %1206, %1173
  %1208 = add i64 %1141, 36
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1207 to i32*
  store i32 0, i32* %1209, align 4
  %1210 = load i64, i64* %RBP.i, align 8
  %1211 = add i64 %1210, -44
  %1212 = load i64, i64* %3, align 8
  %1213 = add i64 %1212, 4
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1211 to i32*
  %1215 = load i32, i32* %1214, align 4
  %1216 = sext i32 %1215 to i64
  %1217 = shl nsw i64 %1216, 4
  store i64 %1217, i64* %RCX.i1144, align 8
  %1218 = load i64, i64* %RAX.i1112, align 8
  %1219 = add i64 %1217, %1218
  store i64 %1219, i64* %RAX.i1112, align 8
  %1220 = icmp ult i64 %1219, %1218
  %1221 = icmp ult i64 %1219, %1217
  %1222 = or i1 %1220, %1221
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %14, align 1
  %1224 = trunc i64 %1219 to i32
  %1225 = and i32 %1224, 255
  %1226 = tail call i32 @llvm.ctpop.i32(i32 %1225)
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = xor i8 %1228, 1
  store i8 %1229, i8* %21, align 1
  %1230 = xor i64 %1217, %1218
  %1231 = xor i64 %1230, %1219
  %1232 = lshr i64 %1231, 4
  %1233 = trunc i64 %1232 to i8
  %1234 = and i8 %1233, 1
  store i8 %1234, i8* %26, align 1
  %1235 = icmp eq i64 %1219, 0
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %29, align 1
  %1237 = lshr i64 %1219, 63
  %1238 = trunc i64 %1237 to i8
  store i8 %1238, i8* %32, align 1
  %1239 = lshr i64 %1218, 63
  %1240 = lshr i64 %1216, 59
  %1241 = and i64 %1240, 1
  %1242 = xor i64 %1237, %1239
  %1243 = xor i64 %1237, %1241
  %1244 = add nuw nsw i64 %1242, %1243
  %1245 = icmp eq i64 %1244, 2
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %38, align 1
  %1247 = add i64 %1210, -40
  %1248 = add i64 %1212, 15
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i32*
  %1250 = load i32, i32* %1249, align 4
  %1251 = sext i32 %1250 to i64
  store i64 %1251, i64* %RCX.i1144, align 8
  %1252 = shl nsw i64 %1251, 2
  %1253 = add i64 %1252, %1219
  %1254 = add i64 %1212, 22
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i32*
  store i32 0, i32* %1255, align 4
  %1256 = load i64, i64* %RBP.i, align 8
  %1257 = add i64 %1256, -40
  %1258 = load i64, i64* %3, align 8
  %1259 = add i64 %1258, 3
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1257 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = add i32 %1261, 1
  %1263 = zext i32 %1262 to i64
  store i64 %1263, i64* %RAX.i1112, align 8
  %1264 = icmp eq i32 %1261, -1
  %1265 = icmp eq i32 %1262, 0
  %1266 = or i1 %1264, %1265
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %14, align 1
  %1268 = and i32 %1262, 255
  %1269 = tail call i32 @llvm.ctpop.i32(i32 %1268)
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  %1272 = xor i8 %1271, 1
  store i8 %1272, i8* %21, align 1
  %1273 = xor i32 %1262, %1261
  %1274 = lshr i32 %1273, 4
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  store i8 %1276, i8* %26, align 1
  %1277 = zext i1 %1265 to i8
  store i8 %1277, i8* %29, align 1
  %1278 = lshr i32 %1262, 31
  %1279 = trunc i32 %1278 to i8
  store i8 %1279, i8* %32, align 1
  %1280 = lshr i32 %1261, 31
  %1281 = xor i32 %1278, %1280
  %1282 = add nuw nsw i32 %1281, %1278
  %1283 = icmp eq i32 %1282, 2
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %38, align 1
  %1285 = add i64 %1258, 9
  store i64 %1285, i64* %3, align 8
  store i32 %1262, i32* %1260, align 4
  %1286 = load i64, i64* %3, align 8
  %1287 = add i64 %1286, -82
  store i64 %1287, i64* %3, align 8
  br label %block_.L_41a90d

block_.L_41a964:                                  ; preds = %block_.L_41a90d
  %1288 = add i64 %1105, -44
  %1289 = add i64 %1141, 8
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = add i32 %1291, 1
  %1293 = zext i32 %1292 to i64
  store i64 %1293, i64* %RAX.i1112, align 8
  %1294 = icmp eq i32 %1291, -1
  %1295 = icmp eq i32 %1292, 0
  %1296 = or i1 %1294, %1295
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %14, align 1
  %1298 = and i32 %1292, 255
  %1299 = tail call i32 @llvm.ctpop.i32(i32 %1298)
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  store i8 %1302, i8* %21, align 1
  %1303 = xor i32 %1292, %1291
  %1304 = lshr i32 %1303, 4
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  store i8 %1306, i8* %26, align 1
  %1307 = zext i1 %1295 to i8
  store i8 %1307, i8* %29, align 1
  %1308 = lshr i32 %1292, 31
  %1309 = trunc i32 %1308 to i8
  store i8 %1309, i8* %32, align 1
  %1310 = lshr i32 %1291, 31
  %1311 = xor i32 %1308, %1310
  %1312 = add nuw nsw i32 %1311, %1308
  %1313 = icmp eq i32 %1312, 2
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %38, align 1
  %1315 = add i64 %1141, 14
  store i64 %1315, i64* %3, align 8
  store i32 %1292, i32* %1290, align 4
  %1316 = load i64, i64* %3, align 8
  %1317 = add i64 %1316, -125
  store i64 %1317, i64* %3, align 8
  br label %block_.L_41a8f5

block_.L_41a977:                                  ; preds = %block_.L_41a8f5
  %1318 = add i64 %1095, 549
  br label %block_.L_41ab9c

block_.L_41a97c:                                  ; preds = %block_41a857, %block_.L_41a83b, %block_41a869
  %1319 = phi i64 [ %853, %block_41a869 ], [ %837, %block_41a857 ], [ %801, %block_.L_41a83b ]
  %1320 = add i64 %443, -16
  %1321 = add i64 %1319, 4
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1320 to i32*
  %1323 = load i32, i32* %1322, align 4
  %1324 = add i32 %1323, -1
  %1325 = icmp eq i32 %1323, 0
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %14, align 1
  %1327 = and i32 %1324, 255
  %1328 = tail call i32 @llvm.ctpop.i32(i32 %1327)
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  %1331 = xor i8 %1330, 1
  store i8 %1331, i8* %21, align 1
  %1332 = xor i32 %1324, %1323
  %1333 = lshr i32 %1332, 4
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  store i8 %1335, i8* %26, align 1
  %1336 = icmp eq i32 %1324, 0
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %29, align 1
  %1338 = lshr i32 %1324, 31
  %1339 = trunc i32 %1338 to i8
  store i8 %1339, i8* %32, align 1
  %1340 = lshr i32 %1323, 31
  %1341 = xor i32 %1338, %1340
  %1342 = add nuw nsw i32 %1341, %1340
  %1343 = icmp eq i32 %1342, 2
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %38, align 1
  %1345 = icmp ne i8 %1339, 0
  %1346 = xor i1 %1345, %1343
  %.v130 = select i1 %1346, i64 263, i64 10
  %1347 = add i64 %1319, %.v130
  store i64 %1347, i64* %3, align 8
  br i1 %1346, label %block_.L_41aa83, label %block_41a986

block_41a986:                                     ; preds = %block_.L_41a97c
  %1348 = add i64 %1347, 4
  store i64 %1348, i64* %3, align 8
  %1349 = load i32, i32* %1322, align 4
  %1350 = add i32 %1349, -7
  %1351 = icmp ult i32 %1349, 7
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %14, align 1
  %1353 = and i32 %1350, 255
  %1354 = tail call i32 @llvm.ctpop.i32(i32 %1353)
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  store i8 %1357, i8* %21, align 1
  %1358 = xor i32 %1350, %1349
  %1359 = lshr i32 %1358, 4
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  store i8 %1361, i8* %26, align 1
  %1362 = icmp eq i32 %1350, 0
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %29, align 1
  %1364 = lshr i32 %1350, 31
  %1365 = trunc i32 %1364 to i8
  store i8 %1365, i8* %32, align 1
  %1366 = lshr i32 %1349, 31
  %1367 = xor i32 %1364, %1366
  %1368 = add nuw nsw i32 %1367, %1366
  %1369 = icmp eq i32 %1368, 2
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %38, align 1
  %1371 = icmp ne i8 %1365, 0
  %1372 = xor i1 %1371, %1369
  %.demorgan = or i1 %1362, %1372
  %.v131 = select i1 %.demorgan, i64 10, i64 253
  %1373 = add i64 %1347, %.v131
  store i64 %1373, i64* %3, align 8
  br i1 %.demorgan, label %block_41a990, label %block_.L_41aa83

block_41a990:                                     ; preds = %block_41a986
  %1374 = add i64 %443, -1228
  %1375 = add i64 %1373, 6
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1374 to i32*
  %1377 = load i32, i32* %1376, align 4
  %1378 = zext i32 %1377 to i64
  store i64 %1378, i64* %RAX.i1112, align 8
  %1379 = add i64 %443, -44
  %1380 = add i64 %1373, 9
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i32*
  store i32 %1377, i32* %1381, align 4
  %RSI.i688 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_41a999

block_.L_41a999:                                  ; preds = %block_.L_41aa6b, %block_41a990
  %1382 = phi i64 [ %1746, %block_.L_41aa6b ], [ %.pre102, %block_41a990 ]
  %1383 = load i64, i64* %RBP.i, align 8
  %1384 = add i64 %1383, -44
  %1385 = add i64 %1382, 3
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1384 to i32*
  %1387 = load i32, i32* %1386, align 4
  %1388 = zext i32 %1387 to i64
  store i64 %1388, i64* %RAX.i1112, align 8
  %1389 = add i64 %1383, -1232
  %1390 = add i64 %1382, 9
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i32*
  %1392 = load i32, i32* %1391, align 4
  %1393 = sub i32 %1387, %1392
  %1394 = icmp ult i32 %1387, %1392
  %1395 = zext i1 %1394 to i8
  store i8 %1395, i8* %14, align 1
  %1396 = and i32 %1393, 255
  %1397 = tail call i32 @llvm.ctpop.i32(i32 %1396)
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = xor i8 %1399, 1
  store i8 %1400, i8* %21, align 1
  %1401 = xor i32 %1392, %1387
  %1402 = xor i32 %1401, %1393
  %1403 = lshr i32 %1402, 4
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  store i8 %1405, i8* %26, align 1
  %1406 = icmp eq i32 %1393, 0
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %29, align 1
  %1408 = lshr i32 %1393, 31
  %1409 = trunc i32 %1408 to i8
  store i8 %1409, i8* %32, align 1
  %1410 = lshr i32 %1387, 31
  %1411 = lshr i32 %1392, 31
  %1412 = xor i32 %1411, %1410
  %1413 = xor i32 %1408, %1410
  %1414 = add nuw nsw i32 %1413, %1412
  %1415 = icmp eq i32 %1414, 2
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %38, align 1
  %1417 = icmp ne i8 %1409, 0
  %1418 = xor i1 %1417, %1415
  %.v144 = select i1 %1418, i64 15, i64 229
  %1419 = add i64 %1382, %.v144
  store i64 %1419, i64* %3, align 8
  br i1 %1418, label %block_41a9a8, label %block_.L_41aa7e

block_41a9a8:                                     ; preds = %block_.L_41a999
  %1420 = add i64 %1383, -1212
  %1421 = add i64 %1419, 6
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to i32*
  %1423 = load i32, i32* %1422, align 4
  %1424 = zext i32 %1423 to i64
  store i64 %1424, i64* %RAX.i1112, align 8
  %1425 = add i64 %1383, -40
  %1426 = add i64 %1419, 9
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i32*
  store i32 %1423, i32* %1427, align 4
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_41a9b1

block_.L_41a9b1:                                  ; preds = %block_41a9c0, %block_41a9a8
  %1428 = phi i64 [ %1716, %block_41a9c0 ], [ %.pre103, %block_41a9a8 ]
  %1429 = load i64, i64* %RBP.i, align 8
  %1430 = add i64 %1429, -40
  %1431 = add i64 %1428, 3
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i32*
  %1433 = load i32, i32* %1432, align 4
  %1434 = zext i32 %1433 to i64
  store i64 %1434, i64* %RAX.i1112, align 8
  %1435 = add i64 %1429, -1216
  %1436 = add i64 %1428, 9
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i32*
  %1438 = load i32, i32* %1437, align 4
  %1439 = sub i32 %1433, %1438
  %1440 = icmp ult i32 %1433, %1438
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %14, align 1
  %1442 = and i32 %1439, 255
  %1443 = tail call i32 @llvm.ctpop.i32(i32 %1442)
  %1444 = trunc i32 %1443 to i8
  %1445 = and i8 %1444, 1
  %1446 = xor i8 %1445, 1
  store i8 %1446, i8* %21, align 1
  %1447 = xor i32 %1438, %1433
  %1448 = xor i32 %1447, %1439
  %1449 = lshr i32 %1448, 4
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  store i8 %1451, i8* %26, align 1
  %1452 = icmp eq i32 %1439, 0
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %29, align 1
  %1454 = lshr i32 %1439, 31
  %1455 = trunc i32 %1454 to i8
  store i8 %1455, i8* %32, align 1
  %1456 = lshr i32 %1433, 31
  %1457 = lshr i32 %1438, 31
  %1458 = xor i32 %1457, %1456
  %1459 = xor i32 %1454, %1456
  %1460 = add nuw nsw i32 %1459, %1458
  %1461 = icmp eq i32 %1460, 2
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %38, align 1
  %1463 = icmp ne i8 %1455, 0
  %1464 = xor i1 %1463, %1461
  %.v126 = select i1 %1464, i64 15, i64 186
  %1465 = add i64 %1428, %.v126
  store i64 %1465, i64* %3, align 8
  br i1 %1464, label %block_41a9c0, label %block_.L_41aa6b

block_41a9c0:                                     ; preds = %block_.L_41a9b1
  %1466 = add i64 %1429, -176
  store i64 %1466, i64* %RAX.i1112, align 8
  %1467 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1467, i64* %RCX.i1144, align 8
  %1468 = add i64 %1467, 71928
  %1469 = add i64 %1465, 22
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1468 to i64*
  %1471 = load i64, i64* %1470, align 8
  store i64 %1471, i64* %RCX.i1144, align 8
  %1472 = add i64 %1465, 26
  store i64 %1472, i64* %3, align 8
  %1473 = load i32, i32* %1432, align 4
  %1474 = sext i32 %1473 to i64
  store i64 %1474, i64* %RDX.i1107.pre-phi, align 8
  %1475 = shl nsw i64 %1474, 3
  %1476 = add i64 %1475, %1471
  %1477 = add i64 %1465, 30
  store i64 %1477, i64* %3, align 8
  %1478 = inttoptr i64 %1476 to i64*
  %1479 = load i64, i64* %1478, align 8
  store i64 %1479, i64* %RCX.i1144, align 8
  %1480 = add i64 %1429, -44
  %1481 = add i64 %1465, 34
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1480 to i32*
  %1483 = load i32, i32* %1482, align 4
  %1484 = sext i32 %1483 to i64
  store i64 %1484, i64* %RDX.i1107.pre-phi, align 8
  %1485 = shl nsw i64 %1484, 3
  %1486 = add i64 %1485, %1479
  %1487 = add i64 %1465, 38
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1486 to i64*
  %1489 = load i64, i64* %1488, align 8
  store i64 %1489, i64* %RCX.i1144, align 8
  %1490 = add i64 %1465, 41
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1489 to i64*
  %1492 = load i64, i64* %1491, align 8
  store i64 %1492, i64* %RCX.i1144, align 8
  %1493 = add i64 %1429, -20
  %1494 = add i64 %1465, 45
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i32*
  %1496 = load i32, i32* %1495, align 4
  %1497 = sext i32 %1496 to i64
  store i64 %1497, i64* %RDX.i1107.pre-phi, align 8
  %1498 = shl nsw i64 %1497, 3
  %1499 = add i64 %1498, %1492
  %1500 = add i64 %1465, 49
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i64*
  %1502 = load i64, i64* %1501, align 8
  store i64 %1502, i64* %RCX.i1144, align 8
  %1503 = add i64 %1429, -16
  %1504 = add i64 %1465, 53
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = sext i32 %1506 to i64
  store i64 %1507, i64* %RDX.i1107.pre-phi, align 8
  %1508 = shl nsw i64 %1507, 3
  %1509 = add i64 %1508, %1502
  %1510 = add i64 %1465, 57
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i64*
  %1512 = load i64, i64* %1511, align 8
  store i64 %1512, i64* %RCX.i1144, align 8
  %1513 = add i64 %1465, 60
  store i64 %1513, i64* %3, align 8
  %1514 = inttoptr i64 %1512 to i16*
  %1515 = load i16, i16* %1514, align 2
  %1516 = sext i16 %1515 to i64
  %1517 = and i64 %1516, 4294967295
  store i64 %1517, i64* %RSI.i688, align 8
  %1518 = add i64 %1465, 64
  store i64 %1518, i64* %3, align 8
  %1519 = load i32, i32* %1482, align 4
  %1520 = sext i32 %1519 to i64
  %1521 = shl nsw i64 %1520, 4
  store i64 %1521, i64* %RCX.i1144, align 8
  %1522 = load i64, i64* %RAX.i1112, align 8
  %1523 = add i64 %1521, %1522
  store i64 %1523, i64* %RDX.i1107.pre-phi, align 8
  %1524 = icmp ult i64 %1523, %1522
  %1525 = icmp ult i64 %1523, %1521
  %1526 = or i1 %1524, %1525
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %14, align 1
  %1528 = trunc i64 %1523 to i32
  %1529 = and i32 %1528, 255
  %1530 = tail call i32 @llvm.ctpop.i32(i32 %1529)
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = xor i8 %1532, 1
  store i8 %1533, i8* %21, align 1
  %1534 = xor i64 %1521, %1522
  %1535 = xor i64 %1534, %1523
  %1536 = lshr i64 %1535, 4
  %1537 = trunc i64 %1536 to i8
  %1538 = and i8 %1537, 1
  store i8 %1538, i8* %26, align 1
  %1539 = icmp eq i64 %1523, 0
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %29, align 1
  %1541 = lshr i64 %1523, 63
  %1542 = trunc i64 %1541 to i8
  store i8 %1542, i8* %32, align 1
  %1543 = lshr i64 %1522, 63
  %1544 = lshr i64 %1520, 59
  %1545 = and i64 %1544, 1
  %1546 = xor i64 %1541, %1543
  %1547 = xor i64 %1541, %1545
  %1548 = add nuw nsw i64 %1546, %1547
  %1549 = icmp eq i64 %1548, 2
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %38, align 1
  %1551 = load i64, i64* %RBP.i, align 8
  %1552 = add i64 %1551, -40
  %1553 = add i64 %1465, 78
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = sext i32 %1555 to i64
  %1557 = shl nsw i64 %1556, 2
  %1558 = add i64 %1557, %1523
  %1559 = sext i16 %1515 to i32
  %1560 = add i64 %1465, 81
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1558 to i32*
  store i32 %1559, i32* %1561, align 4
  %1562 = load i64, i64* %3, align 8
  %1563 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1563, i64* %RCX.i1144, align 8
  %1564 = add i64 %1563, 71928
  %1565 = add i64 %1562, 15
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i64*
  %1567 = load i64, i64* %1566, align 8
  store i64 %1567, i64* %RCX.i1144, align 8
  %1568 = load i64, i64* %RBP.i, align 8
  %1569 = add i64 %1568, -40
  %1570 = add i64 %1562, 19
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1569 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = sext i32 %1572 to i64
  store i64 %1573, i64* %RDX.i1107.pre-phi, align 8
  %1574 = shl nsw i64 %1573, 3
  %1575 = add i64 %1574, %1567
  %1576 = add i64 %1562, 23
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i64*
  %1578 = load i64, i64* %1577, align 8
  store i64 %1578, i64* %RCX.i1144, align 8
  %1579 = add i64 %1568, -44
  %1580 = add i64 %1562, 27
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = sext i32 %1582 to i64
  store i64 %1583, i64* %RDX.i1107.pre-phi, align 8
  %1584 = shl nsw i64 %1583, 3
  %1585 = add i64 %1584, %1578
  %1586 = add i64 %1562, 31
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1585 to i64*
  %1588 = load i64, i64* %1587, align 8
  store i64 %1588, i64* %RCX.i1144, align 8
  %1589 = add i64 %1562, 34
  store i64 %1589, i64* %3, align 8
  %1590 = inttoptr i64 %1588 to i64*
  %1591 = load i64, i64* %1590, align 8
  store i64 %1591, i64* %RCX.i1144, align 8
  %1592 = add i64 %1568, -20
  %1593 = add i64 %1562, 38
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1592 to i32*
  %1595 = load i32, i32* %1594, align 4
  %1596 = sext i32 %1595 to i64
  store i64 %1596, i64* %RDX.i1107.pre-phi, align 8
  %1597 = shl nsw i64 %1596, 3
  %1598 = add i64 %1597, %1591
  %1599 = add i64 %1562, 42
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i64*
  %1601 = load i64, i64* %1600, align 8
  store i64 %1601, i64* %RCX.i1144, align 8
  %1602 = add i64 %1568, -16
  %1603 = add i64 %1562, 46
  store i64 %1603, i64* %3, align 8
  %1604 = inttoptr i64 %1602 to i32*
  %1605 = load i32, i32* %1604, align 4
  %1606 = sext i32 %1605 to i64
  store i64 %1606, i64* %RDX.i1107.pre-phi, align 8
  %1607 = shl nsw i64 %1606, 3
  %1608 = add i64 %1607, %1601
  %1609 = add i64 %1562, 50
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1608 to i64*
  %1611 = load i64, i64* %1610, align 8
  store i64 %1611, i64* %RCX.i1144, align 8
  %1612 = add i64 %1611, 2
  %1613 = add i64 %1562, 54
  store i64 %1613, i64* %3, align 8
  %1614 = inttoptr i64 %1612 to i16*
  %1615 = load i16, i16* %1614, align 2
  %1616 = sext i16 %1615 to i64
  %1617 = and i64 %1616, 4294967295
  store i64 %1617, i64* %RSI.i688, align 8
  %1618 = load i64, i64* %RAX.i1112, align 8
  %1619 = add i64 %1618, 64
  store i64 %1619, i64* %RAX.i1112, align 8
  %1620 = icmp ugt i64 %1618, -65
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %14, align 1
  %1622 = trunc i64 %1619 to i32
  %1623 = and i32 %1622, 255
  %1624 = tail call i32 @llvm.ctpop.i32(i32 %1623)
  %1625 = trunc i32 %1624 to i8
  %1626 = and i8 %1625, 1
  %1627 = xor i8 %1626, 1
  store i8 %1627, i8* %21, align 1
  %1628 = xor i64 %1619, %1618
  %1629 = lshr i64 %1628, 4
  %1630 = trunc i64 %1629 to i8
  %1631 = and i8 %1630, 1
  store i8 %1631, i8* %26, align 1
  %1632 = icmp eq i64 %1619, 0
  %1633 = zext i1 %1632 to i8
  store i8 %1633, i8* %29, align 1
  %1634 = lshr i64 %1619, 63
  %1635 = trunc i64 %1634 to i8
  store i8 %1635, i8* %32, align 1
  %1636 = lshr i64 %1618, 63
  %1637 = xor i64 %1634, %1636
  %1638 = add nuw nsw i64 %1637, %1634
  %1639 = icmp eq i64 %1638, 2
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %38, align 1
  %1641 = load i64, i64* %RBP.i, align 8
  %1642 = add i64 %1641, -44
  %1643 = add i64 %1562, 62
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = sext i32 %1645 to i64
  %1647 = shl nsw i64 %1646, 4
  store i64 %1647, i64* %RCX.i1144, align 8
  %1648 = add i64 %1647, %1619
  store i64 %1648, i64* %RAX.i1112, align 8
  %1649 = icmp ult i64 %1648, %1619
  %1650 = icmp ult i64 %1648, %1647
  %1651 = or i1 %1649, %1650
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %14, align 1
  %1653 = trunc i64 %1648 to i32
  %1654 = and i32 %1653, 255
  %1655 = tail call i32 @llvm.ctpop.i32(i32 %1654)
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  %1658 = xor i8 %1657, 1
  store i8 %1658, i8* %21, align 1
  %1659 = xor i64 %1647, %1619
  %1660 = xor i64 %1659, %1648
  %1661 = lshr i64 %1660, 4
  %1662 = trunc i64 %1661 to i8
  %1663 = and i8 %1662, 1
  store i8 %1663, i8* %26, align 1
  %1664 = icmp eq i64 %1648, 0
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %29, align 1
  %1666 = lshr i64 %1648, 63
  %1667 = trunc i64 %1666 to i8
  store i8 %1667, i8* %32, align 1
  %1668 = lshr i64 %1646, 59
  %1669 = and i64 %1668, 1
  %1670 = xor i64 %1666, %1634
  %1671 = xor i64 %1666, %1669
  %1672 = add nuw nsw i64 %1670, %1671
  %1673 = icmp eq i64 %1672, 2
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %38, align 1
  %1675 = add i64 %1641, -40
  %1676 = add i64 %1562, 73
  store i64 %1676, i64* %3, align 8
  %1677 = inttoptr i64 %1675 to i32*
  %1678 = load i32, i32* %1677, align 4
  %1679 = sext i32 %1678 to i64
  store i64 %1679, i64* %RCX.i1144, align 8
  %1680 = shl nsw i64 %1679, 2
  %1681 = add i64 %1680, %1648
  %1682 = load i32, i32* %ESI.i1158, align 4
  %1683 = add i64 %1562, 76
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1681 to i32*
  store i32 %1682, i32* %1684, align 4
  %1685 = load i64, i64* %RBP.i, align 8
  %1686 = add i64 %1685, -40
  %1687 = load i64, i64* %3, align 8
  %1688 = add i64 %1687, 3
  store i64 %1688, i64* %3, align 8
  %1689 = inttoptr i64 %1686 to i32*
  %1690 = load i32, i32* %1689, align 4
  %1691 = add i32 %1690, 1
  %1692 = zext i32 %1691 to i64
  store i64 %1692, i64* %RAX.i1112, align 8
  %1693 = icmp eq i32 %1690, -1
  %1694 = icmp eq i32 %1691, 0
  %1695 = or i1 %1693, %1694
  %1696 = zext i1 %1695 to i8
  store i8 %1696, i8* %14, align 1
  %1697 = and i32 %1691, 255
  %1698 = tail call i32 @llvm.ctpop.i32(i32 %1697)
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  %1701 = xor i8 %1700, 1
  store i8 %1701, i8* %21, align 1
  %1702 = xor i32 %1691, %1690
  %1703 = lshr i32 %1702, 4
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  store i8 %1705, i8* %26, align 1
  %1706 = zext i1 %1694 to i8
  store i8 %1706, i8* %29, align 1
  %1707 = lshr i32 %1691, 31
  %1708 = trunc i32 %1707 to i8
  store i8 %1708, i8* %32, align 1
  %1709 = lshr i32 %1690, 31
  %1710 = xor i32 %1707, %1709
  %1711 = add nuw nsw i32 %1710, %1707
  %1712 = icmp eq i32 %1711, 2
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %38, align 1
  %1714 = add i64 %1687, 9
  store i64 %1714, i64* %3, align 8
  store i32 %1691, i32* %1689, align 4
  %1715 = load i64, i64* %3, align 8
  %1716 = add i64 %1715, -181
  store i64 %1716, i64* %3, align 8
  br label %block_.L_41a9b1

block_.L_41aa6b:                                  ; preds = %block_.L_41a9b1
  %1717 = add i64 %1429, -44
  %1718 = add i64 %1465, 8
  store i64 %1718, i64* %3, align 8
  %1719 = inttoptr i64 %1717 to i32*
  %1720 = load i32, i32* %1719, align 4
  %1721 = add i32 %1720, 1
  %1722 = zext i32 %1721 to i64
  store i64 %1722, i64* %RAX.i1112, align 8
  %1723 = icmp eq i32 %1720, -1
  %1724 = icmp eq i32 %1721, 0
  %1725 = or i1 %1723, %1724
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %14, align 1
  %1727 = and i32 %1721, 255
  %1728 = tail call i32 @llvm.ctpop.i32(i32 %1727)
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  %1731 = xor i8 %1730, 1
  store i8 %1731, i8* %21, align 1
  %1732 = xor i32 %1721, %1720
  %1733 = lshr i32 %1732, 4
  %1734 = trunc i32 %1733 to i8
  %1735 = and i8 %1734, 1
  store i8 %1735, i8* %26, align 1
  %1736 = zext i1 %1724 to i8
  store i8 %1736, i8* %29, align 1
  %1737 = lshr i32 %1721, 31
  %1738 = trunc i32 %1737 to i8
  store i8 %1738, i8* %32, align 1
  %1739 = lshr i32 %1720, 31
  %1740 = xor i32 %1737, %1739
  %1741 = add nuw nsw i32 %1740, %1737
  %1742 = icmp eq i32 %1741, 2
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %38, align 1
  %1744 = add i64 %1465, 14
  store i64 %1744, i64* %3, align 8
  store i32 %1721, i32* %1719, align 4
  %1745 = load i64, i64* %3, align 8
  %1746 = add i64 %1745, -224
  store i64 %1746, i64* %3, align 8
  br label %block_.L_41a999

block_.L_41aa7e:                                  ; preds = %block_.L_41a999
  %1747 = add i64 %1419, 149
  br label %block_.L_41ab13

block_.L_41aa83:                                  ; preds = %block_41a986, %block_.L_41a97c
  %1748 = phi i64 [ %1373, %block_41a986 ], [ %1347, %block_.L_41a97c ]
  %1749 = add i64 %443, -1228
  %1750 = add i64 %1748, 6
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1749 to i32*
  %1752 = load i32, i32* %1751, align 4
  %1753 = zext i32 %1752 to i64
  store i64 %1753, i64* %RAX.i1112, align 8
  %1754 = add i64 %443, -44
  %1755 = add i64 %1748, 9
  store i64 %1755, i64* %3, align 8
  %1756 = inttoptr i64 %1754 to i32*
  store i32 %1752, i32* %1756, align 4
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_41aa8c

block_.L_41aa8c:                                  ; preds = %block_.L_41aafb, %block_.L_41aa83
  %1757 = phi i64 [ %2016, %block_.L_41aafb ], [ %.pre104, %block_.L_41aa83 ]
  %1758 = load i64, i64* %RBP.i, align 8
  %1759 = add i64 %1758, -44
  %1760 = add i64 %1757, 3
  store i64 %1760, i64* %3, align 8
  %1761 = inttoptr i64 %1759 to i32*
  %1762 = load i32, i32* %1761, align 4
  %1763 = zext i32 %1762 to i64
  store i64 %1763, i64* %RAX.i1112, align 8
  %1764 = add i64 %1758, -1232
  %1765 = add i64 %1757, 9
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1764 to i32*
  %1767 = load i32, i32* %1766, align 4
  %1768 = sub i32 %1762, %1767
  %1769 = icmp ult i32 %1762, %1767
  %1770 = zext i1 %1769 to i8
  store i8 %1770, i8* %14, align 1
  %1771 = and i32 %1768, 255
  %1772 = tail call i32 @llvm.ctpop.i32(i32 %1771)
  %1773 = trunc i32 %1772 to i8
  %1774 = and i8 %1773, 1
  %1775 = xor i8 %1774, 1
  store i8 %1775, i8* %21, align 1
  %1776 = xor i32 %1767, %1762
  %1777 = xor i32 %1776, %1768
  %1778 = lshr i32 %1777, 4
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  store i8 %1780, i8* %26, align 1
  %1781 = icmp eq i32 %1768, 0
  %1782 = zext i1 %1781 to i8
  store i8 %1782, i8* %29, align 1
  %1783 = lshr i32 %1768, 31
  %1784 = trunc i32 %1783 to i8
  store i8 %1784, i8* %32, align 1
  %1785 = lshr i32 %1762, 31
  %1786 = lshr i32 %1767, 31
  %1787 = xor i32 %1786, %1785
  %1788 = xor i32 %1783, %1785
  %1789 = add nuw nsw i32 %1788, %1787
  %1790 = icmp eq i32 %1789, 2
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %38, align 1
  %1792 = icmp ne i8 %1784, 0
  %1793 = xor i1 %1792, %1790
  %.v132 = select i1 %1793, i64 15, i64 130
  %1794 = add i64 %1757, %.v132
  store i64 %1794, i64* %3, align 8
  br i1 %1793, label %block_41aa9b, label %block_.L_41ab0e

block_41aa9b:                                     ; preds = %block_.L_41aa8c
  %1795 = add i64 %1758, -1212
  %1796 = add i64 %1794, 6
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i32*
  %1798 = load i32, i32* %1797, align 4
  %1799 = zext i32 %1798 to i64
  store i64 %1799, i64* %RAX.i1112, align 8
  %1800 = add i64 %1758, -40
  %1801 = add i64 %1794, 9
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i32*
  store i32 %1798, i32* %1802, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_41aaa4

block_.L_41aaa4:                                  ; preds = %block_41aab3, %block_41aa9b
  %1803 = phi i64 [ %1986, %block_41aab3 ], [ %.pre117, %block_41aa9b ]
  %1804 = load i64, i64* %RBP.i, align 8
  %1805 = add i64 %1804, -40
  %1806 = add i64 %1803, 3
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to i32*
  %1808 = load i32, i32* %1807, align 4
  %1809 = zext i32 %1808 to i64
  store i64 %1809, i64* %RAX.i1112, align 8
  %1810 = add i64 %1804, -1216
  %1811 = add i64 %1803, 9
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1810 to i32*
  %1813 = load i32, i32* %1812, align 4
  %1814 = sub i32 %1808, %1813
  %1815 = icmp ult i32 %1808, %1813
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %14, align 1
  %1817 = and i32 %1814, 255
  %1818 = tail call i32 @llvm.ctpop.i32(i32 %1817)
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  %1821 = xor i8 %1820, 1
  store i8 %1821, i8* %21, align 1
  %1822 = xor i32 %1813, %1808
  %1823 = xor i32 %1822, %1814
  %1824 = lshr i32 %1823, 4
  %1825 = trunc i32 %1824 to i8
  %1826 = and i8 %1825, 1
  store i8 %1826, i8* %26, align 1
  %1827 = icmp eq i32 %1814, 0
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %29, align 1
  %1829 = lshr i32 %1814, 31
  %1830 = trunc i32 %1829 to i8
  store i8 %1830, i8* %32, align 1
  %1831 = lshr i32 %1808, 31
  %1832 = lshr i32 %1813, 31
  %1833 = xor i32 %1832, %1831
  %1834 = xor i32 %1829, %1831
  %1835 = add nuw nsw i32 %1834, %1833
  %1836 = icmp eq i32 %1835, 2
  %1837 = zext i1 %1836 to i8
  store i8 %1837, i8* %38, align 1
  %1838 = icmp ne i8 %1830, 0
  %1839 = xor i1 %1838, %1836
  %.v127 = select i1 %1839, i64 15, i64 87
  %1840 = add i64 %1803, %.v127
  store i64 %1840, i64* %3, align 8
  br i1 %1839, label %block_41aab3, label %block_.L_41aafb

block_41aab3:                                     ; preds = %block_.L_41aaa4
  %1841 = add i64 %1804, -176
  store i64 %1841, i64* %RAX.i1112, align 8
  %1842 = add i64 %1804, -112
  store i64 %1842, i64* %RCX.i1144, align 8
  %1843 = icmp ult i64 %1842, %1841
  %1844 = icmp ult i64 %1842, 64
  %1845 = or i1 %1843, %1844
  %1846 = zext i1 %1845 to i8
  store i8 %1846, i8* %14, align 1
  %1847 = trunc i64 %1842 to i32
  %1848 = and i32 %1847, 255
  %1849 = tail call i32 @llvm.ctpop.i32(i32 %1848)
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  %1852 = xor i8 %1851, 1
  store i8 %1852, i8* %21, align 1
  %1853 = xor i64 %1841, %1842
  %1854 = lshr i64 %1853, 4
  %1855 = trunc i64 %1854 to i8
  %1856 = and i8 %1855, 1
  store i8 %1856, i8* %26, align 1
  %1857 = icmp eq i64 %1842, 0
  %1858 = zext i1 %1857 to i8
  store i8 %1858, i8* %29, align 1
  %1859 = lshr i64 %1842, 63
  %1860 = trunc i64 %1859 to i8
  store i8 %1860, i8* %32, align 1
  %1861 = lshr i64 %1841, 63
  %1862 = xor i64 %1859, %1861
  %1863 = add nuw nsw i64 %1862, %1859
  %1864 = icmp eq i64 %1863, 2
  %1865 = zext i1 %1864 to i8
  store i8 %1865, i8* %38, align 1
  %1866 = add i64 %1804, -44
  %1867 = add i64 %1840, 18
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1866 to i32*
  %1869 = load i32, i32* %1868, align 4
  %1870 = sext i32 %1869 to i64
  %1871 = shl nsw i64 %1870, 4
  store i64 %1871, i64* %RDX.i1107.pre-phi, align 8
  %1872 = add i64 %1871, %1842
  store i64 %1872, i64* %RCX.i1144, align 8
  %1873 = icmp ult i64 %1872, %1842
  %1874 = icmp ult i64 %1872, %1871
  %1875 = or i1 %1873, %1874
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %14, align 1
  %1877 = trunc i64 %1872 to i32
  %1878 = and i32 %1877, 255
  %1879 = tail call i32 @llvm.ctpop.i32(i32 %1878)
  %1880 = trunc i32 %1879 to i8
  %1881 = and i8 %1880, 1
  %1882 = xor i8 %1881, 1
  store i8 %1882, i8* %21, align 1
  %1883 = xor i64 %1871, %1842
  %1884 = xor i64 %1883, %1872
  %1885 = lshr i64 %1884, 4
  %1886 = trunc i64 %1885 to i8
  %1887 = and i8 %1886, 1
  store i8 %1887, i8* %26, align 1
  %1888 = icmp eq i64 %1872, 0
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %29, align 1
  %1890 = lshr i64 %1872, 63
  %1891 = trunc i64 %1890 to i8
  store i8 %1891, i8* %32, align 1
  %1892 = lshr i64 %1870, 59
  %1893 = and i64 %1892, 1
  %1894 = xor i64 %1890, %1859
  %1895 = xor i64 %1890, %1893
  %1896 = add nuw nsw i64 %1894, %1895
  %1897 = icmp eq i64 %1896, 2
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %38, align 1
  %1899 = load i64, i64* %RBP.i, align 8
  %1900 = add i64 %1899, -40
  %1901 = add i64 %1840, 29
  store i64 %1901, i64* %3, align 8
  %1902 = inttoptr i64 %1900 to i32*
  %1903 = load i32, i32* %1902, align 4
  %1904 = sext i32 %1903 to i64
  store i64 %1904, i64* %RDX.i1107.pre-phi, align 8
  %1905 = shl nsw i64 %1904, 2
  %1906 = add i64 %1905, %1872
  %1907 = add i64 %1840, 36
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1906 to i32*
  store i32 0, i32* %1908, align 4
  %1909 = load i64, i64* %RBP.i, align 8
  %1910 = add i64 %1909, -44
  %1911 = load i64, i64* %3, align 8
  %1912 = add i64 %1911, 4
  store i64 %1912, i64* %3, align 8
  %1913 = inttoptr i64 %1910 to i32*
  %1914 = load i32, i32* %1913, align 4
  %1915 = sext i32 %1914 to i64
  %1916 = shl nsw i64 %1915, 4
  store i64 %1916, i64* %RCX.i1144, align 8
  %1917 = load i64, i64* %RAX.i1112, align 8
  %1918 = add i64 %1916, %1917
  store i64 %1918, i64* %RAX.i1112, align 8
  %1919 = icmp ult i64 %1918, %1917
  %1920 = icmp ult i64 %1918, %1916
  %1921 = or i1 %1919, %1920
  %1922 = zext i1 %1921 to i8
  store i8 %1922, i8* %14, align 1
  %1923 = trunc i64 %1918 to i32
  %1924 = and i32 %1923, 255
  %1925 = tail call i32 @llvm.ctpop.i32(i32 %1924)
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  %1928 = xor i8 %1927, 1
  store i8 %1928, i8* %21, align 1
  %1929 = xor i64 %1916, %1917
  %1930 = xor i64 %1929, %1918
  %1931 = lshr i64 %1930, 4
  %1932 = trunc i64 %1931 to i8
  %1933 = and i8 %1932, 1
  store i8 %1933, i8* %26, align 1
  %1934 = icmp eq i64 %1918, 0
  %1935 = zext i1 %1934 to i8
  store i8 %1935, i8* %29, align 1
  %1936 = lshr i64 %1918, 63
  %1937 = trunc i64 %1936 to i8
  store i8 %1937, i8* %32, align 1
  %1938 = lshr i64 %1917, 63
  %1939 = lshr i64 %1915, 59
  %1940 = and i64 %1939, 1
  %1941 = xor i64 %1936, %1938
  %1942 = xor i64 %1936, %1940
  %1943 = add nuw nsw i64 %1941, %1942
  %1944 = icmp eq i64 %1943, 2
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %38, align 1
  %1946 = add i64 %1909, -40
  %1947 = add i64 %1911, 15
  store i64 %1947, i64* %3, align 8
  %1948 = inttoptr i64 %1946 to i32*
  %1949 = load i32, i32* %1948, align 4
  %1950 = sext i32 %1949 to i64
  store i64 %1950, i64* %RCX.i1144, align 8
  %1951 = shl nsw i64 %1950, 2
  %1952 = add i64 %1951, %1918
  %1953 = add i64 %1911, 22
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1952 to i32*
  store i32 0, i32* %1954, align 4
  %1955 = load i64, i64* %RBP.i, align 8
  %1956 = add i64 %1955, -40
  %1957 = load i64, i64* %3, align 8
  %1958 = add i64 %1957, 3
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1956 to i32*
  %1960 = load i32, i32* %1959, align 4
  %1961 = add i32 %1960, 1
  %1962 = zext i32 %1961 to i64
  store i64 %1962, i64* %RAX.i1112, align 8
  %1963 = icmp eq i32 %1960, -1
  %1964 = icmp eq i32 %1961, 0
  %1965 = or i1 %1963, %1964
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %14, align 1
  %1967 = and i32 %1961, 255
  %1968 = tail call i32 @llvm.ctpop.i32(i32 %1967)
  %1969 = trunc i32 %1968 to i8
  %1970 = and i8 %1969, 1
  %1971 = xor i8 %1970, 1
  store i8 %1971, i8* %21, align 1
  %1972 = xor i32 %1961, %1960
  %1973 = lshr i32 %1972, 4
  %1974 = trunc i32 %1973 to i8
  %1975 = and i8 %1974, 1
  store i8 %1975, i8* %26, align 1
  %1976 = zext i1 %1964 to i8
  store i8 %1976, i8* %29, align 1
  %1977 = lshr i32 %1961, 31
  %1978 = trunc i32 %1977 to i8
  store i8 %1978, i8* %32, align 1
  %1979 = lshr i32 %1960, 31
  %1980 = xor i32 %1977, %1979
  %1981 = add nuw nsw i32 %1980, %1977
  %1982 = icmp eq i32 %1981, 2
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %38, align 1
  %1984 = add i64 %1957, 9
  store i64 %1984, i64* %3, align 8
  store i32 %1961, i32* %1959, align 4
  %1985 = load i64, i64* %3, align 8
  %1986 = add i64 %1985, -82
  store i64 %1986, i64* %3, align 8
  br label %block_.L_41aaa4

block_.L_41aafb:                                  ; preds = %block_.L_41aaa4
  %1987 = add i64 %1804, -44
  %1988 = add i64 %1840, 8
  store i64 %1988, i64* %3, align 8
  %1989 = inttoptr i64 %1987 to i32*
  %1990 = load i32, i32* %1989, align 4
  %1991 = add i32 %1990, 1
  %1992 = zext i32 %1991 to i64
  store i64 %1992, i64* %RAX.i1112, align 8
  %1993 = icmp eq i32 %1990, -1
  %1994 = icmp eq i32 %1991, 0
  %1995 = or i1 %1993, %1994
  %1996 = zext i1 %1995 to i8
  store i8 %1996, i8* %14, align 1
  %1997 = and i32 %1991, 255
  %1998 = tail call i32 @llvm.ctpop.i32(i32 %1997)
  %1999 = trunc i32 %1998 to i8
  %2000 = and i8 %1999, 1
  %2001 = xor i8 %2000, 1
  store i8 %2001, i8* %21, align 1
  %2002 = xor i32 %1991, %1990
  %2003 = lshr i32 %2002, 4
  %2004 = trunc i32 %2003 to i8
  %2005 = and i8 %2004, 1
  store i8 %2005, i8* %26, align 1
  %2006 = zext i1 %1994 to i8
  store i8 %2006, i8* %29, align 1
  %2007 = lshr i32 %1991, 31
  %2008 = trunc i32 %2007 to i8
  store i8 %2008, i8* %32, align 1
  %2009 = lshr i32 %1990, 31
  %2010 = xor i32 %2007, %2009
  %2011 = add nuw nsw i32 %2010, %2007
  %2012 = icmp eq i32 %2011, 2
  %2013 = zext i1 %2012 to i8
  store i8 %2013, i8* %38, align 1
  %2014 = add i64 %1840, 14
  store i64 %2014, i64* %3, align 8
  store i32 %1991, i32* %1989, align 4
  %2015 = load i64, i64* %3, align 8
  %2016 = add i64 %2015, -125
  store i64 %2016, i64* %3, align 8
  br label %block_.L_41aa8c

block_.L_41ab0e:                                  ; preds = %block_.L_41aa8c
  %2017 = add i64 %1794, 5
  store i64 %2017, i64* %3, align 8
  %.pre118 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  br label %block_.L_41ab13

block_.L_41ab13:                                  ; preds = %block_.L_41ab0e, %block_.L_41aa7e
  %RSI.i473.pre-phi = phi i64* [ %.pre118, %block_.L_41ab0e ], [ %RSI.i688, %block_.L_41aa7e ]
  %2018 = phi i64 [ %1758, %block_.L_41ab0e ], [ %1383, %block_.L_41aa7e ]
  %storemerge49 = phi i64 [ %2017, %block_.L_41ab0e ], [ %1747, %block_.L_41aa7e ]
  %2019 = add i64 %2018, -1204
  %2020 = add i64 %storemerge49, 6
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2019 to i32*
  %2022 = load i32, i32* %2021, align 4
  %2023 = zext i32 %2022 to i64
  store i64 %2023, i64* %RAX.i1112, align 8
  %2024 = add i64 %2018, -24
  %2025 = add i64 %storemerge49, 9
  store i64 %2025, i64* %3, align 8
  %2026 = inttoptr i64 %2024 to i32*
  store i32 %2022, i32* %2026, align 4
  %.pre105 = load i64, i64* %3, align 8
  br label %block_.L_41ab1c

block_.L_41ab1c:                                  ; preds = %block_.L_41ab84, %block_.L_41ab13
  %2027 = phi i64 [ %2237, %block_.L_41ab84 ], [ %.pre105, %block_.L_41ab13 ]
  %2028 = load i64, i64* %RBP.i, align 8
  %2029 = add i64 %2028, -24
  %2030 = add i64 %2027, 3
  store i64 %2030, i64* %3, align 8
  %2031 = inttoptr i64 %2029 to i32*
  %2032 = load i32, i32* %2031, align 4
  %2033 = zext i32 %2032 to i64
  store i64 %2033, i64* %RAX.i1112, align 8
  %2034 = add i64 %2028, -1208
  %2035 = add i64 %2027, 9
  store i64 %2035, i64* %3, align 8
  %2036 = inttoptr i64 %2034 to i32*
  %2037 = load i32, i32* %2036, align 4
  %2038 = sub i32 %2032, %2037
  %2039 = icmp ult i32 %2032, %2037
  %2040 = zext i1 %2039 to i8
  store i8 %2040, i8* %14, align 1
  %2041 = and i32 %2038, 255
  %2042 = tail call i32 @llvm.ctpop.i32(i32 %2041)
  %2043 = trunc i32 %2042 to i8
  %2044 = and i8 %2043, 1
  %2045 = xor i8 %2044, 1
  store i8 %2045, i8* %21, align 1
  %2046 = xor i32 %2037, %2032
  %2047 = xor i32 %2046, %2038
  %2048 = lshr i32 %2047, 4
  %2049 = trunc i32 %2048 to i8
  %2050 = and i8 %2049, 1
  store i8 %2050, i8* %26, align 1
  %2051 = icmp eq i32 %2038, 0
  %2052 = zext i1 %2051 to i8
  store i8 %2052, i8* %29, align 1
  %2053 = lshr i32 %2038, 31
  %2054 = trunc i32 %2053 to i8
  store i8 %2054, i8* %32, align 1
  %2055 = lshr i32 %2032, 31
  %2056 = lshr i32 %2037, 31
  %2057 = xor i32 %2056, %2055
  %2058 = xor i32 %2053, %2055
  %2059 = add nuw nsw i32 %2058, %2057
  %2060 = icmp eq i32 %2059, 2
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %38, align 1
  %2062 = icmp ne i8 %2054, 0
  %2063 = xor i1 %2062, %2060
  %.v133 = select i1 %2063, i64 15, i64 123
  %2064 = add i64 %2027, %.v133
  store i64 %2064, i64* %3, align 8
  br i1 %2063, label %block_41ab2b, label %block_.L_41ab97

block_41ab2b:                                     ; preds = %block_.L_41ab1c
  %2065 = add i64 %2028, -1220
  %2066 = add i64 %2064, 6
  store i64 %2066, i64* %3, align 8
  %2067 = inttoptr i64 %2065 to i32*
  %2068 = load i32, i32* %2067, align 4
  %2069 = zext i32 %2068 to i64
  store i64 %2069, i64* %RAX.i1112, align 8
  %2070 = add i64 %2028, -28
  %2071 = add i64 %2064, 9
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2070 to i32*
  store i32 %2068, i32* %2072, align 4
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_41ab34

block_.L_41ab34:                                  ; preds = %block_41ab43, %block_41ab2b
  %2073 = phi i64 [ %2207, %block_41ab43 ], [ %.pre116, %block_41ab2b ]
  %2074 = load i64, i64* %RBP.i, align 8
  %2075 = add i64 %2074, -28
  %2076 = add i64 %2073, 3
  store i64 %2076, i64* %3, align 8
  %2077 = inttoptr i64 %2075 to i32*
  %2078 = load i32, i32* %2077, align 4
  %2079 = zext i32 %2078 to i64
  store i64 %2079, i64* %RAX.i1112, align 8
  %2080 = add i64 %2074, -1224
  %2081 = add i64 %2073, 9
  store i64 %2081, i64* %3, align 8
  %2082 = inttoptr i64 %2080 to i32*
  %2083 = load i32, i32* %2082, align 4
  %2084 = sub i32 %2078, %2083
  %2085 = icmp ult i32 %2078, %2083
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %14, align 1
  %2087 = and i32 %2084, 255
  %2088 = tail call i32 @llvm.ctpop.i32(i32 %2087)
  %2089 = trunc i32 %2088 to i8
  %2090 = and i8 %2089, 1
  %2091 = xor i8 %2090, 1
  store i8 %2091, i8* %21, align 1
  %2092 = xor i32 %2083, %2078
  %2093 = xor i32 %2092, %2084
  %2094 = lshr i32 %2093, 4
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  store i8 %2096, i8* %26, align 1
  %2097 = icmp eq i32 %2084, 0
  %2098 = zext i1 %2097 to i8
  store i8 %2098, i8* %29, align 1
  %2099 = lshr i32 %2084, 31
  %2100 = trunc i32 %2099 to i8
  store i8 %2100, i8* %32, align 1
  %2101 = lshr i32 %2078, 31
  %2102 = lshr i32 %2083, 31
  %2103 = xor i32 %2102, %2101
  %2104 = xor i32 %2099, %2101
  %2105 = add nuw nsw i32 %2104, %2103
  %2106 = icmp eq i32 %2105, 2
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %38, align 1
  %2108 = icmp ne i8 %2100, 0
  %2109 = xor i1 %2108, %2106
  %.v125 = select i1 %2109, i64 15, i64 80
  %2110 = add i64 %2073, %.v125
  store i64 %2110, i64* %3, align 8
  br i1 %2109, label %block_41ab43, label %block_.L_41ab84

block_41ab43:                                     ; preds = %block_.L_41ab34
  %2111 = add i64 %2074, -1200
  store i64 %2111, i64* %RAX.i1112, align 8
  %2112 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*), align 8
  store i64 %2112, i64* %RCX.i1144, align 8
  %2113 = add i64 %2110, 18
  store i64 %2113, i64* %3, align 8
  %2114 = inttoptr i64 %2112 to i64*
  %2115 = load i64, i64* %2114, align 8
  store i64 %2115, i64* %RCX.i1144, align 8
  %2116 = add i64 %2110, 22
  store i64 %2116, i64* %3, align 8
  %2117 = load i32, i32* %2077, align 4
  %2118 = sext i32 %2117 to i64
  store i64 %2118, i64* %RDX.i1107.pre-phi, align 8
  %2119 = shl nsw i64 %2118, 3
  %2120 = add i64 %2119, %2115
  %2121 = add i64 %2110, 26
  store i64 %2121, i64* %3, align 8
  %2122 = inttoptr i64 %2120 to i64*
  %2123 = load i64, i64* %2122, align 8
  store i64 %2123, i64* %RCX.i1144, align 8
  %2124 = add i64 %2074, -24
  %2125 = add i64 %2110, 30
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i32*
  %2127 = load i32, i32* %2126, align 4
  %2128 = sext i32 %2127 to i64
  store i64 %2128, i64* %RDX.i1107.pre-phi, align 8
  %2129 = shl nsw i64 %2128, 2
  %2130 = add i64 %2129, %2123
  %2131 = add i64 %2110, 33
  store i64 %2131, i64* %3, align 8
  %2132 = inttoptr i64 %2130 to i32*
  %2133 = load i32, i32* %2132, align 4
  %2134 = zext i32 %2133 to i64
  store i64 %2134, i64* %RSI.i473.pre-phi, align 8
  %2135 = add i64 %2110, 37
  store i64 %2135, i64* %3, align 8
  %2136 = load i32, i32* %2077, align 4
  %2137 = sext i32 %2136 to i64
  %2138 = shl nsw i64 %2137, 6
  store i64 %2138, i64* %RCX.i1144, align 8
  %2139 = add i64 %2138, %2111
  store i64 %2139, i64* %RAX.i1112, align 8
  %2140 = icmp ult i64 %2139, %2111
  %2141 = icmp ult i64 %2139, %2138
  %2142 = or i1 %2140, %2141
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %14, align 1
  %2144 = trunc i64 %2139 to i32
  %2145 = and i32 %2144, 255
  %2146 = tail call i32 @llvm.ctpop.i32(i32 %2145)
  %2147 = trunc i32 %2146 to i8
  %2148 = and i8 %2147, 1
  %2149 = xor i8 %2148, 1
  store i8 %2149, i8* %21, align 1
  %2150 = xor i64 %2111, %2139
  %2151 = lshr i64 %2150, 4
  %2152 = trunc i64 %2151 to i8
  %2153 = and i8 %2152, 1
  store i8 %2153, i8* %26, align 1
  %2154 = icmp eq i64 %2139, 0
  %2155 = zext i1 %2154 to i8
  store i8 %2155, i8* %29, align 1
  %2156 = lshr i64 %2139, 63
  %2157 = trunc i64 %2156 to i8
  store i8 %2157, i8* %32, align 1
  %2158 = lshr i64 %2111, 63
  %2159 = lshr i64 %2137, 57
  %2160 = and i64 %2159, 1
  %2161 = xor i64 %2156, %2158
  %2162 = xor i64 %2156, %2160
  %2163 = add nuw nsw i64 %2161, %2162
  %2164 = icmp eq i64 %2163, 2
  %2165 = zext i1 %2164 to i8
  store i8 %2165, i8* %38, align 1
  %2166 = load i64, i64* %RBP.i, align 8
  %2167 = add i64 %2166, -24
  %2168 = add i64 %2110, 48
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2167 to i32*
  %2170 = load i32, i32* %2169, align 4
  %2171 = sext i32 %2170 to i64
  store i64 %2171, i64* %RCX.i1144, align 8
  %2172 = shl nsw i64 %2171, 2
  %2173 = add i64 %2172, %2139
  %2174 = add i64 %2110, 51
  store i64 %2174, i64* %3, align 8
  %2175 = inttoptr i64 %2173 to i32*
  store i32 %2133, i32* %2175, align 4
  %2176 = load i64, i64* %RBP.i, align 8
  %2177 = add i64 %2176, -28
  %2178 = load i64, i64* %3, align 8
  %2179 = add i64 %2178, 3
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2177 to i32*
  %2181 = load i32, i32* %2180, align 4
  %2182 = add i32 %2181, 1
  %2183 = zext i32 %2182 to i64
  store i64 %2183, i64* %RAX.i1112, align 8
  %2184 = icmp eq i32 %2181, -1
  %2185 = icmp eq i32 %2182, 0
  %2186 = or i1 %2184, %2185
  %2187 = zext i1 %2186 to i8
  store i8 %2187, i8* %14, align 1
  %2188 = and i32 %2182, 255
  %2189 = tail call i32 @llvm.ctpop.i32(i32 %2188)
  %2190 = trunc i32 %2189 to i8
  %2191 = and i8 %2190, 1
  %2192 = xor i8 %2191, 1
  store i8 %2192, i8* %21, align 1
  %2193 = xor i32 %2182, %2181
  %2194 = lshr i32 %2193, 4
  %2195 = trunc i32 %2194 to i8
  %2196 = and i8 %2195, 1
  store i8 %2196, i8* %26, align 1
  %2197 = zext i1 %2185 to i8
  store i8 %2197, i8* %29, align 1
  %2198 = lshr i32 %2182, 31
  %2199 = trunc i32 %2198 to i8
  store i8 %2199, i8* %32, align 1
  %2200 = lshr i32 %2181, 31
  %2201 = xor i32 %2198, %2200
  %2202 = add nuw nsw i32 %2201, %2198
  %2203 = icmp eq i32 %2202, 2
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %38, align 1
  %2205 = add i64 %2178, 9
  store i64 %2205, i64* %3, align 8
  store i32 %2182, i32* %2180, align 4
  %2206 = load i64, i64* %3, align 8
  %2207 = add i64 %2206, -75
  store i64 %2207, i64* %3, align 8
  br label %block_.L_41ab34

block_.L_41ab84:                                  ; preds = %block_.L_41ab34
  %2208 = add i64 %2074, -24
  %2209 = add i64 %2110, 8
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2208 to i32*
  %2211 = load i32, i32* %2210, align 4
  %2212 = add i32 %2211, 1
  %2213 = zext i32 %2212 to i64
  store i64 %2213, i64* %RAX.i1112, align 8
  %2214 = icmp eq i32 %2211, -1
  %2215 = icmp eq i32 %2212, 0
  %2216 = or i1 %2214, %2215
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %14, align 1
  %2218 = and i32 %2212, 255
  %2219 = tail call i32 @llvm.ctpop.i32(i32 %2218)
  %2220 = trunc i32 %2219 to i8
  %2221 = and i8 %2220, 1
  %2222 = xor i8 %2221, 1
  store i8 %2222, i8* %21, align 1
  %2223 = xor i32 %2212, %2211
  %2224 = lshr i32 %2223, 4
  %2225 = trunc i32 %2224 to i8
  %2226 = and i8 %2225, 1
  store i8 %2226, i8* %26, align 1
  %2227 = zext i1 %2215 to i8
  store i8 %2227, i8* %29, align 1
  %2228 = lshr i32 %2212, 31
  %2229 = trunc i32 %2228 to i8
  store i8 %2229, i8* %32, align 1
  %2230 = lshr i32 %2211, 31
  %2231 = xor i32 %2228, %2230
  %2232 = add nuw nsw i32 %2231, %2228
  %2233 = icmp eq i32 %2232, 2
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %38, align 1
  %2235 = add i64 %2110, 14
  store i64 %2235, i64* %3, align 8
  store i32 %2212, i32* %2210, align 4
  %2236 = load i64, i64* %3, align 8
  %2237 = add i64 %2236, -118
  store i64 %2237, i64* %3, align 8
  br label %block_.L_41ab1c

block_.L_41ab97:                                  ; preds = %block_.L_41ab1c
  %2238 = add i64 %2064, 5
  store i64 %2238, i64* %3, align 8
  br label %block_.L_41ab9c

block_.L_41ab9c:                                  ; preds = %block_.L_41ab97, %block_.L_41a977
  %2239 = phi i64 [ %1059, %block_.L_41a977 ], [ %2028, %block_.L_41ab97 ]
  %storemerge38 = phi i64 [ %1318, %block_.L_41a977 ], [ %2238, %block_.L_41ab97 ]
  %2240 = add i64 %2239, -16
  %2241 = add i64 %storemerge38, 4
  store i64 %2241, i64* %3, align 8
  %2242 = inttoptr i64 %2240 to i32*
  %2243 = load i32, i32* %2242, align 4
  %2244 = add i32 %2243, -1
  %2245 = icmp eq i32 %2243, 0
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %14, align 1
  %2247 = and i32 %2244, 255
  %2248 = tail call i32 @llvm.ctpop.i32(i32 %2247)
  %2249 = trunc i32 %2248 to i8
  %2250 = and i8 %2249, 1
  %2251 = xor i8 %2250, 1
  store i8 %2251, i8* %21, align 1
  %2252 = xor i32 %2244, %2243
  %2253 = lshr i32 %2252, 4
  %2254 = trunc i32 %2253 to i8
  %2255 = and i8 %2254, 1
  store i8 %2255, i8* %26, align 1
  %2256 = icmp eq i32 %2244, 0
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %29, align 1
  %2258 = lshr i32 %2244, 31
  %2259 = trunc i32 %2258 to i8
  store i8 %2259, i8* %32, align 1
  %2260 = lshr i32 %2243, 31
  %2261 = xor i32 %2258, %2260
  %2262 = add nuw nsw i32 %2261, %2260
  %2263 = icmp eq i32 %2262, 2
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %38, align 1
  %2265 = icmp ne i8 %2259, 0
  %2266 = xor i1 %2265, %2263
  %.v134 = select i1 %2266, i64 20, i64 10
  %2267 = add i64 %storemerge38, %.v134
  store i64 %2267, i64* %3, align 8
  br i1 %2266, label %block_.L_41abb0, label %block_41aba6

block_41aba6:                                     ; preds = %block_.L_41ab9c
  %2268 = add i64 %2267, 4
  store i64 %2268, i64* %3, align 8
  %2269 = load i32, i32* %2242, align 4
  %2270 = add i32 %2269, -7
  %2271 = icmp ult i32 %2269, 7
  %2272 = zext i1 %2271 to i8
  store i8 %2272, i8* %14, align 1
  %2273 = and i32 %2270, 255
  %2274 = tail call i32 @llvm.ctpop.i32(i32 %2273)
  %2275 = trunc i32 %2274 to i8
  %2276 = and i8 %2275, 1
  %2277 = xor i8 %2276, 1
  store i8 %2277, i8* %21, align 1
  %2278 = xor i32 %2270, %2269
  %2279 = lshr i32 %2278, 4
  %2280 = trunc i32 %2279 to i8
  %2281 = and i8 %2280, 1
  store i8 %2281, i8* %26, align 1
  %2282 = icmp eq i32 %2270, 0
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %29, align 1
  %2284 = lshr i32 %2270, 31
  %2285 = trunc i32 %2284 to i8
  store i8 %2285, i8* %32, align 1
  %2286 = lshr i32 %2269, 31
  %2287 = xor i32 %2284, %2286
  %2288 = add nuw nsw i32 %2287, %2286
  %2289 = icmp eq i32 %2288, 2
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %38, align 1
  %2291 = icmp ne i8 %2285, 0
  %2292 = xor i1 %2291, %2289
  %2293 = or i1 %2282, %2292
  %.v135 = select i1 %2293, i64 77, i64 10
  %2294 = add i64 %2267, %.v135
  store i64 %2294, i64* %3, align 8
  br i1 %2293, label %block_.L_41abf3, label %block_.L_41abb0

block_.L_41abb0:                                  ; preds = %block_41aba6, %block_.L_41ab9c
  %2295 = phi i64 [ %2294, %block_41aba6 ], [ %2267, %block_.L_41ab9c ]
  %2296 = add i64 %2239, -8
  %2297 = add i64 %2295, 4
  store i64 %2297, i64* %3, align 8
  %2298 = inttoptr i64 %2296 to i32*
  %2299 = load i32, i32* %2298, align 4
  store i8 0, i8* %14, align 1
  %2300 = and i32 %2299, 255
  %2301 = tail call i32 @llvm.ctpop.i32(i32 %2300)
  %2302 = trunc i32 %2301 to i8
  %2303 = and i8 %2302, 1
  %2304 = xor i8 %2303, 1
  store i8 %2304, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2305 = icmp eq i32 %2299, 0
  %2306 = zext i1 %2305 to i8
  store i8 %2306, i8* %29, align 1
  %2307 = lshr i32 %2299, 31
  %2308 = trunc i32 %2307 to i8
  store i8 %2308, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v136 = select i1 %2305, i64 10, i64 588
  %2309 = add i64 %2295, %.v136
  store i64 %2309, i64* %3, align 8
  br i1 %2305, label %block_41abba, label %block_.L_41adfc

block_41abba:                                     ; preds = %block_.L_41abb0
  %2310 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2310, i64* %RAX.i1112, align 8
  %2311 = add i64 %2310, 24
  %2312 = add i64 %2309, 12
  store i64 %2312, i64* %3, align 8
  %2313 = inttoptr i64 %2311 to i32*
  %2314 = load i32, i32* %2313, align 4
  store i8 0, i8* %14, align 1
  %2315 = and i32 %2314, 255
  %2316 = tail call i32 @llvm.ctpop.i32(i32 %2315)
  %2317 = trunc i32 %2316 to i8
  %2318 = and i8 %2317, 1
  %2319 = xor i8 %2318, 1
  store i8 %2319, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2320 = icmp eq i32 %2314, 0
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %29, align 1
  %2322 = lshr i32 %2314, 31
  %2323 = trunc i32 %2322 to i8
  store i8 %2323, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v138 = select i1 %2320, i64 57, i64 18
  %2324 = add i64 %2309, %.v138
  store i64 %2324, i64* %3, align 8
  br i1 %2320, label %block_.L_41abf3, label %block_41abcc

block_41abcc:                                     ; preds = %block_41abba
  store i64 %2310, i64* %RAX.i1112, align 8
  %2325 = add i64 %2324, 12
  store i64 %2325, i64* %3, align 8
  %2326 = load i32, i32* %2313, align 4
  %2327 = add i32 %2326, -1
  %2328 = icmp eq i32 %2326, 0
  %2329 = zext i1 %2328 to i8
  store i8 %2329, i8* %14, align 1
  %2330 = and i32 %2327, 255
  %2331 = tail call i32 @llvm.ctpop.i32(i32 %2330)
  %2332 = trunc i32 %2331 to i8
  %2333 = and i8 %2332, 1
  %2334 = xor i8 %2333, 1
  store i8 %2334, i8* %21, align 1
  %2335 = xor i32 %2327, %2326
  %2336 = lshr i32 %2335, 4
  %2337 = trunc i32 %2336 to i8
  %2338 = and i8 %2337, 1
  store i8 %2338, i8* %26, align 1
  %2339 = icmp eq i32 %2327, 0
  %2340 = zext i1 %2339 to i8
  store i8 %2340, i8* %29, align 1
  %2341 = lshr i32 %2327, 31
  %2342 = trunc i32 %2341 to i8
  store i8 %2342, i8* %32, align 1
  %2343 = lshr i32 %2326, 31
  %2344 = xor i32 %2341, %2343
  %2345 = add nuw nsw i32 %2344, %2343
  %2346 = icmp eq i32 %2345, 2
  %2347 = zext i1 %2346 to i8
  store i8 %2347, i8* %38, align 1
  %.v139 = select i1 %2339, i64 18, i64 560
  %2348 = add i64 %2324, %.v139
  store i64 %2348, i64* %3, align 8
  br i1 %2339, label %block_41abde, label %block_.L_41adfc

block_41abde:                                     ; preds = %block_41abcc
  store i64 %2310, i64* %RAX.i1112, align 8
  %2349 = add i64 %2310, 72496
  %2350 = add i64 %2348, 15
  store i64 %2350, i64* %3, align 8
  %2351 = inttoptr i64 %2349 to i32*
  %2352 = load i32, i32* %2351, align 4
  store i8 0, i8* %14, align 1
  %2353 = and i32 %2352, 255
  %2354 = tail call i32 @llvm.ctpop.i32(i32 %2353)
  %2355 = trunc i32 %2354 to i8
  %2356 = and i8 %2355, 1
  %2357 = xor i8 %2356, 1
  store i8 %2357, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2358 = icmp eq i32 %2352, 0
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %29, align 1
  %2360 = lshr i32 %2352, 31
  %2361 = trunc i32 %2360 to i8
  store i8 %2361, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2362 = icmp ne i8 %2361, 0
  %2363 = or i1 %2358, %2362
  %.v140 = select i1 %2363, i64 542, i64 21
  %2364 = add i64 %2348, %.v140
  store i64 %2364, i64* %3, align 8
  br i1 %2363, label %block_.L_41adfc, label %block_.L_41abf3

block_.L_41abf3:                                  ; preds = %block_41abde, %block_41abba, %block_41aba6
  %2365 = phi i64 [ %2364, %block_41abde ], [ %2324, %block_41abba ], [ %2294, %block_41aba6 ]
  %2366 = add i64 %2239, -1228
  %2367 = add i64 %2365, 6
  store i64 %2367, i64* %3, align 8
  %2368 = inttoptr i64 %2366 to i32*
  %2369 = load i32, i32* %2368, align 4
  %2370 = zext i32 %2369 to i64
  store i64 %2370, i64* %RAX.i1112, align 8
  %2371 = add i64 %2239, -44
  %2372 = add i64 %2365, 9
  store i64 %2372, i64* %3, align 8
  %2373 = inttoptr i64 %2371 to i32*
  store i32 %2369, i32* %2373, align 4
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %RSI.i300 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %R8.i290 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  %DI.i196 = bitcast %union.anon* %40 to i16*
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_41abfc

block_.L_41abfc:                                  ; preds = %block_.L_41ade4, %block_.L_41abf3
  %2374 = phi i64 [ %.pre106, %block_.L_41abf3 ], [ %3340, %block_.L_41ade4 ]
  %MEMORY.19 = phi %struct.Memory* [ %307, %block_.L_41abf3 ], [ %MEMORY.20, %block_.L_41ade4 ]
  %2375 = load i64, i64* %RBP.i, align 8
  %2376 = add i64 %2375, -44
  %2377 = add i64 %2374, 3
  store i64 %2377, i64* %3, align 8
  %2378 = inttoptr i64 %2376 to i32*
  %2379 = load i32, i32* %2378, align 4
  %2380 = zext i32 %2379 to i64
  store i64 %2380, i64* %RAX.i1112, align 8
  %2381 = add i64 %2375, -1232
  %2382 = add i64 %2374, 9
  store i64 %2382, i64* %3, align 8
  %2383 = inttoptr i64 %2381 to i32*
  %2384 = load i32, i32* %2383, align 4
  %2385 = sub i32 %2379, %2384
  %2386 = icmp ult i32 %2379, %2384
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %14, align 1
  %2388 = and i32 %2385, 255
  %2389 = tail call i32 @llvm.ctpop.i32(i32 %2388)
  %2390 = trunc i32 %2389 to i8
  %2391 = and i8 %2390, 1
  %2392 = xor i8 %2391, 1
  store i8 %2392, i8* %21, align 1
  %2393 = xor i32 %2384, %2379
  %2394 = xor i32 %2393, %2385
  %2395 = lshr i32 %2394, 4
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  store i8 %2397, i8* %26, align 1
  %2398 = icmp eq i32 %2385, 0
  %2399 = zext i1 %2398 to i8
  store i8 %2399, i8* %29, align 1
  %2400 = lshr i32 %2385, 31
  %2401 = trunc i32 %2400 to i8
  store i8 %2401, i8* %32, align 1
  %2402 = lshr i32 %2379, 31
  %2403 = lshr i32 %2384, 31
  %2404 = xor i32 %2403, %2402
  %2405 = xor i32 %2400, %2402
  %2406 = add nuw nsw i32 %2405, %2404
  %2407 = icmp eq i32 %2406, 2
  %2408 = zext i1 %2407 to i8
  store i8 %2408, i8* %38, align 1
  %2409 = icmp ne i8 %2401, 0
  %2410 = xor i1 %2409, %2407
  %.v141 = select i1 %2410, i64 15, i64 507
  %2411 = add i64 %2374, %.v141
  store i64 %2411, i64* %3, align 8
  br i1 %2410, label %block_41ac0b, label %block_.L_41adf7

block_41ac0b:                                     ; preds = %block_.L_41abfc
  %2412 = add i64 %2375, -1212
  %2413 = add i64 %2411, 6
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i32*
  %2415 = load i32, i32* %2414, align 4
  %2416 = zext i32 %2415 to i64
  store i64 %2416, i64* %RAX.i1112, align 8
  %2417 = add i64 %2375, -40
  %2418 = add i64 %2411, 9
  store i64 %2418, i64* %3, align 8
  %2419 = inttoptr i64 %2417 to i32*
  store i32 %2415, i32* %2419, align 4
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_41ac14

block_.L_41ac14:                                  ; preds = %block_.L_41add1, %block_41ac0b
  %2420 = phi i64 [ %.pre107, %block_41ac0b ], [ %3310, %block_.L_41add1 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.19, %block_41ac0b ], [ %call2_41ad0b, %block_.L_41add1 ]
  %2421 = load i64, i64* %RBP.i, align 8
  %2422 = add i64 %2421, -40
  %2423 = add i64 %2420, 3
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2422 to i32*
  %2425 = load i32, i32* %2424, align 4
  %2426 = zext i32 %2425 to i64
  store i64 %2426, i64* %RAX.i1112, align 8
  %2427 = add i64 %2421, -1216
  %2428 = add i64 %2420, 9
  store i64 %2428, i64* %3, align 8
  %2429 = inttoptr i64 %2427 to i32*
  %2430 = load i32, i32* %2429, align 4
  %2431 = sub i32 %2425, %2430
  %2432 = icmp ult i32 %2425, %2430
  %2433 = zext i1 %2432 to i8
  store i8 %2433, i8* %14, align 1
  %2434 = and i32 %2431, 255
  %2435 = tail call i32 @llvm.ctpop.i32(i32 %2434)
  %2436 = trunc i32 %2435 to i8
  %2437 = and i8 %2436, 1
  %2438 = xor i8 %2437, 1
  store i8 %2438, i8* %21, align 1
  %2439 = xor i32 %2430, %2425
  %2440 = xor i32 %2439, %2431
  %2441 = lshr i32 %2440, 4
  %2442 = trunc i32 %2441 to i8
  %2443 = and i8 %2442, 1
  store i8 %2443, i8* %26, align 1
  %2444 = icmp eq i32 %2431, 0
  %2445 = zext i1 %2444 to i8
  store i8 %2445, i8* %29, align 1
  %2446 = lshr i32 %2431, 31
  %2447 = trunc i32 %2446 to i8
  store i8 %2447, i8* %32, align 1
  %2448 = lshr i32 %2425, 31
  %2449 = lshr i32 %2430, 31
  %2450 = xor i32 %2449, %2448
  %2451 = xor i32 %2446, %2448
  %2452 = add nuw nsw i32 %2451, %2450
  %2453 = icmp eq i32 %2452, 2
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %38, align 1
  %2455 = icmp ne i8 %2447, 0
  %2456 = xor i1 %2455, %2453
  %.v119 = select i1 %2456, i64 15, i64 464
  %2457 = add i64 %2420, %.v119
  store i64 %2457, i64* %3, align 8
  br i1 %2456, label %block_41ac23, label %block_.L_41ade4

block_41ac23:                                     ; preds = %block_.L_41ac14
  %2458 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2458, i64* %RAX.i1112, align 8
  %2459 = add i64 %2458, 144
  %2460 = add i64 %2457, 14
  store i64 %2460, i64* %3, align 8
  %2461 = inttoptr i64 %2459 to i32*
  %2462 = load i32, i32* %2461, align 4
  %2463 = zext i32 %2462 to i64
  store i64 %2463, i64* %RCX.i1144, align 8
  %2464 = add i64 %2457, 17
  store i64 %2464, i64* %3, align 8
  %2465 = load i32, i32* %2424, align 4
  %2466 = add i32 %2465, %2462
  %2467 = zext i32 %2466 to i64
  store i64 %2467, i64* %RCX.i1144, align 8
  %2468 = icmp ult i32 %2466, %2462
  %2469 = icmp ult i32 %2466, %2465
  %2470 = or i1 %2468, %2469
  %2471 = zext i1 %2470 to i8
  store i8 %2471, i8* %14, align 1
  %2472 = and i32 %2466, 255
  %2473 = tail call i32 @llvm.ctpop.i32(i32 %2472)
  %2474 = trunc i32 %2473 to i8
  %2475 = and i8 %2474, 1
  %2476 = xor i8 %2475, 1
  store i8 %2476, i8* %21, align 1
  %2477 = xor i32 %2465, %2462
  %2478 = xor i32 %2477, %2466
  %2479 = lshr i32 %2478, 4
  %2480 = trunc i32 %2479 to i8
  %2481 = and i8 %2480, 1
  store i8 %2481, i8* %26, align 1
  %2482 = icmp eq i32 %2466, 0
  %2483 = zext i1 %2482 to i8
  store i8 %2483, i8* %29, align 1
  %2484 = lshr i32 %2466, 31
  %2485 = trunc i32 %2484 to i8
  store i8 %2485, i8* %32, align 1
  %2486 = lshr i32 %2462, 31
  %2487 = lshr i32 %2465, 31
  %2488 = xor i32 %2484, %2486
  %2489 = xor i32 %2484, %2487
  %2490 = add nuw nsw i32 %2488, %2489
  %2491 = icmp eq i32 %2490, 2
  %2492 = zext i1 %2491 to i8
  store i8 %2492, i8* %38, align 1
  %2493 = add i64 %2421, -36
  %2494 = add i64 %2457, 20
  store i64 %2494, i64* %3, align 8
  %2495 = inttoptr i64 %2493 to i32*
  store i32 %2466, i32* %2495, align 4
  %2496 = load i64, i64* %3, align 8
  %2497 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2497, i64* %RAX.i1112, align 8
  %2498 = add i64 %2497, 148
  %2499 = add i64 %2496, 14
  store i64 %2499, i64* %3, align 8
  %2500 = inttoptr i64 %2498 to i32*
  %2501 = load i32, i32* %2500, align 4
  %2502 = zext i32 %2501 to i64
  store i64 %2502, i64* %RCX.i1144, align 8
  %2503 = load i64, i64* %RBP.i, align 8
  %2504 = add i64 %2503, -44
  %2505 = add i64 %2496, 17
  store i64 %2505, i64* %3, align 8
  %2506 = inttoptr i64 %2504 to i32*
  %2507 = load i32, i32* %2506, align 4
  %2508 = add i32 %2507, %2501
  %2509 = zext i32 %2508 to i64
  store i64 %2509, i64* %RCX.i1144, align 8
  %2510 = icmp ult i32 %2508, %2501
  %2511 = icmp ult i32 %2508, %2507
  %2512 = or i1 %2510, %2511
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %14, align 1
  %2514 = and i32 %2508, 255
  %2515 = tail call i32 @llvm.ctpop.i32(i32 %2514)
  %2516 = trunc i32 %2515 to i8
  %2517 = and i8 %2516, 1
  %2518 = xor i8 %2517, 1
  store i8 %2518, i8* %21, align 1
  %2519 = xor i32 %2507, %2501
  %2520 = xor i32 %2519, %2508
  %2521 = lshr i32 %2520, 4
  %2522 = trunc i32 %2521 to i8
  %2523 = and i8 %2522, 1
  store i8 %2523, i8* %26, align 1
  %2524 = icmp eq i32 %2508, 0
  %2525 = zext i1 %2524 to i8
  store i8 %2525, i8* %29, align 1
  %2526 = lshr i32 %2508, 31
  %2527 = trunc i32 %2526 to i8
  store i8 %2527, i8* %32, align 1
  %2528 = lshr i32 %2501, 31
  %2529 = lshr i32 %2507, 31
  %2530 = xor i32 %2526, %2528
  %2531 = xor i32 %2526, %2529
  %2532 = add nuw nsw i32 %2530, %2531
  %2533 = icmp eq i32 %2532, 2
  %2534 = zext i1 %2533 to i8
  store i8 %2534, i8* %38, align 1
  %2535 = add i64 %2503, -32
  %2536 = add i64 %2496, 20
  store i64 %2536, i64* %3, align 8
  %2537 = inttoptr i64 %2535 to i32*
  store i32 %2508, i32* %2537, align 4
  %2538 = load i64, i64* %3, align 8
  %2539 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2539, i64* %RAX.i1112, align 8
  %2540 = add i64 %2539, 24
  %2541 = add i64 %2538, 12
  store i64 %2541, i64* %3, align 8
  %2542 = inttoptr i64 %2540 to i32*
  %2543 = load i32, i32* %2542, align 4
  %2544 = add i32 %2543, -1
  %2545 = icmp eq i32 %2543, 0
  %2546 = zext i1 %2545 to i8
  store i8 %2546, i8* %14, align 1
  %2547 = and i32 %2544, 255
  %2548 = tail call i32 @llvm.ctpop.i32(i32 %2547)
  %2549 = trunc i32 %2548 to i8
  %2550 = and i8 %2549, 1
  %2551 = xor i8 %2550, 1
  store i8 %2551, i8* %21, align 1
  %2552 = xor i32 %2544, %2543
  %2553 = lshr i32 %2552, 4
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  store i8 %2555, i8* %26, align 1
  %2556 = icmp eq i32 %2544, 0
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %29, align 1
  %2558 = lshr i32 %2544, 31
  %2559 = trunc i32 %2558 to i8
  store i8 %2559, i8* %32, align 1
  %2560 = lshr i32 %2543, 31
  %2561 = xor i32 %2558, %2560
  %2562 = add nuw nsw i32 %2561, %2560
  %2563 = icmp eq i32 %2562, 2
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %38, align 1
  %.v142 = select i1 %2556, i64 18, i64 94
  %2565 = add i64 %2538, %.v142
  store i64 %2565, i64* %3, align 8
  br i1 %2556, label %block_41ac5d, label %block_.L_41aca9

block_41ac5d:                                     ; preds = %block_41ac23
  %2566 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %2566, i64* %RAX.i1112, align 8
  %2567 = load i64, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*), align 8
  %2568 = sub i64 %2566, %2567
  %2569 = icmp ult i64 %2566, %2567
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %14, align 1
  %2571 = trunc i64 %2568 to i32
  %2572 = and i32 %2571, 255
  %2573 = tail call i32 @llvm.ctpop.i32(i32 %2572)
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  %2576 = xor i8 %2575, 1
  store i8 %2576, i8* %21, align 1
  %2577 = xor i64 %2567, %2566
  %2578 = xor i64 %2577, %2568
  %2579 = lshr i64 %2578, 4
  %2580 = trunc i64 %2579 to i8
  %2581 = and i8 %2580, 1
  store i8 %2581, i8* %26, align 1
  %2582 = icmp eq i64 %2568, 0
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %29, align 1
  %2584 = lshr i64 %2568, 63
  %2585 = trunc i64 %2584 to i8
  store i8 %2585, i8* %32, align 1
  %2586 = lshr i64 %2566, 63
  %2587 = lshr i64 %2567, 63
  %2588 = xor i64 %2587, %2586
  %2589 = xor i64 %2584, %2586
  %2590 = add nuw nsw i64 %2589, %2588
  %2591 = icmp eq i64 %2590, 2
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %38, align 1
  %.v143 = select i1 %2582, i64 76, i64 22
  %2593 = add i64 %2565, %.v143
  store i64 %2593, i64* %3, align 8
  br i1 %2582, label %block_.L_41aca9, label %block_41ac73

block_41ac73:                                     ; preds = %block_41ac5d
  store i64 %2539, i64* %RAX.i1112, align 8
  %2594 = add i64 %2593, 10
  store i64 %2594, i64* %3, align 8
  %2595 = inttoptr i64 %2539 to i32*
  %2596 = load i32, i32* %2595, align 4
  %2597 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*), align 8
  %2598 = sub i32 %2596, %2597
  %2599 = zext i32 %2598 to i64
  store i64 %2599, i64* %RCX.i1144, align 8
  %2600 = icmp ult i32 %2596, %2597
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %14, align 1
  %2602 = and i32 %2598, 255
  %2603 = tail call i32 @llvm.ctpop.i32(i32 %2602)
  %2604 = trunc i32 %2603 to i8
  %2605 = and i8 %2604, 1
  %2606 = xor i8 %2605, 1
  store i8 %2606, i8* %21, align 1
  %2607 = xor i32 %2597, %2596
  %2608 = xor i32 %2607, %2598
  %2609 = lshr i32 %2608, 4
  %2610 = trunc i32 %2609 to i8
  %2611 = and i8 %2610, 1
  store i8 %2611, i8* %26, align 1
  %2612 = icmp eq i32 %2598, 0
  %2613 = zext i1 %2612 to i8
  store i8 %2613, i8* %29, align 1
  %2614 = lshr i32 %2598, 31
  %2615 = trunc i32 %2614 to i8
  store i8 %2615, i8* %32, align 1
  %2616 = lshr i32 %2596, 31
  %2617 = lshr i32 %2597, 31
  %2618 = xor i32 %2617, %2616
  %2619 = xor i32 %2614, %2616
  %2620 = add nuw nsw i32 %2619, %2618
  %2621 = icmp eq i32 %2620, 2
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %38, align 1
  %2623 = load i64, i64* %RBP.i, align 8
  %2624 = add i64 %2623, -20
  %2625 = add i64 %2593, 20
  store i64 %2625, i64* %3, align 8
  %2626 = inttoptr i64 %2624 to i32*
  %2627 = load i32, i32* %2626, align 4
  %2628 = sub i32 %2598, %2627
  %2629 = lshr i32 %2628, 31
  %2630 = add i32 %2628, -2
  %2631 = zext i32 %2630 to i64
  store i64 %2631, i64* %RCX.i1144, align 8
  %2632 = icmp ult i32 %2628, 2
  %2633 = zext i1 %2632 to i8
  store i8 %2633, i8* %14, align 1
  %2634 = and i32 %2630, 255
  %2635 = tail call i32 @llvm.ctpop.i32(i32 %2634)
  %2636 = trunc i32 %2635 to i8
  %2637 = and i8 %2636, 1
  %2638 = xor i8 %2637, 1
  store i8 %2638, i8* %21, align 1
  %2639 = xor i32 %2630, %2628
  %2640 = lshr i32 %2639, 4
  %2641 = trunc i32 %2640 to i8
  %2642 = and i8 %2641, 1
  store i8 %2642, i8* %26, align 1
  %2643 = icmp eq i32 %2630, 0
  %2644 = zext i1 %2643 to i8
  store i8 %2644, i8* %29, align 1
  %2645 = lshr i32 %2630, 31
  %2646 = trunc i32 %2645 to i8
  store i8 %2646, i8* %32, align 1
  %2647 = xor i32 %2645, %2629
  %2648 = add nuw nsw i32 %2647, %2629
  %2649 = icmp eq i32 %2648, 2
  %2650 = zext i1 %2649 to i8
  store i8 %2650, i8* %38, align 1
  %2651 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2652 = add i64 %2623, -1248
  %2653 = add i64 %2593, 38
  store i64 %2653, i64* %3, align 8
  %2654 = inttoptr i64 %2652 to i64*
  store i64 %2651, i64* %2654, align 8
  %2655 = load i32, i32* %ECX.i1152, align 4
  %2656 = zext i32 %2655 to i64
  %2657 = load i64, i64* %3, align 8
  store i64 %2656, i64* %RAX.i1112, align 8
  %2658 = sext i32 %2655 to i64
  %2659 = lshr i64 %2658, 32
  store i64 %2659, i64* %110, align 8
  %2660 = load i64, i64* %RBP.i, align 8
  %2661 = add i64 %2660, -1248
  %2662 = add i64 %2657, 10
  store i64 %2662, i64* %3, align 8
  %2663 = inttoptr i64 %2661 to i64*
  %2664 = load i64, i64* %2663, align 8
  store i64 %2664, i64* %RSI.i300, align 8
  %2665 = add i64 %2664, 32
  %2666 = add i64 %2657, 13
  store i64 %2666, i64* %3, align 8
  %2667 = inttoptr i64 %2665 to i32*
  %2668 = load i32, i32* %2667, align 4
  %2669 = sext i32 %2668 to i64
  %2670 = shl nuw i64 %2659, 32
  %2671 = or i64 %2670, %2656
  %2672 = sdiv i64 %2671, %2669
  %2673 = shl i64 %2672, 32
  %2674 = ashr exact i64 %2673, 32
  %2675 = icmp eq i64 %2672, %2674
  br i1 %2675, label %2678, label %2676

; <label>:2676:                                   ; preds = %block_41ac73
  %2677 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2666, %struct.Memory* %MEMORY.20)
  %.pre108 = load i64, i64* %RBP.i, align 8
  %.pre109 = load i32, i32* %EDX.i1155, align 4
  %.pre110 = load i64, i64* %3, align 8
  br label %routine_idivl_0x20__rsi_.exit

; <label>:2678:                                   ; preds = %block_41ac73
  %2679 = srem i64 %2671, %2669
  %2680 = and i64 %2672, 4294967295
  store i64 %2680, i64* %RAX.i1112, align 8
  %2681 = and i64 %2679, 4294967295
  store i64 %2681, i64* %RDX.i1107.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2682 = trunc i64 %2679 to i32
  br label %routine_idivl_0x20__rsi_.exit

routine_idivl_0x20__rsi_.exit:                    ; preds = %2678, %2676
  %2683 = phi i64 [ %.pre110, %2676 ], [ %2666, %2678 ]
  %2684 = phi i32 [ %.pre109, %2676 ], [ %2682, %2678 ]
  %2685 = phi i64 [ %.pre108, %2676 ], [ %2660, %2678 ]
  %2686 = phi %struct.Memory* [ %2677, %2676 ], [ %MEMORY.20, %2678 ]
  %2687 = add i64 %2685, -48
  %2688 = add i64 %2683, 3
  store i64 %2688, i64* %3, align 8
  %2689 = inttoptr i64 %2687 to i32*
  store i32 %2684, i32* %2689, align 4
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_41aca9

block_.L_41aca9:                                  ; preds = %block_41ac23, %routine_idivl_0x20__rsi_.exit, %block_41ac5d
  %2690 = phi i64 [ %2565, %block_41ac23 ], [ %2593, %block_41ac5d ], [ %.pre111, %routine_idivl_0x20__rsi_.exit ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.20, %block_41ac23 ], [ %MEMORY.20, %block_41ac5d ], [ %2686, %routine_idivl_0x20__rsi_.exit ]
  %2691 = load i64, i64* %RBP.i, align 8
  %2692 = add i64 %2691, -176
  store i64 %2692, i64* %RAX.i1112, align 8
  %2693 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*), align 8
  store i64 %2693, i64* %RCX.i1144, align 8
  %2694 = add i64 %2693, 16
  %2695 = add i64 %2690, 19
  store i64 %2695, i64* %3, align 8
  %2696 = inttoptr i64 %2694 to i64*
  %2697 = load i64, i64* %2696, align 8
  store i64 %2697, i64* %RCX.i1144, align 8
  %2698 = add i64 %2691, -4
  %2699 = add i64 %2690, 23
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to i32*
  %2701 = load i32, i32* %2700, align 4
  %2702 = sext i32 %2701 to i64
  store i64 %2702, i64* %RDX.i1107.pre-phi, align 8
  %2703 = shl nsw i64 %2702, 3
  %2704 = add i64 %2703, %2697
  %2705 = add i64 %2690, 27
  store i64 %2705, i64* %3, align 8
  %2706 = inttoptr i64 %2704 to i64*
  %2707 = load i64, i64* %2706, align 8
  store i64 %2707, i64* %RCX.i1144, align 8
  %2708 = add i64 %2691, -48
  %2709 = add i64 %2690, 31
  store i64 %2709, i64* %3, align 8
  %2710 = inttoptr i64 %2708 to i32*
  %2711 = load i32, i32* %2710, align 4
  %2712 = sext i32 %2711 to i64
  store i64 %2712, i64* %RDX.i1107.pre-phi, align 8
  %2713 = shl nsw i64 %2712, 3
  %2714 = add i64 %2713, %2707
  %2715 = add i64 %2690, 35
  store i64 %2715, i64* %3, align 8
  %2716 = inttoptr i64 %2714 to i64*
  %2717 = load i64, i64* %2716, align 8
  store i64 %2717, i64* %RDI.i, align 8
  %2718 = add i64 %2691, -32
  %2719 = add i64 %2690, 38
  store i64 %2719, i64* %3, align 8
  %2720 = inttoptr i64 %2718 to i32*
  %2721 = load i32, i32* %2720, align 4
  %2722 = zext i32 %2721 to i64
  store i64 %2722, i64* %RSI.i300, align 8
  %2723 = add i64 %2691, -36
  %2724 = add i64 %2690, 41
  store i64 %2724, i64* %3, align 8
  %2725 = inttoptr i64 %2723 to i32*
  %2726 = load i32, i32* %2725, align 4
  %2727 = zext i32 %2726 to i64
  store i64 %2727, i64* %RDX.i1107.pre-phi, align 8
  %2728 = add i64 %2691, -44
  %2729 = add i64 %2690, 45
  store i64 %2729, i64* %3, align 8
  %2730 = inttoptr i64 %2728 to i32*
  %2731 = load i32, i32* %2730, align 4
  %2732 = sext i32 %2731 to i64
  %2733 = shl nsw i64 %2732, 4
  store i64 %2733, i64* %RCX.i1144, align 8
  %2734 = add i64 %2733, %2692
  store i64 %2734, i64* %R8.i290, align 8
  %2735 = icmp ult i64 %2734, %2692
  %2736 = icmp ult i64 %2734, %2733
  %2737 = or i1 %2735, %2736
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %14, align 1
  %2739 = trunc i64 %2734 to i32
  %2740 = and i32 %2739, 255
  %2741 = tail call i32 @llvm.ctpop.i32(i32 %2740)
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  %2744 = xor i8 %2743, 1
  store i8 %2744, i8* %21, align 1
  %2745 = xor i64 %2733, %2692
  %2746 = xor i64 %2745, %2734
  %2747 = lshr i64 %2746, 4
  %2748 = trunc i64 %2747 to i8
  %2749 = and i8 %2748, 1
  store i8 %2749, i8* %26, align 1
  %2750 = icmp eq i64 %2734, 0
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %29, align 1
  %2752 = lshr i64 %2734, 63
  %2753 = trunc i64 %2752 to i8
  store i8 %2753, i8* %32, align 1
  %2754 = lshr i64 %2692, 63
  %2755 = lshr i64 %2732, 59
  %2756 = and i64 %2755, 1
  %2757 = xor i64 %2752, %2754
  %2758 = xor i64 %2752, %2756
  %2759 = add nuw nsw i64 %2757, %2758
  %2760 = icmp eq i64 %2759, 2
  %2761 = zext i1 %2760 to i8
  store i8 %2761, i8* %38, align 1
  %2762 = load i64, i64* %RBP.i, align 8
  %2763 = add i64 %2762, -40
  %2764 = add i64 %2690, 59
  store i64 %2764, i64* %3, align 8
  %2765 = inttoptr i64 %2763 to i32*
  %2766 = load i32, i32* %2765, align 4
  %2767 = sext i32 %2766 to i64
  store i64 %2767, i64* %RCX.i1144, align 8
  %2768 = shl nsw i64 %2767, 2
  %2769 = add i64 %2768, %2734
  %2770 = add i64 %2690, 63
  store i64 %2770, i64* %3, align 8
  %2771 = inttoptr i64 %2769 to i32*
  %2772 = load i32, i32* %2771, align 4
  %2773 = zext i32 %2772 to i64
  store i64 %2773, i64* %RCX.i1144, align 8
  %2774 = load i64, i64* %RAX.i1112, align 8
  %2775 = add i64 %2774, 64
  store i64 %2775, i64* %RAX.i1112, align 8
  %2776 = icmp ugt i64 %2774, -65
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %14, align 1
  %2778 = trunc i64 %2775 to i32
  %2779 = and i32 %2778, 255
  %2780 = tail call i32 @llvm.ctpop.i32(i32 %2779)
  %2781 = trunc i32 %2780 to i8
  %2782 = and i8 %2781, 1
  %2783 = xor i8 %2782, 1
  store i8 %2783, i8* %21, align 1
  %2784 = xor i64 %2775, %2774
  %2785 = lshr i64 %2784, 4
  %2786 = trunc i64 %2785 to i8
  %2787 = and i8 %2786, 1
  store i8 %2787, i8* %26, align 1
  %2788 = icmp eq i64 %2775, 0
  %2789 = zext i1 %2788 to i8
  store i8 %2789, i8* %29, align 1
  %2790 = lshr i64 %2775, 63
  %2791 = trunc i64 %2790 to i8
  store i8 %2791, i8* %32, align 1
  %2792 = lshr i64 %2774, 63
  %2793 = xor i64 %2790, %2792
  %2794 = add nuw nsw i64 %2793, %2790
  %2795 = icmp eq i64 %2794, 2
  %2796 = zext i1 %2795 to i8
  store i8 %2796, i8* %38, align 1
  %2797 = add i64 %2762, -44
  %2798 = add i64 %2690, 71
  store i64 %2798, i64* %3, align 8
  %2799 = inttoptr i64 %2797 to i32*
  %2800 = load i32, i32* %2799, align 4
  %2801 = sext i32 %2800 to i64
  %2802 = shl nsw i64 %2801, 4
  store i64 %2802, i64* %R8.i290, align 8
  %2803 = add i64 %2802, %2775
  store i64 %2803, i64* %RAX.i1112, align 8
  %2804 = icmp ult i64 %2803, %2775
  %2805 = icmp ult i64 %2803, %2802
  %2806 = or i1 %2804, %2805
  %2807 = zext i1 %2806 to i8
  store i8 %2807, i8* %14, align 1
  %2808 = trunc i64 %2803 to i32
  %2809 = and i32 %2808, 255
  %2810 = tail call i32 @llvm.ctpop.i32(i32 %2809)
  %2811 = trunc i32 %2810 to i8
  %2812 = and i8 %2811, 1
  %2813 = xor i8 %2812, 1
  store i8 %2813, i8* %21, align 1
  %2814 = xor i64 %2802, %2775
  %2815 = xor i64 %2814, %2803
  %2816 = lshr i64 %2815, 4
  %2817 = trunc i64 %2816 to i8
  %2818 = and i8 %2817, 1
  store i8 %2818, i8* %26, align 1
  %2819 = icmp eq i64 %2803, 0
  %2820 = zext i1 %2819 to i8
  store i8 %2820, i8* %29, align 1
  %2821 = lshr i64 %2803, 63
  %2822 = trunc i64 %2821 to i8
  store i8 %2822, i8* %32, align 1
  %2823 = lshr i64 %2801, 59
  %2824 = and i64 %2823, 1
  %2825 = xor i64 %2821, %2790
  %2826 = xor i64 %2821, %2824
  %2827 = add nuw nsw i64 %2825, %2826
  %2828 = icmp eq i64 %2827, 2
  %2829 = zext i1 %2828 to i8
  store i8 %2829, i8* %38, align 1
  %2830 = load i64, i64* %RBP.i, align 8
  %2831 = add i64 %2830, -40
  %2832 = add i64 %2690, 82
  store i64 %2832, i64* %3, align 8
  %2833 = inttoptr i64 %2831 to i32*
  %2834 = load i32, i32* %2833, align 4
  %2835 = sext i32 %2834 to i64
  store i64 %2835, i64* %R8.i290, align 8
  %2836 = shl nsw i64 %2835, 2
  %2837 = add i64 %2836, %2803
  %2838 = add i64 %2690, 86
  store i64 %2838, i64* %3, align 8
  %2839 = inttoptr i64 %2837 to i32*
  %2840 = load i32, i32* %2839, align 4
  %2841 = zext i32 %2840 to i64
  store i64 %2841, i64* %R8.i290, align 8
  %2842 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*), align 8
  store i64 %2842, i64* %RAX.i1112, align 8
  %2843 = add i64 %2842, 32
  %2844 = add i64 %2690, 98
  store i64 %2844, i64* %3, align 8
  %2845 = inttoptr i64 %2843 to i64*
  %2846 = load i64, i64* %2845, align 8
  store i64 %2846, i64* %R9.i1147, align 8
  %2847 = add i64 %2690, 583
  %2848 = add i64 %2690, 103
  %2849 = load i64, i64* %6, align 8
  %2850 = add i64 %2849, -8
  %2851 = inttoptr i64 %2850 to i64*
  store i64 %2848, i64* %2851, align 8
  store i64 %2850, i64* %6, align 8
  store i64 %2847, i64* %3, align 8
  %call2_41ad0b = tail call %struct.Memory* @sub_41aef0.Get_Reference_Block(%struct.State* nonnull %0, i64 %2847, %struct.Memory* %MEMORY.21)
  %2852 = load i64, i64* %RBP.i, align 8
  %2853 = add i64 %2852, -28
  %2854 = load i64, i64* %3, align 8
  %2855 = add i64 %2854, 7
  store i64 %2855, i64* %3, align 8
  %2856 = inttoptr i64 %2853 to i32*
  store i32 0, i32* %2856, align 4
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_41ad17

block_.L_41ad17:                                  ; preds = %block_.L_41adbe, %block_.L_41aca9
  %2857 = phi i64 [ %3280, %block_.L_41adbe ], [ %.pre112, %block_.L_41aca9 ]
  %2858 = load i64, i64* %RBP.i, align 8
  %2859 = add i64 %2858, -28
  %2860 = add i64 %2857, 4
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i32*
  %2862 = load i32, i32* %2861, align 4
  %2863 = add i32 %2862, -4
  %2864 = icmp ult i32 %2862, 4
  %2865 = zext i1 %2864 to i8
  store i8 %2865, i8* %14, align 1
  %2866 = and i32 %2863, 255
  %2867 = tail call i32 @llvm.ctpop.i32(i32 %2866)
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  %2870 = xor i8 %2869, 1
  store i8 %2870, i8* %21, align 1
  %2871 = xor i32 %2863, %2862
  %2872 = lshr i32 %2871, 4
  %2873 = trunc i32 %2872 to i8
  %2874 = and i8 %2873, 1
  store i8 %2874, i8* %26, align 1
  %2875 = icmp eq i32 %2863, 0
  %2876 = zext i1 %2875 to i8
  store i8 %2876, i8* %29, align 1
  %2877 = lshr i32 %2863, 31
  %2878 = trunc i32 %2877 to i8
  store i8 %2878, i8* %32, align 1
  %2879 = lshr i32 %2862, 31
  %2880 = xor i32 %2877, %2879
  %2881 = add nuw nsw i32 %2880, %2879
  %2882 = icmp eq i32 %2881, 2
  %2883 = zext i1 %2882 to i8
  store i8 %2883, i8* %38, align 1
  %2884 = icmp ne i8 %2878, 0
  %2885 = xor i1 %2884, %2882
  %.v120 = select i1 %2885, i64 10, i64 186
  %2886 = add i64 %2857, %.v120
  store i64 %2886, i64* %3, align 8
  br i1 %2885, label %block_41ad21, label %block_.L_41add1

block_41ad21:                                     ; preds = %block_.L_41ad17
  %2887 = add i64 %2858, -24
  %2888 = add i64 %2886, 7
  store i64 %2888, i64* %3, align 8
  %2889 = inttoptr i64 %2887 to i32*
  store i32 0, i32* %2889, align 4
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_41ad28

block_.L_41ad28:                                  ; preds = %block_41ad32, %block_41ad21
  %2890 = phi i64 [ %3250, %block_41ad32 ], [ %.pre113, %block_41ad21 ]
  %2891 = load i64, i64* %RBP.i, align 8
  %2892 = add i64 %2891, -24
  %2893 = add i64 %2890, 4
  store i64 %2893, i64* %3, align 8
  %2894 = inttoptr i64 %2892 to i32*
  %2895 = load i32, i32* %2894, align 4
  %2896 = add i32 %2895, -4
  %2897 = icmp ult i32 %2895, 4
  %2898 = zext i1 %2897 to i8
  store i8 %2898, i8* %14, align 1
  %2899 = and i32 %2896, 255
  %2900 = tail call i32 @llvm.ctpop.i32(i32 %2899)
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  %2903 = xor i8 %2902, 1
  store i8 %2903, i8* %21, align 1
  %2904 = xor i32 %2896, %2895
  %2905 = lshr i32 %2904, 4
  %2906 = trunc i32 %2905 to i8
  %2907 = and i8 %2906, 1
  store i8 %2907, i8* %26, align 1
  %2908 = icmp eq i32 %2896, 0
  %2909 = zext i1 %2908 to i8
  store i8 %2909, i8* %29, align 1
  %2910 = lshr i32 %2896, 31
  %2911 = trunc i32 %2910 to i8
  store i8 %2911, i8* %32, align 1
  %2912 = lshr i32 %2895, 31
  %2913 = xor i32 %2910, %2912
  %2914 = add nuw nsw i32 %2913, %2912
  %2915 = icmp eq i32 %2914, 2
  %2916 = zext i1 %2915 to i8
  store i8 %2916, i8* %38, align 1
  %2917 = icmp ne i8 %2911, 0
  %2918 = xor i1 %2917, %2915
  %.v121 = select i1 %2918, i64 10, i64 150
  %2919 = add i64 %2890, %.v121
  store i64 %2919, i64* %3, align 8
  br i1 %2918, label %block_41ad32, label %block_.L_41adbe

block_41ad32:                                     ; preds = %block_.L_41ad28
  %2920 = add i64 %2891, -1200
  store i64 %2920, i64* %RAX.i1112, align 8
  %2921 = add i64 %2891, -44
  %2922 = add i64 %2919, 10
  store i64 %2922, i64* %3, align 8
  %2923 = inttoptr i64 %2921 to i32*
  %2924 = load i32, i32* %2923, align 4
  %2925 = shl i32 %2924, 2
  %2926 = zext i32 %2925 to i64
  store i64 %2926, i64* %RCX.i1144, align 8
  %2927 = lshr i32 %2924, 30
  %2928 = trunc i32 %2927 to i8
  %2929 = and i8 %2928, 1
  store i8 %2929, i8* %14, align 1
  %2930 = and i32 %2925, 252
  %2931 = tail call i32 @llvm.ctpop.i32(i32 %2930)
  %2932 = trunc i32 %2931 to i8
  %2933 = and i8 %2932, 1
  %2934 = xor i8 %2933, 1
  store i8 %2934, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2935 = icmp eq i32 %2925, 0
  %2936 = zext i1 %2935 to i8
  store i8 %2936, i8* %29, align 1
  %2937 = lshr i32 %2924, 29
  %2938 = trunc i32 %2937 to i8
  %2939 = and i8 %2938, 1
  store i8 %2939, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2940 = add i64 %2891, -28
  %2941 = add i64 %2919, 16
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i32*
  %2943 = load i32, i32* %2942, align 4
  %2944 = add i32 %2943, %2925
  %2945 = zext i32 %2944 to i64
  store i64 %2945, i64* %RCX.i1144, align 8
  %2946 = sext i32 %2944 to i64
  %2947 = shl nsw i64 %2946, 6
  store i64 %2947, i64* %RDX.i1107.pre-phi, align 8
  %2948 = add i64 %2947, %2920
  store i64 %2948, i64* %RAX.i1112, align 8
  %2949 = icmp ult i64 %2948, %2920
  %2950 = icmp ult i64 %2948, %2947
  %2951 = or i1 %2949, %2950
  %2952 = zext i1 %2951 to i8
  store i8 %2952, i8* %14, align 1
  %2953 = trunc i64 %2948 to i32
  %2954 = and i32 %2953, 255
  %2955 = tail call i32 @llvm.ctpop.i32(i32 %2954)
  %2956 = trunc i32 %2955 to i8
  %2957 = and i8 %2956, 1
  %2958 = xor i8 %2957, 1
  store i8 %2958, i8* %21, align 1
  %2959 = xor i64 %2920, %2948
  %2960 = lshr i64 %2959, 4
  %2961 = trunc i64 %2960 to i8
  %2962 = and i8 %2961, 1
  store i8 %2962, i8* %26, align 1
  %2963 = icmp eq i64 %2948, 0
  %2964 = zext i1 %2963 to i8
  store i8 %2964, i8* %29, align 1
  %2965 = lshr i64 %2948, 63
  %2966 = trunc i64 %2965 to i8
  store i8 %2966, i8* %32, align 1
  %2967 = lshr i64 %2920, 63
  %2968 = lshr i64 %2946, 57
  %2969 = and i64 %2968, 1
  %2970 = xor i64 %2965, %2967
  %2971 = xor i64 %2965, %2969
  %2972 = add nuw nsw i64 %2970, %2971
  %2973 = icmp eq i64 %2972, 2
  %2974 = zext i1 %2973 to i8
  store i8 %2974, i8* %38, align 1
  %2975 = load i64, i64* %RBP.i, align 8
  %2976 = add i64 %2975, -40
  %2977 = add i64 %2919, 29
  store i64 %2977, i64* %3, align 8
  %2978 = inttoptr i64 %2976 to i32*
  %2979 = load i32, i32* %2978, align 4
  %2980 = shl i32 %2979, 2
  %2981 = zext i32 %2980 to i64
  store i64 %2981, i64* %RCX.i1144, align 8
  %2982 = lshr i32 %2979, 30
  %2983 = trunc i32 %2982 to i8
  %2984 = and i8 %2983, 1
  store i8 %2984, i8* %14, align 1
  %2985 = and i32 %2980, 252
  %2986 = tail call i32 @llvm.ctpop.i32(i32 %2985)
  %2987 = trunc i32 %2986 to i8
  %2988 = and i8 %2987, 1
  %2989 = xor i8 %2988, 1
  store i8 %2989, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2990 = icmp eq i32 %2980, 0
  %2991 = zext i1 %2990 to i8
  store i8 %2991, i8* %29, align 1
  %2992 = lshr i32 %2979, 29
  %2993 = trunc i32 %2992 to i8
  %2994 = and i8 %2993, 1
  store i8 %2994, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2995 = add i64 %2975, -24
  %2996 = add i64 %2919, 35
  store i64 %2996, i64* %3, align 8
  %2997 = inttoptr i64 %2995 to i32*
  %2998 = load i32, i32* %2997, align 4
  %2999 = add i32 %2998, %2980
  %3000 = zext i32 %2999 to i64
  store i64 %3000, i64* %RCX.i1144, align 8
  %3001 = icmp ult i32 %2999, %2980
  %3002 = icmp ult i32 %2999, %2998
  %3003 = or i1 %3001, %3002
  %3004 = zext i1 %3003 to i8
  store i8 %3004, i8* %14, align 1
  %3005 = and i32 %2999, 255
  %3006 = tail call i32 @llvm.ctpop.i32(i32 %3005)
  %3007 = trunc i32 %3006 to i8
  %3008 = and i8 %3007, 1
  %3009 = xor i8 %3008, 1
  store i8 %3009, i8* %21, align 1
  %3010 = xor i32 %2998, %2980
  %3011 = xor i32 %3010, %2999
  %3012 = lshr i32 %3011, 4
  %3013 = trunc i32 %3012 to i8
  %3014 = and i8 %3013, 1
  store i8 %3014, i8* %26, align 1
  %3015 = icmp eq i32 %2999, 0
  %3016 = zext i1 %3015 to i8
  store i8 %3016, i8* %29, align 1
  %3017 = lshr i32 %2999, 31
  %3018 = trunc i32 %3017 to i8
  store i8 %3018, i8* %32, align 1
  %3019 = lshr i32 %2979, 29
  %3020 = and i32 %3019, 1
  %3021 = lshr i32 %2998, 31
  %3022 = xor i32 %3017, %3020
  %3023 = xor i32 %3017, %3021
  %3024 = add nuw nsw i32 %3022, %3023
  %3025 = icmp eq i32 %3024, 2
  %3026 = zext i1 %3025 to i8
  store i8 %3026, i8* %38, align 1
  %3027 = sext i32 %2999 to i64
  store i64 %3027, i64* %RDX.i1107.pre-phi, align 8
  %3028 = load i64, i64* %RAX.i1112, align 8
  %3029 = shl nsw i64 %3027, 2
  %3030 = add i64 %3028, %3029
  %3031 = add i64 %2919, 41
  store i64 %3031, i64* %3, align 8
  %3032 = inttoptr i64 %3030 to i32*
  %3033 = load i32, i32* %3032, align 4
  %3034 = zext i32 %3033 to i64
  store i64 %3034, i64* %RCX.i1144, align 8
  %3035 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*), align 8
  store i64 %3035, i64* %RAX.i1112, align 8
  %3036 = add i64 %3035, 32
  %3037 = add i64 %2919, 53
  store i64 %3037, i64* %3, align 8
  %3038 = inttoptr i64 %3036 to i64*
  %3039 = load i64, i64* %3038, align 8
  store i64 %3039, i64* %RAX.i1112, align 8
  %3040 = add i64 %2975, -28
  %3041 = add i64 %2919, 57
  store i64 %3041, i64* %3, align 8
  %3042 = inttoptr i64 %3040 to i32*
  %3043 = load i32, i32* %3042, align 4
  %3044 = sext i32 %3043 to i64
  store i64 %3044, i64* %RDX.i1107.pre-phi, align 8
  %3045 = shl nsw i64 %3044, 3
  %3046 = add i64 %3045, %3039
  %3047 = add i64 %2919, 61
  store i64 %3047, i64* %3, align 8
  %3048 = inttoptr i64 %3046 to i64*
  %3049 = load i64, i64* %3048, align 8
  store i64 %3049, i64* %RAX.i1112, align 8
  %3050 = load i64, i64* %RBP.i, align 8
  %3051 = add i64 %3050, -24
  %3052 = add i64 %2919, 65
  store i64 %3052, i64* %3, align 8
  %3053 = inttoptr i64 %3051 to i32*
  %3054 = load i32, i32* %3053, align 4
  %3055 = sext i32 %3054 to i64
  store i64 %3055, i64* %RDX.i1107.pre-phi, align 8
  %3056 = shl nsw i64 %3055, 1
  %3057 = add i64 %3056, %3049
  %3058 = add i64 %2919, 69
  store i64 %3058, i64* %3, align 8
  %3059 = inttoptr i64 %3057 to i16*
  %3060 = load i16, i16* %3059, align 2
  %3061 = zext i16 %3060 to i64
  store i64 %3061, i64* %RSI.i300, align 8
  %3062 = zext i16 %3060 to i32
  %3063 = zext i16 %3060 to i32
  %3064 = add i32 %3062, %3033
  %3065 = zext i32 %3064 to i64
  store i64 %3065, i64* %RCX.i1144, align 8
  %3066 = icmp ult i32 %3064, %3033
  %3067 = icmp ult i32 %3064, %3062
  %3068 = or i1 %3066, %3067
  %3069 = zext i1 %3068 to i8
  store i8 %3069, i8* %14, align 1
  %3070 = and i32 %3064, 255
  %3071 = tail call i32 @llvm.ctpop.i32(i32 %3070)
  %3072 = trunc i32 %3071 to i8
  %3073 = and i8 %3072, 1
  %3074 = xor i8 %3073, 1
  store i8 %3074, i8* %21, align 1
  %3075 = xor i32 %3063, %3033
  %3076 = xor i32 %3075, %3064
  %3077 = lshr i32 %3076, 4
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  store i8 %3079, i8* %26, align 1
  %3080 = icmp eq i32 %3064, 0
  %3081 = zext i1 %3080 to i8
  store i8 %3081, i8* %29, align 1
  %3082 = lshr i32 %3064, 31
  %3083 = trunc i32 %3082 to i8
  store i8 %3083, i8* %32, align 1
  %3084 = lshr i32 %3033, 31
  %3085 = xor i32 %3082, %3084
  %3086 = add nuw nsw i32 %3085, %3082
  %3087 = icmp eq i32 %3086, 2
  %3088 = zext i1 %3087 to i8
  store i8 %3088, i8* %38, align 1
  %3089 = trunc i32 %3064 to i16
  store i16 %3089, i16* %DI.i196, align 2
  store i64 %3035, i64* %RAX.i1112, align 8
  %3090 = add i64 %3035, 8
  %3091 = add i64 %2919, 86
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to i64*
  %3093 = load i64, i64* %3092, align 8
  store i64 %3093, i64* %RAX.i1112, align 8
  %3094 = add i64 %3050, -4
  %3095 = add i64 %2919, 90
  store i64 %3095, i64* %3, align 8
  %3096 = inttoptr i64 %3094 to i32*
  %3097 = load i32, i32* %3096, align 4
  %3098 = sext i32 %3097 to i64
  store i64 %3098, i64* %RDX.i1107.pre-phi, align 8
  %3099 = shl nsw i64 %3098, 3
  %3100 = add i64 %3099, %3093
  %3101 = add i64 %2919, 94
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3100 to i64*
  %3103 = load i64, i64* %3102, align 8
  store i64 %3103, i64* %RAX.i1112, align 8
  %3104 = add i64 %3050, -32
  %3105 = add i64 %2919, 97
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3104 to i32*
  %3107 = load i32, i32* %3106, align 4
  %3108 = shl i32 %3107, 2
  %3109 = zext i32 %3108 to i64
  store i64 %3109, i64* %RCX.i1144, align 8
  %3110 = lshr i32 %3107, 30
  %3111 = trunc i32 %3110 to i8
  %3112 = and i8 %3111, 1
  store i8 %3112, i8* %14, align 1
  %3113 = and i32 %3108, 252
  %3114 = tail call i32 @llvm.ctpop.i32(i32 %3113)
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  %3117 = xor i8 %3116, 1
  store i8 %3117, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3118 = icmp eq i32 %3108, 0
  %3119 = zext i1 %3118 to i8
  store i8 %3119, i8* %29, align 1
  %3120 = lshr i32 %3107, 29
  %3121 = trunc i32 %3120 to i8
  %3122 = and i8 %3121, 1
  store i8 %3122, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3123 = load i64, i64* %RBP.i, align 8
  %3124 = add i64 %3123, -28
  %3125 = add i64 %2919, 103
  store i64 %3125, i64* %3, align 8
  %3126 = inttoptr i64 %3124 to i32*
  %3127 = load i32, i32* %3126, align 4
  %3128 = add i32 %3127, %3108
  %3129 = zext i32 %3128 to i64
  store i64 %3129, i64* %RCX.i1144, align 8
  %3130 = icmp ult i32 %3128, %3108
  %3131 = icmp ult i32 %3128, %3127
  %3132 = or i1 %3130, %3131
  %3133 = zext i1 %3132 to i8
  store i8 %3133, i8* %14, align 1
  %3134 = and i32 %3128, 255
  %3135 = tail call i32 @llvm.ctpop.i32(i32 %3134)
  %3136 = trunc i32 %3135 to i8
  %3137 = and i8 %3136, 1
  %3138 = xor i8 %3137, 1
  store i8 %3138, i8* %21, align 1
  %3139 = xor i32 %3127, %3108
  %3140 = xor i32 %3139, %3128
  %3141 = lshr i32 %3140, 4
  %3142 = trunc i32 %3141 to i8
  %3143 = and i8 %3142, 1
  store i8 %3143, i8* %26, align 1
  %3144 = icmp eq i32 %3128, 0
  %3145 = zext i1 %3144 to i8
  store i8 %3145, i8* %29, align 1
  %3146 = lshr i32 %3128, 31
  %3147 = trunc i32 %3146 to i8
  store i8 %3147, i8* %32, align 1
  %3148 = lshr i32 %3107, 29
  %3149 = and i32 %3148, 1
  %3150 = lshr i32 %3127, 31
  %3151 = xor i32 %3146, %3149
  %3152 = xor i32 %3146, %3150
  %3153 = add nuw nsw i32 %3151, %3152
  %3154 = icmp eq i32 %3153, 2
  %3155 = zext i1 %3154 to i8
  store i8 %3155, i8* %38, align 1
  %3156 = sext i32 %3128 to i64
  store i64 %3156, i64* %RDX.i1107.pre-phi, align 8
  %3157 = shl nsw i64 %3156, 3
  %3158 = add i64 %3103, %3157
  %3159 = add i64 %2919, 110
  store i64 %3159, i64* %3, align 8
  %3160 = inttoptr i64 %3158 to i64*
  %3161 = load i64, i64* %3160, align 8
  store i64 %3161, i64* %RAX.i1112, align 8
  %3162 = add i64 %3123, -36
  %3163 = add i64 %2919, 113
  store i64 %3163, i64* %3, align 8
  %3164 = inttoptr i64 %3162 to i32*
  %3165 = load i32, i32* %3164, align 4
  %3166 = shl i32 %3165, 2
  %3167 = zext i32 %3166 to i64
  store i64 %3167, i64* %RCX.i1144, align 8
  %3168 = lshr i32 %3165, 30
  %3169 = trunc i32 %3168 to i8
  %3170 = and i8 %3169, 1
  store i8 %3170, i8* %14, align 1
  %3171 = and i32 %3166, 252
  %3172 = tail call i32 @llvm.ctpop.i32(i32 %3171)
  %3173 = trunc i32 %3172 to i8
  %3174 = and i8 %3173, 1
  %3175 = xor i8 %3174, 1
  store i8 %3175, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3176 = icmp eq i32 %3166, 0
  %3177 = zext i1 %3176 to i8
  store i8 %3177, i8* %29, align 1
  %3178 = lshr i32 %3165, 29
  %3179 = trunc i32 %3178 to i8
  %3180 = and i8 %3179, 1
  store i8 %3180, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3181 = add i64 %3123, -24
  %3182 = add i64 %2919, 119
  store i64 %3182, i64* %3, align 8
  %3183 = inttoptr i64 %3181 to i32*
  %3184 = load i32, i32* %3183, align 4
  %3185 = add i32 %3184, %3166
  %3186 = zext i32 %3185 to i64
  store i64 %3186, i64* %RCX.i1144, align 8
  %3187 = icmp ult i32 %3185, %3166
  %3188 = icmp ult i32 %3185, %3184
  %3189 = or i1 %3187, %3188
  %3190 = zext i1 %3189 to i8
  store i8 %3190, i8* %14, align 1
  %3191 = and i32 %3185, 255
  %3192 = tail call i32 @llvm.ctpop.i32(i32 %3191)
  %3193 = trunc i32 %3192 to i8
  %3194 = and i8 %3193, 1
  %3195 = xor i8 %3194, 1
  store i8 %3195, i8* %21, align 1
  %3196 = xor i32 %3184, %3166
  %3197 = xor i32 %3196, %3185
  %3198 = lshr i32 %3197, 4
  %3199 = trunc i32 %3198 to i8
  %3200 = and i8 %3199, 1
  store i8 %3200, i8* %26, align 1
  %3201 = icmp eq i32 %3185, 0
  %3202 = zext i1 %3201 to i8
  store i8 %3202, i8* %29, align 1
  %3203 = lshr i32 %3185, 31
  %3204 = trunc i32 %3203 to i8
  store i8 %3204, i8* %32, align 1
  %3205 = lshr i32 %3165, 29
  %3206 = and i32 %3205, 1
  %3207 = lshr i32 %3184, 31
  %3208 = xor i32 %3203, %3206
  %3209 = xor i32 %3203, %3207
  %3210 = add nuw nsw i32 %3208, %3209
  %3211 = icmp eq i32 %3210, 2
  %3212 = zext i1 %3211 to i8
  store i8 %3212, i8* %38, align 1
  %3213 = sext i32 %3185 to i64
  store i64 %3213, i64* %RDX.i1107.pre-phi, align 8
  %3214 = shl nsw i64 %3213, 1
  %3215 = add i64 %3161, %3214
  %3216 = load i16, i16* %DI.i196, align 2
  %3217 = add i64 %2919, 126
  store i64 %3217, i64* %3, align 8
  %3218 = inttoptr i64 %3215 to i16*
  store i16 %3216, i16* %3218, align 2
  %3219 = load i64, i64* %RBP.i, align 8
  %3220 = add i64 %3219, -24
  %3221 = load i64, i64* %3, align 8
  %3222 = add i64 %3221, 3
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3220 to i32*
  %3224 = load i32, i32* %3223, align 4
  %3225 = add i32 %3224, 1
  %3226 = zext i32 %3225 to i64
  store i64 %3226, i64* %RAX.i1112, align 8
  %3227 = icmp eq i32 %3224, -1
  %3228 = icmp eq i32 %3225, 0
  %3229 = or i1 %3227, %3228
  %3230 = zext i1 %3229 to i8
  store i8 %3230, i8* %14, align 1
  %3231 = and i32 %3225, 255
  %3232 = tail call i32 @llvm.ctpop.i32(i32 %3231)
  %3233 = trunc i32 %3232 to i8
  %3234 = and i8 %3233, 1
  %3235 = xor i8 %3234, 1
  store i8 %3235, i8* %21, align 1
  %3236 = xor i32 %3225, %3224
  %3237 = lshr i32 %3236, 4
  %3238 = trunc i32 %3237 to i8
  %3239 = and i8 %3238, 1
  store i8 %3239, i8* %26, align 1
  %3240 = zext i1 %3228 to i8
  store i8 %3240, i8* %29, align 1
  %3241 = lshr i32 %3225, 31
  %3242 = trunc i32 %3241 to i8
  store i8 %3242, i8* %32, align 1
  %3243 = lshr i32 %3224, 31
  %3244 = xor i32 %3241, %3243
  %3245 = add nuw nsw i32 %3244, %3241
  %3246 = icmp eq i32 %3245, 2
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %38, align 1
  %3248 = add i64 %3221, 9
  store i64 %3248, i64* %3, align 8
  store i32 %3225, i32* %3223, align 4
  %3249 = load i64, i64* %3, align 8
  %3250 = add i64 %3249, -145
  store i64 %3250, i64* %3, align 8
  br label %block_.L_41ad28

block_.L_41adbe:                                  ; preds = %block_.L_41ad28
  %3251 = add i64 %2891, -28
  %3252 = add i64 %2919, 8
  store i64 %3252, i64* %3, align 8
  %3253 = inttoptr i64 %3251 to i32*
  %3254 = load i32, i32* %3253, align 4
  %3255 = add i32 %3254, 1
  %3256 = zext i32 %3255 to i64
  store i64 %3256, i64* %RAX.i1112, align 8
  %3257 = icmp eq i32 %3254, -1
  %3258 = icmp eq i32 %3255, 0
  %3259 = or i1 %3257, %3258
  %3260 = zext i1 %3259 to i8
  store i8 %3260, i8* %14, align 1
  %3261 = and i32 %3255, 255
  %3262 = tail call i32 @llvm.ctpop.i32(i32 %3261)
  %3263 = trunc i32 %3262 to i8
  %3264 = and i8 %3263, 1
  %3265 = xor i8 %3264, 1
  store i8 %3265, i8* %21, align 1
  %3266 = xor i32 %3255, %3254
  %3267 = lshr i32 %3266, 4
  %3268 = trunc i32 %3267 to i8
  %3269 = and i8 %3268, 1
  store i8 %3269, i8* %26, align 1
  %3270 = zext i1 %3258 to i8
  store i8 %3270, i8* %29, align 1
  %3271 = lshr i32 %3255, 31
  %3272 = trunc i32 %3271 to i8
  store i8 %3272, i8* %32, align 1
  %3273 = lshr i32 %3254, 31
  %3274 = xor i32 %3271, %3273
  %3275 = add nuw nsw i32 %3274, %3271
  %3276 = icmp eq i32 %3275, 2
  %3277 = zext i1 %3276 to i8
  store i8 %3277, i8* %38, align 1
  %3278 = add i64 %2919, 14
  store i64 %3278, i64* %3, align 8
  store i32 %3255, i32* %3253, align 4
  %3279 = load i64, i64* %3, align 8
  %3280 = add i64 %3279, -181
  store i64 %3280, i64* %3, align 8
  br label %block_.L_41ad17

block_.L_41add1:                                  ; preds = %block_.L_41ad17
  %3281 = add i64 %2858, -40
  %3282 = add i64 %2886, 8
  store i64 %3282, i64* %3, align 8
  %3283 = inttoptr i64 %3281 to i32*
  %3284 = load i32, i32* %3283, align 4
  %3285 = add i32 %3284, 1
  %3286 = zext i32 %3285 to i64
  store i64 %3286, i64* %RAX.i1112, align 8
  %3287 = icmp eq i32 %3284, -1
  %3288 = icmp eq i32 %3285, 0
  %3289 = or i1 %3287, %3288
  %3290 = zext i1 %3289 to i8
  store i8 %3290, i8* %14, align 1
  %3291 = and i32 %3285, 255
  %3292 = tail call i32 @llvm.ctpop.i32(i32 %3291)
  %3293 = trunc i32 %3292 to i8
  %3294 = and i8 %3293, 1
  %3295 = xor i8 %3294, 1
  store i8 %3295, i8* %21, align 1
  %3296 = xor i32 %3285, %3284
  %3297 = lshr i32 %3296, 4
  %3298 = trunc i32 %3297 to i8
  %3299 = and i8 %3298, 1
  store i8 %3299, i8* %26, align 1
  %3300 = zext i1 %3288 to i8
  store i8 %3300, i8* %29, align 1
  %3301 = lshr i32 %3285, 31
  %3302 = trunc i32 %3301 to i8
  store i8 %3302, i8* %32, align 1
  %3303 = lshr i32 %3284, 31
  %3304 = xor i32 %3301, %3303
  %3305 = add nuw nsw i32 %3304, %3301
  %3306 = icmp eq i32 %3305, 2
  %3307 = zext i1 %3306 to i8
  store i8 %3307, i8* %38, align 1
  %3308 = add i64 %2886, 14
  store i64 %3308, i64* %3, align 8
  store i32 %3285, i32* %3283, align 4
  %3309 = load i64, i64* %3, align 8
  %3310 = add i64 %3309, -459
  store i64 %3310, i64* %3, align 8
  br label %block_.L_41ac14

block_.L_41ade4:                                  ; preds = %block_.L_41ac14
  %3311 = add i64 %2421, -44
  %3312 = add i64 %2457, 8
  store i64 %3312, i64* %3, align 8
  %3313 = inttoptr i64 %3311 to i32*
  %3314 = load i32, i32* %3313, align 4
  %3315 = add i32 %3314, 1
  %3316 = zext i32 %3315 to i64
  store i64 %3316, i64* %RAX.i1112, align 8
  %3317 = icmp eq i32 %3314, -1
  %3318 = icmp eq i32 %3315, 0
  %3319 = or i1 %3317, %3318
  %3320 = zext i1 %3319 to i8
  store i8 %3320, i8* %14, align 1
  %3321 = and i32 %3315, 255
  %3322 = tail call i32 @llvm.ctpop.i32(i32 %3321)
  %3323 = trunc i32 %3322 to i8
  %3324 = and i8 %3323, 1
  %3325 = xor i8 %3324, 1
  store i8 %3325, i8* %21, align 1
  %3326 = xor i32 %3315, %3314
  %3327 = lshr i32 %3326, 4
  %3328 = trunc i32 %3327 to i8
  %3329 = and i8 %3328, 1
  store i8 %3329, i8* %26, align 1
  %3330 = zext i1 %3318 to i8
  store i8 %3330, i8* %29, align 1
  %3331 = lshr i32 %3315, 31
  %3332 = trunc i32 %3331 to i8
  store i8 %3332, i8* %32, align 1
  %3333 = lshr i32 %3314, 31
  %3334 = xor i32 %3331, %3333
  %3335 = add nuw nsw i32 %3334, %3331
  %3336 = icmp eq i32 %3335, 2
  %3337 = zext i1 %3336 to i8
  store i8 %3337, i8* %38, align 1
  %3338 = add i64 %2457, 14
  store i64 %3338, i64* %3, align 8
  store i32 %3315, i32* %3313, align 4
  %3339 = load i64, i64* %3, align 8
  %3340 = add i64 %3339, -502
  store i64 %3340, i64* %3, align 8
  br label %block_.L_41abfc

block_.L_41adf7:                                  ; preds = %block_.L_41abfc
  %3341 = add i64 %2411, 222
  br label %block_.L_41aed5

block_.L_41adfc:                                  ; preds = %block_41abcc, %block_.L_41abb0, %block_41abde
  %3342 = phi i64 [ %2364, %block_41abde ], [ %2348, %block_41abcc ], [ %2309, %block_.L_41abb0 ]
  %3343 = add i64 %2239, -1204
  %3344 = add i64 %3342, 6
  store i64 %3344, i64* %3, align 8
  %3345 = inttoptr i64 %3343 to i32*
  %3346 = load i32, i32* %3345, align 4
  %3347 = zext i32 %3346 to i64
  store i64 %3347, i64* %RAX.i1112, align 8
  %3348 = add i64 %2239, -24
  %3349 = add i64 %3342, 9
  store i64 %3349, i64* %3, align 8
  %3350 = inttoptr i64 %3348 to i32*
  store i32 %3346, i32* %3350, align 4
  %SI.i60 = bitcast %union.anon* %45 to i16*
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_41ae05

block_.L_41ae05:                                  ; preds = %block_.L_41aebd, %block_.L_41adfc
  %3351 = phi i64 [ %3685, %block_.L_41aebd ], [ %.pre114, %block_.L_41adfc ]
  %3352 = load i64, i64* %RBP.i, align 8
  %3353 = add i64 %3352, -24
  %3354 = add i64 %3351, 3
  store i64 %3354, i64* %3, align 8
  %3355 = inttoptr i64 %3353 to i32*
  %3356 = load i32, i32* %3355, align 4
  %3357 = zext i32 %3356 to i64
  store i64 %3357, i64* %RAX.i1112, align 8
  %3358 = add i64 %3352, -1208
  %3359 = add i64 %3351, 9
  store i64 %3359, i64* %3, align 8
  %3360 = inttoptr i64 %3358 to i32*
  %3361 = load i32, i32* %3360, align 4
  %3362 = sub i32 %3356, %3361
  %3363 = icmp ult i32 %3356, %3361
  %3364 = zext i1 %3363 to i8
  store i8 %3364, i8* %14, align 1
  %3365 = and i32 %3362, 255
  %3366 = tail call i32 @llvm.ctpop.i32(i32 %3365)
  %3367 = trunc i32 %3366 to i8
  %3368 = and i8 %3367, 1
  %3369 = xor i8 %3368, 1
  store i8 %3369, i8* %21, align 1
  %3370 = xor i32 %3361, %3356
  %3371 = xor i32 %3370, %3362
  %3372 = lshr i32 %3371, 4
  %3373 = trunc i32 %3372 to i8
  %3374 = and i8 %3373, 1
  store i8 %3374, i8* %26, align 1
  %3375 = icmp eq i32 %3362, 0
  %3376 = zext i1 %3375 to i8
  store i8 %3376, i8* %29, align 1
  %3377 = lshr i32 %3362, 31
  %3378 = trunc i32 %3377 to i8
  store i8 %3378, i8* %32, align 1
  %3379 = lshr i32 %3356, 31
  %3380 = lshr i32 %3361, 31
  %3381 = xor i32 %3380, %3379
  %3382 = xor i32 %3377, %3379
  %3383 = add nuw nsw i32 %3382, %3381
  %3384 = icmp eq i32 %3383, 2
  %3385 = zext i1 %3384 to i8
  store i8 %3385, i8* %38, align 1
  %3386 = icmp ne i8 %3378, 0
  %3387 = xor i1 %3386, %3384
  %.v137 = select i1 %3387, i64 15, i64 203
  %3388 = add i64 %3351, %.v137
  store i64 %3388, i64* %3, align 8
  br i1 %3387, label %block_41ae14, label %block_.L_41aed0

block_41ae14:                                     ; preds = %block_.L_41ae05
  %3389 = add i64 %3352, -1220
  %3390 = add i64 %3388, 6
  store i64 %3390, i64* %3, align 8
  %3391 = inttoptr i64 %3389 to i32*
  %3392 = load i32, i32* %3391, align 4
  %3393 = zext i32 %3392 to i64
  store i64 %3393, i64* %RAX.i1112, align 8
  %3394 = add i64 %3352, -28
  %3395 = add i64 %3388, 9
  store i64 %3395, i64* %3, align 8
  %3396 = inttoptr i64 %3394 to i32*
  store i32 %3392, i32* %3396, align 4
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_41ae1d

block_.L_41ae1d:                                  ; preds = %block_41ae2c, %block_41ae14
  %3397 = phi i64 [ %3655, %block_41ae2c ], [ %.pre115, %block_41ae14 ]
  %3398 = load i64, i64* %RBP.i, align 8
  %3399 = add i64 %3398, -28
  %3400 = add i64 %3397, 3
  store i64 %3400, i64* %3, align 8
  %3401 = inttoptr i64 %3399 to i32*
  %3402 = load i32, i32* %3401, align 4
  %3403 = zext i32 %3402 to i64
  store i64 %3403, i64* %RAX.i1112, align 8
  %3404 = add i64 %3398, -1224
  %3405 = add i64 %3397, 9
  store i64 %3405, i64* %3, align 8
  %3406 = inttoptr i64 %3404 to i32*
  %3407 = load i32, i32* %3406, align 4
  %3408 = sub i32 %3402, %3407
  %3409 = icmp ult i32 %3402, %3407
  %3410 = zext i1 %3409 to i8
  store i8 %3410, i8* %14, align 1
  %3411 = and i32 %3408, 255
  %3412 = tail call i32 @llvm.ctpop.i32(i32 %3411)
  %3413 = trunc i32 %3412 to i8
  %3414 = and i8 %3413, 1
  %3415 = xor i8 %3414, 1
  store i8 %3415, i8* %21, align 1
  %3416 = xor i32 %3407, %3402
  %3417 = xor i32 %3416, %3408
  %3418 = lshr i32 %3417, 4
  %3419 = trunc i32 %3418 to i8
  %3420 = and i8 %3419, 1
  store i8 %3420, i8* %26, align 1
  %3421 = icmp eq i32 %3408, 0
  %3422 = zext i1 %3421 to i8
  store i8 %3422, i8* %29, align 1
  %3423 = lshr i32 %3408, 31
  %3424 = trunc i32 %3423 to i8
  store i8 %3424, i8* %32, align 1
  %3425 = lshr i32 %3402, 31
  %3426 = lshr i32 %3407, 31
  %3427 = xor i32 %3426, %3425
  %3428 = xor i32 %3423, %3425
  %3429 = add nuw nsw i32 %3428, %3427
  %3430 = icmp eq i32 %3429, 2
  %3431 = zext i1 %3430 to i8
  store i8 %3431, i8* %38, align 1
  %3432 = icmp ne i8 %3424, 0
  %3433 = xor i1 %3432, %3430
  %.v122 = select i1 %3433, i64 15, i64 160
  %3434 = add i64 %3397, %.v122
  store i64 %3434, i64* %3, align 8
  br i1 %3433, label %block_41ae2c, label %block_.L_41aebd

block_41ae2c:                                     ; preds = %block_.L_41ae1d
  %3435 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3435, i64* %RAX.i1112, align 8
  %3436 = add i64 %3435, 6424
  %3437 = add i64 %3434, 15
  store i64 %3437, i64* %3, align 8
  %3438 = inttoptr i64 %3436 to i64*
  %3439 = load i64, i64* %3438, align 8
  store i64 %3439, i64* %RAX.i1112, align 8
  %3440 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3440, i64* %RCX.i1144, align 8
  %3441 = add i64 %3440, 156
  %3442 = add i64 %3434, 29
  store i64 %3442, i64* %3, align 8
  %3443 = inttoptr i64 %3441 to i32*
  %3444 = load i32, i32* %3443, align 4
  %3445 = zext i32 %3444 to i64
  store i64 %3445, i64* %RDX.i1107.pre-phi, align 8
  %3446 = add i64 %3434, 32
  store i64 %3446, i64* %3, align 8
  %3447 = load i32, i32* %3401, align 4
  %3448 = add i32 %3447, %3444
  %3449 = zext i32 %3448 to i64
  store i64 %3449, i64* %RDX.i1107.pre-phi, align 8
  %3450 = icmp ult i32 %3448, %3444
  %3451 = icmp ult i32 %3448, %3447
  %3452 = or i1 %3450, %3451
  %3453 = zext i1 %3452 to i8
  store i8 %3453, i8* %14, align 1
  %3454 = and i32 %3448, 255
  %3455 = tail call i32 @llvm.ctpop.i32(i32 %3454)
  %3456 = trunc i32 %3455 to i8
  %3457 = and i8 %3456, 1
  %3458 = xor i8 %3457, 1
  store i8 %3458, i8* %21, align 1
  %3459 = xor i32 %3447, %3444
  %3460 = xor i32 %3459, %3448
  %3461 = lshr i32 %3460, 4
  %3462 = trunc i32 %3461 to i8
  %3463 = and i8 %3462, 1
  store i8 %3463, i8* %26, align 1
  %3464 = icmp eq i32 %3448, 0
  %3465 = zext i1 %3464 to i8
  store i8 %3465, i8* %29, align 1
  %3466 = lshr i32 %3448, 31
  %3467 = trunc i32 %3466 to i8
  store i8 %3467, i8* %32, align 1
  %3468 = lshr i32 %3444, 31
  %3469 = lshr i32 %3447, 31
  %3470 = xor i32 %3466, %3468
  %3471 = xor i32 %3466, %3469
  %3472 = add nuw nsw i32 %3470, %3471
  %3473 = icmp eq i32 %3472, 2
  %3474 = zext i1 %3473 to i8
  store i8 %3474, i8* %38, align 1
  %3475 = sext i32 %3448 to i64
  store i64 %3475, i64* %RCX.i1144, align 8
  %3476 = shl nsw i64 %3475, 3
  %3477 = add i64 %3439, %3476
  %3478 = add i64 %3434, 39
  store i64 %3478, i64* %3, align 8
  %3479 = inttoptr i64 %3477 to i64*
  %3480 = load i64, i64* %3479, align 8
  store i64 %3480, i64* %RAX.i1112, align 8
  store i64 %3440, i64* %RCX.i1144, align 8
  %3481 = add i64 %3440, 152
  %3482 = add i64 %3434, 53
  store i64 %3482, i64* %3, align 8
  %3483 = inttoptr i64 %3481 to i32*
  %3484 = load i32, i32* %3483, align 4
  %3485 = zext i32 %3484 to i64
  store i64 %3485, i64* %RDX.i1107.pre-phi, align 8
  %3486 = add i64 %3398, -24
  %3487 = add i64 %3434, 56
  store i64 %3487, i64* %3, align 8
  %3488 = inttoptr i64 %3486 to i32*
  %3489 = load i32, i32* %3488, align 4
  %3490 = add i32 %3489, %3484
  %3491 = zext i32 %3490 to i64
  store i64 %3491, i64* %RDX.i1107.pre-phi, align 8
  %3492 = icmp ult i32 %3490, %3484
  %3493 = icmp ult i32 %3490, %3489
  %3494 = or i1 %3492, %3493
  %3495 = zext i1 %3494 to i8
  store i8 %3495, i8* %14, align 1
  %3496 = and i32 %3490, 255
  %3497 = tail call i32 @llvm.ctpop.i32(i32 %3496)
  %3498 = trunc i32 %3497 to i8
  %3499 = and i8 %3498, 1
  %3500 = xor i8 %3499, 1
  store i8 %3500, i8* %21, align 1
  %3501 = xor i32 %3489, %3484
  %3502 = xor i32 %3501, %3490
  %3503 = lshr i32 %3502, 4
  %3504 = trunc i32 %3503 to i8
  %3505 = and i8 %3504, 1
  store i8 %3505, i8* %26, align 1
  %3506 = icmp eq i32 %3490, 0
  %3507 = zext i1 %3506 to i8
  store i8 %3507, i8* %29, align 1
  %3508 = lshr i32 %3490, 31
  %3509 = trunc i32 %3508 to i8
  store i8 %3509, i8* %32, align 1
  %3510 = lshr i32 %3484, 31
  %3511 = lshr i32 %3489, 31
  %3512 = xor i32 %3508, %3510
  %3513 = xor i32 %3508, %3511
  %3514 = add nuw nsw i32 %3512, %3513
  %3515 = icmp eq i32 %3514, 2
  %3516 = zext i1 %3515 to i8
  store i8 %3516, i8* %38, align 1
  %3517 = sext i32 %3490 to i64
  store i64 %3517, i64* %RCX.i1144, align 8
  %3518 = shl nsw i64 %3517, 1
  %3519 = add i64 %3480, %3518
  %3520 = add i64 %3434, 63
  store i64 %3520, i64* %3, align 8
  %3521 = inttoptr i64 %3519 to i16*
  %3522 = load i16, i16* %3521, align 2
  store i16 %3522, i16* %SI.i60, align 2
  %3523 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*), align 8
  store i64 %3523, i64* %RAX.i1112, align 8
  %3524 = add i64 %3523, 8
  %3525 = add i64 %3434, 75
  store i64 %3525, i64* %3, align 8
  %3526 = inttoptr i64 %3524 to i64*
  %3527 = load i64, i64* %3526, align 8
  store i64 %3527, i64* %RAX.i1112, align 8
  %3528 = load i64, i64* %RBP.i, align 8
  %3529 = add i64 %3528, -4
  %3530 = add i64 %3434, 79
  store i64 %3530, i64* %3, align 8
  %3531 = inttoptr i64 %3529 to i32*
  %3532 = load i32, i32* %3531, align 4
  %3533 = sext i32 %3532 to i64
  store i64 %3533, i64* %RCX.i1144, align 8
  %3534 = shl nsw i64 %3533, 3
  %3535 = add i64 %3534, %3527
  %3536 = add i64 %3434, 83
  store i64 %3536, i64* %3, align 8
  %3537 = inttoptr i64 %3535 to i64*
  %3538 = load i64, i64* %3537, align 8
  store i64 %3538, i64* %RAX.i1112, align 8
  %3539 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3539, i64* %RCX.i1144, align 8
  %3540 = add i64 %3539, 156
  %3541 = add i64 %3434, 97
  store i64 %3541, i64* %3, align 8
  %3542 = inttoptr i64 %3540 to i32*
  %3543 = load i32, i32* %3542, align 4
  %3544 = zext i32 %3543 to i64
  store i64 %3544, i64* %RDX.i1107.pre-phi, align 8
  %3545 = add i64 %3528, -28
  %3546 = add i64 %3434, 100
  store i64 %3546, i64* %3, align 8
  %3547 = inttoptr i64 %3545 to i32*
  %3548 = load i32, i32* %3547, align 4
  %3549 = add i32 %3548, %3543
  %3550 = zext i32 %3549 to i64
  store i64 %3550, i64* %RDX.i1107.pre-phi, align 8
  %3551 = icmp ult i32 %3549, %3543
  %3552 = icmp ult i32 %3549, %3548
  %3553 = or i1 %3551, %3552
  %3554 = zext i1 %3553 to i8
  store i8 %3554, i8* %14, align 1
  %3555 = and i32 %3549, 255
  %3556 = tail call i32 @llvm.ctpop.i32(i32 %3555)
  %3557 = trunc i32 %3556 to i8
  %3558 = and i8 %3557, 1
  %3559 = xor i8 %3558, 1
  store i8 %3559, i8* %21, align 1
  %3560 = xor i32 %3548, %3543
  %3561 = xor i32 %3560, %3549
  %3562 = lshr i32 %3561, 4
  %3563 = trunc i32 %3562 to i8
  %3564 = and i8 %3563, 1
  store i8 %3564, i8* %26, align 1
  %3565 = icmp eq i32 %3549, 0
  %3566 = zext i1 %3565 to i8
  store i8 %3566, i8* %29, align 1
  %3567 = lshr i32 %3549, 31
  %3568 = trunc i32 %3567 to i8
  store i8 %3568, i8* %32, align 1
  %3569 = lshr i32 %3543, 31
  %3570 = lshr i32 %3548, 31
  %3571 = xor i32 %3567, %3569
  %3572 = xor i32 %3567, %3570
  %3573 = add nuw nsw i32 %3571, %3572
  %3574 = icmp eq i32 %3573, 2
  %3575 = zext i1 %3574 to i8
  store i8 %3575, i8* %38, align 1
  %3576 = sext i32 %3549 to i64
  store i64 %3576, i64* %RCX.i1144, align 8
  %3577 = shl nsw i64 %3576, 3
  %3578 = add i64 %3538, %3577
  %3579 = add i64 %3434, 107
  store i64 %3579, i64* %3, align 8
  %3580 = inttoptr i64 %3578 to i64*
  %3581 = load i64, i64* %3580, align 8
  store i64 %3581, i64* %RAX.i1112, align 8
  store i64 %3539, i64* %RCX.i1144, align 8
  %3582 = add i64 %3539, 152
  %3583 = add i64 %3434, 121
  store i64 %3583, i64* %3, align 8
  %3584 = inttoptr i64 %3582 to i32*
  %3585 = load i32, i32* %3584, align 4
  %3586 = zext i32 %3585 to i64
  store i64 %3586, i64* %RDX.i1107.pre-phi, align 8
  %3587 = add i64 %3528, -24
  %3588 = add i64 %3434, 124
  store i64 %3588, i64* %3, align 8
  %3589 = inttoptr i64 %3587 to i32*
  %3590 = load i32, i32* %3589, align 4
  %3591 = add i32 %3590, %3585
  %3592 = zext i32 %3591 to i64
  store i64 %3592, i64* %RDX.i1107.pre-phi, align 8
  %3593 = icmp ult i32 %3591, %3585
  %3594 = icmp ult i32 %3591, %3590
  %3595 = or i1 %3593, %3594
  %3596 = zext i1 %3595 to i8
  store i8 %3596, i8* %14, align 1
  %3597 = and i32 %3591, 255
  %3598 = tail call i32 @llvm.ctpop.i32(i32 %3597)
  %3599 = trunc i32 %3598 to i8
  %3600 = and i8 %3599, 1
  %3601 = xor i8 %3600, 1
  store i8 %3601, i8* %21, align 1
  %3602 = xor i32 %3590, %3585
  %3603 = xor i32 %3602, %3591
  %3604 = lshr i32 %3603, 4
  %3605 = trunc i32 %3604 to i8
  %3606 = and i8 %3605, 1
  store i8 %3606, i8* %26, align 1
  %3607 = icmp eq i32 %3591, 0
  %3608 = zext i1 %3607 to i8
  store i8 %3608, i8* %29, align 1
  %3609 = lshr i32 %3591, 31
  %3610 = trunc i32 %3609 to i8
  store i8 %3610, i8* %32, align 1
  %3611 = lshr i32 %3585, 31
  %3612 = lshr i32 %3590, 31
  %3613 = xor i32 %3609, %3611
  %3614 = xor i32 %3609, %3612
  %3615 = add nuw nsw i32 %3613, %3614
  %3616 = icmp eq i32 %3615, 2
  %3617 = zext i1 %3616 to i8
  store i8 %3617, i8* %38, align 1
  %3618 = sext i32 %3591 to i64
  store i64 %3618, i64* %RCX.i1144, align 8
  %3619 = shl nsw i64 %3618, 1
  %3620 = add i64 %3581, %3619
  %3621 = load i16, i16* %SI.i60, align 2
  %3622 = add i64 %3434, 131
  store i64 %3622, i64* %3, align 8
  %3623 = inttoptr i64 %3620 to i16*
  store i16 %3621, i16* %3623, align 2
  %3624 = load i64, i64* %RBP.i, align 8
  %3625 = add i64 %3624, -28
  %3626 = load i64, i64* %3, align 8
  %3627 = add i64 %3626, 3
  store i64 %3627, i64* %3, align 8
  %3628 = inttoptr i64 %3625 to i32*
  %3629 = load i32, i32* %3628, align 4
  %3630 = add i32 %3629, 1
  %3631 = zext i32 %3630 to i64
  store i64 %3631, i64* %RAX.i1112, align 8
  %3632 = icmp eq i32 %3629, -1
  %3633 = icmp eq i32 %3630, 0
  %3634 = or i1 %3632, %3633
  %3635 = zext i1 %3634 to i8
  store i8 %3635, i8* %14, align 1
  %3636 = and i32 %3630, 255
  %3637 = tail call i32 @llvm.ctpop.i32(i32 %3636)
  %3638 = trunc i32 %3637 to i8
  %3639 = and i8 %3638, 1
  %3640 = xor i8 %3639, 1
  store i8 %3640, i8* %21, align 1
  %3641 = xor i32 %3630, %3629
  %3642 = lshr i32 %3641, 4
  %3643 = trunc i32 %3642 to i8
  %3644 = and i8 %3643, 1
  store i8 %3644, i8* %26, align 1
  %3645 = zext i1 %3633 to i8
  store i8 %3645, i8* %29, align 1
  %3646 = lshr i32 %3630, 31
  %3647 = trunc i32 %3646 to i8
  store i8 %3647, i8* %32, align 1
  %3648 = lshr i32 %3629, 31
  %3649 = xor i32 %3646, %3648
  %3650 = add nuw nsw i32 %3649, %3646
  %3651 = icmp eq i32 %3650, 2
  %3652 = zext i1 %3651 to i8
  store i8 %3652, i8* %38, align 1
  %3653 = add i64 %3626, 9
  store i64 %3653, i64* %3, align 8
  store i32 %3630, i32* %3628, align 4
  %3654 = load i64, i64* %3, align 8
  %3655 = add i64 %3654, -155
  store i64 %3655, i64* %3, align 8
  br label %block_.L_41ae1d

block_.L_41aebd:                                  ; preds = %block_.L_41ae1d
  %3656 = add i64 %3398, -24
  %3657 = add i64 %3434, 8
  store i64 %3657, i64* %3, align 8
  %3658 = inttoptr i64 %3656 to i32*
  %3659 = load i32, i32* %3658, align 4
  %3660 = add i32 %3659, 1
  %3661 = zext i32 %3660 to i64
  store i64 %3661, i64* %RAX.i1112, align 8
  %3662 = icmp eq i32 %3659, -1
  %3663 = icmp eq i32 %3660, 0
  %3664 = or i1 %3662, %3663
  %3665 = zext i1 %3664 to i8
  store i8 %3665, i8* %14, align 1
  %3666 = and i32 %3660, 255
  %3667 = tail call i32 @llvm.ctpop.i32(i32 %3666)
  %3668 = trunc i32 %3667 to i8
  %3669 = and i8 %3668, 1
  %3670 = xor i8 %3669, 1
  store i8 %3670, i8* %21, align 1
  %3671 = xor i32 %3660, %3659
  %3672 = lshr i32 %3671, 4
  %3673 = trunc i32 %3672 to i8
  %3674 = and i8 %3673, 1
  store i8 %3674, i8* %26, align 1
  %3675 = zext i1 %3663 to i8
  store i8 %3675, i8* %29, align 1
  %3676 = lshr i32 %3660, 31
  %3677 = trunc i32 %3676 to i8
  store i8 %3677, i8* %32, align 1
  %3678 = lshr i32 %3659, 31
  %3679 = xor i32 %3676, %3678
  %3680 = add nuw nsw i32 %3679, %3676
  %3681 = icmp eq i32 %3680, 2
  %3682 = zext i1 %3681 to i8
  store i8 %3682, i8* %38, align 1
  %3683 = add i64 %3434, 14
  store i64 %3683, i64* %3, align 8
  store i32 %3660, i32* %3658, align 4
  %3684 = load i64, i64* %3, align 8
  %3685 = add i64 %3684, -198
  store i64 %3685, i64* %3, align 8
  br label %block_.L_41ae05

block_.L_41aed0:                                  ; preds = %block_.L_41ae05
  %3686 = add i64 %3388, 5
  store i64 %3686, i64* %3, align 8
  br label %block_.L_41aed5

block_.L_41aed5:                                  ; preds = %block_.L_41aed0, %block_.L_41adf7
  %storemerge46 = phi i64 [ %3341, %block_.L_41adf7 ], [ %3686, %block_.L_41aed0 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.19, %block_.L_41adf7 ], [ %307, %block_.L_41aed0 ]
  %3687 = add i64 %storemerge46, 5
  store i64 %3687, i64* %3, align 8
  br label %block_.L_41aeda

block_.L_41aeda:                                  ; preds = %block_.L_41aed5, %block_.L_41a836
  %storemerge = phi i64 [ %787, %block_.L_41a836 ], [ %3687, %block_.L_41aed5 ]
  %MEMORY.28 = phi %struct.Memory* [ %307, %block_.L_41a836 ], [ %MEMORY.27, %block_.L_41aed5 ]
  %3688 = load i64, i64* %6, align 8
  %3689 = add i64 %3688, 1248
  store i64 %3689, i64* %6, align 8
  %3690 = icmp ugt i64 %3688, -1249
  %3691 = zext i1 %3690 to i8
  store i8 %3691, i8* %14, align 1
  %3692 = trunc i64 %3689 to i32
  %3693 = and i32 %3692, 255
  %3694 = tail call i32 @llvm.ctpop.i32(i32 %3693)
  %3695 = trunc i32 %3694 to i8
  %3696 = and i8 %3695, 1
  %3697 = xor i8 %3696, 1
  store i8 %3697, i8* %21, align 1
  %3698 = xor i64 %3689, %3688
  %3699 = lshr i64 %3698, 4
  %3700 = trunc i64 %3699 to i8
  %3701 = and i8 %3700, 1
  store i8 %3701, i8* %26, align 1
  %3702 = icmp eq i64 %3689, 0
  %3703 = zext i1 %3702 to i8
  store i8 %3703, i8* %29, align 1
  %3704 = lshr i64 %3689, 63
  %3705 = trunc i64 %3704 to i8
  store i8 %3705, i8* %32, align 1
  %3706 = lshr i64 %3688, 63
  %3707 = xor i64 %3704, %3706
  %3708 = add nuw nsw i64 %3707, %3704
  %3709 = icmp eq i64 %3708, 2
  %3710 = zext i1 %3709 to i8
  store i8 %3710, i8* %38, align 1
  %3711 = add i64 %storemerge, 8
  store i64 %3711, i64* %3, align 8
  %3712 = add i64 %3688, 1256
  %3713 = inttoptr i64 %3689 to i64*
  %3714 = load i64, i64* %3713, align 8
  store i64 %3714, i64* %RBP.i, align 8
  store i64 %3712, i64* %6, align 8
  %3715 = add i64 %storemerge, 9
  store i64 %3715, i64* %3, align 8
  %3716 = inttoptr i64 %3712 to i64*
  %3717 = load i64, i64* %3716, align 8
  store i64 %3717, i64* %3, align 8
  %3718 = add i64 %3688, 1264
  store i64 %3718, i64* %6, align 8
  ret %struct.Memory* %MEMORY.28
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
define %struct.Memory* @routine_subq__0x4e0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1248
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1248
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
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___r9____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = bitcast i64* %R9 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x6cc020___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6cc020_type* @G_0x6cc020 to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
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
define %struct.Memory* @routine_movl__eax__MINUS0x4d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1236
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

define %struct.Memory* @routine_idivl_0x20__r9_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl_MINUS0x4d4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1236
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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
define %struct.Memory* @routine_shll__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 29
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 248
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 28
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x4b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1204
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4b4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1204
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
define %struct.Memory* @routine_addl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -9
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
define %struct.Memory* @routine_movl__edx__MINUS0x4b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1208
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RDX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x4bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1212
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4bc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1212
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
define %struct.Memory* @routine_addl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -3
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
define %struct.Memory* @routine_movl__edx__MINUS0x4c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1216
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 29
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 248
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 28
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1220
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1220
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
define %struct.Memory* @routine_addl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -9
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1224
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1228
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4cc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1228
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
define %struct.Memory* @routine_addl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -3
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
define %struct.Memory* @routine_movl__eax__MINUS0x4d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1232
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x18__r9_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
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
define %struct.Memory* @routine_jne_.L_41a83b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4b4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1204
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4b8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1208
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jge_.L_41a836(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4c8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1224
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jge_.L_41a823(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x9c__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 156
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
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x98__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 152
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
define %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movw___rax__rcx_2____si(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %SI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb918___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movw__si____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %SI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
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
define %struct.Memory* @routine_jmpq_.L_41a783(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a828(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a76b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41aeda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jne_.L_41a97c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_je_.L_41a87e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11b30__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72496
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
define %struct.Memory* @routine_jle_.L_41a97c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41a8ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41a8d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
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
define %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_41a89f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a8de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a887(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4d0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1232
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jge_.L_41a977(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4bc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1212
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4c0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1216
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jge_.L_41a964(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0xb0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -65
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_jmpq_.L_41a90d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a969(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a8f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ab9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jl_.L_41aa83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x7__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -7
  %10 = icmp ult i32 %8, 7
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
define %struct.Memory* @routine_jg_.L_41aa83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41aa7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41aa6b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x118f8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 71928
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movswl___rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RCX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__esi____rdx__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ESI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x2__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -65
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
define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ESI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a9b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41aa70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a999(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ab13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41ab0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41aafb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41aaa4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ab00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41aa8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41ab97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41ab84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb918___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ab34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ab89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ab1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_41abb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_41abf3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41adfc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41abf3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_41adfc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41adf7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41ade4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x90__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 144
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
define %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x94__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 148
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
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41aca9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq_0x710a50___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0x710a50_type* @G_0x710a50 to i64*), align 8
  %7 = sub i64 %3, %6
  %8 = icmp ult i64 %3, %6
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %6, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %6, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41aca9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 2
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
define %struct.Memory* @routine_movq__rax__MINUS0x4e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1248
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4e0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_0x20__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movq___rcx__rdx_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movq__rax___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R8, align 8
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
define %struct.Memory* @routine_movl___r8__rcx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %R8, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__r8_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rax____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Get_Reference_Block(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41add1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_41adbe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 30
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 29
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movzwl___rax__rdx_2____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_movw__cx___di(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %CX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %DI, align 2
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movw__di____rax__rdx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %DI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ad28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41adc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ad17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41add6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ac14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ade9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41abfc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41aed5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41aed0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41aebd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41ae1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41aec2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ae05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x4e0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1248
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1249
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
