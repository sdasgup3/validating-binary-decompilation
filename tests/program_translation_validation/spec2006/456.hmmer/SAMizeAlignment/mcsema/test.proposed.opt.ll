; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @SAMizeAlignment(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -56
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 48
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
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i, align 8
  %42 = add i64 %10, 11
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i353 = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -12
  %47 = load i32, i32* %ESI.i353, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i350 = bitcast %union.anon* %51 to i32*
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -16
  %54 = load i32, i32* %EDX.i350, align 4
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %57, align 4
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -20
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 7
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %59 to i32*
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i345 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %RCX.i320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i312 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %64 = bitcast %union.anon* %63 to i64**
  %RSI.i211 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %AL.i37 = bitcast %union.anon* %63 to i8*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_403129

block_.L_403129:                                  ; preds = %block_.L_40336d, %entry
  %65 = phi i64 [ %.pre, %entry ], [ %884, %block_.L_40336d ]
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -20
  %68 = add i64 %65, 3
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %RAX.i345, align 8
  %72 = add i64 %66, -16
  %73 = add i64 %65, 6
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = sub i32 %70, %75
  %77 = icmp ult i32 %70, %75
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %14, align 1
  %79 = and i32 %76, 255
  %80 = tail call i32 @llvm.ctpop.i32(i32 %79)
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  store i8 %83, i8* %21, align 1
  %84 = xor i32 %75, %70
  %85 = xor i32 %84, %76
  %86 = lshr i32 %85, 4
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  store i8 %88, i8* %27, align 1
  %89 = icmp eq i32 %76, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %30, align 1
  %91 = lshr i32 %76, 31
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %33, align 1
  %93 = lshr i32 %70, 31
  %94 = lshr i32 %75, 31
  %95 = xor i32 %94, %93
  %96 = xor i32 %91, %93
  %97 = add nuw nsw i32 %96, %95
  %98 = icmp eq i32 %97, 2
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %39, align 1
  %100 = icmp ne i8 %92, 0
  %101 = xor i1 %100, %98
  %.v39 = select i1 %101, i64 12, i64 599
  %102 = add i64 %65, %.v39
  store i64 %102, i64* %3, align 8
  br i1 %101, label %block_403135, label %block_.L_403380

block_403135:                                     ; preds = %block_.L_403129
  %103 = add i64 %66, -36
  %104 = add i64 %102, 7
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i32*
  store i32 0, i32* %105, align 4
  %106 = load i64, i64* %RBP.i, align 8
  %107 = add i64 %106, -32
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 7
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %107 to i32*
  store i32 0, i32* %110, align 4
  %111 = load i64, i64* %RBP.i, align 8
  %112 = add i64 %111, -28
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, 7
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %112 to i32*
  store i32 0, i32* %115, align 4
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -24
  %118 = load i64, i64* %3, align 8
  %119 = add i64 %118, 7
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %117 to i32*
  store i32 0, i32* %120, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_403151

block_.L_403151:                                  ; preds = %block_.L_403276, %block_403135
  %121 = phi i64 [ %.pre29, %block_403135 ], [ %506, %block_.L_403276 ]
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -24
  %124 = add i64 %121, 3
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %123 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %RAX.i345, align 8
  %128 = add i64 %122, -12
  %129 = add i64 %121, 6
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = sub i32 %126, %131
  %133 = icmp ult i32 %126, %131
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %14, align 1
  %135 = and i32 %132, 255
  %136 = tail call i32 @llvm.ctpop.i32(i32 %135)
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  store i8 %139, i8* %21, align 1
  %140 = xor i32 %131, %126
  %141 = xor i32 %140, %132
  %142 = lshr i32 %141, 4
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  store i8 %144, i8* %27, align 1
  %145 = icmp eq i32 %132, 0
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %30, align 1
  %147 = lshr i32 %132, 31
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %33, align 1
  %149 = lshr i32 %126, 31
  %150 = lshr i32 %131, 31
  %151 = xor i32 %150, %149
  %152 = xor i32 %147, %149
  %153 = add nuw nsw i32 %152, %151
  %154 = icmp eq i32 %153, 2
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %39, align 1
  %156 = icmp ne i8 %148, 0
  %157 = xor i1 %156, %154
  %.v40 = select i1 %157, i64 12, i64 307
  %158 = add i64 %121, %.v40
  store i64 %158, i64* %3, align 8
  br i1 %157, label %block_40315d, label %block_.L_403284

block_40315d:                                     ; preds = %block_.L_403151
  %159 = add i64 %122, -8
  %160 = add i64 %158, 4
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i64*
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %RAX.i345, align 8
  %163 = add i64 %158, 8
  store i64 %163, i64* %3, align 8
  %164 = load i32, i32* %125, align 4
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %RCX.i320, align 8
  %166 = shl nsw i64 %165, 3
  %167 = add i64 %166, %162
  %168 = add i64 %158, 12
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i64*
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %RAX.i345, align 8
  %171 = add i64 %122, -20
  %172 = add i64 %158, 16
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  store i64 %175, i64* %RCX.i320, align 8
  %176 = add i64 %170, %175
  %177 = add i64 %158, 20
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i8*
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i64
  %181 = and i64 %180, 4294967295
  store i64 %181, i64* %RDX.i312, align 8
  %182 = sext i8 %179 to i32
  %183 = add nsw i32 %182, -32
  %184 = icmp ult i8 %179, 32
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %14, align 1
  %186 = and i32 %183, 255
  %187 = tail call i32 @llvm.ctpop.i32(i32 %186)
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %21, align 1
  %191 = xor i32 %183, %182
  %192 = lshr i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  store i8 %194, i8* %27, align 1
  %195 = icmp eq i32 %183, 0
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %30, align 1
  %197 = lshr i32 %183, 31
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %33, align 1
  %199 = lshr i32 %182, 31
  %200 = xor i32 %197, %199
  %201 = add nuw nsw i32 %200, %199
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %39, align 1
  %.v48 = select i1 %195, i64 145, i64 29
  %204 = add i64 %158, %.v48
  store i64 %204, i64* %3, align 8
  br i1 %195, label %block_.L_403276.sink.split, label %block_40317a

block_40317a:                                     ; preds = %block_40315d
  %205 = add i64 %204, 4
  store i64 %205, i64* %3, align 8
  %206 = load i64, i64* %161, align 8
  store i64 %206, i64* %RAX.i345, align 8
  %207 = add i64 %204, 8
  store i64 %207, i64* %3, align 8
  %208 = load i32, i32* %125, align 4
  %209 = sext i32 %208 to i64
  store i64 %209, i64* %RCX.i320, align 8
  %210 = shl nsw i64 %209, 3
  %211 = add i64 %210, %206
  %212 = add i64 %204, 12
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %211 to i64*
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %RAX.i345, align 8
  %215 = add i64 %204, 16
  store i64 %215, i64* %3, align 8
  %216 = load i32, i32* %173, align 4
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %RCX.i320, align 8
  %218 = add i64 %214, %217
  %219 = add i64 %204, 20
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i8*
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i64
  %223 = and i64 %222, 4294967295
  store i64 %223, i64* %RDX.i312, align 8
  %224 = sext i8 %221 to i32
  %225 = add nsw i32 %224, -46
  %226 = icmp ult i8 %221, 46
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %14, align 1
  %228 = and i32 %225, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228)
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %21, align 1
  %233 = xor i32 %225, %224
  %234 = lshr i32 %233, 4
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  store i8 %236, i8* %27, align 1
  %237 = icmp eq i32 %225, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %30, align 1
  %239 = lshr i32 %225, 31
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %33, align 1
  %241 = lshr i32 %224, 31
  %242 = xor i32 %239, %241
  %243 = add nuw nsw i32 %242, %241
  %244 = icmp eq i32 %243, 2
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %39, align 1
  %.v49 = select i1 %237, i64 116, i64 29
  %246 = add i64 %204, %.v49
  store i64 %246, i64* %3, align 8
  br i1 %237, label %block_.L_403276.sink.split, label %block_403197

