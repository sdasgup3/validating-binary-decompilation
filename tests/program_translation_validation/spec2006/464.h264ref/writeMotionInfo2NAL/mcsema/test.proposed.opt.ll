; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4438d0.ZeroRef(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4482f0.writeReferenceFrame(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4485e0.writeMotionVector8x8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @writeMotionInfo2NAL(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RAX.i528 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %40, i64* %RAX.i528, align 8
  %41 = add i64 %40, 14168
  %42 = add i64 %10, 22
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %41 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %RAX.i528, align 8
  %RCX.i871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 %40, i64* %RCX.i871, align 8
  %45 = add i64 %40, 12
  %46 = add i64 %10, 34
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %45 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %49, 632
  store i64 %50, i64* %RCX.i871, align 8
  %51 = lshr i64 %50, 63
  %52 = add i64 %50, %44
  %53 = icmp ult i64 %52, %44
  %54 = icmp ult i64 %52, %50
  %55 = or i1 %53, %54
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %14, align 1
  %57 = trunc i64 %52 to i32
  %58 = and i32 %57, 255
  %59 = tail call i32 @llvm.ctpop.i32(i32 %58)
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %62 = xor i8 %61, 1
  store i8 %62, i8* %21, align 1
  %63 = xor i64 %50, %44
  %64 = xor i64 %63, %52
  %65 = lshr i64 %64, 4
  %66 = trunc i64 %65 to i8
  %67 = and i8 %66, 1
  store i8 %67, i8* %26, align 1
  %68 = icmp eq i64 %52, 0
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %29, align 1
  %70 = lshr i64 %52, 63
  %71 = trunc i64 %70 to i8
  store i8 %71, i8* %32, align 1
  %72 = lshr i64 %44, 63
  %73 = xor i64 %70, %72
  %74 = xor i64 %70, %51
  %75 = add nuw nsw i64 %73, %74
  %76 = icmp eq i64 %75, 2
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %38, align 1
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -24
  %80 = add i64 %10, 48
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to i64*
  store i64 %52, i64* %81, align 8
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -28
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 7
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %83 to i32*
  store i32 0, i32* %86, align 4
  %87 = load i64, i64* %3, align 8
  %88 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %88, i64* %RAX.i528, align 8
  %89 = add i64 %88, 24
  %90 = add i64 %87, 12
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 1
  %94 = zext i1 %93 to i8
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL.i853 = bitcast %union.anon* %95 to i8*
  store i8 %94, i8* %DL.i853, align 1
  %RSI.i849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %96 = zext i1 %93 to i64
  store i64 %96, i64* %RSI.i849, align 8
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -32
  %99 = zext i1 %93 to i32
  %100 = add i64 %87, 24
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %98 to i32*
  store i32 %99, i32* %101, align 4
  %102 = load i64, i64* %3, align 8
  %103 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  %104 = add i64 %103, 80
  store i64 %104, i64* %RAX.i528, align 8
  %105 = icmp ugt i64 %103, -81
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %14, align 1
  %107 = trunc i64 %104 to i32
  %108 = and i32 %107, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %21, align 1
  %113 = xor i64 %103, 16
  %114 = xor i64 %113, %104
  %115 = lshr i64 %114, 4
  %116 = trunc i64 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %26, align 1
  %118 = icmp eq i64 %104, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %29, align 1
  %120 = lshr i64 %104, 63
  %121 = trunc i64 %120 to i8
  store i8 %121, i8* %32, align 1
  %122 = lshr i64 %103, 63
  %123 = xor i64 %120, %122
  %124 = add nuw nsw i64 %123, %120
  %125 = icmp eq i64 %124, 2
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %38, align 1
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -24
  %129 = add i64 %102, 16
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i64*
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %RCX.i871, align 8
  %132 = add i64 %131, 72
  %133 = add i64 %102, 20
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %132 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = add i32 %135, -8
  %137 = icmp ult i32 %135, 8
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %14, align 1
  %139 = and i32 %136, 255
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139)
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %21, align 1
  %144 = xor i32 %136, %135
  %145 = lshr i32 %144, 4
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  store i8 %147, i8* %26, align 1
  %148 = icmp eq i32 %136, 0
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %29, align 1
  %150 = lshr i32 %136, 31
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %32, align 1
  %152 = lshr i32 %135, 31
  %153 = xor i32 %150, %152
  %154 = add nuw nsw i32 %153, %152
  %155 = icmp eq i32 %154, 2
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %38, align 1
  %157 = add i64 %127, -48
  %158 = add i64 %102, 24
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to i64*
  store i64 %104, i64* %159, align 8
  %160 = load i64, i64* %3, align 8
  %161 = load i8, i8* %29, align 1
  %162 = icmp eq i8 %161, 0
  %.v137 = select i1 %162, i64 19, i64 6
  %163 = add i64 %160, %.v137
  store i64 %163, i64* %3, align 8
  br i1 %162, label %block_.L_444fbb, label %block_444fae

block_444fae:                                     ; preds = %entry
  store i64 4, i64* %RAX.i528, align 8
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -52
  %166 = add i64 %163, 8
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i32*
  store i32 4, i32* %167, align 4
  %168 = load i64, i64* %3, align 8
  %169 = add i64 %168, 15
  store i64 %169, i64* %3, align 8
  br label %block_.L_444fc5

block_.L_444fbb:                                  ; preds = %entry
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -24
  %172 = add i64 %163, 4
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %RAX.i528, align 8
  %175 = add i64 %174, 72
  %176 = add i64 %163, 7
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RCX.i871, align 8
  %180 = add i64 %170, -52
  %181 = add i64 %163, 10
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i32*
  store i32 %178, i32* %182, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_444fc5

block_.L_444fc5:                                  ; preds = %block_.L_444fbb, %block_444fae
  %183 = phi i64 [ %.pre, %block_.L_444fbb ], [ %169, %block_444fae ]
  %EAX.i812.pre-phi = bitcast %union.anon* %39 to i32*
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -52
  %186 = add i64 %183, 3
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RAX.i528, align 8
  %190 = sext i32 %188 to i64
  store i64 %190, i64* %RCX.i871, align 8
  %RDX.i809 = getelementptr inbounds %union.anon, %union.anon* %95, i64 0, i32 0
  %191 = add i64 %184, -48
  %192 = add i64 %183, 10
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i64*
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %RDX.i809, align 8
  %195 = shl nsw i64 %190, 3
  %196 = add i64 %195, %194
  %197 = add i64 %183, 13
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = ashr i64 %200, 1
  %202 = lshr i64 %201, 1
  %203 = and i64 %202, 4294967295
  store i64 %203, i64* %RAX.i528, align 8
  %204 = add i64 %184, -36
  %205 = trunc i64 %202 to i32
  %206 = add i64 %183, 19
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %204 to i32*
  store i32 %205, i32* %207, align 4
  %208 = load i64, i64* %3, align 8
  %209 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  %210 = add i64 %209, 80
  store i64 %210, i64* %RCX.i871, align 8
  %211 = icmp ugt i64 %209, -81
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %14, align 1
  %213 = trunc i64 %210 to i32
  %214 = and i32 %213, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214)
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %21, align 1
  %219 = xor i64 %209, 16
  %220 = xor i64 %219, %210
  %221 = lshr i64 %220, 4
  %222 = trunc i64 %221 to i8
  %223 = and i8 %222, 1
  store i8 %223, i8* %26, align 1
  %224 = icmp eq i64 %210, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %29, align 1
  %226 = lshr i64 %210, 63
  %227 = trunc i64 %226 to i8
  store i8 %227, i8* %32, align 1
  %228 = lshr i64 %209, 63
  %229 = xor i64 %226, %228
  %230 = add nuw nsw i64 %229, %226
  %231 = icmp eq i64 %230, 2
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %38, align 1
  %233 = load i64, i64* %RBP.i, align 8
  %234 = add i64 %233, -24
  %235 = add i64 %208, 16
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i64*
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %RSI.i849, align 8
  %238 = add i64 %237, 72
  %239 = add i64 %208, 20
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = add i32 %241, -8
  %243 = icmp ult i32 %241, 8
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %14, align 1
  %245 = and i32 %242, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %21, align 1
  %250 = xor i32 %242, %241
  %251 = lshr i32 %250, 4
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  store i8 %253, i8* %26, align 1
  %254 = icmp eq i32 %242, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %29, align 1
  %256 = lshr i32 %242, 31
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %32, align 1
  %258 = lshr i32 %241, 31
  %259 = xor i32 %256, %258
  %260 = add nuw nsw i32 %259, %258
  %261 = icmp eq i32 %260, 2
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %38, align 1
  %263 = add i64 %233, -64
  %264 = add i64 %208, 24
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %263 to i64*
  store i64 %210, i64* %265, align 8
  %266 = load i64, i64* %3, align 8
  %267 = load i8, i8* %29, align 1
  %268 = icmp eq i8 %267, 0
  %.v138 = select i1 %268, i64 19, i64 6
  %269 = add i64 %266, %.v138
  store i64 %269, i64* %3, align 8
  br i1 %268, label %block_.L_445003, label %block_444ff6

block_444ff6:                                     ; preds = %block_.L_444fc5
  store i64 4, i64* %RAX.i528, align 8
  %270 = load i64, i64* %RBP.i, align 8
  %271 = add i64 %270, -68
  %272 = add i64 %269, 8
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i32*
  store i32 4, i32* %273, align 4
  %274 = load i64, i64* %3, align 8
  %275 = add i64 %274, 15
  store i64 %275, i64* %3, align 8
  br label %block_.L_44500d

block_.L_445003:                                  ; preds = %block_.L_444fc5
  %276 = load i64, i64* %RBP.i, align 8
  %277 = add i64 %276, -24
  %278 = add i64 %269, 4
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %RAX.i528, align 8
  %281 = add i64 %280, 72
  %282 = add i64 %269, 7
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RCX.i871, align 8
  %286 = add i64 %276, -68
  %287 = add i64 %269, 10
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i32*
  store i32 %284, i32* %288, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_44500d

block_.L_44500d:                                  ; preds = %block_.L_445003, %block_444ff6
  %289 = phi i64 [ %.pre55, %block_.L_445003 ], [ %275, %block_444ff6 ]
  %290 = load i64, i64* %RBP.i, align 8
  %291 = add i64 %290, -68
  %292 = add i64 %289, 3
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RAX.i528, align 8
  %296 = sext i32 %294 to i64
  store i64 %296, i64* %RCX.i871, align 8
  %297 = add i64 %290, -64
  %298 = add i64 %289, 10
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %RDX.i809, align 8
  %301 = shl nsw i64 %296, 3
  %302 = add i64 %300, 4
  %303 = add i64 %302, %301
  %304 = add i64 %289, 14
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  %308 = ashr i64 %307, 1
  %309 = lshr i64 %308, 1
  %310 = trunc i64 %308 to i8
  %311 = and i8 %310, 1
  %312 = trunc i64 %309 to i32
  %313 = and i64 %309, 4294967295
  store i64 %313, i64* %RAX.i528, align 8
  store i8 %311, i8* %14, align 1
  %314 = and i32 %312, 255
  %315 = tail call i32 @llvm.ctpop.i32(i32 %314)
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  store i8 %318, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %319 = icmp eq i32 %312, 0
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %29, align 1
  %321 = lshr i64 %308, 32
  %322 = trunc i64 %321 to i8
  %323 = and i8 %322, 1
  store i8 %323, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %324 = add i64 %290, -40
  %325 = trunc i64 %309 to i32
  %326 = add i64 %289, 20
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %324 to i32*
  store i32 %325, i32* %327, align 4
  %328 = load i64, i64* %RBP.i, align 8
  %329 = add i64 %328, -24
  %330 = load i64, i64* %3, align 8
  %331 = add i64 %330, 4
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %329 to i64*
  %333 = load i64, i64* %332, align 8
  store i64 %333, i64* %RCX.i871, align 8
  %334 = add i64 %333, 72
  %335 = add i64 %330, 8
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %334 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = add i32 %337, -9
  %339 = icmp ult i32 %337, 9
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %14, align 1
  %341 = and i32 %338, 255
  %342 = tail call i32 @llvm.ctpop.i32(i32 %341)
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = xor i8 %344, 1
  store i8 %345, i8* %21, align 1
  %346 = xor i32 %338, %337
  %347 = lshr i32 %346, 4
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  store i8 %349, i8* %26, align 1
  %350 = icmp eq i32 %338, 0
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %29, align 1
  %352 = lshr i32 %338, 31
  %353 = trunc i32 %352 to i8
  store i8 %353, i8* %32, align 1
  %354 = lshr i32 %337, 31
  %355 = xor i32 %352, %354
  %356 = add nuw nsw i32 %355, %354
  %357 = icmp eq i32 %356, 2
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %38, align 1
  %.v = select i1 %350, i64 675, i64 14
  %359 = add i64 %330, %.v
  store i64 %359, i64* %3, align 8
  br i1 %350, label %block_.L_4452c4, label %block_44502f

block_44502f:                                     ; preds = %block_.L_44500d
  %360 = add i64 %359, 4
  store i64 %360, i64* %3, align 8
  %361 = load i64, i64* %332, align 8
  store i64 %361, i64* %RAX.i528, align 8
  %362 = add i64 %361, 72
  %363 = add i64 %359, 8
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = add i32 %365, -10
  %367 = icmp ult i32 %365, 10
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %14, align 1
  %369 = and i32 %366, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369)
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %21, align 1
  %374 = xor i32 %366, %365
  %375 = lshr i32 %374, 4
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  store i8 %377, i8* %26, align 1
  %378 = icmp eq i32 %366, 0
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %29, align 1
  %380 = lshr i32 %366, 31
  %381 = trunc i32 %380 to i8
  store i8 %381, i8* %32, align 1
  %382 = lshr i32 %365, 31
  %383 = xor i32 %380, %382
  %384 = add nuw nsw i32 %383, %382
  %385 = icmp eq i32 %384, 2
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %38, align 1
  %.v86 = select i1 %378, i64 661, i64 14
  %387 = add i64 %359, %.v86
  store i64 %387, i64* %3, align 8
  br i1 %378, label %block_.L_4452c4, label %block_44503d

block_44503d:                                     ; preds = %block_44502f
  %388 = add i64 %387, 4
  store i64 %388, i64* %3, align 8
  %389 = load i64, i64* %332, align 8
  store i64 %389, i64* %RAX.i528, align 8
  %390 = add i64 %389, 72
  %391 = add i64 %387, 8
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i32*
  %393 = load i32, i32* %392, align 4
  %394 = add i32 %393, -13
  %395 = icmp ult i32 %393, 13
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %14, align 1
  %397 = and i32 %394, 255
  %398 = tail call i32 @llvm.ctpop.i32(i32 %397)
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  store i8 %401, i8* %21, align 1
  %402 = xor i32 %394, %393
  %403 = lshr i32 %402, 4
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  store i8 %405, i8* %26, align 1
  %406 = icmp eq i32 %394, 0
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %29, align 1
  %408 = lshr i32 %394, 31
  %409 = trunc i32 %408 to i8
  store i8 %409, i8* %32, align 1
  %410 = lshr i32 %393, 31
  %411 = xor i32 %408, %410
  %412 = add nuw nsw i32 %411, %410
  %413 = icmp eq i32 %412, 2
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %38, align 1
  %.v87 = select i1 %406, i64 647, i64 14
  %415 = add i64 %387, %.v87
  store i64 %415, i64* %3, align 8
  br i1 %406, label %block_.L_4452c4, label %block_44504b

block_44504b:                                     ; preds = %block_44503d
  %416 = add i64 %415, 4
  store i64 %416, i64* %3, align 8
  %417 = load i64, i64* %332, align 8
  store i64 %417, i64* %RAX.i528, align 8
  %418 = add i64 %417, 72
  %419 = add i64 %415, 8
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  store i8 0, i8* %14, align 1
  %422 = and i32 %421, 255
  %423 = tail call i32 @llvm.ctpop.i32(i32 %422)
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  store i8 %426, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %427 = icmp eq i32 %421, 0
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %29, align 1
  %429 = lshr i32 %421, 31
  %430 = trunc i32 %429 to i8
  store i8 %430, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v88 = select i1 %427, i64 633, i64 14
  %431 = add i64 %415, %.v88
  store i64 %431, i64* %3, align 8
  br i1 %427, label %block_.L_4452c4, label %block_445059

block_445059:                                     ; preds = %block_44504b
  %432 = add i64 %431, 4
  store i64 %432, i64* %3, align 8
  %433 = load i64, i64* %332, align 8
  store i64 %433, i64* %RAX.i528, align 8
  %434 = add i64 %433, 72
  %435 = add i64 %431, 8
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = add i32 %437, -8
  %439 = icmp ult i32 %437, 8
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %14, align 1
  %441 = and i32 %438, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441)
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %21, align 1
  %446 = xor i32 %438, %437
  %447 = lshr i32 %446, 4
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  store i8 %449, i8* %26, align 1
  %450 = icmp eq i32 %438, 0
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %29, align 1
  %452 = lshr i32 %438, 31
  %453 = trunc i32 %452 to i8
  store i8 %453, i8* %32, align 1
  %454 = lshr i32 %437, 31
  %455 = xor i32 %452, %454
  %456 = add nuw nsw i32 %455, %454
  %457 = icmp eq i32 %456, 2
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %38, align 1
  %.v89 = select i1 %450, i64 14, i64 63
  %459 = add i64 %431, %.v89
  store i64 %459, i64* %3, align 8
  %RDI.i721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  br i1 %450, label %block_445067, label %block_.L_445098

block_445067:                                     ; preds = %block_445059
  %460 = add i64 %459, 4
  store i64 %460, i64* %3, align 8
  %461 = load i64, i64* %332, align 8
  store i64 %461, i64* %RDI.i721, align 8
  %462 = add i64 %459, -6039
  %463 = add i64 %459, 9
  %464 = load i64, i64* %6, align 8
  %465 = add i64 %464, -8
  %466 = inttoptr i64 %465 to i64*
  store i64 %463, i64* %466, align 8
  store i64 %465, i64* %6, align 8
  store i64 %462, i64* %3, align 8
  %call2_44506b = tail call %struct.Memory* @sub_4438d0.ZeroRef(%struct.State* nonnull %0, i64 %462, %struct.Memory* %2)
  %467 = load i32, i32* %EAX.i812.pre-phi, align 4
  %468 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %469 = and i32 %467, 255
  %470 = tail call i32 @llvm.ctpop.i32(i32 %469)
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  store i8 %473, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %474 = icmp eq i32 %467, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %29, align 1
  %476 = lshr i32 %467, 31
  %477 = trunc i32 %476 to i8
  store i8 %477, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v119 = select i1 %474, i64 40, i64 9
  %478 = add i64 %468, %.v119
  store i64 %478, i64* %3, align 8
  br i1 %474, label %block_.L_445098, label %block_445079

block_445079:                                     ; preds = %block_445067
  %479 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %479, i64* %RAX.i528, align 8
  %480 = add i64 %479, 2356
  %481 = add i64 %478, 15
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = add i32 %483, -1
  %485 = icmp eq i32 %483, 0
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %14, align 1
  %487 = and i32 %484, 255
  %488 = tail call i32 @llvm.ctpop.i32(i32 %487)
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  store i8 %491, i8* %21, align 1
  %492 = xor i32 %484, %483
  %493 = lshr i32 %492, 4
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  store i8 %495, i8* %26, align 1
  %496 = icmp eq i32 %484, 0
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %29, align 1
  %498 = lshr i32 %484, 31
  %499 = trunc i32 %498 to i8
  store i8 %499, i8* %32, align 1
  %500 = lshr i32 %483, 31
  %501 = xor i32 %498, %500
  %502 = add nuw nsw i32 %501, %500
  %503 = icmp eq i32 %502, 2
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %38, align 1
  %.v120 = select i1 %496, i64 31, i64 21
  %505 = add i64 %478, %.v120
  store i64 %505, i64* %3, align 8
  br i1 %496, label %block_.L_445098, label %block_44508e

block_44508e:                                     ; preds = %block_445079
  %506 = load i64, i64* %RBP.i, align 8
  %507 = add i64 %506, -32
  %508 = add i64 %505, 4
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i32*
  %510 = load i32, i32* %509, align 4
  store i8 0, i8* %14, align 1
  %511 = and i32 %510, 255
  %512 = tail call i32 @llvm.ctpop.i32(i32 %511)
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  store i8 %515, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %516 = icmp eq i32 %510, 0
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %29, align 1
  %518 = lshr i32 %510, 31
  %519 = trunc i32 %518 to i8
  store i8 %519, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v121 = select i1 %516, i64 561, i64 10
  %520 = add i64 %505, %.v121
  store i64 %520, i64* %3, align 8
  br i1 %516, label %block_.L_4452bf, label %block_.L_445098

