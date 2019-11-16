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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @modify_stupid_eye_vital_point(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RDI.i323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -24
  %40 = load i64, i64* %RDI.i323, align 8
  %41 = add i64 %10, 11
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %RSI.i320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -24
  %45 = load i64, i64* %RSI.i320, align 8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i317 = bitcast %union.anon* %49 to i32*
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -28
  %52 = load i32, i32* %EDX.i317, align 4
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 3
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %55, align 4
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -40
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 7
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %57 to i32*
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i309 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i307 = getelementptr inbounds %union.anon, %union.anon* %62, i64 0, i32 0
  %ECX.i303 = bitcast %union.anon* %62 to i32*
  %EAX.i255 = bitcast %union.anon* %61 to i32*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %64 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_44540a

block_.L_44540a:                                  ; preds = %block_.L_445546, %entry
  %65 = phi i64 [ %.pre, %entry ], [ %692, %block_.L_445546 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.3, %block_.L_445546 ]
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -40
  %68 = add i64 %65, 4
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, -4
  %72 = icmp ult i32 %70, 4
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %14, align 1
  %74 = and i32 %71, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74)
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %21, align 1
  %79 = xor i32 %71, %70
  %80 = lshr i32 %79, 4
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  store i8 %82, i8* %26, align 1
  %83 = icmp eq i32 %71, 0
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %29, align 1
  %85 = lshr i32 %71, 31
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %32, align 1
  %87 = lshr i32 %70, 31
  %88 = xor i32 %85, %87
  %89 = add nuw nsw i32 %88, %87
  %90 = icmp eq i32 %89, 2
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %38, align 1
  %92 = icmp ne i8 %86, 0
  %93 = xor i1 %92, %90
  %.v = select i1 %93, i64 10, i64 330
  %94 = add i64 %65, %.v
  store i64 %94, i64* %3, align 8
  br i1 %93, label %block_445414, label %block_.L_445554

block_445414:                                     ; preds = %block_.L_44540a
  %95 = add i64 %94, 4
  store i64 %95, i64* %3, align 8
  %96 = load i32, i32* %69, align 4
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %RAX.i309, align 8
  %98 = shl nsw i64 %97, 2
  %99 = add nsw i64 %98, 8053168
  %100 = add i64 %94, 11
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %99 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RCX.i307, align 8
  %104 = add i64 %66, -32
  %105 = add i64 %94, 14
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i32*
  store i32 %102, i32* %106, align 4
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -24
  %109 = load i64, i64* %3, align 8
  %110 = add i64 %109, 4
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %108 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RAX.i309, align 8
  %113 = add i64 %109, 6
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RCX.i307, align 8
  %117 = add i64 %107, -32
  %118 = add i64 %109, 9
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = sub i32 %115, %120
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RCX.i307, align 8
  %123 = icmp ult i32 %115, %120
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %14, align 1
  %125 = and i32 %121, 255
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125)
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  store i8 %129, i8* %21, align 1
  %130 = xor i32 %120, %115
  %131 = xor i32 %130, %121
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %26, align 1
  %135 = icmp eq i32 %121, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %29, align 1
  %137 = lshr i32 %121, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %32, align 1
  %139 = lshr i32 %115, 31
  %140 = lshr i32 %120, 31
  %141 = xor i32 %140, %139
  %142 = xor i32 %137, %139
  %143 = add nuw nsw i32 %142, %141
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %38, align 1
  %146 = sext i32 %121 to i64
  store i64 %146, i64* %RAX.i309, align 8
  %147 = add nsw i64 %146, 12099168
  %148 = add i64 %109, 20
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i8*
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i64
  store i64 %151, i64* %RCX.i307, align 8
  %152 = zext i8 %150 to i32
  %153 = add nsw i32 %152, -3
  %154 = icmp ult i8 %150, 3
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %14, align 1
  %156 = and i32 %153, 255
  %157 = tail call i32 @llvm.ctpop.i32(i32 %156)
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  store i8 %160, i8* %21, align 1
  %161 = xor i32 %153, %152
  %162 = lshr i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %26, align 1
  %165 = icmp eq i32 %153, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %29, align 1
  %167 = lshr i32 %153, 31
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v40 = select i1 %165, i64 34, i64 29
  %169 = add i64 %109, %.v40
  store i64 %169, i64* %3, align 8
  br i1 %165, label %block_.L_445444, label %block_.L_445546

block_.L_445444:                                  ; preds = %block_445414
  %170 = add i64 %169, 4
  store i64 %170, i64* %3, align 8
  %171 = load i64, i64* %111, align 8
  store i64 %171, i64* %RAX.i309, align 8
  %172 = add i64 %169, 6
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RCX.i307, align 8
  %176 = add i64 %169, 9
  store i64 %176, i64* %3, align 8
  %177 = load i32, i32* %119, align 4
  %178 = add i32 %177, %174
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RCX.i307, align 8
  %180 = icmp ult i32 %178, %174
  %181 = icmp ult i32 %178, %177
  %182 = or i1 %180, %181
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %14, align 1
  %184 = and i32 %178, 255
  %185 = tail call i32 @llvm.ctpop.i32(i32 %184)
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  store i8 %188, i8* %21, align 1
  %189 = xor i32 %177, %174
  %190 = xor i32 %189, %178
  %191 = lshr i32 %190, 4
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  store i8 %193, i8* %26, align 1
  %194 = icmp eq i32 %178, 0
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %29, align 1
  %196 = lshr i32 %178, 31
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %32, align 1
  %198 = lshr i32 %174, 31
  %199 = lshr i32 %177, 31
  %200 = xor i32 %196, %198
  %201 = xor i32 %196, %199
  %202 = add nuw nsw i32 %200, %201
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %38, align 1
  %205 = sext i32 %178 to i64
  store i64 %205, i64* %RAX.i309, align 8
  %206 = add nsw i64 %205, 12099168
  %207 = add i64 %169, 20
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i8*
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i64
  store i64 %210, i64* %RCX.i307, align 8
  %211 = zext i8 %209 to i32
  store i8 0, i8* %14, align 1
  %212 = tail call i32 @llvm.ctpop.i32(i32 %211)
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  store i8 %215, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %216 = icmp eq i8 %209, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v41 = select i1 %216, i64 34, i64 29
  %218 = add i64 %169, %.v41
  store i64 %218, i64* %3, align 8
  br i1 %216, label %block_.L_445466, label %block_.L_445546

