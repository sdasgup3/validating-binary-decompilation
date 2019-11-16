; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x45863c_type = type <{ [8 x i8] }>
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
@G__0x45863c = global %G__0x45863c_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_42a6c0.trace_doctor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @fake_tracebacks(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -72
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 64
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
  %RAX.i1412 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RAX.i1412, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i1410 = bitcast %union.anon* %40 to i32*
  %41 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 607, i64* %41, align 8
  %RDI.i1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %42 = add i64 %7, -16
  %43 = load i64, i64* %RDI.i1407, align 8
  %44 = add i64 %10, 27
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %46 to i32*
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -12
  %49 = load i32, i32* %ESI.i, align 4
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 3
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %52, align 4
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1402 = bitcast %union.anon* %53 to i32*
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -16
  %56 = load i32, i32* %EDX.i1402, align 4
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 3
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %59, align 4
  %RCX.i1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -24
  %62 = load i64, i64* %RCX.i1399, align 8
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %65, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -32
  %68 = load i64, i64* %R8.i, align 8
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -12
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 4
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %73 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = shl nsw i64 %78, 3
  store i64 %79, i64* %RCX.i1399, align 8
  %.lobit = lshr i32 %77, 31
  %80 = trunc i32 %.lobit to i8
  store i8 %80, i8* %14, align 1
  %81 = trunc i64 %79 to i32
  %82 = and i32 %81, 248
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82)
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %87 = icmp eq i32 %77, 0
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %29, align 1
  %89 = lshr i64 %78, 60
  %90 = trunc i64 %89 to i8
  %91 = and i8 %90, 1
  store i8 %91, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %92 = load i64, i64* %RAX.i1412, align 8
  store i64 %92, i64* %RDI.i1407, align 8
  %RSI.i1387 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %93 = load i32, i32* %R9D.i1410, align 4
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %RSI.i1387, align 8
  %RDX.i1385 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  store i64 %79, i64* %RDX.i1385, align 8
  %95 = add i64 %74, 117382
  %96 = add i64 %74, 22
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, -8
  %99 = inttoptr i64 %98 to i64*
  store i64 %96, i64* %99, align 8
  store i64 %98, i64* %6, align 8
  store i64 %95, i64* %3, align 8
  %call2_4295eb = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %95, %struct.Memory* %2)
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -40
  %102 = load i64, i64* %RAX.i1412, align 8
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, 4
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %101 to i64*
  store i64 %102, i64* %105, align 8
  %106 = load i64, i64* %RBP.i, align 8
  %107 = add i64 %106, -44
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 7
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %107 to i32*
  store i32 0, i32* %110, align 4
  %EAX.i1372 = bitcast %union.anon* %39 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4295fb

block_.L_4295fb:                                  ; preds = %block_.L_429d54, %entry
  %111 = phi i64 [ %3109, %block_.L_429d54 ], [ %.pre, %entry ]
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -44
  %114 = add i64 %111, 3
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RAX.i1412, align 8
  %118 = add i64 %112, -12
  %119 = add i64 %111, 6
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = sub i32 %116, %121
  %123 = icmp ult i32 %116, %121
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %14, align 1
  %125 = and i32 %122, 255
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125)
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  store i8 %129, i8* %21, align 1
  %130 = xor i32 %121, %116
  %131 = xor i32 %130, %122
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %26, align 1
  %135 = icmp eq i32 %122, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %29, align 1
  %137 = lshr i32 %122, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %32, align 1
  %139 = lshr i32 %116, 31
  %140 = lshr i32 %121, 31
  %141 = xor i32 %140, %139
  %142 = xor i32 %137, %139
  %143 = add nuw nsw i32 %142, %141
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %38, align 1
  %146 = icmp ne i8 %138, 0
  %147 = xor i1 %146, %144
  %.v = select i1 %147, i64 12, i64 2023
  %148 = add i64 %111, %.v
  store i64 %148, i64* %3, align 8
  br i1 %147, label %block_429607, label %block_.L_429de2

block_429607:                                     ; preds = %block_.L_4295fb
  %149 = add i64 %112, -16
  %150 = add i64 %148, 3
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = add i32 %152, 6
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %RAX.i1412, align 8
  %155 = icmp ugt i32 %152, -7
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %14, align 1
  %157 = and i32 %153, 255
  %158 = tail call i32 @llvm.ctpop.i32(i32 %157)
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  %161 = xor i8 %160, 1
  store i8 %161, i8* %21, align 1
  %162 = xor i32 %153, %152
  %163 = lshr i32 %162, 4
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  store i8 %165, i8* %26, align 1
  %166 = icmp eq i32 %153, 0
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %29, align 1
  %168 = lshr i32 %153, 31
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %32, align 1
  %170 = lshr i32 %152, 31
  %171 = xor i32 %168, %170
  %172 = add nuw nsw i32 %171, %168
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %38, align 1
  %175 = add i64 %112, -40
  %176 = add i64 %148, 10
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %RCX.i1399, align 8
  %179 = add i64 %148, 14
  store i64 %179, i64* %3, align 8
  %180 = load i32, i32* %115, align 4
  %181 = sext i32 %180 to i64
  %182 = shl nsw i64 %181, 3
  store i64 %182, i64* %RDX.i1385, align 8
  %183 = add i64 %182, %178
  store i64 %183, i64* %RCX.i1399, align 8
  %184 = icmp ult i64 %183, %178
  %185 = icmp ult i64 %183, %182
  %186 = or i1 %184, %185
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %14, align 1
  %188 = trunc i64 %183 to i32
  %189 = and i32 %188, 255
  %190 = tail call i32 @llvm.ctpop.i32(i32 %189)
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  %193 = xor i8 %192, 1
  store i8 %193, i8* %21, align 1
  %194 = xor i64 %182, %178
  %195 = xor i64 %194, %183
  %196 = lshr i64 %195, 4
  %197 = trunc i64 %196 to i8
  %198 = and i8 %197, 1
  store i8 %198, i8* %26, align 1
  %199 = icmp eq i64 %183, 0
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %29, align 1
  %201 = lshr i64 %183, 63
  %202 = trunc i64 %201 to i8
  store i8 %202, i8* %32, align 1
  %203 = lshr i64 %178, 63
  %204 = lshr i64 %181, 60
  %205 = and i64 %204, 1
  %206 = xor i64 %201, %203
  %207 = xor i64 %201, %205
  %208 = add nuw nsw i64 %206, %207
  %209 = icmp eq i64 %208, 2
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %38, align 1
  store i64 %154, i64* %RDI.i1407, align 8
  store i64 %183, i64* %RSI.i1387, align 8
  %211 = add i64 %148, 147385
  %212 = add i64 %148, 31
  %213 = load i64, i64* %6, align 8
  %214 = add i64 %213, -8
  %215 = inttoptr i64 %214 to i64*
  store i64 %212, i64* %215, align 8
  store i64 %214, i64* %6, align 8
  store i64 %211, i64* %3, align 8
  %call2_429621 = tail call %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* nonnull %0, i64 %211, %struct.Memory* %call2_4295eb)
  %216 = load i64, i64* %RBP.i, align 8
  %217 = add i64 %216, -40
  %218 = load i64, i64* %3, align 8
  %219 = add i64 %218, 4
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %217 to i64*
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %RCX.i1399, align 8
  %222 = add i64 %216, -44
  %223 = add i64 %218, 8
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i32*
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  store i64 %226, i64* %RDX.i1385, align 8
  %227 = shl nsw i64 %226, 3
  %228 = add i64 %227, %221
  %229 = add i64 %218, 12
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i64*
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %RCX.i1399, align 8
  %232 = add i64 %231, 8
  %233 = add i64 %218, 16
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i64*
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %RCX.i1399, align 8
  %236 = add i64 %218, 19
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i8*
  store i8 4, i8* %237, align 1
  %238 = load i64, i64* %RBP.i, align 8
  %239 = add i64 %238, -40
  %240 = load i64, i64* %3, align 8
  %241 = add i64 %240, 4
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %239 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RCX.i1399, align 8
  %244 = add i64 %238, -44
  %245 = add i64 %240, 8
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  store i64 %248, i64* %RDX.i1385, align 8
  %249 = shl nsw i64 %248, 3
  %250 = add i64 %249, %243
  %251 = add i64 %240, 12
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %RCX.i1399, align 8
  %254 = add i64 %253, 16
  %255 = add i64 %240, 16
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i64*
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %RCX.i1399, align 8
  %258 = add i64 %240, 22
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %257 to i32*
  store i32 0, i32* %259, align 4
  %260 = load i64, i64* %RBP.i, align 8
  %261 = add i64 %260, -40
  %262 = load i64, i64* %3, align 8
  %263 = add i64 %262, 4
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %261 to i64*
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %RCX.i1399, align 8
  %266 = add i64 %260, -44
  %267 = add i64 %262, 8
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  store i64 %270, i64* %RDX.i1385, align 8
  %271 = shl nsw i64 %270, 3
  %272 = add i64 %271, %265
  %273 = add i64 %262, 12
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i64*
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %RCX.i1399, align 8
  %276 = add i64 %275, 24
  %277 = add i64 %262, 16
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to i64*
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %RCX.i1399, align 8
  %280 = add i64 %262, 22
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i32*
  store i32 0, i32* %281, align 4
  %282 = load i64, i64* %RBP.i, align 8
  %283 = add i64 %282, -40
  %284 = load i64, i64* %3, align 8
  %285 = add i64 %284, 4
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %283 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RCX.i1399, align 8
  %288 = add i64 %282, -44
  %289 = add i64 %284, 8
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  store i64 %292, i64* %RDX.i1385, align 8
  %293 = shl nsw i64 %292, 3
  %294 = add i64 %293, %287
  %295 = add i64 %284, 12
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i64*
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %RCX.i1399, align 8
  %298 = add i64 %297, 8
  %299 = add i64 %284, 16
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i64*
  %301 = load i64, i64* %300, align 8
  store i64 %301, i64* %RCX.i1399, align 8
  %302 = add i64 %301, 1
  %303 = add i64 %284, 20
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i8*
  store i8 5, i8* %304, align 1
  %305 = load i64, i64* %RBP.i, align 8
  %306 = add i64 %305, -40
  %307 = load i64, i64* %3, align 8
  %308 = add i64 %307, 4
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %306 to i64*
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %RCX.i1399, align 8
  %311 = add i64 %305, -44
  %312 = add i64 %307, 8
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = sext i32 %314 to i64
  store i64 %315, i64* %RDX.i1385, align 8
  %316 = shl nsw i64 %315, 3
  %317 = add i64 %316, %310
  %318 = add i64 %307, 12
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i64*
  %320 = load i64, i64* %319, align 8
  store i64 %320, i64* %RCX.i1399, align 8
  %321 = add i64 %320, 16
  %322 = add i64 %307, 16
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i64*
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %RCX.i1399, align 8
  %325 = add i64 %324, 4
  %326 = add i64 %307, 23
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i32*
  store i32 0, i32* %327, align 4
  %328 = load i64, i64* %RBP.i, align 8
  %329 = add i64 %328, -40
  %330 = load i64, i64* %3, align 8
  %331 = add i64 %330, 4
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %329 to i64*
  %333 = load i64, i64* %332, align 8
  store i64 %333, i64* %RCX.i1399, align 8
  %334 = add i64 %328, -44
  %335 = add i64 %330, 8
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %334 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = sext i32 %337 to i64
  store i64 %338, i64* %RDX.i1385, align 8
  %339 = shl nsw i64 %338, 3
  %340 = add i64 %339, %333
  %341 = add i64 %330, 12
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i64*
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %RCX.i1399, align 8
  %344 = add i64 %343, 24
  %345 = add i64 %330, 16
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i64*
  %347 = load i64, i64* %346, align 8
  store i64 %347, i64* %RCX.i1399, align 8
  %348 = add i64 %347, 4
  %349 = add i64 %330, 23
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i32*
  store i32 0, i32* %350, align 4
  %351 = load i64, i64* %RBP.i, align 8
  %352 = add i64 %351, -48
  %353 = load i64, i64* %3, align 8
  %354 = add i64 %353, 7
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %352 to i32*
  store i32 1, i32* %355, align 4
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -52
  %358 = load i64, i64* %3, align 8
  %359 = add i64 %358, 7
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %357 to i32*
  store i32 0, i32* %360, align 4
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -60
  %363 = load i64, i64* %3, align 8
  %364 = add i64 %363, 7
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %362 to i32*
  store i32 2, i32* %365, align 4
  %366 = load i64, i64* %RBP.i, align 8
  %367 = add i64 %366, -56
  %368 = load i64, i64* %3, align 8
  %369 = add i64 %368, 7
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %367 to i32*
  store i32 0, i32* %370, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_4296c3

block_.L_4296c3:                                  ; preds = %block_.L_429d41, %block_429607
  %371 = phi i64 [ %2917, %block_.L_429d41 ], [ %.pre47, %block_429607 ]
  %372 = load i64, i64* %RBP.i, align 8
  %373 = add i64 %372, -56
  %374 = add i64 %371, 3
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RAX.i1412, align 8
  %378 = add i64 %372, -16
  %379 = add i64 %371, 6
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = sub i32 %376, %381
  %383 = icmp ult i32 %376, %381
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %14, align 1
  %385 = and i32 %382, 255
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385)
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %21, align 1
  %390 = xor i32 %381, %376
  %391 = xor i32 %390, %382
  %392 = lshr i32 %391, 4
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  store i8 %394, i8* %26, align 1
  %395 = icmp eq i32 %382, 0
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %29, align 1
  %397 = lshr i32 %382, 31
  %398 = trunc i32 %397 to i8
  store i8 %398, i8* %32, align 1
  %399 = lshr i32 %376, 31
  %400 = lshr i32 %381, 31
  %401 = xor i32 %400, %399
  %402 = xor i32 %397, %399
  %403 = add nuw nsw i32 %402, %401
  %404 = icmp eq i32 %403, 2
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %38, align 1
  %406 = icmp ne i8 %398, 0
  %407 = xor i1 %406, %404
  %.v66 = select i1 %407, i64 12, i64 1681
  %408 = add i64 %371, %.v66
  store i64 %408, i64* %3, align 8
  br i1 %407, label %block_4296cf, label %block_.L_429d54

block_4296cf:                                     ; preds = %block_.L_4296c3
  %409 = add i64 %372, -40
  %410 = add i64 %408, 4
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to i64*
  %412 = load i64, i64* %411, align 8
  store i64 %412, i64* %RAX.i1412, align 8
  %413 = add i64 %372, -44
  %414 = add i64 %408, 8
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = sext i32 %416 to i64
  store i64 %417, i64* %RCX.i1399, align 8
  %418 = shl nsw i64 %417, 3
  %419 = add i64 %418, %412
  %420 = add i64 %408, 12
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i64*
  %422 = load i64, i64* %421, align 8
  store i64 %422, i64* %RAX.i1412, align 8
  %423 = add i64 %422, 8
  %424 = add i64 %408, 16
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i64*
  %426 = load i64, i64* %425, align 8
  store i64 %426, i64* %RAX.i1412, align 8
  %427 = add i64 %372, -60
  %428 = add i64 %408, 20
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = sext i32 %430 to i64
  store i64 %431, i64* %RCX.i1399, align 8
  %432 = add i64 %426, %431
  %433 = add i64 %408, 24
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i8*
  store i8 0, i8* %434, align 1
  %435 = load i64, i64* %RBP.i, align 8
  %436 = add i64 %435, -24
  %437 = load i64, i64* %3, align 8
  %438 = add i64 %437, 4
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %436 to i64*
  %440 = load i64, i64* %439, align 8
  store i64 %440, i64* %RAX.i1412, align 8
  %441 = add i64 %435, -56
  %442 = add i64 %437, 7
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = add i32 %444, 1
  %446 = zext i32 %445 to i64
  store i64 %446, i64* %RDX.i1385, align 8
  %447 = icmp eq i32 %444, -1
  %448 = icmp eq i32 %445, 0
  %449 = or i1 %447, %448
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %14, align 1
  %451 = and i32 %445, 255
  %452 = tail call i32 @llvm.ctpop.i32(i32 %451)
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = xor i8 %454, 1
  store i8 %455, i8* %21, align 1
  %456 = xor i32 %445, %444
  %457 = lshr i32 %456, 4
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  store i8 %459, i8* %26, align 1
  %460 = zext i1 %448 to i8
  store i8 %460, i8* %29, align 1
  %461 = lshr i32 %445, 31
  %462 = trunc i32 %461 to i8
  store i8 %462, i8* %32, align 1
  %463 = lshr i32 %444, 31
  %464 = xor i32 %461, %463
  %465 = add nuw nsw i32 %464, %461
  %466 = icmp eq i32 %465, 2
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %38, align 1
  %468 = sext i32 %445 to i64
  store i64 %468, i64* %RCX.i1399, align 8
  %469 = shl nsw i64 %468, 2
  %470 = add i64 %440, %469
  %471 = add i64 %437, 16
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = and i32 %473, 2
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RDX.i1385, align 8
  store i8 0, i8* %14, align 1
  %476 = tail call i32 @llvm.ctpop.i32(i32 %474)
  %477 = trunc i32 %476 to i8
  %478 = xor i8 %477, 1
  store i8 %478, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %479 = icmp eq i32 %474, 0
  %.lobit62 = lshr exact i32 %474, 1
  %480 = trunc i32 %.lobit62 to i8
  %481 = xor i8 %480, 1
  store i8 %481, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v67 = select i1 %479, i64 115, i64 28
  %482 = add i64 %437, %.v67
  store i64 %482, i64* %3, align 8
  br i1 %479, label %block_.L_42975a, label %block_429703

block_429703:                                     ; preds = %block_4296cf
  %483 = add i64 %435, -40
  %484 = add i64 %482, 4
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i64*
  %486 = load i64, i64* %485, align 8
  store i64 %486, i64* %RAX.i1412, align 8
  %487 = add i64 %435, -44
  %488 = add i64 %482, 8
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = sext i32 %490 to i64
  store i64 %491, i64* %RCX.i1399, align 8
  %492 = shl nsw i64 %491, 3
  %493 = add i64 %492, %486
  %494 = add i64 %482, 12
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i64*
  %496 = load i64, i64* %495, align 8
  store i64 %496, i64* %RAX.i1412, align 8
  %497 = add i64 %496, 8
  %498 = add i64 %482, 16
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i64*
  %500 = load i64, i64* %499, align 8
  store i64 %500, i64* %RAX.i1412, align 8
  %501 = add i64 %435, -60
  %502 = add i64 %482, 20
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = sext i32 %504 to i64
  store i64 %505, i64* %RCX.i1399, align 8
  %506 = add i64 %500, %505
  %507 = add i64 %482, 24
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %506 to i8*
  store i8 6, i8* %508, align 1
  %509 = load i64, i64* %RBP.i, align 8
  %510 = add i64 %509, -40
  %511 = load i64, i64* %3, align 8
  %512 = add i64 %511, 4
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %510 to i64*
  %514 = load i64, i64* %513, align 8
  store i64 %514, i64* %RAX.i1412, align 8
  %515 = add i64 %509, -44
  %516 = add i64 %511, 8
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i32*
  %518 = load i32, i32* %517, align 4
  %519 = sext i32 %518 to i64
  store i64 %519, i64* %RCX.i1399, align 8
  %520 = shl nsw i64 %519, 3
  %521 = add i64 %520, %514
  %522 = add i64 %511, 12
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i64*
  %524 = load i64, i64* %523, align 8
  store i64 %524, i64* %RAX.i1412, align 8
  %525 = add i64 %524, 16
  %526 = add i64 %511, 16
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i64*
  %528 = load i64, i64* %527, align 8
  store i64 %528, i64* %RAX.i1412, align 8
  %529 = add i64 %509, -60
  %530 = add i64 %511, 20
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to i32*
  %532 = load i32, i32* %531, align 4
  %533 = sext i32 %532 to i64
  store i64 %533, i64* %RCX.i1399, align 8
  %534 = shl nsw i64 %533, 2
  %535 = add i64 %534, %528
  %536 = add i64 %511, 27
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %535 to i32*
  store i32 0, i32* %537, align 4
  %538 = load i64, i64* %RBP.i, align 8
  %539 = add i64 %538, -40
  %540 = load i64, i64* %3, align 8
  %541 = add i64 %540, 4
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %539 to i64*
  %543 = load i64, i64* %542, align 8
  store i64 %543, i64* %RAX.i1412, align 8
  %544 = add i64 %538, -44
  %545 = add i64 %540, 8
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = sext i32 %547 to i64
  store i64 %548, i64* %RCX.i1399, align 8
  %549 = shl nsw i64 %548, 3
  %550 = add i64 %549, %543
  %551 = add i64 %540, 12
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i64*
  %553 = load i64, i64* %552, align 8
  store i64 %553, i64* %RAX.i1412, align 8
  %554 = add i64 %553, 24
  %555 = add i64 %540, 16
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i64*
  %557 = load i64, i64* %556, align 8
  store i64 %557, i64* %RAX.i1412, align 8
  %558 = add i64 %538, -60
  %559 = add i64 %540, 20
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = sext i32 %561 to i64
  store i64 %562, i64* %RCX.i1399, align 8
  %563 = shl nsw i64 %562, 2
  %564 = add i64 %563, %557
  %565 = add i64 %540, 27
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i32*
  store i32 0, i32* %566, align 4
  %567 = load i64, i64* %RBP.i, align 8
  %568 = add i64 %567, -60
  %569 = load i64, i64* %3, align 8
  %570 = add i64 %569, 3
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %568 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = add i32 %572, 1
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RDX.i1385, align 8
  %575 = icmp eq i32 %572, -1
  %576 = icmp eq i32 %573, 0
  %577 = or i1 %575, %576
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %14, align 1
  %579 = and i32 %573, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %21, align 1
  %584 = xor i32 %573, %572
  %585 = lshr i32 %584, 4
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %26, align 1
  %588 = zext i1 %576 to i8
  store i8 %588, i8* %29, align 1
  %589 = lshr i32 %573, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %32, align 1
  %591 = lshr i32 %572, 31
  %592 = xor i32 %589, %591
  %593 = add nuw nsw i32 %592, %589
  %594 = icmp eq i32 %593, 2
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %38, align 1
  %596 = add i64 %569, 9
  store i64 %596, i64* %3, align 8
  store i32 %573, i32* %571, align 4
  %.pre48 = load i64, i64* %RBP.i, align 8
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_42975a

