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

declare %struct.Memory* @sub_44a390.get_mb_pos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @getAffNeighbour(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i66 = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI.i66, align 4
  %42 = add i64 %10, 10
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i81 = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -8
  %47 = load i32, i32* %ESI.i81, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i166 = bitcast %union.anon* %51 to i32*
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -12
  %54 = load i32, i32* %EDX.i166, align 4
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %57, align 4
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i187 = bitcast %union.anon* %58 to i32*
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -16
  %61 = load i32, i32* %ECX.i187, align 4
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 3
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %60 to i32*
  store i32 %61, i32* %64, align 4
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -24
  %68 = load i64, i64* %R8.i, align 8
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* %3, align 8
  %73 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %73, i64* %R8.i, align 8
  %74 = add i64 %73, 14168
  %75 = add i64 %72, 15
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %R8.i, align 8
  %RCX.i1106 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -4
  %80 = add i64 %72, 18
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = zext i32 %82 to i64
  store i64 %83, i64* %RCX.i1106, align 8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1527 = getelementptr inbounds %union.anon, %union.anon* %84, i64 0, i32 0
  %85 = zext i32 %82 to i64
  %86 = mul nuw nsw i64 %85, 632
  store i64 %86, i64* %RAX.i1527, align 8
  %87 = add i64 %86, %77
  store i64 %87, i64* %R8.i, align 8
  %88 = icmp ult i64 %87, %77
  %89 = icmp ult i64 %87, %86
  %90 = or i1 %88, %89
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %14, align 1
  %92 = trunc i64 %87 to i32
  %93 = and i32 %92, 255
  %94 = tail call i32 @llvm.ctpop.i32(i32 %93)
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  store i8 %97, i8* %21, align 1
  %98 = xor i64 %86, %77
  %99 = xor i64 %98, %87
  %100 = lshr i64 %99, 4
  %101 = trunc i64 %100 to i8
  %102 = and i8 %101, 1
  store i8 %102, i8* %26, align 1
  %103 = icmp eq i64 %87, 0
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %29, align 1
  %105 = lshr i64 %87, 63
  %106 = trunc i64 %105 to i8
  store i8 %106, i8* %32, align 1
  %107 = lshr i64 %77, 63
  %108 = xor i64 %105, %107
  %109 = add nuw nsw i64 %108, %105
  %110 = icmp eq i64 %109, 2
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %38, align 1
  %112 = add i64 %78, -32
  %113 = add i64 %72, 34
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i64*
  store i64 %87, i64* %114, align 8
  %115 = load i64, i64* %RBP.i, align 8
  %116 = add i64 %115, -44
  %117 = load i64, i64* %3, align 8
  %118 = add i64 %117, 7
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %116 to i32*
  store i32 -1, i32* %119, align 4
  %120 = load i64, i64* %RBP.i, align 8
  %121 = add i64 %120, -16
  %122 = load i64, i64* %3, align 8
  %123 = add i64 %122, 4
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %121 to i32*
  %125 = load i32, i32* %124, align 4
  store i8 0, i8* %14, align 1
  %126 = and i32 %125, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %131 = icmp eq i32 %125, 0
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %29, align 1
  %133 = lshr i32 %125, 31
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v140 = select i1 %131, i64 29, i64 10
  %135 = add i64 %122, %.v140
  store i64 %135, i64* %3, align 8
  br i1 %131, label %block_.L_44a73e, label %block_44a72b

block_44a72b:                                     ; preds = %entry
  %136 = add i64 %120, -36
  %137 = add i64 %135, 7
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i32*
  store i32 16, i32* %138, align 4
  %139 = load i64, i64* %RBP.i, align 8
  %140 = add i64 %139, -40
  %141 = load i64, i64* %3, align 8
  %142 = add i64 %141, 7
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %140 to i32*
  store i32 16, i32* %143, align 4
  %144 = load i64, i64* %3, align 8
  %145 = add i64 %144, 39
  store i64 %145, i64* %3, align 8
  br label %block_.L_44a760

block_.L_44a73e:                                  ; preds = %entry
  %146 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %146, i64* %RAX.i1527, align 8
  %147 = add i64 %146, 72708
  %148 = add i64 %135, 14
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RCX.i1106, align 8
  %152 = add i64 %120, -36
  %153 = add i64 %135, 17
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %152 to i32*
  store i32 %150, i32* %154, align 4
  %155 = load i64, i64* %3, align 8
  %156 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %156, i64* %RAX.i1527, align 8
  %157 = add i64 %156, 72712
  %158 = add i64 %155, 14
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to i32*
  %160 = load i32, i32* %159, align 4
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %RCX.i1106, align 8
  %162 = load i64, i64* %RBP.i, align 8
  %163 = add i64 %162, -40
  %164 = add i64 %155, 17
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i32*
  store i32 %160, i32* %165, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_44a760

block_.L_44a760:                                  ; preds = %block_.L_44a73e, %block_44a72b
  %166 = phi i64 [ %.pre, %block_.L_44a73e ], [ %145, %block_44a72b ]
  %167 = load i64, i64* %RBP.i, align 8
  %168 = add i64 %167, -24
  %169 = add i64 %166, 4
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %168 to i64*
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %RAX.i1527, align 8
  %172 = add i64 %166, 10
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i32*
  store i32 0, i32* %173, align 4
  %174 = load i64, i64* %RBP.i, align 8
  %175 = add i64 %174, -12
  %176 = load i64, i64* %3, align 8
  %177 = add i64 %176, 3
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %175 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RCX.i1106, align 8
  %RDX.i1481 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %181 = add i64 %174, -40
  %182 = add i64 %176, 6
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = add i32 %184, -1
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RDX.i1481, align 8
  %187 = lshr i32 %185, 31
  %188 = sub i32 %179, %185
  %189 = icmp ult i32 %179, %185
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %14, align 1
  %191 = and i32 %188, 255
  %192 = tail call i32 @llvm.ctpop.i32(i32 %191)
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %21, align 1
  %196 = xor i32 %185, %179
  %197 = xor i32 %196, %188
  %198 = lshr i32 %197, 4
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  store i8 %200, i8* %26, align 1
  %201 = icmp eq i32 %188, 0
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %29, align 1
  %203 = lshr i32 %188, 31
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %32, align 1
  %205 = lshr i32 %179, 31
  %206 = xor i32 %187, %205
  %207 = xor i32 %203, %205
  %208 = add nuw nsw i32 %207, %206
  %209 = icmp eq i32 %208, 2
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %38, align 1
  %211 = icmp ne i8 %204, 0
  %212 = xor i1 %211, %209
  %213 = or i1 %201, %212
  %.v141 = select i1 %213, i64 22, i64 17
  %214 = add i64 %176, %.v141
  store i64 %214, i64* %3, align 8
  br i1 %213, label %block_.L_44a780, label %block_.L_44b1a3.sink.split

block_.L_44a780:                                  ; preds = %block_.L_44a760
  %215 = add i64 %174, -8
  %216 = add i64 %214, 3
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RAX.i1527, align 8
  %220 = add i64 %174, -36
  %221 = add i64 %214, 6
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = add i32 %223, -1
  %225 = zext i32 %224 to i64
  store i64 %225, i64* %RCX.i1106, align 8
  %226 = lshr i32 %224, 31
  %EAX.i1463 = bitcast %union.anon* %84 to i32*
  %227 = sub i32 %218, %224
  %228 = icmp ult i32 %218, %224
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %14, align 1
  %230 = and i32 %227, 255
  %231 = tail call i32 @llvm.ctpop.i32(i32 %230)
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  store i8 %234, i8* %21, align 1
  %235 = xor i32 %224, %218
  %236 = xor i32 %235, %227
  %237 = lshr i32 %236, 4
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  store i8 %239, i8* %26, align 1
  %240 = icmp eq i32 %227, 0
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %29, align 1
  %242 = lshr i32 %227, 31
  %243 = trunc i32 %242 to i8
  store i8 %243, i8* %32, align 1
  %244 = lshr i32 %218, 31
  %245 = xor i32 %226, %244
  %246 = xor i32 %242, %244
  %247 = add nuw nsw i32 %246, %245
  %248 = icmp eq i32 %247, 2
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %38, align 1
  %250 = icmp ne i8 %243, 0
  %251 = xor i1 %250, %248
  %252 = or i1 %240, %251
  %.v142 = select i1 %252, i64 44, i64 17
  %253 = add i64 %214, %.v142
  store i64 %253, i64* %3, align 8
  br i1 %252, label %block_.L_44a7ac, label %block_44a791

block_44a791:                                     ; preds = %block_.L_44a780
  %254 = add i64 %253, 4
  store i64 %254, i64* %3, align 8
  %255 = load i32, i32* %178, align 4
  store i8 0, i8* %14, align 1
  %256 = and i32 %255, 255
  %257 = tail call i32 @llvm.ctpop.i32(i32 %256)
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %261 = icmp eq i32 %255, 0
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %29, align 1
  %263 = lshr i32 %255, 31
  %264 = trunc i32 %263 to i8
  store i8 %264, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %265 = icmp ne i8 %264, 0
  %.v = select i1 %265, i64 23, i64 6
  %266 = add i64 %254, %.v
  store i64 %266, i64* %3, align 8
  br i1 %265, label %block_.L_44a7ac, label %block_44a79b

block_44a79b:                                     ; preds = %block_44a791
  %267 = add i64 %266, 3
  store i64 %267, i64* %3, align 8
  %268 = load i32, i32* %178, align 4
  %269 = zext i32 %268 to i64
  store i64 %269, i64* %RAX.i1527, align 8
  %270 = add i64 %266, 6
  store i64 %270, i64* %3, align 8
  %271 = load i32, i32* %183, align 4
  %272 = sub i32 %268, %271
  %273 = icmp ult i32 %268, %271
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %14, align 1
  %275 = and i32 %272, 255
  %276 = tail call i32 @llvm.ctpop.i32(i32 %275)
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  store i8 %279, i8* %21, align 1
  %280 = xor i32 %271, %268
  %281 = xor i32 %280, %272
  %282 = lshr i32 %281, 4
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  store i8 %284, i8* %26, align 1
  %285 = icmp eq i32 %272, 0
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %29, align 1
  %287 = lshr i32 %272, 31
  %288 = trunc i32 %287 to i8
  store i8 %288, i8* %32, align 1
  %289 = lshr i32 %268, 31
  %290 = lshr i32 %271, 31
  %291 = xor i32 %290, %289
  %292 = xor i32 %287, %289
  %293 = add nuw nsw i32 %292, %291
  %294 = icmp eq i32 %293, 2
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %38, align 1
  %296 = icmp ne i8 %288, 0
  %297 = xor i1 %296, %294
  %.v143 = select i1 %297, i64 12, i64 17
  %298 = add i64 %266, %.v143
  store i64 %298, i64* %3, align 8
  br i1 %297, label %block_.L_44b1a3.sink.split, label %block_.L_44a7ac

block_.L_44a7ac:                                  ; preds = %block_44a79b, %block_44a791, %block_.L_44a780
  %299 = phi i64 [ %298, %block_44a79b ], [ %266, %block_44a791 ], [ %253, %block_.L_44a780 ]
  %300 = add i64 %299, 4
  store i64 %300, i64* %3, align 8
  %301 = load i32, i32* %217, align 4
  store i8 0, i8* %14, align 1
  %302 = and i32 %301, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302)
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %307 = icmp eq i32 %301, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %29, align 1
  %309 = lshr i32 %301, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %311 = icmp ne i8 %310, 0
  %.v73 = select i1 %311, i64 6, i64 1342
  %312 = add i64 %300, %.v73
  %313 = add i64 %312, 4
  store i64 %313, i64* %3, align 8
  br i1 %311, label %block_44a7b6, label %block_.L_44acee

block_44a7b6:                                     ; preds = %block_.L_44a7ac
  %314 = load i32, i32* %178, align 4
  store i8 0, i8* %14, align 1
  %315 = and i32 %314, 255
  %316 = tail call i32 @llvm.ctpop.i32(i32 %315)
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = xor i8 %318, 1
  store i8 %319, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %320 = icmp eq i32 %314, 0
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %29, align 1
  %322 = lshr i32 %314, 31
  %323 = trunc i32 %322 to i8
  store i8 %323, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %324 = icmp ne i8 %323, 0
  %.v78 = select i1 %324, i64 6, i64 444
  %325 = add i64 %313, %.v78
  store i64 %325, i64* %3, align 8
  br i1 %324, label %block_44a7c0, label %block_.L_44a976

block_44a7c0:                                     ; preds = %block_44a7b6
  %326 = add i64 %174, -32
  %327 = add i64 %325, 4
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i64*
  %329 = load i64, i64* %328, align 8
  store i64 %329, i64* %RAX.i1527, align 8
  %330 = add i64 %329, 532
  %331 = add i64 %325, 11
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i32*
  %333 = load i32, i32* %332, align 4
  store i8 0, i8* %14, align 1
  %334 = and i32 %333, 255
  %335 = tail call i32 @llvm.ctpop.i32(i32 %334)
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  store i8 %338, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %339 = icmp eq i32 %333, 0
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %29, align 1
  %341 = lshr i32 %333, 31
  %342 = trunc i32 %341 to i8
  store i8 %342, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v137 = select i1 %339, i64 17, i64 229
  %343 = add i64 %325, %.v137
  %344 = add i64 %174, -4
  %345 = add i64 %343, 3
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i32*
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %347, 1
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RAX.i1527, align 8
  %350 = add i64 %343, 9
  store i64 %350, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %351 = tail call i32 @llvm.ctpop.i32(i32 %348)
  %352 = trunc i32 %351 to i8
  %353 = xor i8 %352, 1
  store i8 %353, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %354 = trunc i32 %348 to i8
  %355 = xor i8 %354, 1
  store i8 %355, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %356 = icmp eq i8 %355, 0
  br i1 %339, label %block_44a7d1, label %block_.L_44a8a5

block_44a7d1:                                     ; preds = %block_44a7c0
  %.v138 = select i1 %356, i64 62, i64 15
  %357 = add i64 %343, %.v138
  %358 = add i64 %357, 4
  store i64 %358, i64* %3, align 8
  %359 = load i64, i64* %328, align 8
  store i64 %359, i64* %RAX.i1527, align 8
  br i1 %356, label %block_.L_44a80f, label %block_44a7e0

block_44a7e0:                                     ; preds = %block_44a7d1
  %360 = add i64 %359, 548
  %361 = add i64 %357, 10
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = add i32 %363, 1
  %365 = zext i32 %364 to i64
  store i64 %365, i64* %RCX.i1106, align 8
  %366 = icmp eq i32 %363, -1
  %367 = icmp eq i32 %364, 0
  %368 = or i1 %366, %367
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %14, align 1
  %370 = and i32 %364, 255
  %371 = tail call i32 @llvm.ctpop.i32(i32 %370)
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  %374 = xor i8 %373, 1
  store i8 %374, i8* %21, align 1
  %375 = xor i32 %364, %363
  %376 = lshr i32 %375, 4
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  store i8 %378, i8* %26, align 1
  %379 = zext i1 %367 to i8
  store i8 %379, i8* %29, align 1
  %380 = lshr i32 %364, 31
  %381 = trunc i32 %380 to i8
  store i8 %381, i8* %32, align 1
  %382 = lshr i32 %363, 31
  %383 = xor i32 %380, %382
  %384 = add nuw nsw i32 %383, %380
  %385 = icmp eq i32 %384, 2
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %38, align 1
  %387 = add i64 %174, -24
  %388 = add i64 %357, 17
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i64*
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %RAX.i1527, align 8
  %391 = add i64 %390, 4
  %392 = add i64 %357, 20
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  store i32 %364, i32* %393, align 4
  %394 = load i64, i64* %RBP.i, align 8
  %395 = add i64 %394, -32
  %396 = load i64, i64* %3, align 8
  %397 = add i64 %396, 4
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %395 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %RAX.i1527, align 8
  %400 = add i64 %399, 564
  %401 = add i64 %396, 10
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  %404 = zext i32 %403 to i64
  store i64 %404, i64* %RCX.i1106, align 8
  %405 = add i64 %394, -24
  %406 = add i64 %396, 14
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %405 to i64*
  %408 = load i64, i64* %407, align 8
  store i64 %408, i64* %RAX.i1527, align 8
  %409 = add i64 %396, 16
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i32*
  store i32 %403, i32* %410, align 4
  %411 = load i64, i64* %RBP.i, align 8
  %412 = add i64 %411, -12
  %413 = load i64, i64* %3, align 8
  %414 = add i64 %413, 3
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %412 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %RCX.i1106, align 8
  %418 = add i64 %411, -44
  %419 = add i64 %413, 6
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i32*
  store i32 %416, i32* %420, align 4
  %421 = load i64, i64* %3, align 8
  %422 = add i64 %421, 150
  br label %block_.L_44a8a0

block_.L_44a80f:                                  ; preds = %block_44a7d1
  %423 = add i64 %359, 536
  %424 = add i64 %357, 10
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = zext i32 %426 to i64
  store i64 %427, i64* %RCX.i1106, align 8
  %428 = add i64 %174, -24
  %429 = add i64 %357, 14
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i64*
  %431 = load i64, i64* %430, align 8
  store i64 %431, i64* %RAX.i1527, align 8
  %432 = add i64 %431, 4
  %433 = add i64 %357, 17
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i32*
  store i32 %426, i32* %434, align 4
  %435 = load i64, i64* %RBP.i, align 8
  %436 = add i64 %435, -32
  %437 = load i64, i64* %3, align 8
  %438 = add i64 %437, 4
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %436 to i64*
  %440 = load i64, i64* %439, align 8
  store i64 %440, i64* %RAX.i1527, align 8
  %441 = add i64 %440, 552
  %442 = add i64 %437, 10
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RCX.i1106, align 8
  %446 = add i64 %435, -24
  %447 = add i64 %437, 14
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i64*
  %449 = load i64, i64* %448, align 8
  store i64 %449, i64* %RAX.i1527, align 8
  %450 = add i64 %437, 16
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to i32*
  store i32 %444, i32* %451, align 4
  %452 = load i64, i64* %RBP.i, align 8
  %453 = add i64 %452, -32
  %454 = load i64, i64* %3, align 8
  %455 = add i64 %454, 4
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %453 to i64*
  %457 = load i64, i64* %456, align 8
  store i64 %457, i64* %RAX.i1527, align 8
  %458 = add i64 %457, 552
  %459 = add i64 %454, 11
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  store i8 0, i8* %14, align 1
  %462 = and i32 %461, 255
  %463 = tail call i32 @llvm.ctpop.i32(i32 %462)
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  %466 = xor i8 %465, 1
  store i8 %466, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %467 = icmp eq i32 %461, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %29, align 1
  %469 = lshr i32 %461, 31
  %470 = trunc i32 %469 to i8
  store i8 %470, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v174 = select i1 %467, i64 107, i64 17
  %471 = add i64 %454, %.v174
  store i64 %471, i64* %3, align 8
  br i1 %467, label %block_.L_44a89b, label %block_44a841

block_44a841:                                     ; preds = %block_.L_44a80f
  %472 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %472, i64* %RAX.i1527, align 8
  %473 = add i64 %472, 14168
  %474 = add i64 %471, 15
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i64*
  %476 = load i64, i64* %475, align 8
  store i64 %476, i64* %RAX.i1527, align 8
  %477 = add i64 %471, 19
  store i64 %477, i64* %3, align 8
  %478 = load i64, i64* %456, align 8
  store i64 %478, i64* %RCX.i1106, align 8
  %479 = add i64 %478, 536
  %480 = add i64 %471, 26
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %479 to i32*
  %482 = load i32, i32* %481, align 4
  %483 = sext i32 %482 to i64
  %484 = mul nsw i64 %483, 632
  store i64 %484, i64* %RCX.i1106, align 8
  %485 = lshr i64 %484, 63
  %486 = add i64 %484, %476
  store i64 %486, i64* %RAX.i1527, align 8
  %487 = icmp ult i64 %486, %476
  %488 = icmp ult i64 %486, %484
  %489 = or i1 %487, %488
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %14, align 1
  %491 = trunc i64 %486 to i32
  %492 = and i32 %491, 255
  %493 = tail call i32 @llvm.ctpop.i32(i32 %492)
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = xor i8 %495, 1
  store i8 %496, i8* %21, align 1
  %497 = xor i64 %484, %476
  %498 = xor i64 %497, %486
  %499 = lshr i64 %498, 4
  %500 = trunc i64 %499 to i8
  %501 = and i8 %500, 1
  store i8 %501, i8* %26, align 1
  %502 = icmp eq i64 %486, 0
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %29, align 1
  %504 = lshr i64 %486, 63
  %505 = trunc i64 %504 to i8
  store i8 %505, i8* %32, align 1
  %506 = lshr i64 %476, 63
  %507 = xor i64 %504, %506
  %508 = xor i64 %504, %485
  %509 = add nuw nsw i64 %507, %508
  %510 = icmp eq i64 %509, 2
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %38, align 1
  %512 = add i64 %486, 532
  %513 = add i64 %471, 43
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i32*
  %515 = load i32, i32* %514, align 4
  store i8 0, i8* %14, align 1
  %516 = and i32 %515, 255
  %517 = tail call i32 @llvm.ctpop.i32(i32 %516)
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  %520 = xor i8 %519, 1
  store i8 %520, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %521 = icmp eq i32 %515, 0
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %29, align 1
  %523 = lshr i32 %515, 31
  %524 = trunc i32 %523 to i8
  store i8 %524, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v175 = select i1 %521, i64 49, i64 60
  %525 = add i64 %471, %.v175
  store i64 %525, i64* %3, align 8
  %526 = load i64, i64* %RBP.i, align 8
  br i1 %521, label %block_44a872, label %block_.L_44a87d

block_44a872:                                     ; preds = %block_44a841
  %527 = add i64 %526, -12
  %528 = add i64 %525, 3
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = zext i32 %530 to i64
  store i64 %531, i64* %RAX.i1527, align 8
  %532 = add i64 %526, -44
  %533 = add i64 %525, 6
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i32*
  store i32 %530, i32* %534, align 4
  %535 = load i64, i64* %3, align 8
  %536 = add i64 %535, 30
  store i64 %536, i64* %3, align 8
  br label %block_.L_44a896

block_.L_44a87d:                                  ; preds = %block_44a841
  %537 = add i64 %526, -24
  %538 = add i64 %525, 4
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %RAX.i1527, align 8
  %541 = add i64 %540, 4
  %542 = add i64 %525, 7
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i32*
  %544 = load i32, i32* %543, align 4
  %545 = add i32 %544, 1
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RCX.i1106, align 8
  %547 = icmp eq i32 %544, -1
  %548 = icmp eq i32 %545, 0
  %549 = or i1 %547, %548
  %550 = zext i1 %549 to i8
  store i8 %550, i8* %14, align 1
  %551 = and i32 %545, 255
  %552 = tail call i32 @llvm.ctpop.i32(i32 %551)
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  %555 = xor i8 %554, 1
  store i8 %555, i8* %21, align 1
  %556 = xor i32 %545, %544
  %557 = lshr i32 %556, 4
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  store i8 %559, i8* %26, align 1
  %560 = zext i1 %548 to i8
  store i8 %560, i8* %29, align 1
  %561 = lshr i32 %545, 31
  %562 = trunc i32 %561 to i8
  store i8 %562, i8* %32, align 1
  %563 = lshr i32 %544, 31
  %564 = xor i32 %561, %563
  %565 = add nuw nsw i32 %564, %561
  %566 = icmp eq i32 %565, 2
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %38, align 1
  %568 = add i64 %525, 13
  store i64 %568, i64* %3, align 8
  store i32 %545, i32* %543, align 4
  %569 = load i64, i64* %RBP.i, align 8
  %570 = add i64 %569, -12
  %571 = load i64, i64* %3, align 8
  %572 = add i64 %571, 3
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %570 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = zext i32 %574 to i64
  store i64 %575, i64* %RCX.i1106, align 8
  %576 = add i64 %569, -40
  %577 = add i64 %571, 6
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = add i32 %579, %574
  %581 = zext i32 %580 to i64
  %582 = shl nuw i64 %581, 32
  %583 = ashr i64 %582, 33
  %584 = trunc i32 %580 to i8
  %585 = and i8 %584, 1
  %586 = trunc i64 %583 to i32
  %587 = and i64 %583, 4294967295
  store i64 %587, i64* %RCX.i1106, align 8
  store i8 %585, i8* %14, align 1
  %588 = and i32 %586, 255
  %589 = tail call i32 @llvm.ctpop.i32(i32 %588)
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  %592 = xor i8 %591, 1
  store i8 %592, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %593 = icmp eq i32 %586, 0
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %29, align 1
  %595 = lshr i64 %583, 31
  %596 = trunc i64 %595 to i8
  %597 = and i8 %596, 1
  store i8 %597, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %598 = add i64 %569, -44
  %599 = trunc i64 %583 to i32
  %600 = add i64 %571, 11
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %598 to i32*
  store i32 %599, i32* %601, align 4
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_44a896

block_.L_44a896:                                  ; preds = %block_.L_44a87d, %block_44a872
  %602 = phi i64 [ %.pre110, %block_.L_44a87d ], [ %536, %block_44a872 ]
  %603 = add i64 %602, 5
  store i64 %603, i64* %3, align 8
  br label %block_.L_44a89b

block_.L_44a89b:                                  ; preds = %block_.L_44a896, %block_.L_44a80f
  %604 = phi i64 [ %603, %block_.L_44a896 ], [ %471, %block_.L_44a80f ]
  %605 = add i64 %604, 5
  store i64 %605, i64* %3, align 8
  br label %block_.L_44a8a0

block_.L_44a8a0:                                  ; preds = %block_.L_44a89b, %block_44a7e0
  %storemerge = phi i64 [ %422, %block_44a7e0 ], [ %605, %block_.L_44a89b ]
  %606 = add i64 %storemerge, 209
  br label %block_.L_44a971

block_.L_44a8a5:                                  ; preds = %block_44a7c0
  %.v139 = select i1 %356, i64 157, i64 15
  %607 = add i64 %343, %.v139
  %608 = add i64 %607, 4
  store i64 %608, i64* %3, align 8
  %609 = load i64, i64* %328, align 8
  store i64 %609, i64* %RAX.i1527, align 8
  %610 = add i64 %609, 548
  %611 = add i64 %607, 10
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to i32*
  %613 = load i32, i32* %612, align 4
  %614 = zext i32 %613 to i64
  store i64 %614, i64* %RCX.i1106, align 8
  br i1 %356, label %block_.L_44a942, label %block_44a8b4

block_44a8b4:                                     ; preds = %block_.L_44a8a5
  %615 = add i64 %174, -24
  %616 = add i64 %607, 14
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to i64*
  %618 = load i64, i64* %617, align 8
  store i64 %618, i64* %RAX.i1527, align 8
  %619 = add i64 %618, 4
  %620 = add i64 %607, 17
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to i32*
  store i32 %613, i32* %621, align 4
  %622 = load i64, i64* %RBP.i, align 8
  %623 = add i64 %622, -32
  %624 = load i64, i64* %3, align 8
  %625 = add i64 %624, 4
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %623 to i64*
  %627 = load i64, i64* %626, align 8
  store i64 %627, i64* %RAX.i1527, align 8
  %628 = add i64 %627, 564
  %629 = add i64 %624, 10
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = zext i32 %631 to i64
  store i64 %632, i64* %RCX.i1106, align 8
  %633 = add i64 %622, -24
  %634 = add i64 %624, 14
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i64*
  %636 = load i64, i64* %635, align 8
  store i64 %636, i64* %RAX.i1527, align 8
  %637 = add i64 %624, 16
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i32*
  store i32 %631, i32* %638, align 4
  %639 = load i64, i64* %RBP.i, align 8
  %640 = add i64 %639, -32
  %641 = load i64, i64* %3, align 8
  %642 = add i64 %641, 4
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %640 to i64*
  %644 = load i64, i64* %643, align 8
  store i64 %644, i64* %RAX.i1527, align 8
  %645 = add i64 %644, 564
  %646 = add i64 %641, 11
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i32*
  %648 = load i32, i32* %647, align 4
  store i8 0, i8* %14, align 1
  %649 = and i32 %648, 255
  %650 = tail call i32 @llvm.ctpop.i32(i32 %649)
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, 1
  %653 = xor i8 %652, 1
  store i8 %653, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %654 = icmp eq i32 %648, 0
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %29, align 1
  %656 = lshr i32 %648, 31
  %657 = trunc i32 %656 to i8
  store i8 %657, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v172 = select i1 %654, i64 104, i64 17
  %658 = add i64 %641, %.v172
  store i64 %658, i64* %3, align 8
  br i1 %654, label %block_.L_44a93d, label %block_44a8e6

block_44a8e6:                                     ; preds = %block_44a8b4
  %659 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %659, i64* %RAX.i1527, align 8
  %660 = add i64 %659, 14168
  %661 = add i64 %658, 15
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i64*
  %663 = load i64, i64* %662, align 8
  store i64 %663, i64* %RAX.i1527, align 8
  %664 = add i64 %658, 19
  store i64 %664, i64* %3, align 8
  %665 = load i64, i64* %643, align 8
  store i64 %665, i64* %RCX.i1106, align 8
  %666 = add i64 %665, 548
  %667 = add i64 %658, 26
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to i32*
  %669 = load i32, i32* %668, align 4
  %670 = sext i32 %669 to i64
  %671 = mul nsw i64 %670, 632
  store i64 %671, i64* %RCX.i1106, align 8
  %672 = lshr i64 %671, 63
  %673 = add i64 %671, %663
  store i64 %673, i64* %RAX.i1527, align 8
  %674 = icmp ult i64 %673, %663
  %675 = icmp ult i64 %673, %671
  %676 = or i1 %674, %675
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %14, align 1
  %678 = trunc i64 %673 to i32
  %679 = and i32 %678, 255
  %680 = tail call i32 @llvm.ctpop.i32(i32 %679)
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  %683 = xor i8 %682, 1
  store i8 %683, i8* %21, align 1
  %684 = xor i64 %671, %663
  %685 = xor i64 %684, %673
  %686 = lshr i64 %685, 4
  %687 = trunc i64 %686 to i8
  %688 = and i8 %687, 1
  store i8 %688, i8* %26, align 1
  %689 = icmp eq i64 %673, 0
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %29, align 1
  %691 = lshr i64 %673, 63
  %692 = trunc i64 %691 to i8
  store i8 %692, i8* %32, align 1
  %693 = lshr i64 %663, 63
  %694 = xor i64 %691, %693
  %695 = xor i64 %691, %672
  %696 = add nuw nsw i64 %694, %695
  %697 = icmp eq i64 %696, 2
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %38, align 1
  %699 = add i64 %673, 532
  %700 = add i64 %658, 43
  store i64 %700, i64* %3, align 8
  %701 = inttoptr i64 %699 to i32*
  %702 = load i32, i32* %701, align 4
  store i8 0, i8* %14, align 1
  %703 = and i32 %702, 255
  %704 = tail call i32 @llvm.ctpop.i32(i32 %703)
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  store i8 %707, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %708 = icmp eq i32 %702, 0
  %709 = zext i1 %708 to i8
  store i8 %709, i8* %29, align 1
  %710 = lshr i32 %702, 31
  %711 = trunc i32 %710 to i8
  store i8 %711, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v173 = select i1 %708, i64 49, i64 76
  %712 = add i64 %658, %.v173
  store i64 %712, i64* %3, align 8
  %713 = load i64, i64* %RBP.i, align 8
  br i1 %708, label %block_44a917, label %block_.L_44a932