block_403197:                                     ; preds = %block_40317a
  %247 = add i64 %246, 4
  store i64 %247, i64* %3, align 8
  %248 = load i64, i64* %161, align 8
  store i64 %248, i64* %RAX.i345, align 8
  %249 = add i64 %246, 8
  store i64 %249, i64* %3, align 8
  %250 = load i32, i32* %125, align 4
  %251 = sext i32 %250 to i64
  store i64 %251, i64* %RCX.i320, align 8
  %252 = shl nsw i64 %251, 3
  %253 = add i64 %252, %248
  %254 = add i64 %246, 12
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i64*
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %RAX.i345, align 8
  %257 = add i64 %246, 16
  store i64 %257, i64* %3, align 8
  %258 = load i32, i32* %173, align 4
  %259 = sext i32 %258 to i64
  store i64 %259, i64* %RCX.i320, align 8
  %260 = add i64 %256, %259
  %261 = add i64 %246, 20
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i8*
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i64
  %265 = and i64 %264, 4294967295
  store i64 %265, i64* %RDX.i312, align 8
  %266 = sext i8 %263 to i32
  %267 = add nsw i32 %266, -95
  %268 = icmp ult i8 %263, 95
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %14, align 1
  %270 = and i32 %267, 255
  %271 = tail call i32 @llvm.ctpop.i32(i32 %270)
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = xor i8 %273, 1
  store i8 %274, i8* %21, align 1
  %275 = xor i32 %266, 16
  %276 = xor i32 %275, %267
  %277 = lshr i32 %276, 4
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  store i8 %279, i8* %27, align 1
  %280 = icmp eq i32 %267, 0
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %30, align 1
  %282 = lshr i32 %267, 31
  %283 = trunc i32 %282 to i8
  store i8 %283, i8* %33, align 1
  %284 = lshr i32 %266, 31
  %285 = xor i32 %282, %284
  %286 = add nuw nsw i32 %285, %284
  %287 = icmp eq i32 %286, 2
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %39, align 1
  %.v50 = select i1 %280, i64 87, i64 29
  %289 = add i64 %246, %.v50
  store i64 %289, i64* %3, align 8
  br i1 %280, label %block_.L_403276.sink.split, label %block_4031b4

block_4031b4:                                     ; preds = %block_403197
  %290 = add i64 %289, 4
  store i64 %290, i64* %3, align 8
  %291 = load i64, i64* %161, align 8
  store i64 %291, i64* %RAX.i345, align 8
  %292 = add i64 %289, 8
  store i64 %292, i64* %3, align 8
  %293 = load i32, i32* %125, align 4
  %294 = sext i32 %293 to i64
  store i64 %294, i64* %RCX.i320, align 8
  %295 = shl nsw i64 %294, 3
  %296 = add i64 %295, %291
  %297 = add i64 %289, 12
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i64*
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* %RAX.i345, align 8
  %300 = add i64 %289, 16
  store i64 %300, i64* %3, align 8
  %301 = load i32, i32* %173, align 4
  %302 = sext i32 %301 to i64
  store i64 %302, i64* %RCX.i320, align 8
  %303 = add i64 %299, %302
  %304 = add i64 %289, 20
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i8*
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i64
  %308 = and i64 %307, 4294967295
  store i64 %308, i64* %RDX.i312, align 8
  %309 = sext i8 %306 to i32
  %310 = add nsw i32 %309, -45
  %311 = icmp ult i8 %306, 45
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %14, align 1
  %313 = and i32 %310, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313)
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %21, align 1
  %318 = xor i32 %310, %309
  %319 = lshr i32 %318, 4
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %27, align 1
  %322 = icmp eq i32 %310, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %30, align 1
  %324 = lshr i32 %310, 31
  %325 = trunc i32 %324 to i8
  store i8 %325, i8* %33, align 1
  %326 = lshr i32 %309, 31
  %327 = xor i32 %324, %326
  %328 = add nuw nsw i32 %327, %326
  %329 = icmp eq i32 %328, 2
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %39, align 1
  %.v51 = select i1 %322, i64 58, i64 29
  %331 = add i64 %289, %.v51
  store i64 %331, i64* %3, align 8
  br i1 %322, label %block_.L_403276.sink.split, label %block_4031d1