block_.L_445466:                                  ; preds = %block_.L_445444
  store i64 4, i64* %RAX.i309, align 8
  %219 = add i64 %107, -40
  %220 = add i64 %218, 8
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = add i32 %222, 1
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RCX.i307, align 8
  %225 = icmp eq i32 %222, -1
  %226 = icmp eq i32 %223, 0
  %227 = or i1 %225, %226
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %14, align 1
  %229 = and i32 %223, 255
  %230 = tail call i32 @llvm.ctpop.i32(i32 %229)
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  store i8 %233, i8* %21, align 1
  %234 = xor i32 %223, %222
  %235 = lshr i32 %234, 4
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  store i8 %237, i8* %26, align 1
  %238 = zext i1 %226 to i8
  store i8 %238, i8* %29, align 1
  %239 = lshr i32 %223, 31
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %32, align 1
  %241 = lshr i32 %222, 31
  %242 = xor i32 %239, %241
  %243 = add nuw nsw i32 %242, %239
  %244 = icmp eq i32 %243, 2
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %38, align 1
  %246 = add i64 %107, -48
  %247 = add i64 %218, 14
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %246 to i32*
  store i32 4, i32* %248, align 4
  %249 = load i32, i32* %ECX.i303, align 4
  %250 = zext i32 %249 to i64
  %251 = load i64, i64* %3, align 8
  store i64 %250, i64* %RAX.i309, align 8
  %252 = sext i32 %249 to i64
  %253 = lshr i64 %252, 32
  store i64 %253, i64* %63, align 8
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -48
  %256 = add i64 %251, 6
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RCX.i307, align 8
  %260 = add i64 %251, 8
  store i64 %260, i64* %3, align 8
  %261 = sext i32 %258 to i64
  %262 = shl nuw i64 %253, 32
  %263 = or i64 %262, %250
  %264 = sdiv i64 %263, %261
  %265 = shl i64 %264, 32
  %266 = ashr exact i64 %265, 32
  %267 = icmp eq i64 %264, %266
  br i1 %267, label %270, label %268

; <label>:268:                                    ; preds = %block_.L_445466
  %269 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %260, %struct.Memory* %MEMORY.0)
  %.pre29 = load i32, i32* %EDX.i317, align 4
  %.pre30 = load i64, i64* %3, align 8
  %.pre31 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:270:                                    ; preds = %block_.L_445466
  %271 = srem i64 %263, %261
  %272 = and i64 %264, 4294967295
  store i64 %272, i64* %RAX.i309, align 8
  %273 = and i64 %271, 4294967295
  store i64 %273, i64* %64, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %274 = trunc i64 %271 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %270, %268
  %275 = phi i64 [ %.pre31, %268 ], [ %254, %270 ]
  %276 = phi i64 [ %.pre30, %268 ], [ %260, %270 ]
  %277 = phi i32 [ %.pre29, %268 ], [ %274, %270 ]
  %278 = phi %struct.Memory* [ %269, %268 ], [ %MEMORY.0, %270 ]
  %279 = sext i32 %277 to i64
  store i64 %279, i64* %RSI.i320, align 8
  %280 = shl nsw i64 %279, 2
  %281 = add nsw i64 %280, 8053168
  %282 = add i64 %276, 10
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %64, align 8
  %286 = add i64 %275, -36
  %287 = add i64 %276, 13
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i32*
  store i32 %284, i32* %288, align 4
  %289 = load i64, i64* %RBP.i, align 8
  %290 = add i64 %289, -24
  %291 = load i64, i64* %3, align 8
  %292 = add i64 %291, 4
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %290 to i64*
  %294 = load i64, i64* %293, align 8
  store i64 %294, i64* %RSI.i320, align 8
  %295 = add i64 %291, 6
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i32*
  %297 = load i32, i32* %296, align 4
  %298 = zext i32 %297 to i64
  store i64 %298, i64* %64, align 8
  %299 = add i64 %289, -36
  %300 = add i64 %291, 9
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %299 to i32*
  %302 = load i32, i32* %301, align 4
  %303 = add i32 %302, %297
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %64, align 8
  %305 = icmp ult i32 %303, %297
  %306 = icmp ult i32 %303, %302
  %307 = or i1 %305, %306
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %14, align 1
  %309 = and i32 %303, 255
  %310 = tail call i32 @llvm.ctpop.i32(i32 %309)
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  %313 = xor i8 %312, 1
  store i8 %313, i8* %21, align 1
  %314 = xor i32 %302, %297
  %315 = xor i32 %314, %303
  %316 = lshr i32 %315, 4
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  store i8 %318, i8* %26, align 1
  %319 = icmp eq i32 %303, 0
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %29, align 1
  %321 = lshr i32 %303, 31
  %322 = trunc i32 %321 to i8
  store i8 %322, i8* %32, align 1
  %323 = lshr i32 %297, 31
  %324 = lshr i32 %302, 31
  %325 = xor i32 %321, %323
  %326 = xor i32 %321, %324
  %327 = add nuw nsw i32 %325, %326
  %328 = icmp eq i32 %327, 2
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %38, align 1
  %330 = sext i32 %303 to i64
  store i64 %330, i64* %RSI.i320, align 8
  %331 = add nsw i64 %330, 12099168
  %332 = add i64 %291, 20
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i8*
  %334 = load i8, i8* %333, align 1
  %335 = zext i8 %334 to i64
  store i64 %335, i64* %64, align 8
  %336 = zext i8 %334 to i32
  store i8 0, i8* %14, align 1
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %341 = icmp eq i8 %334, 0
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v42 = select i1 %341, i64 29, i64 58
  %343 = add i64 %291, %.v42
  store i64 %343, i64* %3, align 8
  br i1 %341, label %block_4454a6, label %block_.L_445546