block_.L_42975a:                                  ; preds = %block_429703, %block_4296cf
  %597 = phi i64 [ %.pre49, %block_429703 ], [ %482, %block_4296cf ]
  %598 = phi i64 [ %.pre48, %block_429703 ], [ %435, %block_4296cf ]
  %599 = add i64 %598, -24
  %600 = add i64 %597, 4
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to i64*
  %602 = load i64, i64* %601, align 8
  store i64 %602, i64* %RAX.i1412, align 8
  %603 = add i64 %598, -56
  %604 = add i64 %597, 7
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i32*
  %606 = load i32, i32* %605, align 4
  %607 = add i32 %606, 1
  %608 = zext i32 %607 to i64
  store i64 %608, i64* %RCX.i1399, align 8
  %609 = icmp eq i32 %606, -1
  %610 = icmp eq i32 %607, 0
  %611 = or i1 %609, %610
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %14, align 1
  %613 = and i32 %607, 255
  %614 = tail call i32 @llvm.ctpop.i32(i32 %613)
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %21, align 1
  %618 = xor i32 %607, %606
  %619 = lshr i32 %618, 4
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  store i8 %621, i8* %26, align 1
  %622 = zext i1 %610 to i8
  store i8 %622, i8* %29, align 1
  %623 = lshr i32 %607, 31
  %624 = trunc i32 %623 to i8
  store i8 %624, i8* %32, align 1
  %625 = lshr i32 %606, 31
  %626 = xor i32 %623, %625
  %627 = add nuw nsw i32 %626, %623
  %628 = icmp eq i32 %627, 2
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %38, align 1
  %630 = sext i32 %607 to i64
  store i64 %630, i64* %RDX.i1385, align 8
  %631 = shl nsw i64 %630, 2
  %632 = add i64 %602, %631
  %633 = add i64 %597, 16
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i32*
  %635 = load i32, i32* %634, align 4
  %636 = and i32 %635, 1
  %637 = zext i32 %636 to i64
  store i64 %637, i64* %RCX.i1399, align 8
  store i8 0, i8* %14, align 1
  %638 = tail call i32 @llvm.ctpop.i32(i32 %636)
  %639 = trunc i32 %638 to i8
  %640 = xor i8 %639, 1
  store i8 %640, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %641 = icmp eq i32 %636, 0
  %642 = trunc i32 %636 to i8
  %643 = xor i8 %642, 1
  store i8 %643, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v68 = select i1 %641, i64 281, i64 28
  %644 = add i64 %597, %.v68
  store i64 %644, i64* %3, align 8
  br i1 %641, label %block_.L_429873, label %block_429776

block_429776:                                     ; preds = %block_.L_42975a
  %645 = add i64 %598, -8
  %646 = add i64 %644, 4
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i64*
  %648 = load i64, i64* %647, align 8
  store i64 %648, i64* %RAX.i1412, align 8
  %649 = add i64 %598, -44
  %650 = add i64 %644, 8
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i32*
  %652 = load i32, i32* %651, align 4
  %653 = sext i32 %652 to i64
  store i64 %653, i64* %RCX.i1399, align 8
  %654 = shl nsw i64 %653, 3
  %655 = add i64 %654, %648
  %656 = add i64 %644, 12
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i64*
  %658 = load i64, i64* %657, align 8
  store i64 %658, i64* %RAX.i1412, align 8
  %659 = add i64 %644, 16
  store i64 %659, i64* %3, align 8
  %660 = load i32, i32* %605, align 4
  %661 = sext i32 %660 to i64
  store i64 %661, i64* %RCX.i1399, align 8
  %662 = add i64 %658, %661
  %663 = add i64 %644, 20
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i8*
  %665 = load i8, i8* %664, align 1
  %666 = sext i8 %665 to i64
  %667 = and i64 %666, 4294967295
  store i64 %667, i64* %RDX.i1385, align 8
  %668 = sext i8 %665 to i32
  %669 = add nsw i32 %668, -32
  %670 = icmp ult i8 %665, 32
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %14, align 1
  %672 = and i32 %669, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672)
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %21, align 1
  %677 = xor i32 %669, %668
  %678 = lshr i32 %677, 4
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  store i8 %680, i8* %26, align 1
  %681 = icmp eq i32 %669, 0
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %29, align 1
  %683 = lshr i32 %669, 31
  %684 = trunc i32 %683 to i8
  store i8 %684, i8* %32, align 1
  %685 = lshr i32 %668, 31
  %686 = xor i32 %683, %685
  %687 = add nuw nsw i32 %686, %685
  %688 = icmp eq i32 %687, 2
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %38, align 1
  %.v69 = select i1 %681, i64 253, i64 29
  %690 = add i64 %644, %.v69
  store i64 %690, i64* %3, align 8
  br i1 %681, label %block_.L_429873, label %block_429793

block_429793:                                     ; preds = %block_429776
  %691 = add i64 %690, 4
  store i64 %691, i64* %3, align 8
  %692 = load i64, i64* %647, align 8
  store i64 %692, i64* %RAX.i1412, align 8
  %693 = add i64 %690, 8
  store i64 %693, i64* %3, align 8
  %694 = load i32, i32* %651, align 4
  %695 = sext i32 %694 to i64
  store i64 %695, i64* %RCX.i1399, align 8
  %696 = shl nsw i64 %695, 3
  %697 = add i64 %696, %692
  %698 = add i64 %690, 12
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i64*
  %700 = load i64, i64* %699, align 8
  store i64 %700, i64* %RAX.i1412, align 8
  %701 = add i64 %690, 16
  store i64 %701, i64* %3, align 8
  %702 = load i32, i32* %605, align 4
  %703 = sext i32 %702 to i64
  store i64 %703, i64* %RCX.i1399, align 8
  %704 = add i64 %700, %703
  %705 = add i64 %690, 20
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to i8*
  %707 = load i8, i8* %706, align 1
  %708 = sext i8 %707 to i64
  %709 = and i64 %708, 4294967295
  store i64 %709, i64* %RDX.i1385, align 8
  %710 = sext i8 %707 to i32
  %711 = add nsw i32 %710, -46
  %712 = icmp ult i8 %707, 46
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %14, align 1
  %714 = and i32 %711, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714)
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %21, align 1
  %719 = xor i32 %711, %710
  %720 = lshr i32 %719, 4
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %26, align 1
  %723 = icmp eq i32 %711, 0
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %29, align 1
  %725 = lshr i32 %711, 31
  %726 = trunc i32 %725 to i8
  store i8 %726, i8* %32, align 1
  %727 = lshr i32 %710, 31
  %728 = xor i32 %725, %727
  %729 = add nuw nsw i32 %728, %727
  %730 = icmp eq i32 %729, 2
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %38, align 1
  %.v70 = select i1 %723, i64 224, i64 29
  %732 = add i64 %690, %.v70
  store i64 %732, i64* %3, align 8
  br i1 %723, label %block_.L_429873, label %block_4297b0

block_4297b0:                                     ; preds = %block_429793
  %733 = add i64 %732, 4
  store i64 %733, i64* %3, align 8
  %734 = load i64, i64* %647, align 8
  store i64 %734, i64* %RAX.i1412, align 8
  %735 = add i64 %732, 8
  store i64 %735, i64* %3, align 8
  %736 = load i32, i32* %651, align 4
  %737 = sext i32 %736 to i64
  store i64 %737, i64* %RCX.i1399, align 8
  %738 = shl nsw i64 %737, 3
  %739 = add i64 %738, %734
  %740 = add i64 %732, 12
  store i64 %740, i64* %3, align 8
  %741 = inttoptr i64 %739 to i64*
  %742 = load i64, i64* %741, align 8
  store i64 %742, i64* %RAX.i1412, align 8
  %743 = add i64 %732, 16
  store i64 %743, i64* %3, align 8
  %744 = load i32, i32* %605, align 4
  %745 = sext i32 %744 to i64
  store i64 %745, i64* %RCX.i1399, align 8
  %746 = add i64 %742, %745
  %747 = add i64 %732, 20
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i8*
  %749 = load i8, i8* %748, align 1
  %750 = sext i8 %749 to i64
  %751 = and i64 %750, 4294967295
  store i64 %751, i64* %RDX.i1385, align 8
  %752 = sext i8 %749 to i32
  %753 = add nsw i32 %752, -95
  %754 = icmp ult i8 %749, 95
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %14, align 1
  %756 = and i32 %753, 255
  %757 = tail call i32 @llvm.ctpop.i32(i32 %756)
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  store i8 %760, i8* %21, align 1
  %761 = xor i32 %752, 16
  %762 = xor i32 %761, %753
  %763 = lshr i32 %762, 4
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, 1
  store i8 %765, i8* %26, align 1
  %766 = icmp eq i32 %753, 0
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %29, align 1
  %768 = lshr i32 %753, 31
  %769 = trunc i32 %768 to i8
  store i8 %769, i8* %32, align 1
  %770 = lshr i32 %752, 31
  %771 = xor i32 %768, %770
  %772 = add nuw nsw i32 %771, %770
  %773 = icmp eq i32 %772, 2
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %38, align 1
  %.v71 = select i1 %766, i64 195, i64 29
  %775 = add i64 %732, %.v71
  store i64 %775, i64* %3, align 8
  br i1 %766, label %block_.L_429873, label %block_4297cd

block_4297cd:                                     ; preds = %block_4297b0
  %776 = add i64 %775, 4
  store i64 %776, i64* %3, align 8
  %777 = load i64, i64* %647, align 8
  store i64 %777, i64* %RAX.i1412, align 8
  %778 = add i64 %775, 8
  store i64 %778, i64* %3, align 8
  %779 = load i32, i32* %651, align 4
  %780 = sext i32 %779 to i64
  store i64 %780, i64* %RCX.i1399, align 8
  %781 = shl nsw i64 %780, 3
  %782 = add i64 %781, %777
  %783 = add i64 %775, 12
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i64*
  %785 = load i64, i64* %784, align 8
  store i64 %785, i64* %RAX.i1412, align 8
  %786 = add i64 %775, 16
  store i64 %786, i64* %3, align 8
  %787 = load i32, i32* %605, align 4
  %788 = sext i32 %787 to i64
  store i64 %788, i64* %RCX.i1399, align 8
  %789 = add i64 %785, %788
  %790 = add i64 %775, 20
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i8*
  %792 = load i8, i8* %791, align 1
  %793 = sext i8 %792 to i64
  %794 = and i64 %793, 4294967295
  store i64 %794, i64* %RDX.i1385, align 8
  %795 = sext i8 %792 to i32
  %796 = add nsw i32 %795, -45
  %797 = icmp ult i8 %792, 45
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %14, align 1
  %799 = and i32 %796, 255
  %800 = tail call i32 @llvm.ctpop.i32(i32 %799)
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = xor i8 %802, 1
  store i8 %803, i8* %21, align 1
  %804 = xor i32 %796, %795
  %805 = lshr i32 %804, 4
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  store i8 %807, i8* %26, align 1
  %808 = icmp eq i32 %796, 0
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %29, align 1
  %810 = lshr i32 %796, 31
  %811 = trunc i32 %810 to i8
  store i8 %811, i8* %32, align 1
  %812 = lshr i32 %795, 31
  %813 = xor i32 %810, %812
  %814 = add nuw nsw i32 %813, %812
  %815 = icmp eq i32 %814, 2
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %38, align 1
  %.v72 = select i1 %808, i64 166, i64 29
  %817 = add i64 %775, %.v72
  store i64 %817, i64* %3, align 8
  br i1 %808, label %block_.L_429873, label %block_4297ea

block_4297ea:                                     ; preds = %block_4297cd
  %818 = add i64 %817, 4
  store i64 %818, i64* %3, align 8
  %819 = load i64, i64* %647, align 8
  store i64 %819, i64* %RAX.i1412, align 8
  %820 = add i64 %817, 8
  store i64 %820, i64* %3, align 8
  %821 = load i32, i32* %651, align 4
  %822 = sext i32 %821 to i64
  store i64 %822, i64* %RCX.i1399, align 8
  %823 = shl nsw i64 %822, 3
  %824 = add i64 %823, %819
  %825 = add i64 %817, 12
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i64*
  %827 = load i64, i64* %826, align 8
  store i64 %827, i64* %RAX.i1412, align 8
  %828 = add i64 %817, 16
  store i64 %828, i64* %3, align 8
  %829 = load i32, i32* %605, align 4
  %830 = sext i32 %829 to i64
  store i64 %830, i64* %RCX.i1399, align 8
  %831 = add i64 %827, %830
  %832 = add i64 %817, 20
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i8*
  %834 = load i8, i8* %833, align 1
  %835 = sext i8 %834 to i64
  %836 = and i64 %835, 4294967295
  store i64 %836, i64* %RDX.i1385, align 8
  %837 = sext i8 %834 to i32
  %838 = add nsw i32 %837, -126
  %839 = icmp ult i8 %834, 126
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %14, align 1
  %841 = and i32 %838, 255
  %842 = tail call i32 @llvm.ctpop.i32(i32 %841)
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  %845 = xor i8 %844, 1
  store i8 %845, i8* %21, align 1
  %846 = xor i32 %837, 16
  %847 = xor i32 %846, %838
  %848 = lshr i32 %847, 4
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  store i8 %850, i8* %26, align 1
  %851 = icmp eq i32 %838, 0
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %29, align 1
  %853 = lshr i32 %838, 31
  %854 = trunc i32 %853 to i8
  store i8 %854, i8* %32, align 1
  %855 = lshr i32 %837, 31
  %856 = xor i32 %853, %855
  %857 = add nuw nsw i32 %856, %855
  %858 = icmp eq i32 %857, 2
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %38, align 1
  %.v73 = select i1 %851, i64 137, i64 29
  %860 = add i64 %817, %.v73
  store i64 %860, i64* %3, align 8
  br i1 %851, label %block_.L_429873, label %block_429807

block_429807:                                     ; preds = %block_4297ea
  %861 = add i64 %598, -52
  %862 = add i64 %860, 3
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = add i32 %864, 1
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RAX.i1412, align 8
  %867 = icmp eq i32 %864, -1
  %868 = icmp eq i32 %865, 0
  %869 = or i1 %867, %868
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %14, align 1
  %871 = and i32 %865, 255
  %872 = tail call i32 @llvm.ctpop.i32(i32 %871)
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  store i8 %875, i8* %21, align 1
  %876 = xor i32 %865, %864
  %877 = lshr i32 %876, 4
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  store i8 %879, i8* %26, align 1
  %880 = zext i1 %868 to i8
  store i8 %880, i8* %29, align 1
  %881 = lshr i32 %865, 31
  %882 = trunc i32 %881 to i8
  store i8 %882, i8* %32, align 1
  %883 = lshr i32 %864, 31
  %884 = xor i32 %881, %883
  %885 = add nuw nsw i32 %884, %881
  %886 = icmp eq i32 %885, 2
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %38, align 1
  %888 = add i64 %860, 9
  store i64 %888, i64* %3, align 8
  store i32 %865, i32* %863, align 4
  %889 = load i64, i64* %RBP.i, align 8
  %890 = add i64 %889, -40
  %891 = load i64, i64* %3, align 8
  %892 = add i64 %891, 4
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %890 to i64*
  %894 = load i64, i64* %893, align 8
  store i64 %894, i64* %RCX.i1399, align 8
  %895 = add i64 %889, -44
  %896 = add i64 %891, 8
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i32*
  %898 = load i32, i32* %897, align 4
  %899 = sext i32 %898 to i64
  store i64 %899, i64* %RDX.i1385, align 8
  %900 = shl nsw i64 %899, 3
  %901 = add i64 %900, %894
  %902 = add i64 %891, 12
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i64*
  %904 = load i64, i64* %903, align 8
  store i64 %904, i64* %RCX.i1399, align 8
  %905 = add i64 %904, 8
  %906 = add i64 %891, 16
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i64*
  %908 = load i64, i64* %907, align 8
  store i64 %908, i64* %RCX.i1399, align 8
  %909 = add i64 %889, -60
  %910 = add i64 %891, 20
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %909 to i32*
  %912 = load i32, i32* %911, align 4
  %913 = sext i32 %912 to i64
  store i64 %913, i64* %RDX.i1385, align 8
  %914 = add i64 %908, %913
  %915 = add i64 %891, 24
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i8*
  store i8 1, i8* %916, align 1
  %917 = load i64, i64* %RBP.i, align 8
  %918 = add i64 %917, -52
  %919 = load i64, i64* %3, align 8
  %920 = add i64 %919, 3
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %918 to i32*
  %922 = load i32, i32* %921, align 4
  %923 = zext i32 %922 to i64
  store i64 %923, i64* %RAX.i1412, align 8
  %924 = add i64 %917, -40
  %925 = add i64 %919, 7
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i64*
  %927 = load i64, i64* %926, align 8
  store i64 %927, i64* %RCX.i1399, align 8
  %928 = add i64 %917, -44
  %929 = add i64 %919, 11
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %928 to i32*
  %931 = load i32, i32* %930, align 4
  %932 = sext i32 %931 to i64
  store i64 %932, i64* %RDX.i1385, align 8
  %933 = shl nsw i64 %932, 3
  %934 = add i64 %933, %927
  %935 = add i64 %919, 15
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to i64*
  %937 = load i64, i64* %936, align 8
  store i64 %937, i64* %RCX.i1399, align 8
  %938 = add i64 %937, 16
  %939 = add i64 %919, 19
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i64*
  %941 = load i64, i64* %940, align 8
  store i64 %941, i64* %RCX.i1399, align 8
  %942 = add i64 %917, -60
  %943 = add i64 %919, 23
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i32*
  %945 = load i32, i32* %944, align 4
  %946 = sext i32 %945 to i64
  store i64 %946, i64* %RDX.i1385, align 8
  %947 = shl nsw i64 %946, 2
  %948 = add i64 %947, %941
  %949 = add i64 %919, 26
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %948 to i32*
  store i32 %922, i32* %950, align 4
  %951 = load i64, i64* %RBP.i, align 8
  %952 = add i64 %951, -48
  %953 = load i64, i64* %3, align 8
  %954 = add i64 %953, 3
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %952 to i32*
  %956 = load i32, i32* %955, align 4
  %957 = zext i32 %956 to i64
  store i64 %957, i64* %RAX.i1412, align 8
  %958 = add i64 %951, -40
  %959 = add i64 %953, 7
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i64*
  %961 = load i64, i64* %960, align 8
  store i64 %961, i64* %RCX.i1399, align 8
  %962 = add i64 %951, -44
  %963 = add i64 %953, 11
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = sext i32 %965 to i64
  store i64 %966, i64* %RDX.i1385, align 8
  %967 = shl nsw i64 %966, 3
  %968 = add i64 %967, %961
  %969 = add i64 %953, 15
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i64*
  %971 = load i64, i64* %970, align 8
  store i64 %971, i64* %RCX.i1399, align 8
  %972 = add i64 %971, 24
  %973 = add i64 %953, 19
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i64*
  %975 = load i64, i64* %974, align 8
  store i64 %975, i64* %RCX.i1399, align 8
  %976 = add i64 %951, -60
  %977 = add i64 %953, 23
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i32*
  %979 = load i32, i32* %978, align 4
  %980 = sext i32 %979 to i64
  store i64 %980, i64* %RDX.i1385, align 8
  %981 = shl nsw i64 %980, 2
  %982 = add i64 %981, %975
  %983 = add i64 %953, 26
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %982 to i32*
  store i32 %956, i32* %984, align 4
  %985 = load i64, i64* %RBP.i, align 8
  %986 = add i64 %985, -48
  %987 = load i64, i64* %3, align 8
  %988 = add i64 %987, 3
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %986 to i32*
  %990 = load i32, i32* %989, align 4
  %991 = add i32 %990, 1
  %992 = zext i32 %991 to i64
  store i64 %992, i64* %RAX.i1412, align 8
  %993 = icmp eq i32 %990, -1
  %994 = icmp eq i32 %991, 0
  %995 = or i1 %993, %994
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %14, align 1
  %997 = and i32 %991, 255
  %998 = tail call i32 @llvm.ctpop.i32(i32 %997)
  %999 = trunc i32 %998 to i8
  %1000 = and i8 %999, 1
  %1001 = xor i8 %1000, 1
  store i8 %1001, i8* %21, align 1
  %1002 = xor i32 %991, %990
  %1003 = lshr i32 %1002, 4
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  store i8 %1005, i8* %26, align 1
  %1006 = zext i1 %994 to i8
  store i8 %1006, i8* %29, align 1
  %1007 = lshr i32 %991, 31
  %1008 = trunc i32 %1007 to i8
  store i8 %1008, i8* %32, align 1
  %1009 = lshr i32 %990, 31
  %1010 = xor i32 %1007, %1009
  %1011 = add nuw nsw i32 %1010, %1007
  %1012 = icmp eq i32 %1011, 2
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %38, align 1
  %1014 = add i64 %987, 9
  store i64 %1014, i64* %3, align 8
  store i32 %991, i32* %989, align 4
  %1015 = load i64, i64* %RBP.i, align 8
  %1016 = add i64 %1015, -60
  %1017 = load i64, i64* %3, align 8
  %1018 = add i64 %1017, 3
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1016 to i32*
  %1020 = load i32, i32* %1019, align 4
  %1021 = add i32 %1020, 1
  %1022 = zext i32 %1021 to i64
  store i64 %1022, i64* %RAX.i1412, align 8
  %1023 = icmp eq i32 %1020, -1
  %1024 = icmp eq i32 %1021, 0
  %1025 = or i1 %1023, %1024
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %14, align 1
  %1027 = and i32 %1021, 255
  %1028 = tail call i32 @llvm.ctpop.i32(i32 %1027)
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = xor i8 %1030, 1
  store i8 %1031, i8* %21, align 1
  %1032 = xor i32 %1021, %1020
  %1033 = lshr i32 %1032, 4
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  store i8 %1035, i8* %26, align 1
  %1036 = zext i1 %1024 to i8
  store i8 %1036, i8* %29, align 1
  %1037 = lshr i32 %1021, 31
  %1038 = trunc i32 %1037 to i8
  store i8 %1038, i8* %32, align 1
  %1039 = lshr i32 %1020, 31
  %1040 = xor i32 %1037, %1039
  %1041 = add nuw nsw i32 %1040, %1037
  %1042 = icmp eq i32 %1041, 2
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %38, align 1
  %1044 = add i64 %1017, 9
  store i64 %1044, i64* %3, align 8
  store i32 %1021, i32* %1019, align 4
  %1045 = load i64, i64* %3, align 8
  %1046 = add i64 %1045, 976
  br label %block_.L_429c3e