block_4031d1:                                     ; preds = %block_4031b4
  %332 = add i64 %331, 4
  store i64 %332, i64* %3, align 8
  %333 = load i64, i64* %161, align 8
  store i64 %333, i64* %RAX.i345, align 8
  %334 = add i64 %331, 8
  store i64 %334, i64* %3, align 8
  %335 = load i32, i32* %125, align 4
  %336 = sext i32 %335 to i64
  store i64 %336, i64* %RCX.i320, align 8
  %337 = shl nsw i64 %336, 3
  %338 = add i64 %337, %333
  %339 = add i64 %331, 12
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i64*
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %RAX.i345, align 8
  %342 = add i64 %331, 16
  store i64 %342, i64* %3, align 8
  %343 = load i32, i32* %173, align 4
  %344 = sext i32 %343 to i64
  store i64 %344, i64* %RCX.i320, align 8
  %345 = add i64 %341, %344
  %346 = add i64 %331, 20
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %345 to i8*
  %348 = load i8, i8* %347, align 1
  %349 = sext i8 %348 to i64
  %350 = and i64 %349, 4294967295
  store i64 %350, i64* %RDX.i312, align 8
  %351 = sext i8 %348 to i32
  %352 = add nsw i32 %351, -126
  %353 = icmp ult i8 %348, 126
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %14, align 1
  %355 = and i32 %352, 255
  %356 = tail call i32 @llvm.ctpop.i32(i32 %355)
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  %359 = xor i8 %358, 1
  store i8 %359, i8* %21, align 1
  %360 = xor i32 %351, 16
  %361 = xor i32 %360, %352
  %362 = lshr i32 %361, 4
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  store i8 %364, i8* %27, align 1
  %365 = icmp eq i32 %352, 0
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %30, align 1
  %367 = lshr i32 %352, 31
  %368 = trunc i32 %367 to i8
  store i8 %368, i8* %33, align 1
  %369 = lshr i32 %351, 31
  %370 = xor i32 %367, %369
  %371 = add nuw nsw i32 %370, %369
  %372 = icmp eq i32 %371, 2
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %39, align 1
  %.v52 = select i1 %365, i64 29, i64 41
  %374 = add i64 %331, %.v52
  store i64 %374, i64* %3, align 8
  br i1 %365, label %block_.L_403276.sink.split, label %block_.L_4031fa

block_.L_4031fa:                                  ; preds = %block_4031d1
  %375 = add i64 %374, -6890
  %376 = add i64 %374, 5
  %377 = load i64, i64* %6, align 8
  %378 = add i64 %377, -8
  %379 = inttoptr i64 %378 to i64*
  store i64 %376, i64* %379, align 8
  store i64 %378, i64* %6, align 8
  store i64 %375, i64* %3, align 8
  %call2_4031fa = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %375, %struct.Memory* %2)
  %380 = load i64*, i64** %64, align 8
  %381 = load i64, i64* %3, align 8
  %382 = add i64 %381, 3
  store i64 %382, i64* %3, align 8
  %383 = load i64, i64* %380, align 8
  store i64 %383, i64* %RAX.i345, align 8
  %384 = load i64, i64* %RBP.i, align 8
  %385 = add i64 %384, -8
  %386 = add i64 %381, 7
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i64*
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %RCX.i320, align 8
  %389 = add i64 %384, -24
  %390 = add i64 %381, 11
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = sext i32 %392 to i64
  store i64 %393, i64* %RDX.i312, align 8
  %394 = shl nsw i64 %393, 3
  %395 = add i64 %394, %388
  %396 = add i64 %381, 15
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i64*
  %398 = load i64, i64* %397, align 8
  store i64 %398, i64* %RCX.i320, align 8
  %399 = add i64 %384, -20
  %400 = add i64 %381, 19
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = sext i32 %402 to i64
  store i64 %403, i64* %RDX.i312, align 8
  %404 = add i64 %398, %403
  %405 = add i64 %381, 23
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i8*
  %407 = load i8, i8* %406, align 1
  %408 = sext i8 %407 to i64
  %409 = and i64 %408, 4294967295
  store i64 %409, i64* %RSI.i211, align 8
  %410 = sext i8 %407 to i64
  store i64 %410, i64* %RCX.i320, align 8
  %411 = shl nsw i64 %410, 1
  %412 = add i64 %383, %411
  %413 = add i64 %381, 30
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i16*
  %415 = load i16, i16* %414, align 2
  %416 = and i16 %415, 256
  %417 = zext i16 %416 to i64
  store i64 %417, i64* %RSI.i211, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %418 = icmp eq i16 %416, 0
  %.lobit37 = lshr exact i16 %416, 8
  %419 = trunc i16 %.lobit37 to i8
  %420 = xor i8 %419, 1
  store i8 %420, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v53 = select i1 %418, i64 57, i64 45
  %421 = add i64 %381, %.v53
  store i64 %421, i64* %3, align 8
  br i1 %418, label %block_.L_403238, label %block_.L_403276.sink.split