block_.L_445098:                                  ; preds = %block_445059, %block_44508e, %block_445079, %block_445067
  %521 = phi i64 [ %520, %block_44508e ], [ %505, %block_445079 ], [ %478, %block_445067 ], [ %459, %block_445059 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_44506b, %block_44508e ], [ %call2_44506b, %block_445079 ], [ %call2_44506b, %block_445067 ], [ %2, %block_445059 ]
  %522 = load i64, i64* %RBP.i, align 8
  %523 = add i64 %522, -8
  %524 = add i64 %521, 7
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %523 to i32*
  store i32 0, i32* %525, align 4
  %EDX.i685 = bitcast %union.anon* %95 to i32*
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8.i665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_44509f

block_.L_44509f:                                  ; preds = %block_.L_445197, %block_.L_445098
  %528 = phi i64 [ %.pre56, %block_.L_445098 ], [ %985, %block_.L_445197 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_445098 ], [ %MEMORY.4, %block_.L_445197 ]
  %529 = load i64, i64* %RBP.i, align 8
  %530 = add i64 %529, -8
  %531 = add i64 %528, 4
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i32*
  %533 = load i32, i32* %532, align 4
  %534 = add i32 %533, -4
  %535 = icmp ult i32 %533, 4
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %14, align 1
  %537 = and i32 %534, 255
  %538 = tail call i32 @llvm.ctpop.i32(i32 %537)
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  store i8 %541, i8* %21, align 1
  %542 = xor i32 %534, %533
  %543 = lshr i32 %542, 4
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  store i8 %545, i8* %26, align 1
  %546 = icmp eq i32 %534, 0
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %29, align 1
  %548 = lshr i32 %534, 31
  %549 = trunc i32 %548 to i8
  store i8 %549, i8* %32, align 1
  %550 = lshr i32 %533, 31
  %551 = xor i32 %548, %550
  %552 = add nuw nsw i32 %551, %550
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %38, align 1
  %555 = icmp ne i8 %549, 0
  %556 = xor i1 %555, %553
  %.v90 = select i1 %556, i64 10, i64 267
  %557 = add i64 %528, %.v90
  store i64 %557, i64* %3, align 8
  br i1 %556, label %block_4450a9, label %block_.L_4451aa

block_4450a9:                                     ; preds = %block_.L_44509f
  %558 = add i64 %529, -12
  %559 = add i64 %557, 7
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i32*
  store i32 0, i32* %560, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_4450b0

block_.L_4450b0:                                  ; preds = %block_.L_445184, %block_4450a9
  %561 = phi i64 [ %.pre64, %block_4450a9 ], [ %946, %block_.L_445184 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_4450a9 ], [ %MEMORY.6, %block_.L_445184 ]
  %562 = load i64, i64* %RBP.i, align 8
  %563 = add i64 %562, -12
  %564 = add i64 %561, 4
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %563 to i32*
  %566 = load i32, i32* %565, align 4
  %567 = add i32 %566, -4
  %568 = icmp ult i32 %566, 4
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %14, align 1
  %570 = and i32 %567, 255
  %571 = tail call i32 @llvm.ctpop.i32(i32 %570)
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  store i8 %574, i8* %21, align 1
  %575 = xor i32 %567, %566
  %576 = lshr i32 %575, 4
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  store i8 %578, i8* %26, align 1
  %579 = icmp eq i32 %567, 0
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %29, align 1
  %581 = lshr i32 %567, 31
  %582 = trunc i32 %581 to i8
  store i8 %582, i8* %32, align 1
  %583 = lshr i32 %566, 31
  %584 = xor i32 %581, %583
  %585 = add nuw nsw i32 %584, %583
  %586 = icmp eq i32 %585, 2
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %38, align 1
  %588 = icmp ne i8 %582, 0
  %589 = xor i1 %588, %586
  %.v115 = select i1 %589, i64 10, i64 231
  %590 = add i64 %561, %.v115
  %591 = add i64 %590, 5
  store i64 %591, i64* %3, align 8
  br i1 %589, label %block_4450ba, label %block_.L_445197

block_4450ba:                                     ; preds = %block_.L_4450b0
  store i64 2, i64* %RAX.i528, align 8
  %592 = add i64 %562, -8
  %593 = add i64 %590, 8
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i32*
  %595 = load i32, i32* %594, align 4
  %596 = zext i32 %595 to i64
  store i64 %596, i64* %RCX.i871, align 8
  %597 = add i64 %590, 11
  store i64 %597, i64* %3, align 8
  %598 = load i32, i32* %565, align 4
  %599 = zext i32 %598 to i64
  store i64 %599, i64* %RDX.i809, align 8
  %600 = add i64 %562, -72
  %601 = add i64 %590, 14
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i32*
  store i32 2, i32* %602, align 4
  %603 = load i32, i32* %EDX.i685, align 4
  %604 = zext i32 %603 to i64
  %605 = load i64, i64* %3, align 8
  store i64 %604, i64* %RAX.i528, align 8
  %606 = sext i32 %603 to i64
  %607 = lshr i64 %606, 32
  store i64 %607, i64* %526, align 8
  %608 = load i64, i64* %RBP.i, align 8
  %609 = add i64 %608, -72
  %610 = add i64 %605, 6
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i32*
  %612 = load i32, i32* %611, align 4
  %613 = zext i32 %612 to i64
  store i64 %613, i64* %RSI.i849, align 8
  %614 = add i64 %605, 8
  store i64 %614, i64* %3, align 8
  %615 = sext i32 %612 to i64
  %616 = shl nuw i64 %607, 32
  %617 = or i64 %616, %604
  %618 = sdiv i64 %617, %615
  %619 = shl i64 %618, 32
  %620 = ashr exact i64 %619, 32
  %621 = icmp eq i64 %618, %620
  br i1 %621, label %624, label %622

; <label>:622:                                    ; preds = %block_4450ba
  %623 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %614, %struct.Memory* %MEMORY.4)
  %.pre65 = load i32, i32* %EAX.i812.pre-phi, align 4
  %.pre66 = load i64, i64* %3, align 8
  %.pre67 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit677

; <label>:624:                                    ; preds = %block_4450ba
  %625 = srem i64 %617, %615
  %626 = and i64 %618, 4294967295
  store i64 %626, i64* %RAX.i528, align 8
  %627 = and i64 %625, 4294967295
  store i64 %627, i64* %RDX.i809, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %628 = trunc i64 %618 to i32
  br label %routine_idivl__esi.exit677

routine_idivl__esi.exit677:                       ; preds = %624, %622
  %629 = phi i64 [ %.pre67, %622 ], [ %608, %624 ]
  %630 = phi i64 [ %.pre66, %622 ], [ %614, %624 ]
  %631 = phi i32 [ %.pre65, %622 ], [ %628, %624 ]
  %632 = phi %struct.Memory* [ %623, %622 ], [ %MEMORY.4, %624 ]
  %633 = load i64, i64* %RCX.i871, align 8
  %634 = zext i32 %631 to i64
  %635 = trunc i64 %633 to i32
  %636 = add i32 %631, %635
  %637 = zext i32 %636 to i64
  store i64 %637, i64* %RCX.i871, align 8
  %638 = icmp ult i32 %636, %635
  %639 = icmp ult i32 %636, %631
  %640 = or i1 %638, %639
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %14, align 1
  %642 = and i32 %636, 255
  %643 = tail call i32 @llvm.ctpop.i32(i32 %642)
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  %646 = xor i8 %645, 1
  store i8 %646, i8* %21, align 1
  %647 = xor i64 %634, %633
  %648 = trunc i64 %647 to i32
  %649 = xor i32 %648, %636
  %650 = lshr i32 %649, 4
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, 1
  store i8 %652, i8* %26, align 1
  %653 = icmp eq i32 %636, 0
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %29, align 1
  %655 = lshr i32 %636, 31
  %656 = trunc i32 %655 to i8
  store i8 %656, i8* %32, align 1
  %657 = lshr i32 %635, 31
  %658 = lshr i32 %631, 31
  %659 = xor i32 %655, %657
  %660 = xor i32 %655, %658
  %661 = add nuw nsw i32 %659, %660
  %662 = icmp eq i32 %661, 2
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %38, align 1
  %664 = add i64 %629, -4
  %665 = add i64 %630, 5
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i32*
  store i32 %636, i32* %666, align 4
  %667 = load i64, i64* %RBP.i, align 8
  %668 = add i64 %667, -24
  %669 = load i64, i64* %3, align 8
  %670 = add i64 %669, 4
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %668 to i64*
  %672 = load i64, i64* %671, align 8
  store i64 %672, i64* %RDI.i721, align 8
  %673 = add i64 %667, -4
  %674 = add i64 %669, 8
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i32*
  %676 = load i32, i32* %675, align 4
  %677 = sext i32 %676 to i64
  store i64 %677, i64* %R8.i665, align 8
  %678 = shl nsw i64 %677, 2
  %679 = add i64 %672, 488
  %680 = add i64 %679, %678
  %681 = add i64 %669, 17
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  store i8 0, i8* %14, align 1
  %684 = and i32 %683, 255
  %685 = tail call i32 @llvm.ctpop.i32(i32 %684)
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = xor i8 %687, 1
  store i8 %688, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %689 = icmp eq i32 %683, 0
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %29, align 1
  %691 = lshr i32 %683, 31
  %692 = trunc i32 %691 to i8
  store i8 %692, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v116 = select i1 %689, i64 45, i64 23
  %693 = add i64 %669, %.v116
  store i64 %693, i64* %3, align 8
  br i1 %689, label %block_.L_445102, label %block_4450ec

block_4450ec:                                     ; preds = %routine_idivl__esi.exit677
  %694 = add i64 %693, 4
  store i64 %694, i64* %3, align 8
  %695 = load i64, i64* %671, align 8
  store i64 %695, i64* %RAX.i528, align 8
  %696 = add i64 %693, 8
  store i64 %696, i64* %3, align 8
  %697 = load i32, i32* %675, align 4
  %698 = sext i32 %697 to i64
  store i64 %698, i64* %RCX.i871, align 8
  %699 = shl nsw i64 %698, 2
  %700 = add i64 %695, 488
  %701 = add i64 %700, %699
  %702 = add i64 %693, 16
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i32*
  %704 = load i32, i32* %703, align 4
  %705 = add i32 %704, -2
  %706 = icmp ult i32 %704, 2
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %14, align 1
  %708 = and i32 %705, 255
  %709 = tail call i32 @llvm.ctpop.i32(i32 %708)
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = xor i8 %711, 1
  store i8 %712, i8* %21, align 1
  %713 = xor i32 %705, %704
  %714 = lshr i32 %713, 4
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  store i8 %716, i8* %26, align 1
  %717 = icmp eq i32 %705, 0
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %29, align 1
  %719 = lshr i32 %705, 31
  %720 = trunc i32 %719 to i8
  store i8 %720, i8* %32, align 1
  %721 = lshr i32 %704, 31
  %722 = xor i32 %719, %721
  %723 = add nuw nsw i32 %722, %721
  %724 = icmp eq i32 %723, 2
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %38, align 1
  %.v117 = select i1 %717, i64 22, i64 152
  %726 = add i64 %693, %.v117
  store i64 %726, i64* %3, align 8
  br i1 %717, label %block_.L_445102, label %block_.L_445184

block_.L_445102:                                  ; preds = %block_4450ec, %routine_idivl__esi.exit677
  %727 = phi i64 [ %726, %block_4450ec ], [ %693, %routine_idivl__esi.exit677 ]
  %728 = add i64 %727, 4
  store i64 %728, i64* %3, align 8
  %729 = load i64, i64* %671, align 8
  store i64 %729, i64* %RAX.i528, align 8
  %730 = add i64 %727, 8
  store i64 %730, i64* %3, align 8
  %731 = load i32, i32* %675, align 4
  %732 = sext i32 %731 to i64
  store i64 %732, i64* %RCX.i871, align 8
  %733 = shl nsw i64 %732, 2
  %734 = add i64 %729, 472
  %735 = add i64 %734, %733
  %736 = add i64 %727, 16
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i32*
  %738 = load i32, i32* %737, align 4
  store i8 0, i8* %14, align 1
  %739 = and i32 %738, 255
  %740 = tail call i32 @llvm.ctpop.i32(i32 %739)
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = xor i8 %742, 1
  store i8 %743, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %744 = icmp eq i32 %738, 0
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %29, align 1
  %746 = lshr i32 %738, 31
  %747 = trunc i32 %746 to i8
  store i8 %747, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v118 = select i1 %744, i64 130, i64 22
  %748 = add i64 %727, %.v118
  store i64 %748, i64* %3, align 8
  br i1 %744, label %block_.L_445184, label %block_445118

block_445118:                                     ; preds = %block_.L_445102
  store i64 1, i64* %RCX.i871, align 8
  %749 = add i64 %748, 9
  store i64 %749, i64* %3, align 8
  %750 = load i64, i64* %671, align 8
  store i64 %750, i64* %RAX.i528, align 8
  %751 = add i64 %748, 13
  store i64 %751, i64* %3, align 8
  %752 = load i32, i32* %675, align 4
  %753 = sext i32 %752 to i64
  store i64 %753, i64* %RDX.i809, align 8
  %754 = shl nsw i64 %753, 2
  %755 = add i64 %750, 472
  %756 = add i64 %755, %754
  %757 = add i64 %748, 20
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %RDI.i721, align 8
  %761 = add i64 %667, -12
  %762 = add i64 %748, 23
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i32*
  %764 = load i32, i32* %763, align 4
  %765 = zext i32 %764 to i64
  store i64 %765, i64* %RSI.i849, align 8
  %766 = add i64 %667, -8
  %767 = add i64 %748, 26
  store i64 %767, i64* %3, align 8
  %768 = inttoptr i64 %766 to i32*
  %769 = load i32, i32* %768, align 4
  %770 = zext i32 %769 to i64
  store i64 %770, i64* %RDX.i809, align 8
  %771 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %771, i64* %RAX.i528, align 8
  %772 = add i64 %771, 6480
  %773 = add i64 %748, 41
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i64*
  %775 = load i64, i64* %774, align 8
  store i64 %775, i64* %RAX.i528, align 8
  %776 = add i64 %748, 44
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to i64*
  %778 = load i64, i64* %777, align 8
  store i64 %778, i64* %RAX.i528, align 8
  %779 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %779, i64* %R8.i665, align 8
  %780 = add i64 %779, 144
  %781 = add i64 %748, 59
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to i32*
  %783 = load i32, i32* %782, align 4
  %784 = zext i32 %783 to i64
  store i64 %784, i64* %527, align 8
  %785 = add i64 %748, 63
  store i64 %785, i64* %3, align 8
  %786 = load i32, i32* %763, align 4
  %787 = add i32 %786, %783
  %788 = zext i32 %787 to i64
  store i64 %788, i64* %527, align 8
  %789 = icmp ult i32 %787, %783
  %790 = icmp ult i32 %787, %786
  %791 = or i1 %789, %790
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %14, align 1
  %793 = and i32 %787, 255
  %794 = tail call i32 @llvm.ctpop.i32(i32 %793)
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  %797 = xor i8 %796, 1
  store i8 %797, i8* %21, align 1
  %798 = xor i32 %786, %783
  %799 = xor i32 %798, %787
  %800 = lshr i32 %799, 4
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  store i8 %802, i8* %26, align 1
  %803 = icmp eq i32 %787, 0
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %29, align 1
  %805 = lshr i32 %787, 31
  %806 = trunc i32 %805 to i8
  store i8 %806, i8* %32, align 1
  %807 = lshr i32 %783, 31
  %808 = lshr i32 %786, 31
  %809 = xor i32 %805, %807
  %810 = xor i32 %805, %808
  %811 = add nuw nsw i32 %809, %810
  %812 = icmp eq i32 %811, 2
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %38, align 1
  %814 = sext i32 %787 to i64
  store i64 %814, i64* %R8.i665, align 8
  %815 = shl nsw i64 %814, 3
  %816 = add i64 %778, %815
  %817 = add i64 %748, 70
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i64*
  %819 = load i64, i64* %818, align 8
  store i64 %819, i64* %RAX.i528, align 8
  store i64 %779, i64* %R8.i665, align 8
  %820 = add i64 %779, 148
  %821 = add i64 %748, 85
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = zext i32 %823 to i64
  store i64 %824, i64* %527, align 8
  %825 = load i64, i64* %RBP.i, align 8
  %826 = add i64 %825, -8
  %827 = add i64 %748, 89
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = add i32 %829, %823
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %527, align 8
  %832 = icmp ult i32 %830, %823
  %833 = icmp ult i32 %830, %829
  %834 = or i1 %832, %833
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %14, align 1
  %836 = and i32 %830, 255
  %837 = tail call i32 @llvm.ctpop.i32(i32 %836)
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  %840 = xor i8 %839, 1
  store i8 %840, i8* %21, align 1
  %841 = xor i32 %829, %823
  %842 = xor i32 %841, %830
  %843 = lshr i32 %842, 4
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  store i8 %845, i8* %26, align 1
  %846 = icmp eq i32 %830, 0
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %29, align 1
  %848 = lshr i32 %830, 31
  %849 = trunc i32 %848 to i8
  store i8 %849, i8* %32, align 1
  %850 = lshr i32 %823, 31
  %851 = lshr i32 %829, 31
  %852 = xor i32 %848, %850
  %853 = xor i32 %848, %851
  %854 = add nuw nsw i32 %852, %853
  %855 = icmp eq i32 %854, 2
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %38, align 1
  %857 = sext i32 %830 to i64
  store i64 %857, i64* %R8.i665, align 8
  %858 = shl nsw i64 %857, 1
  %859 = add i64 %819, %858
  %860 = add i64 %748, 97
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i16*
  %862 = load i16, i16* %861, align 2
  %863 = sext i16 %862 to i64
  %864 = and i64 %863, 4294967295
  store i64 %864, i64* %R8.i665, align 8
  %865 = add i64 %748, 12760
  %866 = add i64 %748, 102
  %867 = load i64, i64* %6, align 8
  %868 = add i64 %867, -8
  %869 = inttoptr i64 %868 to i64*
  store i64 %866, i64* %869, align 8
  store i64 %868, i64* %6, align 8
  store i64 %865, i64* %3, align 8
  %call2_445179 = tail call %struct.Memory* @sub_4482f0.writeReferenceFrame(%struct.State* nonnull %0, i64 %865, %struct.Memory* %632)
  %870 = load i64, i64* %RAX.i528, align 8
  %871 = load i64, i64* %RBP.i, align 8
  %872 = add i64 %871, -28
  %873 = load i64, i64* %3, align 8
  %874 = add i64 %873, 3
  store i64 %874, i64* %3, align 8
  %875 = trunc i64 %870 to i32
  %876 = inttoptr i64 %872 to i32*
  %877 = load i32, i32* %876, align 4
  %878 = add i32 %877, %875
  %879 = zext i32 %878 to i64
  store i64 %879, i64* %RAX.i528, align 8
  %880 = icmp ult i32 %878, %875
  %881 = icmp ult i32 %878, %877
  %882 = or i1 %880, %881
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %14, align 1
  %884 = and i32 %878, 255
  %885 = tail call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %21, align 1
  %889 = xor i32 %877, %875
  %890 = xor i32 %889, %878
  %891 = lshr i32 %890, 4
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  store i8 %893, i8* %26, align 1
  %894 = icmp eq i32 %878, 0
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %29, align 1
  %896 = lshr i32 %878, 31
  %897 = trunc i32 %896 to i8
  store i8 %897, i8* %32, align 1
  %898 = lshr i32 %875, 31
  %899 = lshr i32 %877, 31
  %900 = xor i32 %896, %898
  %901 = xor i32 %896, %899
  %902 = add nuw nsw i32 %900, %901
  %903 = icmp eq i32 %902, 2
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %38, align 1
  %905 = add i64 %873, 6
  store i64 %905, i64* %3, align 8
  store i32 %878, i32* %876, align 4
  %.pre68 = load i64, i64* %3, align 8
  %.pre69 = load i64, i64* %RBP.i, align 8
  br label %block_.L_445184

block_.L_445184:                                  ; preds = %block_4450ec, %block_445118, %block_.L_445102
  %906 = phi i64 [ %667, %block_.L_445102 ], [ %.pre69, %block_445118 ], [ %667, %block_4450ec ]
  %907 = phi i64 [ %748, %block_.L_445102 ], [ %.pre68, %block_445118 ], [ %726, %block_4450ec ]
  %MEMORY.6 = phi %struct.Memory* [ %632, %block_.L_445102 ], [ %call2_445179, %block_445118 ], [ %632, %block_4450ec ]
  %908 = add i64 %906, -36
  %909 = add i64 %907, 8
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i32*
  %911 = load i32, i32* %910, align 4
  %912 = zext i32 %911 to i64
  store i64 %912, i64* %RAX.i528, align 8
  %913 = add i64 %906, -12
  %914 = add i64 %907, 11
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = add i32 %916, %911
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RAX.i528, align 8
  %919 = icmp ult i32 %917, %911
  %920 = icmp ult i32 %917, %916
  %921 = or i1 %919, %920
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %14, align 1
  %923 = and i32 %917, 255
  %924 = tail call i32 @llvm.ctpop.i32(i32 %923)
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  store i8 %927, i8* %21, align 1
  %928 = xor i32 %916, %911
  %929 = xor i32 %928, %917
  %930 = lshr i32 %929, 4
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  store i8 %932, i8* %26, align 1
  %933 = icmp eq i32 %917, 0
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %29, align 1
  %935 = lshr i32 %917, 31
  %936 = trunc i32 %935 to i8
  store i8 %936, i8* %32, align 1
  %937 = lshr i32 %911, 31
  %938 = lshr i32 %916, 31
  %939 = xor i32 %935, %937
  %940 = xor i32 %935, %938
  %941 = add nuw nsw i32 %939, %940
  %942 = icmp eq i32 %941, 2
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %38, align 1
  %944 = add i64 %907, 14
  store i64 %944, i64* %3, align 8
  store i32 %917, i32* %915, align 4
  %945 = load i64, i64* %3, align 8
  %946 = add i64 %945, -226
  store i64 %946, i64* %3, align 8
  br label %block_.L_4450b0