block_44a917:                                     ; preds = %block_44a8e6
  %714 = add i64 %713, -24
  %715 = add i64 %712, 4
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i64*
  %717 = load i64, i64* %716, align 8
  store i64 %717, i64* %RAX.i1527, align 8
  %718 = add i64 %717, 4
  %719 = add i64 %712, 7
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to i32*
  %721 = load i32, i32* %720, align 4
  %722 = add i32 %721, 1
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RCX.i1106, align 8
  %724 = icmp eq i32 %721, -1
  %725 = icmp eq i32 %722, 0
  %726 = or i1 %724, %725
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %14, align 1
  %728 = and i32 %722, 255
  %729 = tail call i32 @llvm.ctpop.i32(i32 %728)
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  %732 = xor i8 %731, 1
  store i8 %732, i8* %21, align 1
  %733 = xor i32 %722, %721
  %734 = lshr i32 %733, 4
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  store i8 %736, i8* %26, align 1
  %737 = zext i1 %725 to i8
  store i8 %737, i8* %29, align 1
  %738 = lshr i32 %722, 31
  %739 = trunc i32 %738 to i8
  store i8 %739, i8* %32, align 1
  %740 = lshr i32 %721, 31
  %741 = xor i32 %738, %740
  %742 = add nuw nsw i32 %741, %738
  %743 = icmp eq i32 %742, 2
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %38, align 1
  %745 = add i64 %712, 13
  store i64 %745, i64* %3, align 8
  store i32 %722, i32* %720, align 4
  %746 = load i64, i64* %RBP.i, align 8
  %747 = add i64 %746, -12
  %748 = load i64, i64* %3, align 8
  %749 = add i64 %748, 3
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %747 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = shl i32 %751, 1
  %753 = icmp slt i32 %751, 0
  %754 = icmp slt i32 %752, 0
  %755 = xor i1 %753, %754
  %756 = zext i32 %752 to i64
  store i64 %756, i64* %RCX.i1106, align 8
  %.lobit = lshr i32 %751, 31
  %757 = trunc i32 %.lobit to i8
  store i8 %757, i8* %14, align 1
  %758 = and i32 %752, 254
  %759 = tail call i32 @llvm.ctpop.i32(i32 %758)
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = xor i8 %761, 1
  store i8 %762, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %763 = icmp eq i32 %752, 0
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %29, align 1
  %765 = lshr i32 %751, 30
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  store i8 %767, i8* %32, align 1
  %768 = zext i1 %755 to i8
  store i8 %768, i8* %38, align 1
  %769 = add i64 %746, -44
  %770 = add i64 %748, 8
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i32*
  store i32 %752, i32* %771, align 4
  %772 = load i64, i64* %3, align 8
  %773 = add i64 %772, 11
  store i64 %773, i64* %3, align 8
  br label %block_.L_44a938

block_.L_44a932:                                  ; preds = %block_44a8e6
  %774 = add i64 %713, -12
  %775 = add i64 %712, 3
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %RAX.i1527, align 8
  %779 = add i64 %713, -44
  %780 = add i64 %712, 6
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i32*
  store i32 %777, i32* %781, align 4
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_44a938

block_.L_44a938:                                  ; preds = %block_.L_44a932, %block_44a917
  %782 = phi i64 [ %.pre111, %block_.L_44a932 ], [ %773, %block_44a917 ]
  %783 = add i64 %782, 5
  store i64 %783, i64* %3, align 8
  br label %block_.L_44a93d

block_.L_44a93d:                                  ; preds = %block_.L_44a938, %block_44a8b4
  %784 = phi i64 [ %783, %block_.L_44a938 ], [ %658, %block_44a8b4 ]
  %785 = add i64 %784, 47
  store i64 %785, i64* %3, align 8
  br label %block_.L_44a96c

block_.L_44a942:                                  ; preds = %block_.L_44a8a5
  %786 = add i32 %613, 1
  %787 = zext i32 %786 to i64
  store i64 %787, i64* %RCX.i1106, align 8
  %788 = icmp eq i32 %613, -1
  %789 = icmp eq i32 %786, 0
  %790 = or i1 %788, %789
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %14, align 1
  %792 = and i32 %786, 255
  %793 = tail call i32 @llvm.ctpop.i32(i32 %792)
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = xor i8 %795, 1
  store i8 %796, i8* %21, align 1
  %797 = xor i32 %786, %613
  %798 = lshr i32 %797, 4
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  store i8 %800, i8* %26, align 1
  %801 = zext i1 %789 to i8
  store i8 %801, i8* %29, align 1
  %802 = lshr i32 %786, 31
  %803 = trunc i32 %802 to i8
  store i8 %803, i8* %32, align 1
  %804 = lshr i32 %613, 31
  %805 = xor i32 %802, %804
  %806 = add nuw nsw i32 %805, %802
  %807 = icmp eq i32 %806, 2
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %38, align 1
  %809 = add i64 %174, -24
  %810 = add i64 %607, 17
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i64*
  %812 = load i64, i64* %811, align 8
  store i64 %812, i64* %RAX.i1527, align 8
  %813 = add i64 %812, 4
  %814 = add i64 %607, 20
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  store i32 %786, i32* %815, align 4
  %816 = load i64, i64* %RBP.i, align 8
  %817 = add i64 %816, -32
  %818 = load i64, i64* %3, align 8
  %819 = add i64 %818, 4
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %817 to i64*
  %821 = load i64, i64* %820, align 8
  store i64 %821, i64* %RAX.i1527, align 8
  %822 = add i64 %821, 564
  %823 = add i64 %818, 10
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i32*
  %825 = load i32, i32* %824, align 4
  %826 = zext i32 %825 to i64
  store i64 %826, i64* %RCX.i1106, align 8
  %827 = add i64 %816, -24
  %828 = add i64 %818, 14
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i64*
  %830 = load i64, i64* %829, align 8
  store i64 %830, i64* %RAX.i1527, align 8
  %831 = add i64 %818, 16
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  store i32 %825, i32* %832, align 4
  %833 = load i64, i64* %RBP.i, align 8
  %834 = add i64 %833, -12
  %835 = load i64, i64* %3, align 8
  %836 = add i64 %835, 3
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %834 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = zext i32 %838 to i64
  store i64 %839, i64* %RCX.i1106, align 8
  %840 = add i64 %833, -44
  %841 = add i64 %835, 6
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %840 to i32*
  store i32 %838, i32* %842, align 4
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_44a96c

block_.L_44a96c:                                  ; preds = %block_.L_44a942, %block_.L_44a93d
  %843 = phi i64 [ %.pre112, %block_.L_44a942 ], [ %785, %block_.L_44a93d ]
  %844 = add i64 %843, 5
  store i64 %844, i64* %3, align 8
  br label %block_.L_44a971

block_.L_44a971:                                  ; preds = %block_.L_44a96c, %block_.L_44a8a0
  %storemerge54 = phi i64 [ %606, %block_.L_44a8a0 ], [ %844, %block_.L_44a96c ]
  %845 = add i64 %storemerge54, 888
  br label %block_.L_44ace9

block_.L_44a976:                                  ; preds = %block_44a7b6
  %846 = add i64 %325, 4
  store i64 %846, i64* %3, align 8
  %847 = load i32, i32* %178, align 4
  store i8 0, i8* %14, align 1
  %848 = and i32 %847, 255
  %849 = tail call i32 @llvm.ctpop.i32(i32 %848)
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  %852 = xor i8 %851, 1
  store i8 %852, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %853 = icmp eq i32 %847, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %29, align 1
  %855 = lshr i32 %847, 31
  %856 = trunc i32 %855 to i8
  store i8 %856, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %857 = icmp ne i8 %856, 0
  %.v79 = select i1 %857, i64 874, i64 6
  %858 = add i64 %846, %.v79
  store i64 %858, i64* %3, align 8
  br i1 %857, label %block_.L_44ace4, label %block_44a980

block_44a980:                                     ; preds = %block_.L_44a976
  %859 = add i64 %858, 3
  store i64 %859, i64* %3, align 8
  %860 = load i32, i32* %178, align 4
  %861 = zext i32 %860 to i64
  store i64 %861, i64* %RAX.i1527, align 8
  %862 = add i64 %858, 6
  store i64 %862, i64* %3, align 8
  %863 = load i32, i32* %183, align 4
  %864 = sub i32 %860, %863
  %865 = icmp ult i32 %860, %863
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %14, align 1
  %867 = and i32 %864, 255
  %868 = tail call i32 @llvm.ctpop.i32(i32 %867)
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  store i8 %871, i8* %21, align 1
  %872 = xor i32 %863, %860
  %873 = xor i32 %872, %864
  %874 = lshr i32 %873, 4
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  store i8 %876, i8* %26, align 1
  %877 = icmp eq i32 %864, 0
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %29, align 1
  %879 = lshr i32 %864, 31
  %880 = trunc i32 %879 to i8
  store i8 %880, i8* %32, align 1
  %881 = lshr i32 %860, 31
  %882 = lshr i32 %863, 31
  %883 = xor i32 %882, %881
  %884 = xor i32 %879, %881
  %885 = add nuw nsw i32 %884, %883
  %886 = icmp eq i32 %885, 2
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %38, align 1
  %888 = icmp ne i8 %880, 0
  %889 = xor i1 %888, %886
  %.v135 = select i1 %889, i64 12, i64 868
  %890 = add i64 %858, %.v135
  store i64 %890, i64* %3, align 8
  br i1 %889, label %block_44a98c, label %block_.L_44ace4

block_44a98c:                                     ; preds = %block_44a980
  %891 = add i64 %174, -32
  %892 = add i64 %890, 4
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %891 to i64*
  %894 = load i64, i64* %893, align 8
  store i64 %894, i64* %RAX.i1527, align 8
  %895 = add i64 %894, 532
  %896 = add i64 %890, 11
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i32*
  %898 = load i32, i32* %897, align 4
  store i8 0, i8* %14, align 1
  %899 = and i32 %898, 255
  %900 = tail call i32 @llvm.ctpop.i32(i32 %899)
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  store i8 %903, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %904 = icmp eq i32 %898, 0
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %29, align 1
  %906 = lshr i32 %898, 31
  %907 = trunc i32 %906 to i8
  store i8 %907, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v134 = select i1 %904, i64 17, i64 434
  %908 = add i64 %890, %.v134
  %909 = add i64 %174, -4
  %910 = add i64 %908, 3
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %909 to i32*
  %912 = load i32, i32* %911, align 4
  %913 = and i32 %912, 1
  %914 = zext i32 %913 to i64
  store i64 %914, i64* %RAX.i1527, align 8
  store i8 0, i8* %14, align 1
  %915 = tail call i32 @llvm.ctpop.i32(i32 %913)
  %916 = trunc i32 %915 to i8
  %917 = xor i8 %916, 1
  store i8 %917, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %918 = trunc i32 %913 to i8
  %919 = xor i8 %918, 1
  store i8 %919, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %920 = icmp eq i8 %919, 0
  %.v136 = select i1 %920, i64 204, i64 15
  %921 = add i64 %908, %.v136
  %922 = add i64 %921, 4
  store i64 %922, i64* %3, align 8
  %923 = load i64, i64* %893, align 8
  store i64 %923, i64* %RAX.i1527, align 8
  %924 = add i64 %923, 536
  %925 = add i64 %921, 10
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i32*
  %927 = load i32, i32* %926, align 4
  %928 = zext i32 %927 to i64
  store i64 %928, i64* %RCX.i1106, align 8
  %929 = add i64 %174, -24
  %930 = add i64 %921, 14
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %929 to i64*
  %932 = load i64, i64* %931, align 8
  store i64 %932, i64* %RAX.i1527, align 8
  %933 = add i64 %932, 4
  %934 = add i64 %921, 17
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i32*
  store i32 %927, i32* %935, align 4
  %936 = load i64, i64* %RBP.i, align 8
  %937 = add i64 %936, -32
  %938 = load i64, i64* %3, align 8
  %939 = add i64 %938, 4
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %937 to i64*
  %941 = load i64, i64* %940, align 8
  store i64 %941, i64* %RAX.i1527, align 8
  %942 = add i64 %941, 552
  %943 = add i64 %938, 10
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i32*
  %945 = load i32, i32* %944, align 4
  %946 = zext i32 %945 to i64
  store i64 %946, i64* %RCX.i1106, align 8
  %947 = add i64 %936, -24
  %948 = add i64 %938, 14
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i64*
  %950 = load i64, i64* %949, align 8
  store i64 %950, i64* %RAX.i1527, align 8
  %951 = add i64 %938, 16
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i32*
  store i32 %945, i32* %952, align 4
  %953 = load i64, i64* %RBP.i, align 8
  %954 = add i64 %953, -32
  %955 = load i64, i64* %3, align 8
  %956 = add i64 %955, 4
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %954 to i64*
  %958 = load i64, i64* %957, align 8
  store i64 %958, i64* %RAX.i1527, align 8
  %959 = add i64 %958, 552
  %960 = add i64 %955, 11
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  store i8 0, i8* %14, align 1
  %963 = and i32 %962, 255
  %964 = tail call i32 @llvm.ctpop.i32(i32 %963)
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = xor i8 %966, 1
  store i8 %967, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %968 = icmp eq i32 %962, 0
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %29, align 1
  %970 = lshr i32 %962, 31
  %971 = trunc i32 %970 to i8
  store i8 %971, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br i1 %904, label %block_44a99d, label %block_.L_44ab3e

block_44a99d:                                     ; preds = %block_44a98c
  br i1 %920, label %block_.L_44aa69, label %block_44a9ac

block_44a9ac:                                     ; preds = %block_44a99d
  %.v166 = select i1 %968, i64 151, i64 17
  %972 = add i64 %955, %.v166
  store i64 %972, i64* %3, align 8
  br i1 %968, label %block_.L_44aa64, label %block_44a9de

block_44a9de:                                     ; preds = %block_44a9ac
  %973 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %973, i64* %RAX.i1527, align 8
  %974 = add i64 %973, 14168
  %975 = add i64 %972, 15
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i64*
  %977 = load i64, i64* %976, align 8
  store i64 %977, i64* %RAX.i1527, align 8
  %978 = add i64 %972, 19
  store i64 %978, i64* %3, align 8
  %979 = load i64, i64* %957, align 8
  store i64 %979, i64* %RCX.i1106, align 8
  %980 = add i64 %979, 536
  %981 = add i64 %972, 26
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i32*
  %983 = load i32, i32* %982, align 4
  %984 = sext i32 %983 to i64
  %985 = mul nsw i64 %984, 632
  store i64 %985, i64* %RCX.i1106, align 8
  %986 = lshr i64 %985, 63
  %987 = add i64 %985, %977
  store i64 %987, i64* %RAX.i1527, align 8
  %988 = icmp ult i64 %987, %977
  %989 = icmp ult i64 %987, %985
  %990 = or i1 %988, %989
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %14, align 1
  %992 = trunc i64 %987 to i32
  %993 = and i32 %992, 255
  %994 = tail call i32 @llvm.ctpop.i32(i32 %993)
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  store i8 %997, i8* %21, align 1
  %998 = xor i64 %985, %977
  %999 = xor i64 %998, %987
  %1000 = lshr i64 %999, 4
  %1001 = trunc i64 %1000 to i8
  %1002 = and i8 %1001, 1
  store i8 %1002, i8* %26, align 1
  %1003 = icmp eq i64 %987, 0
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %29, align 1
  %1005 = lshr i64 %987, 63
  %1006 = trunc i64 %1005 to i8
  store i8 %1006, i8* %32, align 1
  %1007 = lshr i64 %977, 63
  %1008 = xor i64 %1005, %1007
  %1009 = xor i64 %1005, %986
  %1010 = add nuw nsw i64 %1008, %1009
  %1011 = icmp eq i64 %1010, 2
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %38, align 1
  %1013 = add i64 %987, 532
  %1014 = add i64 %972, 43
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  %1016 = load i32, i32* %1015, align 4
  store i8 0, i8* %14, align 1
  %1017 = and i32 %1016, 255
  %1018 = tail call i32 @llvm.ctpop.i32(i32 %1017)
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1022 = icmp eq i32 %1016, 0
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %29, align 1
  %1024 = lshr i32 %1016, 31
  %1025 = trunc i32 %1024 to i8
  store i8 %1025, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v167 = select i1 %1022, i64 49, i64 60
  %1026 = add i64 %972, %.v167
  store i64 %1026, i64* %3, align 8
  br i1 %1022, label %block_44aa0f, label %block_.L_44aa1a

block_44aa0f:                                     ; preds = %block_44a9de
  %1027 = load i64, i64* %RBP.i, align 8
  %1028 = add i64 %1027, -12
  %1029 = add i64 %1026, 3
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i32*
  %1031 = load i32, i32* %1030, align 4
  %1032 = zext i32 %1031 to i64
  store i64 %1032, i64* %RAX.i1527, align 8
  %1033 = add i64 %1027, -44
  %1034 = add i64 %1026, 6
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i32*
  store i32 %1031, i32* %1035, align 4
  %1036 = load i64, i64* %3, align 8
  %1037 = add i64 %1036, 74
  br label %block_.L_44aa5f

block_.L_44aa1a:                                  ; preds = %block_44a9de
  store i64 2, i64* %RAX.i1527, align 8
  %1038 = load i64, i64* %RBP.i, align 8
  %1039 = add i64 %1038, -12
  %1040 = add i64 %1026, 8
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = zext i32 %1042 to i64
  store i64 %1043, i64* %RCX.i1106, align 8
  %1044 = add i64 %1038, -48
  %1045 = add i64 %1026, 11
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i32*
  store i32 2, i32* %1046, align 4
  %1047 = load i32, i32* %ECX.i187, align 4
  %1048 = zext i32 %1047 to i64
  %1049 = load i64, i64* %3, align 8
  store i64 %1048, i64* %RAX.i1527, align 8
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1051 = sext i32 %1047 to i64
  %1052 = lshr i64 %1051, 32
  store i64 %1052, i64* %1050, align 8
  %1053 = load i64, i64* %RBP.i, align 8
  %1054 = add i64 %1053, -48
  %1055 = add i64 %1049, 6
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i32*
  %1057 = load i32, i32* %1056, align 4
  %1058 = zext i32 %1057 to i64
  store i64 %1058, i64* %RCX.i1106, align 8
  %1059 = add i64 %1049, 8
  store i64 %1059, i64* %3, align 8
  %1060 = sext i32 %1057 to i64
  %1061 = shl nuw i64 %1052, 32
  %1062 = or i64 %1061, %1048
  %1063 = sdiv i64 %1062, %1060
  %1064 = shl i64 %1063, 32
  %1065 = ashr exact i64 %1064, 32
  %1066 = icmp eq i64 %1063, %1065
  br i1 %1066, label %1069, label %1067

; <label>:1067:                                   ; preds = %block_.L_44aa1a
  %1068 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1059, %struct.Memory* %2)
  %.pre92 = load i32, i32* %EDX.i166, align 4
  %.pre93 = load i64, i64* %3, align 8
  %.pre94 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1104

; <label>:1069:                                   ; preds = %block_.L_44aa1a
  %1070 = srem i64 %1062, %1060
  %1071 = and i64 %1063, 4294967295
  store i64 %1071, i64* %RAX.i1527, align 8
  %1072 = and i64 %1070, 4294967295
  store i64 %1072, i64* %RDX.i1481, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1073 = trunc i64 %1070 to i32
  br label %routine_idivl__ecx.exit1104

routine_idivl__ecx.exit1104:                      ; preds = %1069, %1067
  %1074 = phi i64 [ %.pre94, %1067 ], [ %1053, %1069 ]
  %1075 = phi i64 [ %.pre93, %1067 ], [ %1059, %1069 ]
  %1076 = phi i32 [ %.pre92, %1067 ], [ %1073, %1069 ]
  %1077 = phi %struct.Memory* [ %1068, %1067 ], [ %2, %1069 ]
  store i8 0, i8* %14, align 1
  %1078 = and i32 %1076, 255
  %1079 = tail call i32 @llvm.ctpop.i32(i32 %1078)
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  %1082 = xor i8 %1081, 1
  store i8 %1082, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1083 = icmp eq i32 %1076, 0
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %29, align 1
  %1085 = lshr i32 %1076, 31
  %1086 = trunc i32 %1085 to i8
  store i8 %1086, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v168 = select i1 %1083, i64 9, i64 23
  %1087 = add i64 %1075, %.v168
  store i64 %1087, i64* %3, align 8
  br i1 %1083, label %block_44aa36, label %block_.L_44aa44

block_44aa36:                                     ; preds = %routine_idivl__ecx.exit1104
  %1088 = add i64 %1074, -12
  %1089 = add i64 %1087, 3
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1088 to i32*
  %1091 = load i32, i32* %1090, align 4
  %1092 = zext i32 %1091 to i64
  %1093 = shl nuw i64 %1092, 32
  %1094 = ashr i64 %1093, 33
  %1095 = trunc i32 %1091 to i8
  %1096 = and i8 %1095, 1
  %1097 = trunc i64 %1094 to i32
  %1098 = and i64 %1094, 4294967295
  store i64 %1098, i64* %RAX.i1527, align 8
  store i8 %1096, i8* %14, align 1
  %1099 = and i32 %1097, 255
  %1100 = tail call i32 @llvm.ctpop.i32(i32 %1099)
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = xor i8 %1102, 1
  store i8 %1103, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1104 = icmp eq i32 %1097, 0
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %29, align 1
  %1106 = lshr i64 %1094, 31
  %1107 = trunc i64 %1106 to i8
  %1108 = and i8 %1107, 1
  store i8 %1108, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1109 = add i64 %1074, -44
  %1110 = trunc i64 %1094 to i32
  %1111 = add i64 %1087, 8
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1109 to i32*
  store i32 %1110, i32* %1112, align 4
  %1113 = load i64, i64* %3, align 8
  %1114 = add i64 %1113, 27
  store i64 %1114, i64* %3, align 8
  br label %block_.L_44aa5a

block_.L_44aa44:                                  ; preds = %routine_idivl__ecx.exit1104
  %1115 = add i64 %1074, -24
  %1116 = add i64 %1087, 4
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to i64*
  %1118 = load i64, i64* %1117, align 8
  store i64 %1118, i64* %RAX.i1527, align 8
  %1119 = add i64 %1118, 4
  %1120 = add i64 %1087, 7
  store i64 %1120, i64* %3, align 8
  %1121 = inttoptr i64 %1119 to i32*
  %1122 = load i32, i32* %1121, align 4
  %1123 = add i32 %1122, 1
  %1124 = zext i32 %1123 to i64
  store i64 %1124, i64* %RCX.i1106, align 8
  %1125 = icmp eq i32 %1122, -1
  %1126 = icmp eq i32 %1123, 0
  %1127 = or i1 %1125, %1126
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %14, align 1
  %1129 = and i32 %1123, 255
  %1130 = tail call i32 @llvm.ctpop.i32(i32 %1129)
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  %1133 = xor i8 %1132, 1
  store i8 %1133, i8* %21, align 1
  %1134 = xor i32 %1123, %1122
  %1135 = lshr i32 %1134, 4
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  store i8 %1137, i8* %26, align 1
  %1138 = zext i1 %1126 to i8
  store i8 %1138, i8* %29, align 1
  %1139 = lshr i32 %1123, 31
  %1140 = trunc i32 %1139 to i8
  store i8 %1140, i8* %32, align 1
  %1141 = lshr i32 %1122, 31
  %1142 = xor i32 %1139, %1141
  %1143 = add nuw nsw i32 %1142, %1139
  %1144 = icmp eq i32 %1143, 2
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %38, align 1
  %1146 = add i64 %1087, 13
  store i64 %1146, i64* %3, align 8
  store i32 %1123, i32* %1121, align 4
  %1147 = load i64, i64* %RBP.i, align 8
  %1148 = add i64 %1147, -12
  %1149 = load i64, i64* %3, align 8
  %1150 = add i64 %1149, 3
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1148 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = zext i32 %1152 to i64
  %1154 = shl nuw i64 %1153, 32
  %1155 = ashr i64 %1154, 33
  %1156 = trunc i32 %1152 to i8
  %1157 = and i8 %1156, 1
  %1158 = trunc i64 %1155 to i32
  %1159 = and i64 %1155, 4294967295
  store i64 %1159, i64* %RCX.i1106, align 8
  store i8 %1157, i8* %14, align 1
  %1160 = and i32 %1158, 255
  %1161 = tail call i32 @llvm.ctpop.i32(i32 %1160)
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  %1164 = xor i8 %1163, 1
  store i8 %1164, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1165 = icmp eq i32 %1158, 0
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %29, align 1
  %1167 = lshr i64 %1155, 31
  %1168 = trunc i64 %1167 to i8
  %1169 = and i8 %1168, 1
  store i8 %1169, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1170 = add i64 %1147, -44
  %1171 = trunc i64 %1155 to i32
  %1172 = add i64 %1149, 8
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1170 to i32*
  store i32 %1171, i32* %1173, align 4
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_44aa5a

block_.L_44aa5a:                                  ; preds = %block_.L_44aa44, %block_44aa36
  %1174 = phi i64 [ %.pre95, %block_.L_44aa44 ], [ %1114, %block_44aa36 ]
  %1175 = add i64 %1174, 5
  store i64 %1175, i64* %3, align 8
  br label %block_.L_44aa5f

block_.L_44aa5f:                                  ; preds = %block_.L_44aa5a, %block_44aa0f
  %storemerge57 = phi i64 [ %1037, %block_44aa0f ], [ %1175, %block_.L_44aa5a ]
  %MEMORY.10 = phi %struct.Memory* [ %2, %block_44aa0f ], [ %1077, %block_.L_44aa5a ]
  %1176 = add i64 %storemerge57, 5
  store i64 %1176, i64* %3, align 8
  br label %block_.L_44aa64

block_.L_44aa64:                                  ; preds = %block_.L_44aa5f, %block_44a9ac
  %1177 = phi i64 [ %972, %block_44a9ac ], [ %1176, %block_.L_44aa5f ]
  %MEMORY.11 = phi %struct.Memory* [ %2, %block_44a9ac ], [ %MEMORY.10, %block_.L_44aa5f ]
  %1178 = add i64 %1177, 213
  br label %block_.L_44ab39

block_.L_44aa69:                                  ; preds = %block_44a99d
  %.v169 = select i1 %968, i64 170, i64 17
  %1179 = add i64 %955, %.v169
  store i64 %1179, i64* %3, align 8
  br i1 %968, label %block_.L_44ab34, label %block_44aa9b

block_44aa9b:                                     ; preds = %block_.L_44aa69
  %1180 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1180, i64* %RAX.i1527, align 8
  %1181 = add i64 %1180, 14168
  %1182 = add i64 %1179, 15
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i64*
  %1184 = load i64, i64* %1183, align 8
  store i64 %1184, i64* %RAX.i1527, align 8
  %1185 = add i64 %1179, 19
  store i64 %1185, i64* %3, align 8
  %1186 = load i64, i64* %957, align 8
  store i64 %1186, i64* %RCX.i1106, align 8
  %1187 = add i64 %1186, 536
  %1188 = add i64 %1179, 26
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i32*
  %1190 = load i32, i32* %1189, align 4
  %1191 = sext i32 %1190 to i64
  %1192 = mul nsw i64 %1191, 632
  store i64 %1192, i64* %RCX.i1106, align 8
  %1193 = lshr i64 %1192, 63
  %1194 = add i64 %1192, %1184
  store i64 %1194, i64* %RAX.i1527, align 8
  %1195 = icmp ult i64 %1194, %1184
  %1196 = icmp ult i64 %1194, %1192
  %1197 = or i1 %1195, %1196
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %14, align 1
  %1199 = trunc i64 %1194 to i32
  %1200 = and i32 %1199, 255
  %1201 = tail call i32 @llvm.ctpop.i32(i32 %1200)
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = xor i8 %1203, 1
  store i8 %1204, i8* %21, align 1
  %1205 = xor i64 %1192, %1184
  %1206 = xor i64 %1205, %1194
  %1207 = lshr i64 %1206, 4
  %1208 = trunc i64 %1207 to i8
  %1209 = and i8 %1208, 1
  store i8 %1209, i8* %26, align 1
  %1210 = icmp eq i64 %1194, 0
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %29, align 1
  %1212 = lshr i64 %1194, 63
  %1213 = trunc i64 %1212 to i8
  store i8 %1213, i8* %32, align 1
  %1214 = lshr i64 %1184, 63
  %1215 = xor i64 %1212, %1214
  %1216 = xor i64 %1212, %1193
  %1217 = add nuw nsw i64 %1215, %1216
  %1218 = icmp eq i64 %1217, 2
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %38, align 1
  %1220 = add i64 %1194, 532
  %1221 = add i64 %1179, 43
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1220 to i32*
  %1223 = load i32, i32* %1222, align 4
  store i8 0, i8* %14, align 1
  %1224 = and i32 %1223, 255
  %1225 = tail call i32 @llvm.ctpop.i32(i32 %1224)
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  store i8 %1228, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1229 = icmp eq i32 %1223, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %29, align 1
  %1231 = lshr i32 %1223, 31
  %1232 = trunc i32 %1231 to i8
  store i8 %1232, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v170 = select i1 %1229, i64 49, i64 73
  %1233 = add i64 %1179, %.v170
  store i64 %1233, i64* %3, align 8
  br i1 %1229, label %block_44aacc, label %block_.L_44aae4