block_.L_429873:                                  ; preds = %block_4297ea, %block_4297cd, %block_4297b0, %block_429793, %block_429776, %block_.L_42975a
  %1047 = phi i64 [ %860, %block_4297ea ], [ %817, %block_4297cd ], [ %775, %block_4297b0 ], [ %732, %block_429793 ], [ %690, %block_429776 ], [ %644, %block_.L_42975a ]
  %1048 = add i64 %1047, 4
  store i64 %1048, i64* %3, align 8
  %1049 = load i64, i64* %601, align 8
  store i64 %1049, i64* %RAX.i1412, align 8
  %1050 = add i64 %1047, 7
  store i64 %1050, i64* %3, align 8
  %1051 = load i32, i32* %605, align 4
  %1052 = add i32 %1051, 1
  %1053 = zext i32 %1052 to i64
  store i64 %1053, i64* %RCX.i1399, align 8
  %1054 = icmp eq i32 %1051, -1
  %1055 = icmp eq i32 %1052, 0
  %1056 = or i1 %1054, %1055
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %14, align 1
  %1058 = and i32 %1052, 255
  %1059 = tail call i32 @llvm.ctpop.i32(i32 %1058)
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  %1062 = xor i8 %1061, 1
  store i8 %1062, i8* %21, align 1
  %1063 = xor i32 %1052, %1051
  %1064 = lshr i32 %1063, 4
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  store i8 %1066, i8* %26, align 1
  %1067 = zext i1 %1055 to i8
  store i8 %1067, i8* %29, align 1
  %1068 = lshr i32 %1052, 31
  %1069 = trunc i32 %1068 to i8
  store i8 %1069, i8* %32, align 1
  %1070 = lshr i32 %1051, 31
  %1071 = xor i32 %1068, %1070
  %1072 = add nuw nsw i32 %1071, %1068
  %1073 = icmp eq i32 %1072, 2
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %38, align 1
  %1075 = sext i32 %1052 to i64
  store i64 %1075, i64* %RDX.i1385, align 8
  %1076 = shl nsw i64 %1075, 2
  %1077 = add i64 %1049, %1076
  %1078 = add i64 %1047, 16
  store i64 %1078, i64* %3, align 8
  %1079 = inttoptr i64 %1077 to i32*
  %1080 = load i32, i32* %1079, align 4
  %1081 = and i32 %1080, 1
  %1082 = zext i32 %1081 to i64
  store i64 %1082, i64* %RCX.i1399, align 8
  store i8 0, i8* %14, align 1
  %1083 = tail call i32 @llvm.ctpop.i32(i32 %1081)
  %1084 = trunc i32 %1083 to i8
  %1085 = xor i8 %1084, 1
  store i8 %1085, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1086 = icmp eq i32 %1081, 0
  %1087 = trunc i32 %1081 to i8
  %1088 = xor i8 %1087, 1
  store i8 %1088, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v76 = select i1 %1086, i64 166, i64 28
  %1089 = add i64 %1047, %.v76
  store i64 %1089, i64* %3, align 8
  br i1 %1086, label %block_.L_429919, label %block_42988f

block_42988f:                                     ; preds = %block_.L_429873
  %1090 = add i64 %598, -52
  %1091 = add i64 %1089, 3
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1090 to i32*
  %1093 = load i32, i32* %1092, align 4
  %1094 = add i32 %1093, 1
  %1095 = zext i32 %1094 to i64
  store i64 %1095, i64* %RAX.i1412, align 8
  %1096 = icmp eq i32 %1093, -1
  %1097 = icmp eq i32 %1094, 0
  %1098 = or i1 %1096, %1097
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %14, align 1
  %1100 = and i32 %1094, 255
  %1101 = tail call i32 @llvm.ctpop.i32(i32 %1100)
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  %1104 = xor i8 %1103, 1
  store i8 %1104, i8* %21, align 1
  %1105 = xor i32 %1094, %1093
  %1106 = lshr i32 %1105, 4
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  store i8 %1108, i8* %26, align 1
  %1109 = zext i1 %1097 to i8
  store i8 %1109, i8* %29, align 1
  %1110 = lshr i32 %1094, 31
  %1111 = trunc i32 %1110 to i8
  store i8 %1111, i8* %32, align 1
  %1112 = lshr i32 %1093, 31
  %1113 = xor i32 %1110, %1112
  %1114 = add nuw nsw i32 %1113, %1110
  %1115 = icmp eq i32 %1114, 2
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %38, align 1
  %1117 = add i64 %1089, 9
  store i64 %1117, i64* %3, align 8
  store i32 %1094, i32* %1092, align 4
  %1118 = load i64, i64* %RBP.i, align 8
  %1119 = add i64 %1118, -40
  %1120 = load i64, i64* %3, align 8
  %1121 = add i64 %1120, 4
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1119 to i64*
  %1123 = load i64, i64* %1122, align 8
  store i64 %1123, i64* %RCX.i1399, align 8
  %1124 = add i64 %1118, -44
  %1125 = add i64 %1120, 8
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to i32*
  %1127 = load i32, i32* %1126, align 4
  %1128 = sext i32 %1127 to i64
  store i64 %1128, i64* %RDX.i1385, align 8
  %1129 = shl nsw i64 %1128, 3
  %1130 = add i64 %1129, %1123
  %1131 = add i64 %1120, 12
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i64*
  %1133 = load i64, i64* %1132, align 8
  store i64 %1133, i64* %RCX.i1399, align 8
  %1134 = add i64 %1133, 8
  %1135 = add i64 %1120, 16
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i64*
  %1137 = load i64, i64* %1136, align 8
  store i64 %1137, i64* %RCX.i1399, align 8
  %1138 = add i64 %1118, -60
  %1139 = add i64 %1120, 19
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1138 to i32*
  %1141 = load i32, i32* %1140, align 4
  %1142 = add i32 %1141, -1
  %1143 = zext i32 %1142 to i64
  store i64 %1143, i64* %RAX.i1412, align 8
  %1144 = icmp eq i32 %1141, 0
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %14, align 1
  %1146 = and i32 %1142, 255
  %1147 = tail call i32 @llvm.ctpop.i32(i32 %1146)
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  %1150 = xor i8 %1149, 1
  store i8 %1150, i8* %21, align 1
  %1151 = xor i32 %1142, %1141
  %1152 = lshr i32 %1151, 4
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  store i8 %1154, i8* %26, align 1
  %1155 = icmp eq i32 %1142, 0
  %1156 = zext i1 %1155 to i8
  store i8 %1156, i8* %29, align 1
  %1157 = lshr i32 %1142, 31
  %1158 = trunc i32 %1157 to i8
  store i8 %1158, i8* %32, align 1
  %1159 = lshr i32 %1141, 31
  %1160 = xor i32 %1157, %1159
  %1161 = add nuw nsw i32 %1160, %1159
  %1162 = icmp eq i32 %1161, 2
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %38, align 1
  %1164 = sext i32 %1142 to i64
  store i64 %1164, i64* %RDX.i1385, align 8
  %1165 = add i64 %1137, %1164
  %1166 = add i64 %1120, 29
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i8*
  %1168 = load i8, i8* %1167, align 1
  %1169 = sext i8 %1168 to i64
  %1170 = and i64 %1169, 4294967295
  store i64 %1170, i64* %RAX.i1412, align 8
  %1171 = sext i8 %1168 to i32
  %1172 = add nsw i32 %1171, -6
  %1173 = icmp ult i8 %1168, 6
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %14, align 1
  %1175 = and i32 %1172, 255
  %1176 = tail call i32 @llvm.ctpop.i32(i32 %1175)
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  %1179 = xor i8 %1178, 1
  store i8 %1179, i8* %21, align 1
  %1180 = xor i32 %1172, %1171
  %1181 = lshr i32 %1180, 4
  %1182 = trunc i32 %1181 to i8
  %1183 = and i8 %1182, 1
  store i8 %1183, i8* %26, align 1
  %1184 = icmp eq i32 %1172, 0
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %29, align 1
  %1186 = lshr i32 %1172, 31
  %1187 = trunc i32 %1186 to i8
  store i8 %1187, i8* %32, align 1
  %1188 = lshr i32 %1171, 31
  %1189 = xor i32 %1186, %1188
  %1190 = add nuw nsw i32 %1189, %1188
  %1191 = icmp eq i32 %1190, 2
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %38, align 1
  %.v77 = select i1 %1184, i64 124, i64 38
  %1193 = add i64 %1120, %.v77
  store i64 %1193, i64* %3, align 8
  br i1 %1184, label %block_.L_429914, label %block_4298be

block_4298be:                                     ; preds = %block_42988f
  %1194 = load i64, i64* %RBP.i, align 8
  %1195 = add i64 %1194, -40
  %1196 = add i64 %1193, 4
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i64*
  %1198 = load i64, i64* %1197, align 8
  store i64 %1198, i64* %RAX.i1412, align 8
  %1199 = add i64 %1194, -44
  %1200 = add i64 %1193, 8
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to i32*
  %1202 = load i32, i32* %1201, align 4
  %1203 = sext i32 %1202 to i64
  store i64 %1203, i64* %RCX.i1399, align 8
  %1204 = shl nsw i64 %1203, 3
  %1205 = add i64 %1204, %1198
  %1206 = add i64 %1193, 12
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i64*
  %1208 = load i64, i64* %1207, align 8
  store i64 %1208, i64* %RAX.i1412, align 8
  %1209 = add i64 %1208, 8
  %1210 = add i64 %1193, 16
  store i64 %1210, i64* %3, align 8
  %1211 = inttoptr i64 %1209 to i64*
  %1212 = load i64, i64* %1211, align 8
  store i64 %1212, i64* %RAX.i1412, align 8
  %1213 = add i64 %1194, -60
  %1214 = add i64 %1193, 20
  store i64 %1214, i64* %3, align 8
  %1215 = inttoptr i64 %1213 to i32*
  %1216 = load i32, i32* %1215, align 4
  %1217 = sext i32 %1216 to i64
  store i64 %1217, i64* %RCX.i1399, align 8
  %1218 = add i64 %1212, %1217
  %1219 = add i64 %1193, 24
  store i64 %1219, i64* %3, align 8
  %1220 = inttoptr i64 %1218 to i8*
  store i8 2, i8* %1220, align 1
  %1221 = load i64, i64* %RBP.i, align 8
  %1222 = add i64 %1221, -52
  %1223 = load i64, i64* %3, align 8
  %1224 = add i64 %1223, 3
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1222 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = zext i32 %1226 to i64
  store i64 %1227, i64* %RDX.i1385, align 8
  %1228 = add i64 %1221, -40
  %1229 = add i64 %1223, 7
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1228 to i64*
  %1231 = load i64, i64* %1230, align 8
  store i64 %1231, i64* %RAX.i1412, align 8
  %1232 = add i64 %1221, -44
  %1233 = add i64 %1223, 11
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  %1235 = load i32, i32* %1234, align 4
  %1236 = sext i32 %1235 to i64
  store i64 %1236, i64* %RCX.i1399, align 8
  %1237 = shl nsw i64 %1236, 3
  %1238 = add i64 %1237, %1231
  %1239 = add i64 %1223, 15
  store i64 %1239, i64* %3, align 8
  %1240 = inttoptr i64 %1238 to i64*
  %1241 = load i64, i64* %1240, align 8
  store i64 %1241, i64* %RAX.i1412, align 8
  %1242 = add i64 %1241, 16
  %1243 = add i64 %1223, 19
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RAX.i1412, align 8
  %1246 = add i64 %1221, -60
  %1247 = add i64 %1223, 23
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = sext i32 %1249 to i64
  store i64 %1250, i64* %RCX.i1399, align 8
  %1251 = shl nsw i64 %1250, 2
  %1252 = add i64 %1251, %1245
  %1253 = add i64 %1223, 26
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1252 to i32*
  store i32 %1226, i32* %1254, align 4
  %1255 = load i64, i64* %RBP.i, align 8
  %1256 = add i64 %1255, -40
  %1257 = load i64, i64* %3, align 8
  %1258 = add i64 %1257, 4
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1256 to i64*
  %1260 = load i64, i64* %1259, align 8
  store i64 %1260, i64* %RAX.i1412, align 8
  %1261 = add i64 %1255, -44
  %1262 = add i64 %1257, 8
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1261 to i32*
  %1264 = load i32, i32* %1263, align 4
  %1265 = sext i32 %1264 to i64
  store i64 %1265, i64* %RCX.i1399, align 8
  %1266 = shl nsw i64 %1265, 3
  %1267 = add i64 %1266, %1260
  %1268 = add i64 %1257, 12
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i64*
  %1270 = load i64, i64* %1269, align 8
  store i64 %1270, i64* %RAX.i1412, align 8
  %1271 = add i64 %1270, 24
  %1272 = add i64 %1257, 16
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i64*
  %1274 = load i64, i64* %1273, align 8
  store i64 %1274, i64* %RAX.i1412, align 8
  %1275 = add i64 %1255, -60
  %1276 = add i64 %1257, 20
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1275 to i32*
  %1278 = load i32, i32* %1277, align 4
  %1279 = sext i32 %1278 to i64
  store i64 %1279, i64* %RCX.i1399, align 8
  %1280 = shl nsw i64 %1279, 2
  %1281 = add i64 %1280, %1274
  %1282 = add i64 %1257, 27
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i32*
  store i32 0, i32* %1283, align 4
  %1284 = load i64, i64* %RBP.i, align 8
  %1285 = add i64 %1284, -60
  %1286 = load i64, i64* %3, align 8
  %1287 = add i64 %1286, 3
  store i64 %1287, i64* %3, align 8
  %1288 = inttoptr i64 %1285 to i32*
  %1289 = load i32, i32* %1288, align 4
  %1290 = add i32 %1289, 1
  %1291 = zext i32 %1290 to i64
  store i64 %1291, i64* %RDX.i1385, align 8
  %1292 = icmp eq i32 %1289, -1
  %1293 = icmp eq i32 %1290, 0
  %1294 = or i1 %1292, %1293
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %14, align 1
  %1296 = and i32 %1290, 255
  %1297 = tail call i32 @llvm.ctpop.i32(i32 %1296)
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  store i8 %1300, i8* %21, align 1
  %1301 = xor i32 %1290, %1289
  %1302 = lshr i32 %1301, 4
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  store i8 %1304, i8* %26, align 1
  %1305 = zext i1 %1293 to i8
  store i8 %1305, i8* %29, align 1
  %1306 = lshr i32 %1290, 31
  %1307 = trunc i32 %1306 to i8
  store i8 %1307, i8* %32, align 1
  %1308 = lshr i32 %1289, 31
  %1309 = xor i32 %1306, %1308
  %1310 = add nuw nsw i32 %1309, %1306
  %1311 = icmp eq i32 %1310, 2
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %38, align 1
  %1313 = add i64 %1286, 9
  store i64 %1313, i64* %3, align 8
  store i32 %1290, i32* %1288, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_429914

block_.L_429914:                                  ; preds = %block_4298be, %block_42988f
  %1314 = phi i64 [ %.pre50, %block_4298be ], [ %1193, %block_42988f ]
  %1315 = add i64 %1314, 805
  br label %block_.L_429c39

block_.L_429919:                                  ; preds = %block_.L_429873
  %1316 = add i64 %1089, 4
  store i64 %1316, i64* %3, align 8
  %1317 = load i64, i64* %601, align 8
  store i64 %1317, i64* %RAX.i1412, align 8
  %1318 = add i64 %1089, 7
  store i64 %1318, i64* %3, align 8
  %1319 = load i32, i32* %605, align 4
  %1320 = add i32 %1319, 1
  %1321 = zext i32 %1320 to i64
  store i64 %1321, i64* %RCX.i1399, align 8
  %1322 = icmp eq i32 %1319, -1
  %1323 = icmp eq i32 %1320, 0
  %1324 = or i1 %1322, %1323
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %14, align 1
  %1326 = and i32 %1320, 255
  %1327 = tail call i32 @llvm.ctpop.i32(i32 %1326)
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  %1330 = xor i8 %1329, 1
  store i8 %1330, i8* %21, align 1
  %1331 = xor i32 %1320, %1319
  %1332 = lshr i32 %1331, 4
  %1333 = trunc i32 %1332 to i8
  %1334 = and i8 %1333, 1
  store i8 %1334, i8* %26, align 1
  %1335 = zext i1 %1323 to i8
  store i8 %1335, i8* %29, align 1
  %1336 = lshr i32 %1320, 31
  %1337 = trunc i32 %1336 to i8
  store i8 %1337, i8* %32, align 1
  %1338 = lshr i32 %1319, 31
  %1339 = xor i32 %1336, %1338
  %1340 = add nuw nsw i32 %1339, %1336
  %1341 = icmp eq i32 %1340, 2
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %38, align 1
  %1343 = sext i32 %1320 to i64
  store i64 %1343, i64* %RDX.i1385, align 8
  %1344 = shl nsw i64 %1343, 2
  %1345 = add i64 %1317, %1344
  %1346 = add i64 %1089, 16
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = and i32 %1348, 16
  %1350 = zext i32 %1349 to i64
  store i64 %1350, i64* %RCX.i1399, align 8
  store i8 0, i8* %14, align 1
  %1351 = tail call i32 @llvm.ctpop.i32(i32 %1349)
  %1352 = trunc i32 %1351 to i8
  %1353 = xor i8 %1352, 1
  store i8 %1353, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1354 = icmp eq i32 %1349, 0
  %.lobit64 = lshr exact i32 %1349, 4
  %1355 = trunc i32 %.lobit64 to i8
  %1356 = xor i8 %1355, 1
  store i8 %1356, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v78 = select i1 %1354, i64 273, i64 28
  %1357 = add i64 %1089, %.v78
  store i64 %1357, i64* %3, align 8
  br i1 %1354, label %block_.L_429a2a, label %block_429935

block_429935:                                     ; preds = %block_.L_429919
  %1358 = add i64 %598, -8
  %1359 = add i64 %1357, 4
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i64*
  %1361 = load i64, i64* %1360, align 8
  store i64 %1361, i64* %RAX.i1412, align 8
  %1362 = add i64 %598, -44
  %1363 = add i64 %1357, 8
  store i64 %1363, i64* %3, align 8
  %1364 = inttoptr i64 %1362 to i32*
  %1365 = load i32, i32* %1364, align 4
  %1366 = sext i32 %1365 to i64
  store i64 %1366, i64* %RCX.i1399, align 8
  %1367 = shl nsw i64 %1366, 3
  %1368 = add i64 %1367, %1361
  %1369 = add i64 %1357, 12
  store i64 %1369, i64* %3, align 8
  %1370 = inttoptr i64 %1368 to i64*
  %1371 = load i64, i64* %1370, align 8
  store i64 %1371, i64* %RAX.i1412, align 8
  %1372 = add i64 %1357, 16
  store i64 %1372, i64* %3, align 8
  %1373 = load i32, i32* %605, align 4
  %1374 = sext i32 %1373 to i64
  store i64 %1374, i64* %RCX.i1399, align 8
  %1375 = add i64 %1371, %1374
  %1376 = add i64 %1357, 20
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i8*
  %1378 = load i8, i8* %1377, align 1
  %1379 = sext i8 %1378 to i64
  %1380 = and i64 %1379, 4294967295
  store i64 %1380, i64* %RDX.i1385, align 8
  %1381 = sext i8 %1378 to i32
  %1382 = add nsw i32 %1381, -32
  %1383 = icmp ult i8 %1378, 32
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %14, align 1
  %1385 = and i32 %1382, 255
  %1386 = tail call i32 @llvm.ctpop.i32(i32 %1385)
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  %1389 = xor i8 %1388, 1
  store i8 %1389, i8* %21, align 1
  %1390 = xor i32 %1382, %1381
  %1391 = lshr i32 %1390, 4
  %1392 = trunc i32 %1391 to i8
  %1393 = and i8 %1392, 1
  store i8 %1393, i8* %26, align 1
  %1394 = icmp eq i32 %1382, 0
  %1395 = zext i1 %1394 to i8
  store i8 %1395, i8* %29, align 1
  %1396 = lshr i32 %1382, 31
  %1397 = trunc i32 %1396 to i8
  store i8 %1397, i8* %32, align 1
  %1398 = lshr i32 %1381, 31
  %1399 = xor i32 %1396, %1398
  %1400 = add nuw nsw i32 %1399, %1398
  %1401 = icmp eq i32 %1400, 2
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %38, align 1
  %.v79 = select i1 %1394, i64 245, i64 29
  %1403 = add i64 %1357, %.v79
  store i64 %1403, i64* %3, align 8
  br i1 %1394, label %block_.L_429a2a, label %block_429952

block_429952:                                     ; preds = %block_429935
  %1404 = add i64 %1403, 4
  store i64 %1404, i64* %3, align 8
  %1405 = load i64, i64* %1360, align 8
  store i64 %1405, i64* %RAX.i1412, align 8
  %1406 = add i64 %1403, 8
  store i64 %1406, i64* %3, align 8
  %1407 = load i32, i32* %1364, align 4
  %1408 = sext i32 %1407 to i64
  store i64 %1408, i64* %RCX.i1399, align 8
  %1409 = shl nsw i64 %1408, 3
  %1410 = add i64 %1409, %1405
  %1411 = add i64 %1403, 12
  store i64 %1411, i64* %3, align 8
  %1412 = inttoptr i64 %1410 to i64*
  %1413 = load i64, i64* %1412, align 8
  store i64 %1413, i64* %RAX.i1412, align 8
  %1414 = add i64 %1403, 16
  store i64 %1414, i64* %3, align 8
  %1415 = load i32, i32* %605, align 4
  %1416 = sext i32 %1415 to i64
  store i64 %1416, i64* %RCX.i1399, align 8
  %1417 = add i64 %1413, %1416
  %1418 = add i64 %1403, 20
  store i64 %1418, i64* %3, align 8
  %1419 = inttoptr i64 %1417 to i8*
  %1420 = load i8, i8* %1419, align 1
  %1421 = sext i8 %1420 to i64
  %1422 = and i64 %1421, 4294967295
  store i64 %1422, i64* %RDX.i1385, align 8
  %1423 = sext i8 %1420 to i32
  %1424 = add nsw i32 %1423, -46
  %1425 = icmp ult i8 %1420, 46
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %14, align 1
  %1427 = and i32 %1424, 255
  %1428 = tail call i32 @llvm.ctpop.i32(i32 %1427)
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  %1431 = xor i8 %1430, 1
  store i8 %1431, i8* %21, align 1
  %1432 = xor i32 %1424, %1423
  %1433 = lshr i32 %1432, 4
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  store i8 %1435, i8* %26, align 1
  %1436 = icmp eq i32 %1424, 0
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %29, align 1
  %1438 = lshr i32 %1424, 31
  %1439 = trunc i32 %1438 to i8
  store i8 %1439, i8* %32, align 1
  %1440 = lshr i32 %1423, 31
  %1441 = xor i32 %1438, %1440
  %1442 = add nuw nsw i32 %1441, %1440
  %1443 = icmp eq i32 %1442, 2
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %38, align 1
  %.v80 = select i1 %1436, i64 216, i64 29
  %1445 = add i64 %1403, %.v80
  store i64 %1445, i64* %3, align 8
  br i1 %1436, label %block_.L_429a2a, label %block_42996f