block_4454a6:                                     ; preds = %routine_idivl__ecx.exit
  %344 = add i64 %343, 4
  store i64 %344, i64* %3, align 8
  %345 = load i64, i64* %293, align 8
  store i64 %345, i64* %RAX.i309, align 8
  %346 = add i64 %343, 6
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RCX.i307, align 8
  %350 = add i64 %343, 9
  store i64 %350, i64* %3, align 8
  %351 = load i32, i32* %301, align 4
  %352 = sub i32 %348, %351
  %353 = zext i32 %352 to i64
  store i64 %353, i64* %RCX.i307, align 8
  %354 = icmp ult i32 %348, %351
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %14, align 1
  %356 = and i32 %352, 255
  %357 = tail call i32 @llvm.ctpop.i32(i32 %356)
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  %360 = xor i8 %359, 1
  store i8 %360, i8* %21, align 1
  %361 = xor i32 %351, %348
  %362 = xor i32 %361, %352
  %363 = lshr i32 %362, 4
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  store i8 %365, i8* %26, align 1
  %366 = icmp eq i32 %352, 0
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %29, align 1
  %368 = lshr i32 %352, 31
  %369 = trunc i32 %368 to i8
  store i8 %369, i8* %32, align 1
  %370 = lshr i32 %348, 31
  %371 = lshr i32 %351, 31
  %372 = xor i32 %371, %370
  %373 = xor i32 %368, %370
  %374 = add nuw nsw i32 %373, %372
  %375 = icmp eq i32 %374, 2
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %38, align 1
  %377 = sext i32 %352 to i64
  store i64 %377, i64* %RAX.i309, align 8
  %378 = add nsw i64 %377, 12099168
  %379 = add i64 %343, 20
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i8*
  %381 = load i8, i8* %380, align 1
  %382 = zext i8 %381 to i64
  store i64 %382, i64* %RCX.i307, align 8
  %383 = zext i8 %381 to i32
  store i8 0, i8* %14, align 1
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383)
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %388 = icmp eq i8 %381, 0
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v43 = select i1 %388, i64 34, i64 29
  %390 = add i64 %343, %.v43
  store i64 %390, i64* %3, align 8
  br i1 %388, label %block_.L_4454c8, label %block_.L_445546

block_.L_4454c8:                                  ; preds = %block_4454a6
  %391 = add i64 %390, 4
  store i64 %391, i64* %3, align 8
  %392 = load i64, i64* %293, align 8
  store i64 %392, i64* %RAX.i309, align 8
  %393 = add i64 %390, 6
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i32*
  %395 = load i32, i32* %394, align 4
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RCX.i307, align 8
  %397 = add i64 %289, -32
  %398 = add i64 %390, 9
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = shl i32 %400, 1
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %64, align 8
  %403 = add i32 %401, %395
  %404 = zext i32 %403 to i64
  store i64 %404, i64* %RCX.i307, align 8
  %405 = icmp ult i32 %403, %395
  %406 = icmp ult i32 %403, %401
  %407 = or i1 %405, %406
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %14, align 1
  %409 = and i32 %403, 255
  %410 = tail call i32 @llvm.ctpop.i32(i32 %409)
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  store i8 %413, i8* %21, align 1
  %414 = xor i32 %401, %395
  %415 = xor i32 %414, %403
  %416 = lshr i32 %415, 4
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  store i8 %418, i8* %26, align 1
  %419 = icmp eq i32 %403, 0
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %29, align 1
  %421 = lshr i32 %403, 31
  %422 = trunc i32 %421 to i8
  store i8 %422, i8* %32, align 1
  %423 = lshr i32 %395, 31
  %424 = lshr i32 %400, 30
  %425 = and i32 %424, 1
  %426 = xor i32 %421, %423
  %427 = xor i32 %421, %425
  %428 = add nuw nsw i32 %426, %427
  %429 = icmp eq i32 %428, 2
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %38, align 1
  %431 = sext i32 %403 to i64
  store i64 %431, i64* %RAX.i309, align 8
  %432 = add nsw i64 %431, 12099168
  %433 = add i64 %390, 24
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i8*
  %435 = load i8, i8* %434, align 1
  %436 = zext i8 %435 to i64
  store i64 %436, i64* %RCX.i307, align 8
  %437 = zext i8 %435 to i32
  store i8 0, i8* %14, align 1
  %438 = tail call i32 @llvm.ctpop.i32(i32 %437)
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  %441 = xor i8 %440, 1
  store i8 %441, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %442 = icmp eq i8 %435, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v44 = select i1 %442, i64 33, i64 97
  %444 = add i64 %390, %.v44
  store i64 %444, i64* %3, align 8
  br i1 %442, label %block_4454ea, label %block_.L_44552a

