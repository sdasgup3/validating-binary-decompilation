; ModuleID = 'test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, i64, i64, i64, %struct.GPR }
%struct.ArchState = type { i32, i32, %union.anon }
%union.anon = type { i64 }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.anon }
%struct.Memory = type opaque

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_6c0_binary_search(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_6c0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %1, 1
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %5, i64* %10, align 8
  store i64 %9, i64* %7, align 8
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8
  %12 = add i64 %8, -32
  %13 = load i64, i64* %RDI, align 8
  %14 = add i64 %11, 7
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* %RBP, align 8
  %17 = add i64 %16, -28
  %18 = load i32, i32* %ESI, align 4
  %19 = load i64, i64* %PC, align 8
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %21, align 4
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -32
  %24 = load i32, i32* %EDX, align 4
  %25 = load i64, i64* %PC, align 8
  %26 = add i64 %25, 3
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %23 to i32*
  store i32 %24, i32* %27, align 4
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %28, -12
  %30 = load i64, i64* %PC, align 8
  %31 = add i64 %30, 7
  store i64 %31, i64* %PC, align 8
  %32 = inttoptr i64 %29 to i32*
  store i32 0, i32* %32, align 4
  %33 = load i64, i64* %RBP, align 8
  %34 = add i64 %33, -28
  %35 = load i64, i64* %PC, align 8
  %36 = add i64 %35, 3
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %34 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, -1
  %40 = zext i32 %39 to i64
  store i64 %40, i64* %RAX, align 8
  %41 = icmp eq i32 %38, 0
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %42, i8* %43, align 1
  %44 = and i32 %39, 255
  %45 = tail call i32 @llvm.ctpop.i32(i32 %44) #9
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %48, i8* %49, align 1
  %50 = xor i32 %39, %38
  %51 = lshr i32 %50, 4
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %53, i8* %54, align 1
  %55 = icmp eq i32 %39, 0
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %56, i8* %57, align 1
  %58 = lshr i32 %39, 31
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %59, i8* %60, align 1
  %61 = lshr i32 %38, 31
  %62 = xor i32 %58, %61
  %63 = add nuw nsw i32 %62, %61
  %64 = icmp eq i32 %63, 2
  %65 = zext i1 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %65, i8* %66, align 1
  %67 = add i64 %33, -8
  %68 = add i64 %35, 9
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %67 to i32*
  store i32 %39, i32* %69, align 4
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 106
  store i64 %71, i64* %PC, align 8
  br label %block_748

block_73f:                                        ; preds = %block_719
  %72 = add i32 %208, -1
  %73 = zext i32 %72 to i64
  store i64 %73, i64* %RAX, align 8
  %74 = icmp eq i32 %208, 0
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %43, align 1
  %76 = and i32 %72, 255
  %77 = tail call i32 @llvm.ctpop.i32(i32 %76) #9
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = xor i8 %79, 1
  store i8 %80, i8* %49, align 1
  %81 = xor i32 %72, %208
  %82 = lshr i32 %81, 4
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  store i8 %84, i8* %54, align 1
  %85 = icmp eq i32 %72, 0
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %57, align 1
  %87 = lshr i32 %72, 31
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %60, align 1
  %89 = lshr i32 %208, 31
  %90 = xor i32 %87, %89
  %91 = add nuw nsw i32 %90, %89
  %92 = icmp eq i32 %91, 2
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %66, align 1
  %94 = load i64, i64* %RBP, align 8
  %95 = add i64 %94, -8
  %96 = add i64 %206, 9
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %95 to i32*
  store i32 %72, i32* %97, align 4
  %.pre.pre = load i64, i64* %PC, align 8
  br label %block_748.backedge

block_748.backedge:                               ; preds = %block_73f, %block_734
  %.be = phi i64 [ %.pre.pre, %block_73f ], [ %126, %block_734 ]
  br label %block_748

block_734:                                        ; preds = %block_719
  %98 = add i32 %208, 1
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RAX, align 8
  %100 = icmp eq i32 %208, -1
  %101 = icmp eq i32 %98, 0
  %102 = or i1 %100, %101
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %43, align 1
  %104 = and i32 %98, 255
  %105 = tail call i32 @llvm.ctpop.i32(i32 %104) #9
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  store i8 %108, i8* %49, align 1
  %109 = xor i32 %98, %208
  %110 = lshr i32 %109, 4
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %54, align 1
  %113 = zext i1 %101 to i8
  store i8 %113, i8* %57, align 1
  %114 = lshr i32 %98, 31
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %60, align 1
  %116 = lshr i32 %208, 31
  %117 = xor i32 %114, %116
  %118 = add nuw nsw i32 %117, %114
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %66, align 1
  %121 = load i64, i64* %RBP, align 8
  %122 = add i64 %121, -12
  %123 = add i64 %206, 9
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i32*
  store i32 %98, i32* %124, align 4
  %125 = load i64, i64* %PC, align 8
  %126 = add i64 %125, 11
  store i64 %126, i64* %PC, align 8
  br label %block_748.backedge

block_755:                                        ; preds = %block_750, %block_714
  %127 = phi i64 [ %211, %block_750 ], [ %137, %block_714 ]
  %128 = add i64 %127, 1
  store i64 %128, i64* %PC, align 8
  %129 = load i64, i64* %7, align 8
  %130 = add i64 %129, 8
  %131 = inttoptr i64 %129 to i64*
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %RBP, align 8
  store i64 %130, i64* %7, align 8
  %133 = add i64 %127, 2
  store i64 %133, i64* %PC, align 8
  %134 = inttoptr i64 %130 to i64*
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %PC, align 8
  %136 = add i64 %129, 16
  store i64 %136, i64* %7, align 8
  ret %struct.Memory* %2

block_714:                                        ; preds = %block_6e0
  %137 = add i64 %386, 65
  store i64 %137, i64* %PC, align 8
  br label %block_755

block_719:                                        ; preds = %block_6e0
  %138 = sext i32 %391 to i64
  store i64 %138, i64* %RAX, align 8
  %139 = shl nsw i64 %138, 2
  store i64 %139, i64* %RDX, align 8
  %140 = add i64 %387, -24
  %141 = add i64 %386, 17
  store i64 %141, i64* %PC, align 8
  %142 = inttoptr i64 %140 to i64*
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %139, %143
  store i64 %144, i64* %RAX, align 8
  %145 = icmp ult i64 %144, %143
  %146 = icmp ult i64 %144, %139
  %147 = or i1 %145, %146
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %43, align 1
  %149 = trunc i64 %144 to i32
  %150 = and i32 %149, 255
  %151 = tail call i32 @llvm.ctpop.i32(i32 %150) #9
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  %154 = xor i8 %153, 1
  store i8 %154, i8* %49, align 1
  %155 = xor i64 %139, %143
  %156 = xor i64 %155, %144
  %157 = lshr i64 %156, 4
  %158 = trunc i64 %157 to i8
  %159 = and i8 %158, 1
  store i8 %159, i8* %54, align 1
  %160 = icmp eq i64 %144, 0
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %57, align 1
  %162 = lshr i64 %144, 63
  %163 = trunc i64 %162 to i8
  store i8 %163, i8* %60, align 1
  %164 = lshr i64 %143, 63
  %165 = lshr i64 %138, 61
  %166 = and i64 %165, 1
  %167 = xor i64 %162, %164
  %168 = xor i64 %162, %166
  %169 = add nuw nsw i64 %167, %168
  %170 = icmp eq i64 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %66, align 1
  %172 = inttoptr i64 %144 to i32*
  %173 = add i64 %386, 22
  store i64 %173, i64* %PC, align 8
  %174 = load i32, i32* %172, align 4
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RAX, align 8
  %176 = add i64 %387, -32
  %177 = add i64 %386, 25
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %176 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = sub i32 %174, %179
  %181 = icmp ult i32 %174, %179
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %43, align 1
  %183 = and i32 %180, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183) #9
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %49, align 1
  %188 = xor i32 %179, %174
  %189 = xor i32 %188, %180
  %190 = lshr i32 %189, 4
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  store i8 %192, i8* %54, align 1
  %193 = icmp eq i32 %180, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %57, align 1
  %195 = lshr i32 %180, 31
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %60, align 1
  %197 = lshr i32 %174, 31
  %198 = lshr i32 %179, 31
  %199 = xor i32 %198, %197
  %200 = xor i32 %195, %197
  %201 = add nuw nsw i32 %200, %199
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %66, align 1
  %204 = icmp ne i8 %196, 0
  %205 = xor i1 %204, %202
  %.v = select i1 %205, i64 27, i64 38
  %206 = add i64 %386, %.v
  %207 = add i64 %206, 3
  store i64 %207, i64* %PC, align 8
  %208 = load i32, i32* %390, align 4
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %RAX, align 8
  %210 = add i64 %206, 6
  store i64 %210, i64* %PC, align 8
  br i1 %205, label %block_734, label %block_73f