block_42996f:                                     ; preds = %block_429952
  %1446 = add i64 %1445, 4
  store i64 %1446, i64* %3, align 8
  %1447 = load i64, i64* %1360, align 8
  store i64 %1447, i64* %RAX.i1412, align 8
  %1448 = add i64 %1445, 8
  store i64 %1448, i64* %3, align 8
  %1449 = load i32, i32* %1364, align 4
  %1450 = sext i32 %1449 to i64
  store i64 %1450, i64* %RCX.i1399, align 8
  %1451 = shl nsw i64 %1450, 3
  %1452 = add i64 %1451, %1447
  %1453 = add i64 %1445, 12
  store i64 %1453, i64* %3, align 8
  %1454 = inttoptr i64 %1452 to i64*
  %1455 = load i64, i64* %1454, align 8
  store i64 %1455, i64* %RAX.i1412, align 8
  %1456 = add i64 %1445, 16
  store i64 %1456, i64* %3, align 8
  %1457 = load i32, i32* %605, align 4
  %1458 = sext i32 %1457 to i64
  store i64 %1458, i64* %RCX.i1399, align 8
  %1459 = add i64 %1455, %1458
  %1460 = add i64 %1445, 20
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i8*
  %1462 = load i8, i8* %1461, align 1
  %1463 = sext i8 %1462 to i64
  %1464 = and i64 %1463, 4294967295
  store i64 %1464, i64* %RDX.i1385, align 8
  %1465 = sext i8 %1462 to i32
  %1466 = add nsw i32 %1465, -95
  %1467 = icmp ult i8 %1462, 95
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %14, align 1
  %1469 = and i32 %1466, 255
  %1470 = tail call i32 @llvm.ctpop.i32(i32 %1469)
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  %1473 = xor i8 %1472, 1
  store i8 %1473, i8* %21, align 1
  %1474 = xor i32 %1465, 16
  %1475 = xor i32 %1474, %1466
  %1476 = lshr i32 %1475, 4
  %1477 = trunc i32 %1476 to i8
  %1478 = and i8 %1477, 1
  store i8 %1478, i8* %26, align 1
  %1479 = icmp eq i32 %1466, 0
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %29, align 1
  %1481 = lshr i32 %1466, 31
  %1482 = trunc i32 %1481 to i8
  store i8 %1482, i8* %32, align 1
  %1483 = lshr i32 %1465, 31
  %1484 = xor i32 %1481, %1483
  %1485 = add nuw nsw i32 %1484, %1483
  %1486 = icmp eq i32 %1485, 2
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %38, align 1
  %.v81 = select i1 %1479, i64 187, i64 29
  %1488 = add i64 %1445, %.v81
  store i64 %1488, i64* %3, align 8
  br i1 %1479, label %block_.L_429a2a, label %block_42998c

block_42998c:                                     ; preds = %block_42996f
  %1489 = add i64 %1488, 4
  store i64 %1489, i64* %3, align 8
  %1490 = load i64, i64* %1360, align 8
  store i64 %1490, i64* %RAX.i1412, align 8
  %1491 = add i64 %1488, 8
  store i64 %1491, i64* %3, align 8
  %1492 = load i32, i32* %1364, align 4
  %1493 = sext i32 %1492 to i64
  store i64 %1493, i64* %RCX.i1399, align 8
  %1494 = shl nsw i64 %1493, 3
  %1495 = add i64 %1494, %1490
  %1496 = add i64 %1488, 12
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i64*
  %1498 = load i64, i64* %1497, align 8
  store i64 %1498, i64* %RAX.i1412, align 8
  %1499 = add i64 %1488, 16
  store i64 %1499, i64* %3, align 8
  %1500 = load i32, i32* %605, align 4
  %1501 = sext i32 %1500 to i64
  store i64 %1501, i64* %RCX.i1399, align 8
  %1502 = add i64 %1498, %1501
  %1503 = add i64 %1488, 20
  store i64 %1503, i64* %3, align 8
  %1504 = inttoptr i64 %1502 to i8*
  %1505 = load i8, i8* %1504, align 1
  %1506 = sext i8 %1505 to i64
  %1507 = and i64 %1506, 4294967295
  store i64 %1507, i64* %RDX.i1385, align 8
  %1508 = sext i8 %1505 to i32
  %1509 = add nsw i32 %1508, -45
  %1510 = icmp ult i8 %1505, 45
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %14, align 1
  %1512 = and i32 %1509, 255
  %1513 = tail call i32 @llvm.ctpop.i32(i32 %1512)
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = xor i8 %1515, 1
  store i8 %1516, i8* %21, align 1
  %1517 = xor i32 %1509, %1508
  %1518 = lshr i32 %1517, 4
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  store i8 %1520, i8* %26, align 1
  %1521 = icmp eq i32 %1509, 0
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %29, align 1
  %1523 = lshr i32 %1509, 31
  %1524 = trunc i32 %1523 to i8
  store i8 %1524, i8* %32, align 1
  %1525 = lshr i32 %1508, 31
  %1526 = xor i32 %1523, %1525
  %1527 = add nuw nsw i32 %1526, %1525
  %1528 = icmp eq i32 %1527, 2
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %38, align 1
  %.v82 = select i1 %1521, i64 158, i64 29
  %1530 = add i64 %1488, %.v82
  store i64 %1530, i64* %3, align 8
  br i1 %1521, label %block_.L_429a2a, label %block_4299a9

block_4299a9:                                     ; preds = %block_42998c
  %1531 = add i64 %1530, 4
  store i64 %1531, i64* %3, align 8
  %1532 = load i64, i64* %1360, align 8
  store i64 %1532, i64* %RAX.i1412, align 8
  %1533 = add i64 %1530, 8
  store i64 %1533, i64* %3, align 8
  %1534 = load i32, i32* %1364, align 4
  %1535 = sext i32 %1534 to i64
  store i64 %1535, i64* %RCX.i1399, align 8
  %1536 = shl nsw i64 %1535, 3
  %1537 = add i64 %1536, %1532
  %1538 = add i64 %1530, 12
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to i64*
  %1540 = load i64, i64* %1539, align 8
  store i64 %1540, i64* %RAX.i1412, align 8
  %1541 = add i64 %1530, 16
  store i64 %1541, i64* %3, align 8
  %1542 = load i32, i32* %605, align 4
  %1543 = sext i32 %1542 to i64
  store i64 %1543, i64* %RCX.i1399, align 8
  %1544 = add i64 %1540, %1543
  %1545 = add i64 %1530, 20
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to i8*
  %1547 = load i8, i8* %1546, align 1
  %1548 = sext i8 %1547 to i64
  %1549 = and i64 %1548, 4294967295
  store i64 %1549, i64* %RDX.i1385, align 8
  %1550 = sext i8 %1547 to i32
  %1551 = add nsw i32 %1550, -126
  %1552 = icmp ult i8 %1547, 126
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %14, align 1
  %1554 = and i32 %1551, 255
  %1555 = tail call i32 @llvm.ctpop.i32(i32 %1554)
  %1556 = trunc i32 %1555 to i8
  %1557 = and i8 %1556, 1
  %1558 = xor i8 %1557, 1
  store i8 %1558, i8* %21, align 1
  %1559 = xor i32 %1550, 16
  %1560 = xor i32 %1559, %1551
  %1561 = lshr i32 %1560, 4
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  store i8 %1563, i8* %26, align 1
  %1564 = icmp eq i32 %1551, 0
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %29, align 1
  %1566 = lshr i32 %1551, 31
  %1567 = trunc i32 %1566 to i8
  store i8 %1567, i8* %32, align 1
  %1568 = lshr i32 %1550, 31
  %1569 = xor i32 %1566, %1568
  %1570 = add nuw nsw i32 %1569, %1568
  %1571 = icmp eq i32 %1570, 2
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %38, align 1
  %.v83 = select i1 %1564, i64 129, i64 29
  %1573 = add i64 %1530, %.v83
  store i64 %1573, i64* %3, align 8
  br i1 %1564, label %block_.L_429a2a, label %block_4299c6

block_4299c6:                                     ; preds = %block_4299a9
  %1574 = add i64 %598, -40
  %1575 = add i64 %1573, 4
  store i64 %1575, i64* %3, align 8
  %1576 = inttoptr i64 %1574 to i64*
  %1577 = load i64, i64* %1576, align 8
  store i64 %1577, i64* %RAX.i1412, align 8
  %1578 = add i64 %1573, 8
  store i64 %1578, i64* %3, align 8
  %1579 = load i32, i32* %1364, align 4
  %1580 = sext i32 %1579 to i64
  store i64 %1580, i64* %RCX.i1399, align 8
  %1581 = shl nsw i64 %1580, 3
  %1582 = add i64 %1581, %1577
  %1583 = add i64 %1573, 12
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1582 to i64*
  %1585 = load i64, i64* %1584, align 8
  store i64 %1585, i64* %RAX.i1412, align 8
  %1586 = add i64 %1585, 8
  %1587 = add i64 %1573, 16
  store i64 %1587, i64* %3, align 8
  %1588 = inttoptr i64 %1586 to i64*
  %1589 = load i64, i64* %1588, align 8
  store i64 %1589, i64* %RAX.i1412, align 8
  %1590 = add i64 %598, -60
  %1591 = add i64 %1573, 20
  store i64 %1591, i64* %3, align 8
  %1592 = inttoptr i64 %1590 to i32*
  %1593 = load i32, i32* %1592, align 4
  %1594 = sext i32 %1593 to i64
  store i64 %1594, i64* %RCX.i1399, align 8
  %1595 = add i64 %1589, %1594
  %1596 = add i64 %1573, 24
  store i64 %1596, i64* %3, align 8
  %1597 = inttoptr i64 %1595 to i8*
  store i8 5, i8* %1597, align 1
  %1598 = load i64, i64* %RBP.i, align 8
  %1599 = add i64 %1598, -40
  %1600 = load i64, i64* %3, align 8
  %1601 = add i64 %1600, 4
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1599 to i64*
  %1603 = load i64, i64* %1602, align 8
  store i64 %1603, i64* %RAX.i1412, align 8
  %1604 = add i64 %1598, -44
  %1605 = add i64 %1600, 8
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i32*
  %1607 = load i32, i32* %1606, align 4
  %1608 = sext i32 %1607 to i64
  store i64 %1608, i64* %RCX.i1399, align 8
  %1609 = shl nsw i64 %1608, 3
  %1610 = add i64 %1609, %1603
  %1611 = add i64 %1600, 12
  store i64 %1611, i64* %3, align 8
  %1612 = inttoptr i64 %1610 to i64*
  %1613 = load i64, i64* %1612, align 8
  store i64 %1613, i64* %RAX.i1412, align 8
  %1614 = add i64 %1613, 16
  %1615 = add i64 %1600, 16
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i64*
  %1617 = load i64, i64* %1616, align 8
  store i64 %1617, i64* %RAX.i1412, align 8
  %1618 = add i64 %1598, -60
  %1619 = add i64 %1600, 20
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1618 to i32*
  %1621 = load i32, i32* %1620, align 4
  %1622 = sext i32 %1621 to i64
  store i64 %1622, i64* %RCX.i1399, align 8
  %1623 = shl nsw i64 %1622, 2
  %1624 = add i64 %1623, %1617
  %1625 = add i64 %1600, 27
  store i64 %1625, i64* %3, align 8
  %1626 = inttoptr i64 %1624 to i32*
  store i32 0, i32* %1626, align 4
  %1627 = load i64, i64* %RBP.i, align 8
  %1628 = add i64 %1627, -48
  %1629 = load i64, i64* %3, align 8
  %1630 = add i64 %1629, 3
  store i64 %1630, i64* %3, align 8
  %1631 = inttoptr i64 %1628 to i32*
  %1632 = load i32, i32* %1631, align 4
  %1633 = zext i32 %1632 to i64
  store i64 %1633, i64* %RDX.i1385, align 8
  %1634 = add i64 %1627, -40
  %1635 = add i64 %1629, 7
  store i64 %1635, i64* %3, align 8
  %1636 = inttoptr i64 %1634 to i64*
  %1637 = load i64, i64* %1636, align 8
  store i64 %1637, i64* %RAX.i1412, align 8
  %1638 = add i64 %1627, -44
  %1639 = add i64 %1629, 11
  store i64 %1639, i64* %3, align 8
  %1640 = inttoptr i64 %1638 to i32*
  %1641 = load i32, i32* %1640, align 4
  %1642 = sext i32 %1641 to i64
  store i64 %1642, i64* %RCX.i1399, align 8
  %1643 = shl nsw i64 %1642, 3
  %1644 = add i64 %1643, %1637
  %1645 = add i64 %1629, 15
  store i64 %1645, i64* %3, align 8
  %1646 = inttoptr i64 %1644 to i64*
  %1647 = load i64, i64* %1646, align 8
  store i64 %1647, i64* %RAX.i1412, align 8
  %1648 = add i64 %1647, 24
  %1649 = add i64 %1629, 19
  store i64 %1649, i64* %3, align 8
  %1650 = inttoptr i64 %1648 to i64*
  %1651 = load i64, i64* %1650, align 8
  store i64 %1651, i64* %RAX.i1412, align 8
  %1652 = add i64 %1627, -60
  %1653 = add i64 %1629, 23
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1652 to i32*
  %1655 = load i32, i32* %1654, align 4
  %1656 = sext i32 %1655 to i64
  store i64 %1656, i64* %RCX.i1399, align 8
  %1657 = shl nsw i64 %1656, 2
  %1658 = add i64 %1657, %1651
  %1659 = add i64 %1629, 26
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1658 to i32*
  store i32 %1632, i32* %1660, align 4
  %1661 = load i64, i64* %RBP.i, align 8
  %1662 = add i64 %1661, -48
  %1663 = load i64, i64* %3, align 8
  %1664 = add i64 %1663, 3
  store i64 %1664, i64* %3, align 8
  %1665 = inttoptr i64 %1662 to i32*
  %1666 = load i32, i32* %1665, align 4
  %1667 = add i32 %1666, 1
  %1668 = zext i32 %1667 to i64
  store i64 %1668, i64* %RDX.i1385, align 8
  %1669 = icmp eq i32 %1666, -1
  %1670 = icmp eq i32 %1667, 0
  %1671 = or i1 %1669, %1670
  %1672 = zext i1 %1671 to i8
  store i8 %1672, i8* %14, align 1
  %1673 = and i32 %1667, 255
  %1674 = tail call i32 @llvm.ctpop.i32(i32 %1673)
  %1675 = trunc i32 %1674 to i8
  %1676 = and i8 %1675, 1
  %1677 = xor i8 %1676, 1
  store i8 %1677, i8* %21, align 1
  %1678 = xor i32 %1667, %1666
  %1679 = lshr i32 %1678, 4
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  store i8 %1681, i8* %26, align 1
  %1682 = zext i1 %1670 to i8
  store i8 %1682, i8* %29, align 1
  %1683 = lshr i32 %1667, 31
  %1684 = trunc i32 %1683 to i8
  store i8 %1684, i8* %32, align 1
  %1685 = lshr i32 %1666, 31
  %1686 = xor i32 %1683, %1685
  %1687 = add nuw nsw i32 %1686, %1683
  %1688 = icmp eq i32 %1687, 2
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %38, align 1
  %1690 = add i64 %1663, 9
  store i64 %1690, i64* %3, align 8
  store i32 %1667, i32* %1665, align 4
  %1691 = load i64, i64* %RBP.i, align 8
  %1692 = add i64 %1691, -60
  %1693 = load i64, i64* %3, align 8
  %1694 = add i64 %1693, 3
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1692 to i32*
  %1696 = load i32, i32* %1695, align 4
  %1697 = add i32 %1696, 1
  %1698 = zext i32 %1697 to i64
  store i64 %1698, i64* %RDX.i1385, align 8
  %1699 = icmp eq i32 %1696, -1
  %1700 = icmp eq i32 %1697, 0
  %1701 = or i1 %1699, %1700
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %14, align 1
  %1703 = and i32 %1697, 255
  %1704 = tail call i32 @llvm.ctpop.i32(i32 %1703)
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = xor i8 %1706, 1
  store i8 %1707, i8* %21, align 1
  %1708 = xor i32 %1697, %1696
  %1709 = lshr i32 %1708, 4
  %1710 = trunc i32 %1709 to i8
  %1711 = and i8 %1710, 1
  store i8 %1711, i8* %26, align 1
  %1712 = zext i1 %1700 to i8
  store i8 %1712, i8* %29, align 1
  %1713 = lshr i32 %1697, 31
  %1714 = trunc i32 %1713 to i8
  store i8 %1714, i8* %32, align 1
  %1715 = lshr i32 %1696, 31
  %1716 = xor i32 %1713, %1715
  %1717 = add nuw nsw i32 %1716, %1713
  %1718 = icmp eq i32 %1717, 2
  %1719 = zext i1 %1718 to i8
  store i8 %1719, i8* %38, align 1
  %1720 = add i64 %1693, 9
  store i64 %1720, i64* %3, align 8
  store i32 %1697, i32* %1695, align 4
  %1721 = load i64, i64* %3, align 8
  %1722 = add i64 %1721, 527
  br label %block_.L_429c34

block_.L_429a2a:                                  ; preds = %block_4299a9, %block_42998c, %block_42996f, %block_429952, %block_429935, %block_.L_429919
  %1723 = phi i64 [ %1573, %block_4299a9 ], [ %1530, %block_42998c ], [ %1488, %block_42996f ], [ %1445, %block_429952 ], [ %1403, %block_429935 ], [ %1357, %block_.L_429919 ]
  %1724 = add i64 %1723, 4
  store i64 %1724, i64* %3, align 8
  %1725 = load i64, i64* %601, align 8
  store i64 %1725, i64* %RAX.i1412, align 8
  %1726 = add i64 %1723, 7
  store i64 %1726, i64* %3, align 8
  %1727 = load i32, i32* %605, align 4
  %1728 = add i32 %1727, 1
  %1729 = zext i32 %1728 to i64
  store i64 %1729, i64* %RCX.i1399, align 8
  %1730 = icmp eq i32 %1727, -1
  %1731 = icmp eq i32 %1728, 0
  %1732 = or i1 %1730, %1731
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %14, align 1
  %1734 = and i32 %1728, 255
  %1735 = tail call i32 @llvm.ctpop.i32(i32 %1734)
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  %1738 = xor i8 %1737, 1
  store i8 %1738, i8* %21, align 1
  %1739 = xor i32 %1728, %1727
  %1740 = lshr i32 %1739, 4
  %1741 = trunc i32 %1740 to i8
  %1742 = and i8 %1741, 1
  store i8 %1742, i8* %26, align 1
  %1743 = zext i1 %1731 to i8
  store i8 %1743, i8* %29, align 1
  %1744 = lshr i32 %1728, 31
  %1745 = trunc i32 %1744 to i8
  store i8 %1745, i8* %32, align 1
  %1746 = lshr i32 %1727, 31
  %1747 = xor i32 %1744, %1746
  %1748 = add nuw nsw i32 %1747, %1744
  %1749 = icmp eq i32 %1748, 2
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %38, align 1
  %1751 = sext i32 %1728 to i64
  store i64 %1751, i64* %RDX.i1385, align 8
  %1752 = shl nsw i64 %1751, 2
  %1753 = add i64 %1725, %1752
  %1754 = add i64 %1723, 16
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = and i32 %1756, 32
  %1758 = zext i32 %1757 to i64
  store i64 %1758, i64* %RCX.i1399, align 8
  store i8 0, i8* %14, align 1
  %1759 = tail call i32 @llvm.ctpop.i32(i32 %1757)
  %1760 = trunc i32 %1759 to i8
  %1761 = xor i8 %1760, 1
  store i8 %1761, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1762 = icmp eq i32 %1757, 0
  %.lobit65 = lshr exact i32 %1757, 5
  %1763 = trunc i32 %.lobit65 to i8
  %1764 = xor i8 %1763, 1
  store i8 %1764, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v84 = select i1 %1762, i64 273, i64 28
  %1765 = add i64 %1723, %.v84
  store i64 %1765, i64* %3, align 8
  %.pre55 = add i64 %598, -8
  br i1 %1762, label %block_.L_429a2a.block_.L_429b3b_crit_edge, label %block_429a46

block_.L_429a2a.block_.L_429b3b_crit_edge:        ; preds = %block_.L_429a2a
  %.pre56 = inttoptr i64 %.pre55 to i64*
  %.pre58 = add i64 %598, -44
  %.pre60 = inttoptr i64 %.pre58 to i32*
  br label %block_.L_429b3b

block_429a46:                                     ; preds = %block_.L_429a2a
  %1766 = add i64 %1765, 4
  store i64 %1766, i64* %3, align 8
  %1767 = inttoptr i64 %.pre55 to i64*
  %1768 = load i64, i64* %1767, align 8
  store i64 %1768, i64* %RAX.i1412, align 8
  %1769 = add i64 %598, -44
  %1770 = add i64 %1765, 8
  store i64 %1770, i64* %3, align 8
  %1771 = inttoptr i64 %1769 to i32*
  %1772 = load i32, i32* %1771, align 4
  %1773 = sext i32 %1772 to i64
  store i64 %1773, i64* %RCX.i1399, align 8
  %1774 = shl nsw i64 %1773, 3
  %1775 = add i64 %1774, %1768
  %1776 = add i64 %1765, 12
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1775 to i64*
  %1778 = load i64, i64* %1777, align 8
  store i64 %1778, i64* %RAX.i1412, align 8
  %1779 = add i64 %1765, 16
  store i64 %1779, i64* %3, align 8
  %1780 = load i32, i32* %605, align 4
  %1781 = sext i32 %1780 to i64
  store i64 %1781, i64* %RCX.i1399, align 8
  %1782 = add i64 %1778, %1781
  %1783 = add i64 %1765, 20
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i8*
  %1785 = load i8, i8* %1784, align 1
  %1786 = sext i8 %1785 to i64
  %1787 = and i64 %1786, 4294967295
  store i64 %1787, i64* %RDX.i1385, align 8
  %1788 = sext i8 %1785 to i32
  %1789 = add nsw i32 %1788, -32
  %1790 = icmp ult i8 %1785, 32
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %14, align 1
  %1792 = and i32 %1789, 255
  %1793 = tail call i32 @llvm.ctpop.i32(i32 %1792)
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  %1796 = xor i8 %1795, 1
  store i8 %1796, i8* %21, align 1
  %1797 = xor i32 %1789, %1788
  %1798 = lshr i32 %1797, 4
  %1799 = trunc i32 %1798 to i8
  %1800 = and i8 %1799, 1
  store i8 %1800, i8* %26, align 1
  %1801 = icmp eq i32 %1789, 0
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %29, align 1
  %1803 = lshr i32 %1789, 31
  %1804 = trunc i32 %1803 to i8
  store i8 %1804, i8* %32, align 1
  %1805 = lshr i32 %1788, 31
  %1806 = xor i32 %1803, %1805
  %1807 = add nuw nsw i32 %1806, %1805
  %1808 = icmp eq i32 %1807, 2
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %38, align 1
  %.v85 = select i1 %1801, i64 245, i64 29
  %1810 = add i64 %1765, %.v85
  store i64 %1810, i64* %3, align 8
  br i1 %1801, label %block_.L_429b3b, label %block_429a63