block_44aacc:                                     ; preds = %block_44aa9b
  %1234 = load i64, i64* %RBP.i, align 8
  %1235 = add i64 %1234, -24
  %1236 = add i64 %1233, 4
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i64*
  %1238 = load i64, i64* %1237, align 8
  store i64 %1238, i64* %RAX.i1527, align 8
  %1239 = add i64 %1238, 4
  %1240 = add i64 %1233, 7
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i32*
  %1242 = load i32, i32* %1241, align 4
  %1243 = add i32 %1242, 1
  %1244 = zext i32 %1243 to i64
  store i64 %1244, i64* %RCX.i1106, align 8
  %1245 = icmp eq i32 %1242, -1
  %1246 = icmp eq i32 %1243, 0
  %1247 = or i1 %1245, %1246
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %14, align 1
  %1249 = and i32 %1243, 255
  %1250 = tail call i32 @llvm.ctpop.i32(i32 %1249)
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  store i8 %1253, i8* %21, align 1
  %1254 = xor i32 %1243, %1242
  %1255 = lshr i32 %1254, 4
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  store i8 %1257, i8* %26, align 1
  %1258 = zext i1 %1246 to i8
  store i8 %1258, i8* %29, align 1
  %1259 = lshr i32 %1243, 31
  %1260 = trunc i32 %1259 to i8
  store i8 %1260, i8* %32, align 1
  %1261 = lshr i32 %1242, 31
  %1262 = xor i32 %1259, %1261
  %1263 = add nuw nsw i32 %1262, %1259
  %1264 = icmp eq i32 %1263, 2
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %38, align 1
  %1266 = add i64 %1233, 13
  store i64 %1266, i64* %3, align 8
  store i32 %1243, i32* %1241, align 4
  %1267 = load i64, i64* %RBP.i, align 8
  %1268 = add i64 %1267, -12
  %1269 = load i64, i64* %3, align 8
  %1270 = add i64 %1269, 3
  store i64 %1270, i64* %3, align 8
  %1271 = inttoptr i64 %1268 to i32*
  %1272 = load i32, i32* %1271, align 4
  %1273 = zext i32 %1272 to i64
  store i64 %1273, i64* %RCX.i1106, align 8
  %1274 = add i64 %1267, -44
  %1275 = add i64 %1269, 6
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to i32*
  store i32 %1272, i32* %1276, align 4
  %1277 = load i64, i64* %3, align 8
  %1278 = add i64 %1277, 80
  br label %block_.L_44ab2f

block_.L_44aae4:                                  ; preds = %block_44aa9b
  store i64 2, i64* %RAX.i1527, align 8
  %1279 = load i64, i64* %RBP.i, align 8
  %1280 = add i64 %1279, -12
  %1281 = add i64 %1233, 8
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i32*
  %1283 = load i32, i32* %1282, align 4
  %1284 = zext i32 %1283 to i64
  store i64 %1284, i64* %RCX.i1106, align 8
  %1285 = add i64 %1279, -52
  %1286 = add i64 %1233, 11
  store i64 %1286, i64* %3, align 8
  %1287 = inttoptr i64 %1285 to i32*
  store i32 2, i32* %1287, align 4
  %1288 = load i32, i32* %ECX.i187, align 4
  %1289 = zext i32 %1288 to i64
  %1290 = load i64, i64* %3, align 8
  store i64 %1289, i64* %RAX.i1527, align 8
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1292 = sext i32 %1288 to i64
  %1293 = lshr i64 %1292, 32
  store i64 %1293, i64* %1291, align 8
  %1294 = load i64, i64* %RBP.i, align 8
  %1295 = add i64 %1294, -52
  %1296 = add i64 %1290, 6
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i32*
  %1298 = load i32, i32* %1297, align 4
  %1299 = zext i32 %1298 to i64
  store i64 %1299, i64* %RCX.i1106, align 8
  %1300 = add i64 %1290, 8
  store i64 %1300, i64* %3, align 8
  %1301 = sext i32 %1298 to i64
  %1302 = shl nuw i64 %1293, 32
  %1303 = or i64 %1302, %1289
  %1304 = sdiv i64 %1303, %1301
  %1305 = shl i64 %1304, 32
  %1306 = ashr exact i64 %1305, 32
  %1307 = icmp eq i64 %1304, %1306
  br i1 %1307, label %1310, label %1308

; <label>:1308:                                   ; preds = %block_.L_44aae4
  %1309 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1300, %struct.Memory* %2)
  %.pre96 = load i32, i32* %EDX.i166, align 4
  %.pre97 = load i64, i64* %3, align 8
  %.pre98 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:1310:                                   ; preds = %block_.L_44aae4
  %1311 = srem i64 %1303, %1301
  %1312 = and i64 %1304, 4294967295
  store i64 %1312, i64* %RAX.i1527, align 8
  %1313 = and i64 %1311, 4294967295
  store i64 %1313, i64* %RDX.i1481, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1314 = trunc i64 %1311 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1310, %1308
  %1315 = phi i64 [ %.pre98, %1308 ], [ %1294, %1310 ]
  %1316 = phi i64 [ %.pre97, %1308 ], [ %1300, %1310 ]
  %1317 = phi i32 [ %.pre96, %1308 ], [ %1314, %1310 ]
  %1318 = phi %struct.Memory* [ %1309, %1308 ], [ %2, %1310 ]
  store i8 0, i8* %14, align 1
  %1319 = and i32 %1317, 255
  %1320 = tail call i32 @llvm.ctpop.i32(i32 %1319)
  %1321 = trunc i32 %1320 to i8
  %1322 = and i8 %1321, 1
  %1323 = xor i8 %1322, 1
  store i8 %1323, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1324 = icmp eq i32 %1317, 0
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %29, align 1
  %1326 = lshr i32 %1317, 31
  %1327 = trunc i32 %1326 to i8
  store i8 %1327, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v171 = select i1 %1324, i64 9, i64 26
  %1328 = add i64 %1316, %.v171
  store i64 %1328, i64* %3, align 8
  br i1 %1324, label %block_44ab00, label %block_.L_44ab11

block_44ab00:                                     ; preds = %routine_idivl__ecx.exit
  %1329 = add i64 %1315, -12
  %1330 = add i64 %1328, 3
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i32*
  %1332 = load i32, i32* %1331, align 4
  %1333 = zext i32 %1332 to i64
  store i64 %1333, i64* %RAX.i1527, align 8
  %1334 = add i64 %1315, -40
  %1335 = add i64 %1328, 6
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to i32*
  %1337 = load i32, i32* %1336, align 4
  %1338 = add i32 %1337, %1332
  %1339 = zext i32 %1338 to i64
  %1340 = shl nuw i64 %1339, 32
  %1341 = ashr i64 %1340, 33
  %1342 = trunc i32 %1338 to i8
  %1343 = and i8 %1342, 1
  %1344 = trunc i64 %1341 to i32
  %1345 = and i64 %1341, 4294967295
  store i64 %1345, i64* %RAX.i1527, align 8
  store i8 %1343, i8* %14, align 1
  %1346 = and i32 %1344, 255
  %1347 = tail call i32 @llvm.ctpop.i32(i32 %1346)
  %1348 = trunc i32 %1347 to i8
  %1349 = and i8 %1348, 1
  %1350 = xor i8 %1349, 1
  store i8 %1350, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1351 = icmp eq i32 %1344, 0
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %29, align 1
  %1353 = lshr i64 %1341, 31
  %1354 = trunc i64 %1353 to i8
  %1355 = and i8 %1354, 1
  store i8 %1355, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1356 = add i64 %1315, -44
  %1357 = trunc i64 %1341 to i32
  %1358 = add i64 %1328, 11
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1356 to i32*
  store i32 %1357, i32* %1359, align 4
  %1360 = load i64, i64* %3, align 8
  %1361 = add i64 %1360, 30
  store i64 %1361, i64* %3, align 8
  br label %block_.L_44ab2a

block_.L_44ab11:                                  ; preds = %routine_idivl__ecx.exit
  %1362 = add i64 %1315, -24
  %1363 = add i64 %1328, 4
  store i64 %1363, i64* %3, align 8
  %1364 = inttoptr i64 %1362 to i64*
  %1365 = load i64, i64* %1364, align 8
  store i64 %1365, i64* %RAX.i1527, align 8
  %1366 = add i64 %1365, 4
  %1367 = add i64 %1328, 7
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i32*
  %1369 = load i32, i32* %1368, align 4
  %1370 = add i32 %1369, 1
  %1371 = zext i32 %1370 to i64
  store i64 %1371, i64* %RCX.i1106, align 8
  %1372 = icmp eq i32 %1369, -1
  %1373 = icmp eq i32 %1370, 0
  %1374 = or i1 %1372, %1373
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %14, align 1
  %1376 = and i32 %1370, 255
  %1377 = tail call i32 @llvm.ctpop.i32(i32 %1376)
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  %1380 = xor i8 %1379, 1
  store i8 %1380, i8* %21, align 1
  %1381 = xor i32 %1370, %1369
  %1382 = lshr i32 %1381, 4
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  store i8 %1384, i8* %26, align 1
  %1385 = zext i1 %1373 to i8
  store i8 %1385, i8* %29, align 1
  %1386 = lshr i32 %1370, 31
  %1387 = trunc i32 %1386 to i8
  store i8 %1387, i8* %32, align 1
  %1388 = lshr i32 %1369, 31
  %1389 = xor i32 %1386, %1388
  %1390 = add nuw nsw i32 %1389, %1386
  %1391 = icmp eq i32 %1390, 2
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %38, align 1
  %1393 = add i64 %1328, 13
  store i64 %1393, i64* %3, align 8
  store i32 %1370, i32* %1368, align 4
  %1394 = load i64, i64* %RBP.i, align 8
  %1395 = add i64 %1394, -12
  %1396 = load i64, i64* %3, align 8
  %1397 = add i64 %1396, 3
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1395 to i32*
  %1399 = load i32, i32* %1398, align 4
  %1400 = zext i32 %1399 to i64
  store i64 %1400, i64* %RCX.i1106, align 8
  %1401 = add i64 %1394, -40
  %1402 = add i64 %1396, 6
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1401 to i32*
  %1404 = load i32, i32* %1403, align 4
  %1405 = add i32 %1404, %1399
  %1406 = zext i32 %1405 to i64
  %1407 = shl nuw i64 %1406, 32
  %1408 = ashr i64 %1407, 33
  %1409 = trunc i32 %1405 to i8
  %1410 = and i8 %1409, 1
  %1411 = trunc i64 %1408 to i32
  %1412 = and i64 %1408, 4294967295
  store i64 %1412, i64* %RCX.i1106, align 8
  store i8 %1410, i8* %14, align 1
  %1413 = and i32 %1411, 255
  %1414 = tail call i32 @llvm.ctpop.i32(i32 %1413)
  %1415 = trunc i32 %1414 to i8
  %1416 = and i8 %1415, 1
  %1417 = xor i8 %1416, 1
  store i8 %1417, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1418 = icmp eq i32 %1411, 0
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %29, align 1
  %1420 = lshr i64 %1408, 31
  %1421 = trunc i64 %1420 to i8
  %1422 = and i8 %1421, 1
  store i8 %1422, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1423 = add i64 %1394, -44
  %1424 = trunc i64 %1408 to i32
  %1425 = add i64 %1396, 11
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1423 to i32*
  store i32 %1424, i32* %1426, align 4
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_44ab2a

block_.L_44ab2a:                                  ; preds = %block_.L_44ab11, %block_44ab00
  %1427 = phi i64 [ %.pre99, %block_.L_44ab11 ], [ %1361, %block_44ab00 ]
  %1428 = add i64 %1427, 5
  store i64 %1428, i64* %3, align 8
  br label %block_.L_44ab2f

block_.L_44ab2f:                                  ; preds = %block_.L_44ab2a, %block_44aacc
  %storemerge60 = phi i64 [ %1278, %block_44aacc ], [ %1428, %block_.L_44ab2a ]
  %MEMORY.13 = phi %struct.Memory* [ %2, %block_44aacc ], [ %1318, %block_.L_44ab2a ]
  %1429 = add i64 %storemerge60, 5
  store i64 %1429, i64* %3, align 8
  br label %block_.L_44ab34

block_.L_44ab34:                                  ; preds = %block_.L_44ab2f, %block_.L_44aa69
  %1430 = phi i64 [ %1179, %block_.L_44aa69 ], [ %1429, %block_.L_44ab2f ]
  %MEMORY.14 = phi %struct.Memory* [ %2, %block_.L_44aa69 ], [ %MEMORY.13, %block_.L_44ab2f ]
  %1431 = add i64 %1430, 5
  store i64 %1431, i64* %3, align 8
  br label %block_.L_44ab39

block_.L_44ab39:                                  ; preds = %block_.L_44ab34, %block_.L_44aa64
  %storemerge58 = phi i64 [ %1178, %block_.L_44aa64 ], [ %1431, %block_.L_44ab34 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.11, %block_.L_44aa64 ], [ %MEMORY.14, %block_.L_44ab34 ]
  %1432 = add i64 %storemerge58, 422
  br label %block_.L_44acdf

block_.L_44ab3e:                                  ; preds = %block_44a98c
  br i1 %920, label %block_.L_44ac0a, label %block_44ab4d

block_44ab4d:                                     ; preds = %block_.L_44ab3e
  %.v160 = select i1 %968, i64 151, i64 17
  %1433 = add i64 %955, %.v160
  store i64 %1433, i64* %3, align 8
  br i1 %968, label %block_.L_44ac05, label %block_44ab7f

block_44ab7f:                                     ; preds = %block_44ab4d
  %1434 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1434, i64* %RAX.i1527, align 8
  %1435 = add i64 %1434, 14168
  %1436 = add i64 %1433, 15
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i64*
  %1438 = load i64, i64* %1437, align 8
  store i64 %1438, i64* %RAX.i1527, align 8
  %1439 = add i64 %1433, 19
  store i64 %1439, i64* %3, align 8
  %1440 = load i64, i64* %957, align 8
  store i64 %1440, i64* %RCX.i1106, align 8
  %1441 = add i64 %1440, 536
  %1442 = add i64 %1433, 26
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i32*
  %1444 = load i32, i32* %1443, align 4
  %1445 = sext i32 %1444 to i64
  %1446 = mul nsw i64 %1445, 632
  store i64 %1446, i64* %RCX.i1106, align 8
  %1447 = lshr i64 %1446, 63
  %1448 = add i64 %1446, %1438
  store i64 %1448, i64* %RAX.i1527, align 8
  %1449 = icmp ult i64 %1448, %1438
  %1450 = icmp ult i64 %1448, %1446
  %1451 = or i1 %1449, %1450
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %14, align 1
  %1453 = trunc i64 %1448 to i32
  %1454 = and i32 %1453, 255
  %1455 = tail call i32 @llvm.ctpop.i32(i32 %1454)
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  %1458 = xor i8 %1457, 1
  store i8 %1458, i8* %21, align 1
  %1459 = xor i64 %1446, %1438
  %1460 = xor i64 %1459, %1448
  %1461 = lshr i64 %1460, 4
  %1462 = trunc i64 %1461 to i8
  %1463 = and i8 %1462, 1
  store i8 %1463, i8* %26, align 1
  %1464 = icmp eq i64 %1448, 0
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %29, align 1
  %1466 = lshr i64 %1448, 63
  %1467 = trunc i64 %1466 to i8
  store i8 %1467, i8* %32, align 1
  %1468 = lshr i64 %1438, 63
  %1469 = xor i64 %1466, %1468
  %1470 = xor i64 %1466, %1447
  %1471 = add nuw nsw i64 %1469, %1470
  %1472 = icmp eq i64 %1471, 2
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %38, align 1
  %1474 = add i64 %1448, 532
  %1475 = add i64 %1433, 43
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i32*
  %1477 = load i32, i32* %1476, align 4
  store i8 0, i8* %14, align 1
  %1478 = and i32 %1477, 255
  %1479 = tail call i32 @llvm.ctpop.i32(i32 %1478)
  %1480 = trunc i32 %1479 to i8
  %1481 = and i8 %1480, 1
  %1482 = xor i8 %1481, 1
  store i8 %1482, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1483 = icmp eq i32 %1477, 0
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %29, align 1
  %1485 = lshr i32 %1477, 31
  %1486 = trunc i32 %1485 to i8
  store i8 %1486, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v161 = select i1 %1483, i64 49, i64 123
  %1487 = add i64 %1433, %.v161
  store i64 %1487, i64* %3, align 8
  br i1 %1483, label %block_44abb0, label %block_.L_44abfa

block_44abb0:                                     ; preds = %block_44ab7f
  store i64 2, i64* %RAX.i1527, align 8
  %1488 = load i64, i64* %RBP.i, align 8
  %1489 = add i64 %1488, -12
  %1490 = add i64 %1487, 8
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1489 to i32*
  %1492 = load i32, i32* %1491, align 4
  %1493 = zext i32 %1492 to i64
  store i64 %1493, i64* %RCX.i1106, align 8
  %1494 = add i64 %1488, -40
  %1495 = add i64 %1487, 11
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = zext i32 %1497 to i64
  store i64 %1498, i64* %RDX.i1481, align 8
  %1499 = add i64 %1488, -56
  %1500 = add i64 %1487, 14
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i32*
  store i32 2, i32* %1501, align 4
  %1502 = load i32, i32* %EDX.i166, align 4
  %1503 = zext i32 %1502 to i64
  %1504 = load i64, i64* %3, align 8
  store i64 %1503, i64* %RAX.i1527, align 8
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1506 = sext i32 %1502 to i64
  %1507 = lshr i64 %1506, 32
  store i64 %1507, i64* %1505, align 8
  %RSI.i871 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %1508 = load i64, i64* %RBP.i, align 8
  %1509 = add i64 %1508, -56
  %1510 = add i64 %1504, 6
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i32*
  %1512 = load i32, i32* %1511, align 4
  %1513 = zext i32 %1512 to i64
  store i64 %1513, i64* %RSI.i871, align 8
  %1514 = add i64 %1504, 8
  store i64 %1514, i64* %3, align 8
  %1515 = sext i32 %1512 to i64
  %1516 = shl nuw i64 %1507, 32
  %1517 = or i64 %1516, %1503
  %1518 = sdiv i64 %1517, %1515
  %1519 = shl i64 %1518, 32
  %1520 = ashr exact i64 %1519, 32
  %1521 = icmp eq i64 %1518, %1520
  br i1 %1521, label %1524, label %1522

; <label>:1522:                                   ; preds = %block_44abb0
  %1523 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1514, %struct.Memory* %2)
  %.pre100 = load i32, i32* %EAX.i1463, align 4
  %.pre101 = load i64, i64* %3, align 8
  %.pre102 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit867

; <label>:1524:                                   ; preds = %block_44abb0
  %1525 = srem i64 %1517, %1515
  %1526 = and i64 %1518, 4294967295
  store i64 %1526, i64* %RAX.i1527, align 8
  %1527 = and i64 %1525, 4294967295
  store i64 %1527, i64* %RDX.i1481, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1528 = trunc i64 %1518 to i32
  br label %routine_idivl__esi.exit867

routine_idivl__esi.exit867:                       ; preds = %1524, %1522
  %1529 = phi i64 [ %.pre102, %1522 ], [ %1508, %1524 ]
  %1530 = phi i64 [ %.pre101, %1522 ], [ %1514, %1524 ]
  %1531 = phi i32 [ %.pre100, %1522 ], [ %1528, %1524 ]
  %1532 = phi %struct.Memory* [ %1523, %1522 ], [ %2, %1524 ]
  %1533 = load i32, i32* %ECX.i187, align 4
  %1534 = sub i32 %1533, %1531
  %1535 = icmp ult i32 %1533, %1531
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %14, align 1
  %1537 = and i32 %1534, 255
  %1538 = tail call i32 @llvm.ctpop.i32(i32 %1537)
  %1539 = trunc i32 %1538 to i8
  %1540 = and i8 %1539, 1
  %1541 = xor i8 %1540, 1
  store i8 %1541, i8* %21, align 1
  %1542 = xor i32 %1531, %1533
  %1543 = xor i32 %1542, %1534
  %1544 = lshr i32 %1543, 4
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  store i8 %1546, i8* %26, align 1
  %1547 = icmp eq i32 %1534, 0
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %29, align 1
  %1549 = lshr i32 %1534, 31
  %1550 = trunc i32 %1549 to i8
  store i8 %1550, i8* %32, align 1
  %1551 = lshr i32 %1533, 31
  %1552 = lshr i32 %1531, 31
  %1553 = xor i32 %1552, %1551
  %1554 = xor i32 %1549, %1551
  %1555 = add nuw nsw i32 %1554, %1553
  %1556 = icmp eq i32 %1555, 2
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %38, align 1
  %1558 = icmp ne i8 %1550, 0
  %1559 = xor i1 %1558, %1556
  %.v162 = select i1 %1559, i64 8, i64 22
  %1560 = add i64 %1530, %.v162
  store i64 %1560, i64* %3, align 8
  br i1 %1559, label %block_44abce, label %block_.L_44abdc

block_44abce:                                     ; preds = %routine_idivl__esi.exit867
  %1561 = add i64 %1529, -12
  %1562 = add i64 %1560, 3
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i32*
  %1564 = load i32, i32* %1563, align 4
  %1565 = shl i32 %1564, 1
  %1566 = icmp slt i32 %1564, 0
  %1567 = icmp slt i32 %1565, 0
  %1568 = xor i1 %1566, %1567
  %1569 = zext i32 %1565 to i64
  store i64 %1569, i64* %RAX.i1527, align 8
  %.lobit61 = lshr i32 %1564, 31
  %1570 = trunc i32 %.lobit61 to i8
  store i8 %1570, i8* %14, align 1
  %1571 = and i32 %1565, 254
  %1572 = tail call i32 @llvm.ctpop.i32(i32 %1571)
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  store i8 %1575, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1576 = icmp eq i32 %1565, 0
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %29, align 1
  %1578 = lshr i32 %1564, 30
  %1579 = trunc i32 %1578 to i8
  %1580 = and i8 %1579, 1
  store i8 %1580, i8* %32, align 1
  %1581 = zext i1 %1568 to i8
  store i8 %1581, i8* %38, align 1
  %1582 = add i64 %1529, -44
  %1583 = add i64 %1560, 8
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1582 to i32*
  store i32 %1565, i32* %1584, align 4
  %1585 = load i64, i64* %3, align 8
  %1586 = add i64 %1585, 30
  store i64 %1586, i64* %3, align 8
  br label %block_.L_44abf5

block_.L_44abdc:                                  ; preds = %routine_idivl__esi.exit867
  %1587 = add i64 %1529, -24
  %1588 = add i64 %1560, 4
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1587 to i64*
  %1590 = load i64, i64* %1589, align 8
  store i64 %1590, i64* %RAX.i1527, align 8
  %1591 = add i64 %1590, 4
  %1592 = add i64 %1560, 7
  store i64 %1592, i64* %3, align 8
  %1593 = inttoptr i64 %1591 to i32*
  %1594 = load i32, i32* %1593, align 4
  %1595 = add i32 %1594, 1
  %1596 = zext i32 %1595 to i64
  store i64 %1596, i64* %RCX.i1106, align 8
  %1597 = icmp eq i32 %1594, -1
  %1598 = icmp eq i32 %1595, 0
  %1599 = or i1 %1597, %1598
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %14, align 1
  %1601 = and i32 %1595, 255
  %1602 = tail call i32 @llvm.ctpop.i32(i32 %1601)
  %1603 = trunc i32 %1602 to i8
  %1604 = and i8 %1603, 1
  %1605 = xor i8 %1604, 1
  store i8 %1605, i8* %21, align 1
  %1606 = xor i32 %1595, %1594
  %1607 = lshr i32 %1606, 4
  %1608 = trunc i32 %1607 to i8
  %1609 = and i8 %1608, 1
  store i8 %1609, i8* %26, align 1
  %1610 = zext i1 %1598 to i8
  store i8 %1610, i8* %29, align 1
  %1611 = lshr i32 %1595, 31
  %1612 = trunc i32 %1611 to i8
  store i8 %1612, i8* %32, align 1
  %1613 = lshr i32 %1594, 31
  %1614 = xor i32 %1611, %1613
  %1615 = add nuw nsw i32 %1614, %1611
  %1616 = icmp eq i32 %1615, 2
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %38, align 1
  %1618 = add i64 %1560, 13
  store i64 %1618, i64* %3, align 8
  store i32 %1595, i32* %1593, align 4
  %1619 = load i64, i64* %RBP.i, align 8
  %1620 = add i64 %1619, -12
  %1621 = load i64, i64* %3, align 8
  %1622 = add i64 %1621, 3
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1620 to i32*
  %1624 = load i32, i32* %1623, align 4
  %1625 = shl i32 %1624, 1
  %1626 = icmp slt i32 %1624, 0
  %1627 = icmp slt i32 %1625, 0
  %1628 = xor i1 %1626, %1627
  %1629 = zext i32 %1625 to i64
  store i64 %1629, i64* %RCX.i1106, align 8
  %.lobit63 = lshr i32 %1624, 31
  %1630 = trunc i32 %.lobit63 to i8
  store i8 %1630, i8* %14, align 1
  %1631 = and i32 %1625, 254
  %1632 = tail call i32 @llvm.ctpop.i32(i32 %1631)
  %1633 = trunc i32 %1632 to i8
  %1634 = and i8 %1633, 1
  %1635 = xor i8 %1634, 1
  store i8 %1635, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1636 = icmp eq i32 %1625, 0
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %29, align 1
  %1638 = lshr i32 %1624, 30
  %1639 = trunc i32 %1638 to i8
  %1640 = and i8 %1639, 1
  store i8 %1640, i8* %32, align 1
  %1641 = zext i1 %1628 to i8
  store i8 %1641, i8* %38, align 1
  %1642 = add i64 %1619, -40
  %1643 = add i64 %1621, 8
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = sub i32 %1625, %1645
  %1647 = zext i32 %1646 to i64
  store i64 %1647, i64* %RCX.i1106, align 8
  %1648 = icmp ult i32 %1625, %1645
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %14, align 1
  %1650 = and i32 %1646, 255
  %1651 = tail call i32 @llvm.ctpop.i32(i32 %1650)
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  %1654 = xor i8 %1653, 1
  store i8 %1654, i8* %21, align 1
  %1655 = xor i32 %1645, %1625
  %1656 = xor i32 %1655, %1646
  %1657 = lshr i32 %1656, 4
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  store i8 %1659, i8* %26, align 1
  %1660 = icmp eq i32 %1646, 0
  %1661 = zext i1 %1660 to i8
  store i8 %1661, i8* %29, align 1
  %1662 = lshr i32 %1646, 31
  %1663 = trunc i32 %1662 to i8
  store i8 %1663, i8* %32, align 1
  %1664 = lshr i32 %1624, 30
  %1665 = and i32 %1664, 1
  %1666 = lshr i32 %1645, 31
  %1667 = xor i32 %1666, %1665
  %1668 = xor i32 %1662, %1665
  %1669 = add nuw nsw i32 %1668, %1667
  %1670 = icmp eq i32 %1669, 2
  %1671 = zext i1 %1670 to i8
  store i8 %1671, i8* %38, align 1
  %1672 = add i64 %1619, -44
  %1673 = add i64 %1621, 11
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1672 to i32*
  store i32 %1646, i32* %1674, align 4
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_44abf5

block_.L_44abf5:                                  ; preds = %block_.L_44abdc, %block_44abce
  %1675 = phi i64 [ %.pre103, %block_.L_44abdc ], [ %1586, %block_44abce ]
  %1676 = add i64 %1675, 11
  store i64 %1676, i64* %3, align 8
  br label %block_.L_44ac00

block_.L_44abfa:                                  ; preds = %block_44ab7f
  %1677 = load i64, i64* %RBP.i, align 8
  %1678 = add i64 %1677, -12
  %1679 = add i64 %1487, 3
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i32*
  %1681 = load i32, i32* %1680, align 4
  %1682 = zext i32 %1681 to i64
  store i64 %1682, i64* %RAX.i1527, align 8
  %1683 = add i64 %1677, -44
  %1684 = add i64 %1487, 6
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1683 to i32*
  store i32 %1681, i32* %1685, align 4
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_44ac00

block_.L_44ac00:                                  ; preds = %block_.L_44abfa, %block_.L_44abf5
  %1686 = phi i64 [ %.pre104, %block_.L_44abfa ], [ %1676, %block_.L_44abf5 ]
  %MEMORY.17 = phi %struct.Memory* [ %2, %block_.L_44abfa ], [ %1532, %block_.L_44abf5 ]
  %1687 = add i64 %1686, 5
  store i64 %1687, i64* %3, align 8
  br label %block_.L_44ac05

block_.L_44ac05:                                  ; preds = %block_.L_44ac00, %block_44ab4d
  %1688 = phi i64 [ %1433, %block_44ab4d ], [ %1687, %block_.L_44ac00 ]
  %MEMORY.18 = phi %struct.Memory* [ %2, %block_44ab4d ], [ %MEMORY.17, %block_.L_44ac00 ]
  %1689 = add i64 %1688, 213
  br label %block_.L_44acda

block_.L_44ac0a:                                  ; preds = %block_.L_44ab3e
  %.v163 = select i1 %968, i64 170, i64 17
  %1690 = add i64 %955, %.v163
  store i64 %1690, i64* %3, align 8
  br i1 %968, label %block_.L_44acd5, label %block_44ac3c