block_4454ea:                                     ; preds = %block_.L_4454c8
  %445 = load i64, i64* %RBP.i, align 8
  %446 = add i64 %445, -24
  %447 = add i64 %444, 4
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i64*
  %449 = load i64, i64* %448, align 8
  store i64 %449, i64* %RAX.i309, align 8
  %450 = add i64 %444, 6
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to i32*
  %452 = load i32, i32* %451, align 4
  %453 = zext i32 %452 to i64
  store i64 %453, i64* %RCX.i307, align 8
  %454 = add i64 %445, -32
  %455 = add i64 %444, 9
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = add i32 %457, %452
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %RCX.i307, align 8
  %460 = icmp ult i32 %458, %452
  %461 = icmp ult i32 %458, %457
  %462 = or i1 %460, %461
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %14, align 1
  %464 = and i32 %458, 255
  %465 = tail call i32 @llvm.ctpop.i32(i32 %464)
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = xor i8 %467, 1
  store i8 %468, i8* %21, align 1
  %469 = xor i32 %457, %452
  %470 = xor i32 %469, %458
  %471 = lshr i32 %470, 4
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  store i8 %473, i8* %26, align 1
  %474 = icmp eq i32 %458, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %29, align 1
  %476 = lshr i32 %458, 31
  %477 = trunc i32 %476 to i8
  store i8 %477, i8* %32, align 1
  %478 = lshr i32 %452, 31
  %479 = lshr i32 %457, 31
  %480 = xor i32 %476, %478
  %481 = xor i32 %476, %479
  %482 = add nuw nsw i32 %480, %481
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %38, align 1
  %485 = add i64 %445, -36
  %486 = add i64 %444, 12
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = add i32 %488, %458
  %490 = zext i32 %489 to i64
  store i64 %490, i64* %RCX.i307, align 8
  %491 = icmp ult i32 %489, %458
  %492 = icmp ult i32 %489, %488
  %493 = or i1 %491, %492
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %14, align 1
  %495 = and i32 %489, 255
  %496 = tail call i32 @llvm.ctpop.i32(i32 %495)
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  store i8 %499, i8* %21, align 1
  %500 = xor i32 %488, %458
  %501 = xor i32 %500, %489
  %502 = lshr i32 %501, 4
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  store i8 %504, i8* %26, align 1
  %505 = icmp eq i32 %489, 0
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %29, align 1
  %507 = lshr i32 %489, 31
  %508 = trunc i32 %507 to i8
  store i8 %508, i8* %32, align 1
  %509 = lshr i32 %488, 31
  %510 = xor i32 %507, %476
  %511 = xor i32 %507, %509
  %512 = add nuw nsw i32 %510, %511
  %513 = icmp eq i32 %512, 2
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %38, align 1
  %515 = sext i32 %489 to i64
  store i64 %515, i64* %RAX.i309, align 8
  %516 = add nsw i64 %515, 12099168
  %517 = add i64 %444, 23
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %516 to i8*
  %519 = load i8, i8* %518, align 1
  %520 = zext i8 %519 to i64
  store i64 %520, i64* %RCX.i307, align 8
  %521 = zext i8 %519 to i32
  store i8 0, i8* %14, align 1
  %522 = tail call i32 @llvm.ctpop.i32(i32 %521)
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  store i8 %525, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %526 = icmp eq i8 %519, 0
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v45 = select i1 %526, i64 32, i64 64
  %528 = add i64 %444, %.v45
  store i64 %528, i64* %3, align 8
  br i1 %526, label %block_44550a, label %block_.L_44552a

block_44550a:                                     ; preds = %block_4454ea
  %529 = load i64, i64* %RBP.i, align 8
  %530 = add i64 %529, -24
  %531 = add i64 %528, 4
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i64*
  %533 = load i64, i64* %532, align 8
  store i64 %533, i64* %RAX.i309, align 8
  %534 = add i64 %528, 6
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i32*
  %536 = load i32, i32* %535, align 4
  %537 = zext i32 %536 to i64
  store i64 %537, i64* %RCX.i307, align 8
  %538 = add i64 %529, -32
  %539 = add i64 %528, 9
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i32*
  %541 = load i32, i32* %540, align 4
  %542 = add i32 %541, %536
  %543 = zext i32 %542 to i64
  store i64 %543, i64* %RCX.i307, align 8
  %544 = icmp ult i32 %542, %536
  %545 = icmp ult i32 %542, %541
  %546 = or i1 %544, %545
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %14, align 1
  %548 = and i32 %542, 255
  %549 = tail call i32 @llvm.ctpop.i32(i32 %548)
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  %552 = xor i8 %551, 1
  store i8 %552, i8* %21, align 1
  %553 = xor i32 %541, %536
  %554 = xor i32 %553, %542
  %555 = lshr i32 %554, 4
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  store i8 %557, i8* %26, align 1
  %558 = icmp eq i32 %542, 0
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %29, align 1
  %560 = lshr i32 %542, 31
  %561 = trunc i32 %560 to i8
  store i8 %561, i8* %32, align 1
  %562 = lshr i32 %536, 31
  %563 = lshr i32 %541, 31
  %564 = xor i32 %560, %562
  %565 = xor i32 %560, %563
  %566 = add nuw nsw i32 %564, %565
  %567 = icmp eq i32 %566, 2
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %38, align 1
  %569 = add i64 %529, -36
  %570 = add i64 %528, 12
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = sub i32 %542, %572
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RCX.i307, align 8
  %575 = icmp ult i32 %542, %572
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %14, align 1
  %577 = and i32 %573, 255
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577)
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %21, align 1
  %582 = xor i32 %572, %542
  %583 = xor i32 %582, %573
  %584 = lshr i32 %583, 4
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  store i8 %586, i8* %26, align 1
  %587 = icmp eq i32 %573, 0
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %29, align 1
  %589 = lshr i32 %573, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %32, align 1
  %591 = lshr i32 %572, 31
  %592 = xor i32 %591, %560
  %593 = xor i32 %589, %560
  %594 = add nuw nsw i32 %593, %592
  %595 = icmp eq i32 %594, 2
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %38, align 1
  %597 = sext i32 %573 to i64
  store i64 %597, i64* %RAX.i309, align 8
  %598 = add nsw i64 %597, 12099168
  %599 = add i64 %528, 23
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i8*
  %601 = load i8, i8* %600, align 1
  %602 = zext i8 %601 to i64
  store i64 %602, i64* %RCX.i307, align 8
  %603 = zext i8 %601 to i32
  store i8 0, i8* %14, align 1
  %604 = tail call i32 @llvm.ctpop.i32(i32 %603)
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  store i8 %607, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %608 = icmp eq i8 %601, 0
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v46 = select i1 %608, i64 55, i64 32
  %610 = add i64 %528, %.v46
  store i64 %610, i64* %3, align 8
  br i1 %608, label %block_44550a.block_.L_445546_crit_edge, label %block_.L_44552a

block_44550a.block_.L_445546_crit_edge:           ; preds = %block_44550a
  %.pre33 = load i64, i64* %RBP.i, align 8
  br label %block_.L_445546