block_429a63:                                     ; preds = %block_429a46
  %1811 = add i64 %1810, 4
  store i64 %1811, i64* %3, align 8
  %1812 = load i64, i64* %1767, align 8
  store i64 %1812, i64* %RAX.i1412, align 8
  %1813 = add i64 %1810, 8
  store i64 %1813, i64* %3, align 8
  %1814 = load i32, i32* %1771, align 4
  %1815 = sext i32 %1814 to i64
  store i64 %1815, i64* %RCX.i1399, align 8
  %1816 = shl nsw i64 %1815, 3
  %1817 = add i64 %1816, %1812
  %1818 = add i64 %1810, 12
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i64*
  %1820 = load i64, i64* %1819, align 8
  store i64 %1820, i64* %RAX.i1412, align 8
  %1821 = add i64 %1810, 16
  store i64 %1821, i64* %3, align 8
  %1822 = load i32, i32* %605, align 4
  %1823 = sext i32 %1822 to i64
  store i64 %1823, i64* %RCX.i1399, align 8
  %1824 = add i64 %1820, %1823
  %1825 = add i64 %1810, 20
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to i8*
  %1827 = load i8, i8* %1826, align 1
  %1828 = sext i8 %1827 to i64
  %1829 = and i64 %1828, 4294967295
  store i64 %1829, i64* %RDX.i1385, align 8
  %1830 = sext i8 %1827 to i32
  %1831 = add nsw i32 %1830, -46
  %1832 = icmp ult i8 %1827, 46
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %14, align 1
  %1834 = and i32 %1831, 255
  %1835 = tail call i32 @llvm.ctpop.i32(i32 %1834)
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  %1838 = xor i8 %1837, 1
  store i8 %1838, i8* %21, align 1
  %1839 = xor i32 %1831, %1830
  %1840 = lshr i32 %1839, 4
  %1841 = trunc i32 %1840 to i8
  %1842 = and i8 %1841, 1
  store i8 %1842, i8* %26, align 1
  %1843 = icmp eq i32 %1831, 0
  %1844 = zext i1 %1843 to i8
  store i8 %1844, i8* %29, align 1
  %1845 = lshr i32 %1831, 31
  %1846 = trunc i32 %1845 to i8
  store i8 %1846, i8* %32, align 1
  %1847 = lshr i32 %1830, 31
  %1848 = xor i32 %1845, %1847
  %1849 = add nuw nsw i32 %1848, %1847
  %1850 = icmp eq i32 %1849, 2
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %38, align 1
  %.v86 = select i1 %1843, i64 216, i64 29
  %1852 = add i64 %1810, %.v86
  store i64 %1852, i64* %3, align 8
  br i1 %1843, label %block_.L_429b3b, label %block_429a80

block_429a80:                                     ; preds = %block_429a63
  %1853 = add i64 %1852, 4
  store i64 %1853, i64* %3, align 8
  %1854 = load i64, i64* %1767, align 8
  store i64 %1854, i64* %RAX.i1412, align 8
  %1855 = add i64 %1852, 8
  store i64 %1855, i64* %3, align 8
  %1856 = load i32, i32* %1771, align 4
  %1857 = sext i32 %1856 to i64
  store i64 %1857, i64* %RCX.i1399, align 8
  %1858 = shl nsw i64 %1857, 3
  %1859 = add i64 %1858, %1854
  %1860 = add i64 %1852, 12
  store i64 %1860, i64* %3, align 8
  %1861 = inttoptr i64 %1859 to i64*
  %1862 = load i64, i64* %1861, align 8
  store i64 %1862, i64* %RAX.i1412, align 8
  %1863 = add i64 %1852, 16
  store i64 %1863, i64* %3, align 8
  %1864 = load i32, i32* %605, align 4
  %1865 = sext i32 %1864 to i64
  store i64 %1865, i64* %RCX.i1399, align 8
  %1866 = add i64 %1862, %1865
  %1867 = add i64 %1852, 20
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1866 to i8*
  %1869 = load i8, i8* %1868, align 1
  %1870 = sext i8 %1869 to i64
  %1871 = and i64 %1870, 4294967295
  store i64 %1871, i64* %RDX.i1385, align 8
  %1872 = sext i8 %1869 to i32
  %1873 = add nsw i32 %1872, -95
  %1874 = icmp ult i8 %1869, 95
  %1875 = zext i1 %1874 to i8
  store i8 %1875, i8* %14, align 1
  %1876 = and i32 %1873, 255
  %1877 = tail call i32 @llvm.ctpop.i32(i32 %1876)
  %1878 = trunc i32 %1877 to i8
  %1879 = and i8 %1878, 1
  %1880 = xor i8 %1879, 1
  store i8 %1880, i8* %21, align 1
  %1881 = xor i32 %1872, 16
  %1882 = xor i32 %1881, %1873
  %1883 = lshr i32 %1882, 4
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  store i8 %1885, i8* %26, align 1
  %1886 = icmp eq i32 %1873, 0
  %1887 = zext i1 %1886 to i8
  store i8 %1887, i8* %29, align 1
  %1888 = lshr i32 %1873, 31
  %1889 = trunc i32 %1888 to i8
  store i8 %1889, i8* %32, align 1
  %1890 = lshr i32 %1872, 31
  %1891 = xor i32 %1888, %1890
  %1892 = add nuw nsw i32 %1891, %1890
  %1893 = icmp eq i32 %1892, 2
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %38, align 1
  %.v87 = select i1 %1886, i64 187, i64 29
  %1895 = add i64 %1852, %.v87
  store i64 %1895, i64* %3, align 8
  br i1 %1886, label %block_.L_429b3b, label %block_429a9d

block_429a9d:                                     ; preds = %block_429a80
  %1896 = add i64 %1895, 4
  store i64 %1896, i64* %3, align 8
  %1897 = load i64, i64* %1767, align 8
  store i64 %1897, i64* %RAX.i1412, align 8
  %1898 = add i64 %1895, 8
  store i64 %1898, i64* %3, align 8
  %1899 = load i32, i32* %1771, align 4
  %1900 = sext i32 %1899 to i64
  store i64 %1900, i64* %RCX.i1399, align 8
  %1901 = shl nsw i64 %1900, 3
  %1902 = add i64 %1901, %1897
  %1903 = add i64 %1895, 12
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1902 to i64*
  %1905 = load i64, i64* %1904, align 8
  store i64 %1905, i64* %RAX.i1412, align 8
  %1906 = add i64 %1895, 16
  store i64 %1906, i64* %3, align 8
  %1907 = load i32, i32* %605, align 4
  %1908 = sext i32 %1907 to i64
  store i64 %1908, i64* %RCX.i1399, align 8
  %1909 = add i64 %1905, %1908
  %1910 = add i64 %1895, 20
  store i64 %1910, i64* %3, align 8
  %1911 = inttoptr i64 %1909 to i8*
  %1912 = load i8, i8* %1911, align 1
  %1913 = sext i8 %1912 to i64
  %1914 = and i64 %1913, 4294967295
  store i64 %1914, i64* %RDX.i1385, align 8
  %1915 = sext i8 %1912 to i32
  %1916 = add nsw i32 %1915, -45
  %1917 = icmp ult i8 %1912, 45
  %1918 = zext i1 %1917 to i8
  store i8 %1918, i8* %14, align 1
  %1919 = and i32 %1916, 255
  %1920 = tail call i32 @llvm.ctpop.i32(i32 %1919)
  %1921 = trunc i32 %1920 to i8
  %1922 = and i8 %1921, 1
  %1923 = xor i8 %1922, 1
  store i8 %1923, i8* %21, align 1
  %1924 = xor i32 %1916, %1915
  %1925 = lshr i32 %1924, 4
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  store i8 %1927, i8* %26, align 1
  %1928 = icmp eq i32 %1916, 0
  %1929 = zext i1 %1928 to i8
  store i8 %1929, i8* %29, align 1
  %1930 = lshr i32 %1916, 31
  %1931 = trunc i32 %1930 to i8
  store i8 %1931, i8* %32, align 1
  %1932 = lshr i32 %1915, 31
  %1933 = xor i32 %1930, %1932
  %1934 = add nuw nsw i32 %1933, %1932
  %1935 = icmp eq i32 %1934, 2
  %1936 = zext i1 %1935 to i8
  store i8 %1936, i8* %38, align 1
  %.v88 = select i1 %1928, i64 158, i64 29
  %1937 = add i64 %1895, %.v88
  store i64 %1937, i64* %3, align 8
  br i1 %1928, label %block_.L_429b3b, label %block_429aba

block_429aba:                                     ; preds = %block_429a9d
  %1938 = add i64 %1937, 4
  store i64 %1938, i64* %3, align 8
  %1939 = load i64, i64* %1767, align 8
  store i64 %1939, i64* %RAX.i1412, align 8
  %1940 = add i64 %1937, 8
  store i64 %1940, i64* %3, align 8
  %1941 = load i32, i32* %1771, align 4
  %1942 = sext i32 %1941 to i64
  store i64 %1942, i64* %RCX.i1399, align 8
  %1943 = shl nsw i64 %1942, 3
  %1944 = add i64 %1943, %1939
  %1945 = add i64 %1937, 12
  store i64 %1945, i64* %3, align 8
  %1946 = inttoptr i64 %1944 to i64*
  %1947 = load i64, i64* %1946, align 8
  store i64 %1947, i64* %RAX.i1412, align 8
  %1948 = add i64 %1937, 16
  store i64 %1948, i64* %3, align 8
  %1949 = load i32, i32* %605, align 4
  %1950 = sext i32 %1949 to i64
  store i64 %1950, i64* %RCX.i1399, align 8
  %1951 = add i64 %1947, %1950
  %1952 = add i64 %1937, 20
  store i64 %1952, i64* %3, align 8
  %1953 = inttoptr i64 %1951 to i8*
  %1954 = load i8, i8* %1953, align 1
  %1955 = sext i8 %1954 to i64
  %1956 = and i64 %1955, 4294967295
  store i64 %1956, i64* %RDX.i1385, align 8
  %1957 = sext i8 %1954 to i32
  %1958 = add nsw i32 %1957, -126
  %1959 = icmp ult i8 %1954, 126
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %14, align 1
  %1961 = and i32 %1958, 255
  %1962 = tail call i32 @llvm.ctpop.i32(i32 %1961)
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  %1965 = xor i8 %1964, 1
  store i8 %1965, i8* %21, align 1
  %1966 = xor i32 %1957, 16
  %1967 = xor i32 %1966, %1958
  %1968 = lshr i32 %1967, 4
  %1969 = trunc i32 %1968 to i8
  %1970 = and i8 %1969, 1
  store i8 %1970, i8* %26, align 1
  %1971 = icmp eq i32 %1958, 0
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %29, align 1
  %1973 = lshr i32 %1958, 31
  %1974 = trunc i32 %1973 to i8
  store i8 %1974, i8* %32, align 1
  %1975 = lshr i32 %1957, 31
  %1976 = xor i32 %1973, %1975
  %1977 = add nuw nsw i32 %1976, %1975
  %1978 = icmp eq i32 %1977, 2
  %1979 = zext i1 %1978 to i8
  store i8 %1979, i8* %38, align 1
  %.v89 = select i1 %1971, i64 129, i64 29
  %1980 = add i64 %1937, %.v89
  store i64 %1980, i64* %3, align 8
  br i1 %1971, label %block_.L_429b3b, label %block_429ad7

block_429ad7:                                     ; preds = %block_429aba
  %1981 = add i64 %598, -40
  %1982 = add i64 %1980, 4
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i64*
  %1984 = load i64, i64* %1983, align 8
  store i64 %1984, i64* %RAX.i1412, align 8
  %1985 = add i64 %1980, 8
  store i64 %1985, i64* %3, align 8
  %1986 = load i32, i32* %1771, align 4
  %1987 = sext i32 %1986 to i64
  store i64 %1987, i64* %RCX.i1399, align 8
  %1988 = shl nsw i64 %1987, 3
  %1989 = add i64 %1988, %1984
  %1990 = add i64 %1980, 12
  store i64 %1990, i64* %3, align 8
  %1991 = inttoptr i64 %1989 to i64*
  %1992 = load i64, i64* %1991, align 8
  store i64 %1992, i64* %RAX.i1412, align 8
  %1993 = add i64 %1992, 8
  %1994 = add i64 %1980, 16
  store i64 %1994, i64* %3, align 8
  %1995 = inttoptr i64 %1993 to i64*
  %1996 = load i64, i64* %1995, align 8
  store i64 %1996, i64* %RAX.i1412, align 8
  %1997 = add i64 %598, -60
  %1998 = add i64 %1980, 20
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to i32*
  %2000 = load i32, i32* %1999, align 4
  %2001 = sext i32 %2000 to i64
  store i64 %2001, i64* %RCX.i1399, align 8
  %2002 = add i64 %1996, %2001
  %2003 = add i64 %1980, 24
  store i64 %2003, i64* %3, align 8
  %2004 = inttoptr i64 %2002 to i8*
  store i8 8, i8* %2004, align 1
  %2005 = load i64, i64* %RBP.i, align 8
  %2006 = add i64 %2005, -40
  %2007 = load i64, i64* %3, align 8
  %2008 = add i64 %2007, 4
  store i64 %2008, i64* %3, align 8
  %2009 = inttoptr i64 %2006 to i64*
  %2010 = load i64, i64* %2009, align 8
  store i64 %2010, i64* %RAX.i1412, align 8
  %2011 = add i64 %2005, -44
  %2012 = add i64 %2007, 8
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i32*
  %2014 = load i32, i32* %2013, align 4
  %2015 = sext i32 %2014 to i64
  store i64 %2015, i64* %RCX.i1399, align 8
  %2016 = shl nsw i64 %2015, 3
  %2017 = add i64 %2016, %2010
  %2018 = add i64 %2007, 12
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2017 to i64*
  %2020 = load i64, i64* %2019, align 8
  store i64 %2020, i64* %RAX.i1412, align 8
  %2021 = add i64 %2020, 16
  %2022 = add i64 %2007, 16
  store i64 %2022, i64* %3, align 8
  %2023 = inttoptr i64 %2021 to i64*
  %2024 = load i64, i64* %2023, align 8
  store i64 %2024, i64* %RAX.i1412, align 8
  %2025 = add i64 %2005, -60
  %2026 = add i64 %2007, 20
  store i64 %2026, i64* %3, align 8
  %2027 = inttoptr i64 %2025 to i32*
  %2028 = load i32, i32* %2027, align 4
  %2029 = sext i32 %2028 to i64
  store i64 %2029, i64* %RCX.i1399, align 8
  %2030 = shl nsw i64 %2029, 2
  %2031 = add i64 %2030, %2024
  %2032 = add i64 %2007, 27
  store i64 %2032, i64* %3, align 8
  %2033 = inttoptr i64 %2031 to i32*
  store i32 0, i32* %2033, align 4
  %2034 = load i64, i64* %RBP.i, align 8
  %2035 = add i64 %2034, -48
  %2036 = load i64, i64* %3, align 8
  %2037 = add i64 %2036, 3
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2035 to i32*
  %2039 = load i32, i32* %2038, align 4
  %2040 = zext i32 %2039 to i64
  store i64 %2040, i64* %RDX.i1385, align 8
  %2041 = add i64 %2034, -40
  %2042 = add i64 %2036, 7
  store i64 %2042, i64* %3, align 8
  %2043 = inttoptr i64 %2041 to i64*
  %2044 = load i64, i64* %2043, align 8
  store i64 %2044, i64* %RAX.i1412, align 8
  %2045 = add i64 %2034, -44
  %2046 = add i64 %2036, 11
  store i64 %2046, i64* %3, align 8
  %2047 = inttoptr i64 %2045 to i32*
  %2048 = load i32, i32* %2047, align 4
  %2049 = sext i32 %2048 to i64
  store i64 %2049, i64* %RCX.i1399, align 8
  %2050 = shl nsw i64 %2049, 3
  %2051 = add i64 %2050, %2044
  %2052 = add i64 %2036, 15
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to i64*
  %2054 = load i64, i64* %2053, align 8
  store i64 %2054, i64* %RAX.i1412, align 8
  %2055 = add i64 %2054, 24
  %2056 = add i64 %2036, 19
  store i64 %2056, i64* %3, align 8
  %2057 = inttoptr i64 %2055 to i64*
  %2058 = load i64, i64* %2057, align 8
  store i64 %2058, i64* %RAX.i1412, align 8
  %2059 = add i64 %2034, -60
  %2060 = add i64 %2036, 23
  store i64 %2060, i64* %3, align 8
  %2061 = inttoptr i64 %2059 to i32*
  %2062 = load i32, i32* %2061, align 4
  %2063 = sext i32 %2062 to i64
  store i64 %2063, i64* %RCX.i1399, align 8
  %2064 = shl nsw i64 %2063, 2
  %2065 = add i64 %2064, %2058
  %2066 = add i64 %2036, 26
  store i64 %2066, i64* %3, align 8
  %2067 = inttoptr i64 %2065 to i32*
  store i32 %2039, i32* %2067, align 4
  %2068 = load i64, i64* %RBP.i, align 8
  %2069 = add i64 %2068, -48
  %2070 = load i64, i64* %3, align 8
  %2071 = add i64 %2070, 3
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2069 to i32*
  %2073 = load i32, i32* %2072, align 4
  %2074 = add i32 %2073, 1
  %2075 = zext i32 %2074 to i64
  store i64 %2075, i64* %RDX.i1385, align 8
  %2076 = icmp eq i32 %2073, -1
  %2077 = icmp eq i32 %2074, 0
  %2078 = or i1 %2076, %2077
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %14, align 1
  %2080 = and i32 %2074, 255
  %2081 = tail call i32 @llvm.ctpop.i32(i32 %2080)
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  store i8 %2084, i8* %21, align 1
  %2085 = xor i32 %2074, %2073
  %2086 = lshr i32 %2085, 4
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  store i8 %2088, i8* %26, align 1
  %2089 = zext i1 %2077 to i8
  store i8 %2089, i8* %29, align 1
  %2090 = lshr i32 %2074, 31
  %2091 = trunc i32 %2090 to i8
  store i8 %2091, i8* %32, align 1
  %2092 = lshr i32 %2073, 31
  %2093 = xor i32 %2090, %2092
  %2094 = add nuw nsw i32 %2093, %2090
  %2095 = icmp eq i32 %2094, 2
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %38, align 1
  %2097 = add i64 %2070, 9
  store i64 %2097, i64* %3, align 8
  store i32 %2074, i32* %2072, align 4
  %2098 = load i64, i64* %RBP.i, align 8
  %2099 = add i64 %2098, -60
  %2100 = load i64, i64* %3, align 8
  %2101 = add i64 %2100, 3
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2099 to i32*
  %2103 = load i32, i32* %2102, align 4
  %2104 = add i32 %2103, 1
  %2105 = zext i32 %2104 to i64
  store i64 %2105, i64* %RDX.i1385, align 8
  %2106 = icmp eq i32 %2103, -1
  %2107 = icmp eq i32 %2104, 0
  %2108 = or i1 %2106, %2107
  %2109 = zext i1 %2108 to i8
  store i8 %2109, i8* %14, align 1
  %2110 = and i32 %2104, 255
  %2111 = tail call i32 @llvm.ctpop.i32(i32 %2110)
  %2112 = trunc i32 %2111 to i8
  %2113 = and i8 %2112, 1
  %2114 = xor i8 %2113, 1
  store i8 %2114, i8* %21, align 1
  %2115 = xor i32 %2104, %2103
  %2116 = lshr i32 %2115, 4
  %2117 = trunc i32 %2116 to i8
  %2118 = and i8 %2117, 1
  store i8 %2118, i8* %26, align 1
  %2119 = zext i1 %2107 to i8
  store i8 %2119, i8* %29, align 1
  %2120 = lshr i32 %2104, 31
  %2121 = trunc i32 %2120 to i8
  store i8 %2121, i8* %32, align 1
  %2122 = lshr i32 %2103, 31
  %2123 = xor i32 %2120, %2122
  %2124 = add nuw nsw i32 %2123, %2120
  %2125 = icmp eq i32 %2124, 2
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %38, align 1
  %2127 = add i64 %2100, 9
  store i64 %2127, i64* %3, align 8
  store i32 %2104, i32* %2102, align 4
  %2128 = load i64, i64* %3, align 8
  %2129 = add i64 %2128, 249
  br label %block_.L_429c2f

block_.L_429b3b:                                  ; preds = %block_.L_429a2a.block_.L_429b3b_crit_edge, %block_429aba, %block_429a9d, %block_429a80, %block_429a63, %block_429a46
  %.pre-phi61 = phi i32* [ %.pre60, %block_.L_429a2a.block_.L_429b3b_crit_edge ], [ %1771, %block_429aba ], [ %1771, %block_429a9d ], [ %1771, %block_429a80 ], [ %1771, %block_429a63 ], [ %1771, %block_429a46 ]
  %.pre-phi57 = phi i64* [ %.pre56, %block_.L_429a2a.block_.L_429b3b_crit_edge ], [ %1767, %block_429aba ], [ %1767, %block_429a9d ], [ %1767, %block_429a80 ], [ %1767, %block_429a63 ], [ %1767, %block_429a46 ]
  %2130 = phi i64 [ %1765, %block_.L_429a2a.block_.L_429b3b_crit_edge ], [ %1980, %block_429aba ], [ %1937, %block_429a9d ], [ %1895, %block_429a80 ], [ %1852, %block_429a63 ], [ %1810, %block_429a46 ]
  %2131 = add i64 %2130, 4
  store i64 %2131, i64* %3, align 8
  %2132 = load i64, i64* %.pre-phi57, align 8
  store i64 %2132, i64* %RAX.i1412, align 8
  %2133 = add i64 %2130, 8
  store i64 %2133, i64* %3, align 8
  %2134 = load i32, i32* %.pre-phi61, align 4
  %2135 = sext i32 %2134 to i64
  store i64 %2135, i64* %RCX.i1399, align 8
  %2136 = shl nsw i64 %2135, 3
  %2137 = add i64 %2136, %2132
  %2138 = add i64 %2130, 12
  store i64 %2138, i64* %3, align 8
  %2139 = inttoptr i64 %2137 to i64*
  %2140 = load i64, i64* %2139, align 8
  store i64 %2140, i64* %RAX.i1412, align 8
  %2141 = add i64 %2130, 16
  store i64 %2141, i64* %3, align 8
  %2142 = load i32, i32* %605, align 4
  %2143 = sext i32 %2142 to i64
  store i64 %2143, i64* %RCX.i1399, align 8
  %2144 = add i64 %2140, %2143
  %2145 = add i64 %2130, 20
  store i64 %2145, i64* %3, align 8
  %2146 = inttoptr i64 %2144 to i8*
  %2147 = load i8, i8* %2146, align 1
  %2148 = sext i8 %2147 to i64
  %2149 = and i64 %2148, 4294967295
  store i64 %2149, i64* %RDX.i1385, align 8
  %2150 = sext i8 %2147 to i32
  %2151 = add nsw i32 %2150, -32
  %2152 = icmp ult i8 %2147, 32
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %14, align 1
  %2154 = and i32 %2151, 255
  %2155 = tail call i32 @llvm.ctpop.i32(i32 %2154)
  %2156 = trunc i32 %2155 to i8
  %2157 = and i8 %2156, 1
  %2158 = xor i8 %2157, 1
  store i8 %2158, i8* %21, align 1
  %2159 = xor i32 %2151, %2150
  %2160 = lshr i32 %2159, 4
  %2161 = trunc i32 %2160 to i8
  %2162 = and i8 %2161, 1
  store i8 %2162, i8* %26, align 1
  %2163 = icmp eq i32 %2151, 0
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %29, align 1
  %2165 = lshr i32 %2151, 31
  %2166 = trunc i32 %2165 to i8
  store i8 %2166, i8* %32, align 1
  %2167 = lshr i32 %2150, 31
  %2168 = xor i32 %2165, %2167
  %2169 = add nuw nsw i32 %2168, %2167
  %2170 = icmp eq i32 %2169, 2
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %38, align 1
  %.v90 = select i1 %2163, i64 239, i64 29
  %2172 = add i64 %2130, %.v90
  store i64 %2172, i64* %3, align 8
  br i1 %2163, label %block_.L_429c2a, label %block_429b58