block_.L_445197:                                  ; preds = %block_.L_4450b0
  %947 = add i64 %562, -40
  %948 = add i64 %590, 8
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %RAX.i528, align 8
  %952 = add i64 %562, -8
  %953 = add i64 %590, 11
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  %955 = load i32, i32* %954, align 4
  %956 = add i32 %955, %950
  %957 = zext i32 %956 to i64
  store i64 %957, i64* %RAX.i528, align 8
  %958 = icmp ult i32 %956, %950
  %959 = icmp ult i32 %956, %955
  %960 = or i1 %958, %959
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %14, align 1
  %962 = and i32 %956, 255
  %963 = tail call i32 @llvm.ctpop.i32(i32 %962)
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  %966 = xor i8 %965, 1
  store i8 %966, i8* %21, align 1
  %967 = xor i32 %955, %950
  %968 = xor i32 %967, %956
  %969 = lshr i32 %968, 4
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  store i8 %971, i8* %26, align 1
  %972 = icmp eq i32 %956, 0
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %29, align 1
  %974 = lshr i32 %956, 31
  %975 = trunc i32 %974 to i8
  store i8 %975, i8* %32, align 1
  %976 = lshr i32 %950, 31
  %977 = lshr i32 %955, 31
  %978 = xor i32 %974, %976
  %979 = xor i32 %974, %977
  %980 = add nuw nsw i32 %978, %979
  %981 = icmp eq i32 %980, 2
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %38, align 1
  %983 = add i64 %590, 14
  store i64 %983, i64* %3, align 8
  store i32 %956, i32* %954, align 4
  %984 = load i64, i64* %3, align 8
  %985 = add i64 %984, -262
  store i64 %985, i64* %3, align 8
  br label %block_.L_44509f

block_.L_4451aa:                                  ; preds = %block_.L_44509f
  %986 = add i64 %557, 7
  store i64 %986, i64* %3, align 8
  store i32 0, i32* %532, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_4451b1

block_.L_4451b1:                                  ; preds = %block_.L_4452a7, %block_.L_4451aa
  %987 = phi i64 [ %.pre57, %block_.L_4451aa ], [ %1470, %block_.L_4452a7 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.3, %block_.L_4451aa ], [ %MEMORY.8, %block_.L_4452a7 ]
  %988 = load i64, i64* %RBP.i, align 8
  %989 = add i64 %988, -8
  %990 = add i64 %987, 4
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i32*
  %992 = load i32, i32* %991, align 4
  %993 = add i32 %992, -4
  %994 = icmp ult i32 %992, 4
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %14, align 1
  %996 = and i32 %993, 255
  %997 = tail call i32 @llvm.ctpop.i32(i32 %996)
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  %1000 = xor i8 %999, 1
  store i8 %1000, i8* %21, align 1
  %1001 = xor i32 %993, %992
  %1002 = lshr i32 %1001, 4
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  store i8 %1004, i8* %26, align 1
  %1005 = icmp eq i32 %993, 0
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %29, align 1
  %1007 = lshr i32 %993, 31
  %1008 = trunc i32 %1007 to i8
  store i8 %1008, i8* %32, align 1
  %1009 = lshr i32 %992, 31
  %1010 = xor i32 %1007, %1009
  %1011 = add nuw nsw i32 %1010, %1009
  %1012 = icmp eq i32 %1011, 2
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %38, align 1
  %1014 = icmp ne i8 %1008, 0
  %1015 = xor i1 %1014, %1012
  %.v91 = select i1 %1015, i64 10, i64 265
  %1016 = add i64 %987, %.v91
  store i64 %1016, i64* %3, align 8
  br i1 %1015, label %block_4451bb, label %block_.L_4452ba

block_4451bb:                                     ; preds = %block_.L_4451b1
  %1017 = add i64 %988, -12
  %1018 = add i64 %1016, 7
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i32*
  store i32 0, i32* %1019, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_4451c2

block_.L_4451c2:                                  ; preds = %block_.L_445294, %block_4451bb
  %1020 = phi i64 [ %.pre58, %block_4451bb ], [ %1431, %block_.L_445294 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.7, %block_4451bb ], [ %MEMORY.10, %block_.L_445294 ]
  %1021 = load i64, i64* %RBP.i, align 8
  %1022 = add i64 %1021, -12
  %1023 = add i64 %1020, 4
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i32*
  %1025 = load i32, i32* %1024, align 4
  %1026 = add i32 %1025, -4
  %1027 = icmp ult i32 %1025, 4
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %14, align 1
  %1029 = and i32 %1026, 255
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %21, align 1
  %1034 = xor i32 %1026, %1025
  %1035 = lshr i32 %1034, 4
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  store i8 %1037, i8* %26, align 1
  %1038 = icmp eq i32 %1026, 0
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %29, align 1
  %1040 = lshr i32 %1026, 31
  %1041 = trunc i32 %1040 to i8
  store i8 %1041, i8* %32, align 1
  %1042 = lshr i32 %1025, 31
  %1043 = xor i32 %1040, %1042
  %1044 = add nuw nsw i32 %1043, %1042
  %1045 = icmp eq i32 %1044, 2
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %38, align 1
  %1047 = icmp ne i8 %1041, 0
  %1048 = xor i1 %1047, %1045
  %.v111 = select i1 %1048, i64 10, i64 229
  %1049 = add i64 %1020, %.v111
  %1050 = add i64 %1049, 5
  store i64 %1050, i64* %3, align 8
  br i1 %1048, label %block_4451cc, label %block_.L_4452a7

block_4451cc:                                     ; preds = %block_.L_4451c2
  store i64 2, i64* %RAX.i528, align 8
  %1051 = add i64 %1021, -8
  %1052 = add i64 %1049, 8
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i32*
  %1054 = load i32, i32* %1053, align 4
  %1055 = zext i32 %1054 to i64
  store i64 %1055, i64* %RCX.i871, align 8
  %1056 = add i64 %1049, 11
  store i64 %1056, i64* %3, align 8
  %1057 = load i32, i32* %1024, align 4
  %1058 = zext i32 %1057 to i64
  store i64 %1058, i64* %RDX.i809, align 8
  %1059 = add i64 %1021, -76
  %1060 = add i64 %1049, 14
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i32*
  store i32 2, i32* %1061, align 4
  %1062 = load i32, i32* %EDX.i685, align 4
  %1063 = zext i32 %1062 to i64
  %1064 = load i64, i64* %3, align 8
  store i64 %1063, i64* %RAX.i528, align 8
  %1065 = sext i32 %1062 to i64
  %1066 = lshr i64 %1065, 32
  store i64 %1066, i64* %526, align 8
  %1067 = load i64, i64* %RBP.i, align 8
  %1068 = add i64 %1067, -76
  %1069 = add i64 %1064, 6
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i32*
  %1071 = load i32, i32* %1070, align 4
  %1072 = zext i32 %1071 to i64
  store i64 %1072, i64* %RSI.i849, align 8
  %1073 = add i64 %1064, 8
  store i64 %1073, i64* %3, align 8
  %1074 = sext i32 %1071 to i64
  %1075 = shl nuw i64 %1066, 32
  %1076 = or i64 %1075, %1063
  %1077 = sdiv i64 %1076, %1074
  %1078 = shl i64 %1077, 32
  %1079 = ashr exact i64 %1078, 32
  %1080 = icmp eq i64 %1077, %1079
  br i1 %1080, label %1083, label %1081

; <label>:1081:                                   ; preds = %block_4451cc
  %1082 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1073, %struct.Memory* %MEMORY.8)
  %.pre59 = load i32, i32* %EAX.i812.pre-phi, align 4
  %.pre60 = load i64, i64* %3, align 8
  %.pre61 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit526

; <label>:1083:                                   ; preds = %block_4451cc
  %1084 = srem i64 %1076, %1074
  %1085 = and i64 %1077, 4294967295
  store i64 %1085, i64* %RAX.i528, align 8
  %1086 = and i64 %1084, 4294967295
  store i64 %1086, i64* %RDX.i809, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1087 = trunc i64 %1077 to i32
  br label %routine_idivl__esi.exit526

routine_idivl__esi.exit526:                       ; preds = %1083, %1081
  %1088 = phi i64 [ %.pre61, %1081 ], [ %1067, %1083 ]
  %1089 = phi i64 [ %.pre60, %1081 ], [ %1073, %1083 ]
  %1090 = phi i32 [ %.pre59, %1081 ], [ %1087, %1083 ]
  %1091 = phi %struct.Memory* [ %1082, %1081 ], [ %MEMORY.8, %1083 ]
  %1092 = load i64, i64* %RCX.i871, align 8
  %1093 = zext i32 %1090 to i64
  %1094 = trunc i64 %1092 to i32
  %1095 = add i32 %1090, %1094
  %1096 = zext i32 %1095 to i64
  store i64 %1096, i64* %RCX.i871, align 8
  %1097 = icmp ult i32 %1095, %1094
  %1098 = icmp ult i32 %1095, %1090
  %1099 = or i1 %1097, %1098
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %14, align 1
  %1101 = and i32 %1095, 255
  %1102 = tail call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %21, align 1
  %1106 = xor i64 %1093, %1092
  %1107 = trunc i64 %1106 to i32
  %1108 = xor i32 %1107, %1095
  %1109 = lshr i32 %1108, 4
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  store i8 %1111, i8* %26, align 1
  %1112 = icmp eq i32 %1095, 0
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %29, align 1
  %1114 = lshr i32 %1095, 31
  %1115 = trunc i32 %1114 to i8
  store i8 %1115, i8* %32, align 1
  %1116 = lshr i32 %1094, 31
  %1117 = lshr i32 %1090, 31
  %1118 = xor i32 %1114, %1116
  %1119 = xor i32 %1114, %1117
  %1120 = add nuw nsw i32 %1118, %1119
  %1121 = icmp eq i32 %1120, 2
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %38, align 1
  %1123 = add i64 %1088, -4
  %1124 = add i64 %1089, 5
  store i64 %1124, i64* %3, align 8
  %1125 = inttoptr i64 %1123 to i32*
  store i32 %1095, i32* %1125, align 4
  %1126 = load i64, i64* %RBP.i, align 8
  %1127 = add i64 %1126, -24
  %1128 = load i64, i64* %3, align 8
  %1129 = add i64 %1128, 4
  store i64 %1129, i64* %3, align 8
  %1130 = inttoptr i64 %1127 to i64*
  %1131 = load i64, i64* %1130, align 8
  store i64 %1131, i64* %RDI.i721, align 8
  %1132 = add i64 %1126, -4
  %1133 = add i64 %1128, 8
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i32*
  %1135 = load i32, i32* %1134, align 4
  %1136 = sext i32 %1135 to i64
  store i64 %1136, i64* %R8.i665, align 8
  %1137 = shl nsw i64 %1136, 2
  %1138 = add i64 %1131, 488
  %1139 = add i64 %1138, %1137
  %1140 = add i64 %1128, 17
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i32*
  %1142 = load i32, i32* %1141, align 4
  %1143 = add i32 %1142, -1
  %1144 = icmp eq i32 %1142, 0
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %14, align 1
  %1146 = and i32 %1143, 255
  %1147 = tail call i32 @llvm.ctpop.i32(i32 %1146)
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  %1150 = xor i8 %1149, 1
  store i8 %1150, i8* %21, align 1
  %1151 = xor i32 %1143, %1142
  %1152 = lshr i32 %1151, 4
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  store i8 %1154, i8* %26, align 1
  %1155 = icmp eq i32 %1143, 0
  %1156 = zext i1 %1155 to i8
  store i8 %1156, i8* %29, align 1
  %1157 = lshr i32 %1143, 31
  %1158 = trunc i32 %1157 to i8
  store i8 %1158, i8* %32, align 1
  %1159 = lshr i32 %1142, 31
  %1160 = xor i32 %1157, %1159
  %1161 = add nuw nsw i32 %1160, %1159
  %1162 = icmp eq i32 %1161, 2
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %38, align 1
  %.v112 = select i1 %1155, i64 45, i64 23
  %1164 = add i64 %1128, %.v112
  store i64 %1164, i64* %3, align 8
  br i1 %1155, label %block_.L_445214, label %block_4451fe

block_4451fe:                                     ; preds = %routine_idivl__esi.exit526
  %1165 = add i64 %1164, 4
  store i64 %1165, i64* %3, align 8
  %1166 = load i64, i64* %1130, align 8
  store i64 %1166, i64* %RAX.i528, align 8
  %1167 = add i64 %1164, 8
  store i64 %1167, i64* %3, align 8
  %1168 = load i32, i32* %1134, align 4
  %1169 = sext i32 %1168 to i64
  store i64 %1169, i64* %RCX.i871, align 8
  %1170 = shl nsw i64 %1169, 2
  %1171 = add i64 %1166, 488
  %1172 = add i64 %1171, %1170
  %1173 = add i64 %1164, 16
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = add i32 %1175, -2
  %1177 = icmp ult i32 %1175, 2
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %14, align 1
  %1179 = and i32 %1176, 255
  %1180 = tail call i32 @llvm.ctpop.i32(i32 %1179)
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  %1183 = xor i8 %1182, 1
  store i8 %1183, i8* %21, align 1
  %1184 = xor i32 %1176, %1175
  %1185 = lshr i32 %1184, 4
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  store i8 %1187, i8* %26, align 1
  %1188 = icmp eq i32 %1176, 0
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %29, align 1
  %1190 = lshr i32 %1176, 31
  %1191 = trunc i32 %1190 to i8
  store i8 %1191, i8* %32, align 1
  %1192 = lshr i32 %1175, 31
  %1193 = xor i32 %1190, %1192
  %1194 = add nuw nsw i32 %1193, %1192
  %1195 = icmp eq i32 %1194, 2
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %38, align 1
  %.v113 = select i1 %1188, i64 22, i64 150
  %1197 = add i64 %1164, %.v113
  store i64 %1197, i64* %3, align 8
  br i1 %1188, label %block_.L_445214, label %block_.L_445294

block_.L_445214:                                  ; preds = %block_4451fe, %routine_idivl__esi.exit526
  %1198 = phi i64 [ %1197, %block_4451fe ], [ %1164, %routine_idivl__esi.exit526 ]
  %1199 = add i64 %1198, 4
  store i64 %1199, i64* %3, align 8
  %1200 = load i64, i64* %1130, align 8
  store i64 %1200, i64* %RAX.i528, align 8
  %1201 = add i64 %1198, 8
  store i64 %1201, i64* %3, align 8
  %1202 = load i32, i32* %1134, align 4
  %1203 = sext i32 %1202 to i64
  store i64 %1203, i64* %RCX.i871, align 8
  %1204 = shl nsw i64 %1203, 2
  %1205 = add i64 %1200, 472
  %1206 = add i64 %1205, %1204
  %1207 = add i64 %1198, 16
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  %1209 = load i32, i32* %1208, align 4
  store i8 0, i8* %14, align 1
  %1210 = and i32 %1209, 255
  %1211 = tail call i32 @llvm.ctpop.i32(i32 %1210)
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = xor i8 %1213, 1
  store i8 %1214, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1215 = icmp eq i32 %1209, 0
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %29, align 1
  %1217 = lshr i32 %1209, 31
  %1218 = trunc i32 %1217 to i8
  store i8 %1218, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v114 = select i1 %1215, i64 128, i64 22
  %1219 = add i64 %1198, %.v114
  store i64 %1219, i64* %3, align 8
  br i1 %1215, label %block_.L_445294, label %block_44522a