block_.L_44552a:                                  ; preds = %block_4454ea, %block_.L_4454c8, %block_44550a
  %611 = phi i64 [ %610, %block_44550a ], [ %528, %block_4454ea ], [ %444, %block_.L_4454c8 ]
  %612 = load i64, i64* %RBP.i, align 8
  %613 = add i64 %612, -32
  %614 = add i64 %611, 3
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i32*
  %616 = load i32, i32* %615, align 4
  %617 = zext i32 %616 to i64
  store i64 %617, i64* %RAX.i309, align 8
  %618 = add i64 %612, -24
  %619 = add i64 %611, 7
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i64*
  %621 = load i64, i64* %620, align 8
  store i64 %621, i64* %RCX.i307, align 8
  %622 = add i64 %611, 9
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %621 to i32*
  %624 = load i32, i32* %623, align 4
  %625 = add i32 %624, %616
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %RAX.i309, align 8
  %627 = icmp ult i32 %625, %616
  %628 = icmp ult i32 %625, %624
  %629 = or i1 %627, %628
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %14, align 1
  %631 = and i32 %625, 255
  %632 = tail call i32 @llvm.ctpop.i32(i32 %631)
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  store i8 %635, i8* %21, align 1
  %636 = xor i32 %624, %616
  %637 = xor i32 %636, %625
  %638 = lshr i32 %637, 4
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  store i8 %640, i8* %26, align 1
  %641 = icmp eq i32 %625, 0
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %29, align 1
  %643 = lshr i32 %625, 31
  %644 = trunc i32 %643 to i8
  store i8 %644, i8* %32, align 1
  %645 = lshr i32 %616, 31
  %646 = lshr i32 %624, 31
  %647 = xor i32 %643, %645
  %648 = xor i32 %643, %646
  %649 = add nuw nsw i32 %647, %648
  %650 = icmp eq i32 %649, 2
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %38, align 1
  %652 = add i64 %611, 11
  store i64 %652, i64* %3, align 8
  store i32 %625, i32* %623, align 4
  %653 = load i64, i64* %RBP.i, align 8
  %654 = add i64 %653, -4
  %655 = load i64, i64* %3, align 8
  %656 = add i64 %655, 7
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %654 to i32*
  store i32 1, i32* %657, align 4
  %658 = load i64, i64* %3, align 8
  %659 = add i64 %658, 237
  store i64 %659, i64* %3, align 8
  br label %block_.L_445629

block_.L_445546:                                  ; preds = %routine_idivl__ecx.exit, %block_44550a.block_.L_445546_crit_edge, %block_445414, %block_4454a6, %block_.L_445444
  %660 = phi i64 [ %107, %block_.L_445444 ], [ %289, %block_4454a6 ], [ %289, %routine_idivl__ecx.exit ], [ %.pre33, %block_44550a.block_.L_445546_crit_edge ], [ %107, %block_445414 ]
  %661 = phi i64 [ %218, %block_.L_445444 ], [ %390, %block_4454a6 ], [ %343, %routine_idivl__ecx.exit ], [ %610, %block_44550a.block_.L_445546_crit_edge ], [ %169, %block_445414 ]
  %.sink14 = phi i64 [ 229, %block_.L_445444 ], [ 131, %block_4454a6 ], [ 131, %routine_idivl__ecx.exit ], [ 5, %block_44550a.block_.L_445546_crit_edge ], [ 263, %block_445414 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_.L_445444 ], [ %278, %block_4454a6 ], [ %278, %routine_idivl__ecx.exit ], [ %278, %block_44550a.block_.L_445546_crit_edge ], [ %MEMORY.0, %block_445414 ]
  %662 = add i64 %661, %.sink14
  %663 = add i64 %660, -40
  %664 = add i64 %662, 3
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i32*
  %666 = load i32, i32* %665, align 4
  %667 = add i32 %666, 1
  %668 = zext i32 %667 to i64
  store i64 %668, i64* %RAX.i309, align 8
  %669 = icmp eq i32 %666, -1
  %670 = icmp eq i32 %667, 0
  %671 = or i1 %669, %670
  %672 = zext i1 %671 to i8
  store i8 %672, i8* %14, align 1
  %673 = and i32 %667, 255
  %674 = tail call i32 @llvm.ctpop.i32(i32 %673)
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = xor i8 %676, 1
  store i8 %677, i8* %21, align 1
  %678 = xor i32 %667, %666
  %679 = lshr i32 %678, 4
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  store i8 %681, i8* %26, align 1
  %682 = zext i1 %670 to i8
  store i8 %682, i8* %29, align 1
  %683 = lshr i32 %667, 31
  %684 = trunc i32 %683 to i8
  store i8 %684, i8* %32, align 1
  %685 = lshr i32 %666, 31
  %686 = xor i32 %683, %685
  %687 = add nuw nsw i32 %686, %683
  %688 = icmp eq i32 %687, 2
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %38, align 1
  %690 = add i64 %662, 9
  store i64 %690, i64* %3, align 8
  store i32 %667, i32* %665, align 4
  %691 = load i64, i64* %3, align 8
  %692 = add i64 %691, -325
  store i64 %692, i64* %3, align 8
  br label %block_.L_44540a

block_.L_445554:                                  ; preds = %block_.L_44540a
  %693 = add i64 %66, -28
  %694 = add i64 %94, 4
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  %696 = load i32, i32* %695, align 4
  store i8 0, i8* %14, align 1
  %697 = and i32 %696, 255
  %698 = tail call i32 @llvm.ctpop.i32(i32 %697)
  %699 = trunc i32 %698 to i8
  %700 = and i8 %699, 1
  %701 = xor i8 %700, 1
  store i8 %701, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %702 = icmp eq i32 %696, 0
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %29, align 1
  %704 = lshr i32 %696, 31
  %705 = trunc i32 %704 to i8
  store i8 %705, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v35 = select i1 %702, i64 10, i64 206
  %706 = add i64 %94, %.v35
  store i64 %706, i64* %3, align 8
  br i1 %702, label %block_44555e, label %block_.L_445622