block_750:                                        ; preds = %block_748
  %211 = add i64 %249, 5
  store i64 %211, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
  br label %block_755

block_748:                                        ; preds = %block_748.backedge, %block_6c0
  %212 = phi i64 [ %71, %block_6c0 ], [ %.be, %block_748.backedge ]
  %213 = load i64, i64* %RBP, align 8
  %214 = add i64 %213, -12
  %215 = add i64 %212, 3
  store i64 %215, i64* %PC, align 8
  %216 = inttoptr i64 %214 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX, align 8
  %219 = add i64 %213, -8
  %220 = add i64 %212, 6
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = sub i32 %217, %222
  %224 = icmp ult i32 %217, %222
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %43, align 1
  %226 = and i32 %223, 255
  %227 = tail call i32 @llvm.ctpop.i32(i32 %226) #9
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %49, align 1
  %231 = xor i32 %222, %217
  %232 = xor i32 %231, %223
  %233 = lshr i32 %232, 4
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  store i8 %235, i8* %54, align 1
  %236 = icmp eq i32 %223, 0
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %57, align 1
  %238 = lshr i32 %223, 31
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %60, align 1
  %240 = lshr i32 %217, 31
  %241 = lshr i32 %222, 31
  %242 = xor i32 %241, %240
  %243 = xor i32 %238, %240
  %244 = add nuw nsw i32 %243, %242
  %245 = icmp eq i32 %244, 2
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %66, align 1
  %247 = icmp ne i8 %239, 0
  %248 = xor i1 %247, %245
  %.v9 = select i1 %248, i64 -104, i64 8
  %249 = add i64 %212, %.v9
  store i64 %249, i64* %PC, align 8
  br i1 %248, label %block_6e0, label %block_750