block_.L_403238:                                  ; preds = %block_.L_4031fa
  %422 = add i64 %421, -6952
  %423 = add i64 %421, 5
  %424 = load i64, i64* %6, align 8
  %425 = add i64 %424, -8
  %426 = inttoptr i64 %425 to i64*
  store i64 %423, i64* %426, align 8
  store i64 %425, i64* %6, align 8
  store i64 %422, i64* %3, align 8
  %call2_403238 = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %422, %struct.Memory* %2)
  %427 = load i64*, i64** %64, align 8
  %428 = load i64, i64* %3, align 8
  %429 = add i64 %428, 3
  store i64 %429, i64* %3, align 8
  %430 = load i64, i64* %427, align 8
  store i64 %430, i64* %RAX.i345, align 8
  %431 = load i64, i64* %RBP.i, align 8
  %432 = add i64 %431, -8
  %433 = add i64 %428, 7
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i64*
  %435 = load i64, i64* %434, align 8
  store i64 %435, i64* %RCX.i320, align 8
  %436 = add i64 %431, -24
  %437 = add i64 %428, 11
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = sext i32 %439 to i64
  store i64 %440, i64* %RDX.i312, align 8
  %441 = shl nsw i64 %440, 3
  %442 = add i64 %441, %435
  %443 = add i64 %428, 15
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RCX.i320, align 8
  %446 = add i64 %431, -20
  %447 = add i64 %428, 19
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  store i64 %450, i64* %RDX.i312, align 8
  %451 = add i64 %445, %450
  %452 = add i64 %428, 23
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i8*
  %454 = load i8, i8* %453, align 1
  %455 = sext i8 %454 to i64
  %456 = and i64 %455, 4294967295
  store i64 %456, i64* %RSI.i211, align 8
  %457 = sext i8 %454 to i64
  store i64 %457, i64* %RCX.i320, align 8
  %458 = shl nsw i64 %457, 1
  %459 = add i64 %430, %458
  %460 = add i64 %428, 30
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i16*
  %462 = load i16, i16* %461, align 2
  %463 = and i16 %462, 512
  %464 = zext i16 %463 to i64
  store i64 %464, i64* %RSI.i211, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %465 = icmp eq i16 %463, 0
  %.lobit38 = lshr exact i16 %463, 9
  %466 = trunc i16 %.lobit38 to i8
  %467 = xor i8 %466, 1
  store i8 %467, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v54 = select i1 %465, i64 52, i64 45
  %468 = add i64 %428, %.v54
  store i64 %468, i64* %3, align 8
  br i1 %465, label %block_.L_403276, label %block_.L_403276.sink.split

block_.L_403276.sink.split:                       ; preds = %block_4031d1, %block_40315d, %block_40317a, %block_403197, %block_4031b4, %block_.L_403238, %block_.L_4031fa
  %469 = phi i64 [ %421, %block_.L_4031fa ], [ %468, %block_.L_403238 ], [ %374, %block_4031d1 ], [ %331, %block_4031b4 ], [ %289, %block_403197 ], [ %246, %block_40317a ], [ %204, %block_40315d ]
  %470 = phi i64 [ %384, %block_.L_4031fa ], [ %431, %block_.L_403238 ], [ %122, %block_4031d1 ], [ %122, %block_4031b4 ], [ %122, %block_403197 ], [ %122, %block_40317a ], [ %122, %block_40315d ]
  %.sink22 = phi i64 [ -32, %block_.L_4031fa ], [ -28, %block_.L_403238 ], [ -36, %block_4031d1 ], [ -36, %block_4031b4 ], [ -36, %block_403197 ], [ -36, %block_40317a ], [ -36, %block_40315d ]
  %.sink19.ph = phi i64 [ 67, %block_.L_4031fa ], [ 5, %block_.L_403238 ], [ 129, %block_4031d1 ], [ 129, %block_4031b4 ], [ 129, %block_403197 ], [ 129, %block_40317a ], [ 129, %block_40315d ]
  %471 = add i64 %470, %.sink22
  %472 = add i64 %469, 7
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to i32*
  store i32 1, i32* %473, align 4
  %.pre35 = load i64, i64* %3, align 8
  %.pre36 = load i64, i64* %RBP.i, align 8
  br label %block_.L_403276

block_.L_403276:                                  ; preds = %block_.L_403276.sink.split, %block_.L_403238
  %474 = phi i64 [ %431, %block_.L_403238 ], [ %.pre36, %block_.L_403276.sink.split ]
  %475 = phi i64 [ %468, %block_.L_403238 ], [ %.pre35, %block_.L_403276.sink.split ]
  %.sink19 = phi i64 [ 5, %block_.L_403238 ], [ %.sink19.ph, %block_.L_403276.sink.split ]
  %476 = add i64 %475, %.sink19
  %477 = add i64 %474, -24
  %478 = add i64 %476, 3
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i32*
  %480 = load i32, i32* %479, align 4
  %481 = add i32 %480, 1
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RAX.i345, align 8
  %483 = icmp eq i32 %480, -1
  %484 = icmp eq i32 %481, 0
  %485 = or i1 %483, %484
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %14, align 1
  %487 = and i32 %481, 255
  %488 = tail call i32 @llvm.ctpop.i32(i32 %487)
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  store i8 %491, i8* %21, align 1
  %492 = xor i32 %481, %480
  %493 = lshr i32 %492, 4
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  store i8 %495, i8* %27, align 1
  %496 = zext i1 %484 to i8
  store i8 %496, i8* %30, align 1
  %497 = lshr i32 %481, 31
  %498 = trunc i32 %497 to i8
  store i8 %498, i8* %33, align 1
  %499 = lshr i32 %480, 31
  %500 = xor i32 %497, %499
  %501 = add nuw nsw i32 %500, %497
  %502 = icmp eq i32 %501, 2
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %39, align 1
  %504 = add i64 %476, 9
  store i64 %504, i64* %3, align 8
  store i32 %481, i32* %479, align 4
  %505 = load i64, i64* %3, align 8
  %506 = add i64 %505, -302
  store i64 %506, i64* %3, align 8
  br label %block_.L_403151