block_44ac3c:                                     ; preds = %block_.L_44ac0a
  %1691 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1691, i64* %RAX.i1527, align 8
  %1692 = add i64 %1691, 14168
  %1693 = add i64 %1690, 15
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to i64*
  %1695 = load i64, i64* %1694, align 8
  store i64 %1695, i64* %RAX.i1527, align 8
  %1696 = add i64 %1690, 19
  store i64 %1696, i64* %3, align 8
  %1697 = load i64, i64* %957, align 8
  store i64 %1697, i64* %RCX.i1106, align 8
  %1698 = add i64 %1697, 536
  %1699 = add i64 %1690, 26
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1698 to i32*
  %1701 = load i32, i32* %1700, align 4
  %1702 = sext i32 %1701 to i64
  %1703 = mul nsw i64 %1702, 632
  store i64 %1703, i64* %RCX.i1106, align 8
  %1704 = lshr i64 %1703, 63
  %1705 = add i64 %1703, %1695
  store i64 %1705, i64* %RAX.i1527, align 8
  %1706 = icmp ult i64 %1705, %1695
  %1707 = icmp ult i64 %1705, %1703
  %1708 = or i1 %1706, %1707
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %14, align 1
  %1710 = trunc i64 %1705 to i32
  %1711 = and i32 %1710, 255
  %1712 = tail call i32 @llvm.ctpop.i32(i32 %1711)
  %1713 = trunc i32 %1712 to i8
  %1714 = and i8 %1713, 1
  %1715 = xor i8 %1714, 1
  store i8 %1715, i8* %21, align 1
  %1716 = xor i64 %1703, %1695
  %1717 = xor i64 %1716, %1705
  %1718 = lshr i64 %1717, 4
  %1719 = trunc i64 %1718 to i8
  %1720 = and i8 %1719, 1
  store i8 %1720, i8* %26, align 1
  %1721 = icmp eq i64 %1705, 0
  %1722 = zext i1 %1721 to i8
  store i8 %1722, i8* %29, align 1
  %1723 = lshr i64 %1705, 63
  %1724 = trunc i64 %1723 to i8
  store i8 %1724, i8* %32, align 1
  %1725 = lshr i64 %1695, 63
  %1726 = xor i64 %1723, %1725
  %1727 = xor i64 %1723, %1704
  %1728 = add nuw nsw i64 %1726, %1727
  %1729 = icmp eq i64 %1728, 2
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %38, align 1
  %1731 = add i64 %1705, 532
  %1732 = add i64 %1690, 43
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to i32*
  %1734 = load i32, i32* %1733, align 4
  store i8 0, i8* %14, align 1
  %1735 = and i32 %1734, 255
  %1736 = tail call i32 @llvm.ctpop.i32(i32 %1735)
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = xor i8 %1738, 1
  store i8 %1739, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1740 = icmp eq i32 %1734, 0
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %29, align 1
  %1742 = lshr i32 %1734, 31
  %1743 = trunc i32 %1742 to i8
  store i8 %1743, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v164 = select i1 %1740, i64 49, i64 129
  %1744 = add i64 %1690, %.v164
  store i64 %1744, i64* %3, align 8
  br i1 %1740, label %block_44ac6d, label %block_.L_44acbd

block_44ac6d:                                     ; preds = %block_44ac3c
  store i64 2, i64* %RAX.i1527, align 8
  %1745 = load i64, i64* %RBP.i, align 8
  %1746 = add i64 %1745, -12
  %1747 = add i64 %1744, 8
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1746 to i32*
  %1749 = load i32, i32* %1748, align 4
  %1750 = zext i32 %1749 to i64
  store i64 %1750, i64* %RCX.i1106, align 8
  %1751 = add i64 %1745, -40
  %1752 = add i64 %1744, 11
  store i64 %1752, i64* %3, align 8
  %1753 = inttoptr i64 %1751 to i32*
  %1754 = load i32, i32* %1753, align 4
  %1755 = zext i32 %1754 to i64
  store i64 %1755, i64* %RDX.i1481, align 8
  %1756 = add i64 %1745, -60
  %1757 = add i64 %1744, 14
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i32*
  store i32 2, i32* %1758, align 4
  %1759 = load i32, i32* %EDX.i166, align 4
  %1760 = zext i32 %1759 to i64
  %1761 = load i64, i64* %3, align 8
  store i64 %1760, i64* %RAX.i1527, align 8
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1763 = sext i32 %1759 to i64
  %1764 = lshr i64 %1763, 32
  store i64 %1764, i64* %1762, align 8
  %RSI.i757 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %1765 = load i64, i64* %RBP.i, align 8
  %1766 = add i64 %1765, -60
  %1767 = add i64 %1761, 6
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1766 to i32*
  %1769 = load i32, i32* %1768, align 4
  %1770 = zext i32 %1769 to i64
  store i64 %1770, i64* %RSI.i757, align 8
  %1771 = add i64 %1761, 8
  store i64 %1771, i64* %3, align 8
  %1772 = sext i32 %1769 to i64
  %1773 = shl nuw i64 %1764, 32
  %1774 = or i64 %1773, %1760
  %1775 = sdiv i64 %1774, %1772
  %1776 = shl i64 %1775, 32
  %1777 = ashr exact i64 %1776, 32
  %1778 = icmp eq i64 %1775, %1777
  br i1 %1778, label %1781, label %1779

; <label>:1779:                                   ; preds = %block_44ac6d
  %1780 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1771, %struct.Memory* %2)
  %.pre105 = load i32, i32* %EAX.i1463, align 4
  %.pre106 = load i64, i64* %3, align 8
  %.pre107 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:1781:                                   ; preds = %block_44ac6d
  %1782 = srem i64 %1774, %1772
  %1783 = and i64 %1775, 4294967295
  store i64 %1783, i64* %RAX.i1527, align 8
  %1784 = and i64 %1782, 4294967295
  store i64 %1784, i64* %RDX.i1481, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1785 = trunc i64 %1775 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %1781, %1779
  %1786 = phi i64 [ %.pre107, %1779 ], [ %1765, %1781 ]
  %1787 = phi i64 [ %.pre106, %1779 ], [ %1771, %1781 ]
  %1788 = phi i32 [ %.pre105, %1779 ], [ %1785, %1781 ]
  %1789 = phi %struct.Memory* [ %1780, %1779 ], [ %2, %1781 ]
  %1790 = load i32, i32* %ECX.i187, align 4
  %1791 = sub i32 %1790, %1788
  %1792 = icmp ult i32 %1790, %1788
  %1793 = zext i1 %1792 to i8
  store i8 %1793, i8* %14, align 1
  %1794 = and i32 %1791, 255
  %1795 = tail call i32 @llvm.ctpop.i32(i32 %1794)
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  %1798 = xor i8 %1797, 1
  store i8 %1798, i8* %21, align 1
  %1799 = xor i32 %1788, %1790
  %1800 = xor i32 %1799, %1791
  %1801 = lshr i32 %1800, 4
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  store i8 %1803, i8* %26, align 1
  %1804 = icmp eq i32 %1791, 0
  %1805 = zext i1 %1804 to i8
  store i8 %1805, i8* %29, align 1
  %1806 = lshr i32 %1791, 31
  %1807 = trunc i32 %1806 to i8
  store i8 %1807, i8* %32, align 1
  %1808 = lshr i32 %1790, 31
  %1809 = lshr i32 %1788, 31
  %1810 = xor i32 %1809, %1808
  %1811 = xor i32 %1806, %1808
  %1812 = add nuw nsw i32 %1811, %1810
  %1813 = icmp eq i32 %1812, 2
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %38, align 1
  %1815 = icmp ne i8 %1807, 0
  %1816 = xor i1 %1815, %1813
  %.v165 = select i1 %1816, i64 8, i64 25
  %1817 = add i64 %1787, %.v165
  store i64 %1817, i64* %3, align 8
  br i1 %1816, label %block_44ac8b, label %block_.L_44ac9c

block_44ac8b:                                     ; preds = %routine_idivl__esi.exit
  %1818 = add i64 %1786, -12
  %1819 = add i64 %1817, 3
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i32*
  %1821 = load i32, i32* %1820, align 4
  %1822 = shl i32 %1821, 1
  %1823 = or i32 %1822, 1
  %1824 = zext i32 %1823 to i64
  store i64 %1824, i64* %RAX.i1527, align 8
  store i8 0, i8* %14, align 1
  %1825 = and i32 %1823, 255
  %1826 = tail call i32 @llvm.ctpop.i32(i32 %1825)
  %1827 = trunc i32 %1826 to i8
  %1828 = and i8 %1827, 1
  %1829 = xor i8 %1828, 1
  store i8 %1829, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1830 = lshr i32 %1821, 30
  %1831 = and i32 %1830, 1
  %1832 = trunc i32 %1831 to i8
  store i8 %1832, i8* %32, align 1
  %1833 = lshr i32 %1821, 30
  %1834 = and i32 %1833, 1
  %1835 = xor i32 %1831, %1834
  %1836 = add nuw nsw i32 %1835, %1831
  %1837 = icmp eq i32 %1836, 2
  %1838 = zext i1 %1837 to i8
  store i8 %1838, i8* %38, align 1
  %1839 = add i64 %1786, -44
  %1840 = add i64 %1817, 11
  store i64 %1840, i64* %3, align 8
  %1841 = inttoptr i64 %1839 to i32*
  store i32 %1823, i32* %1841, align 4
  %1842 = load i64, i64* %3, align 8
  %1843 = add i64 %1842, 33
  store i64 %1843, i64* %3, align 8
  br label %block_.L_44acb8

block_.L_44ac9c:                                  ; preds = %routine_idivl__esi.exit
  %1844 = add i64 %1786, -24
  %1845 = add i64 %1817, 4
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i64*
  %1847 = load i64, i64* %1846, align 8
  store i64 %1847, i64* %RAX.i1527, align 8
  %1848 = add i64 %1847, 4
  %1849 = add i64 %1817, 7
  store i64 %1849, i64* %3, align 8
  %1850 = inttoptr i64 %1848 to i32*
  %1851 = load i32, i32* %1850, align 4
  %1852 = add i32 %1851, 1
  %1853 = zext i32 %1852 to i64
  store i64 %1853, i64* %RCX.i1106, align 8
  %1854 = icmp eq i32 %1851, -1
  %1855 = icmp eq i32 %1852, 0
  %1856 = or i1 %1854, %1855
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %14, align 1
  %1858 = and i32 %1852, 255
  %1859 = tail call i32 @llvm.ctpop.i32(i32 %1858)
  %1860 = trunc i32 %1859 to i8
  %1861 = and i8 %1860, 1
  %1862 = xor i8 %1861, 1
  store i8 %1862, i8* %21, align 1
  %1863 = xor i32 %1852, %1851
  %1864 = lshr i32 %1863, 4
  %1865 = trunc i32 %1864 to i8
  %1866 = and i8 %1865, 1
  store i8 %1866, i8* %26, align 1
  %1867 = zext i1 %1855 to i8
  store i8 %1867, i8* %29, align 1
  %1868 = lshr i32 %1852, 31
  %1869 = trunc i32 %1868 to i8
  store i8 %1869, i8* %32, align 1
  %1870 = lshr i32 %1851, 31
  %1871 = xor i32 %1868, %1870
  %1872 = add nuw nsw i32 %1871, %1868
  %1873 = icmp eq i32 %1872, 2
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %38, align 1
  %1875 = add i64 %1817, 13
  store i64 %1875, i64* %3, align 8
  store i32 %1852, i32* %1850, align 4
  %1876 = load i64, i64* %RBP.i, align 8
  %1877 = add i64 %1876, -12
  %1878 = load i64, i64* %3, align 8
  %1879 = add i64 %1878, 3
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1877 to i32*
  %1881 = load i32, i32* %1880, align 4
  %1882 = shl i32 %1881, 1
  %1883 = or i32 %1882, 1
  %1884 = zext i32 %1883 to i64
  store i64 %1884, i64* %RCX.i1106, align 8
  store i8 0, i8* %14, align 1
  %1885 = and i32 %1883, 255
  %1886 = tail call i32 @llvm.ctpop.i32(i32 %1885)
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  %1889 = xor i8 %1888, 1
  store i8 %1889, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1890 = lshr i32 %1881, 30
  %1891 = and i32 %1890, 1
  %1892 = trunc i32 %1891 to i8
  store i8 %1892, i8* %32, align 1
  %1893 = lshr i32 %1881, 30
  %1894 = and i32 %1893, 1
  %1895 = xor i32 %1891, %1894
  %1896 = add nuw nsw i32 %1895, %1891
  %1897 = icmp eq i32 %1896, 2
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %38, align 1
  %1899 = add i64 %1876, -40
  %1900 = add i64 %1878, 11
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i32*
  %1902 = load i32, i32* %1901, align 4
  %1903 = sub i32 %1883, %1902
  %1904 = zext i32 %1903 to i64
  store i64 %1904, i64* %RCX.i1106, align 8
  %1905 = icmp ult i32 %1883, %1902
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %14, align 1
  %1907 = and i32 %1903, 255
  %1908 = tail call i32 @llvm.ctpop.i32(i32 %1907)
  %1909 = trunc i32 %1908 to i8
  %1910 = and i8 %1909, 1
  %1911 = xor i8 %1910, 1
  store i8 %1911, i8* %21, align 1
  %1912 = xor i32 %1902, %1882
  %1913 = xor i32 %1912, %1903
  %1914 = lshr i32 %1913, 4
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  store i8 %1916, i8* %26, align 1
  %1917 = icmp eq i32 %1903, 0
  %1918 = zext i1 %1917 to i8
  store i8 %1918, i8* %29, align 1
  %1919 = lshr i32 %1903, 31
  %1920 = trunc i32 %1919 to i8
  store i8 %1920, i8* %32, align 1
  %1921 = lshr i32 %1902, 31
  %1922 = xor i32 %1921, %1891
  %1923 = xor i32 %1919, %1891
  %1924 = add nuw nsw i32 %1923, %1922
  %1925 = icmp eq i32 %1924, 2
  %1926 = zext i1 %1925 to i8
  store i8 %1926, i8* %38, align 1
  %1927 = add i64 %1876, -44
  %1928 = add i64 %1878, 14
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1927 to i32*
  store i32 %1903, i32* %1929, align 4
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_44acb8

block_.L_44acb8:                                  ; preds = %block_.L_44ac9c, %block_44ac8b
  %1930 = phi i64 [ %.pre108, %block_.L_44ac9c ], [ %1843, %block_44ac8b ]
  %1931 = add i64 %1930, 24
  store i64 %1931, i64* %3, align 8
  br label %block_.L_44acd0

block_.L_44acbd:                                  ; preds = %block_44ac3c
  %1932 = load i64, i64* %RBP.i, align 8
  %1933 = add i64 %1932, -24
  %1934 = add i64 %1744, 4
  store i64 %1934, i64* %3, align 8
  %1935 = inttoptr i64 %1933 to i64*
  %1936 = load i64, i64* %1935, align 8
  store i64 %1936, i64* %RAX.i1527, align 8
  %1937 = add i64 %1936, 4
  %1938 = add i64 %1744, 7
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1937 to i32*
  %1940 = load i32, i32* %1939, align 4
  %1941 = add i32 %1940, 1
  %1942 = zext i32 %1941 to i64
  store i64 %1942, i64* %RCX.i1106, align 8
  %1943 = icmp eq i32 %1940, -1
  %1944 = icmp eq i32 %1941, 0
  %1945 = or i1 %1943, %1944
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %14, align 1
  %1947 = and i32 %1941, 255
  %1948 = tail call i32 @llvm.ctpop.i32(i32 %1947)
  %1949 = trunc i32 %1948 to i8
  %1950 = and i8 %1949, 1
  %1951 = xor i8 %1950, 1
  store i8 %1951, i8* %21, align 1
  %1952 = xor i32 %1941, %1940
  %1953 = lshr i32 %1952, 4
  %1954 = trunc i32 %1953 to i8
  %1955 = and i8 %1954, 1
  store i8 %1955, i8* %26, align 1
  %1956 = zext i1 %1944 to i8
  store i8 %1956, i8* %29, align 1
  %1957 = lshr i32 %1941, 31
  %1958 = trunc i32 %1957 to i8
  store i8 %1958, i8* %32, align 1
  %1959 = lshr i32 %1940, 31
  %1960 = xor i32 %1957, %1959
  %1961 = add nuw nsw i32 %1960, %1957
  %1962 = icmp eq i32 %1961, 2
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %38, align 1
  %1964 = add i64 %1744, 13
  store i64 %1964, i64* %3, align 8
  store i32 %1941, i32* %1939, align 4
  %1965 = load i64, i64* %RBP.i, align 8
  %1966 = add i64 %1965, -12
  %1967 = load i64, i64* %3, align 8
  %1968 = add i64 %1967, 3
  store i64 %1968, i64* %3, align 8
  %1969 = inttoptr i64 %1966 to i32*
  %1970 = load i32, i32* %1969, align 4
  %1971 = zext i32 %1970 to i64
  store i64 %1971, i64* %RCX.i1106, align 8
  %1972 = add i64 %1965, -44
  %1973 = add i64 %1967, 6
  store i64 %1973, i64* %3, align 8
  %1974 = inttoptr i64 %1972 to i32*
  store i32 %1970, i32* %1974, align 4
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_44acd0

block_.L_44acd0:                                  ; preds = %block_.L_44acbd, %block_.L_44acb8
  %1975 = phi i64 [ %.pre109, %block_.L_44acbd ], [ %1931, %block_.L_44acb8 ]
  %MEMORY.20 = phi %struct.Memory* [ %2, %block_.L_44acbd ], [ %1789, %block_.L_44acb8 ]
  %1976 = add i64 %1975, 5
  store i64 %1976, i64* %3, align 8
  br label %block_.L_44acd5

block_.L_44acd5:                                  ; preds = %block_.L_44acd0, %block_.L_44ac0a
  %1977 = phi i64 [ %1690, %block_.L_44ac0a ], [ %1976, %block_.L_44acd0 ]
  %MEMORY.21 = phi %struct.Memory* [ %2, %block_.L_44ac0a ], [ %MEMORY.20, %block_.L_44acd0 ]
  %1978 = add i64 %1977, 5
  store i64 %1978, i64* %3, align 8
  br label %block_.L_44acda

block_.L_44acda:                                  ; preds = %block_.L_44acd5, %block_.L_44ac05
  %storemerge62 = phi i64 [ %1689, %block_.L_44ac05 ], [ %1978, %block_.L_44acd5 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.18, %block_.L_44ac05 ], [ %MEMORY.21, %block_.L_44acd5 ]
  %1979 = add i64 %storemerge62, 5
  store i64 %1979, i64* %3, align 8
  br label %block_.L_44acdf

block_.L_44acdf:                                  ; preds = %block_.L_44acda, %block_.L_44ab39
  %storemerge59 = phi i64 [ %1432, %block_.L_44ab39 ], [ %1979, %block_.L_44acda ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.15, %block_.L_44ab39 ], [ %MEMORY.22, %block_.L_44acda ]
  %1980 = add i64 %storemerge59, 5
  store i64 %1980, i64* %3, align 8
  br label %block_.L_44ace4

block_.L_44ace4:                                  ; preds = %block_44a980, %block_.L_44acdf, %block_.L_44a976
  %1981 = phi i64 [ %858, %block_.L_44a976 ], [ %890, %block_44a980 ], [ %1980, %block_.L_44acdf ]
  %MEMORY.24 = phi %struct.Memory* [ %2, %block_.L_44a976 ], [ %2, %block_44a980 ], [ %MEMORY.23, %block_.L_44acdf ]
  %1982 = add i64 %1981, 5
  store i64 %1982, i64* %3, align 8
  br label %block_.L_44ace9

block_.L_44ace9:                                  ; preds = %block_.L_44ace4, %block_.L_44a971
  %storemerge55 = phi i64 [ %845, %block_.L_44a971 ], [ %1982, %block_.L_44ace4 ]
  %MEMORY.25 = phi %struct.Memory* [ %2, %block_.L_44a971 ], [ %MEMORY.24, %block_.L_44ace4 ]
  %1983 = add i64 %storemerge55, 922
  br label %block_.L_44b083

block_.L_44acee:                                  ; preds = %block_.L_44a7ac
  %1984 = load i32, i32* %217, align 4
  store i8 0, i8* %14, align 1
  %1985 = and i32 %1984, 255
  %1986 = tail call i32 @llvm.ctpop.i32(i32 %1985)
  %1987 = trunc i32 %1986 to i8
  %1988 = and i8 %1987, 1
  %1989 = xor i8 %1988, 1
  store i8 %1989, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1990 = icmp eq i32 %1984, 0
  %1991 = zext i1 %1990 to i8
  store i8 %1991, i8* %29, align 1
  %1992 = lshr i32 %1984, 31
  %1993 = trunc i32 %1992 to i8
  store i8 %1993, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1994 = icmp ne i8 %1993, 0
  %.v74 = select i1 %1994, i64 590, i64 6
  %1995 = add i64 %313, %.v74
  store i64 %1995, i64* %3, align 8
  br i1 %1994, label %block_.L_44af40, label %block_44acf8

block_44acf8:                                     ; preds = %block_.L_44acee
  %1996 = add i64 %1995, 3
  store i64 %1996, i64* %3, align 8
  %1997 = load i32, i32* %217, align 4
  %1998 = zext i32 %1997 to i64
  store i64 %1998, i64* %RAX.i1527, align 8
  %1999 = add i64 %1995, 6
  store i64 %1999, i64* %3, align 8
  %2000 = load i32, i32* %222, align 4
  %2001 = sub i32 %1997, %2000
  %2002 = icmp ult i32 %1997, %2000
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %14, align 1
  %2004 = and i32 %2001, 255
  %2005 = tail call i32 @llvm.ctpop.i32(i32 %2004)
  %2006 = trunc i32 %2005 to i8
  %2007 = and i8 %2006, 1
  %2008 = xor i8 %2007, 1
  store i8 %2008, i8* %21, align 1
  %2009 = xor i32 %2000, %1997
  %2010 = xor i32 %2009, %2001
  %2011 = lshr i32 %2010, 4
  %2012 = trunc i32 %2011 to i8
  %2013 = and i8 %2012, 1
  store i8 %2013, i8* %26, align 1
  %2014 = icmp eq i32 %2001, 0
  %2015 = zext i1 %2014 to i8
  store i8 %2015, i8* %29, align 1
  %2016 = lshr i32 %2001, 31
  %2017 = trunc i32 %2016 to i8
  store i8 %2017, i8* %32, align 1
  %2018 = lshr i32 %1997, 31
  %2019 = lshr i32 %2000, 31
  %2020 = xor i32 %2019, %2018
  %2021 = xor i32 %2016, %2018
  %2022 = add nuw nsw i32 %2021, %2020
  %2023 = icmp eq i32 %2022, 2
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %38, align 1
  %2025 = icmp ne i8 %2017, 0
  %2026 = xor i1 %2025, %2023
  %.v144 = select i1 %2026, i64 12, i64 584
  %2027 = add i64 %1995, %.v144
  store i64 %2027, i64* %3, align 8
  br i1 %2026, label %block_44ad04, label %block_.L_44af40

block_44ad04:                                     ; preds = %block_44acf8
  %2028 = add i64 %2027, 4
  store i64 %2028, i64* %3, align 8
  %2029 = load i32, i32* %178, align 4
  store i8 0, i8* %14, align 1
  %2030 = and i32 %2029, 255
  %2031 = tail call i32 @llvm.ctpop.i32(i32 %2030)
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  %2034 = xor i8 %2033, 1
  store i8 %2034, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2035 = icmp eq i32 %2029, 0
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %29, align 1
  %2037 = lshr i32 %2029, 31
  %2038 = trunc i32 %2037 to i8
  store i8 %2038, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2039 = icmp ne i8 %2038, 0
  %.v76 = select i1 %2039, i64 6, i64 430
  %2040 = add i64 %2028, %.v76
  store i64 %2040, i64* %3, align 8
  br i1 %2039, label %block_44ad0e, label %block_.L_44aeb6

block_44ad0e:                                     ; preds = %block_44ad04
  %2041 = add i64 %174, -32
  %2042 = add i64 %2040, 4
  store i64 %2042, i64* %3, align 8
  %2043 = inttoptr i64 %2041 to i64*
  %2044 = load i64, i64* %2043, align 8
  store i64 %2044, i64* %RAX.i1527, align 8
  %2045 = add i64 %2044, 532
  %2046 = add i64 %2040, 11
  store i64 %2046, i64* %3, align 8
  %2047 = inttoptr i64 %2045 to i32*
  %2048 = load i32, i32* %2047, align 4
  store i8 0, i8* %14, align 1
  %2049 = and i32 %2048, 255
  %2050 = tail call i32 @llvm.ctpop.i32(i32 %2049)
  %2051 = trunc i32 %2050 to i8
  %2052 = and i8 %2051, 1
  %2053 = xor i8 %2052, 1
  store i8 %2053, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2054 = icmp eq i32 %2048, 0
  %2055 = zext i1 %2054 to i8
  store i8 %2055, i8* %29, align 1
  %2056 = lshr i32 %2048, 31
  %2057 = trunc i32 %2056 to i8
  store i8 %2057, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v132 = select i1 %2054, i64 17, i64 215
  %2058 = add i64 %2040, %.v132
  %2059 = add i64 %174, -4
  %2060 = add i64 %2058, 3
  store i64 %2060, i64* %3, align 8
  %2061 = inttoptr i64 %2059 to i32*
  %2062 = load i32, i32* %2061, align 4
  %2063 = and i32 %2062, 1
  %2064 = zext i32 %2063 to i64
  store i64 %2064, i64* %RAX.i1527, align 8
  %2065 = add i64 %2058, 9
  store i64 %2065, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2066 = tail call i32 @llvm.ctpop.i32(i32 %2063)
  %2067 = trunc i32 %2066 to i8
  %2068 = xor i8 %2067, 1
  store i8 %2068, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2069 = trunc i32 %2063 to i8
  %2070 = xor i8 %2069, 1
  store i8 %2070, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2071 = icmp eq i8 %2070, 0
  br i1 %2054, label %block_44ad1f, label %block_.L_44ade5

block_44ad1f:                                     ; preds = %block_44ad0e
  %.v156 = select i1 %2071, i64 164, i64 15
  %2072 = add i64 %2058, %.v156
  store i64 %2072, i64* %3, align 8
  br i1 %2071, label %block_.L_44adc3, label %block_44ad2e

block_44ad2e:                                     ; preds = %block_44ad1f
  %2073 = add i64 %2072, 4
  store i64 %2073, i64* %3, align 8
  %2074 = load i64, i64* %2043, align 8
  store i64 %2074, i64* %RAX.i1527, align 8
  %2075 = add i64 %2074, 540
  %2076 = add i64 %2072, 10
  store i64 %2076, i64* %3, align 8
  %2077 = inttoptr i64 %2075 to i32*
  %2078 = load i32, i32* %2077, align 4
  %2079 = zext i32 %2078 to i64
  store i64 %2079, i64* %RCX.i1106, align 8
  %2080 = add i64 %174, -24
  %2081 = add i64 %2072, 14
  store i64 %2081, i64* %3, align 8
  %2082 = inttoptr i64 %2080 to i64*
  %2083 = load i64, i64* %2082, align 8
  store i64 %2083, i64* %RAX.i1527, align 8
  %2084 = add i64 %2083, 4
  %2085 = add i64 %2072, 17
  store i64 %2085, i64* %3, align 8
  %2086 = inttoptr i64 %2084 to i32*
  store i32 %2078, i32* %2086, align 4
  %2087 = load i64, i64* %RBP.i, align 8
  %2088 = add i64 %2087, -32
  %2089 = load i64, i64* %3, align 8
  %2090 = add i64 %2089, 4
  store i64 %2090, i64* %3, align 8
  %2091 = inttoptr i64 %2088 to i64*
  %2092 = load i64, i64* %2091, align 8
  store i64 %2092, i64* %RAX.i1527, align 8
  %2093 = add i64 %2092, 556
  %2094 = add i64 %2089, 11
  store i64 %2094, i64* %3, align 8
  %2095 = inttoptr i64 %2093 to i32*
  %2096 = load i32, i32* %2095, align 4
  store i8 0, i8* %14, align 1
  %2097 = and i32 %2096, 255
  %2098 = tail call i32 @llvm.ctpop.i32(i32 %2097)
  %2099 = trunc i32 %2098 to i8
  %2100 = and i8 %2099, 1
  %2101 = xor i8 %2100, 1
  store i8 %2101, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2102 = icmp eq i32 %2096, 0
  %2103 = zext i1 %2102 to i8
  store i8 %2103, i8* %29, align 1
  %2104 = lshr i32 %2096, 31
  %2105 = trunc i32 %2104 to i8
  store i8 %2105, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v157 = select i1 %2102, i64 105, i64 17
  %2106 = add i64 %2089, %.v157
  store i64 %2106, i64* %3, align 8
  br i1 %2102, label %block_.L_44ada8, label %block_44ad50

block_44ad50:                                     ; preds = %block_44ad2e
  %2107 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2107, i64* %RAX.i1527, align 8
  %2108 = add i64 %2107, 72636
  %2109 = add i64 %2106, 15
  store i64 %2109, i64* %3, align 8
  %2110 = inttoptr i64 %2108 to i32*
  %2111 = load i32, i32* %2110, align 4
  %2112 = add i32 %2111, -1
  %2113 = icmp eq i32 %2111, 0
  %2114 = zext i1 %2113 to i8
  store i8 %2114, i8* %14, align 1
  %2115 = and i32 %2112, 255
  %2116 = tail call i32 @llvm.ctpop.i32(i32 %2115)
  %2117 = trunc i32 %2116 to i8
  %2118 = and i8 %2117, 1
  %2119 = xor i8 %2118, 1
  store i8 %2119, i8* %21, align 1
  %2120 = xor i32 %2112, %2111
  %2121 = lshr i32 %2120, 4
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  store i8 %2123, i8* %26, align 1
  %2124 = icmp eq i32 %2112, 0
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %29, align 1
  %2126 = lshr i32 %2112, 31
  %2127 = trunc i32 %2126 to i8
  store i8 %2127, i8* %32, align 1
  %2128 = lshr i32 %2111, 31
  %2129 = xor i32 %2126, %2128
  %2130 = add nuw nsw i32 %2129, %2128
  %2131 = icmp eq i32 %2130, 2
  %2132 = zext i1 %2131 to i8
  store i8 %2132, i8* %38, align 1
  %.v158 = select i1 %2124, i64 21, i64 70
  %2133 = add i64 %2106, %.v158
  store i64 %2133, i64* %3, align 8
  br i1 %2124, label %block_44ad65, label %block_.L_44ad96