block_44555e:                                     ; preds = %block_.L_445554
  store i64 1, i64* %64, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %RCX.i98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 0, i64* %RCX.i98, align 8
  store i64 3, i64* %RAX.i309, align 8
  %707 = add i64 %66, -24
  %708 = add i64 %706, 18
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i64*
  %710 = load i64, i64* %709, align 8
  store i64 %710, i64* %RSI.i320, align 8
  %711 = add i64 %706, 20
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i32*
  %713 = load i32, i32* %712, align 4
  %714 = zext i32 %713 to i64
  store i64 %714, i64* %RDI.i323, align 8
  %715 = add i64 %66, -16
  %716 = add i64 %706, 24
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i64*
  %718 = load i64, i64* %717, align 8
  store i64 %718, i64* %RSI.i320, align 8
  %719 = add i64 %718, 1200
  %720 = add i64 %706, 30
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = sub i32 3, %722
  %724 = zext i32 %723 to i64
  store i64 %724, i64* %RAX.i309, align 8
  %725 = icmp ugt i32 %722, 3
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %14, align 1
  %727 = and i32 %723, 255
  %728 = tail call i32 @llvm.ctpop.i32(i32 %727)
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  %731 = xor i8 %730, 1
  store i8 %731, i8* %21, align 1
  %732 = xor i32 %722, %723
  %733 = lshr i32 %732, 4
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  store i8 %735, i8* %26, align 1
  %736 = icmp eq i32 %723, 0
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %29, align 1
  %738 = lshr i32 %723, 31
  %739 = trunc i32 %738 to i8
  store i8 %739, i8* %32, align 1
  %740 = lshr i32 %722, 31
  %741 = add nuw nsw i32 %738, %740
  %742 = icmp eq i32 %741, 2
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %38, align 1
  store i64 %724, i64* %RSI.i320, align 8
  %744 = add i64 %706, -212910
  %745 = add i64 %706, 37
  %746 = load i64, i64* %6, align 8
  %747 = add i64 %746, -8
  %748 = inttoptr i64 %747 to i64*
  store i64 %745, i64* %748, align 8
  store i64 %747, i64* %6, align 8
  store i64 %744, i64* %3, align 8
  %call2_44557e = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %744, %struct.Memory* %MEMORY.0)
  %749 = load i32, i32* %EAX.i255, align 4
  %750 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %751 = and i32 %749, 255
  %752 = tail call i32 @llvm.ctpop.i32(i32 %751)
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  store i8 %755, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %756 = icmp eq i32 %749, 0
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %29, align 1
  %758 = lshr i32 %749, 31
  %759 = trunc i32 %758 to i8
  store i8 %759, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v36 = select i1 %756, i64 9, i64 154
  %760 = add i64 %750, %.v36
  store i64 %760, i64* %3, align 8
  %761 = load i64, i64* %RBP.i, align 8
  br i1 %756, label %block_44558c, label %block_.L_44561d

block_44558c:                                     ; preds = %block_44555e
  %762 = add i64 %761, -40
  %763 = add i64 %760, 7
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i32*
  store i32 4, i32* %764, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_445593

block_.L_445593:                                  ; preds = %block_.L_445605, %block_44558c
  %765 = phi i64 [ %.pre26, %block_44558c ], [ %980, %block_.L_445605 ]
  %766 = load i64, i64* %RBP.i, align 8
  %767 = add i64 %766, -40
  %768 = add i64 %765, 4
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i32*
  %770 = load i32, i32* %769, align 4
  %771 = add i32 %770, -8
  %772 = icmp ult i32 %770, 8
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %14, align 1
  %774 = and i32 %771, 255
  %775 = tail call i32 @llvm.ctpop.i32(i32 %774)
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  %778 = xor i8 %777, 1
  store i8 %778, i8* %21, align 1
  %779 = xor i32 %771, %770
  %780 = lshr i32 %779, 4
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  store i8 %782, i8* %26, align 1
  %783 = icmp eq i32 %771, 0
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %29, align 1
  %785 = lshr i32 %771, 31
  %786 = trunc i32 %785 to i8
  store i8 %786, i8* %32, align 1
  %787 = lshr i32 %770, 31
  %788 = xor i32 %785, %787
  %789 = add nuw nsw i32 %788, %787
  %790 = icmp eq i32 %789, 2
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %38, align 1
  %792 = icmp ne i8 %786, 0
  %793 = xor i1 %792, %790
  %.v37 = select i1 %793, i64 10, i64 133
  %794 = add i64 %765, %.v37
  %795 = add i64 %794, 5
  store i64 %795, i64* %3, align 8
  br i1 %793, label %block_44559d, label %block_.L_44561d.loopexit

