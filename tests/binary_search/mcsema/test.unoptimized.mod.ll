; ModuleID = 'binary_search.bin.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, i64, i64, i64, %struct.GPR}
%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Memory = type opaque

declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: noinline
define %struct.Memory* @sub_6c0_binary_search(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #12 {
block_6c0:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %ESI = bitcast %union.anon* %14 to i32*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RAX = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RDX = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 11
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RDI = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 13
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RSP = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 15
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RBP = bitcast %union.anon* %29 to i64*
  %30 = load i64, i64* %RBP
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 1
  store i64 %32, i64* %PC
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, -8
  %36 = inttoptr i64 %35 to i64*
  store i64 %30, i64* %36
  store i64 %35, i64* %33, align 8
  %37 = load i64, i64* %RSP
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 3
  store i64 %39, i64* %PC
  store i64 %37, i64* %RBP, align 8
  %40 = load i64, i64* %RBP
  %41 = sub i64 %40, 24
  %42 = load i64, i64* %RDI
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 4
  store i64 %44, i64* %PC
  %45 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %45
  %46 = load i64, i64* %RBP
  %47 = sub i64 %46, 28
  %48 = load i32, i32* %ESI
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 3
  store i64 %51, i64* %PC
  %52 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %52
  %53 = load i64, i64* %RBP
  %54 = sub i64 %53, 32
  %55 = load i32, i32* %EDX
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 3
  store i64 %58, i64* %PC
  %59 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %59
  %60 = load i64, i64* %RBP
  %61 = sub i64 %60, 12
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 7
  store i64 %63, i64* %PC
  %64 = inttoptr i64 %61 to i32*
  store i32 0, i32* %64
  %65 = load i64, i64* %RBP
  %66 = sub i64 %65, 28
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 3
  store i64 %68, i64* %PC
  %69 = inttoptr i64 %66 to i32*
  %70 = load i32, i32* %69
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %RAX, align 8
  %72 = load i64, i64* %RAX
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 3
  store i64 %74, i64* %PC
  %75 = trunc i64 %72 to i32
  %76 = sub i32 %75, 1
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %RAX, align 8
  %78 = icmp ult i32 %75, 1
  %79 = zext i1 %78 to i8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %79, i8* %80, align 1
  %81 = and i32 %76, 255
  %82 = call i32 @llvm.ctpop.i32(i32 %81) #14
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %85, i8* %86, align 1
  %87 = xor i64 1, %72
  %88 = trunc i64 %87 to i32
  %89 = xor i32 %88, %76
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %92, i8* %93, align 1
  %94 = icmp eq i32 %76, 0
  %95 = zext i1 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %95, i8* %96, align 1
  %97 = lshr i32 %76, 31
  %98 = trunc i32 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %98, i8* %99, align 1
  %100 = lshr i32 %75, 31
  %101 = xor i32 %97, %100
  %102 = add nuw nsw i32 %101, %100
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %104, i8* %105, align 1
  %106 = load i64, i64* %RBP
  %107 = sub i64 %106, 8
  %108 = load i32, i32* %EAX
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 3
  store i64 %111, i64* %PC
  %112 = inttoptr i64 %107 to i32*
  store i32 %108, i32* %112

  %113 = load i64, i64* %PC
  %114 = add i64 %113, 106
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 2
  store i64 %116, i64* %PC
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %114, i64* %117, align 8
;  br label %block_748
;
;block_73f:                                        ; preds = %block_719
;  %118 = trunc i64 %343 to i32
;  %119 = sub i32 %118, 1
;  %120 = zext i32 %119 to i64
;  store i64 %120, i64* %RAX, align 8
;  %121 = icmp ult i32 %118, 1
;  %122 = zext i1 %121 to i8
;  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
;  store i8 %122, i8* %123, align 1
;  %124 = and i32 %119, 255
;  %125 = call i32 @llvm.ctpop.i32(i32 %124) #14
;  %126 = trunc i32 %125 to i8
;  %127 = and i8 %126, 1
;  %128 = xor i8 %127, 1
;  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
;  store i8 %128, i8* %129, align 1
;  %130 = xor i64 1, %343
;  %131 = trunc i64 %130 to i32
;  %132 = xor i32 %131, %119
;  %133 = lshr i32 %132, 4
;  %134 = trunc i32 %133 to i8
;  %135 = and i8 %134, 1
;  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
;  store i8 %135, i8* %136, align 1
;  %137 = icmp eq i32 %119, 0
;  %138 = zext i1 %137 to i8
;  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
;  store i8 %138, i8* %139, align 1
;  %140 = lshr i32 %119, 31
;  %141 = trunc i32 %140 to i8
;  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
;  store i8 %141, i8* %142, align 1
;  %143 = lshr i32 %118, 31
;  %144 = xor i32 %140, %143
;  %145 = add nuw nsw i32 %144, %143
;  %146 = icmp eq i32 %145, 2
;  %147 = zext i1 %146 to i8
;  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
;  store i8 %147, i8* %148, align 1
;  %149 = load i64, i64* %RBP
;  %150 = sub i64 %149, 8
;  %151 = load i32, i32* %EAX
;  %152 = zext i32 %151 to i64
;  %153 = load i64, i64* %PC
;  %154 = add i64 %153, 3
;  store i64 %154, i64* %PC
;  %155 = inttoptr i64 %150 to i32*
;  store i32 %151, i32* %155
;  br label %block_748
;
;block_734:                                        ; preds = %block_719
;  %156 = trunc i64 %343 to i32
;  %157 = add i32 1, %156
;  %158 = zext i32 %157 to i64
;  store i64 %158, i64* %RAX, align 8
;  %159 = icmp ult i32 %157, %156
;  %160 = icmp ult i32 %157, 1
;  %161 = or i1 %159, %160
;  %162 = zext i1 %161 to i8
;  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
;  store i8 %162, i8* %163, align 1
;  %164 = and i32 %157, 255
;  %165 = call i32 @llvm.ctpop.i32(i32 %164) #14
;  %166 = trunc i32 %165 to i8
;  %167 = and i8 %166, 1
;  %168 = xor i8 %167, 1
;  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
;  store i8 %168, i8* %169, align 1
;  %170 = xor i64 1, %343
;  %171 = trunc i64 %170 to i32
;  %172 = xor i32 %171, %157
;  %173 = lshr i32 %172, 4
;  %174 = trunc i32 %173 to i8
;  %175 = and i8 %174, 1
;  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
;  store i8 %175, i8* %176, align 1
;  %177 = icmp eq i32 %157, 0
;  %178 = zext i1 %177 to i8
;  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
;  store i8 %178, i8* %179, align 1
;  %180 = lshr i32 %157, 31
;  %181 = trunc i32 %180 to i8
;  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
;  store i8 %181, i8* %182, align 1
;  %183 = lshr i32 %156, 31
;  %184 = xor i32 %180, %183
;  %185 = add nuw nsw i32 %184, %180
;  %186 = icmp eq i32 %185, 2
;  %187 = zext i1 %186 to i8
;  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
;  store i8 %187, i8* %188, align 1
;  %189 = load i64, i64* %RBP
;  %190 = sub i64 %189, 12
;  %191 = load i32, i32* %EAX
;  %192 = zext i32 %191 to i64
;  %193 = load i64, i64* %PC
;  %194 = add i64 %193, 3
;  store i64 %194, i64* %PC
;  %195 = inttoptr i64 %190 to i32*
;  store i32 %191, i32* %195
;  %196 = load i64, i64* %PC
;  %197 = add i64 %196, 11
;  %198 = load i64, i64* %PC
;  %199 = add i64 %198, 2
;  store i64 %199, i64* %PC
;  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
;  store i64 %197, i64* %200, align 8
;  br label %block_748
;
;block_755:                                        ; preds = %block_750, %block_714
;  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_714 ], [ %MEMORY.1, %block_750 ]
;  %201 = load i64, i64* %PC
;  %202 = add i64 %201, 1
;  store i64 %202, i64* %PC
;  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
;  %204 = load i64, i64* %203, align 8
;  %205 = add i64 %204, 8
;  %206 = inttoptr i64 %204 to i64*
;  %207 = load i64, i64* %206
;  store i64 %207, i64* %RBP, align 8
;  store i64 %205, i64* %203, align 8
;  %208 = load i64, i64* %PC
;  %209 = add i64 %208, 1
;  store i64 %209, i64* %PC
;  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
;  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
;  %212 = load i64, i64* %211, align 8
;  %213 = inttoptr i64 %212 to i64*
;  %214 = load i64, i64* %213
;  store i64 %214, i64* %210, align 8
;  %215 = add i64 %212, 8
;  store i64 %215, i64* %211, align 8
;  ret %struct.Memory* %MEMORY.0
;
;block_714:                                        ; preds = %block_6e0
;  %216 = add i64 %737, 62
;  %217 = load i64, i64* %PC
;  %218 = add i64 %217, 2
;  store i64 %218, i64* %PC
;  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
;  store i64 %216, i64* %219, align 8
;  br label %block_755
;
;block_719:                                        ; preds = %block_6e0
;  %220 = add i64 %737, 2
;  store i64 %220, i64* %PC
;  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
;  %222 = getelementptr inbounds %union.anon, %union.anon* %221, i64 0, i32 0
;  %223 = bitcast %union.anon* %221 to i32*
;  %224 = load i32, i32* %223, align 8
;  %225 = sext i32 %224 to i64
;  store i64 %225, i64* %222, align 8
;  %226 = load i64, i64* %RAX
;  %227 = mul i64 %226, 4
;  %228 = load i64, i64* %PC
;  %229 = add i64 %228, 8
;  store i64 %229, i64* %PC
;  store i64 %227, i64* %RDX, align 8
;  %230 = load i64, i64* %RBP
;  %231 = sub i64 %230, 24
;  %232 = load i64, i64* %PC
;  %233 = add i64 %232, 4
;  store i64 %233, i64* %PC
;  %234 = inttoptr i64 %231 to i64*
;  %235 = load i64, i64* %234
;  store i64 %235, i64* %RAX, align 8
;  %236 = load i64, i64* %RAX
;  %237 = load i64, i64* %RDX
;  %238 = load i64, i64* %PC
;  %239 = add i64 %238, 3
;  store i64 %239, i64* %PC
;  %240 = add i64 %237, %236
;  store i64 %240, i64* %RAX, align 8
;  %241 = icmp ult i64 %240, %236
;  %242 = icmp ult i64 %240, %237
;  %243 = or i1 %241, %242
;  %244 = zext i1 %243 to i8
;  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
;  store i8 %244, i8* %245, align 1
;  %246 = trunc i64 %240 to i32
;  %247 = and i32 %246, 255
;  %248 = call i32 @llvm.ctpop.i32(i32 %247) #14
;  %249 = trunc i32 %248 to i8
;  %250 = and i8 %249, 1
;  %251 = xor i8 %250, 1
;  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
;  store i8 %251, i8* %252, align 1
;  %253 = xor i64 %237, %236
;  %254 = xor i64 %253, %240
;  %255 = lshr i64 %254, 4
;  %256 = trunc i64 %255 to i8
;  %257 = and i8 %256, 1
;  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
;  store i8 %257, i8* %258, align 1
;  %259 = icmp eq i64 %240, 0
;  %260 = zext i1 %259 to i8
;  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
;  store i8 %260, i8* %261, align 1
;  %262 = lshr i64 %240, 63
;  %263 = trunc i64 %262 to i8
;  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
;  store i8 %263, i8* %264, align 1
;  %265 = lshr i64 %236, 63
;  %266 = lshr i64 %237, 63
;  %267 = xor i64 %262, %265
;  %268 = xor i64 %262, %266
;  %269 = add nuw nsw i64 %267, %268
;  %270 = icmp eq i64 %269, 2
;  %271 = zext i1 %270 to i8
;  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
;  store i8 %271, i8* %272, align 1
;  %273 = load i64, i64* %RAX
;  %274 = load i64, i64* %PC
;  %275 = add i64 %274, 2
;  store i64 %275, i64* %PC
;  %276 = inttoptr i64 %273 to i32*
;  %277 = load i32, i32* %276
;  %278 = zext i32 %277 to i64
;  store i64 %278, i64* %RAX, align 8
;  %279 = load i32, i32* %EAX
;  %280 = zext i32 %279 to i64
;  %281 = load i64, i64* %RBP
;  %282 = sub i64 %281, 32
;  %283 = load i64, i64* %PC
;  %284 = add i64 %283, 3
;  store i64 %284, i64* %PC
;  %285 = inttoptr i64 %282 to i32*
;  %286 = load i32, i32* %285
;  %287 = sub i32 %279, %286
;  %288 = icmp ult i32 %279, %286
;  %289 = zext i1 %288 to i8
;  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
;  store i8 %289, i8* %290, align 1
;  %291 = and i32 %287, 255
;  %292 = call i32 @llvm.ctpop.i32(i32 %291) #14
;  %293 = trunc i32 %292 to i8
;  %294 = and i8 %293, 1
;  %295 = xor i8 %294, 1
;  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
;  store i8 %295, i8* %296, align 1
;  %297 = xor i32 %286, %279
;  %298 = xor i32 %297, %287
;  %299 = lshr i32 %298, 4
;  %300 = trunc i32 %299 to i8
;  %301 = and i8 %300, 1
;  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
;  store i8 %301, i8* %302, align 1
;  %303 = icmp eq i32 %287, 0
;  %304 = zext i1 %303 to i8
;  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
;  store i8 %304, i8* %305, align 1
;  %306 = lshr i32 %287, 31
;  %307 = trunc i32 %306 to i8
;  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
;  store i8 %307, i8* %308, align 1
;  %309 = lshr i32 %279, 31
;  %310 = lshr i32 %286, 31
;  %311 = xor i32 %310, %309
;  %312 = xor i32 %306, %309
;  %313 = add nuw nsw i32 %312, %311
;  %314 = icmp eq i32 %313, 2
;  %315 = zext i1 %314 to i8
;  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
;  store i8 %315, i8* %316, align 1
;  %317 = load i64, i64* %PC
;  %318 = add i64 %317, 13
;  %319 = load i64, i64* %PC
;  %320 = add i64 %319, 2
;  %321 = load i64, i64* %PC
;  %322 = add i64 %321, 2
;  store i64 %322, i64* %PC
;  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
;  %324 = load i8, i8* %323, align 1
;  %325 = icmp ne i8 %324, 0
;  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
;  %327 = load i8, i8* %326, align 1
;  %328 = icmp ne i8 %327, 0
;  %329 = xor i1 %325, %328
;  %330 = xor i1 %329, true
;  %331 = zext i1 %330 to i8
;  store i8 %331, i8* %BRANCH_TAKEN, align 1
;  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
;  %333 = select i1 %329, i64 %320, i64 %318
;  store i64 %333, i64* %332, align 8
;  %334 = load i8, i8* %BRANCH_TAKEN
;  %335 = icmp eq i8 %334, 1
;  %336 = load i64, i64* %RBP
;  %337 = sub i64 %336, 4
;  %338 = load i64, i64* %PC
;  %339 = add i64 %338, 3
;  store i64 %339, i64* %PC
;  %340 = inttoptr i64 %337 to i32*
;  %341 = load i32, i32* %340
;  %342 = zext i32 %341 to i64
;  store i64 %342, i64* %RAX, align 8
;  %343 = load i64, i64* %RAX
;  %344 = load i64, i64* %PC
;  %345 = add i64 %344, 3
;  store i64 %345, i64* %PC
;  br i1 %335, label %block_73f, label %block_734
;
;block_750:                                        ; preds = %block_748
;  %346 = load i64, i64* %PC
;  %347 = add i64 %346, 5
;  store i64 %347, i64* %PC
;  store i64 4294967295, i64* %RAX, align 8
;  br label %block_755
;
;block_748:                                        ; preds = %block_734, %block_73f, %block_6c0
;  %MEMORY.1 = phi %struct.Memory* [ %2, %block_6c0 ], [ %MEMORY.1, %block_73f ], [ %MEMORY.1, %block_734 ]
;  %348 = load i64, i64* %RBP
;  %349 = sub i64 %348, 12
;  %350 = load i64, i64* %PC
;  %351 = add i64 %350, 3
;  store i64 %351, i64* %PC
;  %352 = inttoptr i64 %349 to i32*
;  %353 = load i32, i32* %352
;  %354 = zext i32 %353 to i64
;  store i64 %354, i64* %RAX, align 8
;  %355 = load i32, i32* %EAX
;  %356 = zext i32 %355 to i64
;  %357 = load i64, i64* %RBP
;  %358 = sub i64 %357, 8
;  %359 = load i64, i64* %PC
;  %360 = add i64 %359, 3
;  store i64 %360, i64* %PC
;  %361 = inttoptr i64 %358 to i32*
;  %362 = load i32, i32* %361
;  %363 = sub i32 %355, %362
;  %364 = icmp ult i32 %355, %362
;  %365 = zext i1 %364 to i8
;  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
;  store i8 %365, i8* %366, align 1
;  %367 = and i32 %363, 255
;  %368 = call i32 @llvm.ctpop.i32(i32 %367) #14
;  %369 = trunc i32 %368 to i8
;  %370 = and i8 %369, 1
;  %371 = xor i8 %370, 1
;  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
;  store i8 %371, i8* %372, align 1
;  %373 = xor i32 %362, %355
;  %374 = xor i32 %373, %363
;  %375 = lshr i32 %374, 4
;  %376 = trunc i32 %375 to i8
;  %377 = and i8 %376, 1
;  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
;  store i8 %377, i8* %378, align 1
;  %379 = icmp eq i32 %363, 0
;  %380 = zext i1 %379 to i8
;  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
;  store i8 %380, i8* %381, align 1
;  %382 = lshr i32 %363, 31
;  %383 = trunc i32 %382 to i8
;  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
;  store i8 %383, i8* %384, align 1
;  %385 = lshr i32 %355, 31
;  %386 = lshr i32 %362, 31
;  %387 = xor i32 %386, %385
;  %388 = xor i32 %382, %385
;  %389 = add nuw nsw i32 %388, %387
;  %390 = icmp eq i32 %389, 2
;  %391 = zext i1 %390 to i8
;  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
;  store i8 %391, i8* %392, align 1
;  %393 = load i64, i64* %PC
;  %394 = sub i64 %393, 110
;  %395 = load i64, i64* %PC
;  %396 = add i64 %395, 2
;  %397 = load i64, i64* %PC
;  %398 = add i64 %397, 2
;  store i64 %398, i64* %PC
;  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
;  %400 = load i8, i8* %399, align 1
;  %401 = icmp ne i8 %400, 0
;  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
;  %403 = load i8, i8* %402, align 1
;  %404 = icmp ne i8 %403, 0
;  %405 = xor i1 %401, %404
;  %406 = zext i1 %405 to i8
;  store i8 %406, i8* %BRANCH_TAKEN, align 1
;  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
;  %408 = select i1 %405, i64 %394, i64 %396
;  store i64 %408, i64* %407, align 8
;  %409 = load i8, i8* %BRANCH_TAKEN
;  %410 = icmp eq i8 %409, 1
;  br i1 %410, label %block_6e0, label %block_750
;
;block_6e0:                                        ; preds = %block_748
;  %411 = load i64, i64* %RBP
;  %412 = sub i64 %411, 8
;  %413 = load i64, i64* %PC
;  %414 = add i64 %413, 3
;  store i64 %414, i64* %PC
;  %415 = inttoptr i64 %412 to i32*
;  %416 = load i32, i32* %415
;  %417 = zext i32 %416 to i64
;  store i64 %417, i64* %RAX, align 8
;  %418 = load i64, i64* %RAX
;  %419 = load i64, i64* %RBP
;  %420 = sub i64 %419, 12
;  %421 = load i64, i64* %PC
;  %422 = add i64 %421, 3
;  store i64 %422, i64* %PC
;  %423 = trunc i64 %418 to i32
;  %424 = inttoptr i64 %420 to i32*
;  %425 = load i32, i32* %424
;  %426 = sub i32 %423, %425
;  %427 = zext i32 %426 to i64
;  store i64 %427, i64* %RAX, align 8
;  %428 = icmp ult i32 %423, %425
;  %429 = zext i1 %428 to i8
;  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
;  store i8 %429, i8* %430, align 1
;  %431 = and i32 %426, 255
;  %432 = call i32 @llvm.ctpop.i32(i32 %431) #14
;  %433 = trunc i32 %432 to i8
;  %434 = and i8 %433, 1
;  %435 = xor i8 %434, 1
;  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
;  store i8 %435, i8* %436, align 1
;  %437 = xor i32 %425, %423
;  %438 = xor i32 %437, %426
;  %439 = lshr i32 %438, 4
;  %440 = trunc i32 %439 to i8
;  %441 = and i8 %440, 1
;  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
;  store i8 %441, i8* %442, align 1
;  %443 = icmp eq i32 %426, 0
;  %444 = zext i1 %443 to i8
;  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
;  store i8 %444, i8* %445, align 1
;  %446 = lshr i32 %426, 31
;  %447 = trunc i32 %446 to i8
;  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
;  store i8 %447, i8* %448, align 1
;  %449 = lshr i32 %423, 31
;  %450 = lshr i32 %425, 31
;  %451 = xor i32 %450, %449
;  %452 = xor i32 %446, %449
;  %453 = add nuw nsw i32 %452, %451
;  %454 = icmp eq i32 %453, 2
;  %455 = zext i1 %454 to i8
;  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
;  store i8 %455, i8* %456, align 1
;  %457 = load i32, i32* %EAX
;  %458 = zext i32 %457 to i64
;  %459 = load i64, i64* %PC
;  %460 = add i64 %459, 2
;  store i64 %460, i64* %PC
;  %461 = and i64 %458, 4294967295
;  store i64 %461, i64* %RDX, align 8
;  %462 = load i64, i64* %RDX
;  %463 = load i64, i64* %PC
;  %464 = add i64 %463, 3
;  store i64 %464, i64* %PC
;  %465 = and i64 %462, 4294967295
;  %466 = lshr i64 %465, 30
;  %467 = icmp ne i8 0, 0
;  %468 = zext i1 %467 to i8
;  %469 = trunc i64 %466 to i8
;  %470 = and i8 %469, 1
;  %471 = lshr i64 %466, 1
;  %472 = trunc i64 %471 to i32
;  %473 = and i32 %472, 2147483647
;  %474 = zext i32 %473 to i64
;  store i64 %474, i64* %RDX, align 8
;  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
;  store i8 %470, i8* %475, align 1
;  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
;  %477 = and i32 %472, 255
;  %478 = call i32 @llvm.ctpop.i32(i32 %477) #14
;  %479 = trunc i32 %478 to i8
;  %480 = and i8 %479, 1
;  %481 = xor i8 %480, 1
;  store i8 %481, i8* %476, align 1
;  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
;  store i8 0, i8* %482, align 1
;  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
;  %484 = icmp eq i32 %473, 0
;  %485 = zext i1 %484 to i8
;  store i8 %485, i8* %483, align 1
;  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
;  store i8 0, i8* %486, align 1
;  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
;  store i8 %468, i8* %487, align 1
;  %488 = load i64, i64* %RAX
;  %489 = load i32, i32* %EDX
;  %490 = zext i32 %489 to i64
;  %491 = load i64, i64* %PC
;  %492 = add i64 %491, 2
;  store i64 %492, i64* %PC
;  %493 = trunc i64 %488 to i32
;  %494 = add i32 %489, %493
;  %495 = zext i32 %494 to i64
;  store i64 %495, i64* %RAX, align 8
;  %496 = icmp ult i32 %494, %493
;  %497 = icmp ult i32 %494, %489
;  %498 = or i1 %496, %497
;  %499 = zext i1 %498 to i8
;  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
;  store i8 %499, i8* %500, align 1
;  %501 = and i32 %494, 255
;  %502 = call i32 @llvm.ctpop.i32(i32 %501) #14
;  %503 = trunc i32 %502 to i8
;  %504 = and i8 %503, 1
;  %505 = xor i8 %504, 1
;  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
;  store i8 %505, i8* %506, align 1
;  %507 = xor i64 %490, %488
;  %508 = trunc i64 %507 to i32
;  %509 = xor i32 %508, %494
;  %510 = lshr i32 %509, 4
;  %511 = trunc i32 %510 to i8
;  %512 = and i8 %511, 1
;  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
;  store i8 %512, i8* %513, align 1
;  %514 = icmp eq i32 %494, 0
;  %515 = zext i1 %514 to i8
;  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
;  store i8 %515, i8* %516, align 1
;  %517 = lshr i32 %494, 31
;  %518 = trunc i32 %517 to i8
;  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
;  store i8 %518, i8* %519, align 1
;  %520 = lshr i32 %493, 31
;  %521 = lshr i32 %489, 31
;  %522 = xor i32 %517, %520
;  %523 = xor i32 %517, %521
;  %524 = add nuw nsw i32 %522, %523
;  %525 = icmp eq i32 %524, 2
;  %526 = zext i1 %525 to i8
;  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
;  store i8 %526, i8* %527, align 1
;  %528 = load i64, i64* %RAX
;  %529 = load i64, i64* %PC
;  %530 = add i64 %529, 2
;  store i64 %530, i64* %PC
;  %531 = shl i64 %528, 32
;  %532 = ashr i64 %531, 33
;  %533 = trunc i64 %528 to i8
;  %534 = and i8 %533, 1
;  %535 = trunc i64 %532 to i32
;  %536 = and i64 %532, 4294967295
;  store i64 %536, i64* %RAX, align 8
;  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
;  store i8 %534, i8* %537, align 1
;  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
;  %539 = and i32 %535, 255
;  %540 = call i32 @llvm.ctpop.i32(i32 %539) #14
;  %541 = trunc i32 %540 to i8
;  %542 = and i8 %541, 1
;  %543 = xor i8 %542, 1
;  store i8 %543, i8* %538, align 1
;  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
;  store i8 0, i8* %544, align 1
;  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
;  %546 = icmp eq i32 %535, 0
;  %547 = zext i1 %546 to i8
;  store i8 %547, i8* %545, align 1
;  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
;  %549 = lshr i32 %535, 31
;  %550 = trunc i32 %549 to i8
;  store i8 %550, i8* %548, align 1
;  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
;  store i8 0, i8* %551, align 1
;  %552 = load i32, i32* %EAX
;  %553 = zext i32 %552 to i64
;  %554 = load i64, i64* %PC
;  %555 = add i64 %554, 2
;  store i64 %555, i64* %PC
;  %556 = and i64 %553, 4294967295
;  store i64 %556, i64* %RDX, align 8
;  %557 = load i64, i64* %RBP
;  %558 = sub i64 %557, 12
;  %559 = load i64, i64* %PC
;  %560 = add i64 %559, 3
;  store i64 %560, i64* %PC
;  %561 = inttoptr i64 %558 to i32*
;  %562 = load i32, i32* %561
;  %563 = zext i32 %562 to i64
;  store i64 %563, i64* %RAX, align 8
;  %564 = load i64, i64* %RAX
;  %565 = load i32, i32* %EDX
;  %566 = zext i32 %565 to i64
;  %567 = load i64, i64* %PC
;  %568 = add i64 %567, 2
;  store i64 %568, i64* %PC
;  %569 = trunc i64 %564 to i32
;  %570 = add i32 %565, %569
;  %571 = zext i32 %570 to i64
;  store i64 %571, i64* %RAX, align 8
;  %572 = icmp ult i32 %570, %569
;  %573 = icmp ult i32 %570, %565
;  %574 = or i1 %572, %573
;  %575 = zext i1 %574 to i8
;  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
;  store i8 %575, i8* %576, align 1
;  %577 = and i32 %570, 255
;  %578 = call i32 @llvm.ctpop.i32(i32 %577) #14
;  %579 = trunc i32 %578 to i8
;  %580 = and i8 %579, 1
;  %581 = xor i8 %580, 1
;  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
;  store i8 %581, i8* %582, align 1
;  %583 = xor i64 %566, %564
;  %584 = trunc i64 %583 to i32
;  %585 = xor i32 %584, %570
;  %586 = lshr i32 %585, 4
;  %587 = trunc i32 %586 to i8
;  %588 = and i8 %587, 1
;  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
;  store i8 %588, i8* %589, align 1
;  %590 = icmp eq i32 %570, 0
;  %591 = zext i1 %590 to i8
;  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
;  store i8 %591, i8* %592, align 1
;  %593 = lshr i32 %570, 31
;  %594 = trunc i32 %593 to i8
;  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
;  store i8 %594, i8* %595, align 1
;  %596 = lshr i32 %569, 31
;  %597 = lshr i32 %565, 31
;  %598 = xor i32 %593, %596
;  %599 = xor i32 %593, %597
;  %600 = add nuw nsw i32 %598, %599
;  %601 = icmp eq i32 %600, 2
;  %602 = zext i1 %601 to i8
;  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
;  store i8 %602, i8* %603, align 1
;  %604 = load i64, i64* %RBP
;  %605 = sub i64 %604, 4
;  %606 = load i32, i32* %EAX
;  %607 = zext i32 %606 to i64
;  %608 = load i64, i64* %PC
;  %609 = add i64 %608, 3
;  store i64 %609, i64* %PC
;  %610 = inttoptr i64 %605 to i32*
;  store i32 %606, i32* %610
;  %611 = load i64, i64* %RBP
;  %612 = sub i64 %611, 4
;  %613 = load i64, i64* %PC
;  %614 = add i64 %613, 3
;  store i64 %614, i64* %PC
;  %615 = inttoptr i64 %612 to i32*
;  %616 = load i32, i32* %615
;  %617 = zext i32 %616 to i64
;  store i64 %617, i64* %RAX, align 8
;  %618 = load i64, i64* %PC
;  %619 = add i64 %618, 2
;  store i64 %619, i64* %PC
;  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
;  %621 = getelementptr inbounds %union.anon, %union.anon* %620, i64 0, i32 0
;  %622 = bitcast %union.anon* %620 to i32*
;  %623 = load i32, i32* %622, align 8
;  %624 = sext i32 %623 to i64
;  store i64 %624, i64* %621, align 8
;  %625 = load i64, i64* %RAX
;  %626 = mul i64 %625, 4
;  %627 = load i64, i64* %PC
;  %628 = add i64 %627, 8
;  store i64 %628, i64* %PC
;  store i64 %626, i64* %RDX, align 8
;  %629 = load i64, i64* %RBP
;  %630 = sub i64 %629, 24
;  %631 = load i64, i64* %PC
;  %632 = add i64 %631, 4
;  store i64 %632, i64* %PC
;  %633 = inttoptr i64 %630 to i64*
;  %634 = load i64, i64* %633
;  store i64 %634, i64* %RAX, align 8
;  %635 = load i64, i64* %RAX
;  %636 = load i64, i64* %RDX
;  %637 = load i64, i64* %PC
;  %638 = add i64 %637, 3
;  store i64 %638, i64* %PC
;  %639 = add i64 %636, %635
;  store i64 %639, i64* %RAX, align 8
;  %640 = icmp ult i64 %639, %635
;  %641 = icmp ult i64 %639, %636
;  %642 = or i1 %640, %641
;  %643 = zext i1 %642 to i8
;  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
;  store i8 %643, i8* %644, align 1
;  %645 = trunc i64 %639 to i32
;  %646 = and i32 %645, 255
;  %647 = call i32 @llvm.ctpop.i32(i32 %646) #14
;  %648 = trunc i32 %647 to i8
;  %649 = and i8 %648, 1
;  %650 = xor i8 %649, 1
;  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
;  store i8 %650, i8* %651, align 1
;  %652 = xor i64 %636, %635
;  %653 = xor i64 %652, %639
;  %654 = lshr i64 %653, 4
;  %655 = trunc i64 %654 to i8
;  %656 = and i8 %655, 1
;  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
;  store i8 %656, i8* %657, align 1
;  %658 = icmp eq i64 %639, 0
;  %659 = zext i1 %658 to i8
;  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
;  store i8 %659, i8* %660, align 1
;  %661 = lshr i64 %639, 63
;  %662 = trunc i64 %661 to i8
;  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
;  store i8 %662, i8* %663, align 1
;  %664 = lshr i64 %635, 63
;  %665 = lshr i64 %636, 63
;  %666 = xor i64 %661, %664
;  %667 = xor i64 %661, %665
;  %668 = add nuw nsw i64 %666, %667
;  %669 = icmp eq i64 %668, 2
;  %670 = zext i1 %669 to i8
;  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
;  store i8 %670, i8* %671, align 1
;  %672 = load i64, i64* %RAX
;  %673 = load i64, i64* %PC
;  %674 = add i64 %673, 2
;  store i64 %674, i64* %PC
;  %675 = inttoptr i64 %672 to i32*
;  %676 = load i32, i32* %675
;  %677 = zext i32 %676 to i64
;  store i64 %677, i64* %RAX, align 8
;  %678 = load i32, i32* %EAX
;  %679 = zext i32 %678 to i64
;  %680 = load i64, i64* %RBP
;  %681 = sub i64 %680, 32
;  %682 = load i64, i64* %PC
;  %683 = add i64 %682, 3
;  store i64 %683, i64* %PC
;  %684 = inttoptr i64 %681 to i32*
;  %685 = load i32, i32* %684
;  %686 = sub i32 %678, %685
;  %687 = icmp ult i32 %678, %685
;  %688 = zext i1 %687 to i8
;  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
;  store i8 %688, i8* %689, align 1
;  %690 = and i32 %686, 255
;  %691 = call i32 @llvm.ctpop.i32(i32 %690) #14
;  %692 = trunc i32 %691 to i8
;  %693 = and i8 %692, 1
;  %694 = xor i8 %693, 1
;  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
;  store i8 %694, i8* %695, align 1
;  %696 = xor i32 %685, %678
;  %697 = xor i32 %696, %686
;  %698 = lshr i32 %697, 4
;  %699 = trunc i32 %698 to i8
;  %700 = and i8 %699, 1
;  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
;  store i8 %700, i8* %701, align 1
;  %702 = icmp eq i32 %686, 0
;  %703 = zext i1 %702 to i8
;  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
;  store i8 %703, i8* %704, align 1
;  %705 = lshr i32 %686, 31
;  %706 = trunc i32 %705 to i8
;  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
;  store i8 %706, i8* %707, align 1
;  %708 = lshr i32 %678, 31
;  %709 = lshr i32 %685, 31
;  %710 = xor i32 %709, %708
;  %711 = xor i32 %705, %708
;  %712 = add nuw nsw i32 %711, %710
;  %713 = icmp eq i32 %712, 2
;  %714 = zext i1 %713 to i8
;  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
;  store i8 %714, i8* %715, align 1
;  %716 = load i64, i64* %PC
;  %717 = add i64 %716, 7
;  %718 = load i64, i64* %PC
;  %719 = add i64 %718, 2
;  %720 = load i64, i64* %PC
;  %721 = add i64 %720, 2
;  store i64 %721, i64* %PC
;  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
;  %723 = load i8, i8* %722, align 1
;  %724 = icmp eq i8 %723, 0
;  %725 = zext i1 %724 to i8
;  store i8 %725, i8* %BRANCH_TAKEN, align 1
;  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
;  %727 = select i1 %724, i64 %717, i64 %719
;  store i64 %727, i64* %726, align 8
;  %728 = load i8, i8* %BRANCH_TAKEN
;  %729 = icmp eq i8 %728, 1
;  %730 = load i64, i64* %RBP
;  %731 = sub i64 %730, 4
;  %732 = load i64, i64* %PC
;  %733 = add i64 %732, 3
;  store i64 %733, i64* %PC
;  %734 = inttoptr i64 %731 to i32*
;  %735 = load i32, i32* %734
;  %736 = zext i32 %735 to i64
;  store i64 %736, i64* %RAX, align 8
;  %737 = load i64, i64* %PC
;  br i1 %729, label %block_719, label %block_714
  ret %struct.Memory* %2
}