block_44ad65:                                     ; preds = %block_44ad50
  store i64 %2107, i64* %RAX.i1527, align 8
  %2134 = add i64 %2107, 14168
  %2135 = add i64 %2133, 15
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2134 to i64*
  %2137 = load i64, i64* %2136, align 8
  store i64 %2137, i64* %RAX.i1527, align 8
  %2138 = add i64 %2133, 19
  store i64 %2138, i64* %3, align 8
  %2139 = load i64, i64* %2091, align 8
  store i64 %2139, i64* %RCX.i1106, align 8
  %2140 = add i64 %2139, 540
  %2141 = add i64 %2133, 26
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2140 to i32*
  %2143 = load i32, i32* %2142, align 4
  %2144 = sext i32 %2143 to i64
  %2145 = mul nsw i64 %2144, 632
  store i64 %2145, i64* %RCX.i1106, align 8
  %2146 = lshr i64 %2145, 63
  %2147 = add i64 %2145, %2137
  store i64 %2147, i64* %RAX.i1527, align 8
  %2148 = icmp ult i64 %2147, %2137
  %2149 = icmp ult i64 %2147, %2145
  %2150 = or i1 %2148, %2149
  %2151 = zext i1 %2150 to i8
  store i8 %2151, i8* %14, align 1
  %2152 = trunc i64 %2147 to i32
  %2153 = and i32 %2152, 255
  %2154 = tail call i32 @llvm.ctpop.i32(i32 %2153)
  %2155 = trunc i32 %2154 to i8
  %2156 = and i8 %2155, 1
  %2157 = xor i8 %2156, 1
  store i8 %2157, i8* %21, align 1
  %2158 = xor i64 %2145, %2137
  %2159 = xor i64 %2158, %2147
  %2160 = lshr i64 %2159, 4
  %2161 = trunc i64 %2160 to i8
  %2162 = and i8 %2161, 1
  store i8 %2162, i8* %26, align 1
  %2163 = icmp eq i64 %2147, 0
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %29, align 1
  %2165 = lshr i64 %2147, 63
  %2166 = trunc i64 %2165 to i8
  store i8 %2166, i8* %32, align 1
  %2167 = lshr i64 %2137, 63
  %2168 = xor i64 %2165, %2167
  %2169 = xor i64 %2165, %2146
  %2170 = add nuw nsw i64 %2168, %2169
  %2171 = icmp eq i64 %2170, 2
  %2172 = zext i1 %2171 to i8
  store i8 %2172, i8* %38, align 1
  %2173 = add i64 %2147, 532
  %2174 = add i64 %2133, 43
  store i64 %2174, i64* %3, align 8
  %2175 = inttoptr i64 %2173 to i32*
  %2176 = load i32, i32* %2175, align 4
  store i8 0, i8* %14, align 1
  %2177 = and i32 %2176, 255
  %2178 = tail call i32 @llvm.ctpop.i32(i32 %2177)
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  %2181 = xor i8 %2180, 1
  store i8 %2181, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2182 = icmp eq i32 %2176, 0
  %2183 = zext i1 %2182 to i8
  store i8 %2183, i8* %29, align 1
  %2184 = lshr i32 %2176, 31
  %2185 = trunc i32 %2184 to i8
  store i8 %2185, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v159 = select i1 %2182, i64 49, i64 62
  %2186 = add i64 %2133, %.v159
  store i64 %2186, i64* %3, align 8
  br i1 %2182, label %block_44ad65.block_.L_44ad96_crit_edge, label %block_.L_44ada3

block_44ad65.block_.L_44ad96_crit_edge:           ; preds = %block_44ad65
  %.pre83 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44ad96

block_.L_44ad96:                                  ; preds = %block_44ad50, %block_44ad65.block_.L_44ad96_crit_edge
  %2187 = phi i64 [ %2186, %block_44ad65.block_.L_44ad96_crit_edge ], [ %2133, %block_44ad50 ]
  %2188 = phi i64 [ %.pre83, %block_44ad65.block_.L_44ad96_crit_edge ], [ %2087, %block_44ad50 ]
  %2189 = add i64 %2188, -24
  %2190 = add i64 %2187, 4
  store i64 %2190, i64* %3, align 8
  %2191 = inttoptr i64 %2189 to i64*
  %2192 = load i64, i64* %2191, align 8
  store i64 %2192, i64* %RAX.i1527, align 8
  %2193 = add i64 %2192, 4
  %2194 = add i64 %2187, 7
  store i64 %2194, i64* %3, align 8
  %2195 = inttoptr i64 %2193 to i32*
  %2196 = load i32, i32* %2195, align 4
  %2197 = add i32 %2196, 1
  %2198 = zext i32 %2197 to i64
  store i64 %2198, i64* %RCX.i1106, align 8
  %2199 = icmp eq i32 %2196, -1
  %2200 = icmp eq i32 %2197, 0
  %2201 = or i1 %2199, %2200
  %2202 = zext i1 %2201 to i8
  store i8 %2202, i8* %14, align 1
  %2203 = and i32 %2197, 255
  %2204 = tail call i32 @llvm.ctpop.i32(i32 %2203)
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  %2207 = xor i8 %2206, 1
  store i8 %2207, i8* %21, align 1
  %2208 = xor i32 %2197, %2196
  %2209 = lshr i32 %2208, 4
  %2210 = trunc i32 %2209 to i8
  %2211 = and i8 %2210, 1
  store i8 %2211, i8* %26, align 1
  %2212 = zext i1 %2200 to i8
  store i8 %2212, i8* %29, align 1
  %2213 = lshr i32 %2197, 31
  %2214 = trunc i32 %2213 to i8
  store i8 %2214, i8* %32, align 1
  %2215 = lshr i32 %2196, 31
  %2216 = xor i32 %2213, %2215
  %2217 = add nuw nsw i32 %2216, %2213
  %2218 = icmp eq i32 %2217, 2
  %2219 = zext i1 %2218 to i8
  store i8 %2219, i8* %38, align 1
  %2220 = add i64 %2187, 13
  store i64 %2220, i64* %3, align 8
  store i32 %2197, i32* %2195, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_44ada3

block_.L_44ada3:                                  ; preds = %block_44ad65, %block_.L_44ad96
  %2221 = phi i64 [ %.pre84, %block_.L_44ad96 ], [ %2186, %block_44ad65 ]
  %2222 = add i64 %2221, 5
  store i64 %2222, i64* %3, align 8
  %.pre85 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44ada8

block_.L_44ada8:                                  ; preds = %block_.L_44ada3, %block_44ad2e
  %2223 = phi i64 [ %2222, %block_.L_44ada3 ], [ %2106, %block_44ad2e ]
  %2224 = phi i64 [ %.pre85, %block_.L_44ada3 ], [ %2087, %block_44ad2e ]
  %2225 = add i64 %2224, -32
  %2226 = add i64 %2223, 4
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2225 to i64*
  %2228 = load i64, i64* %2227, align 8
  store i64 %2228, i64* %RAX.i1527, align 8
  %2229 = add i64 %2228, 556
  %2230 = add i64 %2223, 10
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i32*
  %2232 = load i32, i32* %2231, align 4
  %2233 = zext i32 %2232 to i64
  store i64 %2233, i64* %RCX.i1106, align 8
  %2234 = add i64 %2224, -24
  %2235 = add i64 %2223, 14
  store i64 %2235, i64* %3, align 8
  %2236 = inttoptr i64 %2234 to i64*
  %2237 = load i64, i64* %2236, align 8
  store i64 %2237, i64* %RAX.i1527, align 8
  %2238 = add i64 %2223, 16
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2237 to i32*
  store i32 %2232, i32* %2239, align 4
  %2240 = load i64, i64* %RBP.i, align 8
  %2241 = add i64 %2240, -12
  %2242 = load i64, i64* %3, align 8
  %2243 = add i64 %2242, 3
  store i64 %2243, i64* %3, align 8
  %2244 = inttoptr i64 %2241 to i32*
  %2245 = load i32, i32* %2244, align 4
  %2246 = zext i32 %2245 to i64
  store i64 %2246, i64* %RCX.i1106, align 8
  %2247 = add i64 %2240, -44
  %2248 = add i64 %2242, 6
  store i64 %2248, i64* %3, align 8
  %2249 = inttoptr i64 %2247 to i32*
  store i32 %2245, i32* %2249, align 4
  %2250 = load i64, i64* %3, align 8
  %2251 = add i64 %2250, 34
  store i64 %2251, i64* %3, align 8
  br label %block_.L_44ade0

block_.L_44adc3:                                  ; preds = %block_44ad1f
  %2252 = add i64 %2072, 3
  store i64 %2252, i64* %3, align 8
  %2253 = load i32, i32* %2061, align 4
  %2254 = add i32 %2253, -1
  %2255 = zext i32 %2254 to i64
  store i64 %2255, i64* %RAX.i1527, align 8
  %2256 = icmp eq i32 %2253, 0
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %14, align 1
  %2258 = and i32 %2254, 255
  %2259 = tail call i32 @llvm.ctpop.i32(i32 %2258)
  %2260 = trunc i32 %2259 to i8
  %2261 = and i8 %2260, 1
  %2262 = xor i8 %2261, 1
  store i8 %2262, i8* %21, align 1
  %2263 = xor i32 %2254, %2253
  %2264 = lshr i32 %2263, 4
  %2265 = trunc i32 %2264 to i8
  %2266 = and i8 %2265, 1
  store i8 %2266, i8* %26, align 1
  %2267 = icmp eq i32 %2254, 0
  %2268 = zext i1 %2267 to i8
  store i8 %2268, i8* %29, align 1
  %2269 = lshr i32 %2254, 31
  %2270 = trunc i32 %2269 to i8
  store i8 %2270, i8* %32, align 1
  %2271 = lshr i32 %2253, 31
  %2272 = xor i32 %2269, %2271
  %2273 = add nuw nsw i32 %2272, %2271
  %2274 = icmp eq i32 %2273, 2
  %2275 = zext i1 %2274 to i8
  store i8 %2275, i8* %38, align 1
  %2276 = add i64 %174, -24
  %2277 = add i64 %2072, 10
  store i64 %2277, i64* %3, align 8
  %2278 = inttoptr i64 %2276 to i64*
  %2279 = load i64, i64* %2278, align 8
  store i64 %2279, i64* %RCX.i1106, align 8
  %2280 = add i64 %2279, 4
  %2281 = add i64 %2072, 13
  store i64 %2281, i64* %3, align 8
  %2282 = inttoptr i64 %2280 to i32*
  store i32 %2254, i32* %2282, align 4
  %2283 = load i64, i64* %RBP.i, align 8
  %2284 = add i64 %2283, -24
  %2285 = load i64, i64* %3, align 8
  %2286 = add i64 %2285, 4
  store i64 %2286, i64* %3, align 8
  %2287 = inttoptr i64 %2284 to i64*
  %2288 = load i64, i64* %2287, align 8
  store i64 %2288, i64* %RCX.i1106, align 8
  %2289 = add i64 %2285, 10
  store i64 %2289, i64* %3, align 8
  %2290 = inttoptr i64 %2288 to i32*
  store i32 1, i32* %2290, align 4
  %2291 = load i64, i64* %RBP.i, align 8
  %2292 = add i64 %2291, -12
  %2293 = load i64, i64* %3, align 8
  %2294 = add i64 %2293, 3
  store i64 %2294, i64* %3, align 8
  %2295 = inttoptr i64 %2292 to i32*
  %2296 = load i32, i32* %2295, align 4
  %2297 = zext i32 %2296 to i64
  store i64 %2297, i64* %RAX.i1527, align 8
  %2298 = add i64 %2291, -44
  %2299 = add i64 %2293, 6
  store i64 %2299, i64* %3, align 8
  %2300 = inttoptr i64 %2298 to i32*
  store i32 %2296, i32* %2300, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_44ade0

block_.L_44ade0:                                  ; preds = %block_.L_44adc3, %block_.L_44ada8
  %2301 = phi i64 [ %.pre86, %block_.L_44adc3 ], [ %2251, %block_.L_44ada8 ]
  %2302 = add i64 %2301, 209
  br label %block_.L_44aeb1

block_.L_44ade5:                                  ; preds = %block_44ad0e
  %.v133 = select i1 %2071, i64 157, i64 15
  %2303 = add i64 %2058, %.v133
  %2304 = add i64 %2303, 4
  store i64 %2304, i64* %3, align 8
  %2305 = load i64, i64* %2043, align 8
  store i64 %2305, i64* %RAX.i1527, align 8
  %2306 = add i64 %2305, 540
  %2307 = add i64 %2303, 10
  store i64 %2307, i64* %3, align 8
  %2308 = inttoptr i64 %2306 to i32*
  %2309 = load i32, i32* %2308, align 4
  %2310 = zext i32 %2309 to i64
  store i64 %2310, i64* %RCX.i1106, align 8
  br i1 %2071, label %block_.L_44ae82, label %block_44adf4

block_44adf4:                                     ; preds = %block_.L_44ade5
  %2311 = add i64 %174, -24
  %2312 = add i64 %2303, 14
  store i64 %2312, i64* %3, align 8
  %2313 = inttoptr i64 %2311 to i64*
  %2314 = load i64, i64* %2313, align 8
  store i64 %2314, i64* %RAX.i1527, align 8
  %2315 = add i64 %2314, 4
  %2316 = add i64 %2303, 17
  store i64 %2316, i64* %3, align 8
  %2317 = inttoptr i64 %2315 to i32*
  store i32 %2309, i32* %2317, align 4
  %2318 = load i64, i64* %RBP.i, align 8
  %2319 = add i64 %2318, -32
  %2320 = load i64, i64* %3, align 8
  %2321 = add i64 %2320, 4
  store i64 %2321, i64* %3, align 8
  %2322 = inttoptr i64 %2319 to i64*
  %2323 = load i64, i64* %2322, align 8
  store i64 %2323, i64* %RAX.i1527, align 8
  %2324 = add i64 %2323, 556
  %2325 = add i64 %2320, 10
  store i64 %2325, i64* %3, align 8
  %2326 = inttoptr i64 %2324 to i32*
  %2327 = load i32, i32* %2326, align 4
  %2328 = zext i32 %2327 to i64
  store i64 %2328, i64* %RCX.i1106, align 8
  %2329 = add i64 %2318, -24
  %2330 = add i64 %2320, 14
  store i64 %2330, i64* %3, align 8
  %2331 = inttoptr i64 %2329 to i64*
  %2332 = load i64, i64* %2331, align 8
  store i64 %2332, i64* %RAX.i1527, align 8
  %2333 = add i64 %2320, 16
  store i64 %2333, i64* %3, align 8
  %2334 = inttoptr i64 %2332 to i32*
  store i32 %2327, i32* %2334, align 4
  %2335 = load i64, i64* %RBP.i, align 8
  %2336 = add i64 %2335, -32
  %2337 = load i64, i64* %3, align 8
  %2338 = add i64 %2337, 4
  store i64 %2338, i64* %3, align 8
  %2339 = inttoptr i64 %2336 to i64*
  %2340 = load i64, i64* %2339, align 8
  store i64 %2340, i64* %RAX.i1527, align 8
  %2341 = add i64 %2340, 556
  %2342 = add i64 %2337, 11
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i32*
  %2344 = load i32, i32* %2343, align 4
  store i8 0, i8* %14, align 1
  %2345 = and i32 %2344, 255
  %2346 = tail call i32 @llvm.ctpop.i32(i32 %2345)
  %2347 = trunc i32 %2346 to i8
  %2348 = and i8 %2347, 1
  %2349 = xor i8 %2348, 1
  store i8 %2349, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2350 = icmp eq i32 %2344, 0
  %2351 = zext i1 %2350 to i8
  store i8 %2351, i8* %29, align 1
  %2352 = lshr i32 %2344, 31
  %2353 = trunc i32 %2352 to i8
  store i8 %2353, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v154 = select i1 %2350, i64 104, i64 17
  %2354 = add i64 %2337, %.v154
  store i64 %2354, i64* %3, align 8
  br i1 %2350, label %block_.L_44ae7d, label %block_44ae26

block_44ae26:                                     ; preds = %block_44adf4
  %2355 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2355, i64* %RAX.i1527, align 8
  %2356 = add i64 %2355, 14168
  %2357 = add i64 %2354, 15
  store i64 %2357, i64* %3, align 8
  %2358 = inttoptr i64 %2356 to i64*
  %2359 = load i64, i64* %2358, align 8
  store i64 %2359, i64* %RAX.i1527, align 8
  %2360 = add i64 %2354, 19
  store i64 %2360, i64* %3, align 8
  %2361 = load i64, i64* %2339, align 8
  store i64 %2361, i64* %RCX.i1106, align 8
  %2362 = add i64 %2361, 540
  %2363 = add i64 %2354, 26
  store i64 %2363, i64* %3, align 8
  %2364 = inttoptr i64 %2362 to i32*
  %2365 = load i32, i32* %2364, align 4
  %2366 = sext i32 %2365 to i64
  %2367 = mul nsw i64 %2366, 632
  store i64 %2367, i64* %RCX.i1106, align 8
  %2368 = lshr i64 %2367, 63
  %2369 = add i64 %2367, %2359
  store i64 %2369, i64* %RAX.i1527, align 8
  %2370 = icmp ult i64 %2369, %2359
  %2371 = icmp ult i64 %2369, %2367
  %2372 = or i1 %2370, %2371
  %2373 = zext i1 %2372 to i8
  store i8 %2373, i8* %14, align 1
  %2374 = trunc i64 %2369 to i32
  %2375 = and i32 %2374, 255
  %2376 = tail call i32 @llvm.ctpop.i32(i32 %2375)
  %2377 = trunc i32 %2376 to i8
  %2378 = and i8 %2377, 1
  %2379 = xor i8 %2378, 1
  store i8 %2379, i8* %21, align 1
  %2380 = xor i64 %2367, %2359
  %2381 = xor i64 %2380, %2369
  %2382 = lshr i64 %2381, 4
  %2383 = trunc i64 %2382 to i8
  %2384 = and i8 %2383, 1
  store i8 %2384, i8* %26, align 1
  %2385 = icmp eq i64 %2369, 0
  %2386 = zext i1 %2385 to i8
  store i8 %2386, i8* %29, align 1
  %2387 = lshr i64 %2369, 63
  %2388 = trunc i64 %2387 to i8
  store i8 %2388, i8* %32, align 1
  %2389 = lshr i64 %2359, 63
  %2390 = xor i64 %2387, %2389
  %2391 = xor i64 %2387, %2368
  %2392 = add nuw nsw i64 %2390, %2391
  %2393 = icmp eq i64 %2392, 2
  %2394 = zext i1 %2393 to i8
  store i8 %2394, i8* %38, align 1
  %2395 = add i64 %2369, 532
  %2396 = add i64 %2354, 43
  store i64 %2396, i64* %3, align 8
  %2397 = inttoptr i64 %2395 to i32*
  %2398 = load i32, i32* %2397, align 4
  store i8 0, i8* %14, align 1
  %2399 = and i32 %2398, 255
  %2400 = tail call i32 @llvm.ctpop.i32(i32 %2399)
  %2401 = trunc i32 %2400 to i8
  %2402 = and i8 %2401, 1
  %2403 = xor i8 %2402, 1
  store i8 %2403, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2404 = icmp eq i32 %2398, 0
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %29, align 1
  %2406 = lshr i32 %2398, 31
  %2407 = trunc i32 %2406 to i8
  store i8 %2407, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v155 = select i1 %2404, i64 49, i64 76
  %2408 = add i64 %2354, %.v155
  store i64 %2408, i64* %3, align 8
  %2409 = load i64, i64* %RBP.i, align 8
  br i1 %2404, label %block_44ae57, label %block_.L_44ae72

block_44ae57:                                     ; preds = %block_44ae26
  %2410 = add i64 %2409, -24
  %2411 = add i64 %2408, 4
  store i64 %2411, i64* %3, align 8
  %2412 = inttoptr i64 %2410 to i64*
  %2413 = load i64, i64* %2412, align 8
  store i64 %2413, i64* %RAX.i1527, align 8
  %2414 = add i64 %2413, 4
  %2415 = add i64 %2408, 7
  store i64 %2415, i64* %3, align 8
  %2416 = inttoptr i64 %2414 to i32*
  %2417 = load i32, i32* %2416, align 4
  %2418 = add i32 %2417, 1
  %2419 = zext i32 %2418 to i64
  store i64 %2419, i64* %RCX.i1106, align 8
  %2420 = icmp eq i32 %2417, -1
  %2421 = icmp eq i32 %2418, 0
  %2422 = or i1 %2420, %2421
  %2423 = zext i1 %2422 to i8
  store i8 %2423, i8* %14, align 1
  %2424 = and i32 %2418, 255
  %2425 = tail call i32 @llvm.ctpop.i32(i32 %2424)
  %2426 = trunc i32 %2425 to i8
  %2427 = and i8 %2426, 1
  %2428 = xor i8 %2427, 1
  store i8 %2428, i8* %21, align 1
  %2429 = xor i32 %2418, %2417
  %2430 = lshr i32 %2429, 4
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  store i8 %2432, i8* %26, align 1
  %2433 = zext i1 %2421 to i8
  store i8 %2433, i8* %29, align 1
  %2434 = lshr i32 %2418, 31
  %2435 = trunc i32 %2434 to i8
  store i8 %2435, i8* %32, align 1
  %2436 = lshr i32 %2417, 31
  %2437 = xor i32 %2434, %2436
  %2438 = add nuw nsw i32 %2437, %2434
  %2439 = icmp eq i32 %2438, 2
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %38, align 1
  %2441 = add i64 %2408, 13
  store i64 %2441, i64* %3, align 8
  store i32 %2418, i32* %2416, align 4
  %2442 = load i64, i64* %RBP.i, align 8
  %2443 = add i64 %2442, -12
  %2444 = load i64, i64* %3, align 8
  %2445 = add i64 %2444, 3
  store i64 %2445, i64* %3, align 8
  %2446 = inttoptr i64 %2443 to i32*
  %2447 = load i32, i32* %2446, align 4
  %2448 = shl i32 %2447, 1
  %2449 = icmp slt i32 %2447, 0
  %2450 = icmp slt i32 %2448, 0
  %2451 = xor i1 %2449, %2450
  %2452 = zext i32 %2448 to i64
  store i64 %2452, i64* %RCX.i1106, align 8
  %.lobit69 = lshr i32 %2447, 31
  %2453 = trunc i32 %.lobit69 to i8
  store i8 %2453, i8* %14, align 1
  %2454 = and i32 %2448, 254
  %2455 = tail call i32 @llvm.ctpop.i32(i32 %2454)
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  %2458 = xor i8 %2457, 1
  store i8 %2458, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2459 = icmp eq i32 %2448, 0
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %29, align 1
  %2461 = lshr i32 %2447, 30
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  store i8 %2463, i8* %32, align 1
  %2464 = zext i1 %2451 to i8
  store i8 %2464, i8* %38, align 1
  %2465 = add i64 %2442, -44
  %2466 = add i64 %2444, 8
  store i64 %2466, i64* %3, align 8
  %2467 = inttoptr i64 %2465 to i32*
  store i32 %2448, i32* %2467, align 4
  %2468 = load i64, i64* %3, align 8
  %2469 = add i64 %2468, 11
  store i64 %2469, i64* %3, align 8
  br label %block_.L_44ae78

block_.L_44ae72:                                  ; preds = %block_44ae26
  %2470 = add i64 %2409, -12
  %2471 = add i64 %2408, 3
  store i64 %2471, i64* %3, align 8
  %2472 = inttoptr i64 %2470 to i32*
  %2473 = load i32, i32* %2472, align 4
  %2474 = zext i32 %2473 to i64
  store i64 %2474, i64* %RAX.i1527, align 8
  %2475 = add i64 %2409, -44
  %2476 = add i64 %2408, 6
  store i64 %2476, i64* %3, align 8
  %2477 = inttoptr i64 %2475 to i32*
  store i32 %2473, i32* %2477, align 4
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_44ae78

block_.L_44ae78:                                  ; preds = %block_.L_44ae72, %block_44ae57
  %2478 = phi i64 [ %.pre87, %block_.L_44ae72 ], [ %2469, %block_44ae57 ]
  %2479 = add i64 %2478, 5
  store i64 %2479, i64* %3, align 8
  br label %block_.L_44ae7d

block_.L_44ae7d:                                  ; preds = %block_.L_44ae78, %block_44adf4
  %2480 = phi i64 [ %2479, %block_.L_44ae78 ], [ %2354, %block_44adf4 ]
  %2481 = add i64 %2480, 47
  store i64 %2481, i64* %3, align 8
  br label %block_.L_44aeac

block_.L_44ae82:                                  ; preds = %block_.L_44ade5
  %2482 = add i32 %2309, 1
  %2483 = zext i32 %2482 to i64
  store i64 %2483, i64* %RCX.i1106, align 8
  %2484 = icmp eq i32 %2309, -1
  %2485 = icmp eq i32 %2482, 0
  %2486 = or i1 %2484, %2485
  %2487 = zext i1 %2486 to i8
  store i8 %2487, i8* %14, align 1
  %2488 = and i32 %2482, 255
  %2489 = tail call i32 @llvm.ctpop.i32(i32 %2488)
  %2490 = trunc i32 %2489 to i8
  %2491 = and i8 %2490, 1
  %2492 = xor i8 %2491, 1
  store i8 %2492, i8* %21, align 1
  %2493 = xor i32 %2482, %2309
  %2494 = lshr i32 %2493, 4
  %2495 = trunc i32 %2494 to i8
  %2496 = and i8 %2495, 1
  store i8 %2496, i8* %26, align 1
  %2497 = zext i1 %2485 to i8
  store i8 %2497, i8* %29, align 1
  %2498 = lshr i32 %2482, 31
  %2499 = trunc i32 %2498 to i8
  store i8 %2499, i8* %32, align 1
  %2500 = lshr i32 %2309, 31
  %2501 = xor i32 %2498, %2500
  %2502 = add nuw nsw i32 %2501, %2498
  %2503 = icmp eq i32 %2502, 2
  %2504 = zext i1 %2503 to i8
  store i8 %2504, i8* %38, align 1
  %2505 = add i64 %174, -24
  %2506 = add i64 %2303, 17
  store i64 %2506, i64* %3, align 8
  %2507 = inttoptr i64 %2505 to i64*
  %2508 = load i64, i64* %2507, align 8
  store i64 %2508, i64* %RAX.i1527, align 8
  %2509 = add i64 %2508, 4
  %2510 = add i64 %2303, 20
  store i64 %2510, i64* %3, align 8
  %2511 = inttoptr i64 %2509 to i32*
  store i32 %2482, i32* %2511, align 4
  %2512 = load i64, i64* %RBP.i, align 8
  %2513 = add i64 %2512, -32
  %2514 = load i64, i64* %3, align 8
  %2515 = add i64 %2514, 4
  store i64 %2515, i64* %3, align 8
  %2516 = inttoptr i64 %2513 to i64*
  %2517 = load i64, i64* %2516, align 8
  store i64 %2517, i64* %RAX.i1527, align 8
  %2518 = add i64 %2517, 556
  %2519 = add i64 %2514, 10
  store i64 %2519, i64* %3, align 8
  %2520 = inttoptr i64 %2518 to i32*
  %2521 = load i32, i32* %2520, align 4
  %2522 = zext i32 %2521 to i64
  store i64 %2522, i64* %RCX.i1106, align 8
  %2523 = add i64 %2512, -24
  %2524 = add i64 %2514, 14
  store i64 %2524, i64* %3, align 8
  %2525 = inttoptr i64 %2523 to i64*
  %2526 = load i64, i64* %2525, align 8
  store i64 %2526, i64* %RAX.i1527, align 8
  %2527 = add i64 %2514, 16
  store i64 %2527, i64* %3, align 8
  %2528 = inttoptr i64 %2526 to i32*
  store i32 %2521, i32* %2528, align 4
  %2529 = load i64, i64* %RBP.i, align 8
  %2530 = add i64 %2529, -12
  %2531 = load i64, i64* %3, align 8
  %2532 = add i64 %2531, 3
  store i64 %2532, i64* %3, align 8
  %2533 = inttoptr i64 %2530 to i32*
  %2534 = load i32, i32* %2533, align 4
  %2535 = zext i32 %2534 to i64
  store i64 %2535, i64* %RCX.i1106, align 8
  %2536 = add i64 %2529, -44
  %2537 = add i64 %2531, 6
  store i64 %2537, i64* %3, align 8
  %2538 = inttoptr i64 %2536 to i32*
  store i32 %2534, i32* %2538, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_44aeac

block_.L_44aeac:                                  ; preds = %block_.L_44ae82, %block_.L_44ae7d
  %2539 = phi i64 [ %.pre88, %block_.L_44ae82 ], [ %2481, %block_.L_44ae7d ]
  %2540 = add i64 %2539, 5
  store i64 %2540, i64* %3, align 8
  br label %block_.L_44aeb1

block_.L_44aeb1:                                  ; preds = %block_.L_44aeac, %block_.L_44ade0
  %storemerge66 = phi i64 [ %2302, %block_.L_44ade0 ], [ %2540, %block_.L_44aeac ]
  %2541 = add i64 %storemerge66, 138
  br label %block_.L_44af3b

block_.L_44aeb6:                                  ; preds = %block_44ad04
  %2542 = add i64 %2040, 4
  store i64 %2542, i64* %3, align 8
  %2543 = load i32, i32* %178, align 4
  store i8 0, i8* %14, align 1
  %2544 = and i32 %2543, 255
  %2545 = tail call i32 @llvm.ctpop.i32(i32 %2544)
  %2546 = trunc i32 %2545 to i8
  %2547 = and i8 %2546, 1
  %2548 = xor i8 %2547, 1
  store i8 %2548, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2549 = icmp eq i32 %2543, 0
  %2550 = zext i1 %2549 to i8
  store i8 %2550, i8* %29, align 1
  %2551 = lshr i32 %2543, 31
  %2552 = trunc i32 %2551 to i8
  store i8 %2552, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v151 = select i1 %2549, i64 10, i64 75
  %2553 = add i64 %2040, %.v151
  store i64 %2553, i64* %3, align 8
  br i1 %2549, label %block_44aec0, label %block_.L_44af01