block_44559d:                                     ; preds = %block_.L_445593
  store i64 3, i64* %RAX.i309, align 8
  %796 = add i64 %766, -24
  %797 = add i64 %794, 9
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %796 to i64*
  %799 = load i64, i64* %798, align 8
  store i64 %799, i64* %RCX.i98, align 8
  %800 = add i64 %794, 11
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i32*
  %802 = load i32, i32* %801, align 4
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %64, align 8
  %804 = add i64 %794, 15
  store i64 %804, i64* %3, align 8
  %805 = load i32, i32* %769, align 4
  %806 = sext i32 %805 to i64
  store i64 %806, i64* %RCX.i98, align 8
  %807 = shl nsw i64 %806, 2
  %808 = add nsw i64 %807, 8053168
  %809 = add i64 %794, 22
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i32*
  %811 = load i32, i32* %810, align 4
  %812 = add i32 %811, %802
  %813 = zext i32 %812 to i64
  store i64 %813, i64* %64, align 8
  %814 = icmp ult i32 %812, %802
  %815 = icmp ult i32 %812, %811
  %816 = or i1 %814, %815
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %14, align 1
  %818 = and i32 %812, 255
  %819 = tail call i32 @llvm.ctpop.i32(i32 %818)
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = xor i8 %821, 1
  store i8 %822, i8* %21, align 1
  %823 = xor i32 %811, %802
  %824 = xor i32 %823, %812
  %825 = lshr i32 %824, 4
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  store i8 %827, i8* %26, align 1
  %828 = icmp eq i32 %812, 0
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %29, align 1
  %830 = lshr i32 %812, 31
  %831 = trunc i32 %830 to i8
  store i8 %831, i8* %32, align 1
  %832 = lshr i32 %802, 31
  %833 = lshr i32 %811, 31
  %834 = xor i32 %830, %832
  %835 = xor i32 %830, %833
  %836 = add nuw nsw i32 %834, %835
  %837 = icmp eq i32 %836, 2
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %38, align 1
  %839 = add i64 %766, -44
  %840 = add i64 %794, 25
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i32*
  store i32 %812, i32* %841, align 4
  %842 = load i64, i64* %RBP.i, align 8
  %843 = add i64 %842, -44
  %844 = load i64, i64* %3, align 8
  %845 = add i64 %844, 4
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %843 to i32*
  %847 = load i32, i32* %846, align 4
  %848 = sext i32 %847 to i64
  store i64 %848, i64* %RCX.i98, align 8
  %849 = add nsw i64 %848, 12099168
  %850 = add i64 %844, 12
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i8*
  %852 = load i8, i8* %851, align 1
  %853 = zext i8 %852 to i64
  store i64 %853, i64* %64, align 8
  %854 = add i64 %842, -16
  %855 = add i64 %844, 16
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %854 to i64*
  %857 = load i64, i64* %856, align 8
  store i64 %857, i64* %RCX.i98, align 8
  %858 = load i64, i64* %RAX.i309, align 8
  %859 = add i64 %857, 1200
  %860 = add i64 %844, 22
  store i64 %860, i64* %3, align 8
  %861 = trunc i64 %858 to i32
  %862 = inttoptr i64 %859 to i32*
  %863 = load i32, i32* %862, align 4
  %864 = sub i32 %861, %863
  %865 = zext i32 %864 to i64
  store i64 %865, i64* %RAX.i309, align 8
  %866 = lshr i32 %864, 31
  %867 = zext i8 %852 to i32
  %868 = sub i32 %867, %864
  %869 = icmp ult i32 %867, %864
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %14, align 1
  %871 = and i32 %868, 255
  %872 = tail call i32 @llvm.ctpop.i32(i32 %871)
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  store i8 %875, i8* %21, align 1
  %876 = xor i32 %864, %867
  %877 = xor i32 %876, %868
  %878 = lshr i32 %877, 4
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  store i8 %880, i8* %26, align 1
  %881 = icmp eq i32 %868, 0
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %29, align 1
  %883 = lshr i32 %868, 31
  %884 = trunc i32 %883 to i8
  store i8 %884, i8* %32, align 1
  %885 = add nuw nsw i32 %883, %866
  %886 = icmp eq i32 %885, 2
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %38, align 1
  %.v38 = select i1 %881, i64 30, i64 79
  %888 = add i64 %844, %.v38
  store i64 %888, i64* %3, align 8
  br i1 %881, label %block_4455d4, label %block_.L_445605

block_4455d4:                                     ; preds = %block_44559d
  %889 = add i64 %888, 3
  store i64 %889, i64* %3, align 8
  %890 = load i32, i32* %846, align 4
  %891 = zext i32 %890 to i64
  store i64 %891, i64* %RDI.i323, align 8
  %892 = add i64 %888, -220756
  %893 = add i64 %888, 8
  %894 = load i64, i64* %6, align 8
  %895 = add i64 %894, -8
  %896 = inttoptr i64 %895 to i64*
  store i64 %893, i64* %896, align 8
  store i64 %895, i64* %6, align 8
  store i64 %892, i64* %3, align 8
  %call2_4455d7 = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %892, %struct.Memory* %call2_44557e)
  %897 = load i32, i32* %EAX.i255, align 4
  %898 = load i64, i64* %3, align 8
  %899 = add i32 %897, -1
  %900 = icmp eq i32 %897, 0
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %14, align 1
  %902 = and i32 %899, 255
  %903 = tail call i32 @llvm.ctpop.i32(i32 %902)
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = xor i8 %905, 1
  store i8 %906, i8* %21, align 1
  %907 = xor i32 %899, %897
  %908 = lshr i32 %907, 4
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  store i8 %910, i8* %26, align 1
  %911 = icmp eq i32 %899, 0
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %29, align 1
  %913 = lshr i32 %899, 31
  %914 = trunc i32 %913 to i8
  store i8 %914, i8* %32, align 1
  %915 = lshr i32 %897, 31
  %916 = xor i32 %913, %915
  %917 = add nuw nsw i32 %916, %915
  %918 = icmp eq i32 %917, 2
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %38, align 1
  %.v39 = select i1 %911, i64 9, i64 41
  %920 = add i64 %898, %.v39
  store i64 %920, i64* %3, align 8
  br i1 %911, label %block_4455e5, label %block_4455d4.block_.L_445605_crit_edge

block_4455d4.block_.L_445605_crit_edge:           ; preds = %block_4455d4
  %.pre27 = load i64, i64* %RBP.i, align 8
  br label %block_.L_445605

block_4455e5:                                     ; preds = %block_4455d4
  store i64 1, i64* %RSI.i320, align 8
  %921 = load i64, i64* %RBP.i, align 8
  %922 = add i64 %921, -44
  %923 = add i64 %920, 8
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to i32*
  %925 = load i32, i32* %924, align 4
  %926 = zext i32 %925 to i64
  store i64 %926, i64* %RDI.i323, align 8
  %927 = add i64 %921, -24
  %928 = add i64 %920, 12
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i64*
  %930 = load i64, i64* %929, align 8
  store i64 %930, i64* %64, align 8
  %931 = add i64 %920, -220581
  %932 = add i64 %920, 17
  %933 = load i64, i64* %6, align 8
  %934 = add i64 %933, -8
  %935 = inttoptr i64 %934 to i64*
  store i64 %932, i64* %935, align 8
  store i64 %934, i64* %6, align 8
  store i64 %931, i64* %3, align 8
  %call2_4455f1 = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %931, %struct.Memory* %call2_44557e)
  %936 = load i64, i64* %RBP.i, align 8
  %937 = add i64 %936, -4
  %938 = load i64, i64* %3, align 8
  %939 = add i64 %938, 7
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %937 to i32*
  store i32 1, i32* %940, align 4
  %941 = load i64, i64* %RBP.i, align 8
  %942 = add i64 %941, -52
  %943 = load i32, i32* %EAX.i255, align 4
  %944 = load i64, i64* %3, align 8
  %945 = add i64 %944, 3
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %942 to i32*
  store i32 %943, i32* %946, align 4
  %947 = load i64, i64* %3, align 8
  %948 = add i64 %947, 41
  store i64 %948, i64* %3, align 8
  br label %block_.L_445629