block_.L_403284:                                  ; preds = %block_.L_403151
  %507 = add i64 %122, -37
  %508 = add i64 %158, 4
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i8*
  store i8 45, i8* %509, align 1
  %510 = load i64, i64* %RBP.i, align 8
  %511 = add i64 %510, -28
  %512 = load i64, i64* %3, align 8
  %513 = add i64 %512, 4
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %511 to i32*
  %515 = load i32, i32* %514, align 4
  store i8 0, i8* %14, align 1
  %516 = and i32 %515, 255
  %517 = tail call i32 @llvm.ctpop.i32(i32 %516)
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  %520 = xor i8 %519, 1
  store i8 %520, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %521 = icmp eq i32 %515, 0
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %30, align 1
  %523 = lshr i32 %515, 31
  %524 = trunc i32 %523 to i8
  store i8 %524, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v41 = select i1 %521, i64 24, i64 10
  %525 = add i64 %512, %.v41
  store i64 %525, i64* %3, align 8
  br i1 %521, label %block_.L_4032a0, label %block_403292

block_403292:                                     ; preds = %block_.L_403284
  %526 = add i64 %510, -32
  %527 = add i64 %525, 4
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i32*
  %529 = load i32, i32* %528, align 4
  store i8 0, i8* %14, align 1
  %530 = and i32 %529, 255
  %531 = tail call i32 @llvm.ctpop.i32(i32 %530)
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = xor i8 %533, 1
  store i8 %534, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %535 = icmp eq i32 %529, 0
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %30, align 1
  %537 = lshr i32 %529, 31
  %538 = trunc i32 %537 to i8
  store i8 %538, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v42 = select i1 %535, i64 10, i64 14
  %539 = add i64 %525, %.v42
  store i64 %539, i64* %3, align 8
  br i1 %535, label %block_40329c, label %block_.L_4032a0

block_40329c:                                     ; preds = %block_403292
  %540 = add i64 %510, -37
  %541 = add i64 %539, 4
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i8*
  store i8 46, i8* %542, align 1
  %.pre30 = load i64, i64* %RBP.i, align 8
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_4032a0

block_.L_4032a0:                                  ; preds = %block_403292, %block_40329c, %block_.L_403284
  %543 = phi i64 [ %.pre31, %block_40329c ], [ %539, %block_403292 ], [ %525, %block_.L_403284 ]
  %544 = phi i64 [ %.pre30, %block_40329c ], [ %510, %block_403292 ], [ %510, %block_.L_403284 ]
  %545 = add i64 %544, -24
  %546 = add i64 %543, 7
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i32*
  store i32 0, i32* %547, align 4
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_4032a7

block_.L_4032a7:                                  ; preds = %block_.L_40335a, %block_.L_4032a0
  %548 = phi i64 [ %854, %block_.L_40335a ], [ %.pre32, %block_.L_4032a0 ]
  %549 = load i64, i64* %RBP.i, align 8
  %550 = add i64 %549, -24
  %551 = add i64 %548, 3
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RAX.i345, align 8
  %555 = add i64 %549, -12
  %556 = add i64 %548, 6
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  %558 = load i32, i32* %557, align 4
  %559 = sub i32 %553, %558
  %560 = icmp ult i32 %553, %558
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %14, align 1
  %562 = and i32 %559, 255
  %563 = tail call i32 @llvm.ctpop.i32(i32 %562)
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  store i8 %566, i8* %21, align 1
  %567 = xor i32 %558, %553
  %568 = xor i32 %567, %559
  %569 = lshr i32 %568, 4
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  store i8 %571, i8* %27, align 1
  %572 = icmp eq i32 %559, 0
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %30, align 1
  %574 = lshr i32 %559, 31
  %575 = trunc i32 %574 to i8
  store i8 %575, i8* %33, align 1
  %576 = lshr i32 %553, 31
  %577 = lshr i32 %558, 31
  %578 = xor i32 %577, %576
  %579 = xor i32 %574, %576
  %580 = add nuw nsw i32 %579, %578
  %581 = icmp eq i32 %580, 2
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %39, align 1
  %583 = icmp ne i8 %575, 0
  %584 = xor i1 %583, %581
  %.v = select i1 %584, i64 12, i64 198
  %585 = add i64 %548, %.v
  store i64 %585, i64* %3, align 8
  br i1 %584, label %block_4032b3, label %block_.L_40336d