block_44aec0:                                     ; preds = %block_.L_44aeb6
  %2554 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2554, i64* %RAX.i1527, align 8
  %2555 = add i64 %2554, 72636
  %2556 = add i64 %2553, 15
  store i64 %2556, i64* %3, align 8
  %2557 = inttoptr i64 %2555 to i32*
  %2558 = load i32, i32* %2557, align 4
  %2559 = add i32 %2558, -2
  %2560 = icmp ult i32 %2558, 2
  %2561 = zext i1 %2560 to i8
  store i8 %2561, i8* %14, align 1
  %2562 = and i32 %2559, 255
  %2563 = tail call i32 @llvm.ctpop.i32(i32 %2562)
  %2564 = trunc i32 %2563 to i8
  %2565 = and i8 %2564, 1
  %2566 = xor i8 %2565, 1
  store i8 %2566, i8* %21, align 1
  %2567 = xor i32 %2559, %2558
  %2568 = lshr i32 %2567, 4
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  store i8 %2570, i8* %26, align 1
  %2571 = icmp eq i32 %2559, 0
  %2572 = zext i1 %2571 to i8
  store i8 %2572, i8* %29, align 1
  %2573 = lshr i32 %2559, 31
  %2574 = trunc i32 %2573 to i8
  store i8 %2574, i8* %32, align 1
  %2575 = lshr i32 %2558, 31
  %2576 = xor i32 %2573, %2575
  %2577 = add nuw nsw i32 %2576, %2575
  %2578 = icmp eq i32 %2577, 2
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %38, align 1
  %.v153 = select i1 %2571, i64 21, i64 65
  %2580 = add i64 %2553, %.v153
  store i64 %2580, i64* %3, align 8
  br i1 %2571, label %block_44aed5, label %block_.L_44af01

block_44aed5:                                     ; preds = %block_44aec0
  %2581 = add i64 %174, -32
  %2582 = add i64 %2580, 4
  store i64 %2582, i64* %3, align 8
  %2583 = inttoptr i64 %2581 to i64*
  %2584 = load i64, i64* %2583, align 8
  store i64 %2584, i64* %RAX.i1527, align 8
  %2585 = add i64 %2584, 540
  %2586 = add i64 %2580, 10
  store i64 %2586, i64* %3, align 8
  %2587 = inttoptr i64 %2585 to i32*
  %2588 = load i32, i32* %2587, align 4
  %2589 = add i32 %2588, 1
  %2590 = zext i32 %2589 to i64
  store i64 %2590, i64* %RCX.i1106, align 8
  %2591 = icmp eq i32 %2588, -1
  %2592 = icmp eq i32 %2589, 0
  %2593 = or i1 %2591, %2592
  %2594 = zext i1 %2593 to i8
  store i8 %2594, i8* %14, align 1
  %2595 = and i32 %2589, 255
  %2596 = tail call i32 @llvm.ctpop.i32(i32 %2595)
  %2597 = trunc i32 %2596 to i8
  %2598 = and i8 %2597, 1
  %2599 = xor i8 %2598, 1
  store i8 %2599, i8* %21, align 1
  %2600 = xor i32 %2589, %2588
  %2601 = lshr i32 %2600, 4
  %2602 = trunc i32 %2601 to i8
  %2603 = and i8 %2602, 1
  store i8 %2603, i8* %26, align 1
  %2604 = zext i1 %2592 to i8
  store i8 %2604, i8* %29, align 1
  %2605 = lshr i32 %2589, 31
  %2606 = trunc i32 %2605 to i8
  store i8 %2606, i8* %32, align 1
  %2607 = lshr i32 %2588, 31
  %2608 = xor i32 %2605, %2607
  %2609 = add nuw nsw i32 %2608, %2605
  %2610 = icmp eq i32 %2609, 2
  %2611 = zext i1 %2610 to i8
  store i8 %2611, i8* %38, align 1
  %2612 = add i64 %174, -24
  %2613 = add i64 %2580, 17
  store i64 %2613, i64* %3, align 8
  %2614 = inttoptr i64 %2612 to i64*
  %2615 = load i64, i64* %2614, align 8
  store i64 %2615, i64* %RAX.i1527, align 8
  %2616 = add i64 %2615, 4
  %2617 = add i64 %2580, 20
  store i64 %2617, i64* %3, align 8
  %2618 = inttoptr i64 %2616 to i32*
  store i32 %2589, i32* %2618, align 4
  %2619 = load i64, i64* %RBP.i, align 8
  %2620 = add i64 %2619, -24
  %2621 = load i64, i64* %3, align 8
  %2622 = add i64 %2621, 4
  store i64 %2622, i64* %3, align 8
  %2623 = inttoptr i64 %2620 to i64*
  %2624 = load i64, i64* %2623, align 8
  store i64 %2624, i64* %RAX.i1527, align 8
  %2625 = add i64 %2621, 10
  store i64 %2625, i64* %3, align 8
  %2626 = inttoptr i64 %2624 to i32*
  store i32 1, i32* %2626, align 4
  %2627 = load i64, i64* %RBP.i, align 8
  %2628 = add i64 %2627, -12
  %2629 = load i64, i64* %3, align 8
  %2630 = add i64 %2629, 3
  store i64 %2630, i64* %3, align 8
  %2631 = inttoptr i64 %2628 to i32*
  %2632 = load i32, i32* %2631, align 4
  %2633 = add i32 %2632, -1
  %2634 = zext i32 %2633 to i64
  store i64 %2634, i64* %RCX.i1106, align 8
  %2635 = icmp eq i32 %2632, 0
  %2636 = zext i1 %2635 to i8
  store i8 %2636, i8* %14, align 1
  %2637 = and i32 %2633, 255
  %2638 = tail call i32 @llvm.ctpop.i32(i32 %2637)
  %2639 = trunc i32 %2638 to i8
  %2640 = and i8 %2639, 1
  %2641 = xor i8 %2640, 1
  store i8 %2641, i8* %21, align 1
  %2642 = xor i32 %2633, %2632
  %2643 = lshr i32 %2642, 4
  %2644 = trunc i32 %2643 to i8
  %2645 = and i8 %2644, 1
  store i8 %2645, i8* %26, align 1
  %2646 = icmp eq i32 %2633, 0
  %2647 = zext i1 %2646 to i8
  store i8 %2647, i8* %29, align 1
  %2648 = lshr i32 %2633, 31
  %2649 = trunc i32 %2648 to i8
  store i8 %2649, i8* %32, align 1
  %2650 = lshr i32 %2632, 31
  %2651 = xor i32 %2648, %2650
  %2652 = add nuw nsw i32 %2651, %2650
  %2653 = icmp eq i32 %2652, 2
  %2654 = zext i1 %2653 to i8
  store i8 %2654, i8* %38, align 1
  %2655 = add i64 %2627, -44
  %2656 = add i64 %2629, 9
  store i64 %2656, i64* %3, align 8
  %2657 = inttoptr i64 %2655 to i32*
  store i32 %2633, i32* %2657, align 4
  %2658 = load i64, i64* %3, align 8
  %2659 = add i64 %2658, 58
  br label %block_.L_44af36

block_.L_44af01:                                  ; preds = %block_44aec0, %block_.L_44aeb6
  %2660 = phi i64 [ %2580, %block_44aec0 ], [ %2553, %block_.L_44aeb6 ]
  %2661 = add i64 %2660, 4
  store i64 %2661, i64* %3, align 8
  %2662 = load i32, i32* %178, align 4
  store i8 0, i8* %14, align 1
  %2663 = and i32 %2662, 255
  %2664 = tail call i32 @llvm.ctpop.i32(i32 %2663)
  %2665 = trunc i32 %2664 to i8
  %2666 = and i8 %2665, 1
  %2667 = xor i8 %2666, 1
  store i8 %2667, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2668 = icmp eq i32 %2662, 0
  %2669 = zext i1 %2668 to i8
  store i8 %2669, i8* %29, align 1
  %2670 = lshr i32 %2662, 31
  %2671 = trunc i32 %2670 to i8
  store i8 %2671, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2672 = icmp ne i8 %2671, 0
  %.v77 = select i1 %2672, i64 44, i64 6
  %2673 = add i64 %2661, %.v77
  store i64 %2673, i64* %3, align 8
  br i1 %2672, label %block_.L_44af31, label %block_44af0b

block_44af0b:                                     ; preds = %block_.L_44af01
  %2674 = add i64 %2673, 3
  store i64 %2674, i64* %3, align 8
  %2675 = load i32, i32* %178, align 4
  %2676 = zext i32 %2675 to i64
  store i64 %2676, i64* %RAX.i1527, align 8
  %2677 = add i64 %2673, 6
  store i64 %2677, i64* %3, align 8
  %2678 = load i32, i32* %183, align 4
  %2679 = sub i32 %2675, %2678
  %2680 = icmp ult i32 %2675, %2678
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %14, align 1
  %2682 = and i32 %2679, 255
  %2683 = tail call i32 @llvm.ctpop.i32(i32 %2682)
  %2684 = trunc i32 %2683 to i8
  %2685 = and i8 %2684, 1
  %2686 = xor i8 %2685, 1
  store i8 %2686, i8* %21, align 1
  %2687 = xor i32 %2678, %2675
  %2688 = xor i32 %2687, %2679
  %2689 = lshr i32 %2688, 4
  %2690 = trunc i32 %2689 to i8
  %2691 = and i8 %2690, 1
  store i8 %2691, i8* %26, align 1
  %2692 = icmp eq i32 %2679, 0
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %29, align 1
  %2694 = lshr i32 %2679, 31
  %2695 = trunc i32 %2694 to i8
  store i8 %2695, i8* %32, align 1
  %2696 = lshr i32 %2675, 31
  %2697 = lshr i32 %2678, 31
  %2698 = xor i32 %2697, %2696
  %2699 = xor i32 %2694, %2696
  %2700 = add nuw nsw i32 %2699, %2698
  %2701 = icmp eq i32 %2700, 2
  %2702 = zext i1 %2701 to i8
  store i8 %2702, i8* %38, align 1
  %2703 = icmp ne i8 %2695, 0
  %2704 = xor i1 %2703, %2701
  %.v152 = select i1 %2704, i64 12, i64 38
  %2705 = add i64 %2673, %.v152
  store i64 %2705, i64* %3, align 8
  br i1 %2704, label %block_44af17, label %block_.L_44af31

block_44af17:                                     ; preds = %block_44af0b
  %2706 = add i64 %174, -4
  %2707 = add i64 %2705, 3
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i32*
  %2709 = load i32, i32* %2708, align 4
  %2710 = zext i32 %2709 to i64
  store i64 %2710, i64* %RAX.i1527, align 8
  %2711 = add i64 %174, -24
  %2712 = add i64 %2705, 7
  store i64 %2712, i64* %3, align 8
  %2713 = inttoptr i64 %2711 to i64*
  %2714 = load i64, i64* %2713, align 8
  store i64 %2714, i64* %RCX.i1106, align 8
  %2715 = add i64 %2714, 4
  %2716 = add i64 %2705, 10
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2715 to i32*
  store i32 %2709, i32* %2717, align 4
  %2718 = load i64, i64* %RBP.i, align 8
  %2719 = add i64 %2718, -24
  %2720 = load i64, i64* %3, align 8
  %2721 = add i64 %2720, 4
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2719 to i64*
  %2723 = load i64, i64* %2722, align 8
  store i64 %2723, i64* %RCX.i1106, align 8
  %2724 = add i64 %2720, 10
  store i64 %2724, i64* %3, align 8
  %2725 = inttoptr i64 %2723 to i32*
  store i32 1, i32* %2725, align 4
  %2726 = load i64, i64* %RBP.i, align 8
  %2727 = add i64 %2726, -12
  %2728 = load i64, i64* %3, align 8
  %2729 = add i64 %2728, 3
  store i64 %2729, i64* %3, align 8
  %2730 = inttoptr i64 %2727 to i32*
  %2731 = load i32, i32* %2730, align 4
  %2732 = zext i32 %2731 to i64
  store i64 %2732, i64* %RAX.i1527, align 8
  %2733 = add i64 %2726, -44
  %2734 = add i64 %2728, 6
  store i64 %2734, i64* %3, align 8
  %2735 = inttoptr i64 %2733 to i32*
  store i32 %2731, i32* %2735, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_44af31

block_.L_44af31:                                  ; preds = %block_44af0b, %block_44af17, %block_.L_44af01
  %2736 = phi i64 [ %2705, %block_44af0b ], [ %.pre82, %block_44af17 ], [ %2673, %block_.L_44af01 ]
  %2737 = add i64 %2736, 5
  store i64 %2737, i64* %3, align 8
  br label %block_.L_44af36

block_.L_44af36:                                  ; preds = %block_.L_44af31, %block_44aed5
  %storemerge70 = phi i64 [ %2659, %block_44aed5 ], [ %2737, %block_.L_44af31 ]
  %2738 = add i64 %storemerge70, 5
  store i64 %2738, i64* %3, align 8
  br label %block_.L_44af3b

block_.L_44af3b:                                  ; preds = %block_.L_44af36, %block_.L_44aeb1
  %storemerge67 = phi i64 [ %2541, %block_.L_44aeb1 ], [ %2738, %block_.L_44af36 ]
  %2739 = add i64 %storemerge67, 323
  br label %block_.L_44b07e

block_.L_44af40:                                  ; preds = %block_44acf8, %block_.L_44acee
  %2740 = phi i64 [ %2027, %block_44acf8 ], [ %1995, %block_.L_44acee ]
  %2741 = add i64 %2740, 4
  store i64 %2741, i64* %3, align 8
  %2742 = load i32, i32* %178, align 4
  store i8 0, i8* %14, align 1
  %2743 = and i32 %2742, 255
  %2744 = tail call i32 @llvm.ctpop.i32(i32 %2743)
  %2745 = trunc i32 %2744 to i8
  %2746 = and i8 %2745, 1
  %2747 = xor i8 %2746, 1
  store i8 %2747, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2748 = icmp eq i32 %2742, 0
  %2749 = zext i1 %2748 to i8
  store i8 %2749, i8* %29, align 1
  %2750 = lshr i32 %2742, 31
  %2751 = trunc i32 %2750 to i8
  store i8 %2751, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2752 = icmp ne i8 %2751, 0
  %.v75 = select i1 %2752, i64 6, i64 309
  %2753 = add i64 %2741, %.v75
  store i64 %2753, i64* %3, align 8
  br i1 %2752, label %block_44af4a, label %block_.L_44b079

block_44af4a:                                     ; preds = %block_.L_44af40
  %2754 = add i64 %174, -32
  %2755 = add i64 %2753, 4
  store i64 %2755, i64* %3, align 8
  %2756 = inttoptr i64 %2754 to i64*
  %2757 = load i64, i64* %2756, align 8
  store i64 %2757, i64* %RAX.i1527, align 8
  %2758 = add i64 %2757, 532
  %2759 = add i64 %2753, 11
  store i64 %2759, i64* %3, align 8
  %2760 = inttoptr i64 %2758 to i32*
  %2761 = load i32, i32* %2760, align 4
  store i8 0, i8* %14, align 1
  %2762 = and i32 %2761, 255
  %2763 = tail call i32 @llvm.ctpop.i32(i32 %2762)
  %2764 = trunc i32 %2763 to i8
  %2765 = and i8 %2764, 1
  %2766 = xor i8 %2765, 1
  store i8 %2766, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2767 = icmp eq i32 %2761, 0
  %2768 = zext i1 %2767 to i8
  store i8 %2768, i8* %29, align 1
  %2769 = lshr i32 %2761, 31
  %2770 = trunc i32 %2769 to i8
  store i8 %2770, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v130 = select i1 %2767, i64 17, i64 94
  %2771 = add i64 %2753, %.v130
  %2772 = add i64 %174, -4
  %2773 = add i64 %2771, 3
  store i64 %2773, i64* %3, align 8
  %2774 = inttoptr i64 %2772 to i32*
  %2775 = load i32, i32* %2774, align 4
  %2776 = and i32 %2775, 1
  %2777 = zext i32 %2776 to i64
  store i64 %2777, i64* %RAX.i1527, align 8
  %2778 = add i64 %2771, 9
  store i64 %2778, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2779 = tail call i32 @llvm.ctpop.i32(i32 %2776)
  %2780 = trunc i32 %2779 to i8
  %2781 = xor i8 %2780, 1
  store i8 %2781, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2782 = trunc i32 %2776 to i8
  %2783 = xor i8 %2782, 1
  store i8 %2783, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2784 = icmp eq i8 %2783, 0
  br i1 %2767, label %block_44af5b, label %block_.L_44afa8

block_44af5b:                                     ; preds = %block_44af4a
  %.v150 = select i1 %2784, i64 62, i64 15
  %2785 = add i64 %2771, %.v150
  store i64 %2785, i64* %3, align 8
  br i1 %2784, label %block_.L_44af99, label %block_44af6a

block_44af6a:                                     ; preds = %block_44af5b
  %2786 = add i64 %2785, 4
  store i64 %2786, i64* %3, align 8
  %2787 = load i64, i64* %2756, align 8
  store i64 %2787, i64* %RAX.i1527, align 8
  %2788 = add i64 %2787, 544
  %2789 = add i64 %2785, 10
  store i64 %2789, i64* %3, align 8
  %2790 = inttoptr i64 %2788 to i32*
  %2791 = load i32, i32* %2790, align 4
  %2792 = add i32 %2791, 1
  %2793 = zext i32 %2792 to i64
  store i64 %2793, i64* %RCX.i1106, align 8
  %2794 = icmp eq i32 %2791, -1
  %2795 = icmp eq i32 %2792, 0
  %2796 = or i1 %2794, %2795
  %2797 = zext i1 %2796 to i8
  store i8 %2797, i8* %14, align 1
  %2798 = and i32 %2792, 255
  %2799 = tail call i32 @llvm.ctpop.i32(i32 %2798)
  %2800 = trunc i32 %2799 to i8
  %2801 = and i8 %2800, 1
  %2802 = xor i8 %2801, 1
  store i8 %2802, i8* %21, align 1
  %2803 = xor i32 %2792, %2791
  %2804 = lshr i32 %2803, 4
  %2805 = trunc i32 %2804 to i8
  %2806 = and i8 %2805, 1
  store i8 %2806, i8* %26, align 1
  %2807 = zext i1 %2795 to i8
  store i8 %2807, i8* %29, align 1
  %2808 = lshr i32 %2792, 31
  %2809 = trunc i32 %2808 to i8
  store i8 %2809, i8* %32, align 1
  %2810 = lshr i32 %2791, 31
  %2811 = xor i32 %2808, %2810
  %2812 = add nuw nsw i32 %2811, %2808
  %2813 = icmp eq i32 %2812, 2
  %2814 = zext i1 %2813 to i8
  store i8 %2814, i8* %38, align 1
  %2815 = add i64 %174, -24
  %2816 = add i64 %2785, 17
  store i64 %2816, i64* %3, align 8
  %2817 = inttoptr i64 %2815 to i64*
  %2818 = load i64, i64* %2817, align 8
  store i64 %2818, i64* %RAX.i1527, align 8
  %2819 = add i64 %2818, 4
  %2820 = add i64 %2785, 20
  store i64 %2820, i64* %3, align 8
  %2821 = inttoptr i64 %2819 to i32*
  store i32 %2792, i32* %2821, align 4
  %2822 = load i64, i64* %RBP.i, align 8
  %2823 = add i64 %2822, -32
  %2824 = load i64, i64* %3, align 8
  %2825 = add i64 %2824, 4
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2823 to i64*
  %2827 = load i64, i64* %2826, align 8
  store i64 %2827, i64* %RAX.i1527, align 8
  %2828 = add i64 %2827, 560
  %2829 = add i64 %2824, 10
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2828 to i32*
  %2831 = load i32, i32* %2830, align 4
  %2832 = zext i32 %2831 to i64
  store i64 %2832, i64* %RCX.i1106, align 8
  %2833 = add i64 %2822, -24
  %2834 = add i64 %2824, 14
  store i64 %2834, i64* %3, align 8
  %2835 = inttoptr i64 %2833 to i64*
  %2836 = load i64, i64* %2835, align 8
  store i64 %2836, i64* %RAX.i1527, align 8
  %2837 = add i64 %2824, 16
  store i64 %2837, i64* %3, align 8
  %2838 = inttoptr i64 %2836 to i32*
  store i32 %2831, i32* %2838, align 4
  %2839 = load i64, i64* %RBP.i, align 8
  %2840 = add i64 %2839, -12
  %2841 = load i64, i64* %3, align 8
  %2842 = add i64 %2841, 3
  store i64 %2842, i64* %3, align 8
  %2843 = inttoptr i64 %2840 to i32*
  %2844 = load i32, i32* %2843, align 4
  %2845 = zext i32 %2844 to i64
  store i64 %2845, i64* %RCX.i1106, align 8
  %2846 = add i64 %2839, -44
  %2847 = add i64 %2841, 6
  store i64 %2847, i64* %3, align 8
  %2848 = inttoptr i64 %2846 to i32*
  store i32 %2844, i32* %2848, align 4
  %2849 = load i64, i64* %3, align 8
  %2850 = add i64 %2849, 15
  store i64 %2850, i64* %3, align 8
  br label %block_.L_44afa3

block_.L_44af99:                                  ; preds = %block_44af5b
  %2851 = add i64 %174, -24
  %2852 = add i64 %2785, 4
  store i64 %2852, i64* %3, align 8
  %2853 = inttoptr i64 %2851 to i64*
  %2854 = load i64, i64* %2853, align 8
  store i64 %2854, i64* %RAX.i1527, align 8
  %2855 = add i64 %2785, 10
  store i64 %2855, i64* %3, align 8
  %2856 = inttoptr i64 %2854 to i32*
  store i32 0, i32* %2856, align 4
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_44afa3

block_.L_44afa3:                                  ; preds = %block_.L_44af99, %block_44af6a
  %2857 = phi i64 [ %.pre89, %block_.L_44af99 ], [ %2850, %block_44af6a ]
  %2858 = add i64 %2857, 209
  br label %block_.L_44b074

block_.L_44afa8:                                  ; preds = %block_44af4a
  %.v131 = select i1 %2784, i64 157, i64 15
  %2859 = add i64 %2771, %.v131
  %2860 = add i64 %2859, 4
  store i64 %2860, i64* %3, align 8
  %2861 = load i64, i64* %2756, align 8
  store i64 %2861, i64* %RAX.i1527, align 8
  %2862 = add i64 %2861, 544
  %2863 = add i64 %2859, 10
  store i64 %2863, i64* %3, align 8
  %2864 = inttoptr i64 %2862 to i32*
  %2865 = load i32, i32* %2864, align 4
  %2866 = zext i32 %2865 to i64
  store i64 %2866, i64* %RCX.i1106, align 8
  br i1 %2784, label %block_.L_44b045, label %block_44afb7

block_44afb7:                                     ; preds = %block_.L_44afa8
  %2867 = add i64 %174, -24
  %2868 = add i64 %2859, 14
  store i64 %2868, i64* %3, align 8
  %2869 = inttoptr i64 %2867 to i64*
  %2870 = load i64, i64* %2869, align 8
  store i64 %2870, i64* %RAX.i1527, align 8
  %2871 = add i64 %2870, 4
  %2872 = add i64 %2859, 17
  store i64 %2872, i64* %3, align 8
  %2873 = inttoptr i64 %2871 to i32*
  store i32 %2865, i32* %2873, align 4
  %2874 = load i64, i64* %RBP.i, align 8
  %2875 = add i64 %2874, -32
  %2876 = load i64, i64* %3, align 8
  %2877 = add i64 %2876, 4
  store i64 %2877, i64* %3, align 8
  %2878 = inttoptr i64 %2875 to i64*
  %2879 = load i64, i64* %2878, align 8
  store i64 %2879, i64* %RAX.i1527, align 8
  %2880 = add i64 %2879, 560
  %2881 = add i64 %2876, 10
  store i64 %2881, i64* %3, align 8
  %2882 = inttoptr i64 %2880 to i32*
  %2883 = load i32, i32* %2882, align 4
  %2884 = zext i32 %2883 to i64
  store i64 %2884, i64* %RCX.i1106, align 8
  %2885 = add i64 %2874, -24
  %2886 = add i64 %2876, 14
  store i64 %2886, i64* %3, align 8
  %2887 = inttoptr i64 %2885 to i64*
  %2888 = load i64, i64* %2887, align 8
  store i64 %2888, i64* %RAX.i1527, align 8
  %2889 = add i64 %2876, 16
  store i64 %2889, i64* %3, align 8
  %2890 = inttoptr i64 %2888 to i32*
  store i32 %2883, i32* %2890, align 4
  %2891 = load i64, i64* %RBP.i, align 8
  %2892 = add i64 %2891, -32
  %2893 = load i64, i64* %3, align 8
  %2894 = add i64 %2893, 4
  store i64 %2894, i64* %3, align 8
  %2895 = inttoptr i64 %2892 to i64*
  %2896 = load i64, i64* %2895, align 8
  store i64 %2896, i64* %RAX.i1527, align 8
  %2897 = add i64 %2896, 560
  %2898 = add i64 %2893, 11
  store i64 %2898, i64* %3, align 8
  %2899 = inttoptr i64 %2897 to i32*
  %2900 = load i32, i32* %2899, align 4
  store i8 0, i8* %14, align 1
  %2901 = and i32 %2900, 255
  %2902 = tail call i32 @llvm.ctpop.i32(i32 %2901)
  %2903 = trunc i32 %2902 to i8
  %2904 = and i8 %2903, 1
  %2905 = xor i8 %2904, 1
  store i8 %2905, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2906 = icmp eq i32 %2900, 0
  %2907 = zext i1 %2906 to i8
  store i8 %2907, i8* %29, align 1
  %2908 = lshr i32 %2900, 31
  %2909 = trunc i32 %2908 to i8
  store i8 %2909, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v148 = select i1 %2906, i64 104, i64 17
  %2910 = add i64 %2893, %.v148
  store i64 %2910, i64* %3, align 8
  br i1 %2906, label %block_.L_44b040, label %block_44afe9

block_44afe9:                                     ; preds = %block_44afb7
  %2911 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2911, i64* %RAX.i1527, align 8
  %2912 = add i64 %2911, 14168
  %2913 = add i64 %2910, 15
  store i64 %2913, i64* %3, align 8
  %2914 = inttoptr i64 %2912 to i64*
  %2915 = load i64, i64* %2914, align 8
  store i64 %2915, i64* %RAX.i1527, align 8
  %2916 = add i64 %2910, 19
  store i64 %2916, i64* %3, align 8
  %2917 = load i64, i64* %2895, align 8
  store i64 %2917, i64* %RCX.i1106, align 8
  %2918 = add i64 %2917, 544
  %2919 = add i64 %2910, 26
  store i64 %2919, i64* %3, align 8
  %2920 = inttoptr i64 %2918 to i32*
  %2921 = load i32, i32* %2920, align 4
  %2922 = sext i32 %2921 to i64
  %2923 = mul nsw i64 %2922, 632
  store i64 %2923, i64* %RCX.i1106, align 8
  %2924 = lshr i64 %2923, 63
  %2925 = add i64 %2923, %2915
  store i64 %2925, i64* %RAX.i1527, align 8
  %2926 = icmp ult i64 %2925, %2915
  %2927 = icmp ult i64 %2925, %2923
  %2928 = or i1 %2926, %2927
  %2929 = zext i1 %2928 to i8
  store i8 %2929, i8* %14, align 1
  %2930 = trunc i64 %2925 to i32
  %2931 = and i32 %2930, 255
  %2932 = tail call i32 @llvm.ctpop.i32(i32 %2931)
  %2933 = trunc i32 %2932 to i8
  %2934 = and i8 %2933, 1
  %2935 = xor i8 %2934, 1
  store i8 %2935, i8* %21, align 1
  %2936 = xor i64 %2923, %2915
  %2937 = xor i64 %2936, %2925
  %2938 = lshr i64 %2937, 4
  %2939 = trunc i64 %2938 to i8
  %2940 = and i8 %2939, 1
  store i8 %2940, i8* %26, align 1
  %2941 = icmp eq i64 %2925, 0
  %2942 = zext i1 %2941 to i8
  store i8 %2942, i8* %29, align 1
  %2943 = lshr i64 %2925, 63
  %2944 = trunc i64 %2943 to i8
  store i8 %2944, i8* %32, align 1
  %2945 = lshr i64 %2915, 63
  %2946 = xor i64 %2943, %2945
  %2947 = xor i64 %2943, %2924
  %2948 = add nuw nsw i64 %2946, %2947
  %2949 = icmp eq i64 %2948, 2
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %38, align 1
  %2951 = add i64 %2925, 532
  %2952 = add i64 %2910, 43
  store i64 %2952, i64* %3, align 8
  %2953 = inttoptr i64 %2951 to i32*
  %2954 = load i32, i32* %2953, align 4
  store i8 0, i8* %14, align 1
  %2955 = and i32 %2954, 255
  %2956 = tail call i32 @llvm.ctpop.i32(i32 %2955)
  %2957 = trunc i32 %2956 to i8
  %2958 = and i8 %2957, 1
  %2959 = xor i8 %2958, 1
  store i8 %2959, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2960 = icmp eq i32 %2954, 0
  %2961 = zext i1 %2960 to i8
  store i8 %2961, i8* %29, align 1
  %2962 = lshr i32 %2954, 31
  %2963 = trunc i32 %2962 to i8
  store i8 %2963, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v149 = select i1 %2960, i64 49, i64 76
  %2964 = add i64 %2910, %.v149
  store i64 %2964, i64* %3, align 8
  %2965 = load i64, i64* %RBP.i, align 8
  br i1 %2960, label %block_44b01a, label %block_.L_44b035