block_.L_445605:                                  ; preds = %block_44559d, %block_4455d4.block_.L_445605_crit_edge
  %949 = phi i64 [ %.pre27, %block_4455d4.block_.L_445605_crit_edge ], [ %842, %block_44559d ]
  %950 = phi i64 [ %920, %block_4455d4.block_.L_445605_crit_edge ], [ %888, %block_44559d ]
  %951 = add i64 %949, -40
  %952 = add i64 %950, 8
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %951 to i32*
  %954 = load i32, i32* %953, align 4
  %955 = add i32 %954, 1
  %956 = zext i32 %955 to i64
  store i64 %956, i64* %RAX.i309, align 8
  %957 = icmp eq i32 %954, -1
  %958 = icmp eq i32 %955, 0
  %959 = or i1 %957, %958
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %14, align 1
  %961 = and i32 %955, 255
  %962 = tail call i32 @llvm.ctpop.i32(i32 %961)
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  store i8 %965, i8* %21, align 1
  %966 = xor i32 %955, %954
  %967 = lshr i32 %966, 4
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  store i8 %969, i8* %26, align 1
  %970 = zext i1 %958 to i8
  store i8 %970, i8* %29, align 1
  %971 = lshr i32 %955, 31
  %972 = trunc i32 %971 to i8
  store i8 %972, i8* %32, align 1
  %973 = lshr i32 %954, 31
  %974 = xor i32 %971, %973
  %975 = add nuw nsw i32 %974, %971
  %976 = icmp eq i32 %975, 2
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %38, align 1
  %978 = add i64 %950, 14
  store i64 %978, i64* %3, align 8
  store i32 %955, i32* %953, align 4
  %979 = load i64, i64* %3, align 8
  %980 = add i64 %979, -128
  store i64 %980, i64* %3, align 8
  br label %block_.L_445593

block_.L_44561d.loopexit:                         ; preds = %block_.L_445593
  br label %block_.L_44561d

block_.L_44561d:                                  ; preds = %block_.L_44561d.loopexit, %block_44555e
  %.pre28 = phi i64 [ %761, %block_44555e ], [ %766, %block_.L_44561d.loopexit ]
  %981 = phi i64 [ %760, %block_44555e ], [ %795, %block_.L_44561d.loopexit ]
  %982 = add i64 %981, 5
  store i64 %982, i64* %3, align 8
  br label %block_.L_445622

block_.L_445622:                                  ; preds = %block_.L_445554, %block_.L_44561d
  %983 = phi i64 [ %706, %block_.L_445554 ], [ %982, %block_.L_44561d ]
  %984 = phi i64 [ %66, %block_.L_445554 ], [ %.pre28, %block_.L_44561d ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.0, %block_.L_445554 ], [ %call2_44557e, %block_.L_44561d ]
  %985 = add i64 %984, -4
  %986 = add i64 %983, 7
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i32*
  store i32 0, i32* %987, align 4
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_445629

block_.L_445629:                                  ; preds = %block_.L_445622, %block_4455e5, %block_.L_44552a
  %988 = phi i64 [ %.pre32, %block_.L_445622 ], [ %948, %block_4455e5 ], [ %659, %block_.L_44552a ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.7, %block_.L_445622 ], [ %call2_4455f1, %block_4455e5 ], [ %278, %block_.L_44552a ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %989 = load i64, i64* %RBP.i, align 8
  %990 = add i64 %989, -4
  %991 = add i64 %988, 3
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i32*
  %993 = load i32, i32* %992, align 4
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %RAX.i, align 8
  %995 = load i64, i64* %6, align 8
  %996 = add i64 %995, 64
  store i64 %996, i64* %6, align 8
  %997 = icmp ugt i64 %995, -65
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %14, align 1
  %999 = trunc i64 %996 to i32
  %1000 = and i32 %999, 255
  %1001 = tail call i32 @llvm.ctpop.i32(i32 %1000)
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  %1004 = xor i8 %1003, 1
  store i8 %1004, i8* %21, align 1
  %1005 = xor i64 %996, %995
  %1006 = lshr i64 %1005, 4
  %1007 = trunc i64 %1006 to i8
  %1008 = and i8 %1007, 1
  store i8 %1008, i8* %26, align 1
  %1009 = icmp eq i64 %996, 0
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %29, align 1
  %1011 = lshr i64 %996, 63
  %1012 = trunc i64 %1011 to i8
  store i8 %1012, i8* %32, align 1
  %1013 = lshr i64 %995, 63
  %1014 = xor i64 %1011, %1013
  %1015 = add nuw nsw i64 %1014, %1011
  %1016 = icmp eq i64 %1015, 2
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %38, align 1
  %1018 = add i64 %988, 8
  store i64 %1018, i64* %3, align 8
  %1019 = add i64 %995, 72
  %1020 = inttoptr i64 %996 to i64*
  %1021 = load i64, i64* %1020, align 8
  store i64 %1021, i64* %RBP.i, align 8
  store i64 %1019, i64* %6, align 8
  %1022 = add i64 %988, 9
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1019 to i64*
  %1024 = load i64, i64* %1023, align 8
  store i64 %1024, i64* %3, align 8
  %1025 = add i64 %995, 80
  store i64 %1025, i64* %6, align 8
  ret %struct.Memory* %MEMORY.8
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
define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jge_.L_445554(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7ae1b0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8053168
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
define %struct.Memory* @routine_subl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_je_.L_445444(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_445546(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_je_.L_445466(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7ae1b0___rsi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8053168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rsi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_jne_.L_4454c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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
define %struct.Memory* @routine_je_.L_4454c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_shll__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_addl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jne_.L_44552a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_445541(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl___rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %10, %8
  %13 = icmp ult i32 %10, %9
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
  %23 = xor i32 %9, %8
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %8, 31
  %36 = lshr i32 %9, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
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
define %struct.Memory* @routine_jmpq_.L_445629(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44540a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_445622(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rsi____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RSI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x4b0__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 1200
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.approxlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44561d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 4, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jge_.L_445618(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
  store i64 %13, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x4b0__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 1200
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_jne_.L_445605(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_callq_.countlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.findlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44560a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_445593(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44561d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_445622(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