block_4032b3:                                     ; preds = %block_.L_4032a7
  %586 = add i64 %549, -8
  %587 = add i64 %585, 4
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i64*
  %589 = load i64, i64* %588, align 8
  store i64 %589, i64* %RAX.i345, align 8
  %590 = add i64 %585, 8
  store i64 %590, i64* %3, align 8
  %591 = load i32, i32* %552, align 4
  %592 = sext i32 %591 to i64
  store i64 %592, i64* %RCX.i320, align 8
  %593 = shl nsw i64 %592, 3
  %594 = add i64 %593, %589
  %595 = add i64 %585, 12
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i64*
  %597 = load i64, i64* %596, align 8
  store i64 %597, i64* %RAX.i345, align 8
  %598 = add i64 %549, -20
  %599 = add i64 %585, 16
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = sext i32 %601 to i64
  store i64 %602, i64* %RCX.i320, align 8
  %603 = add i64 %597, %602
  %604 = add i64 %585, 20
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i8*
  %606 = load i8, i8* %605, align 1
  %607 = sext i8 %606 to i64
  %608 = and i64 %607, 4294967295
  store i64 %608, i64* %RDX.i312, align 8
  %609 = sext i8 %606 to i32
  %610 = add nsw i32 %609, -32
  %611 = icmp ult i8 %606, 32
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %14, align 1
  %613 = and i32 %610, 255
  %614 = tail call i32 @llvm.ctpop.i32(i32 %613)
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %21, align 1
  %618 = xor i32 %610, %609
  %619 = lshr i32 %618, 4
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  store i8 %621, i8* %27, align 1
  %622 = icmp eq i32 %610, 0
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %30, align 1
  %624 = lshr i32 %610, 31
  %625 = trunc i32 %624 to i8
  store i8 %625, i8* %33, align 1
  %626 = lshr i32 %609, 31
  %627 = xor i32 %624, %626
  %628 = add nuw nsw i32 %627, %626
  %629 = icmp eq i32 %628, 2
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %39, align 1
  %.v43 = select i1 %622, i64 145, i64 29
  %631 = add i64 %585, %.v43
  store i64 %631, i64* %3, align 8
  br i1 %622, label %block_.L_403344, label %block_4032d0

block_4032d0:                                     ; preds = %block_4032b3
  %632 = add i64 %631, 4
  store i64 %632, i64* %3, align 8
  %633 = load i64, i64* %588, align 8
  store i64 %633, i64* %RAX.i345, align 8
  %634 = add i64 %631, 8
  store i64 %634, i64* %3, align 8
  %635 = load i32, i32* %552, align 4
  %636 = sext i32 %635 to i64
  store i64 %636, i64* %RCX.i320, align 8
  %637 = shl nsw i64 %636, 3
  %638 = add i64 %637, %633
  %639 = add i64 %631, 12
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i64*
  %641 = load i64, i64* %640, align 8
  store i64 %641, i64* %RAX.i345, align 8
  %642 = add i64 %631, 16
  store i64 %642, i64* %3, align 8
  %643 = load i32, i32* %600, align 4
  %644 = sext i32 %643 to i64
  store i64 %644, i64* %RCX.i320, align 8
  %645 = add i64 %641, %644
  %646 = add i64 %631, 20
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i8*
  %648 = load i8, i8* %647, align 1
  %649 = sext i8 %648 to i64
  %650 = and i64 %649, 4294967295
  store i64 %650, i64* %RDX.i312, align 8
  %651 = sext i8 %648 to i32
  %652 = add nsw i32 %651, -46
  %653 = icmp ult i8 %648, 46
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %14, align 1
  %655 = and i32 %652, 255
  %656 = tail call i32 @llvm.ctpop.i32(i32 %655)
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  store i8 %659, i8* %21, align 1
  %660 = xor i32 %652, %651
  %661 = lshr i32 %660, 4
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  store i8 %663, i8* %27, align 1
  %664 = icmp eq i32 %652, 0
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %30, align 1
  %666 = lshr i32 %652, 31
  %667 = trunc i32 %666 to i8
  store i8 %667, i8* %33, align 1
  %668 = lshr i32 %651, 31
  %669 = xor i32 %666, %668
  %670 = add nuw nsw i32 %669, %668
  %671 = icmp eq i32 %670, 2
  %672 = zext i1 %671 to i8
  store i8 %672, i8* %39, align 1
  %.v44 = select i1 %664, i64 116, i64 29
  %673 = add i64 %631, %.v44
  store i64 %673, i64* %3, align 8
  br i1 %664, label %block_.L_403344, label %block_4032ed

block_4032ed:                                     ; preds = %block_4032d0
  %674 = add i64 %673, 4
  store i64 %674, i64* %3, align 8
  %675 = load i64, i64* %588, align 8
  store i64 %675, i64* %RAX.i345, align 8
  %676 = add i64 %673, 8
  store i64 %676, i64* %3, align 8
  %677 = load i32, i32* %552, align 4
  %678 = sext i32 %677 to i64
  store i64 %678, i64* %RCX.i320, align 8
  %679 = shl nsw i64 %678, 3
  %680 = add i64 %679, %675
  %681 = add i64 %673, 12
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i64*
  %683 = load i64, i64* %682, align 8
  store i64 %683, i64* %RAX.i345, align 8
  %684 = add i64 %673, 16
  store i64 %684, i64* %3, align 8
  %685 = load i32, i32* %600, align 4
  %686 = sext i32 %685 to i64
  store i64 %686, i64* %RCX.i320, align 8
  %687 = add i64 %683, %686
  %688 = add i64 %673, 20
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i8*
  %690 = load i8, i8* %689, align 1
  %691 = sext i8 %690 to i64
  %692 = and i64 %691, 4294967295
  store i64 %692, i64* %RDX.i312, align 8
  %693 = sext i8 %690 to i32
  %694 = add nsw i32 %693, -95
  %695 = icmp ult i8 %690, 95
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %14, align 1
  %697 = and i32 %694, 255
  %698 = tail call i32 @llvm.ctpop.i32(i32 %697)
  %699 = trunc i32 %698 to i8
  %700 = and i8 %699, 1
  %701 = xor i8 %700, 1
  store i8 %701, i8* %21, align 1
  %702 = xor i32 %693, 16
  %703 = xor i32 %702, %694
  %704 = lshr i32 %703, 4
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  store i8 %706, i8* %27, align 1
  %707 = icmp eq i32 %694, 0
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %30, align 1
  %709 = lshr i32 %694, 31
  %710 = trunc i32 %709 to i8
  store i8 %710, i8* %33, align 1
  %711 = lshr i32 %693, 31
  %712 = xor i32 %709, %711
  %713 = add nuw nsw i32 %712, %711
  %714 = icmp eq i32 %713, 2
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %39, align 1
  %.v45 = select i1 %707, i64 87, i64 29
  %716 = add i64 %673, %.v45
  store i64 %716, i64* %3, align 8
  br i1 %707, label %block_.L_403344, label %block_40330a