block_44522a:                                     ; preds = %block_.L_445214
  %1220 = zext i32 %1202 to i64
  %1221 = xor i64 %1220, %1203
  %1222 = trunc i64 %1221 to i32
  %1223 = and i64 %1221, 4294967295
  store i64 %1223, i64* %RCX.i871, align 8
  store i8 0, i8* %14, align 1
  %1224 = and i32 %1222, 255
  %1225 = tail call i32 @llvm.ctpop.i32(i32 %1224)
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  store i8 %1228, i8* %21, align 1
  %1229 = icmp eq i32 %1222, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %29, align 1
  %1231 = lshr i32 %1222, 31
  %1232 = trunc i32 %1231 to i8
  store i8 %1232, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1233 = add i64 %1219, 6
  store i64 %1233, i64* %3, align 8
  %1234 = load i64, i64* %1130, align 8
  store i64 %1234, i64* %RAX.i528, align 8
  %1235 = add i64 %1219, 10
  store i64 %1235, i64* %3, align 8
  %1236 = load i32, i32* %1134, align 4
  %1237 = sext i32 %1236 to i64
  store i64 %1237, i64* %RDX.i809, align 8
  %1238 = shl nsw i64 %1237, 2
  %1239 = add i64 %1234, 472
  %1240 = add i64 %1239, %1238
  %1241 = add i64 %1219, 17
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1240 to i32*
  %1243 = load i32, i32* %1242, align 4
  %1244 = zext i32 %1243 to i64
  store i64 %1244, i64* %RDI.i721, align 8
  %1245 = add i64 %1126, -12
  %1246 = add i64 %1219, 20
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i32*
  %1248 = load i32, i32* %1247, align 4
  %1249 = zext i32 %1248 to i64
  store i64 %1249, i64* %RSI.i849, align 8
  %1250 = add i64 %1126, -8
  %1251 = add i64 %1219, 23
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = zext i32 %1253 to i64
  store i64 %1254, i64* %RDX.i809, align 8
  %1255 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1255, i64* %RAX.i528, align 8
  %1256 = add i64 %1255, 6480
  %1257 = add i64 %1219, 38
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1256 to i64*
  %1259 = load i64, i64* %1258, align 8
  store i64 %1259, i64* %RAX.i528, align 8
  %1260 = add i64 %1259, 8
  %1261 = add i64 %1219, 42
  store i64 %1261, i64* %3, align 8
  %1262 = inttoptr i64 %1260 to i64*
  %1263 = load i64, i64* %1262, align 8
  store i64 %1263, i64* %RAX.i528, align 8
  %1264 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1264, i64* %R8.i665, align 8
  %1265 = add i64 %1264, 144
  %1266 = add i64 %1219, 57
  store i64 %1266, i64* %3, align 8
  %1267 = inttoptr i64 %1265 to i32*
  %1268 = load i32, i32* %1267, align 4
  %1269 = zext i32 %1268 to i64
  store i64 %1269, i64* %527, align 8
  %1270 = add i64 %1219, 61
  store i64 %1270, i64* %3, align 8
  %1271 = load i32, i32* %1247, align 4
  %1272 = add i32 %1271, %1268
  %1273 = zext i32 %1272 to i64
  store i64 %1273, i64* %527, align 8
  %1274 = icmp ult i32 %1272, %1268
  %1275 = icmp ult i32 %1272, %1271
  %1276 = or i1 %1274, %1275
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %14, align 1
  %1278 = and i32 %1272, 255
  %1279 = tail call i32 @llvm.ctpop.i32(i32 %1278)
  %1280 = trunc i32 %1279 to i8
  %1281 = and i8 %1280, 1
  %1282 = xor i8 %1281, 1
  store i8 %1282, i8* %21, align 1
  %1283 = xor i32 %1271, %1268
  %1284 = xor i32 %1283, %1272
  %1285 = lshr i32 %1284, 4
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  store i8 %1287, i8* %26, align 1
  %1288 = icmp eq i32 %1272, 0
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %29, align 1
  %1290 = lshr i32 %1272, 31
  %1291 = trunc i32 %1290 to i8
  store i8 %1291, i8* %32, align 1
  %1292 = lshr i32 %1268, 31
  %1293 = lshr i32 %1271, 31
  %1294 = xor i32 %1290, %1292
  %1295 = xor i32 %1290, %1293
  %1296 = add nuw nsw i32 %1294, %1295
  %1297 = icmp eq i32 %1296, 2
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %38, align 1
  %1299 = sext i32 %1272 to i64
  store i64 %1299, i64* %R8.i665, align 8
  %1300 = shl nsw i64 %1299, 3
  %1301 = add i64 %1263, %1300
  %1302 = add i64 %1219, 68
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i64*
  %1304 = load i64, i64* %1303, align 8
  store i64 %1304, i64* %RAX.i528, align 8
  store i64 %1264, i64* %R8.i665, align 8
  %1305 = add i64 %1264, 148
  %1306 = add i64 %1219, 83
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to i32*
  %1308 = load i32, i32* %1307, align 4
  %1309 = zext i32 %1308 to i64
  store i64 %1309, i64* %527, align 8
  %1310 = load i64, i64* %RBP.i, align 8
  %1311 = add i64 %1310, -8
  %1312 = add i64 %1219, 87
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i32*
  %1314 = load i32, i32* %1313, align 4
  %1315 = add i32 %1314, %1308
  %1316 = zext i32 %1315 to i64
  store i64 %1316, i64* %527, align 8
  %1317 = icmp ult i32 %1315, %1308
  %1318 = icmp ult i32 %1315, %1314
  %1319 = or i1 %1317, %1318
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %14, align 1
  %1321 = and i32 %1315, 255
  %1322 = tail call i32 @llvm.ctpop.i32(i32 %1321)
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = xor i8 %1324, 1
  store i8 %1325, i8* %21, align 1
  %1326 = xor i32 %1314, %1308
  %1327 = xor i32 %1326, %1315
  %1328 = lshr i32 %1327, 4
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  store i8 %1330, i8* %26, align 1
  %1331 = icmp eq i32 %1315, 0
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %29, align 1
  %1333 = lshr i32 %1315, 31
  %1334 = trunc i32 %1333 to i8
  store i8 %1334, i8* %32, align 1
  %1335 = lshr i32 %1308, 31
  %1336 = lshr i32 %1314, 31
  %1337 = xor i32 %1333, %1335
  %1338 = xor i32 %1333, %1336
  %1339 = add nuw nsw i32 %1337, %1338
  %1340 = icmp eq i32 %1339, 2
  %1341 = zext i1 %1340 to i8
  store i8 %1341, i8* %38, align 1
  %1342 = sext i32 %1315 to i64
  store i64 %1342, i64* %R8.i665, align 8
  %1343 = shl nsw i64 %1342, 1
  %1344 = add i64 %1304, %1343
  %1345 = add i64 %1219, 95
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1344 to i16*
  %1347 = load i16, i16* %1346, align 2
  %1348 = sext i16 %1347 to i64
  %1349 = and i64 %1348, 4294967295
  store i64 %1349, i64* %R8.i665, align 8
  %1350 = add i64 %1219, 12486
  %1351 = add i64 %1219, 100
  %1352 = load i64, i64* %6, align 8
  %1353 = add i64 %1352, -8
  %1354 = inttoptr i64 %1353 to i64*
  store i64 %1351, i64* %1354, align 8
  store i64 %1353, i64* %6, align 8
  store i64 %1350, i64* %3, align 8
  %call2_445289 = tail call %struct.Memory* @sub_4482f0.writeReferenceFrame(%struct.State* nonnull %0, i64 %1350, %struct.Memory* %1091)
  %1355 = load i64, i64* %RAX.i528, align 8
  %1356 = load i64, i64* %RBP.i, align 8
  %1357 = add i64 %1356, -28
  %1358 = load i64, i64* %3, align 8
  %1359 = add i64 %1358, 3
  store i64 %1359, i64* %3, align 8
  %1360 = trunc i64 %1355 to i32
  %1361 = inttoptr i64 %1357 to i32*
  %1362 = load i32, i32* %1361, align 4
  %1363 = add i32 %1362, %1360
  %1364 = zext i32 %1363 to i64
  store i64 %1364, i64* %RAX.i528, align 8
  %1365 = icmp ult i32 %1363, %1360
  %1366 = icmp ult i32 %1363, %1362
  %1367 = or i1 %1365, %1366
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %14, align 1
  %1369 = and i32 %1363, 255
  %1370 = tail call i32 @llvm.ctpop.i32(i32 %1369)
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  %1373 = xor i8 %1372, 1
  store i8 %1373, i8* %21, align 1
  %1374 = xor i32 %1362, %1360
  %1375 = xor i32 %1374, %1363
  %1376 = lshr i32 %1375, 4
  %1377 = trunc i32 %1376 to i8
  %1378 = and i8 %1377, 1
  store i8 %1378, i8* %26, align 1
  %1379 = icmp eq i32 %1363, 0
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %29, align 1
  %1381 = lshr i32 %1363, 31
  %1382 = trunc i32 %1381 to i8
  store i8 %1382, i8* %32, align 1
  %1383 = lshr i32 %1360, 31
  %1384 = lshr i32 %1362, 31
  %1385 = xor i32 %1381, %1383
  %1386 = xor i32 %1381, %1384
  %1387 = add nuw nsw i32 %1385, %1386
  %1388 = icmp eq i32 %1387, 2
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %38, align 1
  %1390 = add i64 %1358, 6
  store i64 %1390, i64* %3, align 8
  store i32 %1363, i32* %1361, align 4
  %.pre62 = load i64, i64* %3, align 8
  %.pre63 = load i64, i64* %RBP.i, align 8
  br label %block_.L_445294

block_.L_445294:                                  ; preds = %block_4451fe, %block_44522a, %block_.L_445214
  %1391 = phi i64 [ %1126, %block_.L_445214 ], [ %.pre63, %block_44522a ], [ %1126, %block_4451fe ]
  %1392 = phi i64 [ %1219, %block_.L_445214 ], [ %.pre62, %block_44522a ], [ %1197, %block_4451fe ]
  %MEMORY.10 = phi %struct.Memory* [ %1091, %block_.L_445214 ], [ %call2_445289, %block_44522a ], [ %1091, %block_4451fe ]
  %1393 = add i64 %1391, -36
  %1394 = add i64 %1392, 8
  store i64 %1394, i64* %3, align 8
  %1395 = inttoptr i64 %1393 to i32*
  %1396 = load i32, i32* %1395, align 4
  %1397 = zext i32 %1396 to i64
  store i64 %1397, i64* %RAX.i528, align 8
  %1398 = add i64 %1391, -12
  %1399 = add i64 %1392, 11
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i32*
  %1401 = load i32, i32* %1400, align 4
  %1402 = add i32 %1401, %1396
  %1403 = zext i32 %1402 to i64
  store i64 %1403, i64* %RAX.i528, align 8
  %1404 = icmp ult i32 %1402, %1396
  %1405 = icmp ult i32 %1402, %1401
  %1406 = or i1 %1404, %1405
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %14, align 1
  %1408 = and i32 %1402, 255
  %1409 = tail call i32 @llvm.ctpop.i32(i32 %1408)
  %1410 = trunc i32 %1409 to i8
  %1411 = and i8 %1410, 1
  %1412 = xor i8 %1411, 1
  store i8 %1412, i8* %21, align 1
  %1413 = xor i32 %1401, %1396
  %1414 = xor i32 %1413, %1402
  %1415 = lshr i32 %1414, 4
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  store i8 %1417, i8* %26, align 1
  %1418 = icmp eq i32 %1402, 0
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %29, align 1
  %1420 = lshr i32 %1402, 31
  %1421 = trunc i32 %1420 to i8
  store i8 %1421, i8* %32, align 1
  %1422 = lshr i32 %1396, 31
  %1423 = lshr i32 %1401, 31
  %1424 = xor i32 %1420, %1422
  %1425 = xor i32 %1420, %1423
  %1426 = add nuw nsw i32 %1424, %1425
  %1427 = icmp eq i32 %1426, 2
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %38, align 1
  %1429 = add i64 %1392, 14
  store i64 %1429, i64* %3, align 8
  store i32 %1402, i32* %1400, align 4
  %1430 = load i64, i64* %3, align 8
  %1431 = add i64 %1430, -224
  store i64 %1431, i64* %3, align 8
  br label %block_.L_4451c2

block_.L_4452a7:                                  ; preds = %block_.L_4451c2
  %1432 = add i64 %1021, -40
  %1433 = add i64 %1049, 8
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1432 to i32*
  %1435 = load i32, i32* %1434, align 4
  %1436 = zext i32 %1435 to i64
  store i64 %1436, i64* %RAX.i528, align 8
  %1437 = add i64 %1021, -8
  %1438 = add i64 %1049, 11
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1437 to i32*
  %1440 = load i32, i32* %1439, align 4
  %1441 = add i32 %1440, %1435
  %1442 = zext i32 %1441 to i64
  store i64 %1442, i64* %RAX.i528, align 8
  %1443 = icmp ult i32 %1441, %1435
  %1444 = icmp ult i32 %1441, %1440
  %1445 = or i1 %1443, %1444
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %14, align 1
  %1447 = and i32 %1441, 255
  %1448 = tail call i32 @llvm.ctpop.i32(i32 %1447)
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  %1451 = xor i8 %1450, 1
  store i8 %1451, i8* %21, align 1
  %1452 = xor i32 %1440, %1435
  %1453 = xor i32 %1452, %1441
  %1454 = lshr i32 %1453, 4
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  store i8 %1456, i8* %26, align 1
  %1457 = icmp eq i32 %1441, 0
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %29, align 1
  %1459 = lshr i32 %1441, 31
  %1460 = trunc i32 %1459 to i8
  store i8 %1460, i8* %32, align 1
  %1461 = lshr i32 %1435, 31
  %1462 = lshr i32 %1440, 31
  %1463 = xor i32 %1459, %1461
  %1464 = xor i32 %1459, %1462
  %1465 = add nuw nsw i32 %1463, %1464
  %1466 = icmp eq i32 %1465, 2
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %38, align 1
  %1468 = add i64 %1049, 14
  store i64 %1468, i64* %3, align 8
  store i32 %1441, i32* %1439, align 4
  %1469 = load i64, i64* %3, align 8
  %1470 = add i64 %1469, -260
  store i64 %1470, i64* %3, align 8
  br label %block_.L_4451b1

block_.L_4452ba:                                  ; preds = %block_.L_4451b1
  %1471 = add i64 %1016, 5
  store i64 %1471, i64* %3, align 8
  br label %block_.L_4452bf

block_.L_4452bf:                                  ; preds = %block_.L_4452ba, %block_44508e
  %1472 = phi i64 [ %988, %block_.L_4452ba ], [ %506, %block_44508e ]
  %1473 = phi i64 [ %1471, %block_.L_4452ba ], [ %520, %block_44508e ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.7, %block_.L_4452ba ], [ %call2_44506b, %block_44508e ]
  %1474 = add i64 %1473, 5
  store i64 %1474, i64* %3, align 8
  br label %block_.L_4452c4

block_.L_4452c4:                                  ; preds = %block_.L_4452bf, %block_44504b, %block_44503d, %block_44502f, %block_.L_44500d
  %1475 = phi i64 [ %359, %block_.L_44500d ], [ %387, %block_44502f ], [ %415, %block_44503d ], [ %431, %block_44504b ], [ %1474, %block_.L_4452bf ]
  %1476 = phi i64 [ %328, %block_.L_44500d ], [ %328, %block_44502f ], [ %328, %block_44503d ], [ %328, %block_44504b ], [ %1472, %block_.L_4452bf ]
  %MEMORY.12 = phi %struct.Memory* [ %2, %block_.L_44500d ], [ %2, %block_44502f ], [ %2, %block_44503d ], [ %2, %block_44504b ], [ %MEMORY.11, %block_.L_4452bf ]
  %1477 = add i64 %1476, -24
  %1478 = add i64 %1475, 4
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1477 to i64*
  %1480 = load i64, i64* %1479, align 8
  store i64 %1480, i64* %RAX.i528, align 8
  %1481 = add i64 %1480, 72
  %1482 = add i64 %1475, 8
  store i64 %1482, i64* %3, align 8
  %1483 = inttoptr i64 %1481 to i32*
  %1484 = load i32, i32* %1483, align 4
  %1485 = add i32 %1484, -9
  %1486 = icmp ult i32 %1484, 9
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %14, align 1
  %1488 = and i32 %1485, 255
  %1489 = tail call i32 @llvm.ctpop.i32(i32 %1488)
  %1490 = trunc i32 %1489 to i8
  %1491 = and i8 %1490, 1
  %1492 = xor i8 %1491, 1
  store i8 %1492, i8* %21, align 1
  %1493 = xor i32 %1485, %1484
  %1494 = lshr i32 %1493, 4
  %1495 = trunc i32 %1494 to i8
  %1496 = and i8 %1495, 1
  store i8 %1496, i8* %26, align 1
  %1497 = icmp eq i32 %1485, 0
  %1498 = zext i1 %1497 to i8
  store i8 %1498, i8* %29, align 1
  %1499 = lshr i32 %1485, 31
  %1500 = trunc i32 %1499 to i8
  store i8 %1500, i8* %32, align 1
  %1501 = lshr i32 %1484, 31
  %1502 = xor i32 %1499, %1501
  %1503 = add nuw nsw i32 %1502, %1501
  %1504 = icmp eq i32 %1503, 2
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %38, align 1
  %.v92 = select i1 %1497, i64 360, i64 14
  %1506 = add i64 %1475, %.v92
  store i64 %1506, i64* %3, align 8
  br i1 %1497, label %block_.L_44542c, label %block_4452d2

block_4452d2:                                     ; preds = %block_.L_4452c4
  %1507 = add i64 %1506, 4
  store i64 %1507, i64* %3, align 8
  %1508 = load i64, i64* %1479, align 8
  store i64 %1508, i64* %RAX.i528, align 8
  %1509 = add i64 %1508, 72
  %1510 = add i64 %1506, 8
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i32*
  %1512 = load i32, i32* %1511, align 4
  %1513 = add i32 %1512, -10
  %1514 = icmp ult i32 %1512, 10
  %1515 = zext i1 %1514 to i8
  store i8 %1515, i8* %14, align 1
  %1516 = and i32 %1513, 255
  %1517 = tail call i32 @llvm.ctpop.i32(i32 %1516)
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  %1520 = xor i8 %1519, 1
  store i8 %1520, i8* %21, align 1
  %1521 = xor i32 %1513, %1512
  %1522 = lshr i32 %1521, 4
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  store i8 %1524, i8* %26, align 1
  %1525 = icmp eq i32 %1513, 0
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %29, align 1
  %1527 = lshr i32 %1513, 31
  %1528 = trunc i32 %1527 to i8
  store i8 %1528, i8* %32, align 1
  %1529 = lshr i32 %1512, 31
  %1530 = xor i32 %1527, %1529
  %1531 = add nuw nsw i32 %1530, %1529
  %1532 = icmp eq i32 %1531, 2
  %1533 = zext i1 %1532 to i8
  store i8 %1533, i8* %38, align 1
  %.v93 = select i1 %1525, i64 346, i64 14
  %1534 = add i64 %1506, %.v93
  store i64 %1534, i64* %3, align 8
  br i1 %1525, label %block_.L_44542c, label %block_4452e0

block_4452e0:                                     ; preds = %block_4452d2
  %1535 = add i64 %1534, 4
  store i64 %1535, i64* %3, align 8
  %1536 = load i64, i64* %1479, align 8
  store i64 %1536, i64* %RAX.i528, align 8
  %1537 = add i64 %1536, 72
  %1538 = add i64 %1534, 8
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to i32*
  %1540 = load i32, i32* %1539, align 4
  %1541 = add i32 %1540, -13
  %1542 = icmp ult i32 %1540, 13
  %1543 = zext i1 %1542 to i8
  store i8 %1543, i8* %14, align 1
  %1544 = and i32 %1541, 255
  %1545 = tail call i32 @llvm.ctpop.i32(i32 %1544)
  %1546 = trunc i32 %1545 to i8
  %1547 = and i8 %1546, 1
  %1548 = xor i8 %1547, 1
  store i8 %1548, i8* %21, align 1
  %1549 = xor i32 %1541, %1540
  %1550 = lshr i32 %1549, 4
  %1551 = trunc i32 %1550 to i8
  %1552 = and i8 %1551, 1
  store i8 %1552, i8* %26, align 1
  %1553 = icmp eq i32 %1541, 0
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %29, align 1
  %1555 = lshr i32 %1541, 31
  %1556 = trunc i32 %1555 to i8
  store i8 %1556, i8* %32, align 1
  %1557 = lshr i32 %1540, 31
  %1558 = xor i32 %1555, %1557
  %1559 = add nuw nsw i32 %1558, %1557
  %1560 = icmp eq i32 %1559, 2
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %38, align 1
  %.v94 = select i1 %1553, i64 332, i64 14
  %1562 = add i64 %1534, %.v94
  store i64 %1562, i64* %3, align 8
  br i1 %1553, label %block_.L_44542c, label %block_4452ee

block_4452ee:                                     ; preds = %block_4452e0
  %1563 = add i64 %1562, 4
  store i64 %1563, i64* %3, align 8
  %1564 = load i64, i64* %1479, align 8
  store i64 %1564, i64* %RAX.i528, align 8
  %1565 = add i64 %1564, 72
  %1566 = add i64 %1562, 8
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i32*
  %1568 = load i32, i32* %1567, align 4
  store i8 0, i8* %14, align 1
  %1569 = and i32 %1568, 255
  %1570 = tail call i32 @llvm.ctpop.i32(i32 %1569)
  %1571 = trunc i32 %1570 to i8
  %1572 = and i8 %1571, 1
  %1573 = xor i8 %1572, 1
  store i8 %1573, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1574 = icmp eq i32 %1568, 0
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %29, align 1
  %1576 = lshr i32 %1568, 31
  %1577 = trunc i32 %1576 to i8
  store i8 %1577, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v95 = select i1 %1574, i64 318, i64 14
  %1578 = add i64 %1562, %.v95
  store i64 %1578, i64* %3, align 8
  br i1 %1574, label %block_.L_44542c, label %block_4452fc

block_4452fc:                                     ; preds = %block_4452ee
  %1579 = add i64 %1476, -8
  %1580 = add i64 %1578, 7
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  store i32 0, i32* %1581, align 4
  %EDX.i356 = bitcast %union.anon* %95 to i32*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI.i338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8.i336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %1586 = bitcast i64* %6 to i32**
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_445303

block_.L_445303:                                  ; preds = %block_.L_445414, %block_4452fc
  %1587 = phi i64 [ %.pre70, %block_4452fc ], [ %2133, %block_.L_445414 ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.12, %block_4452fc ], [ %MEMORY.14, %block_.L_445414 ]
  %1588 = load i64, i64* %RBP.i, align 8
  %1589 = add i64 %1588, -8
  %1590 = add i64 %1587, 4
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1589 to i32*
  %1592 = load i32, i32* %1591, align 4
  %1593 = add i32 %1592, -4
  %1594 = icmp ult i32 %1592, 4
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %14, align 1
  %1596 = and i32 %1593, 255
  %1597 = tail call i32 @llvm.ctpop.i32(i32 %1596)
  %1598 = trunc i32 %1597 to i8
  %1599 = and i8 %1598, 1
  %1600 = xor i8 %1599, 1
  store i8 %1600, i8* %21, align 1
  %1601 = xor i32 %1593, %1592
  %1602 = lshr i32 %1601, 4
  %1603 = trunc i32 %1602 to i8
  %1604 = and i8 %1603, 1
  store i8 %1604, i8* %26, align 1
  %1605 = icmp eq i32 %1593, 0
  %1606 = zext i1 %1605 to i8
  store i8 %1606, i8* %29, align 1
  %1607 = lshr i32 %1593, 31
  %1608 = trunc i32 %1607 to i8
  store i8 %1608, i8* %32, align 1
  %1609 = lshr i32 %1592, 31
  %1610 = xor i32 %1607, %1609
  %1611 = add nuw nsw i32 %1610, %1609
  %1612 = icmp eq i32 %1611, 2
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %38, align 1
  %1614 = icmp ne i8 %1608, 0
  %1615 = xor i1 %1614, %1612
  %.v96 = select i1 %1615, i64 10, i64 292
  %1616 = add i64 %1587, %.v96
  store i64 %1616, i64* %3, align 8
  br i1 %1615, label %block_44530d, label %block_.L_445427

block_44530d:                                     ; preds = %block_.L_445303
  %1617 = add i64 %1588, -12
  %1618 = add i64 %1616, 7
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1617 to i32*
  store i32 0, i32* %1619, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_445314