block_44b01a:                                     ; preds = %block_44afe9
  %2966 = add i64 %2965, -24
  %2967 = add i64 %2964, 4
  store i64 %2967, i64* %3, align 8
  %2968 = inttoptr i64 %2966 to i64*
  %2969 = load i64, i64* %2968, align 8
  store i64 %2969, i64* %RAX.i1527, align 8
  %2970 = add i64 %2969, 4
  %2971 = add i64 %2964, 7
  store i64 %2971, i64* %3, align 8
  %2972 = inttoptr i64 %2970 to i32*
  %2973 = load i32, i32* %2972, align 4
  %2974 = add i32 %2973, 1
  %2975 = zext i32 %2974 to i64
  store i64 %2975, i64* %RCX.i1106, align 8
  %2976 = icmp eq i32 %2973, -1
  %2977 = icmp eq i32 %2974, 0
  %2978 = or i1 %2976, %2977
  %2979 = zext i1 %2978 to i8
  store i8 %2979, i8* %14, align 1
  %2980 = and i32 %2974, 255
  %2981 = tail call i32 @llvm.ctpop.i32(i32 %2980)
  %2982 = trunc i32 %2981 to i8
  %2983 = and i8 %2982, 1
  %2984 = xor i8 %2983, 1
  store i8 %2984, i8* %21, align 1
  %2985 = xor i32 %2974, %2973
  %2986 = lshr i32 %2985, 4
  %2987 = trunc i32 %2986 to i8
  %2988 = and i8 %2987, 1
  store i8 %2988, i8* %26, align 1
  %2989 = zext i1 %2977 to i8
  store i8 %2989, i8* %29, align 1
  %2990 = lshr i32 %2974, 31
  %2991 = trunc i32 %2990 to i8
  store i8 %2991, i8* %32, align 1
  %2992 = lshr i32 %2973, 31
  %2993 = xor i32 %2990, %2992
  %2994 = add nuw nsw i32 %2993, %2990
  %2995 = icmp eq i32 %2994, 2
  %2996 = zext i1 %2995 to i8
  store i8 %2996, i8* %38, align 1
  %2997 = add i64 %2964, 13
  store i64 %2997, i64* %3, align 8
  store i32 %2974, i32* %2972, align 4
  %2998 = load i64, i64* %RBP.i, align 8
  %2999 = add i64 %2998, -12
  %3000 = load i64, i64* %3, align 8
  %3001 = add i64 %3000, 3
  store i64 %3001, i64* %3, align 8
  %3002 = inttoptr i64 %2999 to i32*
  %3003 = load i32, i32* %3002, align 4
  %3004 = shl i32 %3003, 1
  %3005 = icmp slt i32 %3003, 0
  %3006 = icmp slt i32 %3004, 0
  %3007 = xor i1 %3005, %3006
  %3008 = zext i32 %3004 to i64
  store i64 %3008, i64* %RCX.i1106, align 8
  %.lobit72 = lshr i32 %3003, 31
  %3009 = trunc i32 %.lobit72 to i8
  store i8 %3009, i8* %14, align 1
  %3010 = and i32 %3004, 254
  %3011 = tail call i32 @llvm.ctpop.i32(i32 %3010)
  %3012 = trunc i32 %3011 to i8
  %3013 = and i8 %3012, 1
  %3014 = xor i8 %3013, 1
  store i8 %3014, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3015 = icmp eq i32 %3004, 0
  %3016 = zext i1 %3015 to i8
  store i8 %3016, i8* %29, align 1
  %3017 = lshr i32 %3003, 30
  %3018 = trunc i32 %3017 to i8
  %3019 = and i8 %3018, 1
  store i8 %3019, i8* %32, align 1
  %3020 = zext i1 %3007 to i8
  store i8 %3020, i8* %38, align 1
  %3021 = add i64 %2998, -44
  %3022 = add i64 %3000, 8
  store i64 %3022, i64* %3, align 8
  %3023 = inttoptr i64 %3021 to i32*
  store i32 %3004, i32* %3023, align 4
  %3024 = load i64, i64* %3, align 8
  %3025 = add i64 %3024, 11
  store i64 %3025, i64* %3, align 8
  br label %block_.L_44b03b

block_.L_44b035:                                  ; preds = %block_44afe9
  %3026 = add i64 %2965, -12
  %3027 = add i64 %2964, 3
  store i64 %3027, i64* %3, align 8
  %3028 = inttoptr i64 %3026 to i32*
  %3029 = load i32, i32* %3028, align 4
  %3030 = zext i32 %3029 to i64
  store i64 %3030, i64* %RAX.i1527, align 8
  %3031 = add i64 %2965, -44
  %3032 = add i64 %2964, 6
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3031 to i32*
  store i32 %3029, i32* %3033, align 4
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_44b03b

block_.L_44b03b:                                  ; preds = %block_.L_44b035, %block_44b01a
  %3034 = phi i64 [ %.pre90, %block_.L_44b035 ], [ %3025, %block_44b01a ]
  %3035 = add i64 %3034, 5
  store i64 %3035, i64* %3, align 8
  br label %block_.L_44b040

block_.L_44b040:                                  ; preds = %block_.L_44b03b, %block_44afb7
  %3036 = phi i64 [ %3035, %block_.L_44b03b ], [ %2910, %block_44afb7 ]
  %3037 = add i64 %3036, 47
  store i64 %3037, i64* %3, align 8
  br label %block_.L_44b06f

block_.L_44b045:                                  ; preds = %block_.L_44afa8
  %3038 = add i32 %2865, 1
  %3039 = zext i32 %3038 to i64
  store i64 %3039, i64* %RCX.i1106, align 8
  %3040 = icmp eq i32 %2865, -1
  %3041 = icmp eq i32 %3038, 0
  %3042 = or i1 %3040, %3041
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %14, align 1
  %3044 = and i32 %3038, 255
  %3045 = tail call i32 @llvm.ctpop.i32(i32 %3044)
  %3046 = trunc i32 %3045 to i8
  %3047 = and i8 %3046, 1
  %3048 = xor i8 %3047, 1
  store i8 %3048, i8* %21, align 1
  %3049 = xor i32 %3038, %2865
  %3050 = lshr i32 %3049, 4
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  store i8 %3052, i8* %26, align 1
  %3053 = zext i1 %3041 to i8
  store i8 %3053, i8* %29, align 1
  %3054 = lshr i32 %3038, 31
  %3055 = trunc i32 %3054 to i8
  store i8 %3055, i8* %32, align 1
  %3056 = lshr i32 %2865, 31
  %3057 = xor i32 %3054, %3056
  %3058 = add nuw nsw i32 %3057, %3054
  %3059 = icmp eq i32 %3058, 2
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %38, align 1
  %3061 = add i64 %174, -24
  %3062 = add i64 %2859, 17
  store i64 %3062, i64* %3, align 8
  %3063 = inttoptr i64 %3061 to i64*
  %3064 = load i64, i64* %3063, align 8
  store i64 %3064, i64* %RAX.i1527, align 8
  %3065 = add i64 %3064, 4
  %3066 = add i64 %2859, 20
  store i64 %3066, i64* %3, align 8
  %3067 = inttoptr i64 %3065 to i32*
  store i32 %3038, i32* %3067, align 4
  %3068 = load i64, i64* %RBP.i, align 8
  %3069 = add i64 %3068, -32
  %3070 = load i64, i64* %3, align 8
  %3071 = add i64 %3070, 4
  store i64 %3071, i64* %3, align 8
  %3072 = inttoptr i64 %3069 to i64*
  %3073 = load i64, i64* %3072, align 8
  store i64 %3073, i64* %RAX.i1527, align 8
  %3074 = add i64 %3073, 560
  %3075 = add i64 %3070, 10
  store i64 %3075, i64* %3, align 8
  %3076 = inttoptr i64 %3074 to i32*
  %3077 = load i32, i32* %3076, align 4
  %3078 = zext i32 %3077 to i64
  store i64 %3078, i64* %RCX.i1106, align 8
  %3079 = add i64 %3068, -24
  %3080 = add i64 %3070, 14
  store i64 %3080, i64* %3, align 8
  %3081 = inttoptr i64 %3079 to i64*
  %3082 = load i64, i64* %3081, align 8
  store i64 %3082, i64* %RAX.i1527, align 8
  %3083 = add i64 %3070, 16
  store i64 %3083, i64* %3, align 8
  %3084 = inttoptr i64 %3082 to i32*
  store i32 %3077, i32* %3084, align 4
  %3085 = load i64, i64* %RBP.i, align 8
  %3086 = add i64 %3085, -12
  %3087 = load i64, i64* %3, align 8
  %3088 = add i64 %3087, 3
  store i64 %3088, i64* %3, align 8
  %3089 = inttoptr i64 %3086 to i32*
  %3090 = load i32, i32* %3089, align 4
  %3091 = zext i32 %3090 to i64
  store i64 %3091, i64* %RCX.i1106, align 8
  %3092 = add i64 %3085, -44
  %3093 = add i64 %3087, 6
  store i64 %3093, i64* %3, align 8
  %3094 = inttoptr i64 %3092 to i32*
  store i32 %3090, i32* %3094, align 4
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_44b06f

block_.L_44b06f:                                  ; preds = %block_.L_44b045, %block_.L_44b040
  %3095 = phi i64 [ %.pre91, %block_.L_44b045 ], [ %3037, %block_.L_44b040 ]
  %3096 = add i64 %3095, 5
  store i64 %3096, i64* %3, align 8
  br label %block_.L_44b074

block_.L_44b074:                                  ; preds = %block_.L_44b06f, %block_.L_44afa3
  %storemerge71 = phi i64 [ %2858, %block_.L_44afa3 ], [ %3096, %block_.L_44b06f ]
  %3097 = add i64 %storemerge71, 5
  store i64 %3097, i64* %3, align 8
  br label %block_.L_44b079

block_.L_44b079:                                  ; preds = %block_.L_44af40, %block_.L_44b074
  %3098 = phi i64 [ %2753, %block_.L_44af40 ], [ %3097, %block_.L_44b074 ]
  %3099 = add i64 %3098, 5
  store i64 %3099, i64* %3, align 8
  br label %block_.L_44b07e

block_.L_44b07e:                                  ; preds = %block_.L_44b079, %block_.L_44af3b
  %storemerge68 = phi i64 [ %2739, %block_.L_44af3b ], [ %3099, %block_.L_44b079 ]
  %3100 = add i64 %storemerge68, 5
  store i64 %3100, i64* %3, align 8
  br label %block_.L_44b083

block_.L_44b083:                                  ; preds = %block_.L_44b07e, %block_.L_44ace9
  %storemerge56 = phi i64 [ %1983, %block_.L_44ace9 ], [ %3100, %block_.L_44b07e ]
  %MEMORY.46 = phi %struct.Memory* [ %MEMORY.25, %block_.L_44ace9 ], [ %2, %block_.L_44b07e ]
  %3101 = load i64, i64* %RBP.i, align 8
  %3102 = add i64 %3101, -24
  %3103 = add i64 %storemerge56, 4
  store i64 %3103, i64* %3, align 8
  %3104 = inttoptr i64 %3102 to i64*
  %3105 = load i64, i64* %3104, align 8
  store i64 %3105, i64* %RAX.i1527, align 8
  %3106 = add i64 %storemerge56, 7
  store i64 %3106, i64* %3, align 8
  %3107 = inttoptr i64 %3105 to i32*
  %3108 = load i32, i32* %3107, align 4
  store i8 0, i8* %14, align 1
  %3109 = and i32 %3108, 255
  %3110 = tail call i32 @llvm.ctpop.i32(i32 %3109)
  %3111 = trunc i32 %3110 to i8
  %3112 = and i8 %3111, 1
  %3113 = xor i8 %3112, 1
  store i8 %3113, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3114 = icmp eq i32 %3108, 0
  %3115 = zext i1 %3114 to i8
  store i8 %3115, i8* %29, align 1
  %3116 = lshr i32 %3108, 31
  %3117 = trunc i32 %3116 to i8
  store i8 %3117, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v145 = select i1 %3114, i64 13, i64 34
  %3118 = add i64 %storemerge56, %.v145
  store i64 %3118, i64* %3, align 8
  br i1 %3114, label %block_44b090, label %block_.L_44b0a5

block_44b090:                                     ; preds = %block_.L_44b083
  %3119 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3119, i64* %RAX.i1527, align 8
  %3120 = add i64 %3119, 72636
  %3121 = add i64 %3118, 15
  store i64 %3121, i64* %3, align 8
  %3122 = inttoptr i64 %3120 to i32*
  %3123 = load i32, i32* %3122, align 4
  store i8 0, i8* %14, align 1
  %3124 = and i32 %3123, 255
  %3125 = tail call i32 @llvm.ctpop.i32(i32 %3124)
  %3126 = trunc i32 %3125 to i8
  %3127 = and i8 %3126, 1
  %3128 = xor i8 %3127, 1
  store i8 %3128, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3129 = icmp eq i32 %3123, 0
  %3130 = zext i1 %3129 to i8
  store i8 %3130, i8* %29, align 1
  %3131 = lshr i32 %3123, 31
  %3132 = trunc i32 %3131 to i8
  store i8 %3132, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v147 = select i1 %3129, i64 275, i64 21
  %3133 = add i64 %3118, %.v147
  store i64 %3133, i64* %3, align 8
  br i1 %3129, label %block_.L_44b1a3, label %block_.L_44b0a5

block_.L_44b0a5:                                  ; preds = %block_.L_44b083, %block_44b090
  %3134 = phi i64 [ %3133, %block_44b090 ], [ %3118, %block_.L_44b083 ]
  %3135 = add i64 %3101, -8
  %3136 = add i64 %3134, 3
  store i64 %3136, i64* %3, align 8
  %3137 = inttoptr i64 %3135 to i32*
  %3138 = load i32, i32* %3137, align 4
  %3139 = zext i32 %3138 to i64
  store i64 %3139, i64* %RAX.i1527, align 8
  %3140 = add i64 %3101, -36
  %3141 = add i64 %3134, 6
  store i64 %3141, i64* %3, align 8
  %3142 = inttoptr i64 %3140 to i32*
  %3143 = load i32, i32* %3142, align 4
  %3144 = add i32 %3143, %3138
  %3145 = zext i32 %3144 to i64
  store i64 %3145, i64* %RAX.i1527, align 8
  %3146 = icmp ult i32 %3144, %3138
  %3147 = icmp ult i32 %3144, %3143
  %3148 = or i1 %3146, %3147
  %3149 = zext i1 %3148 to i8
  store i8 %3149, i8* %14, align 1
  %3150 = and i32 %3144, 255
  %3151 = tail call i32 @llvm.ctpop.i32(i32 %3150)
  %3152 = trunc i32 %3151 to i8
  %3153 = and i8 %3152, 1
  %3154 = xor i8 %3153, 1
  store i8 %3154, i8* %21, align 1
  %3155 = xor i32 %3143, %3138
  %3156 = xor i32 %3155, %3144
  %3157 = lshr i32 %3156, 4
  %3158 = trunc i32 %3157 to i8
  %3159 = and i8 %3158, 1
  store i8 %3159, i8* %26, align 1
  %3160 = icmp eq i32 %3144, 0
  %3161 = zext i1 %3160 to i8
  store i8 %3161, i8* %29, align 1
  %3162 = lshr i32 %3144, 31
  %3163 = trunc i32 %3162 to i8
  store i8 %3163, i8* %32, align 1
  %3164 = lshr i32 %3138, 31
  %3165 = lshr i32 %3143, 31
  %3166 = xor i32 %3162, %3164
  %3167 = xor i32 %3162, %3165
  %3168 = add nuw nsw i32 %3166, %3167
  %3169 = icmp eq i32 %3168, 2
  %3170 = zext i1 %3169 to i8
  store i8 %3170, i8* %38, align 1
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3172 = sext i32 %3144 to i64
  %3173 = lshr i64 %3172, 32
  store i64 %3173, i64* %3171, align 8
  %3174 = add i64 %3134, 10
  store i64 %3174, i64* %3, align 8
  %3175 = load i32, i32* %3142, align 4
  %3176 = sext i32 %3175 to i64
  %3177 = shl nuw i64 %3173, 32
  %3178 = or i64 %3177, %3145
  %3179 = sdiv i64 %3178, %3176
  %3180 = shl i64 %3179, 32
  %3181 = ashr exact i64 %3180, 32
  %3182 = icmp eq i64 %3179, %3181
  br i1 %3182, label %3185, label %3183

; <label>:3183:                                   ; preds = %block_.L_44b0a5
  %3184 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3174, %struct.Memory* %MEMORY.46)
  %.pre113 = load i64, i64* %RBP.i, align 8
  %.pre114 = load i64, i64* %3, align 8
  %.pre115 = load i32, i32* %EDX.i166, align 4
  br label %routine_idivl_MINUS0x24__rbp_.exit

; <label>:3185:                                   ; preds = %block_.L_44b0a5
  %3186 = srem i64 %3178, %3176
  %3187 = and i64 %3179, 4294967295
  store i64 %3187, i64* %RAX.i1527, align 8
  %3188 = and i64 %3186, 4294967295
  store i64 %3188, i64* %RDX.i1481, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3189 = trunc i64 %3186 to i32
  br label %routine_idivl_MINUS0x24__rbp_.exit

routine_idivl_MINUS0x24__rbp_.exit:               ; preds = %3185, %3183
  %3190 = phi i32 [ %.pre115, %3183 ], [ %3189, %3185 ]
  %3191 = phi i64 [ %.pre114, %3183 ], [ %3174, %3185 ]
  %3192 = phi i64 [ %.pre113, %3183 ], [ %3101, %3185 ]
  %3193 = phi %struct.Memory* [ %3184, %3183 ], [ %MEMORY.46, %3185 ]
  %3194 = add i64 %3192, -24
  %3195 = add i64 %3191, 4
  store i64 %3195, i64* %3, align 8
  %3196 = inttoptr i64 %3194 to i64*
  %3197 = load i64, i64* %3196, align 8
  store i64 %3197, i64* %RCX.i1106, align 8
  %3198 = add i64 %3197, 8
  %3199 = add i64 %3191, 7
  store i64 %3199, i64* %3, align 8
  %3200 = inttoptr i64 %3198 to i32*
  store i32 %3190, i32* %3200, align 4
  %3201 = load i64, i64* %RBP.i, align 8
  %3202 = add i64 %3201, -44
  %3203 = load i64, i64* %3, align 8
  %3204 = add i64 %3203, 3
  store i64 %3204, i64* %3, align 8
  %3205 = inttoptr i64 %3202 to i32*
  %3206 = load i32, i32* %3205, align 4
  %3207 = zext i32 %3206 to i64
  store i64 %3207, i64* %RDX.i1481, align 8
  %3208 = add i64 %3201, -40
  %3209 = add i64 %3203, 6
  store i64 %3209, i64* %3, align 8
  %3210 = inttoptr i64 %3208 to i32*
  %3211 = load i32, i32* %3210, align 4
  %3212 = add i32 %3211, %3206
  %3213 = zext i32 %3212 to i64
  %3214 = icmp ult i32 %3212, %3206
  %3215 = icmp ult i32 %3212, %3211
  %3216 = or i1 %3214, %3215
  %3217 = zext i1 %3216 to i8
  store i8 %3217, i8* %14, align 1
  %3218 = and i32 %3212, 255
  %3219 = tail call i32 @llvm.ctpop.i32(i32 %3218)
  %3220 = trunc i32 %3219 to i8
  %3221 = and i8 %3220, 1
  %3222 = xor i8 %3221, 1
  store i8 %3222, i8* %21, align 1
  %3223 = xor i32 %3211, %3206
  %3224 = xor i32 %3223, %3212
  %3225 = lshr i32 %3224, 4
  %3226 = trunc i32 %3225 to i8
  %3227 = and i8 %3226, 1
  store i8 %3227, i8* %26, align 1
  %3228 = icmp eq i32 %3212, 0
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %29, align 1
  %3230 = lshr i32 %3212, 31
  %3231 = trunc i32 %3230 to i8
  store i8 %3231, i8* %32, align 1
  %3232 = lshr i32 %3206, 31
  %3233 = lshr i32 %3211, 31
  %3234 = xor i32 %3230, %3232
  %3235 = xor i32 %3230, %3233
  %3236 = add nuw nsw i32 %3234, %3235
  %3237 = icmp eq i32 %3236, 2
  %3238 = zext i1 %3237 to i8
  store i8 %3238, i8* %38, align 1
  store i64 %3213, i64* %RAX.i1527, align 8
  %3239 = sext i32 %3212 to i64
  %3240 = lshr i64 %3239, 32
  store i64 %3240, i64* %3171, align 8
  %3241 = add i64 %3203, 12
  store i64 %3241, i64* %3, align 8
  %3242 = load i32, i32* %3210, align 4
  %3243 = sext i32 %3242 to i64
  %3244 = shl nuw i64 %3240, 32
  %3245 = or i64 %3244, %3213
  %3246 = sdiv i64 %3245, %3243
  %3247 = shl i64 %3246, 32
  %3248 = ashr exact i64 %3247, 32
  %3249 = icmp eq i64 %3246, %3248
  br i1 %3249, label %3252, label %3250

; <label>:3250:                                   ; preds = %routine_idivl_MINUS0x24__rbp_.exit
  %3251 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3241, %struct.Memory* %3193)
  %.pre116 = load i64, i64* %RBP.i, align 8
  %.pre117 = load i64, i64* %3, align 8
  %.pre118 = load i32, i32* %EDX.i166, align 4
  br label %routine_idivl_MINUS0x28__rbp_.exit

; <label>:3252:                                   ; preds = %routine_idivl_MINUS0x24__rbp_.exit
  %3253 = srem i64 %3245, %3243
  %3254 = and i64 %3246, 4294967295
  store i64 %3254, i64* %RAX.i1527, align 8
  %3255 = and i64 %3253, 4294967295
  store i64 %3255, i64* %RDX.i1481, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3256 = trunc i64 %3253 to i32
  br label %routine_idivl_MINUS0x28__rbp_.exit

routine_idivl_MINUS0x28__rbp_.exit:               ; preds = %3252, %3250
  %3257 = phi i32 [ %.pre118, %3250 ], [ %3256, %3252 ]
  %3258 = phi i64 [ %.pre117, %3250 ], [ %3241, %3252 ]
  %3259 = phi i64 [ %.pre116, %3250 ], [ %3201, %3252 ]
  %3260 = phi %struct.Memory* [ %3251, %3250 ], [ %3193, %3252 ]
  %3261 = add i64 %3259, -24
  %3262 = add i64 %3258, 4
  store i64 %3262, i64* %3, align 8
  %3263 = inttoptr i64 %3261 to i64*
  %3264 = load i64, i64* %3263, align 8
  store i64 %3264, i64* %RCX.i1106, align 8
  %3265 = add i64 %3264, 12
  %3266 = add i64 %3258, 7
  store i64 %3266, i64* %3, align 8
  %3267 = inttoptr i64 %3265 to i32*
  store i32 %3257, i32* %3267, align 4
  %3268 = load i64, i64* %RBP.i, align 8
  %3269 = add i64 %3268, -24
  %3270 = load i64, i64* %3, align 8
  %3271 = add i64 %3270, 4
  store i64 %3271, i64* %3, align 8
  %3272 = inttoptr i64 %3269 to i64*
  %3273 = load i64, i64* %3272, align 8
  store i64 %3273, i64* %RCX.i1106, align 8
  %RDI.i153 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %3274 = add i64 %3273, 4
  %3275 = add i64 %3270, 7
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3274 to i32*
  %3277 = load i32, i32* %3276, align 4
  %3278 = zext i32 %3277 to i64
  store i64 %3278, i64* %RDI.i153, align 8
  %3279 = add i64 %3270, 11
  store i64 %3279, i64* %3, align 8
  %3280 = load i64, i64* %3272, align 8
  %3281 = add i64 %3280, 16
  store i64 %3281, i64* %RCX.i1106, align 8
  %3282 = icmp ugt i64 %3280, -17
  %3283 = zext i1 %3282 to i8
  store i8 %3283, i8* %14, align 1
  %3284 = trunc i64 %3281 to i32
  %3285 = and i32 %3284, 255
  %3286 = tail call i32 @llvm.ctpop.i32(i32 %3285)
  %3287 = trunc i32 %3286 to i8
  %3288 = and i8 %3287, 1
  %3289 = xor i8 %3288, 1
  store i8 %3289, i8* %21, align 1
  %3290 = xor i64 %3280, 16
  %3291 = xor i64 %3290, %3281
  %3292 = lshr i64 %3291, 4
  %3293 = trunc i64 %3292 to i8
  %3294 = and i8 %3293, 1
  store i8 %3294, i8* %26, align 1
  %3295 = icmp eq i64 %3281, 0
  %3296 = zext i1 %3295 to i8
  store i8 %3296, i8* %29, align 1
  %3297 = lshr i64 %3281, 63
  %3298 = trunc i64 %3297 to i8
  store i8 %3298, i8* %32, align 1
  %3299 = lshr i64 %3280, 63
  %3300 = xor i64 %3297, %3299
  %3301 = add nuw nsw i64 %3300, %3297
  %3302 = icmp eq i64 %3301, 2
  %3303 = zext i1 %3302 to i8
  store i8 %3303, i8* %38, align 1
  %RSI.i144 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %3304 = add i64 %3270, 19
  store i64 %3304, i64* %3, align 8
  %3305 = load i64, i64* %3272, align 8
  %3306 = add i64 %3305, 20
  %3307 = icmp ugt i64 %3305, -21
  %3308 = zext i1 %3307 to i8
  store i8 %3308, i8* %14, align 1
  %3309 = trunc i64 %3306 to i32
  %3310 = and i32 %3309, 255
  %3311 = tail call i32 @llvm.ctpop.i32(i32 %3310)
  %3312 = trunc i32 %3311 to i8
  %3313 = and i8 %3312, 1
  %3314 = xor i8 %3313, 1
  store i8 %3314, i8* %21, align 1
  %3315 = xor i64 %3305, 16
  %3316 = xor i64 %3315, %3306
  %3317 = lshr i64 %3316, 4
  %3318 = trunc i64 %3317 to i8
  %3319 = and i8 %3318, 1
  store i8 %3319, i8* %26, align 1
  %3320 = icmp eq i64 %3306, 0
  %3321 = zext i1 %3320 to i8
  store i8 %3321, i8* %29, align 1
  %3322 = lshr i64 %3306, 63
  %3323 = trunc i64 %3322 to i8
  store i8 %3323, i8* %32, align 1
  %3324 = lshr i64 %3305, 63
  %3325 = xor i64 %3322, %3324
  %3326 = add nuw nsw i64 %3325, %3322
  %3327 = icmp eq i64 %3326, 2
  %3328 = zext i1 %3327 to i8
  store i8 %3328, i8* %38, align 1
  %3329 = add i64 %3268, -72
  %3330 = add i64 %3270, 27
  store i64 %3330, i64* %3, align 8
  %3331 = inttoptr i64 %3329 to i64*
  store i64 %3306, i64* %3331, align 8
  %3332 = load i64, i64* %RCX.i1106, align 8
  %3333 = load i64, i64* %3, align 8
  store i64 %3332, i64* %RSI.i144, align 8
  %3334 = load i64, i64* %RBP.i, align 8
  %3335 = add i64 %3334, -72
  %3336 = add i64 %3333, 7
  store i64 %3336, i64* %3, align 8
  %3337 = inttoptr i64 %3335 to i64*
  %3338 = load i64, i64* %3337, align 8
  store i64 %3338, i64* %RDX.i1481, align 8
  %3339 = add i64 %3333, -3412
  %3340 = add i64 %3333, 12
  %3341 = load i64, i64* %6, align 8
  %3342 = add i64 %3341, -8
  %3343 = inttoptr i64 %3342 to i64*
  store i64 %3340, i64* %3343, align 8
  store i64 %3342, i64* %6, align 8
  store i64 %3339, i64* %3, align 8
  %call2_44b0eb = tail call %struct.Memory* @sub_44a390.get_mb_pos(%struct.State* nonnull %0, i64 %3339, %struct.Memory* %3260)
  %3344 = load i64, i64* %RBP.i, align 8
  %3345 = add i64 %3344, -16
  %3346 = load i64, i64* %3, align 8
  %3347 = add i64 %3346, 4
  store i64 %3347, i64* %3, align 8
  %3348 = inttoptr i64 %3345 to i32*
  %3349 = load i32, i32* %3348, align 4
  store i8 0, i8* %14, align 1
  %3350 = and i32 %3349, 255
  %3351 = tail call i32 @llvm.ctpop.i32(i32 %3350)
  %3352 = trunc i32 %3351 to i8
  %3353 = and i8 %3352, 1
  %3354 = xor i8 %3353, 1
  store i8 %3354, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3355 = icmp eq i32 %3349, 0
  %3356 = zext i1 %3355 to i8
  store i8 %3356, i8* %29, align 1
  %3357 = lshr i32 %3349, 31
  %3358 = trunc i32 %3357 to i8
  store i8 %3358, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v146 = select i1 %3355, i64 49, i64 10
  %3359 = add i64 %3346, %.v146
  store i64 %3359, i64* %3, align 8
  br i1 %3355, label %block_.L_44b121, label %block_44b0fa