block_429b58:                                     ; preds = %block_.L_429b3b
  %2173 = add i64 %2172, 4
  store i64 %2173, i64* %3, align 8
  %2174 = load i64, i64* %.pre-phi57, align 8
  store i64 %2174, i64* %RAX.i1412, align 8
  %2175 = add i64 %2172, 8
  store i64 %2175, i64* %3, align 8
  %2176 = load i32, i32* %.pre-phi61, align 4
  %2177 = sext i32 %2176 to i64
  store i64 %2177, i64* %RCX.i1399, align 8
  %2178 = shl nsw i64 %2177, 3
  %2179 = add i64 %2178, %2174
  %2180 = add i64 %2172, 12
  store i64 %2180, i64* %3, align 8
  %2181 = inttoptr i64 %2179 to i64*
  %2182 = load i64, i64* %2181, align 8
  store i64 %2182, i64* %RAX.i1412, align 8
  %2183 = add i64 %2172, 16
  store i64 %2183, i64* %3, align 8
  %2184 = load i32, i32* %605, align 4
  %2185 = sext i32 %2184 to i64
  store i64 %2185, i64* %RCX.i1399, align 8
  %2186 = add i64 %2182, %2185
  %2187 = add i64 %2172, 20
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2186 to i8*
  %2189 = load i8, i8* %2188, align 1
  %2190 = sext i8 %2189 to i64
  %2191 = and i64 %2190, 4294967295
  store i64 %2191, i64* %RDX.i1385, align 8
  %2192 = sext i8 %2189 to i32
  %2193 = add nsw i32 %2192, -46
  %2194 = icmp ult i8 %2189, 46
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %14, align 1
  %2196 = and i32 %2193, 255
  %2197 = tail call i32 @llvm.ctpop.i32(i32 %2196)
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  %2200 = xor i8 %2199, 1
  store i8 %2200, i8* %21, align 1
  %2201 = xor i32 %2193, %2192
  %2202 = lshr i32 %2201, 4
  %2203 = trunc i32 %2202 to i8
  %2204 = and i8 %2203, 1
  store i8 %2204, i8* %26, align 1
  %2205 = icmp eq i32 %2193, 0
  %2206 = zext i1 %2205 to i8
  store i8 %2206, i8* %29, align 1
  %2207 = lshr i32 %2193, 31
  %2208 = trunc i32 %2207 to i8
  store i8 %2208, i8* %32, align 1
  %2209 = lshr i32 %2192, 31
  %2210 = xor i32 %2207, %2209
  %2211 = add nuw nsw i32 %2210, %2209
  %2212 = icmp eq i32 %2211, 2
  %2213 = zext i1 %2212 to i8
  store i8 %2213, i8* %38, align 1
  %.v91 = select i1 %2205, i64 210, i64 29
  %2214 = add i64 %2172, %.v91
  store i64 %2214, i64* %3, align 8
  br i1 %2205, label %block_.L_429c2a, label %block_429b75

block_429b75:                                     ; preds = %block_429b58
  %2215 = add i64 %2214, 4
  store i64 %2215, i64* %3, align 8
  %2216 = load i64, i64* %.pre-phi57, align 8
  store i64 %2216, i64* %RAX.i1412, align 8
  %2217 = add i64 %2214, 8
  store i64 %2217, i64* %3, align 8
  %2218 = load i32, i32* %.pre-phi61, align 4
  %2219 = sext i32 %2218 to i64
  store i64 %2219, i64* %RCX.i1399, align 8
  %2220 = shl nsw i64 %2219, 3
  %2221 = add i64 %2220, %2216
  %2222 = add i64 %2214, 12
  store i64 %2222, i64* %3, align 8
  %2223 = inttoptr i64 %2221 to i64*
  %2224 = load i64, i64* %2223, align 8
  store i64 %2224, i64* %RAX.i1412, align 8
  %2225 = add i64 %2214, 16
  store i64 %2225, i64* %3, align 8
  %2226 = load i32, i32* %605, align 4
  %2227 = sext i32 %2226 to i64
  store i64 %2227, i64* %RCX.i1399, align 8
  %2228 = add i64 %2224, %2227
  %2229 = add i64 %2214, 20
  store i64 %2229, i64* %3, align 8
  %2230 = inttoptr i64 %2228 to i8*
  %2231 = load i8, i8* %2230, align 1
  %2232 = sext i8 %2231 to i64
  %2233 = and i64 %2232, 4294967295
  store i64 %2233, i64* %RDX.i1385, align 8
  %2234 = sext i8 %2231 to i32
  %2235 = add nsw i32 %2234, -95
  %2236 = icmp ult i8 %2231, 95
  %2237 = zext i1 %2236 to i8
  store i8 %2237, i8* %14, align 1
  %2238 = and i32 %2235, 255
  %2239 = tail call i32 @llvm.ctpop.i32(i32 %2238)
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  %2242 = xor i8 %2241, 1
  store i8 %2242, i8* %21, align 1
  %2243 = xor i32 %2234, 16
  %2244 = xor i32 %2243, %2235
  %2245 = lshr i32 %2244, 4
  %2246 = trunc i32 %2245 to i8
  %2247 = and i8 %2246, 1
  store i8 %2247, i8* %26, align 1
  %2248 = icmp eq i32 %2235, 0
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %29, align 1
  %2250 = lshr i32 %2235, 31
  %2251 = trunc i32 %2250 to i8
  store i8 %2251, i8* %32, align 1
  %2252 = lshr i32 %2234, 31
  %2253 = xor i32 %2250, %2252
  %2254 = add nuw nsw i32 %2253, %2252
  %2255 = icmp eq i32 %2254, 2
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %38, align 1
  %.v92 = select i1 %2248, i64 181, i64 29
  %2257 = add i64 %2214, %.v92
  store i64 %2257, i64* %3, align 8
  br i1 %2248, label %block_.L_429c2a, label %block_429b92

block_429b92:                                     ; preds = %block_429b75
  %2258 = add i64 %2257, 4
  store i64 %2258, i64* %3, align 8
  %2259 = load i64, i64* %.pre-phi57, align 8
  store i64 %2259, i64* %RAX.i1412, align 8
  %2260 = add i64 %2257, 8
  store i64 %2260, i64* %3, align 8
  %2261 = load i32, i32* %.pre-phi61, align 4
  %2262 = sext i32 %2261 to i64
  store i64 %2262, i64* %RCX.i1399, align 8
  %2263 = shl nsw i64 %2262, 3
  %2264 = add i64 %2263, %2259
  %2265 = add i64 %2257, 12
  store i64 %2265, i64* %3, align 8
  %2266 = inttoptr i64 %2264 to i64*
  %2267 = load i64, i64* %2266, align 8
  store i64 %2267, i64* %RAX.i1412, align 8
  %2268 = add i64 %2257, 16
  store i64 %2268, i64* %3, align 8
  %2269 = load i32, i32* %605, align 4
  %2270 = sext i32 %2269 to i64
  store i64 %2270, i64* %RCX.i1399, align 8
  %2271 = add i64 %2267, %2270
  %2272 = add i64 %2257, 20
  store i64 %2272, i64* %3, align 8
  %2273 = inttoptr i64 %2271 to i8*
  %2274 = load i8, i8* %2273, align 1
  %2275 = sext i8 %2274 to i64
  %2276 = and i64 %2275, 4294967295
  store i64 %2276, i64* %RDX.i1385, align 8
  %2277 = sext i8 %2274 to i32
  %2278 = add nsw i32 %2277, -45
  %2279 = icmp ult i8 %2274, 45
  %2280 = zext i1 %2279 to i8
  store i8 %2280, i8* %14, align 1
  %2281 = and i32 %2278, 255
  %2282 = tail call i32 @llvm.ctpop.i32(i32 %2281)
  %2283 = trunc i32 %2282 to i8
  %2284 = and i8 %2283, 1
  %2285 = xor i8 %2284, 1
  store i8 %2285, i8* %21, align 1
  %2286 = xor i32 %2278, %2277
  %2287 = lshr i32 %2286, 4
  %2288 = trunc i32 %2287 to i8
  %2289 = and i8 %2288, 1
  store i8 %2289, i8* %26, align 1
  %2290 = icmp eq i32 %2278, 0
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %29, align 1
  %2292 = lshr i32 %2278, 31
  %2293 = trunc i32 %2292 to i8
  store i8 %2293, i8* %32, align 1
  %2294 = lshr i32 %2277, 31
  %2295 = xor i32 %2292, %2294
  %2296 = add nuw nsw i32 %2295, %2294
  %2297 = icmp eq i32 %2296, 2
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %38, align 1
  %.v93 = select i1 %2290, i64 152, i64 29
  %2299 = add i64 %2257, %.v93
  store i64 %2299, i64* %3, align 8
  br i1 %2290, label %block_.L_429c2a, label %block_429baf

block_429baf:                                     ; preds = %block_429b92
  %2300 = add i64 %2299, 4
  store i64 %2300, i64* %3, align 8
  %2301 = load i64, i64* %.pre-phi57, align 8
  store i64 %2301, i64* %RAX.i1412, align 8
  %2302 = add i64 %2299, 8
  store i64 %2302, i64* %3, align 8
  %2303 = load i32, i32* %.pre-phi61, align 4
  %2304 = sext i32 %2303 to i64
  store i64 %2304, i64* %RCX.i1399, align 8
  %2305 = shl nsw i64 %2304, 3
  %2306 = add i64 %2305, %2301
  %2307 = add i64 %2299, 12
  store i64 %2307, i64* %3, align 8
  %2308 = inttoptr i64 %2306 to i64*
  %2309 = load i64, i64* %2308, align 8
  store i64 %2309, i64* %RAX.i1412, align 8
  %2310 = add i64 %2299, 16
  store i64 %2310, i64* %3, align 8
  %2311 = load i32, i32* %605, align 4
  %2312 = sext i32 %2311 to i64
  store i64 %2312, i64* %RCX.i1399, align 8
  %2313 = add i64 %2309, %2312
  %2314 = add i64 %2299, 20
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2313 to i8*
  %2316 = load i8, i8* %2315, align 1
  %2317 = sext i8 %2316 to i64
  %2318 = and i64 %2317, 4294967295
  store i64 %2318, i64* %RDX.i1385, align 8
  %2319 = sext i8 %2316 to i32
  %2320 = add nsw i32 %2319, -126
  %2321 = icmp ult i8 %2316, 126
  %2322 = zext i1 %2321 to i8
  store i8 %2322, i8* %14, align 1
  %2323 = and i32 %2320, 255
  %2324 = tail call i32 @llvm.ctpop.i32(i32 %2323)
  %2325 = trunc i32 %2324 to i8
  %2326 = and i8 %2325, 1
  %2327 = xor i8 %2326, 1
  store i8 %2327, i8* %21, align 1
  %2328 = xor i32 %2319, 16
  %2329 = xor i32 %2328, %2320
  %2330 = lshr i32 %2329, 4
  %2331 = trunc i32 %2330 to i8
  %2332 = and i8 %2331, 1
  store i8 %2332, i8* %26, align 1
  %2333 = icmp eq i32 %2320, 0
  %2334 = zext i1 %2333 to i8
  store i8 %2334, i8* %29, align 1
  %2335 = lshr i32 %2320, 31
  %2336 = trunc i32 %2335 to i8
  store i8 %2336, i8* %32, align 1
  %2337 = lshr i32 %2319, 31
  %2338 = xor i32 %2335, %2337
  %2339 = add nuw nsw i32 %2338, %2337
  %2340 = icmp eq i32 %2339, 2
  %2341 = zext i1 %2340 to i8
  store i8 %2341, i8* %38, align 1
  %.v94 = select i1 %2333, i64 123, i64 29
  %2342 = add i64 %2299, %.v94
  store i64 %2342, i64* %3, align 8
  br i1 %2333, label %block_.L_429c2a, label %block_429bcc

block_429bcc:                                     ; preds = %block_429baf
  %2343 = add i64 %598, -40
  %2344 = add i64 %2342, 4
  store i64 %2344, i64* %3, align 8
  %2345 = inttoptr i64 %2343 to i64*
  %2346 = load i64, i64* %2345, align 8
  store i64 %2346, i64* %RAX.i1412, align 8
  %2347 = add i64 %2342, 8
  store i64 %2347, i64* %3, align 8
  %2348 = load i32, i32* %.pre-phi61, align 4
  %2349 = sext i32 %2348 to i64
  store i64 %2349, i64* %RCX.i1399, align 8
  %2350 = shl nsw i64 %2349, 3
  %2351 = add i64 %2350, %2346
  %2352 = add i64 %2342, 12
  store i64 %2352, i64* %3, align 8
  %2353 = inttoptr i64 %2351 to i64*
  %2354 = load i64, i64* %2353, align 8
  store i64 %2354, i64* %RAX.i1412, align 8
  %2355 = add i64 %2354, 8
  %2356 = add i64 %2342, 16
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i64*
  %2358 = load i64, i64* %2357, align 8
  store i64 %2358, i64* %RAX.i1412, align 8
  %2359 = add i64 %598, -60
  %2360 = add i64 %2342, 20
  store i64 %2360, i64* %3, align 8
  %2361 = inttoptr i64 %2359 to i32*
  %2362 = load i32, i32* %2361, align 4
  %2363 = sext i32 %2362 to i64
  store i64 %2363, i64* %RCX.i1399, align 8
  %2364 = add i64 %2358, %2363
  %2365 = add i64 %2342, 24
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to i8*
  store i8 3, i8* %2366, align 1
  %2367 = load i64, i64* %RBP.i, align 8
  %2368 = add i64 %2367, -52
  %2369 = load i64, i64* %3, align 8
  %2370 = add i64 %2369, 3
  store i64 %2370, i64* %3, align 8
  %2371 = inttoptr i64 %2368 to i32*
  %2372 = load i32, i32* %2371, align 4
  %2373 = zext i32 %2372 to i64
  store i64 %2373, i64* %RDX.i1385, align 8
  %2374 = add i64 %2367, -40
  %2375 = add i64 %2369, 7
  store i64 %2375, i64* %3, align 8
  %2376 = inttoptr i64 %2374 to i64*
  %2377 = load i64, i64* %2376, align 8
  store i64 %2377, i64* %RAX.i1412, align 8
  %2378 = add i64 %2367, -44
  %2379 = add i64 %2369, 11
  store i64 %2379, i64* %3, align 8
  %2380 = inttoptr i64 %2378 to i32*
  %2381 = load i32, i32* %2380, align 4
  %2382 = sext i32 %2381 to i64
  store i64 %2382, i64* %RCX.i1399, align 8
  %2383 = shl nsw i64 %2382, 3
  %2384 = add i64 %2383, %2377
  %2385 = add i64 %2369, 15
  store i64 %2385, i64* %3, align 8
  %2386 = inttoptr i64 %2384 to i64*
  %2387 = load i64, i64* %2386, align 8
  store i64 %2387, i64* %RAX.i1412, align 8
  %2388 = add i64 %2387, 16
  %2389 = add i64 %2369, 19
  store i64 %2389, i64* %3, align 8
  %2390 = inttoptr i64 %2388 to i64*
  %2391 = load i64, i64* %2390, align 8
  store i64 %2391, i64* %RAX.i1412, align 8
  %2392 = add i64 %2367, -60
  %2393 = add i64 %2369, 23
  store i64 %2393, i64* %3, align 8
  %2394 = inttoptr i64 %2392 to i32*
  %2395 = load i32, i32* %2394, align 4
  %2396 = sext i32 %2395 to i64
  store i64 %2396, i64* %RCX.i1399, align 8
  %2397 = shl nsw i64 %2396, 2
  %2398 = add i64 %2397, %2391
  %2399 = add i64 %2369, 26
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2398 to i32*
  store i32 %2372, i32* %2400, align 4
  %2401 = load i64, i64* %RBP.i, align 8
  %2402 = add i64 %2401, -48
  %2403 = load i64, i64* %3, align 8
  %2404 = add i64 %2403, 3
  store i64 %2404, i64* %3, align 8
  %2405 = inttoptr i64 %2402 to i32*
  %2406 = load i32, i32* %2405, align 4
  %2407 = zext i32 %2406 to i64
  store i64 %2407, i64* %RDX.i1385, align 8
  %2408 = add i64 %2401, -40
  %2409 = add i64 %2403, 7
  store i64 %2409, i64* %3, align 8
  %2410 = inttoptr i64 %2408 to i64*
  %2411 = load i64, i64* %2410, align 8
  store i64 %2411, i64* %RAX.i1412, align 8
  %2412 = add i64 %2401, -44
  %2413 = add i64 %2403, 11
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i32*
  %2415 = load i32, i32* %2414, align 4
  %2416 = sext i32 %2415 to i64
  store i64 %2416, i64* %RCX.i1399, align 8
  %2417 = shl nsw i64 %2416, 3
  %2418 = add i64 %2417, %2411
  %2419 = add i64 %2403, 15
  store i64 %2419, i64* %3, align 8
  %2420 = inttoptr i64 %2418 to i64*
  %2421 = load i64, i64* %2420, align 8
  store i64 %2421, i64* %RAX.i1412, align 8
  %2422 = add i64 %2421, 24
  %2423 = add i64 %2403, 19
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2422 to i64*
  %2425 = load i64, i64* %2424, align 8
  store i64 %2425, i64* %RAX.i1412, align 8
  %2426 = add i64 %2401, -60
  %2427 = add i64 %2403, 23
  store i64 %2427, i64* %3, align 8
  %2428 = inttoptr i64 %2426 to i32*
  %2429 = load i32, i32* %2428, align 4
  %2430 = sext i32 %2429 to i64
  store i64 %2430, i64* %RCX.i1399, align 8
  %2431 = shl nsw i64 %2430, 2
  %2432 = add i64 %2431, %2425
  %2433 = add i64 %2403, 26
  store i64 %2433, i64* %3, align 8
  %2434 = inttoptr i64 %2432 to i32*
  store i32 %2406, i32* %2434, align 4
  %2435 = load i64, i64* %RBP.i, align 8
  %2436 = add i64 %2435, -48
  %2437 = load i64, i64* %3, align 8
  %2438 = add i64 %2437, 3
  store i64 %2438, i64* %3, align 8
  %2439 = inttoptr i64 %2436 to i32*
  %2440 = load i32, i32* %2439, align 4
  %2441 = add i32 %2440, 1
  %2442 = zext i32 %2441 to i64
  store i64 %2442, i64* %RDX.i1385, align 8
  %2443 = icmp eq i32 %2440, -1
  %2444 = icmp eq i32 %2441, 0
  %2445 = or i1 %2443, %2444
  %2446 = zext i1 %2445 to i8
  store i8 %2446, i8* %14, align 1
  %2447 = and i32 %2441, 255
  %2448 = tail call i32 @llvm.ctpop.i32(i32 %2447)
  %2449 = trunc i32 %2448 to i8
  %2450 = and i8 %2449, 1
  %2451 = xor i8 %2450, 1
  store i8 %2451, i8* %21, align 1
  %2452 = xor i32 %2441, %2440
  %2453 = lshr i32 %2452, 4
  %2454 = trunc i32 %2453 to i8
  %2455 = and i8 %2454, 1
  store i8 %2455, i8* %26, align 1
  %2456 = zext i1 %2444 to i8
  store i8 %2456, i8* %29, align 1
  %2457 = lshr i32 %2441, 31
  %2458 = trunc i32 %2457 to i8
  store i8 %2458, i8* %32, align 1
  %2459 = lshr i32 %2440, 31
  %2460 = xor i32 %2457, %2459
  %2461 = add nuw nsw i32 %2460, %2457
  %2462 = icmp eq i32 %2461, 2
  %2463 = zext i1 %2462 to i8
  store i8 %2463, i8* %38, align 1
  %2464 = add i64 %2437, 9
  store i64 %2464, i64* %3, align 8
  store i32 %2441, i32* %2439, align 4
  %2465 = load i64, i64* %RBP.i, align 8
  %2466 = add i64 %2465, -60
  %2467 = load i64, i64* %3, align 8
  %2468 = add i64 %2467, 3
  store i64 %2468, i64* %3, align 8
  %2469 = inttoptr i64 %2466 to i32*
  %2470 = load i32, i32* %2469, align 4
  %2471 = add i32 %2470, 1
  %2472 = zext i32 %2471 to i64
  store i64 %2472, i64* %RDX.i1385, align 8
  %2473 = icmp eq i32 %2470, -1
  %2474 = icmp eq i32 %2471, 0
  %2475 = or i1 %2473, %2474
  %2476 = zext i1 %2475 to i8
  store i8 %2476, i8* %14, align 1
  %2477 = and i32 %2471, 255
  %2478 = tail call i32 @llvm.ctpop.i32(i32 %2477)
  %2479 = trunc i32 %2478 to i8
  %2480 = and i8 %2479, 1
  %2481 = xor i8 %2480, 1
  store i8 %2481, i8* %21, align 1
  %2482 = xor i32 %2471, %2470
  %2483 = lshr i32 %2482, 4
  %2484 = trunc i32 %2483 to i8
  %2485 = and i8 %2484, 1
  store i8 %2485, i8* %26, align 1
  %2486 = zext i1 %2474 to i8
  store i8 %2486, i8* %29, align 1
  %2487 = lshr i32 %2471, 31
  %2488 = trunc i32 %2487 to i8
  store i8 %2488, i8* %32, align 1
  %2489 = lshr i32 %2470, 31
  %2490 = xor i32 %2487, %2489
  %2491 = add nuw nsw i32 %2490, %2487
  %2492 = icmp eq i32 %2491, 2
  %2493 = zext i1 %2492 to i8
  store i8 %2493, i8* %38, align 1
  %2494 = add i64 %2467, 9
  store i64 %2494, i64* %3, align 8
  store i32 %2471, i32* %2469, align 4
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_429c2a

block_.L_429c2a:                                  ; preds = %block_429bcc, %block_429baf, %block_429b92, %block_429b75, %block_429b58, %block_.L_429b3b
  %2495 = phi i64 [ %.pre51, %block_429bcc ], [ %2342, %block_429baf ], [ %2299, %block_429b92 ], [ %2257, %block_429b75 ], [ %2214, %block_429b58 ], [ %2172, %block_.L_429b3b ]
  %2496 = add i64 %2495, 5
  store i64 %2496, i64* %3, align 8
  br label %block_.L_429c2f

block_.L_429c2f:                                  ; preds = %block_.L_429c2a, %block_429ad7
  %storemerge38 = phi i64 [ %2129, %block_429ad7 ], [ %2496, %block_.L_429c2a ]
  %2497 = add i64 %storemerge38, 5
  store i64 %2497, i64* %3, align 8
  br label %block_.L_429c34

block_.L_429c34:                                  ; preds = %block_.L_429c2f, %block_4299c6
  %storemerge36 = phi i64 [ %1722, %block_4299c6 ], [ %2497, %block_.L_429c2f ]
  %2498 = add i64 %storemerge36, 5
  store i64 %2498, i64* %3, align 8
  br label %block_.L_429c39