block_.L_445314:                                  ; preds = %block_.L_445401, %block_44530d
  %1620 = phi i64 [ %.pre71, %block_44530d ], [ %2094, %block_.L_445401 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.13, %block_44530d ], [ %MEMORY.16, %block_.L_445401 ]
  %1621 = load i64, i64* %RBP.i, align 8
  %1622 = add i64 %1621, -12
  %1623 = add i64 %1620, 4
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i32*
  %1625 = load i32, i32* %1624, align 4
  %1626 = add i32 %1625, -4
  %1627 = icmp ult i32 %1625, 4
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %14, align 1
  %1629 = and i32 %1626, 255
  %1630 = tail call i32 @llvm.ctpop.i32(i32 %1629)
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  store i8 %1633, i8* %21, align 1
  %1634 = xor i32 %1626, %1625
  %1635 = lshr i32 %1634, 4
  %1636 = trunc i32 %1635 to i8
  %1637 = and i8 %1636, 1
  store i8 %1637, i8* %26, align 1
  %1638 = icmp eq i32 %1626, 0
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %29, align 1
  %1640 = lshr i32 %1626, 31
  %1641 = trunc i32 %1640 to i8
  store i8 %1641, i8* %32, align 1
  %1642 = lshr i32 %1625, 31
  %1643 = xor i32 %1640, %1642
  %1644 = add nuw nsw i32 %1643, %1642
  %1645 = icmp eq i32 %1644, 2
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %38, align 1
  %1647 = icmp ne i8 %1641, 0
  %1648 = xor i1 %1647, %1645
  %.v107 = select i1 %1648, i64 10, i64 256
  %1649 = add i64 %1620, %.v107
  %1650 = add i64 %1649, 5
  store i64 %1650, i64* %3, align 8
  br i1 %1648, label %block_44531e, label %block_.L_445414

block_44531e:                                     ; preds = %block_.L_445314
  store i64 2, i64* %RAX.i528, align 8
  %1651 = add i64 %1621, -8
  %1652 = add i64 %1649, 8
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1651 to i32*
  %1654 = load i32, i32* %1653, align 4
  %1655 = zext i32 %1654 to i64
  store i64 %1655, i64* %RCX.i871, align 8
  %1656 = add i64 %1649, 11
  store i64 %1656, i64* %3, align 8
  %1657 = load i32, i32* %1624, align 4
  %1658 = zext i32 %1657 to i64
  store i64 %1658, i64* %RDX.i809, align 8
  %1659 = add i64 %1621, -80
  %1660 = add i64 %1649, 14
  store i64 %1660, i64* %3, align 8
  %1661 = inttoptr i64 %1659 to i32*
  store i32 2, i32* %1661, align 4
  %1662 = load i32, i32* %EDX.i356, align 4
  %1663 = zext i32 %1662 to i64
  %1664 = load i64, i64* %3, align 8
  store i64 %1663, i64* %RAX.i528, align 8
  %1665 = sext i32 %1662 to i64
  %1666 = lshr i64 %1665, 32
  store i64 %1666, i64* %1582, align 8
  %1667 = load i64, i64* %RBP.i, align 8
  %1668 = add i64 %1667, -80
  %1669 = add i64 %1664, 6
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1668 to i32*
  %1671 = load i32, i32* %1670, align 4
  %1672 = zext i32 %1671 to i64
  store i64 %1672, i64* %RSI.i849, align 8
  %1673 = add i64 %1664, 8
  store i64 %1673, i64* %3, align 8
  %1674 = sext i32 %1671 to i64
  %1675 = shl nuw i64 %1666, 32
  %1676 = or i64 %1675, %1663
  %1677 = sdiv i64 %1676, %1674
  %1678 = shl i64 %1677, 32
  %1679 = ashr exact i64 %1678, 32
  %1680 = icmp eq i64 %1677, %1679
  br i1 %1680, label %1683, label %1681

; <label>:1681:                                   ; preds = %block_44531e
  %1682 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1673, %struct.Memory* %MEMORY.14)
  %.pre72 = load i32, i32* %EAX.i812.pre-phi, align 4
  %.pre73 = load i64, i64* %3, align 8
  %.pre74 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit348

; <label>:1683:                                   ; preds = %block_44531e
  %1684 = srem i64 %1676, %1674
  %1685 = and i64 %1677, 4294967295
  store i64 %1685, i64* %RAX.i528, align 8
  %1686 = and i64 %1684, 4294967295
  store i64 %1686, i64* %RDX.i809, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1687 = trunc i64 %1677 to i32
  br label %routine_idivl__esi.exit348

routine_idivl__esi.exit348:                       ; preds = %1683, %1681
  %1688 = phi i64 [ %.pre74, %1681 ], [ %1667, %1683 ]
  %1689 = phi i64 [ %.pre73, %1681 ], [ %1673, %1683 ]
  %1690 = phi i32 [ %.pre72, %1681 ], [ %1687, %1683 ]
  %1691 = phi %struct.Memory* [ %1682, %1681 ], [ %MEMORY.14, %1683 ]
  %1692 = load i64, i64* %RCX.i871, align 8
  %1693 = zext i32 %1690 to i64
  %1694 = trunc i64 %1692 to i32
  %1695 = add i32 %1690, %1694
  %1696 = zext i32 %1695 to i64
  store i64 %1696, i64* %RCX.i871, align 8
  %1697 = icmp ult i32 %1695, %1694
  %1698 = icmp ult i32 %1695, %1690
  %1699 = or i1 %1697, %1698
  %1700 = zext i1 %1699 to i8
  store i8 %1700, i8* %14, align 1
  %1701 = and i32 %1695, 255
  %1702 = tail call i32 @llvm.ctpop.i32(i32 %1701)
  %1703 = trunc i32 %1702 to i8
  %1704 = and i8 %1703, 1
  %1705 = xor i8 %1704, 1
  store i8 %1705, i8* %21, align 1
  %1706 = xor i64 %1693, %1692
  %1707 = trunc i64 %1706 to i32
  %1708 = xor i32 %1707, %1695
  %1709 = lshr i32 %1708, 4
  %1710 = trunc i32 %1709 to i8
  %1711 = and i8 %1710, 1
  store i8 %1711, i8* %26, align 1
  %1712 = icmp eq i32 %1695, 0
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %29, align 1
  %1714 = lshr i32 %1695, 31
  %1715 = trunc i32 %1714 to i8
  store i8 %1715, i8* %32, align 1
  %1716 = lshr i32 %1694, 31
  %1717 = lshr i32 %1690, 31
  %1718 = xor i32 %1714, %1716
  %1719 = xor i32 %1714, %1717
  %1720 = add nuw nsw i32 %1718, %1719
  %1721 = icmp eq i32 %1720, 2
  %1722 = zext i1 %1721 to i8
  store i8 %1722, i8* %38, align 1
  %1723 = add i64 %1688, -4
  %1724 = add i64 %1689, 5
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1723 to i32*
  store i32 %1695, i32* %1725, align 4
  %1726 = load i64, i64* %RBP.i, align 8
  %1727 = add i64 %1726, -24
  %1728 = load i64, i64* %3, align 8
  %1729 = add i64 %1728, 4
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1727 to i64*
  %1731 = load i64, i64* %1730, align 8
  store i64 %1731, i64* %RDI.i338, align 8
  %1732 = add i64 %1726, -4
  %1733 = add i64 %1728, 8
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to i32*
  %1735 = load i32, i32* %1734, align 4
  %1736 = sext i32 %1735 to i64
  store i64 %1736, i64* %R8.i336, align 8
  %1737 = shl nsw i64 %1736, 2
  %1738 = add i64 %1731, 488
  %1739 = add i64 %1738, %1737
  %1740 = add i64 %1728, 17
  store i64 %1740, i64* %3, align 8
  %1741 = inttoptr i64 %1739 to i32*
  %1742 = load i32, i32* %1741, align 4
  store i8 0, i8* %14, align 1
  %1743 = and i32 %1742, 255
  %1744 = tail call i32 @llvm.ctpop.i32(i32 %1743)
  %1745 = trunc i32 %1744 to i8
  %1746 = and i8 %1745, 1
  %1747 = xor i8 %1746, 1
  store i8 %1747, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1748 = icmp eq i32 %1742, 0
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %29, align 1
  %1750 = lshr i32 %1742, 31
  %1751 = trunc i32 %1750 to i8
  store i8 %1751, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v108 = select i1 %1748, i64 45, i64 23
  %1752 = add i64 %1728, %.v108
  store i64 %1752, i64* %3, align 8
  br i1 %1748, label %block_.L_445366, label %block_445350

block_445350:                                     ; preds = %routine_idivl__esi.exit348
  %1753 = add i64 %1752, 4
  store i64 %1753, i64* %3, align 8
  %1754 = load i64, i64* %1730, align 8
  store i64 %1754, i64* %RAX.i528, align 8
  %1755 = add i64 %1752, 8
  store i64 %1755, i64* %3, align 8
  %1756 = load i32, i32* %1734, align 4
  %1757 = sext i32 %1756 to i64
  store i64 %1757, i64* %RCX.i871, align 8
  %1758 = shl nsw i64 %1757, 2
  %1759 = add i64 %1754, 488
  %1760 = add i64 %1759, %1758
  %1761 = add i64 %1752, 16
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1760 to i32*
  %1763 = load i32, i32* %1762, align 4
  %1764 = add i32 %1763, -2
  %1765 = icmp ult i32 %1763, 2
  %1766 = zext i1 %1765 to i8
  store i8 %1766, i8* %14, align 1
  %1767 = and i32 %1764, 255
  %1768 = tail call i32 @llvm.ctpop.i32(i32 %1767)
  %1769 = trunc i32 %1768 to i8
  %1770 = and i8 %1769, 1
  %1771 = xor i8 %1770, 1
  store i8 %1771, i8* %21, align 1
  %1772 = xor i32 %1764, %1763
  %1773 = lshr i32 %1772, 4
  %1774 = trunc i32 %1773 to i8
  %1775 = and i8 %1774, 1
  store i8 %1775, i8* %26, align 1
  %1776 = icmp eq i32 %1764, 0
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %29, align 1
  %1778 = lshr i32 %1764, 31
  %1779 = trunc i32 %1778 to i8
  store i8 %1779, i8* %32, align 1
  %1780 = lshr i32 %1763, 31
  %1781 = xor i32 %1778, %1780
  %1782 = add nuw nsw i32 %1781, %1780
  %1783 = icmp eq i32 %1782, 2
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %38, align 1
  %.v109 = select i1 %1776, i64 22, i64 177
  %1785 = add i64 %1752, %.v109
  store i64 %1785, i64* %3, align 8
  br i1 %1776, label %block_.L_445366, label %block_.L_445401

block_.L_445366:                                  ; preds = %block_445350, %routine_idivl__esi.exit348
  %1786 = phi i64 [ %1785, %block_445350 ], [ %1752, %routine_idivl__esi.exit348 ]
  %1787 = add i64 %1786, 4
  store i64 %1787, i64* %3, align 8
  %1788 = load i64, i64* %1730, align 8
  store i64 %1788, i64* %RAX.i528, align 8
  %1789 = add i64 %1786, 8
  store i64 %1789, i64* %3, align 8
  %1790 = load i32, i32* %1734, align 4
  %1791 = sext i32 %1790 to i64
  store i64 %1791, i64* %RCX.i871, align 8
  %1792 = shl nsw i64 %1791, 2
  %1793 = add i64 %1788, 472
  %1794 = add i64 %1793, %1792
  %1795 = add i64 %1786, 16
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1794 to i32*
  %1797 = load i32, i32* %1796, align 4
  store i8 0, i8* %14, align 1
  %1798 = and i32 %1797, 255
  %1799 = tail call i32 @llvm.ctpop.i32(i32 %1798)
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  %1802 = xor i8 %1801, 1
  store i8 %1802, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1803 = icmp eq i32 %1797, 0
  %1804 = zext i1 %1803 to i8
  store i8 %1804, i8* %29, align 1
  %1805 = lshr i32 %1797, 31
  %1806 = trunc i32 %1805 to i8
  store i8 %1806, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v110 = select i1 %1803, i64 155, i64 22
  %1807 = add i64 %1786, %.v110
  store i64 %1807, i64* %3, align 8
  br i1 %1803, label %block_.L_445401, label %block_44537c

block_44537c:                                     ; preds = %block_.L_445366
  store i64 0, i64* %1583, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1808 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1808, i64* %RAX.i528, align 8
  %1809 = add i64 %1808, 6480
  %1810 = add i64 %1807, 18
  store i64 %1810, i64* %3, align 8
  %1811 = inttoptr i64 %1809 to i64*
  %1812 = load i64, i64* %1811, align 8
  store i64 %1812, i64* %RAX.i528, align 8
  %1813 = add i64 %1807, 21
  store i64 %1813, i64* %3, align 8
  %1814 = inttoptr i64 %1812 to i64*
  %1815 = load i64, i64* %1814, align 8
  store i64 %1815, i64* %RAX.i528, align 8
  %1816 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1816, i64* %RCX.i871, align 8
  %1817 = add i64 %1816, 144
  %1818 = add i64 %1807, 35
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i32*
  %1820 = load i32, i32* %1819, align 4
  %1821 = zext i32 %1820 to i64
  store i64 %1821, i64* %RDX.i809, align 8
  %1822 = add i64 %1726, -12
  %1823 = add i64 %1807, 38
  store i64 %1823, i64* %3, align 8
  %1824 = inttoptr i64 %1822 to i32*
  %1825 = load i32, i32* %1824, align 4
  %1826 = add i32 %1825, %1820
  %1827 = zext i32 %1826 to i64
  store i64 %1827, i64* %RDX.i809, align 8
  %1828 = icmp ult i32 %1826, %1820
  %1829 = icmp ult i32 %1826, %1825
  %1830 = or i1 %1828, %1829
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %14, align 1
  %1832 = and i32 %1826, 255
  %1833 = tail call i32 @llvm.ctpop.i32(i32 %1832)
  %1834 = trunc i32 %1833 to i8
  %1835 = and i8 %1834, 1
  %1836 = xor i8 %1835, 1
  store i8 %1836, i8* %21, align 1
  %1837 = xor i32 %1825, %1820
  %1838 = xor i32 %1837, %1826
  %1839 = lshr i32 %1838, 4
  %1840 = trunc i32 %1839 to i8
  %1841 = and i8 %1840, 1
  store i8 %1841, i8* %26, align 1
  %1842 = icmp eq i32 %1826, 0
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %29, align 1
  %1844 = lshr i32 %1826, 31
  %1845 = trunc i32 %1844 to i8
  store i8 %1845, i8* %32, align 1
  %1846 = lshr i32 %1820, 31
  %1847 = lshr i32 %1825, 31
  %1848 = xor i32 %1844, %1846
  %1849 = xor i32 %1844, %1847
  %1850 = add nuw nsw i32 %1848, %1849
  %1851 = icmp eq i32 %1850, 2
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %38, align 1
  %1853 = sext i32 %1826 to i64
  store i64 %1853, i64* %RCX.i871, align 8
  %1854 = shl nsw i64 %1853, 3
  %1855 = add i64 %1815, %1854
  %1856 = add i64 %1807, 45
  store i64 %1856, i64* %3, align 8
  %1857 = inttoptr i64 %1855 to i64*
  %1858 = load i64, i64* %1857, align 8
  store i64 %1858, i64* %RAX.i528, align 8
  store i64 %1816, i64* %RCX.i871, align 8
  %1859 = add i64 %1816, 148
  %1860 = add i64 %1807, 59
  store i64 %1860, i64* %3, align 8
  %1861 = inttoptr i64 %1859 to i32*
  %1862 = load i32, i32* %1861, align 4
  %1863 = zext i32 %1862 to i64
  store i64 %1863, i64* %RDX.i809, align 8
  %1864 = add i64 %1726, -8
  %1865 = add i64 %1807, 62
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i32*
  %1867 = load i32, i32* %1866, align 4
  %1868 = add i32 %1867, %1862
  %1869 = zext i32 %1868 to i64
  store i64 %1869, i64* %RDX.i809, align 8
  %1870 = icmp ult i32 %1868, %1862
  %1871 = icmp ult i32 %1868, %1867
  %1872 = or i1 %1870, %1871
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %14, align 1
  %1874 = and i32 %1868, 255
  %1875 = tail call i32 @llvm.ctpop.i32(i32 %1874)
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  %1878 = xor i8 %1877, 1
  store i8 %1878, i8* %21, align 1
  %1879 = xor i32 %1867, %1862
  %1880 = xor i32 %1879, %1868
  %1881 = lshr i32 %1880, 4
  %1882 = trunc i32 %1881 to i8
  %1883 = and i8 %1882, 1
  store i8 %1883, i8* %26, align 1
  %1884 = icmp eq i32 %1868, 0
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %29, align 1
  %1886 = lshr i32 %1868, 31
  %1887 = trunc i32 %1886 to i8
  store i8 %1887, i8* %32, align 1
  %1888 = lshr i32 %1862, 31
  %1889 = lshr i32 %1867, 31
  %1890 = xor i32 %1886, %1888
  %1891 = xor i32 %1886, %1889
  %1892 = add nuw nsw i32 %1890, %1891
  %1893 = icmp eq i32 %1892, 2
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %38, align 1
  %1895 = sext i32 %1868 to i64
  store i64 %1895, i64* %RCX.i871, align 8
  %1896 = shl nsw i64 %1895, 1
  %1897 = add i64 %1858, %1896
  %1898 = add i64 %1807, 69
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1897 to i16*
  %1900 = load i16, i16* %1899, align 2
  %1901 = sext i16 %1900 to i64
  %1902 = and i64 %1901, 4294967295
  store i64 %1902, i64* %RDX.i809, align 8
  %1903 = load i64, i64* %RBP.i, align 8
  %1904 = add i64 %1903, -16
  %1905 = sext i16 %1900 to i32
  %1906 = add i64 %1807, 72
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1904 to i32*
  store i32 %1905, i32* %1907, align 4
  %1908 = load i64, i64* %RBP.i, align 8
  %1909 = add i64 %1908, -12
  %1910 = load i64, i64* %3, align 8
  %1911 = add i64 %1910, 3
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1909 to i32*
  %1913 = load i32, i32* %1912, align 4
  %1914 = zext i32 %1913 to i64
  store i64 %1914, i64* %RDI.i338, align 8
  %1915 = add i64 %1908, -8
  %1916 = add i64 %1910, 6
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i32*
  %1918 = load i32, i32* %1917, align 4
  %1919 = zext i32 %1918 to i64
  store i64 %1919, i64* %RSI.i849, align 8
  %1920 = add i64 %1910, 9
  store i64 %1920, i64* %3, align 8
  %1921 = load i32, i32* %1912, align 4
  %1922 = zext i32 %1921 to i64
  store i64 %1922, i64* %RDX.i809, align 8
  %1923 = add i64 %1908, -36
  %1924 = add i64 %1910, 12
  store i64 %1924, i64* %3, align 8
  %1925 = inttoptr i64 %1923 to i32*
  %1926 = load i32, i32* %1925, align 4
  %1927 = add i32 %1926, %1921
  %1928 = zext i32 %1927 to i64
  store i64 %1928, i64* %RDX.i809, align 8
  %1929 = icmp ult i32 %1927, %1921
  %1930 = icmp ult i32 %1927, %1926
  %1931 = or i1 %1929, %1930
  %1932 = zext i1 %1931 to i8
  store i8 %1932, i8* %14, align 1
  %1933 = and i32 %1927, 255
  %1934 = tail call i32 @llvm.ctpop.i32(i32 %1933)
  %1935 = trunc i32 %1934 to i8
  %1936 = and i8 %1935, 1
  %1937 = xor i8 %1936, 1
  store i8 %1937, i8* %21, align 1
  %1938 = xor i32 %1926, %1921
  %1939 = xor i32 %1938, %1927
  %1940 = lshr i32 %1939, 4
  %1941 = trunc i32 %1940 to i8
  %1942 = and i8 %1941, 1
  store i8 %1942, i8* %26, align 1
  %1943 = icmp eq i32 %1927, 0
  %1944 = zext i1 %1943 to i8
  store i8 %1944, i8* %29, align 1
  %1945 = lshr i32 %1927, 31
  %1946 = trunc i32 %1945 to i8
  store i8 %1946, i8* %32, align 1
  %1947 = lshr i32 %1921, 31
  %1948 = lshr i32 %1926, 31
  %1949 = xor i32 %1945, %1947
  %1950 = xor i32 %1945, %1948
  %1951 = add nuw nsw i32 %1949, %1950
  %1952 = icmp eq i32 %1951, 2
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %38, align 1
  %1954 = add i64 %1910, 16
  store i64 %1954, i64* %3, align 8
  %1955 = load i32, i32* %1917, align 4
  %1956 = zext i32 %1955 to i64
  store i64 %1956, i64* %R8.i336, align 8
  %1957 = add i64 %1908, -40
  %1958 = add i64 %1910, 20
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1957 to i32*
  %1960 = load i32, i32* %1959, align 4
  %1961 = add i32 %1960, %1955
  %1962 = zext i32 %1961 to i64
  store i64 %1962, i64* %R8.i336, align 8
  %1963 = icmp ult i32 %1961, %1955
  %1964 = icmp ult i32 %1961, %1960
  %1965 = or i1 %1963, %1964
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %14, align 1
  %1967 = and i32 %1961, 255
  %1968 = tail call i32 @llvm.ctpop.i32(i32 %1967)
  %1969 = trunc i32 %1968 to i8
  %1970 = and i8 %1969, 1
  %1971 = xor i8 %1970, 1
  store i8 %1971, i8* %21, align 1
  %1972 = xor i32 %1960, %1955
  %1973 = xor i32 %1972, %1961
  %1974 = lshr i32 %1973, 4
  %1975 = trunc i32 %1974 to i8
  %1976 = and i8 %1975, 1
  store i8 %1976, i8* %26, align 1
  %1977 = icmp eq i32 %1961, 0
  %1978 = zext i1 %1977 to i8
  store i8 %1978, i8* %29, align 1
  %1979 = lshr i32 %1961, 31
  %1980 = trunc i32 %1979 to i8
  store i8 %1980, i8* %32, align 1
  %1981 = lshr i32 %1955, 31
  %1982 = lshr i32 %1960, 31
  %1983 = xor i32 %1979, %1981
  %1984 = xor i32 %1979, %1982
  %1985 = add nuw nsw i32 %1983, %1984
  %1986 = icmp eq i32 %1985, 2
  %1987 = zext i1 %1986 to i8
  store i8 %1987, i8* %38, align 1
  %1988 = load i64, i64* %RBP.i, align 8
  %1989 = add i64 %1988, -16
  %1990 = add i64 %1910, 24
  store i64 %1990, i64* %3, align 8
  %1991 = inttoptr i64 %1989 to i32*
  %1992 = load i32, i32* %1991, align 4
  %1993 = zext i32 %1992 to i64
  store i64 %1993, i64* %1584, align 8
  %1994 = add i64 %1988, -24
  %1995 = add i64 %1910, 28
  store i64 %1995, i64* %3, align 8
  %1996 = inttoptr i64 %1994 to i64*
  %1997 = load i64, i64* %1996, align 8
  store i64 %1997, i64* %RAX.i528, align 8
  %1998 = add i64 %1988, -4
  %1999 = add i64 %1910, 32
  store i64 %1999, i64* %3, align 8
  %2000 = inttoptr i64 %1998 to i32*
  %2001 = load i32, i32* %2000, align 4
  %2002 = sext i32 %2001 to i64
  store i64 %2002, i64* %RCX.i871, align 8
  %2003 = shl nsw i64 %2002, 2
  %2004 = add i64 %1997, 472
  %2005 = add i64 %2004, %2003
  %2006 = add i64 %1910, 40
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i32*
  %2008 = load i32, i32* %2007, align 4
  %2009 = zext i32 %2008 to i64
  store i64 %2009, i64* %1585, align 8
  store i64 %1962, i64* %RCX.i871, align 8
  store i64 %1993, i64* %R8.i336, align 8
  %2010 = load i32*, i32** %1586, align 8
  %2011 = add i64 %1910, 50
  store i64 %2011, i64* %3, align 8
  store i32 %2008, i32* %2010, align 4
  %2012 = load i64, i64* %3, align 8
  %2013 = add i64 %2012, 12778
  %2014 = add i64 %2012, 5
  %2015 = load i64, i64* %6, align 8
  %2016 = add i64 %2015, -8
  %2017 = inttoptr i64 %2016 to i64*
  store i64 %2014, i64* %2017, align 8
  store i64 %2016, i64* %6, align 8
  store i64 %2013, i64* %3, align 8
  %call2_4453f6 = tail call %struct.Memory* @sub_4485e0.writeMotionVector8x8(%struct.State* nonnull %0, i64 %2013, %struct.Memory* %1691)
  %2018 = load i64, i64* %RAX.i528, align 8
  %2019 = load i64, i64* %RBP.i, align 8
  %2020 = add i64 %2019, -28
  %2021 = load i64, i64* %3, align 8
  %2022 = add i64 %2021, 3
  store i64 %2022, i64* %3, align 8
  %2023 = trunc i64 %2018 to i32
  %2024 = inttoptr i64 %2020 to i32*
  %2025 = load i32, i32* %2024, align 4
  %2026 = add i32 %2025, %2023
  %2027 = zext i32 %2026 to i64
  store i64 %2027, i64* %RAX.i528, align 8
  %2028 = icmp ult i32 %2026, %2023
  %2029 = icmp ult i32 %2026, %2025
  %2030 = or i1 %2028, %2029
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %14, align 1
  %2032 = and i32 %2026, 255
  %2033 = tail call i32 @llvm.ctpop.i32(i32 %2032)
  %2034 = trunc i32 %2033 to i8
  %2035 = and i8 %2034, 1
  %2036 = xor i8 %2035, 1
  store i8 %2036, i8* %21, align 1
  %2037 = xor i32 %2025, %2023
  %2038 = xor i32 %2037, %2026
  %2039 = lshr i32 %2038, 4
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  store i8 %2041, i8* %26, align 1
  %2042 = icmp eq i32 %2026, 0
  %2043 = zext i1 %2042 to i8
  store i8 %2043, i8* %29, align 1
  %2044 = lshr i32 %2026, 31
  %2045 = trunc i32 %2044 to i8
  store i8 %2045, i8* %32, align 1
  %2046 = lshr i32 %2023, 31
  %2047 = lshr i32 %2025, 31
  %2048 = xor i32 %2044, %2046
  %2049 = xor i32 %2044, %2047
  %2050 = add nuw nsw i32 %2048, %2049
  %2051 = icmp eq i32 %2050, 2
  %2052 = zext i1 %2051 to i8
  store i8 %2052, i8* %38, align 1
  %2053 = add i64 %2021, 6
  store i64 %2053, i64* %3, align 8
  store i32 %2026, i32* %2024, align 4
  %.pre75 = load i64, i64* %3, align 8
  %.pre76 = load i64, i64* %RBP.i, align 8
  br label %block_.L_445401