block_44b0fa:                                     ; preds = %routine_idivl_MINUS0x28__rbp_.exit
  %3360 = add i64 %3344, -24
  %3361 = add i64 %3359, 4
  store i64 %3361, i64* %3, align 8
  %3362 = inttoptr i64 %3360 to i64*
  %3363 = load i64, i64* %3362, align 8
  store i64 %3363, i64* %RAX.i1527, align 8
  %3364 = add i64 %3363, 8
  %3365 = add i64 %3359, 7
  store i64 %3365, i64* %3, align 8
  %3366 = inttoptr i64 %3364 to i32*
  %3367 = load i32, i32* %3366, align 4
  %3368 = zext i32 %3367 to i64
  store i64 %3368, i64* %RCX.i1106, align 8
  %3369 = add i64 %3359, 11
  store i64 %3369, i64* %3, align 8
  %3370 = load i64, i64* %3362, align 8
  store i64 %3370, i64* %RAX.i1527, align 8
  %3371 = add i64 %3370, 16
  %3372 = add i64 %3359, 14
  store i64 %3372, i64* %3, align 8
  %3373 = inttoptr i64 %3371 to i32*
  %3374 = load i32, i32* %3373, align 4
  %3375 = add i32 %3374, %3367
  %3376 = zext i32 %3375 to i64
  store i64 %3376, i64* %RCX.i1106, align 8
  %3377 = icmp ult i32 %3375, %3367
  %3378 = icmp ult i32 %3375, %3374
  %3379 = or i1 %3377, %3378
  %3380 = zext i1 %3379 to i8
  store i8 %3380, i8* %14, align 1
  %3381 = and i32 %3375, 255
  %3382 = tail call i32 @llvm.ctpop.i32(i32 %3381)
  %3383 = trunc i32 %3382 to i8
  %3384 = and i8 %3383, 1
  %3385 = xor i8 %3384, 1
  store i8 %3385, i8* %21, align 1
  %3386 = xor i32 %3374, %3367
  %3387 = xor i32 %3386, %3375
  %3388 = lshr i32 %3387, 4
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  store i8 %3390, i8* %26, align 1
  %3391 = icmp eq i32 %3375, 0
  %3392 = zext i1 %3391 to i8
  store i8 %3392, i8* %29, align 1
  %3393 = lshr i32 %3375, 31
  %3394 = trunc i32 %3393 to i8
  store i8 %3394, i8* %32, align 1
  %3395 = lshr i32 %3367, 31
  %3396 = lshr i32 %3374, 31
  %3397 = xor i32 %3393, %3395
  %3398 = xor i32 %3393, %3396
  %3399 = add nuw nsw i32 %3397, %3398
  %3400 = icmp eq i32 %3399, 2
  %3401 = zext i1 %3400 to i8
  store i8 %3401, i8* %38, align 1
  %3402 = add i64 %3359, 17
  store i64 %3402, i64* %3, align 8
  store i32 %3375, i32* %3373, align 4
  %3403 = load i64, i64* %RBP.i, align 8
  %3404 = add i64 %3403, -24
  %3405 = load i64, i64* %3, align 8
  %3406 = add i64 %3405, 4
  store i64 %3406, i64* %3, align 8
  %3407 = inttoptr i64 %3404 to i64*
  %3408 = load i64, i64* %3407, align 8
  store i64 %3408, i64* %RAX.i1527, align 8
  %3409 = add i64 %3408, 12
  %3410 = add i64 %3405, 7
  store i64 %3410, i64* %3, align 8
  %3411 = inttoptr i64 %3409 to i32*
  %3412 = load i32, i32* %3411, align 4
  %3413 = zext i32 %3412 to i64
  store i64 %3413, i64* %RCX.i1106, align 8
  %3414 = add i64 %3405, 11
  store i64 %3414, i64* %3, align 8
  %3415 = load i64, i64* %3407, align 8
  store i64 %3415, i64* %RAX.i1527, align 8
  %3416 = add i64 %3415, 20
  %3417 = add i64 %3405, 14
  store i64 %3417, i64* %3, align 8
  %3418 = inttoptr i64 %3416 to i32*
  %3419 = load i32, i32* %3418, align 4
  %3420 = add i32 %3419, %3412
  %3421 = zext i32 %3420 to i64
  store i64 %3421, i64* %RCX.i1106, align 8
  %3422 = icmp ult i32 %3420, %3412
  %3423 = icmp ult i32 %3420, %3419
  %3424 = or i1 %3422, %3423
  %3425 = zext i1 %3424 to i8
  store i8 %3425, i8* %14, align 1
  %3426 = and i32 %3420, 255
  %3427 = tail call i32 @llvm.ctpop.i32(i32 %3426)
  %3428 = trunc i32 %3427 to i8
  %3429 = and i8 %3428, 1
  %3430 = xor i8 %3429, 1
  store i8 %3430, i8* %21, align 1
  %3431 = xor i32 %3419, %3412
  %3432 = xor i32 %3431, %3420
  %3433 = lshr i32 %3432, 4
  %3434 = trunc i32 %3433 to i8
  %3435 = and i8 %3434, 1
  store i8 %3435, i8* %26, align 1
  %3436 = icmp eq i32 %3420, 0
  %3437 = zext i1 %3436 to i8
  store i8 %3437, i8* %29, align 1
  %3438 = lshr i32 %3420, 31
  %3439 = trunc i32 %3438 to i8
  store i8 %3439, i8* %32, align 1
  %3440 = lshr i32 %3412, 31
  %3441 = lshr i32 %3419, 31
  %3442 = xor i32 %3438, %3440
  %3443 = xor i32 %3438, %3441
  %3444 = add nuw nsw i32 %3442, %3443
  %3445 = icmp eq i32 %3444, 2
  %3446 = zext i1 %3445 to i8
  store i8 %3446, i8* %38, align 1
  %3447 = add i64 %3405, 17
  store i64 %3447, i64* %3, align 8
  store i32 %3420, i32* %3418, align 4
  %3448 = load i64, i64* %3, align 8
  %3449 = add i64 %3448, 130
  store i64 %3449, i64* %3, align 8
  br label %block_.L_44b1a3.sink.split

block_.L_44b121:                                  ; preds = %routine_idivl_MINUS0x28__rbp_.exit
  store i64 16, i64* %RAX.i1527, align 8
  %3450 = add i64 %3344, -24
  %3451 = add i64 %3359, 9
  store i64 %3451, i64* %3, align 8
  %3452 = inttoptr i64 %3450 to i64*
  %3453 = load i64, i64* %3452, align 8
  store i64 %3453, i64* %RCX.i1106, align 8
  %3454 = add i64 %3453, 16
  %3455 = add i64 %3359, 12
  store i64 %3455, i64* %3, align 8
  %3456 = inttoptr i64 %3454 to i32*
  %3457 = load i32, i32* %3456, align 4
  %3458 = zext i32 %3457 to i64
  store i64 %3458, i64* %RDX.i1481, align 8
  %3459 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3459, i64* %RCX.i1106, align 8
  %3460 = add i64 %3344, -76
  %3461 = add i64 %3359, 23
  store i64 %3461, i64* %3, align 8
  %3462 = inttoptr i64 %3460 to i32*
  store i32 16, i32* %3462, align 4
  %3463 = load i64, i64* %RBP.i, align 8
  %3464 = add i64 %3463, -80
  %3465 = load i32, i32* %EDX.i166, align 4
  %3466 = load i64, i64* %3, align 8
  %3467 = add i64 %3466, 3
  store i64 %3467, i64* %3, align 8
  %3468 = inttoptr i64 %3464 to i32*
  store i32 %3465, i32* %3468, align 4
  %3469 = load i64, i64* %3, align 8
  %3470 = load i32, i32* %EAX.i1463, align 8
  %3471 = sext i32 %3470 to i64
  %3472 = lshr i64 %3471, 32
  store i64 %3472, i64* %3171, align 8
  %3473 = load i64, i64* %RCX.i1106, align 8
  %3474 = add i64 %3473, 72708
  %3475 = add i64 %3469, 7
  store i64 %3475, i64* %3, align 8
  %3476 = zext i32 %3470 to i64
  %3477 = inttoptr i64 %3474 to i32*
  %3478 = load i32, i32* %3477, align 4
  %3479 = sext i32 %3478 to i64
  %3480 = shl nuw i64 %3472, 32
  %3481 = or i64 %3480, %3476
  %3482 = sdiv i64 %3481, %3479
  %3483 = shl i64 %3482, 32
  %3484 = ashr exact i64 %3483, 32
  %3485 = icmp eq i64 %3482, %3484
  br i1 %3485, label %3488, label %3486

; <label>:3486:                                   ; preds = %block_.L_44b121
  %3487 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3475, %struct.Memory* %call2_44b0eb)
  %.pre119 = load i64, i64* %3, align 8
  %.pre120 = load i32, i32* %EAX.i1463, align 4
  br label %routine_idivl_0x11c04__rcx_.exit

; <label>:3488:                                   ; preds = %block_.L_44b121
  %3489 = srem i64 %3481, %3479
  %3490 = and i64 %3482, 4294967295
  store i64 %3490, i64* %RAX.i1527, align 8
  %3491 = and i64 %3489, 4294967295
  store i64 %3491, i64* %RDX.i1481, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3492 = trunc i64 %3482 to i32
  br label %routine_idivl_0x11c04__rcx_.exit

routine_idivl_0x11c04__rcx_.exit:                 ; preds = %3488, %3486
  %3493 = phi i32 [ %.pre120, %3486 ], [ %3492, %3488 ]
  %3494 = phi i64 [ %.pre119, %3486 ], [ %3475, %3488 ]
  %3495 = phi %struct.Memory* [ %3487, %3486 ], [ %call2_44b0eb, %3488 ]
  %3496 = load i64, i64* %RBP.i, align 8
  %3497 = add i64 %3496, -80
  %3498 = add i64 %3494, 3
  store i64 %3498, i64* %3, align 8
  %3499 = inttoptr i64 %3497 to i32*
  %3500 = load i32, i32* %3499, align 4
  %3501 = zext i32 %3500 to i64
  store i64 %3501, i64* %RSI.i144, align 8
  %3502 = add i64 %3496, -84
  %3503 = add i64 %3494, 6
  store i64 %3503, i64* %3, align 8
  %3504 = inttoptr i64 %3502 to i32*
  store i32 %3493, i32* %3504, align 4
  %3505 = load i32, i32* %ESI.i81, align 4
  %3506 = zext i32 %3505 to i64
  %3507 = load i64, i64* %3, align 8
  store i64 %3506, i64* %RAX.i1527, align 8
  %3508 = sext i32 %3505 to i64
  %3509 = lshr i64 %3508, 32
  store i64 %3509, i64* %3171, align 8
  %3510 = load i64, i64* %RBP.i, align 8
  %3511 = add i64 %3510, -84
  %3512 = add i64 %3507, 6
  store i64 %3512, i64* %3, align 8
  %3513 = inttoptr i64 %3511 to i32*
  %3514 = load i32, i32* %3513, align 4
  %3515 = zext i32 %3514 to i64
  store i64 %3515, i64* %RDI.i153, align 8
  %3516 = add i64 %3507, 8
  store i64 %3516, i64* %3, align 8
  %3517 = sext i32 %3514 to i64
  %3518 = shl nuw i64 %3509, 32
  %3519 = or i64 %3518, %3506
  %3520 = sdiv i64 %3519, %3517
  %3521 = shl i64 %3520, 32
  %3522 = ashr exact i64 %3521, 32
  %3523 = icmp eq i64 %3520, %3522
  br i1 %3523, label %3526, label %3524

; <label>:3524:                                   ; preds = %routine_idivl_0x11c04__rcx_.exit
  %3525 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3516, %struct.Memory* %3495)
  %.pre121 = load i64, i64* %RBP.i, align 8
  %.pre122 = load i64, i64* %3, align 8
  %.pre123 = load i64, i64* %RAX.i1527, align 8
  br label %routine_idivl__edi.exit

; <label>:3526:                                   ; preds = %routine_idivl_0x11c04__rcx_.exit
  %3527 = srem i64 %3519, %3517
  %3528 = and i64 %3520, 4294967295
  store i64 %3528, i64* %RAX.i1527, align 8
  %3529 = and i64 %3527, 4294967295
  store i64 %3529, i64* %RDX.i1481, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %3526, %3524
  %3530 = phi i64 [ %.pre123, %3524 ], [ %3528, %3526 ]
  %3531 = phi i64 [ %.pre122, %3524 ], [ %3516, %3526 ]
  %3532 = phi i64 [ %.pre121, %3524 ], [ %3510, %3526 ]
  %3533 = phi %struct.Memory* [ %3525, %3524 ], [ %3495, %3526 ]
  %3534 = add i64 %3532, -24
  %3535 = add i64 %3531, 4
  store i64 %3535, i64* %3, align 8
  %3536 = inttoptr i64 %3534 to i64*
  %3537 = load i64, i64* %3536, align 8
  store i64 %3537, i64* %RCX.i1106, align 8
  %3538 = add i64 %3537, 8
  %3539 = add i64 %3531, 7
  store i64 %3539, i64* %3, align 8
  %3540 = trunc i64 %3530 to i32
  %3541 = inttoptr i64 %3538 to i32*
  %3542 = load i32, i32* %3541, align 4
  %3543 = add i32 %3542, %3540
  %3544 = zext i32 %3543 to i64
  store i64 %3544, i64* %RAX.i1527, align 8
  %3545 = icmp ult i32 %3543, %3540
  %3546 = icmp ult i32 %3543, %3542
  %3547 = or i1 %3545, %3546
  %3548 = zext i1 %3547 to i8
  store i8 %3548, i8* %14, align 1
  %3549 = and i32 %3543, 255
  %3550 = tail call i32 @llvm.ctpop.i32(i32 %3549)
  %3551 = trunc i32 %3550 to i8
  %3552 = and i8 %3551, 1
  %3553 = xor i8 %3552, 1
  store i8 %3553, i8* %21, align 1
  %3554 = xor i32 %3542, %3540
  %3555 = xor i32 %3554, %3543
  %3556 = lshr i32 %3555, 4
  %3557 = trunc i32 %3556 to i8
  %3558 = and i8 %3557, 1
  store i8 %3558, i8* %26, align 1
  %3559 = icmp eq i32 %3543, 0
  %3560 = zext i1 %3559 to i8
  store i8 %3560, i8* %29, align 1
  %3561 = lshr i32 %3543, 31
  %3562 = trunc i32 %3561 to i8
  store i8 %3562, i8* %32, align 1
  %3563 = lshr i32 %3540, 31
  %3564 = lshr i32 %3542, 31
  %3565 = xor i32 %3561, %3563
  %3566 = xor i32 %3561, %3564
  %3567 = add nuw nsw i32 %3565, %3566
  %3568 = icmp eq i32 %3567, 2
  %3569 = zext i1 %3568 to i8
  store i8 %3569, i8* %38, align 1
  %3570 = add i64 %3531, 11
  store i64 %3570, i64* %3, align 8
  %3571 = load i64, i64* %3536, align 8
  store i64 %3571, i64* %RCX.i1106, align 8
  %3572 = add i64 %3571, 16
  %3573 = add i64 %3531, 14
  store i64 %3573, i64* %3, align 8
  %3574 = inttoptr i64 %3572 to i32*
  store i32 %3543, i32* %3574, align 4
  %3575 = load i64, i64* %RBP.i, align 8
  %3576 = add i64 %3575, -24
  %3577 = load i64, i64* %3, align 8
  %3578 = add i64 %3577, 4
  store i64 %3578, i64* %3, align 8
  %3579 = inttoptr i64 %3576 to i64*
  %3580 = load i64, i64* %3579, align 8
  store i64 %3580, i64* %RCX.i1106, align 8
  %3581 = add i64 %3580, 20
  %3582 = add i64 %3577, 7
  store i64 %3582, i64* %3, align 8
  %3583 = inttoptr i64 %3581 to i32*
  %3584 = load i32, i32* %3583, align 4
  %3585 = zext i32 %3584 to i64
  store i64 %3585, i64* %RAX.i1527, align 8
  %3586 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3586, i64* %RCX.i1106, align 8
  %R8D.i42 = bitcast %union.anon* %65 to i32*
  %3587 = add i64 %3575, -76
  %3588 = add i64 %3577, 19
  store i64 %3588, i64* %3, align 8
  %3589 = inttoptr i64 %3587 to i32*
  %3590 = load i32, i32* %3589, align 4
  %3591 = zext i32 %3590 to i64
  store i64 %3591, i64* %R8.i, align 8
  %3592 = add i64 %3575, -88
  %3593 = add i64 %3577, 22
  store i64 %3593, i64* %3, align 8
  %3594 = inttoptr i64 %3592 to i32*
  store i32 %3584, i32* %3594, align 4
  %3595 = load i32, i32* %R8D.i42, align 4
  %3596 = zext i32 %3595 to i64
  %3597 = load i64, i64* %3, align 8
  store i64 %3596, i64* %RAX.i1527, align 8
  %3598 = sext i32 %3595 to i64
  %3599 = lshr i64 %3598, 32
  store i64 %3599, i64* %3171, align 8
  %3600 = load i64, i64* %RCX.i1106, align 8
  %3601 = add i64 %3600, 72712
  %3602 = add i64 %3597, 10
  store i64 %3602, i64* %3, align 8
  %3603 = inttoptr i64 %3601 to i32*
  %3604 = load i32, i32* %3603, align 4
  %3605 = sext i32 %3604 to i64
  %3606 = shl nuw i64 %3599, 32
  %3607 = or i64 %3606, %3596
  %3608 = sdiv i64 %3607, %3605
  %3609 = shl i64 %3608, 32
  %3610 = ashr exact i64 %3609, 32
  %3611 = icmp eq i64 %3608, %3610
  br i1 %3611, label %3614, label %3612

; <label>:3612:                                   ; preds = %routine_idivl__edi.exit
  %3613 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3602, %struct.Memory* %3533)
  %.pre124 = load i64, i64* %3, align 8
  %.pre125 = load i32, i32* %EAX.i1463, align 4
  br label %routine_idivl_0x11c08__rcx_.exit

; <label>:3614:                                   ; preds = %routine_idivl__edi.exit
  %3615 = srem i64 %3607, %3605
  %3616 = and i64 %3608, 4294967295
  store i64 %3616, i64* %RAX.i1527, align 8
  %3617 = and i64 %3615, 4294967295
  store i64 %3617, i64* %RDX.i1481, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3618 = trunc i64 %3608 to i32
  br label %routine_idivl_0x11c08__rcx_.exit

routine_idivl_0x11c08__rcx_.exit:                 ; preds = %3614, %3612
  %3619 = phi i32 [ %.pre125, %3612 ], [ %3618, %3614 ]
  %3620 = phi i64 [ %.pre124, %3612 ], [ %3602, %3614 ]
  %3621 = phi %struct.Memory* [ %3613, %3612 ], [ %3533, %3614 ]
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i29 = bitcast %union.anon* %3622 to i32*
  %3623 = getelementptr inbounds %union.anon, %union.anon* %3622, i64 0, i32 0
  %3624 = load i64, i64* %RBP.i, align 8
  %3625 = add i64 %3624, -88
  %3626 = add i64 %3620, 4
  store i64 %3626, i64* %3, align 8
  %3627 = inttoptr i64 %3625 to i32*
  %3628 = load i32, i32* %3627, align 4
  %3629 = zext i32 %3628 to i64
  store i64 %3629, i64* %3623, align 8
  %3630 = add i64 %3624, -92
  %3631 = add i64 %3620, 7
  store i64 %3631, i64* %3, align 8
  %3632 = inttoptr i64 %3630 to i32*
  store i32 %3619, i32* %3632, align 4
  %3633 = load i32, i32* %R9D.i29, align 4
  %3634 = zext i32 %3633 to i64
  %3635 = load i64, i64* %3, align 8
  store i64 %3634, i64* %RAX.i1527, align 8
  %3636 = sext i32 %3633 to i64
  %3637 = lshr i64 %3636, 32
  store i64 %3637, i64* %3171, align 8
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3639 = load i64, i64* %RBP.i, align 8
  %3640 = add i64 %3639, -92
  %3641 = add i64 %3635, 8
  store i64 %3641, i64* %3, align 8
  %3642 = inttoptr i64 %3640 to i32*
  %3643 = load i32, i32* %3642, align 4
  %3644 = zext i32 %3643 to i64
  store i64 %3644, i64* %3638, align 8
  %3645 = add i64 %3635, 11
  store i64 %3645, i64* %3, align 8
  %3646 = sext i32 %3643 to i64
  %3647 = shl nuw i64 %3637, 32
  %3648 = or i64 %3647, %3634
  %3649 = sdiv i64 %3648, %3646
  %3650 = shl i64 %3649, 32
  %3651 = ashr exact i64 %3650, 32
  %3652 = icmp eq i64 %3649, %3651
  br i1 %3652, label %3655, label %3653

; <label>:3653:                                   ; preds = %routine_idivl_0x11c08__rcx_.exit
  %3654 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3645, %struct.Memory* %3621)
  %.pre126 = load i64, i64* %RBP.i, align 8
  %.pre127 = load i64, i64* %3, align 8
  %.pre128 = load i64, i64* %RAX.i1527, align 8
  br label %routine_idivl__r10d.exit

; <label>:3655:                                   ; preds = %routine_idivl_0x11c08__rcx_.exit
  %3656 = srem i64 %3648, %3646
  %3657 = and i64 %3649, 4294967295
  store i64 %3657, i64* %RAX.i1527, align 8
  %3658 = and i64 %3656, 4294967295
  store i64 %3658, i64* %RDX.i1481, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__r10d.exit

routine_idivl__r10d.exit:                         ; preds = %3655, %3653
  %3659 = phi i64 [ %.pre128, %3653 ], [ %3657, %3655 ]
  %3660 = phi i64 [ %.pre127, %3653 ], [ %3645, %3655 ]
  %3661 = phi i64 [ %.pre126, %3653 ], [ %3639, %3655 ]
  %3662 = phi %struct.Memory* [ %3654, %3653 ], [ %3621, %3655 ]
  %3663 = add i64 %3661, -24
  %3664 = add i64 %3660, 4
  store i64 %3664, i64* %3, align 8
  %3665 = inttoptr i64 %3663 to i64*
  %3666 = load i64, i64* %3665, align 8
  store i64 %3666, i64* %RCX.i1106, align 8
  %3667 = add i64 %3666, 12
  %3668 = add i64 %3660, 7
  store i64 %3668, i64* %3, align 8
  %3669 = trunc i64 %3659 to i32
  %3670 = inttoptr i64 %3667 to i32*
  %3671 = load i32, i32* %3670, align 4
  %3672 = add i32 %3671, %3669
  %3673 = zext i32 %3672 to i64
  store i64 %3673, i64* %RAX.i1527, align 8
  %3674 = icmp ult i32 %3672, %3669
  %3675 = icmp ult i32 %3672, %3671
  %3676 = or i1 %3674, %3675
  %3677 = zext i1 %3676 to i8
  store i8 %3677, i8* %14, align 1
  %3678 = and i32 %3672, 255
  %3679 = tail call i32 @llvm.ctpop.i32(i32 %3678)
  %3680 = trunc i32 %3679 to i8
  %3681 = and i8 %3680, 1
  %3682 = xor i8 %3681, 1
  store i8 %3682, i8* %21, align 1
  %3683 = xor i32 %3671, %3669
  %3684 = xor i32 %3683, %3672
  %3685 = lshr i32 %3684, 4
  %3686 = trunc i32 %3685 to i8
  %3687 = and i8 %3686, 1
  store i8 %3687, i8* %26, align 1
  %3688 = icmp eq i32 %3672, 0
  %3689 = zext i1 %3688 to i8
  store i8 %3689, i8* %29, align 1
  %3690 = lshr i32 %3672, 31
  %3691 = trunc i32 %3690 to i8
  store i8 %3691, i8* %32, align 1
  %3692 = lshr i32 %3669, 31
  %3693 = lshr i32 %3671, 31
  %3694 = xor i32 %3690, %3692
  %3695 = xor i32 %3690, %3693
  %3696 = add nuw nsw i32 %3694, %3695
  %3697 = icmp eq i32 %3696, 2
  %3698 = zext i1 %3697 to i8
  store i8 %3698, i8* %38, align 1
  %3699 = add i64 %3660, 11
  store i64 %3699, i64* %3, align 8
  %3700 = load i64, i64* %3665, align 8
  store i64 %3700, i64* %RCX.i1106, align 8
  %3701 = add i64 %3700, 20
  %3702 = add i64 %3660, 14
  store i64 %3702, i64* %3, align 8
  %3703 = inttoptr i64 %3701 to i32*
  store i32 %3672, i32* %3703, align 4
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_44b1a3.sink.split

block_.L_44b1a3.sink.split:                       ; preds = %block_.L_44a760, %block_44b0fa, %routine_idivl__r10d.exit, %block_44a79b
  %3704 = phi i64 [ %298, %block_44a79b ], [ %.pre129, %routine_idivl__r10d.exit ], [ %3449, %block_44b0fa ], [ %214, %block_.L_44a760 ]
  %.sink81 = phi i64 [ 2556, %block_44a79b ], [ 5, %routine_idivl__r10d.exit ], [ 5, %block_44b0fa ], [ 2600, %block_.L_44a760 ]
  %MEMORY.49.ph = phi %struct.Memory* [ %2, %block_44a79b ], [ %3662, %routine_idivl__r10d.exit ], [ %call2_44b0eb, %block_44b0fa ], [ %2, %block_.L_44a760 ]
  %3705 = add i64 %3704, %.sink81
  store i64 %3705, i64* %3, align 8
  br label %block_.L_44b1a3

block_.L_44b1a3:                                  ; preds = %block_.L_44b1a3.sink.split, %block_44b090
  %3706 = phi i64 [ %3133, %block_44b090 ], [ %3705, %block_.L_44b1a3.sink.split ]
  %MEMORY.49 = phi %struct.Memory* [ %MEMORY.46, %block_44b090 ], [ %MEMORY.49.ph, %block_.L_44b1a3.sink.split ]
  %3707 = load i64, i64* %6, align 8
  %3708 = add i64 %3707, 96
  store i64 %3708, i64* %6, align 8
  %3709 = icmp ugt i64 %3707, -97
  %3710 = zext i1 %3709 to i8
  store i8 %3710, i8* %14, align 1
  %3711 = trunc i64 %3708 to i32
  %3712 = and i32 %3711, 255
  %3713 = tail call i32 @llvm.ctpop.i32(i32 %3712)
  %3714 = trunc i32 %3713 to i8
  %3715 = and i8 %3714, 1
  %3716 = xor i8 %3715, 1
  store i8 %3716, i8* %21, align 1
  %3717 = xor i64 %3708, %3707
  %3718 = lshr i64 %3717, 4
  %3719 = trunc i64 %3718 to i8
  %3720 = and i8 %3719, 1
  store i8 %3720, i8* %26, align 1
  %3721 = icmp eq i64 %3708, 0
  %3722 = zext i1 %3721 to i8
  store i8 %3722, i8* %29, align 1
  %3723 = lshr i64 %3708, 63
  %3724 = trunc i64 %3723 to i8
  store i8 %3724, i8* %32, align 1
  %3725 = lshr i64 %3707, 63
  %3726 = xor i64 %3723, %3725
  %3727 = add nuw nsw i64 %3726, %3723
  %3728 = icmp eq i64 %3727, 2
  %3729 = zext i1 %3728 to i8
  store i8 %3729, i8* %38, align 1
  %3730 = add i64 %3706, 5
  store i64 %3730, i64* %3, align 8
  %3731 = add i64 %3707, 104
  %3732 = inttoptr i64 %3708 to i64*
  %3733 = load i64, i64* %3732, align 8
  store i64 %3733, i64* %RBP.i, align 8
  store i64 %3731, i64* %6, align 8
  %3734 = add i64 %3706, 6
  store i64 %3734, i64* %3, align 8
  %3735 = inttoptr i64 %3731 to i64*
  %3736 = load i64, i64* %3735, align 8
  store i64 %3736, i64* %3, align 8
  %3737 = add i64 %3707, 112
  store i64 %3737, i64* %6, align 8
  ret %struct.Memory* %MEMORY.49
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
define %struct.Memory* @routine_movq__r8__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3758__r8____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x278___rax___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_addq__rax___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_44a73e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x10__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 16, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x10__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 16, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44a760(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_0x11c04__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72708
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
define %struct.Memory* @routine_movl_0x11c08__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72712
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
define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jle_.L_44a780(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44b1a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jle_.L_44a7ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jl_.L_44a7ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
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
define %struct.Memory* @routine_jge_.L_44a7ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44acee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44a976(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_44a8a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_44a80f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x224__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 548
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
define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x234__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 564
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
define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44a8a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x218__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 536
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
define %struct.Memory* @routine_movl_0x228__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 552
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
define %struct.Memory* @routine_cmpl__0x0__0x228__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 552
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
define %struct.Memory* @routine_je_.L_44a89b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x218__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 536
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44a87d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44a896(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_44a89b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44a971(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44a942(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x234__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 564
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
define %struct.Memory* @routine_je_.L_44a93d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x224__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 548
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44a932(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44a938(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44a93d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44a96c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ace9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_44ace4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44ace4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44ab3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44aa69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44aa64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44aa1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44aa5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_jne_.L_44aa44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44aa5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44aa64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ab39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44ab34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44aae4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44ab2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_44ab11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_44ab2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ab34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44acdf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44ac0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44ac05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44abfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
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
define %struct.Memory* @routine_jge_.L_44abdc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44abf5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jmpq_.L_44ac00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ac05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44acda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44acd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44acbd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jge_.L_44ac9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44acb8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44acd0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44acd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ace4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b083(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_44af40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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
define %struct.Memory* @routine_jge_.L_44af40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44aeb6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44ade5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44adc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x21c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 540
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
define %struct.Memory* @routine_cmpl__0x0__0x22c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 556
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
define %struct.Memory* @routine_je_.L_44ada8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x11bbc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72636
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
define %struct.Memory* @routine_jne_.L_44ad96(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x21c__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 540
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44ada3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44ada8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x22c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 556
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
define %struct.Memory* @routine_jmpq_.L_44ade0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 1, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44aeb1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44ae82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44ae7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44ae72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44ae78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ae7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44aeac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44af3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44af01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0x11bbc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72636
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movl__0x1____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 1, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44af36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_44af31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44af31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44b07e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_44b079(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44afa8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44af99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x220__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 544
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
define %struct.Memory* @routine_movl_0x230__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 560
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
define %struct.Memory* @routine_jmpq_.L_44afa3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b074(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44b045(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x230__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 560
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
define %struct.Memory* @routine_je_.L_44b040(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x220__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44b035(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44b03b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b040(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b06f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b079(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44b0a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11bbc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72636
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
define %struct.Memory* @routine_je_.L_44b1a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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

define %struct.Memory* @routine_idivl_MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl__edx__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_addl_MINUS0x28__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_idivl_MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__edx__0xc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x10___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -17
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x14___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 20
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -21
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
define %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.get_mb_pos(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44b121(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_addl_0x10__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
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
define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_addl_0x14__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 20
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
define %struct.Memory* @routine_movl__ecx__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 20
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b19e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x8__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
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
define %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
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
define %struct.Memory* @routine_movl__r9d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R10D, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0xc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 12
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
define %struct.Memory* @routine_movl__eax__0x14__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