block_.L_429c39:                                  ; preds = %block_.L_429c34, %block_.L_429914
  %storemerge34 = phi i64 [ %1315, %block_.L_429914 ], [ %2498, %block_.L_429c34 ]
  %2499 = add i64 %storemerge34, 5
  store i64 %2499, i64* %3, align 8
  br label %block_.L_429c3e

block_.L_429c3e:                                  ; preds = %block_.L_429c39, %block_429807
  %storemerge = phi i64 [ %1046, %block_429807 ], [ %2499, %block_.L_429c39 ]
  %2500 = load i64, i64* %RBP.i, align 8
  %2501 = add i64 %2500, -24
  %2502 = add i64 %storemerge, 4
  store i64 %2502, i64* %3, align 8
  %2503 = inttoptr i64 %2501 to i64*
  %2504 = load i64, i64* %2503, align 8
  store i64 %2504, i64* %RAX.i1412, align 8
  %2505 = add i64 %2500, -56
  %2506 = add i64 %storemerge, 7
  store i64 %2506, i64* %3, align 8
  %2507 = inttoptr i64 %2505 to i32*
  %2508 = load i32, i32* %2507, align 4
  %2509 = add i32 %2508, 1
  %2510 = zext i32 %2509 to i64
  store i64 %2510, i64* %RCX.i1399, align 8
  %2511 = icmp eq i32 %2508, -1
  %2512 = icmp eq i32 %2509, 0
  %2513 = or i1 %2511, %2512
  %2514 = zext i1 %2513 to i8
  store i8 %2514, i8* %14, align 1
  %2515 = and i32 %2509, 255
  %2516 = tail call i32 @llvm.ctpop.i32(i32 %2515)
  %2517 = trunc i32 %2516 to i8
  %2518 = and i8 %2517, 1
  %2519 = xor i8 %2518, 1
  store i8 %2519, i8* %21, align 1
  %2520 = xor i32 %2509, %2508
  %2521 = lshr i32 %2520, 4
  %2522 = trunc i32 %2521 to i8
  %2523 = and i8 %2522, 1
  store i8 %2523, i8* %26, align 1
  %2524 = zext i1 %2512 to i8
  store i8 %2524, i8* %29, align 1
  %2525 = lshr i32 %2509, 31
  %2526 = trunc i32 %2525 to i8
  store i8 %2526, i8* %32, align 1
  %2527 = lshr i32 %2508, 31
  %2528 = xor i32 %2525, %2527
  %2529 = add nuw nsw i32 %2528, %2525
  %2530 = icmp eq i32 %2529, 2
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %38, align 1
  %2532 = sext i32 %2509 to i64
  store i64 %2532, i64* %RDX.i1385, align 8
  %2533 = shl nsw i64 %2532, 2
  %2534 = add i64 %2504, %2533
  %2535 = add i64 %storemerge, 16
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2534 to i32*
  %2537 = load i32, i32* %2536, align 4
  %2538 = and i32 %2537, 4
  %2539 = zext i32 %2538 to i64
  store i64 %2539, i64* %RCX.i1399, align 8
  store i8 0, i8* %14, align 1
  %2540 = tail call i32 @llvm.ctpop.i32(i32 %2538)
  %2541 = trunc i32 %2540 to i8
  %2542 = xor i8 %2541, 1
  store i8 %2542, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2543 = icmp eq i32 %2538, 0
  %.lobit63 = lshr exact i32 %2538, 2
  %2544 = trunc i32 %.lobit63 to i8
  %2545 = xor i8 %2544, 1
  store i8 %2545, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v74 = select i1 %2543, i64 259, i64 28
  %2546 = add i64 %storemerge, %.v74
  store i64 %2546, i64* %3, align 8
  br i1 %2543, label %block_.L_429d41, label %block_429c5a

block_429c5a:                                     ; preds = %block_.L_429c3e
  %2547 = add i64 %2546, 5
  br label %block_.L_429c5f

block_.L_429c5f:                                  ; preds = %block_429c85, %block_429c5a
  %2548 = phi i64 [ %2500, %block_429c5a ], [ %.pre52, %block_429c85 ]
  %storemerge33 = phi i64 [ %2547, %block_429c5a ], [ %2654, %block_429c85 ]
  %2549 = add i64 %2548, -40
  %2550 = add i64 %storemerge33, 4
  store i64 %2550, i64* %3, align 8
  %2551 = inttoptr i64 %2549 to i64*
  %2552 = load i64, i64* %2551, align 8
  store i64 %2552, i64* %RAX.i1412, align 8
  %2553 = add i64 %2548, -44
  %2554 = add i64 %storemerge33, 8
  store i64 %2554, i64* %3, align 8
  %2555 = inttoptr i64 %2553 to i32*
  %2556 = load i32, i32* %2555, align 4
  %2557 = sext i32 %2556 to i64
  store i64 %2557, i64* %RCX.i1399, align 8
  %2558 = shl nsw i64 %2557, 3
  %2559 = add i64 %2558, %2552
  %2560 = add i64 %storemerge33, 12
  store i64 %2560, i64* %3, align 8
  %2561 = inttoptr i64 %2559 to i64*
  %2562 = load i64, i64* %2561, align 8
  store i64 %2562, i64* %RAX.i1412, align 8
  %2563 = add i64 %2562, 8
  %2564 = add i64 %storemerge33, 16
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2563 to i64*
  %2566 = load i64, i64* %2565, align 8
  store i64 %2566, i64* %RAX.i1412, align 8
  %2567 = add i64 %2548, -60
  %2568 = add i64 %storemerge33, 19
  store i64 %2568, i64* %3, align 8
  %2569 = inttoptr i64 %2567 to i32*
  %2570 = load i32, i32* %2569, align 4
  %2571 = add i32 %2570, -1
  %2572 = zext i32 %2571 to i64
  store i64 %2572, i64* %RDX.i1385, align 8
  %2573 = icmp eq i32 %2570, 0
  %2574 = zext i1 %2573 to i8
  store i8 %2574, i8* %14, align 1
  %2575 = and i32 %2571, 255
  %2576 = tail call i32 @llvm.ctpop.i32(i32 %2575)
  %2577 = trunc i32 %2576 to i8
  %2578 = and i8 %2577, 1
  %2579 = xor i8 %2578, 1
  store i8 %2579, i8* %21, align 1
  %2580 = xor i32 %2571, %2570
  %2581 = lshr i32 %2580, 4
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  store i8 %2583, i8* %26, align 1
  %2584 = icmp eq i32 %2571, 0
  %2585 = zext i1 %2584 to i8
  store i8 %2585, i8* %29, align 1
  %2586 = lshr i32 %2571, 31
  %2587 = trunc i32 %2586 to i8
  store i8 %2587, i8* %32, align 1
  %2588 = lshr i32 %2570, 31
  %2589 = xor i32 %2586, %2588
  %2590 = add nuw nsw i32 %2589, %2588
  %2591 = icmp eq i32 %2590, 2
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %38, align 1
  %2593 = sext i32 %2571 to i64
  store i64 %2593, i64* %RCX.i1399, align 8
  %2594 = add i64 %2566, %2593
  %2595 = add i64 %storemerge33, 29
  store i64 %2595, i64* %3, align 8
  %2596 = inttoptr i64 %2594 to i8*
  %2597 = load i8, i8* %2596, align 1
  %2598 = sext i8 %2597 to i64
  %2599 = and i64 %2598, 4294967295
  store i64 %2599, i64* %RDX.i1385, align 8
  %2600 = sext i8 %2597 to i32
  %2601 = add nsw i32 %2600, -2
  %2602 = icmp ult i8 %2597, 2
  %2603 = zext i1 %2602 to i8
  store i8 %2603, i8* %14, align 1
  %2604 = and i32 %2601, 255
  %2605 = tail call i32 @llvm.ctpop.i32(i32 %2604)
  %2606 = trunc i32 %2605 to i8
  %2607 = and i8 %2606, 1
  %2608 = xor i8 %2607, 1
  store i8 %2608, i8* %21, align 1
  %2609 = xor i32 %2601, %2600
  %2610 = lshr i32 %2609, 4
  %2611 = trunc i32 %2610 to i8
  %2612 = and i8 %2611, 1
  store i8 %2612, i8* %26, align 1
  %2613 = icmp eq i32 %2601, 0
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %29, align 1
  %2615 = lshr i32 %2601, 31
  %2616 = trunc i32 %2615 to i8
  store i8 %2616, i8* %32, align 1
  %2617 = lshr i32 %2600, 31
  %2618 = xor i32 %2615, %2617
  %2619 = add nuw nsw i32 %2618, %2617
  %2620 = icmp eq i32 %2619, 2
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %38, align 1
  %.v75 = select i1 %2613, i64 38, i64 52
  %2622 = add i64 %storemerge33, %.v75
  store i64 %2622, i64* %3, align 8
  %2623 = load i64, i64* %RBP.i, align 8
  br i1 %2613, label %block_429c85, label %block_.L_429c93

block_429c85:                                     ; preds = %block_.L_429c5f
  %2624 = add i64 %2623, -60
  %2625 = add i64 %2622, 3
  store i64 %2625, i64* %3, align 8
  %2626 = inttoptr i64 %2624 to i32*
  %2627 = load i32, i32* %2626, align 4
  %2628 = add i32 %2627, -1
  %2629 = zext i32 %2628 to i64
  store i64 %2629, i64* %RAX.i1412, align 8
  %2630 = icmp ne i32 %2627, 0
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %14, align 1
  %2632 = and i32 %2628, 255
  %2633 = tail call i32 @llvm.ctpop.i32(i32 %2632)
  %2634 = trunc i32 %2633 to i8
  %2635 = and i8 %2634, 1
  %2636 = xor i8 %2635, 1
  store i8 %2636, i8* %21, align 1
  %2637 = xor i32 %2627, 16
  %2638 = xor i32 %2637, %2628
  %2639 = lshr i32 %2638, 4
  %2640 = trunc i32 %2639 to i8
  %2641 = and i8 %2640, 1
  store i8 %2641, i8* %26, align 1
  %2642 = icmp eq i32 %2628, 0
  %2643 = zext i1 %2642 to i8
  store i8 %2643, i8* %29, align 1
  %2644 = lshr i32 %2628, 31
  %2645 = trunc i32 %2644 to i8
  store i8 %2645, i8* %32, align 1
  %2646 = lshr i32 %2627, 31
  %2647 = xor i32 %2644, %2646
  %2648 = xor i32 %2644, 1
  %2649 = add nuw nsw i32 %2647, %2648
  %2650 = icmp eq i32 %2649, 2
  %2651 = zext i1 %2650 to i8
  store i8 %2651, i8* %38, align 1
  %2652 = add i64 %2622, 9
  store i64 %2652, i64* %3, align 8
  store i32 %2628, i32* %2626, align 4
  %2653 = load i64, i64* %3, align 8
  %2654 = add i64 %2653, -47
  %2655 = add i64 %2653, 5
  store i64 %2655, i64* %3, align 8
  %.pre52 = load i64, i64* %RBP.i, align 8
  br label %block_.L_429c5f

block_.L_429c93:                                  ; preds = %block_.L_429c5f
  %2656 = add i64 %2623, -40
  %2657 = add i64 %2622, 4
  store i64 %2657, i64* %3, align 8
  %2658 = inttoptr i64 %2656 to i64*
  %2659 = load i64, i64* %2658, align 8
  store i64 %2659, i64* %RAX.i1412, align 8
  %2660 = add i64 %2623, -44
  %2661 = add i64 %2622, 8
  store i64 %2661, i64* %3, align 8
  %2662 = inttoptr i64 %2660 to i32*
  %2663 = load i32, i32* %2662, align 4
  %2664 = sext i32 %2663 to i64
  store i64 %2664, i64* %RCX.i1399, align 8
  %2665 = shl nsw i64 %2664, 3
  %2666 = add i64 %2665, %2659
  %2667 = add i64 %2622, 12
  store i64 %2667, i64* %3, align 8
  %2668 = inttoptr i64 %2666 to i64*
  %2669 = load i64, i64* %2668, align 8
  store i64 %2669, i64* %RAX.i1412, align 8
  %2670 = add i64 %2669, 8
  %2671 = add i64 %2622, 16
  store i64 %2671, i64* %3, align 8
  %2672 = inttoptr i64 %2670 to i64*
  %2673 = load i64, i64* %2672, align 8
  store i64 %2673, i64* %RAX.i1412, align 8
  %2674 = add i64 %2623, -60
  %2675 = add i64 %2622, 20
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i32*
  %2677 = load i32, i32* %2676, align 4
  %2678 = sext i32 %2677 to i64
  store i64 %2678, i64* %RCX.i1399, align 8
  %2679 = add i64 %2673, %2678
  %2680 = add i64 %2622, 24
  store i64 %2680, i64* %3, align 8
  %2681 = inttoptr i64 %2679 to i8*
  store i8 7, i8* %2681, align 1
  %2682 = load i64, i64* %RBP.i, align 8
  %2683 = add i64 %2682, -40
  %2684 = load i64, i64* %3, align 8
  %2685 = add i64 %2684, 4
  store i64 %2685, i64* %3, align 8
  %2686 = inttoptr i64 %2683 to i64*
  %2687 = load i64, i64* %2686, align 8
  store i64 %2687, i64* %RAX.i1412, align 8
  %2688 = add i64 %2682, -44
  %2689 = add i64 %2684, 8
  store i64 %2689, i64* %3, align 8
  %2690 = inttoptr i64 %2688 to i32*
  %2691 = load i32, i32* %2690, align 4
  %2692 = sext i32 %2691 to i64
  store i64 %2692, i64* %RCX.i1399, align 8
  %2693 = shl nsw i64 %2692, 3
  %2694 = add i64 %2693, %2687
  %2695 = add i64 %2684, 12
  store i64 %2695, i64* %3, align 8
  %2696 = inttoptr i64 %2694 to i64*
  %2697 = load i64, i64* %2696, align 8
  store i64 %2697, i64* %RAX.i1412, align 8
  %2698 = add i64 %2697, 16
  %2699 = add i64 %2684, 16
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to i64*
  %2701 = load i64, i64* %2700, align 8
  store i64 %2701, i64* %RAX.i1412, align 8
  %2702 = add i64 %2682, -60
  %2703 = add i64 %2684, 20
  store i64 %2703, i64* %3, align 8
  %2704 = inttoptr i64 %2702 to i32*
  %2705 = load i32, i32* %2704, align 4
  %2706 = sext i32 %2705 to i64
  store i64 %2706, i64* %RCX.i1399, align 8
  %2707 = shl nsw i64 %2706, 2
  %2708 = add i64 %2707, %2701
  %2709 = add i64 %2684, 27
  store i64 %2709, i64* %3, align 8
  %2710 = inttoptr i64 %2708 to i32*
  store i32 0, i32* %2710, align 4
  %2711 = load i64, i64* %RBP.i, align 8
  %2712 = add i64 %2711, -40
  %2713 = load i64, i64* %3, align 8
  %2714 = add i64 %2713, 4
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2712 to i64*
  %2716 = load i64, i64* %2715, align 8
  store i64 %2716, i64* %RAX.i1412, align 8
  %2717 = add i64 %2711, -44
  %2718 = add i64 %2713, 8
  store i64 %2718, i64* %3, align 8
  %2719 = inttoptr i64 %2717 to i32*
  %2720 = load i32, i32* %2719, align 4
  %2721 = sext i32 %2720 to i64
  store i64 %2721, i64* %RCX.i1399, align 8
  %2722 = shl nsw i64 %2721, 3
  %2723 = add i64 %2722, %2716
  %2724 = add i64 %2713, 12
  store i64 %2724, i64* %3, align 8
  %2725 = inttoptr i64 %2723 to i64*
  %2726 = load i64, i64* %2725, align 8
  store i64 %2726, i64* %RAX.i1412, align 8
  %2727 = add i64 %2726, 24
  %2728 = add i64 %2713, 16
  store i64 %2728, i64* %3, align 8
  %2729 = inttoptr i64 %2727 to i64*
  %2730 = load i64, i64* %2729, align 8
  store i64 %2730, i64* %RAX.i1412, align 8
  %2731 = add i64 %2711, -60
  %2732 = add i64 %2713, 20
  store i64 %2732, i64* %3, align 8
  %2733 = inttoptr i64 %2731 to i32*
  %2734 = load i32, i32* %2733, align 4
  %2735 = sext i32 %2734 to i64
  store i64 %2735, i64* %RCX.i1399, align 8
  %2736 = shl nsw i64 %2735, 2
  %2737 = add i64 %2736, %2730
  %2738 = add i64 %2713, 27
  store i64 %2738, i64* %3, align 8
  %2739 = inttoptr i64 %2737 to i32*
  store i32 0, i32* %2739, align 4
  %2740 = load i64, i64* %RBP.i, align 8
  %2741 = add i64 %2740, -60
  %2742 = load i64, i64* %3, align 8
  %2743 = add i64 %2742, 3
  store i64 %2743, i64* %3, align 8
  %2744 = inttoptr i64 %2741 to i32*
  %2745 = load i32, i32* %2744, align 4
  %2746 = add i32 %2745, 1
  %2747 = zext i32 %2746 to i64
  store i64 %2747, i64* %RDX.i1385, align 8
  %2748 = icmp eq i32 %2745, -1
  %2749 = icmp eq i32 %2746, 0
  %2750 = or i1 %2748, %2749
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %14, align 1
  %2752 = and i32 %2746, 255
  %2753 = tail call i32 @llvm.ctpop.i32(i32 %2752)
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  %2756 = xor i8 %2755, 1
  store i8 %2756, i8* %21, align 1
  %2757 = xor i32 %2746, %2745
  %2758 = lshr i32 %2757, 4
  %2759 = trunc i32 %2758 to i8
  %2760 = and i8 %2759, 1
  store i8 %2760, i8* %26, align 1
  %2761 = zext i1 %2749 to i8
  store i8 %2761, i8* %29, align 1
  %2762 = lshr i32 %2746, 31
  %2763 = trunc i32 %2762 to i8
  store i8 %2763, i8* %32, align 1
  %2764 = lshr i32 %2745, 31
  %2765 = xor i32 %2762, %2764
  %2766 = add nuw nsw i32 %2765, %2762
  %2767 = icmp eq i32 %2766, 2
  %2768 = zext i1 %2767 to i8
  store i8 %2768, i8* %38, align 1
  %2769 = add i64 %2742, 9
  store i64 %2769, i64* %3, align 8
  store i32 %2746, i32* %2744, align 4
  %2770 = load i64, i64* %RBP.i, align 8
  %2771 = add i64 %2770, -40
  %2772 = load i64, i64* %3, align 8
  %2773 = add i64 %2772, 4
  store i64 %2773, i64* %3, align 8
  %2774 = inttoptr i64 %2771 to i64*
  %2775 = load i64, i64* %2774, align 8
  store i64 %2775, i64* %RAX.i1412, align 8
  %2776 = add i64 %2770, -44
  %2777 = add i64 %2772, 8
  store i64 %2777, i64* %3, align 8
  %2778 = inttoptr i64 %2776 to i32*
  %2779 = load i32, i32* %2778, align 4
  %2780 = sext i32 %2779 to i64
  store i64 %2780, i64* %RCX.i1399, align 8
  %2781 = shl nsw i64 %2780, 3
  %2782 = add i64 %2781, %2775
  %2783 = add i64 %2772, 12
  store i64 %2783, i64* %3, align 8
  %2784 = inttoptr i64 %2782 to i64*
  %2785 = load i64, i64* %2784, align 8
  store i64 %2785, i64* %RAX.i1412, align 8
  %2786 = add i64 %2785, 8
  %2787 = add i64 %2772, 16
  store i64 %2787, i64* %3, align 8
  %2788 = inttoptr i64 %2786 to i64*
  %2789 = load i64, i64* %2788, align 8
  store i64 %2789, i64* %RAX.i1412, align 8
  %2790 = add i64 %2770, -60
  %2791 = add i64 %2772, 20
  store i64 %2791, i64* %3, align 8
  %2792 = inttoptr i64 %2790 to i32*
  %2793 = load i32, i32* %2792, align 4
  %2794 = sext i32 %2793 to i64
  store i64 %2794, i64* %RCX.i1399, align 8
  %2795 = add i64 %2789, %2794
  %2796 = add i64 %2772, 24
  store i64 %2796, i64* %3, align 8
  %2797 = inttoptr i64 %2795 to i8*
  store i8 8, i8* %2797, align 1
  %2798 = load i64, i64* %RBP.i, align 8
  %2799 = add i64 %2798, -40
  %2800 = load i64, i64* %3, align 8
  %2801 = add i64 %2800, 4
  store i64 %2801, i64* %3, align 8
  %2802 = inttoptr i64 %2799 to i64*
  %2803 = load i64, i64* %2802, align 8
  store i64 %2803, i64* %RAX.i1412, align 8
  %2804 = add i64 %2798, -44
  %2805 = add i64 %2800, 8
  store i64 %2805, i64* %3, align 8
  %2806 = inttoptr i64 %2804 to i32*
  %2807 = load i32, i32* %2806, align 4
  %2808 = sext i32 %2807 to i64
  store i64 %2808, i64* %RCX.i1399, align 8
  %2809 = shl nsw i64 %2808, 3
  %2810 = add i64 %2809, %2803
  %2811 = add i64 %2800, 12
  store i64 %2811, i64* %3, align 8
  %2812 = inttoptr i64 %2810 to i64*
  %2813 = load i64, i64* %2812, align 8
  store i64 %2813, i64* %RAX.i1412, align 8
  %2814 = add i64 %2813, 16
  %2815 = add i64 %2800, 16
  store i64 %2815, i64* %3, align 8
  %2816 = inttoptr i64 %2814 to i64*
  %2817 = load i64, i64* %2816, align 8
  store i64 %2817, i64* %RAX.i1412, align 8
  %2818 = add i64 %2798, -60
  %2819 = add i64 %2800, 20
  store i64 %2819, i64* %3, align 8
  %2820 = inttoptr i64 %2818 to i32*
  %2821 = load i32, i32* %2820, align 4
  %2822 = sext i32 %2821 to i64
  store i64 %2822, i64* %RCX.i1399, align 8
  %2823 = shl nsw i64 %2822, 2
  %2824 = add i64 %2823, %2817
  %2825 = add i64 %2800, 27
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2824 to i32*
  store i32 0, i32* %2826, align 4
  %2827 = load i64, i64* %RBP.i, align 8
  %2828 = add i64 %2827, -40
  %2829 = load i64, i64* %3, align 8
  %2830 = add i64 %2829, 4
  store i64 %2830, i64* %3, align 8
  %2831 = inttoptr i64 %2828 to i64*
  %2832 = load i64, i64* %2831, align 8
  store i64 %2832, i64* %RAX.i1412, align 8
  %2833 = add i64 %2827, -44
  %2834 = add i64 %2829, 8
  store i64 %2834, i64* %3, align 8
  %2835 = inttoptr i64 %2833 to i32*
  %2836 = load i32, i32* %2835, align 4
  %2837 = sext i32 %2836 to i64
  store i64 %2837, i64* %RCX.i1399, align 8
  %2838 = shl nsw i64 %2837, 3
  %2839 = add i64 %2838, %2832
  %2840 = add i64 %2829, 12
  store i64 %2840, i64* %3, align 8
  %2841 = inttoptr i64 %2839 to i64*
  %2842 = load i64, i64* %2841, align 8
  store i64 %2842, i64* %RAX.i1412, align 8
  %2843 = add i64 %2842, 24
  %2844 = add i64 %2829, 16
  store i64 %2844, i64* %3, align 8
  %2845 = inttoptr i64 %2843 to i64*
  %2846 = load i64, i64* %2845, align 8
  store i64 %2846, i64* %RAX.i1412, align 8
  %2847 = add i64 %2827, -60
  %2848 = add i64 %2829, 20
  store i64 %2848, i64* %3, align 8
  %2849 = inttoptr i64 %2847 to i32*
  %2850 = load i32, i32* %2849, align 4
  %2851 = sext i32 %2850 to i64
  store i64 %2851, i64* %RCX.i1399, align 8
  %2852 = shl nsw i64 %2851, 2
  %2853 = add i64 %2852, %2846
  %2854 = add i64 %2829, 27
  store i64 %2854, i64* %3, align 8
  %2855 = inttoptr i64 %2853 to i32*
  store i32 0, i32* %2855, align 4
  %2856 = load i64, i64* %RBP.i, align 8
  %2857 = add i64 %2856, -60
  %2858 = load i64, i64* %3, align 8
  %2859 = add i64 %2858, 3
  store i64 %2859, i64* %3, align 8
  %2860 = inttoptr i64 %2857 to i32*
  %2861 = load i32, i32* %2860, align 4
  %2862 = add i32 %2861, 1
  %2863 = zext i32 %2862 to i64
  store i64 %2863, i64* %RDX.i1385, align 8
  %2864 = icmp eq i32 %2861, -1
  %2865 = icmp eq i32 %2862, 0
  %2866 = or i1 %2864, %2865
  %2867 = zext i1 %2866 to i8
  store i8 %2867, i8* %14, align 1
  %2868 = and i32 %2862, 255
  %2869 = tail call i32 @llvm.ctpop.i32(i32 %2868)
  %2870 = trunc i32 %2869 to i8
  %2871 = and i8 %2870, 1
  %2872 = xor i8 %2871, 1
  store i8 %2872, i8* %21, align 1
  %2873 = xor i32 %2862, %2861
  %2874 = lshr i32 %2873, 4
  %2875 = trunc i32 %2874 to i8
  %2876 = and i8 %2875, 1
  store i8 %2876, i8* %26, align 1
  %2877 = zext i1 %2865 to i8
  store i8 %2877, i8* %29, align 1
  %2878 = lshr i32 %2862, 31
  %2879 = trunc i32 %2878 to i8
  store i8 %2879, i8* %32, align 1
  %2880 = lshr i32 %2861, 31
  %2881 = xor i32 %2878, %2880
  %2882 = add nuw nsw i32 %2881, %2878
  %2883 = icmp eq i32 %2882, 2
  %2884 = zext i1 %2883 to i8
  store i8 %2884, i8* %38, align 1
  %2885 = add i64 %2858, 9
  store i64 %2885, i64* %3, align 8
  store i32 %2862, i32* %2860, align 4
  %.pre53 = load i64, i64* %3, align 8
  %.pre54 = load i64, i64* %RBP.i, align 8
  br label %block_.L_429d41