block_.L_445401:                                  ; preds = %block_445350, %block_44537c, %block_.L_445366
  %2054 = phi i64 [ %1726, %block_.L_445366 ], [ %.pre76, %block_44537c ], [ %1726, %block_445350 ]
  %2055 = phi i64 [ %1807, %block_.L_445366 ], [ %.pre75, %block_44537c ], [ %1785, %block_445350 ]
  %MEMORY.16 = phi %struct.Memory* [ %1691, %block_.L_445366 ], [ %call2_4453f6, %block_44537c ], [ %1691, %block_445350 ]
  %2056 = add i64 %2054, -36
  %2057 = add i64 %2055, 8
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2056 to i32*
  %2059 = load i32, i32* %2058, align 4
  %2060 = zext i32 %2059 to i64
  store i64 %2060, i64* %RAX.i528, align 8
  %2061 = add i64 %2054, -12
  %2062 = add i64 %2055, 11
  store i64 %2062, i64* %3, align 8
  %2063 = inttoptr i64 %2061 to i32*
  %2064 = load i32, i32* %2063, align 4
  %2065 = add i32 %2064, %2059
  %2066 = zext i32 %2065 to i64
  store i64 %2066, i64* %RAX.i528, align 8
  %2067 = icmp ult i32 %2065, %2059
  %2068 = icmp ult i32 %2065, %2064
  %2069 = or i1 %2067, %2068
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %14, align 1
  %2071 = and i32 %2065, 255
  %2072 = tail call i32 @llvm.ctpop.i32(i32 %2071)
  %2073 = trunc i32 %2072 to i8
  %2074 = and i8 %2073, 1
  %2075 = xor i8 %2074, 1
  store i8 %2075, i8* %21, align 1
  %2076 = xor i32 %2064, %2059
  %2077 = xor i32 %2076, %2065
  %2078 = lshr i32 %2077, 4
  %2079 = trunc i32 %2078 to i8
  %2080 = and i8 %2079, 1
  store i8 %2080, i8* %26, align 1
  %2081 = icmp eq i32 %2065, 0
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %29, align 1
  %2083 = lshr i32 %2065, 31
  %2084 = trunc i32 %2083 to i8
  store i8 %2084, i8* %32, align 1
  %2085 = lshr i32 %2059, 31
  %2086 = lshr i32 %2064, 31
  %2087 = xor i32 %2083, %2085
  %2088 = xor i32 %2083, %2086
  %2089 = add nuw nsw i32 %2087, %2088
  %2090 = icmp eq i32 %2089, 2
  %2091 = zext i1 %2090 to i8
  store i8 %2091, i8* %38, align 1
  %2092 = add i64 %2055, 14
  store i64 %2092, i64* %3, align 8
  store i32 %2065, i32* %2063, align 4
  %2093 = load i64, i64* %3, align 8
  %2094 = add i64 %2093, -251
  store i64 %2094, i64* %3, align 8
  br label %block_.L_445314

block_.L_445414:                                  ; preds = %block_.L_445314
  %2095 = add i64 %1621, -40
  %2096 = add i64 %1649, 8
  store i64 %2096, i64* %3, align 8
  %2097 = inttoptr i64 %2095 to i32*
  %2098 = load i32, i32* %2097, align 4
  %2099 = zext i32 %2098 to i64
  store i64 %2099, i64* %RAX.i528, align 8
  %2100 = add i64 %1621, -8
  %2101 = add i64 %1649, 11
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2100 to i32*
  %2103 = load i32, i32* %2102, align 4
  %2104 = add i32 %2103, %2098
  %2105 = zext i32 %2104 to i64
  store i64 %2105, i64* %RAX.i528, align 8
  %2106 = icmp ult i32 %2104, %2098
  %2107 = icmp ult i32 %2104, %2103
  %2108 = or i1 %2106, %2107
  %2109 = zext i1 %2108 to i8
  store i8 %2109, i8* %14, align 1
  %2110 = and i32 %2104, 255
  %2111 = tail call i32 @llvm.ctpop.i32(i32 %2110)
  %2112 = trunc i32 %2111 to i8
  %2113 = and i8 %2112, 1
  %2114 = xor i8 %2113, 1
  store i8 %2114, i8* %21, align 1
  %2115 = xor i32 %2103, %2098
  %2116 = xor i32 %2115, %2104
  %2117 = lshr i32 %2116, 4
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  store i8 %2119, i8* %26, align 1
  %2120 = icmp eq i32 %2104, 0
  %2121 = zext i1 %2120 to i8
  store i8 %2121, i8* %29, align 1
  %2122 = lshr i32 %2104, 31
  %2123 = trunc i32 %2122 to i8
  store i8 %2123, i8* %32, align 1
  %2124 = lshr i32 %2098, 31
  %2125 = lshr i32 %2103, 31
  %2126 = xor i32 %2122, %2124
  %2127 = xor i32 %2122, %2125
  %2128 = add nuw nsw i32 %2126, %2127
  %2129 = icmp eq i32 %2128, 2
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %38, align 1
  %2131 = add i64 %1649, 14
  store i64 %2131, i64* %3, align 8
  store i32 %2104, i32* %2102, align 4
  %2132 = load i64, i64* %3, align 8
  %2133 = add i64 %2132, -287
  store i64 %2133, i64* %3, align 8
  br label %block_.L_445303

block_.L_445427:                                  ; preds = %block_.L_445303
  %2134 = add i64 %1616, 5
  store i64 %2134, i64* %3, align 8
  br label %block_.L_44542c

block_.L_44542c:                                  ; preds = %block_.L_445427, %block_4452ee, %block_4452e0, %block_4452d2, %block_.L_4452c4
  %2135 = phi i64 [ %1506, %block_.L_4452c4 ], [ %1534, %block_4452d2 ], [ %1562, %block_4452e0 ], [ %1578, %block_4452ee ], [ %2134, %block_.L_445427 ]
  %2136 = phi i64 [ %1476, %block_.L_4452c4 ], [ %1476, %block_4452d2 ], [ %1476, %block_4452e0 ], [ %1476, %block_4452ee ], [ %1588, %block_.L_445427 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.12, %block_.L_4452c4 ], [ %MEMORY.12, %block_4452d2 ], [ %MEMORY.12, %block_4452e0 ], [ %MEMORY.12, %block_4452ee ], [ %MEMORY.13, %block_.L_445427 ]
  %2137 = add i64 %2136, -24
  %2138 = add i64 %2135, 4
  store i64 %2138, i64* %3, align 8
  %2139 = inttoptr i64 %2137 to i64*
  %2140 = load i64, i64* %2139, align 8
  store i64 %2140, i64* %RAX.i528, align 8
  %2141 = add i64 %2140, 72
  %2142 = add i64 %2135, 8
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2141 to i32*
  %2144 = load i32, i32* %2143, align 4
  %2145 = add i32 %2144, -9
  %2146 = icmp ult i32 %2144, 9
  %2147 = zext i1 %2146 to i8
  store i8 %2147, i8* %14, align 1
  %2148 = and i32 %2145, 255
  %2149 = tail call i32 @llvm.ctpop.i32(i32 %2148)
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  %2152 = xor i8 %2151, 1
  store i8 %2152, i8* %21, align 1
  %2153 = xor i32 %2145, %2144
  %2154 = lshr i32 %2153, 4
  %2155 = trunc i32 %2154 to i8
  %2156 = and i8 %2155, 1
  store i8 %2156, i8* %26, align 1
  %2157 = icmp eq i32 %2145, 0
  %2158 = zext i1 %2157 to i8
  store i8 %2158, i8* %29, align 1
  %2159 = lshr i32 %2145, 31
  %2160 = trunc i32 %2159 to i8
  store i8 %2160, i8* %32, align 1
  %2161 = lshr i32 %2144, 31
  %2162 = xor i32 %2159, %2161
  %2163 = add nuw nsw i32 %2162, %2161
  %2164 = icmp eq i32 %2163, 2
  %2165 = zext i1 %2164 to i8
  store i8 %2165, i8* %38, align 1
  %.v97 = select i1 %2157, i64 374, i64 14
  %2166 = add i64 %2135, %.v97
  store i64 %2166, i64* %3, align 8
  br i1 %2157, label %block_.L_4455a2, label %block_44543a

block_44543a:                                     ; preds = %block_.L_44542c
  %2167 = add i64 %2166, 4
  store i64 %2167, i64* %3, align 8
  %2168 = load i64, i64* %2139, align 8
  store i64 %2168, i64* %RAX.i528, align 8
  %2169 = add i64 %2168, 72
  %2170 = add i64 %2166, 8
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2169 to i32*
  %2172 = load i32, i32* %2171, align 4
  %2173 = add i32 %2172, -10
  %2174 = icmp ult i32 %2172, 10
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %14, align 1
  %2176 = and i32 %2173, 255
  %2177 = tail call i32 @llvm.ctpop.i32(i32 %2176)
  %2178 = trunc i32 %2177 to i8
  %2179 = and i8 %2178, 1
  %2180 = xor i8 %2179, 1
  store i8 %2180, i8* %21, align 1
  %2181 = xor i32 %2173, %2172
  %2182 = lshr i32 %2181, 4
  %2183 = trunc i32 %2182 to i8
  %2184 = and i8 %2183, 1
  store i8 %2184, i8* %26, align 1
  %2185 = icmp eq i32 %2173, 0
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %29, align 1
  %2187 = lshr i32 %2173, 31
  %2188 = trunc i32 %2187 to i8
  store i8 %2188, i8* %32, align 1
  %2189 = lshr i32 %2172, 31
  %2190 = xor i32 %2187, %2189
  %2191 = add nuw nsw i32 %2190, %2189
  %2192 = icmp eq i32 %2191, 2
  %2193 = zext i1 %2192 to i8
  store i8 %2193, i8* %38, align 1
  %.v98 = select i1 %2185, i64 360, i64 14
  %2194 = add i64 %2166, %.v98
  store i64 %2194, i64* %3, align 8
  br i1 %2185, label %block_.L_4455a2, label %block_445448

block_445448:                                     ; preds = %block_44543a
  %2195 = add i64 %2194, 4
  store i64 %2195, i64* %3, align 8
  %2196 = load i64, i64* %2139, align 8
  store i64 %2196, i64* %RAX.i528, align 8
  %2197 = add i64 %2196, 72
  %2198 = add i64 %2194, 8
  store i64 %2198, i64* %3, align 8
  %2199 = inttoptr i64 %2197 to i32*
  %2200 = load i32, i32* %2199, align 4
  %2201 = add i32 %2200, -13
  %2202 = icmp ult i32 %2200, 13
  %2203 = zext i1 %2202 to i8
  store i8 %2203, i8* %14, align 1
  %2204 = and i32 %2201, 255
  %2205 = tail call i32 @llvm.ctpop.i32(i32 %2204)
  %2206 = trunc i32 %2205 to i8
  %2207 = and i8 %2206, 1
  %2208 = xor i8 %2207, 1
  store i8 %2208, i8* %21, align 1
  %2209 = xor i32 %2201, %2200
  %2210 = lshr i32 %2209, 4
  %2211 = trunc i32 %2210 to i8
  %2212 = and i8 %2211, 1
  store i8 %2212, i8* %26, align 1
  %2213 = icmp eq i32 %2201, 0
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %29, align 1
  %2215 = lshr i32 %2201, 31
  %2216 = trunc i32 %2215 to i8
  store i8 %2216, i8* %32, align 1
  %2217 = lshr i32 %2200, 31
  %2218 = xor i32 %2215, %2217
  %2219 = add nuw nsw i32 %2218, %2217
  %2220 = icmp eq i32 %2219, 2
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %38, align 1
  %.v99 = select i1 %2213, i64 346, i64 14
  %2222 = add i64 %2194, %.v99
  store i64 %2222, i64* %3, align 8
  br i1 %2213, label %block_.L_4455a2, label %block_445456

block_445456:                                     ; preds = %block_445448
  %2223 = add i64 %2222, 4
  store i64 %2223, i64* %3, align 8
  %2224 = load i64, i64* %2139, align 8
  store i64 %2224, i64* %RAX.i528, align 8
  %2225 = add i64 %2224, 72
  %2226 = add i64 %2222, 8
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2225 to i32*
  %2228 = load i32, i32* %2227, align 4
  store i8 0, i8* %14, align 1
  %2229 = and i32 %2228, 255
  %2230 = tail call i32 @llvm.ctpop.i32(i32 %2229)
  %2231 = trunc i32 %2230 to i8
  %2232 = and i8 %2231, 1
  %2233 = xor i8 %2232, 1
  store i8 %2233, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2234 = icmp eq i32 %2228, 0
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %29, align 1
  %2236 = lshr i32 %2228, 31
  %2237 = trunc i32 %2236 to i8
  store i8 %2237, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v100 = select i1 %2234, i64 332, i64 14
  %2238 = add i64 %2222, %.v100
  store i64 %2238, i64* %3, align 8
  br i1 %2234, label %block_.L_4455a2, label %block_445464

block_445464:                                     ; preds = %block_445456
  %2239 = add i64 %2136, -32
  %2240 = add i64 %2238, 4
  store i64 %2240, i64* %3, align 8
  %2241 = inttoptr i64 %2239 to i32*
  %2242 = load i32, i32* %2241, align 4
  store i8 0, i8* %14, align 1
  %2243 = and i32 %2242, 255
  %2244 = tail call i32 @llvm.ctpop.i32(i32 %2243)
  %2245 = trunc i32 %2244 to i8
  %2246 = and i8 %2245, 1
  %2247 = xor i8 %2246, 1
  store i8 %2247, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2248 = icmp eq i32 %2242, 0
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %29, align 1
  %2250 = lshr i32 %2242, 31
  %2251 = trunc i32 %2250 to i8
  store i8 %2251, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v101 = select i1 %2248, i64 318, i64 10
  %2252 = add i64 %2238, %.v101
  store i64 %2252, i64* %3, align 8
  br i1 %2248, label %block_.L_4455a2, label %block_44546e

block_44546e:                                     ; preds = %block_445464
  %2253 = add i64 %2136, -8
  %2254 = add i64 %2252, 7
  store i64 %2254, i64* %3, align 8
  %2255 = inttoptr i64 %2253 to i32*
  store i32 0, i32* %2255, align 4
  %EDX.i150 = bitcast %union.anon* %95 to i32*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI.i134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8.i132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %2260 = bitcast i64* %6 to i32**
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_445475

block_.L_445475:                                  ; preds = %block_.L_44558a, %block_44546e
  %2261 = phi i64 [ %.pre77, %block_44546e ], [ %2820, %block_.L_44558a ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.17, %block_44546e ], [ %MEMORY.19, %block_.L_44558a ]
  %2262 = load i64, i64* %RBP.i, align 8
  %2263 = add i64 %2262, -8
  %2264 = add i64 %2261, 4
  store i64 %2264, i64* %3, align 8
  %2265 = inttoptr i64 %2263 to i32*
  %2266 = load i32, i32* %2265, align 4
  %2267 = add i32 %2266, -4
  %2268 = icmp ult i32 %2266, 4
  %2269 = zext i1 %2268 to i8
  store i8 %2269, i8* %14, align 1
  %2270 = and i32 %2267, 255
  %2271 = tail call i32 @llvm.ctpop.i32(i32 %2270)
  %2272 = trunc i32 %2271 to i8
  %2273 = and i8 %2272, 1
  %2274 = xor i8 %2273, 1
  store i8 %2274, i8* %21, align 1
  %2275 = xor i32 %2267, %2266
  %2276 = lshr i32 %2275, 4
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  store i8 %2278, i8* %26, align 1
  %2279 = icmp eq i32 %2267, 0
  %2280 = zext i1 %2279 to i8
  store i8 %2280, i8* %29, align 1
  %2281 = lshr i32 %2267, 31
  %2282 = trunc i32 %2281 to i8
  store i8 %2282, i8* %32, align 1
  %2283 = lshr i32 %2266, 31
  %2284 = xor i32 %2281, %2283
  %2285 = add nuw nsw i32 %2284, %2283
  %2286 = icmp eq i32 %2285, 2
  %2287 = zext i1 %2286 to i8
  store i8 %2287, i8* %38, align 1
  %2288 = icmp ne i8 %2282, 0
  %2289 = xor i1 %2288, %2286
  %.v102 = select i1 %2289, i64 10, i64 296
  %2290 = add i64 %2261, %.v102
  store i64 %2290, i64* %3, align 8
  br i1 %2289, label %block_44547f, label %block_.L_44559d