block_40330a:                                     ; preds = %block_4032ed
  %717 = add i64 %716, 4
  store i64 %717, i64* %3, align 8
  %718 = load i64, i64* %588, align 8
  store i64 %718, i64* %RAX.i345, align 8
  %719 = add i64 %716, 8
  store i64 %719, i64* %3, align 8
  %720 = load i32, i32* %552, align 4
  %721 = sext i32 %720 to i64
  store i64 %721, i64* %RCX.i320, align 8
  %722 = shl nsw i64 %721, 3
  %723 = add i64 %722, %718
  %724 = add i64 %716, 12
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %723 to i64*
  %726 = load i64, i64* %725, align 8
  store i64 %726, i64* %RAX.i345, align 8
  %727 = add i64 %716, 16
  store i64 %727, i64* %3, align 8
  %728 = load i32, i32* %600, align 4
  %729 = sext i32 %728 to i64
  store i64 %729, i64* %RCX.i320, align 8
  %730 = add i64 %726, %729
  %731 = add i64 %716, 20
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i8*
  %733 = load i8, i8* %732, align 1
  %734 = sext i8 %733 to i64
  %735 = and i64 %734, 4294967295
  store i64 %735, i64* %RDX.i312, align 8
  %736 = sext i8 %733 to i32
  %737 = add nsw i32 %736, -45
  %738 = icmp ult i8 %733, 45
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %14, align 1
  %740 = and i32 %737, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740)
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %21, align 1
  %745 = xor i32 %737, %736
  %746 = lshr i32 %745, 4
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  store i8 %748, i8* %27, align 1
  %749 = icmp eq i32 %737, 0
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %30, align 1
  %751 = lshr i32 %737, 31
  %752 = trunc i32 %751 to i8
  store i8 %752, i8* %33, align 1
  %753 = lshr i32 %736, 31
  %754 = xor i32 %751, %753
  %755 = add nuw nsw i32 %754, %753
  %756 = icmp eq i32 %755, 2
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %39, align 1
  %.v46 = select i1 %749, i64 58, i64 29
  %758 = add i64 %716, %.v46
  store i64 %758, i64* %3, align 8
  br i1 %749, label %block_.L_403344, label %block_403327

block_403327:                                     ; preds = %block_40330a
  %759 = add i64 %758, 4
  store i64 %759, i64* %3, align 8
  %760 = load i64, i64* %588, align 8
  store i64 %760, i64* %RAX.i345, align 8
  %761 = add i64 %758, 8
  store i64 %761, i64* %3, align 8
  %762 = load i32, i32* %552, align 4
  %763 = sext i32 %762 to i64
  store i64 %763, i64* %RCX.i320, align 8
  %764 = shl nsw i64 %763, 3
  %765 = add i64 %764, %760
  %766 = add i64 %758, 12
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i64*
  %768 = load i64, i64* %767, align 8
  store i64 %768, i64* %RAX.i345, align 8
  %769 = add i64 %758, 16
  store i64 %769, i64* %3, align 8
  %770 = load i32, i32* %600, align 4
  %771 = sext i32 %770 to i64
  store i64 %771, i64* %RCX.i320, align 8
  %772 = add i64 %768, %771
  %773 = add i64 %758, 20
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i8*
  %775 = load i8, i8* %774, align 1
  %776 = sext i8 %775 to i64
  %777 = and i64 %776, 4294967295
  store i64 %777, i64* %RDX.i312, align 8
  %778 = sext i8 %775 to i32
  %779 = add nsw i32 %778, -126
  %780 = icmp ult i8 %775, 126
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %14, align 1
  %782 = and i32 %779, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %21, align 1
  %787 = xor i32 %778, 16
  %788 = xor i32 %787, %779
  %789 = lshr i32 %788, 4
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  store i8 %791, i8* %27, align 1
  %792 = icmp eq i32 %779, 0
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %30, align 1
  %794 = lshr i32 %779, 31
  %795 = trunc i32 %794 to i8
  store i8 %795, i8* %33, align 1
  %796 = lshr i32 %778, 31
  %797 = xor i32 %794, %796
  %798 = add nuw nsw i32 %797, %796
  %799 = icmp eq i32 %798, 2
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %39, align 1
  %.v47 = select i1 %792, i64 29, i64 51
  %801 = add i64 %758, %.v47
  store i64 %801, i64* %3, align 8
  br i1 %792, label %block_.L_403344, label %block_.L_40335a

block_.L_403344:                                  ; preds = %block_403327, %block_40330a, %block_4032ed, %block_4032d0, %block_4032b3
  %802 = phi i64 [ %801, %block_403327 ], [ %758, %block_40330a ], [ %716, %block_4032ed ], [ %673, %block_4032d0 ], [ %631, %block_4032b3 ]
  %803 = add i64 %549, -37
  %804 = add i64 %802, 3
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i8*
  %806 = load i8, i8* %805, align 1
  store i8 %806, i8* %AL.i37, align 1
  %807 = add i64 %802, 7
  store i64 %807, i64* %3, align 8
  %808 = load i64, i64* %588, align 8
  store i64 %808, i64* %RCX.i320, align 8
  %809 = add i64 %802, 11
  store i64 %809, i64* %3, align 8
  %810 = load i32, i32* %552, align 4
  %811 = sext i32 %810 to i64
  store i64 %811, i64* %RDX.i312, align 8
  %812 = shl nsw i64 %811, 3
  %813 = add i64 %812, %808
  %814 = add i64 %802, 15
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i64*
  %816 = load i64, i64* %815, align 8
  store i64 %816, i64* %RCX.i320, align 8
  %817 = add i64 %802, 19
  store i64 %817, i64* %3, align 8
  %818 = load i32, i32* %600, align 4
  %819 = sext i32 %818 to i64
  store i64 %819, i64* %RDX.i312, align 8
  %820 = add i64 %816, %819
  %821 = add i64 %802, 22
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i8*
  store i8 %806, i8* %822, align 1
  %.pre33 = load i64, i64* %3, align 8
  %.pre34 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40335a