block_.L_429d41:                                  ; preds = %block_.L_429c93, %block_.L_429c3e
  %2886 = phi i64 [ %.pre54, %block_.L_429c93 ], [ %2500, %block_.L_429c3e ]
  %2887 = phi i64 [ %.pre53, %block_.L_429c93 ], [ %2546, %block_.L_429c3e ]
  %2888 = add i64 %2886, -56
  %2889 = add i64 %2887, 8
  store i64 %2889, i64* %3, align 8
  %2890 = inttoptr i64 %2888 to i32*
  %2891 = load i32, i32* %2890, align 4
  %2892 = add i32 %2891, 1
  %2893 = zext i32 %2892 to i64
  store i64 %2893, i64* %RAX.i1412, align 8
  %2894 = icmp eq i32 %2891, -1
  %2895 = icmp eq i32 %2892, 0
  %2896 = or i1 %2894, %2895
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %14, align 1
  %2898 = and i32 %2892, 255
  %2899 = tail call i32 @llvm.ctpop.i32(i32 %2898)
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  %2902 = xor i8 %2901, 1
  store i8 %2902, i8* %21, align 1
  %2903 = xor i32 %2892, %2891
  %2904 = lshr i32 %2903, 4
  %2905 = trunc i32 %2904 to i8
  %2906 = and i8 %2905, 1
  store i8 %2906, i8* %26, align 1
  %2907 = zext i1 %2895 to i8
  store i8 %2907, i8* %29, align 1
  %2908 = lshr i32 %2892, 31
  %2909 = trunc i32 %2908 to i8
  store i8 %2909, i8* %32, align 1
  %2910 = lshr i32 %2891, 31
  %2911 = xor i32 %2908, %2910
  %2912 = add nuw nsw i32 %2911, %2908
  %2913 = icmp eq i32 %2912, 2
  %2914 = zext i1 %2913 to i8
  store i8 %2914, i8* %38, align 1
  %2915 = add i64 %2887, 14
  store i64 %2915, i64* %3, align 8
  store i32 %2892, i32* %2890, align 4
  %2916 = load i64, i64* %3, align 8
  %2917 = add i64 %2916, -1676
  store i64 %2917, i64* %3, align 8
  br label %block_.L_4296c3

block_.L_429d54:                                  ; preds = %block_.L_4296c3
  store i64 0, i64* %RAX.i1412, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i1399, align 8
  %2918 = add i64 %372, -40
  %2919 = add i64 %408, 8
  store i64 %2919, i64* %3, align 8
  %2920 = inttoptr i64 %2918 to i64*
  %2921 = load i64, i64* %2920, align 8
  store i64 %2921, i64* %RDX.i1385, align 8
  %2922 = add i64 %372, -44
  %2923 = add i64 %408, 12
  store i64 %2923, i64* %3, align 8
  %2924 = inttoptr i64 %2922 to i32*
  %2925 = load i32, i32* %2924, align 4
  %2926 = sext i32 %2925 to i64
  store i64 %2926, i64* %RSI.i1387, align 8
  %2927 = shl nsw i64 %2926, 3
  %2928 = add i64 %2927, %2921
  %2929 = add i64 %408, 16
  store i64 %2929, i64* %3, align 8
  %2930 = inttoptr i64 %2928 to i64*
  %2931 = load i64, i64* %2930, align 8
  store i64 %2931, i64* %RDX.i1385, align 8
  %2932 = add i64 %2931, 8
  %2933 = add i64 %408, 20
  store i64 %2933, i64* %3, align 8
  %2934 = inttoptr i64 %2932 to i64*
  %2935 = load i64, i64* %2934, align 8
  store i64 %2935, i64* %RDX.i1385, align 8
  %2936 = add i64 %372, -60
  %2937 = add i64 %408, 24
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i32*
  %2939 = load i32, i32* %2938, align 4
  %2940 = sext i32 %2939 to i64
  store i64 %2940, i64* %RSI.i1387, align 8
  %2941 = add i64 %2935, %2940
  %2942 = add i64 %408, 28
  store i64 %2942, i64* %3, align 8
  %2943 = inttoptr i64 %2941 to i8*
  store i8 9, i8* %2943, align 1
  %2944 = load i64, i64* %RBP.i, align 8
  %2945 = add i64 %2944, -40
  %2946 = load i64, i64* %3, align 8
  %2947 = add i64 %2946, 4
  store i64 %2947, i64* %3, align 8
  %2948 = inttoptr i64 %2945 to i64*
  %2949 = load i64, i64* %2948, align 8
  store i64 %2949, i64* %RDX.i1385, align 8
  %2950 = add i64 %2944, -44
  %2951 = add i64 %2946, 8
  store i64 %2951, i64* %3, align 8
  %2952 = inttoptr i64 %2950 to i32*
  %2953 = load i32, i32* %2952, align 4
  %2954 = sext i32 %2953 to i64
  store i64 %2954, i64* %RSI.i1387, align 8
  %2955 = shl nsw i64 %2954, 3
  %2956 = add i64 %2955, %2949
  %2957 = add i64 %2946, 12
  store i64 %2957, i64* %3, align 8
  %2958 = inttoptr i64 %2956 to i64*
  %2959 = load i64, i64* %2958, align 8
  store i64 %2959, i64* %RDX.i1385, align 8
  %2960 = add i64 %2959, 16
  %2961 = add i64 %2946, 16
  store i64 %2961, i64* %3, align 8
  %2962 = inttoptr i64 %2960 to i64*
  %2963 = load i64, i64* %2962, align 8
  store i64 %2963, i64* %RDX.i1385, align 8
  %2964 = add i64 %2944, -60
  %2965 = add i64 %2946, 20
  store i64 %2965, i64* %3, align 8
  %2966 = inttoptr i64 %2964 to i32*
  %2967 = load i32, i32* %2966, align 4
  %2968 = sext i32 %2967 to i64
  store i64 %2968, i64* %RSI.i1387, align 8
  %2969 = shl nsw i64 %2968, 2
  %2970 = add i64 %2969, %2963
  %2971 = add i64 %2946, 27
  store i64 %2971, i64* %3, align 8
  %2972 = inttoptr i64 %2970 to i32*
  store i32 0, i32* %2972, align 4
  %2973 = load i64, i64* %RBP.i, align 8
  %2974 = add i64 %2973, -40
  %2975 = load i64, i64* %3, align 8
  %2976 = add i64 %2975, 4
  store i64 %2976, i64* %3, align 8
  %2977 = inttoptr i64 %2974 to i64*
  %2978 = load i64, i64* %2977, align 8
  store i64 %2978, i64* %RDX.i1385, align 8
  %2979 = add i64 %2973, -44
  %2980 = add i64 %2975, 8
  store i64 %2980, i64* %3, align 8
  %2981 = inttoptr i64 %2979 to i32*
  %2982 = load i32, i32* %2981, align 4
  %2983 = sext i32 %2982 to i64
  store i64 %2983, i64* %RSI.i1387, align 8
  %2984 = shl nsw i64 %2983, 3
  %2985 = add i64 %2984, %2978
  %2986 = add i64 %2975, 12
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2985 to i64*
  %2988 = load i64, i64* %2987, align 8
  store i64 %2988, i64* %RDX.i1385, align 8
  %2989 = add i64 %2988, 24
  %2990 = add i64 %2975, 16
  store i64 %2990, i64* %3, align 8
  %2991 = inttoptr i64 %2989 to i64*
  %2992 = load i64, i64* %2991, align 8
  store i64 %2992, i64* %RDX.i1385, align 8
  %2993 = add i64 %2973, -60
  %2994 = add i64 %2975, 20
  store i64 %2994, i64* %3, align 8
  %2995 = inttoptr i64 %2993 to i32*
  %2996 = load i32, i32* %2995, align 4
  %2997 = sext i32 %2996 to i64
  store i64 %2997, i64* %RSI.i1387, align 8
  %2998 = shl nsw i64 %2997, 2
  %2999 = add i64 %2998, %2992
  %3000 = add i64 %2975, 27
  store i64 %3000, i64* %3, align 8
  %3001 = inttoptr i64 %2999 to i32*
  store i32 0, i32* %3001, align 4
  %3002 = load i64, i64* %RBP.i, align 8
  %3003 = add i64 %3002, -60
  %3004 = load i64, i64* %3, align 8
  %3005 = add i64 %3004, 3
  store i64 %3005, i64* %3, align 8
  %3006 = inttoptr i64 %3003 to i32*
  %3007 = load i32, i32* %3006, align 4
  %3008 = add i32 %3007, 1
  %3009 = zext i32 %3008 to i64
  store i64 %3009, i64* %RAX.i1412, align 8
  %3010 = icmp eq i32 %3007, -1
  %3011 = icmp eq i32 %3008, 0
  %3012 = or i1 %3010, %3011
  %3013 = zext i1 %3012 to i8
  store i8 %3013, i8* %14, align 1
  %3014 = and i32 %3008, 255
  %3015 = tail call i32 @llvm.ctpop.i32(i32 %3014)
  %3016 = trunc i32 %3015 to i8
  %3017 = and i8 %3016, 1
  %3018 = xor i8 %3017, 1
  store i8 %3018, i8* %21, align 1
  %3019 = xor i32 %3008, %3007
  %3020 = lshr i32 %3019, 4
  %3021 = trunc i32 %3020 to i8
  %3022 = and i8 %3021, 1
  store i8 %3022, i8* %26, align 1
  %3023 = zext i1 %3011 to i8
  store i8 %3023, i8* %29, align 1
  %3024 = lshr i32 %3008, 31
  %3025 = trunc i32 %3024 to i8
  store i8 %3025, i8* %32, align 1
  %3026 = lshr i32 %3007, 31
  %3027 = xor i32 %3024, %3026
  %3028 = add nuw nsw i32 %3027, %3024
  %3029 = icmp eq i32 %3028, 2
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %38, align 1
  %3031 = add i64 %3004, 9
  store i64 %3031, i64* %3, align 8
  store i32 %3008, i32* %3006, align 4
  %3032 = load i64, i64* %RBP.i, align 8
  %3033 = add i64 %3032, -40
  %3034 = load i64, i64* %3, align 8
  %3035 = add i64 %3034, 4
  store i64 %3035, i64* %3, align 8
  %3036 = inttoptr i64 %3033 to i64*
  %3037 = load i64, i64* %3036, align 8
  store i64 %3037, i64* %RDX.i1385, align 8
  %3038 = add i64 %3032, -44
  %3039 = add i64 %3034, 8
  store i64 %3039, i64* %3, align 8
  %3040 = inttoptr i64 %3038 to i32*
  %3041 = load i32, i32* %3040, align 4
  %3042 = sext i32 %3041 to i64
  store i64 %3042, i64* %RSI.i1387, align 8
  %3043 = shl nsw i64 %3042, 3
  %3044 = add i64 %3043, %3037
  %3045 = add i64 %3034, 12
  store i64 %3045, i64* %3, align 8
  %3046 = inttoptr i64 %3044 to i64*
  %3047 = load i64, i64* %3046, align 8
  store i64 %3047, i64* %RDX.i1385, align 8
  %3048 = load i32, i32* %EAX.i1372, align 4
  %3049 = add i64 %3034, 14
  store i64 %3049, i64* %3, align 8
  %3050 = inttoptr i64 %3047 to i32*
  store i32 %3048, i32* %3050, align 4
  %3051 = load i64, i64* %RBP.i, align 8
  %3052 = add i64 %3051, -40
  %3053 = load i64, i64* %3, align 8
  %3054 = add i64 %3053, 4
  store i64 %3054, i64* %3, align 8
  %3055 = inttoptr i64 %3052 to i64*
  %3056 = load i64, i64* %3055, align 8
  store i64 %3056, i64* %RDX.i1385, align 8
  %3057 = add i64 %3051, -44
  %3058 = add i64 %3053, 8
  store i64 %3058, i64* %3, align 8
  %3059 = inttoptr i64 %3057 to i32*
  %3060 = load i32, i32* %3059, align 4
  %3061 = sext i32 %3060 to i64
  store i64 %3061, i64* %RSI.i1387, align 8
  %3062 = shl nsw i64 %3061, 3
  %3063 = add i64 %3062, %3056
  %3064 = add i64 %3053, 12
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3063 to i64*
  %3066 = load i64, i64* %3065, align 8
  store i64 %3066, i64* %RDI.i1407, align 8
  %3067 = add i64 %3051, -52
  %3068 = add i64 %3053, 15
  store i64 %3068, i64* %3, align 8
  %3069 = inttoptr i64 %3067 to i32*
  %3070 = load i32, i32* %3069, align 4
  %3071 = zext i32 %3070 to i64
  store i64 %3071, i64* %RSI.i1387, align 8
  %3072 = load i64, i64* %RCX.i1399, align 8
  store i64 %3072, i64* %RDX.i1385, align 8
  %3073 = add i64 %3053, 2307
  %3074 = add i64 %3053, 23
  %3075 = load i64, i64* %6, align 8
  %3076 = add i64 %3075, -8
  %3077 = inttoptr i64 %3076 to i64*
  store i64 %3074, i64* %3077, align 8
  store i64 %3076, i64* %6, align 8
  store i64 %3073, i64* %3, align 8
  %call2_429dcf = tail call %struct.Memory* @sub_42a6c0.trace_doctor(%struct.State* nonnull %0, i64 %3073, %struct.Memory* %call2_4295eb)
  %3078 = load i64, i64* %RBP.i, align 8
  %3079 = add i64 %3078, -44
  %3080 = load i64, i64* %3, align 8
  %3081 = add i64 %3080, 3
  store i64 %3081, i64* %3, align 8
  %3082 = inttoptr i64 %3079 to i32*
  %3083 = load i32, i32* %3082, align 4
  %3084 = add i32 %3083, 1
  %3085 = zext i32 %3084 to i64
  store i64 %3085, i64* %RAX.i1412, align 8
  %3086 = icmp eq i32 %3083, -1
  %3087 = icmp eq i32 %3084, 0
  %3088 = or i1 %3086, %3087
  %3089 = zext i1 %3088 to i8
  store i8 %3089, i8* %14, align 1
  %3090 = and i32 %3084, 255
  %3091 = tail call i32 @llvm.ctpop.i32(i32 %3090)
  %3092 = trunc i32 %3091 to i8
  %3093 = and i8 %3092, 1
  %3094 = xor i8 %3093, 1
  store i8 %3094, i8* %21, align 1
  %3095 = xor i32 %3084, %3083
  %3096 = lshr i32 %3095, 4
  %3097 = trunc i32 %3096 to i8
  %3098 = and i8 %3097, 1
  store i8 %3098, i8* %26, align 1
  %3099 = zext i1 %3087 to i8
  store i8 %3099, i8* %29, align 1
  %3100 = lshr i32 %3084, 31
  %3101 = trunc i32 %3100 to i8
  store i8 %3101, i8* %32, align 1
  %3102 = lshr i32 %3083, 31
  %3103 = xor i32 %3100, %3102
  %3104 = add nuw nsw i32 %3103, %3100
  %3105 = icmp eq i32 %3104, 2
  %3106 = zext i1 %3105 to i8
  store i8 %3106, i8* %38, align 1
  %3107 = add i64 %3080, 9
  store i64 %3107, i64* %3, align 8
  store i32 %3084, i32* %3082, align 4
  %3108 = load i64, i64* %3, align 8
  %3109 = add i64 %3108, -2018
  store i64 %3109, i64* %3, align 8
  br label %block_.L_4295fb

block_.L_429de2:                                  ; preds = %block_.L_4295fb
  %3110 = add i64 %112, -40
  %3111 = add i64 %148, 4
  store i64 %3111, i64* %3, align 8
  %3112 = inttoptr i64 %3110 to i64*
  %3113 = load i64, i64* %3112, align 8
  store i64 %3113, i64* %RAX.i1412, align 8
  %3114 = add i64 %112, -32
  %3115 = add i64 %148, 8
  store i64 %3115, i64* %3, align 8
  %3116 = inttoptr i64 %3114 to i64*
  %3117 = load i64, i64* %3116, align 8
  store i64 %3117, i64* %RCX.i1399, align 8
  %3118 = add i64 %148, 11
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3117 to i64*
  store i64 %3113, i64* %3119, align 8
  %3120 = load i64, i64* %6, align 8
  %3121 = load i64, i64* %3, align 8
  %3122 = add i64 %3120, 64
  store i64 %3122, i64* %6, align 8
  %3123 = icmp ugt i64 %3120, -65
  %3124 = zext i1 %3123 to i8
  store i8 %3124, i8* %14, align 1
  %3125 = trunc i64 %3122 to i32
  %3126 = and i32 %3125, 255
  %3127 = tail call i32 @llvm.ctpop.i32(i32 %3126)
  %3128 = trunc i32 %3127 to i8
  %3129 = and i8 %3128, 1
  %3130 = xor i8 %3129, 1
  store i8 %3130, i8* %21, align 1
  %3131 = xor i64 %3122, %3120
  %3132 = lshr i64 %3131, 4
  %3133 = trunc i64 %3132 to i8
  %3134 = and i8 %3133, 1
  store i8 %3134, i8* %26, align 1
  %3135 = icmp eq i64 %3122, 0
  %3136 = zext i1 %3135 to i8
  store i8 %3136, i8* %29, align 1
  %3137 = lshr i64 %3122, 63
  %3138 = trunc i64 %3137 to i8
  store i8 %3138, i8* %32, align 1
  %3139 = lshr i64 %3120, 63
  %3140 = xor i64 %3137, %3139
  %3141 = add nuw nsw i64 %3140, %3137
  %3142 = icmp eq i64 %3141, 2
  %3143 = zext i1 %3142 to i8
  store i8 %3143, i8* %38, align 1
  %3144 = add i64 %3121, 5
  store i64 %3144, i64* %3, align 8
  %3145 = add i64 %3120, 72
  %3146 = inttoptr i64 %3122 to i64*
  %3147 = load i64, i64* %3146, align 8
  store i64 %3147, i64* %RBP.i, align 8
  store i64 %3145, i64* %6, align 8
  %3148 = add i64 %3121, 6
  store i64 %3148, i64* %3, align 8
  %3149 = inttoptr i64 %3145 to i64*
  %3150 = load i64, i64* %3149, align 8
  store i64 %3150, i64* %3, align 8
  %3151 = add i64 %3120, 80
  store i64 %3151, i64* %6, align 8
  ret %struct.Memory* %call2_4295eb
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
define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 64
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
define %struct.Memory* @routine_movq__0x45863c___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x25f___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 607, i64* %3, align 8
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
define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jge_.L_429de2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_addl__0x6___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 6
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -7
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
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
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.P7AllocTrace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x4____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  store i8 4, i8* %4, align 1
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x5__0x1__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 5, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_movl__0x2__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
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
define %struct.Memory* @routine_jge_.L_429d54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 0, i8* %8, align 1
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
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 1
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_je_.L_42975a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x6____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 6, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_je_.L_429873(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -32
  %8 = icmp ult i32 %4, 32
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -46
  %8 = icmp ult i32 %4, 46
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -95
  %8 = icmp ult i32 %4, 95
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -45
  %8 = icmp ult i32 %4, 45
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -126
  %8 = icmp ult i32 %4, 126
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movb__0x1____rcx__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 1, i8* %8, align 1
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_jmpq_.L_429c3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_429919(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rcx__rdx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -6
  %8 = icmp ult i32 %4, 6
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
define %struct.Memory* @routine_je_.L_429914(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x2____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 2, i8* %8, align 1
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
define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429c39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x10___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 16
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 4
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_je_.L_429a2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x5____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 5, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_jmpq_.L_429c34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x20___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 32
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 5
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_je_.L_429b3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x8____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 8, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429c2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_429c2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x3____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 3, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 2
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_je_.L_429d41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_429c5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jne_.L_429c93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp ne i32 %6, 0
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x7____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 7, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429d46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4296c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movb__0x9____rdx__rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 9, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq_0x18__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = bitcast i64* %RDX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx__rsi_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.trace_doctor(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4295fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RSP, align 8
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