block_44547f:                                     ; preds = %block_.L_445475
  %2291 = add i64 %2262, -12
  %2292 = add i64 %2290, 7
  store i64 %2292, i64* %3, align 8
  %2293 = inttoptr i64 %2291 to i32*
  store i32 0, i32* %2293, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_445486

block_.L_445486:                                  ; preds = %block_.L_445577, %block_44547f
  %2294 = phi i64 [ %.pre78, %block_44547f ], [ %2781, %block_.L_445577 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.18, %block_44547f ], [ %MEMORY.21, %block_.L_445577 ]
  %2295 = load i64, i64* %RBP.i, align 8
  %2296 = add i64 %2295, -12
  %2297 = add i64 %2294, 4
  store i64 %2297, i64* %3, align 8
  %2298 = inttoptr i64 %2296 to i32*
  %2299 = load i32, i32* %2298, align 4
  %2300 = add i32 %2299, -4
  %2301 = icmp ult i32 %2299, 4
  %2302 = zext i1 %2301 to i8
  store i8 %2302, i8* %14, align 1
  %2303 = and i32 %2300, 255
  %2304 = tail call i32 @llvm.ctpop.i32(i32 %2303)
  %2305 = trunc i32 %2304 to i8
  %2306 = and i8 %2305, 1
  %2307 = xor i8 %2306, 1
  store i8 %2307, i8* %21, align 1
  %2308 = xor i32 %2300, %2299
  %2309 = lshr i32 %2308, 4
  %2310 = trunc i32 %2309 to i8
  %2311 = and i8 %2310, 1
  store i8 %2311, i8* %26, align 1
  %2312 = icmp eq i32 %2300, 0
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %29, align 1
  %2314 = lshr i32 %2300, 31
  %2315 = trunc i32 %2314 to i8
  store i8 %2315, i8* %32, align 1
  %2316 = lshr i32 %2299, 31
  %2317 = xor i32 %2314, %2316
  %2318 = add nuw nsw i32 %2317, %2316
  %2319 = icmp eq i32 %2318, 2
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %38, align 1
  %2321 = icmp ne i8 %2315, 0
  %2322 = xor i1 %2321, %2319
  %.v103 = select i1 %2322, i64 10, i64 260
  %2323 = add i64 %2294, %.v103
  %2324 = add i64 %2323, 5
  store i64 %2324, i64* %3, align 8
  br i1 %2322, label %block_445490, label %block_.L_44558a

block_445490:                                     ; preds = %block_.L_445486
  store i64 2, i64* %RAX.i528, align 8
  %2325 = add i64 %2295, -8
  %2326 = add i64 %2323, 8
  store i64 %2326, i64* %3, align 8
  %2327 = inttoptr i64 %2325 to i32*
  %2328 = load i32, i32* %2327, align 4
  %2329 = zext i32 %2328 to i64
  store i64 %2329, i64* %RCX.i871, align 8
  %2330 = add i64 %2323, 11
  store i64 %2330, i64* %3, align 8
  %2331 = load i32, i32* %2298, align 4
  %2332 = zext i32 %2331 to i64
  store i64 %2332, i64* %RDX.i809, align 8
  %2333 = add i64 %2295, -84
  %2334 = add i64 %2323, 14
  store i64 %2334, i64* %3, align 8
  %2335 = inttoptr i64 %2333 to i32*
  store i32 2, i32* %2335, align 4
  %2336 = load i32, i32* %EDX.i150, align 4
  %2337 = zext i32 %2336 to i64
  %2338 = load i64, i64* %3, align 8
  store i64 %2337, i64* %RAX.i528, align 8
  %2339 = sext i32 %2336 to i64
  %2340 = lshr i64 %2339, 32
  store i64 %2340, i64* %2256, align 8
  %2341 = load i64, i64* %RBP.i, align 8
  %2342 = add i64 %2341, -84
  %2343 = add i64 %2338, 6
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i32*
  %2345 = load i32, i32* %2344, align 4
  %2346 = zext i32 %2345 to i64
  store i64 %2346, i64* %RSI.i849, align 8
  %2347 = add i64 %2338, 8
  store i64 %2347, i64* %3, align 8
  %2348 = sext i32 %2345 to i64
  %2349 = shl nuw i64 %2340, 32
  %2350 = or i64 %2349, %2337
  %2351 = sdiv i64 %2350, %2348
  %2352 = shl i64 %2351, 32
  %2353 = ashr exact i64 %2352, 32
  %2354 = icmp eq i64 %2351, %2353
  br i1 %2354, label %2357, label %2355

; <label>:2355:                                   ; preds = %block_445490
  %2356 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2347, %struct.Memory* %MEMORY.19)
  %.pre79 = load i32, i32* %EAX.i812.pre-phi, align 4
  %.pre80 = load i64, i64* %3, align 8
  %.pre81 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:2357:                                   ; preds = %block_445490
  %2358 = srem i64 %2350, %2348
  %2359 = and i64 %2351, 4294967295
  store i64 %2359, i64* %RAX.i528, align 8
  %2360 = and i64 %2358, 4294967295
  store i64 %2360, i64* %RDX.i809, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2361 = trunc i64 %2351 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %2357, %2355
  %2362 = phi i64 [ %.pre81, %2355 ], [ %2341, %2357 ]
  %2363 = phi i64 [ %.pre80, %2355 ], [ %2347, %2357 ]
  %2364 = phi i32 [ %.pre79, %2355 ], [ %2361, %2357 ]
  %2365 = phi %struct.Memory* [ %2356, %2355 ], [ %MEMORY.19, %2357 ]
  %2366 = load i64, i64* %RCX.i871, align 8
  %2367 = zext i32 %2364 to i64
  %2368 = trunc i64 %2366 to i32
  %2369 = add i32 %2364, %2368
  %2370 = zext i32 %2369 to i64
  store i64 %2370, i64* %RCX.i871, align 8
  %2371 = icmp ult i32 %2369, %2368
  %2372 = icmp ult i32 %2369, %2364
  %2373 = or i1 %2371, %2372
  %2374 = zext i1 %2373 to i8
  store i8 %2374, i8* %14, align 1
  %2375 = and i32 %2369, 255
  %2376 = tail call i32 @llvm.ctpop.i32(i32 %2375)
  %2377 = trunc i32 %2376 to i8
  %2378 = and i8 %2377, 1
  %2379 = xor i8 %2378, 1
  store i8 %2379, i8* %21, align 1
  %2380 = xor i64 %2367, %2366
  %2381 = trunc i64 %2380 to i32
  %2382 = xor i32 %2381, %2369
  %2383 = lshr i32 %2382, 4
  %2384 = trunc i32 %2383 to i8
  %2385 = and i8 %2384, 1
  store i8 %2385, i8* %26, align 1
  %2386 = icmp eq i32 %2369, 0
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %29, align 1
  %2388 = lshr i32 %2369, 31
  %2389 = trunc i32 %2388 to i8
  store i8 %2389, i8* %32, align 1
  %2390 = lshr i32 %2368, 31
  %2391 = lshr i32 %2364, 31
  %2392 = xor i32 %2388, %2390
  %2393 = xor i32 %2388, %2391
  %2394 = add nuw nsw i32 %2392, %2393
  %2395 = icmp eq i32 %2394, 2
  %2396 = zext i1 %2395 to i8
  store i8 %2396, i8* %38, align 1
  %2397 = add i64 %2362, -4
  %2398 = add i64 %2363, 5
  store i64 %2398, i64* %3, align 8
  %2399 = inttoptr i64 %2397 to i32*
  store i32 %2369, i32* %2399, align 4
  %2400 = load i64, i64* %RBP.i, align 8
  %2401 = add i64 %2400, -24
  %2402 = load i64, i64* %3, align 8
  %2403 = add i64 %2402, 4
  store i64 %2403, i64* %3, align 8
  %2404 = inttoptr i64 %2401 to i64*
  %2405 = load i64, i64* %2404, align 8
  store i64 %2405, i64* %RDI.i134, align 8
  %2406 = add i64 %2400, -4
  %2407 = add i64 %2402, 8
  store i64 %2407, i64* %3, align 8
  %2408 = inttoptr i64 %2406 to i32*
  %2409 = load i32, i32* %2408, align 4
  %2410 = sext i32 %2409 to i64
  store i64 %2410, i64* %R8.i132, align 8
  %2411 = shl nsw i64 %2410, 2
  %2412 = add i64 %2405, 488
  %2413 = add i64 %2412, %2411
  %2414 = add i64 %2402, 17
  store i64 %2414, i64* %3, align 8
  %2415 = inttoptr i64 %2413 to i32*
  %2416 = load i32, i32* %2415, align 4
  %2417 = add i32 %2416, -1
  %2418 = icmp eq i32 %2416, 0
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %14, align 1
  %2420 = and i32 %2417, 255
  %2421 = tail call i32 @llvm.ctpop.i32(i32 %2420)
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  %2424 = xor i8 %2423, 1
  store i8 %2424, i8* %21, align 1
  %2425 = xor i32 %2417, %2416
  %2426 = lshr i32 %2425, 4
  %2427 = trunc i32 %2426 to i8
  %2428 = and i8 %2427, 1
  store i8 %2428, i8* %26, align 1
  %2429 = icmp eq i32 %2417, 0
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %29, align 1
  %2431 = lshr i32 %2417, 31
  %2432 = trunc i32 %2431 to i8
  store i8 %2432, i8* %32, align 1
  %2433 = lshr i32 %2416, 31
  %2434 = xor i32 %2431, %2433
  %2435 = add nuw nsw i32 %2434, %2433
  %2436 = icmp eq i32 %2435, 2
  %2437 = zext i1 %2436 to i8
  store i8 %2437, i8* %38, align 1
  %.v104 = select i1 %2429, i64 45, i64 23
  %2438 = add i64 %2402, %.v104
  store i64 %2438, i64* %3, align 8
  br i1 %2429, label %block_.L_4454d8, label %block_4454c2

block_4454c2:                                     ; preds = %routine_idivl__esi.exit
  %2439 = add i64 %2438, 4
  store i64 %2439, i64* %3, align 8
  %2440 = load i64, i64* %2404, align 8
  store i64 %2440, i64* %RAX.i528, align 8
  %2441 = add i64 %2438, 8
  store i64 %2441, i64* %3, align 8
  %2442 = load i32, i32* %2408, align 4
  %2443 = sext i32 %2442 to i64
  store i64 %2443, i64* %RCX.i871, align 8
  %2444 = shl nsw i64 %2443, 2
  %2445 = add i64 %2440, 488
  %2446 = add i64 %2445, %2444
  %2447 = add i64 %2438, 16
  store i64 %2447, i64* %3, align 8
  %2448 = inttoptr i64 %2446 to i32*
  %2449 = load i32, i32* %2448, align 4
  %2450 = add i32 %2449, -2
  %2451 = icmp ult i32 %2449, 2
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %14, align 1
  %2453 = and i32 %2450, 255
  %2454 = tail call i32 @llvm.ctpop.i32(i32 %2453)
  %2455 = trunc i32 %2454 to i8
  %2456 = and i8 %2455, 1
  %2457 = xor i8 %2456, 1
  store i8 %2457, i8* %21, align 1
  %2458 = xor i32 %2450, %2449
  %2459 = lshr i32 %2458, 4
  %2460 = trunc i32 %2459 to i8
  %2461 = and i8 %2460, 1
  store i8 %2461, i8* %26, align 1
  %2462 = icmp eq i32 %2450, 0
  %2463 = zext i1 %2462 to i8
  store i8 %2463, i8* %29, align 1
  %2464 = lshr i32 %2450, 31
  %2465 = trunc i32 %2464 to i8
  store i8 %2465, i8* %32, align 1
  %2466 = lshr i32 %2449, 31
  %2467 = xor i32 %2464, %2466
  %2468 = add nuw nsw i32 %2467, %2466
  %2469 = icmp eq i32 %2468, 2
  %2470 = zext i1 %2469 to i8
  store i8 %2470, i8* %38, align 1
  %.v105 = select i1 %2462, i64 22, i64 181
  %2471 = add i64 %2438, %.v105
  store i64 %2471, i64* %3, align 8
  br i1 %2462, label %block_.L_4454d8, label %block_.L_445577

block_.L_4454d8:                                  ; preds = %block_4454c2, %routine_idivl__esi.exit
  %2472 = phi i64 [ %2471, %block_4454c2 ], [ %2438, %routine_idivl__esi.exit ]
  %2473 = add i64 %2472, 4
  store i64 %2473, i64* %3, align 8
  %2474 = load i64, i64* %2404, align 8
  store i64 %2474, i64* %RAX.i528, align 8
  %2475 = add i64 %2472, 8
  store i64 %2475, i64* %3, align 8
  %2476 = load i32, i32* %2408, align 4
  %2477 = sext i32 %2476 to i64
  store i64 %2477, i64* %RCX.i871, align 8
  %2478 = shl nsw i64 %2477, 2
  %2479 = add i64 %2474, 472
  %2480 = add i64 %2479, %2478
  %2481 = add i64 %2472, 16
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2480 to i32*
  %2483 = load i32, i32* %2482, align 4
  store i8 0, i8* %14, align 1
  %2484 = and i32 %2483, 255
  %2485 = tail call i32 @llvm.ctpop.i32(i32 %2484)
  %2486 = trunc i32 %2485 to i8
  %2487 = and i8 %2486, 1
  %2488 = xor i8 %2487, 1
  store i8 %2488, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2489 = icmp eq i32 %2483, 0
  %2490 = zext i1 %2489 to i8
  store i8 %2490, i8* %29, align 1
  %2491 = lshr i32 %2483, 31
  %2492 = trunc i32 %2491 to i8
  store i8 %2492, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v106 = select i1 %2489, i64 159, i64 22
  %2493 = add i64 %2472, %.v106
  store i64 %2493, i64* %3, align 8
  br i1 %2489, label %block_.L_445577, label %block_4454ee