block_6e0:                                        ; preds = %block_748
  %250 = add i64 %249, 3
  store i64 %250, i64* %PC, align 8
  %251 = load i32, i32* %221, align 4
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %RAX, align 8
  %253 = add i64 %249, 6
  store i64 %253, i64* %PC, align 8
  %254 = load i32, i32* %216, align 4
  %255 = sub i32 %251, %254
  %256 = lshr i32 %255, 31
  %257 = add i32 %256, %255
  %258 = zext i32 %257 to i64
  %259 = shl nuw i64 %258, 32
  %260 = ashr i64 %259, 33
  %261 = trunc i32 %257 to i8
  %262 = and i8 %261, 1
  %263 = trunc i64 %260 to i32
  %264 = and i64 %260, 4294967295
  store i64 %264, i64* %RAX, align 8
  store i8 %262, i8* %43, align 1
  %265 = and i32 %263, 255
  %266 = tail call i32 @llvm.ctpop.i32(i32 %265) #9
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %49, align 1
  store i8 0, i8* %54, align 1
  %270 = icmp eq i32 %263, 0
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %57, align 1
  %272 = lshr i64 %260, 31
  %273 = trunc i64 %272 to i8
  %274 = and i8 %273, 1
  store i8 %274, i8* %60, align 1
  store i8 0, i8* %66, align 1
  %275 = trunc i64 %260 to i32
  %276 = and i64 %260, 4294967295
  store i64 %276, i64* %RDX, align 8
  %277 = load i64, i64* %RBP, align 8
  %278 = add i64 %277, -12
  %279 = add i64 %249, 20
  store i64 %279, i64* %PC, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = add i32 %275, %281
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RAX, align 8
  %284 = icmp ult i32 %282, %281
  %285 = icmp ult i32 %282, %275
  %286 = or i1 %284, %285
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %43, align 1
  %288 = and i32 %282, 255
  %289 = tail call i32 @llvm.ctpop.i32(i32 %288) #9
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  %292 = xor i8 %291, 1
  store i8 %292, i8* %49, align 1
  %293 = xor i32 %275, %281
  %294 = xor i32 %293, %282
  %295 = lshr i32 %294, 4
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  store i8 %297, i8* %54, align 1
  %298 = icmp eq i32 %282, 0
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %57, align 1
  %300 = lshr i32 %282, 31
  %301 = trunc i32 %300 to i8
  store i8 %301, i8* %60, align 1
  %302 = lshr i32 %281, 31
  %303 = lshr i64 %260, 31
  %304 = trunc i64 %303 to i32
  %305 = and i32 %304, 1
  %306 = xor i32 %300, %302
  %307 = xor i32 %300, %305
  %308 = add nuw nsw i32 %306, %307
  %309 = icmp eq i32 %308, 2
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %66, align 1
  %311 = add i64 %277, -4
  %312 = add i64 %249, 25
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to i32*
  store i32 %282, i32* %313, align 4
  %314 = load i64, i64* %RBP, align 8
  %315 = add i64 %314, -4
  %316 = load i64, i64* %PC, align 8
  %317 = add i64 %316, 3
  store i64 %317, i64* %PC, align 8
  %318 = inttoptr i64 %315 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  store i64 %320, i64* %RAX, align 8
  %321 = shl nsw i64 %320, 2
  store i64 %321, i64* %RDX, align 8
  %322 = add i64 %314, -24
  %323 = add i64 %316, 17
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to i64*
  %325 = load i64, i64* %324, align 8
  %326 = add i64 %321, %325
  store i64 %326, i64* %RAX, align 8
  %327 = icmp ult i64 %326, %325
  %328 = icmp ult i64 %326, %321
  %329 = or i1 %327, %328
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %43, align 1
  %331 = trunc i64 %326 to i32
  %332 = and i32 %331, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332) #9
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %49, align 1
  %337 = xor i64 %321, %325
  %338 = xor i64 %337, %326
  %339 = lshr i64 %338, 4
  %340 = trunc i64 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %54, align 1
  %342 = icmp eq i64 %326, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %57, align 1
  %344 = lshr i64 %326, 63
  %345 = trunc i64 %344 to i8
  store i8 %345, i8* %60, align 1
  %346 = lshr i64 %325, 63
  %347 = lshr i64 %320, 61
  %348 = and i64 %347, 1
  %349 = xor i64 %344, %346
  %350 = xor i64 %344, %348
  %351 = add nuw nsw i64 %349, %350
  %352 = icmp eq i64 %351, 2
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %66, align 1
  %354 = inttoptr i64 %326 to i32*
  %355 = add i64 %316, 22
  store i64 %355, i64* %PC, align 8
  %356 = load i32, i32* %354, align 4
  %357 = zext i32 %356 to i64
  store i64 %357, i64* %RAX, align 8
  %358 = add i64 %314, -32
  %359 = add i64 %316, 25
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %358 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = sub i32 %356, %361
  %363 = icmp ult i32 %356, %361
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %43, align 1
  %365 = and i32 %362, 255
  %366 = tail call i32 @llvm.ctpop.i32(i32 %365) #9
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  store i8 %369, i8* %49, align 1
  %370 = xor i32 %361, %356
  %371 = xor i32 %370, %362
  %372 = lshr i32 %371, 4
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  store i8 %374, i8* %54, align 1
  %375 = icmp eq i32 %362, 0
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %57, align 1
  %377 = lshr i32 %362, 31
  %378 = trunc i32 %377 to i8
  store i8 %378, i8* %60, align 1
  %379 = lshr i32 %356, 31
  %380 = lshr i32 %361, 31
  %381 = xor i32 %380, %379
  %382 = xor i32 %377, %379
  %383 = add nuw nsw i32 %382, %381
  %384 = icmp eq i32 %383, 2
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %66, align 1
  %.v8 = select i1 %375, i64 27, i64 32
  %386 = add i64 %316, %.v8
  %387 = load i64, i64* %RBP, align 8
  %388 = add i64 %387, -4
  %389 = add i64 %386, 3
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = zext i32 %391 to i64
  store i64 %392, i64* %RAX, align 8
  br i1 %375, label %block_714, label %block_719
}