block_.L_40335a:                                  ; preds = %block_403327, %block_.L_403344
  %823 = phi i64 [ %.pre34, %block_.L_403344 ], [ %549, %block_403327 ]
  %824 = phi i64 [ %.pre33, %block_.L_403344 ], [ %801, %block_403327 ]
  %825 = add i64 %823, -24
  %826 = add i64 %824, 8
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i32*
  %828 = load i32, i32* %827, align 4
  %829 = add i32 %828, 1
  %830 = zext i32 %829 to i64
  store i64 %830, i64* %RAX.i345, align 8
  %831 = icmp eq i32 %828, -1
  %832 = icmp eq i32 %829, 0
  %833 = or i1 %831, %832
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %14, align 1
  %835 = and i32 %829, 255
  %836 = tail call i32 @llvm.ctpop.i32(i32 %835)
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  %839 = xor i8 %838, 1
  store i8 %839, i8* %21, align 1
  %840 = xor i32 %829, %828
  %841 = lshr i32 %840, 4
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  store i8 %843, i8* %27, align 1
  %844 = zext i1 %832 to i8
  store i8 %844, i8* %30, align 1
  %845 = lshr i32 %829, 31
  %846 = trunc i32 %845 to i8
  store i8 %846, i8* %33, align 1
  %847 = lshr i32 %828, 31
  %848 = xor i32 %845, %847
  %849 = add nuw nsw i32 %848, %845
  %850 = icmp eq i32 %849, 2
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %39, align 1
  %852 = add i64 %824, 14
  store i64 %852, i64* %3, align 8
  store i32 %829, i32* %827, align 4
  %853 = load i64, i64* %3, align 8
  %854 = add i64 %853, -193
  store i64 %854, i64* %3, align 8
  br label %block_.L_4032a7

block_.L_40336d:                                  ; preds = %block_.L_4032a7
  %855 = add i64 %549, -20
  %856 = add i64 %585, 8
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = add i32 %858, 1
  %860 = zext i32 %859 to i64
  store i64 %860, i64* %RAX.i345, align 8
  %861 = icmp eq i32 %858, -1
  %862 = icmp eq i32 %859, 0
  %863 = or i1 %861, %862
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %14, align 1
  %865 = and i32 %859, 255
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865)
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %21, align 1
  %870 = xor i32 %859, %858
  %871 = lshr i32 %870, 4
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  store i8 %873, i8* %27, align 1
  %874 = zext i1 %862 to i8
  store i8 %874, i8* %30, align 1
  %875 = lshr i32 %859, 31
  %876 = trunc i32 %875 to i8
  store i8 %876, i8* %33, align 1
  %877 = lshr i32 %858, 31
  %878 = xor i32 %875, %877
  %879 = add nuw nsw i32 %878, %875
  %880 = icmp eq i32 %879, 2
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %39, align 1
  %882 = add i64 %585, 14
  store i64 %882, i64* %3, align 8
  store i32 %859, i32* %857, align 4
  %883 = load i64, i64* %3, align 8
  %884 = add i64 %883, -594
  store i64 %884, i64* %3, align 8
  br label %block_.L_403129

block_.L_403380:                                  ; preds = %block_.L_403129
  %885 = load i64, i64* %6, align 8
  %886 = add i64 %885, 48
  store i64 %886, i64* %6, align 8
  %887 = icmp ugt i64 %885, -49
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %14, align 1
  %889 = trunc i64 %886 to i32
  %890 = and i32 %889, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %21, align 1
  %895 = xor i64 %885, 16
  %896 = xor i64 %895, %886
  %897 = lshr i64 %896, 4
  %898 = trunc i64 %897 to i8
  %899 = and i8 %898, 1
  store i8 %899, i8* %27, align 1
  %900 = icmp eq i64 %886, 0
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %30, align 1
  %902 = lshr i64 %886, 63
  %903 = trunc i64 %902 to i8
  store i8 %903, i8* %33, align 1
  %904 = lshr i64 %885, 63
  %905 = xor i64 %902, %904
  %906 = add nuw nsw i64 %905, %902
  %907 = icmp eq i64 %906, 2
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %39, align 1
  %909 = add i64 %102, 5
  store i64 %909, i64* %3, align 8
  %910 = add i64 %885, 56
  %911 = inttoptr i64 %886 to i64*
  %912 = load i64, i64* %911, align 8
  store i64 %912, i64* %RBP.i, align 8
  store i64 %910, i64* %6, align 8
  %913 = add i64 %102, 6
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %910 to i64*
  %915 = load i64, i64* %914, align 8
  store i64 %915, i64* %3, align 8
  %916 = add i64 %885, 64
  store i64 %916, i64* %6, align 8
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 48
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
define %struct.Memory* @routine_jge_.L_403380(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_403284(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4031ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4031fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403276(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rax__rcx_2____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x100___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 256
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 8
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_je_.L_403238(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x200___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 512
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 9
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_403271(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_jmpq_.L_403151(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2d__MINUS0x25__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -37
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 45, i8* %7, align 1
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
define %struct.Memory* @routine_je_.L_4032a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4032a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x2e__MINUS0x25__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -37
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 46, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40336d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_403344(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40335a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb_MINUS0x25__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -37
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al____rcx__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %AL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40335f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4032a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403372(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_403129(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -49
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