block_4454ee:                                     ; preds = %block_.L_4454d8
  store i64 1, i64* %2257, align 8
  %2494 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %2494, i64* %RAX.i528, align 8
  %2495 = add i64 %2494, 6480
  %2496 = add i64 %2493, 21
  store i64 %2496, i64* %3, align 8
  %2497 = inttoptr i64 %2495 to i64*
  %2498 = load i64, i64* %2497, align 8
  store i64 %2498, i64* %RAX.i528, align 8
  %2499 = add i64 %2498, 8
  %2500 = add i64 %2493, 25
  store i64 %2500, i64* %3, align 8
  %2501 = inttoptr i64 %2499 to i64*
  %2502 = load i64, i64* %2501, align 8
  store i64 %2502, i64* %RAX.i528, align 8
  %2503 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2503, i64* %RCX.i871, align 8
  %2504 = add i64 %2503, 144
  %2505 = add i64 %2493, 39
  store i64 %2505, i64* %3, align 8
  %2506 = inttoptr i64 %2504 to i32*
  %2507 = load i32, i32* %2506, align 4
  %2508 = zext i32 %2507 to i64
  store i64 %2508, i64* %RDX.i809, align 8
  %2509 = add i64 %2400, -12
  %2510 = add i64 %2493, 42
  store i64 %2510, i64* %3, align 8
  %2511 = inttoptr i64 %2509 to i32*
  %2512 = load i32, i32* %2511, align 4
  %2513 = add i32 %2512, %2507
  %2514 = zext i32 %2513 to i64
  store i64 %2514, i64* %RDX.i809, align 8
  %2515 = icmp ult i32 %2513, %2507
  %2516 = icmp ult i32 %2513, %2512
  %2517 = or i1 %2515, %2516
  %2518 = zext i1 %2517 to i8
  store i8 %2518, i8* %14, align 1
  %2519 = and i32 %2513, 255
  %2520 = tail call i32 @llvm.ctpop.i32(i32 %2519)
  %2521 = trunc i32 %2520 to i8
  %2522 = and i8 %2521, 1
  %2523 = xor i8 %2522, 1
  store i8 %2523, i8* %21, align 1
  %2524 = xor i32 %2512, %2507
  %2525 = xor i32 %2524, %2513
  %2526 = lshr i32 %2525, 4
  %2527 = trunc i32 %2526 to i8
  %2528 = and i8 %2527, 1
  store i8 %2528, i8* %26, align 1
  %2529 = icmp eq i32 %2513, 0
  %2530 = zext i1 %2529 to i8
  store i8 %2530, i8* %29, align 1
  %2531 = lshr i32 %2513, 31
  %2532 = trunc i32 %2531 to i8
  store i8 %2532, i8* %32, align 1
  %2533 = lshr i32 %2507, 31
  %2534 = lshr i32 %2512, 31
  %2535 = xor i32 %2531, %2533
  %2536 = xor i32 %2531, %2534
  %2537 = add nuw nsw i32 %2535, %2536
  %2538 = icmp eq i32 %2537, 2
  %2539 = zext i1 %2538 to i8
  store i8 %2539, i8* %38, align 1
  %2540 = sext i32 %2513 to i64
  store i64 %2540, i64* %RCX.i871, align 8
  %2541 = shl nsw i64 %2540, 3
  %2542 = add i64 %2502, %2541
  %2543 = add i64 %2493, 49
  store i64 %2543, i64* %3, align 8
  %2544 = inttoptr i64 %2542 to i64*
  %2545 = load i64, i64* %2544, align 8
  store i64 %2545, i64* %RAX.i528, align 8
  store i64 %2503, i64* %RCX.i871, align 8
  %2546 = add i64 %2503, 148
  %2547 = add i64 %2493, 63
  store i64 %2547, i64* %3, align 8
  %2548 = inttoptr i64 %2546 to i32*
  %2549 = load i32, i32* %2548, align 4
  %2550 = zext i32 %2549 to i64
  store i64 %2550, i64* %RDX.i809, align 8
  %2551 = add i64 %2400, -8
  %2552 = add i64 %2493, 66
  store i64 %2552, i64* %3, align 8
  %2553 = inttoptr i64 %2551 to i32*
  %2554 = load i32, i32* %2553, align 4
  %2555 = add i32 %2554, %2549
  %2556 = zext i32 %2555 to i64
  store i64 %2556, i64* %RDX.i809, align 8
  %2557 = icmp ult i32 %2555, %2549
  %2558 = icmp ult i32 %2555, %2554
  %2559 = or i1 %2557, %2558
  %2560 = zext i1 %2559 to i8
  store i8 %2560, i8* %14, align 1
  %2561 = and i32 %2555, 255
  %2562 = tail call i32 @llvm.ctpop.i32(i32 %2561)
  %2563 = trunc i32 %2562 to i8
  %2564 = and i8 %2563, 1
  %2565 = xor i8 %2564, 1
  store i8 %2565, i8* %21, align 1
  %2566 = xor i32 %2554, %2549
  %2567 = xor i32 %2566, %2555
  %2568 = lshr i32 %2567, 4
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  store i8 %2570, i8* %26, align 1
  %2571 = icmp eq i32 %2555, 0
  %2572 = zext i1 %2571 to i8
  store i8 %2572, i8* %29, align 1
  %2573 = lshr i32 %2555, 31
  %2574 = trunc i32 %2573 to i8
  store i8 %2574, i8* %32, align 1
  %2575 = lshr i32 %2549, 31
  %2576 = lshr i32 %2554, 31
  %2577 = xor i32 %2573, %2575
  %2578 = xor i32 %2573, %2576
  %2579 = add nuw nsw i32 %2577, %2578
  %2580 = icmp eq i32 %2579, 2
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %38, align 1
  %2582 = sext i32 %2555 to i64
  store i64 %2582, i64* %RCX.i871, align 8
  %2583 = shl nsw i64 %2582, 1
  %2584 = add i64 %2545, %2583
  %2585 = add i64 %2493, 73
  store i64 %2585, i64* %3, align 8
  %2586 = inttoptr i64 %2584 to i16*
  %2587 = load i16, i16* %2586, align 2
  %2588 = sext i16 %2587 to i64
  %2589 = and i64 %2588, 4294967295
  store i64 %2589, i64* %RDX.i809, align 8
  %2590 = load i64, i64* %RBP.i, align 8
  %2591 = add i64 %2590, -16
  %2592 = sext i16 %2587 to i32
  %2593 = add i64 %2493, 76
  store i64 %2593, i64* %3, align 8
  %2594 = inttoptr i64 %2591 to i32*
  store i32 %2592, i32* %2594, align 4
  %2595 = load i64, i64* %RBP.i, align 8
  %2596 = add i64 %2595, -12
  %2597 = load i64, i64* %3, align 8
  %2598 = add i64 %2597, 3
  store i64 %2598, i64* %3, align 8
  %2599 = inttoptr i64 %2596 to i32*
  %2600 = load i32, i32* %2599, align 4
  %2601 = zext i32 %2600 to i64
  store i64 %2601, i64* %RDI.i134, align 8
  %2602 = add i64 %2595, -8
  %2603 = add i64 %2597, 6
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2602 to i32*
  %2605 = load i32, i32* %2604, align 4
  %2606 = zext i32 %2605 to i64
  store i64 %2606, i64* %RSI.i849, align 8
  %2607 = add i64 %2597, 9
  store i64 %2607, i64* %3, align 8
  %2608 = load i32, i32* %2599, align 4
  %2609 = zext i32 %2608 to i64
  store i64 %2609, i64* %RDX.i809, align 8
  %2610 = add i64 %2595, -36
  %2611 = add i64 %2597, 12
  store i64 %2611, i64* %3, align 8
  %2612 = inttoptr i64 %2610 to i32*
  %2613 = load i32, i32* %2612, align 4
  %2614 = add i32 %2613, %2608
  %2615 = zext i32 %2614 to i64
  store i64 %2615, i64* %RDX.i809, align 8
  %2616 = icmp ult i32 %2614, %2608
  %2617 = icmp ult i32 %2614, %2613
  %2618 = or i1 %2616, %2617
  %2619 = zext i1 %2618 to i8
  store i8 %2619, i8* %14, align 1
  %2620 = and i32 %2614, 255
  %2621 = tail call i32 @llvm.ctpop.i32(i32 %2620)
  %2622 = trunc i32 %2621 to i8
  %2623 = and i8 %2622, 1
  %2624 = xor i8 %2623, 1
  store i8 %2624, i8* %21, align 1
  %2625 = xor i32 %2613, %2608
  %2626 = xor i32 %2625, %2614
  %2627 = lshr i32 %2626, 4
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  store i8 %2629, i8* %26, align 1
  %2630 = icmp eq i32 %2614, 0
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %29, align 1
  %2632 = lshr i32 %2614, 31
  %2633 = trunc i32 %2632 to i8
  store i8 %2633, i8* %32, align 1
  %2634 = lshr i32 %2608, 31
  %2635 = lshr i32 %2613, 31
  %2636 = xor i32 %2632, %2634
  %2637 = xor i32 %2632, %2635
  %2638 = add nuw nsw i32 %2636, %2637
  %2639 = icmp eq i32 %2638, 2
  %2640 = zext i1 %2639 to i8
  store i8 %2640, i8* %38, align 1
  %2641 = add i64 %2597, 16
  store i64 %2641, i64* %3, align 8
  %2642 = load i32, i32* %2604, align 4
  %2643 = zext i32 %2642 to i64
  store i64 %2643, i64* %R8.i132, align 8
  %2644 = add i64 %2595, -40
  %2645 = add i64 %2597, 20
  store i64 %2645, i64* %3, align 8
  %2646 = inttoptr i64 %2644 to i32*
  %2647 = load i32, i32* %2646, align 4
  %2648 = add i32 %2647, %2642
  %2649 = zext i32 %2648 to i64
  store i64 %2649, i64* %R8.i132, align 8
  %2650 = icmp ult i32 %2648, %2642
  %2651 = icmp ult i32 %2648, %2647
  %2652 = or i1 %2650, %2651
  %2653 = zext i1 %2652 to i8
  store i8 %2653, i8* %14, align 1
  %2654 = and i32 %2648, 255
  %2655 = tail call i32 @llvm.ctpop.i32(i32 %2654)
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  %2658 = xor i8 %2657, 1
  store i8 %2658, i8* %21, align 1
  %2659 = xor i32 %2647, %2642
  %2660 = xor i32 %2659, %2648
  %2661 = lshr i32 %2660, 4
  %2662 = trunc i32 %2661 to i8
  %2663 = and i8 %2662, 1
  store i8 %2663, i8* %26, align 1
  %2664 = icmp eq i32 %2648, 0
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %29, align 1
  %2666 = lshr i32 %2648, 31
  %2667 = trunc i32 %2666 to i8
  store i8 %2667, i8* %32, align 1
  %2668 = lshr i32 %2642, 31
  %2669 = lshr i32 %2647, 31
  %2670 = xor i32 %2666, %2668
  %2671 = xor i32 %2666, %2669
  %2672 = add nuw nsw i32 %2670, %2671
  %2673 = icmp eq i32 %2672, 2
  %2674 = zext i1 %2673 to i8
  store i8 %2674, i8* %38, align 1
  %2675 = load i64, i64* %RBP.i, align 8
  %2676 = add i64 %2675, -16
  %2677 = add i64 %2597, 24
  store i64 %2677, i64* %3, align 8
  %2678 = inttoptr i64 %2676 to i32*
  %2679 = load i32, i32* %2678, align 4
  %2680 = zext i32 %2679 to i64
  store i64 %2680, i64* %2258, align 8
  %2681 = add i64 %2675, -24
  %2682 = add i64 %2597, 28
  store i64 %2682, i64* %3, align 8
  %2683 = inttoptr i64 %2681 to i64*
  %2684 = load i64, i64* %2683, align 8
  store i64 %2684, i64* %RAX.i528, align 8
  %2685 = add i64 %2675, -4
  %2686 = add i64 %2597, 32
  store i64 %2686, i64* %3, align 8
  %2687 = inttoptr i64 %2685 to i32*
  %2688 = load i32, i32* %2687, align 4
  %2689 = sext i32 %2688 to i64
  store i64 %2689, i64* %RCX.i871, align 8
  %2690 = shl nsw i64 %2689, 2
  %2691 = add i64 %2684, 472
  %2692 = add i64 %2691, %2690
  %2693 = add i64 %2597, 40
  store i64 %2693, i64* %3, align 8
  %2694 = inttoptr i64 %2692 to i32*
  %2695 = load i32, i32* %2694, align 4
  %2696 = zext i32 %2695 to i64
  store i64 %2696, i64* %2259, align 8
  store i64 %2649, i64* %RCX.i871, align 8
  store i64 %2680, i64* %R8.i132, align 8
  %2697 = load i32*, i32** %2260, align 8
  %2698 = add i64 %2597, 50
  store i64 %2698, i64* %3, align 8
  store i32 %2695, i32* %2697, align 4
  %2699 = load i64, i64* %3, align 8
  %2700 = add i64 %2699, 12404
  %2701 = add i64 %2699, 5
  %2702 = load i64, i64* %6, align 8
  %2703 = add i64 %2702, -8
  %2704 = inttoptr i64 %2703 to i64*
  store i64 %2701, i64* %2704, align 8
  store i64 %2703, i64* %6, align 8
  store i64 %2700, i64* %3, align 8
  %call2_44556c = tail call %struct.Memory* @sub_4485e0.writeMotionVector8x8(%struct.State* nonnull %0, i64 %2700, %struct.Memory* %2365)
  %2705 = load i64, i64* %RAX.i528, align 8
  %2706 = load i64, i64* %RBP.i, align 8
  %2707 = add i64 %2706, -28
  %2708 = load i64, i64* %3, align 8
  %2709 = add i64 %2708, 3
  store i64 %2709, i64* %3, align 8
  %2710 = trunc i64 %2705 to i32
  %2711 = inttoptr i64 %2707 to i32*
  %2712 = load i32, i32* %2711, align 4
  %2713 = add i32 %2712, %2710
  %2714 = zext i32 %2713 to i64
  store i64 %2714, i64* %RAX.i528, align 8
  %2715 = icmp ult i32 %2713, %2710
  %2716 = icmp ult i32 %2713, %2712
  %2717 = or i1 %2715, %2716
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %14, align 1
  %2719 = and i32 %2713, 255
  %2720 = tail call i32 @llvm.ctpop.i32(i32 %2719)
  %2721 = trunc i32 %2720 to i8
  %2722 = and i8 %2721, 1
  %2723 = xor i8 %2722, 1
  store i8 %2723, i8* %21, align 1
  %2724 = xor i32 %2712, %2710
  %2725 = xor i32 %2724, %2713
  %2726 = lshr i32 %2725, 4
  %2727 = trunc i32 %2726 to i8
  %2728 = and i8 %2727, 1
  store i8 %2728, i8* %26, align 1
  %2729 = icmp eq i32 %2713, 0
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %29, align 1
  %2731 = lshr i32 %2713, 31
  %2732 = trunc i32 %2731 to i8
  store i8 %2732, i8* %32, align 1
  %2733 = lshr i32 %2710, 31
  %2734 = lshr i32 %2712, 31
  %2735 = xor i32 %2731, %2733
  %2736 = xor i32 %2731, %2734
  %2737 = add nuw nsw i32 %2735, %2736
  %2738 = icmp eq i32 %2737, 2
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %38, align 1
  %2740 = add i64 %2708, 6
  store i64 %2740, i64* %3, align 8
  store i32 %2713, i32* %2711, align 4
  %.pre82 = load i64, i64* %3, align 8
  %.pre83 = load i64, i64* %RBP.i, align 8
  br label %block_.L_445577

block_.L_445577:                                  ; preds = %block_4454c2, %block_4454ee, %block_.L_4454d8
  %2741 = phi i64 [ %2400, %block_.L_4454d8 ], [ %.pre83, %block_4454ee ], [ %2400, %block_4454c2 ]
  %2742 = phi i64 [ %2493, %block_.L_4454d8 ], [ %.pre82, %block_4454ee ], [ %2471, %block_4454c2 ]
  %MEMORY.21 = phi %struct.Memory* [ %2365, %block_.L_4454d8 ], [ %call2_44556c, %block_4454ee ], [ %2365, %block_4454c2 ]
  %2743 = add i64 %2741, -36
  %2744 = add i64 %2742, 8
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i32*
  %2746 = load i32, i32* %2745, align 4
  %2747 = zext i32 %2746 to i64
  store i64 %2747, i64* %RAX.i528, align 8
  %2748 = add i64 %2741, -12
  %2749 = add i64 %2742, 11
  store i64 %2749, i64* %3, align 8
  %2750 = inttoptr i64 %2748 to i32*
  %2751 = load i32, i32* %2750, align 4
  %2752 = add i32 %2751, %2746
  %2753 = zext i32 %2752 to i64
  store i64 %2753, i64* %RAX.i528, align 8
  %2754 = icmp ult i32 %2752, %2746
  %2755 = icmp ult i32 %2752, %2751
  %2756 = or i1 %2754, %2755
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %14, align 1
  %2758 = and i32 %2752, 255
  %2759 = tail call i32 @llvm.ctpop.i32(i32 %2758)
  %2760 = trunc i32 %2759 to i8
  %2761 = and i8 %2760, 1
  %2762 = xor i8 %2761, 1
  store i8 %2762, i8* %21, align 1
  %2763 = xor i32 %2751, %2746
  %2764 = xor i32 %2763, %2752
  %2765 = lshr i32 %2764, 4
  %2766 = trunc i32 %2765 to i8
  %2767 = and i8 %2766, 1
  store i8 %2767, i8* %26, align 1
  %2768 = icmp eq i32 %2752, 0
  %2769 = zext i1 %2768 to i8
  store i8 %2769, i8* %29, align 1
  %2770 = lshr i32 %2752, 31
  %2771 = trunc i32 %2770 to i8
  store i8 %2771, i8* %32, align 1
  %2772 = lshr i32 %2746, 31
  %2773 = lshr i32 %2751, 31
  %2774 = xor i32 %2770, %2772
  %2775 = xor i32 %2770, %2773
  %2776 = add nuw nsw i32 %2774, %2775
  %2777 = icmp eq i32 %2776, 2
  %2778 = zext i1 %2777 to i8
  store i8 %2778, i8* %38, align 1
  %2779 = add i64 %2742, 14
  store i64 %2779, i64* %3, align 8
  store i32 %2752, i32* %2750, align 4
  %2780 = load i64, i64* %3, align 8
  %2781 = add i64 %2780, -255
  store i64 %2781, i64* %3, align 8
  br label %block_.L_445486

block_.L_44558a:                                  ; preds = %block_.L_445486
  %2782 = add i64 %2295, -40
  %2783 = add i64 %2323, 8
  store i64 %2783, i64* %3, align 8
  %2784 = inttoptr i64 %2782 to i32*
  %2785 = load i32, i32* %2784, align 4
  %2786 = zext i32 %2785 to i64
  store i64 %2786, i64* %RAX.i528, align 8
  %2787 = add i64 %2295, -8
  %2788 = add i64 %2323, 11
  store i64 %2788, i64* %3, align 8
  %2789 = inttoptr i64 %2787 to i32*
  %2790 = load i32, i32* %2789, align 4
  %2791 = add i32 %2790, %2785
  %2792 = zext i32 %2791 to i64
  store i64 %2792, i64* %RAX.i528, align 8
  %2793 = icmp ult i32 %2791, %2785
  %2794 = icmp ult i32 %2791, %2790
  %2795 = or i1 %2793, %2794
  %2796 = zext i1 %2795 to i8
  store i8 %2796, i8* %14, align 1
  %2797 = and i32 %2791, 255
  %2798 = tail call i32 @llvm.ctpop.i32(i32 %2797)
  %2799 = trunc i32 %2798 to i8
  %2800 = and i8 %2799, 1
  %2801 = xor i8 %2800, 1
  store i8 %2801, i8* %21, align 1
  %2802 = xor i32 %2790, %2785
  %2803 = xor i32 %2802, %2791
  %2804 = lshr i32 %2803, 4
  %2805 = trunc i32 %2804 to i8
  %2806 = and i8 %2805, 1
  store i8 %2806, i8* %26, align 1
  %2807 = icmp eq i32 %2791, 0
  %2808 = zext i1 %2807 to i8
  store i8 %2808, i8* %29, align 1
  %2809 = lshr i32 %2791, 31
  %2810 = trunc i32 %2809 to i8
  store i8 %2810, i8* %32, align 1
  %2811 = lshr i32 %2785, 31
  %2812 = lshr i32 %2790, 31
  %2813 = xor i32 %2809, %2811
  %2814 = xor i32 %2809, %2812
  %2815 = add nuw nsw i32 %2813, %2814
  %2816 = icmp eq i32 %2815, 2
  %2817 = zext i1 %2816 to i8
  store i8 %2817, i8* %38, align 1
  %2818 = add i64 %2323, 14
  store i64 %2818, i64* %3, align 8
  store i32 %2791, i32* %2789, align 4
  %2819 = load i64, i64* %3, align 8
  %2820 = add i64 %2819, -291
  store i64 %2820, i64* %3, align 8
  br label %block_.L_445475

block_.L_44559d:                                  ; preds = %block_.L_445475
  %2821 = add i64 %2290, 5
  store i64 %2821, i64* %3, align 8
  br label %block_.L_4455a2

block_.L_4455a2:                                  ; preds = %block_.L_44559d, %block_445464, %block_445456, %block_445448, %block_44543a, %block_.L_44542c
  %2822 = phi i64 [ %2166, %block_.L_44542c ], [ %2194, %block_44543a ], [ %2222, %block_445448 ], [ %2238, %block_445456 ], [ %2252, %block_445464 ], [ %2821, %block_.L_44559d ]
  %2823 = phi i64 [ %2136, %block_.L_44542c ], [ %2136, %block_44543a ], [ %2136, %block_445448 ], [ %2136, %block_445456 ], [ %2136, %block_445464 ], [ %2262, %block_.L_44559d ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.17, %block_.L_44542c ], [ %MEMORY.17, %block_44543a ], [ %MEMORY.17, %block_445448 ], [ %MEMORY.17, %block_445456 ], [ %MEMORY.17, %block_445464 ], [ %MEMORY.18, %block_.L_44559d ]
  %2824 = add i64 %2823, -28
  %2825 = add i64 %2822, 3
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2824 to i32*
  %2827 = load i32, i32* %2826, align 4
  %2828 = zext i32 %2827 to i64
  store i64 %2828, i64* %RAX.i528, align 8
  %2829 = load i64, i64* %6, align 8
  %2830 = add i64 %2829, 96
  store i64 %2830, i64* %6, align 8
  %2831 = icmp ugt i64 %2829, -97
  %2832 = zext i1 %2831 to i8
  store i8 %2832, i8* %14, align 1
  %2833 = trunc i64 %2830 to i32
  %2834 = and i32 %2833, 255
  %2835 = tail call i32 @llvm.ctpop.i32(i32 %2834)
  %2836 = trunc i32 %2835 to i8
  %2837 = and i8 %2836, 1
  %2838 = xor i8 %2837, 1
  store i8 %2838, i8* %21, align 1
  %2839 = xor i64 %2830, %2829
  %2840 = lshr i64 %2839, 4
  %2841 = trunc i64 %2840 to i8
  %2842 = and i8 %2841, 1
  store i8 %2842, i8* %26, align 1
  %2843 = icmp eq i64 %2830, 0
  %2844 = zext i1 %2843 to i8
  store i8 %2844, i8* %29, align 1
  %2845 = lshr i64 %2830, 63
  %2846 = trunc i64 %2845 to i8
  store i8 %2846, i8* %32, align 1
  %2847 = lshr i64 %2829, 63
  %2848 = xor i64 %2845, %2847
  %2849 = add nuw nsw i64 %2848, %2845
  %2850 = icmp eq i64 %2849, 2
  %2851 = zext i1 %2850 to i8
  store i8 %2851, i8* %38, align 1
  %2852 = add i64 %2822, 8
  store i64 %2852, i64* %3, align 8
  %2853 = add i64 %2829, 104
  %2854 = inttoptr i64 %2830 to i64*
  %2855 = load i64, i64* %2854, align 8
  store i64 %2855, i64* %RBP.i, align 8
  store i64 %2853, i64* %6, align 8
  %2856 = add i64 %2822, 9
  store i64 %2856, i64* %3, align 8
  %2857 = inttoptr i64 %2853 to i64*
  %2858 = load i64, i64* %2857, align 8
  store i64 %2858, i64* %3, align 8
  %2859 = add i64 %2829, 112
  store i64 %2859, i64* %6, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_sete__dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %DL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %DL, align 1
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
define %struct.Memory* @routine_movzbl__dl___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i8, i8* %DL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x50___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -81
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__0x48__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_444fbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_444fc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_0x48__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
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
define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rdx__rcx_8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x50___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -81
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
define %struct.Memory* @routine_cmpl__0x8__0x48__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_445003(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44500d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rdx__rcx_8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 4
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x9__0x48__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -9
  %10 = icmp ult i32 %8, 9
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
define %struct.Memory* @routine_je_.L_4452c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xa__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -10
  %10 = icmp ult i32 %8, 10
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
define %struct.Memory* @routine_cmpl__0xd__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -13
  %10 = icmp ult i32 %8, 13
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
define %struct.Memory* @routine_cmpl__0x0__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_jne_.L_445098(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.ZeroRef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_445098(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x934__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2356
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_je_.L_4452bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_4451aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_445197(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_addl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_cmpl__0x0__0x1e8__rdi__r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
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
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_445102(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x1e8__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -2
  %13 = icmp ult i32 %11, 2
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
  %22 = xor i32 %12, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_445184(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x1d8__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 472
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
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
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_445184(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x1d8__rax__rdx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 472
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x90__r8____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 144
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
define %struct.Memory* @routine_addl_MINUS0xc__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -12
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %5
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %12, %5
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
  %25 = xor i32 %11, %5
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
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movslq__r9d___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__r8_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movl_0x94__r8____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 148
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
define %struct.Memory* @routine_addl_MINUS0x8__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %5
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %12, %5
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
  %25 = xor i32 %11, %5
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
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movswl___rax__r8_2____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.writeReferenceFrame(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_445189(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4450b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44519c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44509f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4452ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4452a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_cmpl__0x1__0x1e8__rdi__r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -1
  %13 = icmp eq i32 %11, 0
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
  %22 = xor i32 %12, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_445214(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_445294(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_445294(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_445299(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4451c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4452ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4451b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4452bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4452c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x9__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -9
  %10 = icmp ult i32 %8, 9
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
define %struct.Memory* @routine_je_.L_44542c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_445427(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_445414(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_445366(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_445401(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_445401(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
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
define %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 144
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
define %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 148
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
define %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_addl_MINUS0x24__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x28__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -40
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %5
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %12, %5
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
  %25 = xor i32 %11, %5
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
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_movl_0x1d8__rax__rcx_4____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 472
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = bitcast i64* %RSP to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.writeMotionVector8x8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_445406(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_445314(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_445419(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_445303(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44542c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4455a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44559d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44558a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4454d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_445577(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_445577(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 1, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44557c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_445486(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44558f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_445475(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4455a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
