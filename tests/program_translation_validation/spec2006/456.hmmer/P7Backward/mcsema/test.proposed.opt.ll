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

declare %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4281b0.ILogsum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_427ef0.Scorify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @P7Backward(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %RAX.i1312 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = add i64 %7, -56
  store i64 %40, i64* %RAX.i1312, align 8
  %R8.i1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %41 = add i64 %7, -64
  store i64 %41, i64* %R8.i1310, align 8
  %R9.i1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %42 = add i64 %7, -72
  store i64 %42, i64* %R9.i1307, align 8
  %R10.i1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %43 = add i64 %7, -80
  store i64 %43, i64* %R10.i1304, align 8
  %RDI.i1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %44 = add i64 %7, -16
  %45 = load i64, i64* %RDI.i1300, align 8
  %46 = add i64 %10, 27
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %47, align 8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1297 = bitcast %union.anon* %48 to i32*
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -12
  %51 = load i32, i32* %ESI.i1297, align 4
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 3
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %50 to i32*
  store i32 %51, i32* %54, align 4
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1294 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -24
  %58 = load i64, i64* %RDX.i1294, align 8
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %61, align 8
  %RCX.i1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -32
  %64 = load i64, i64* %RCX.i1291, align 8
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %63 to i64*
  store i64 %64, i64* %67, align 8
  %RSI.i1288 = getelementptr inbounds %union.anon, %union.anon* %48, i64 0, i32 0
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -12
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 3
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %69 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %73, 1
  %75 = zext i32 %74 to i64
  store i64 %75, i64* %RSI.i1288, align 8
  %76 = icmp eq i32 %73, -1
  %77 = icmp eq i32 %74, 0
  %78 = or i1 %76, %77
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %14, align 1
  %80 = and i32 %74, 255
  %81 = tail call i32 @llvm.ctpop.i32(i32 %80)
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  %84 = xor i8 %83, 1
  store i8 %84, i8* %21, align 1
  %85 = xor i32 %74, %73
  %86 = lshr i32 %85, 4
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  store i8 %88, i8* %26, align 1
  %89 = zext i1 %77 to i8
  store i8 %89, i8* %29, align 1
  %90 = lshr i32 %74, 31
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %32, align 1
  %92 = lshr i32 %73, 31
  %93 = xor i32 %90, %92
  %94 = add nuw nsw i32 %93, %90
  %95 = icmp eq i32 %94, 2
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %38, align 1
  %97 = add i64 %68, -24
  %98 = add i64 %70, 10
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i64*
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %RCX.i1291, align 8
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %102 = add i64 %100, 136
  %103 = add i64 %70, 17
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %101, align 8
  store i64 %75, i64* %RDI.i1300, align 8
  store i64 %106, i64* %RSI.i1288, align 8
  %107 = load i64, i64* %RAX.i1312, align 8
  store i64 %107, i64* %RDX.i1294, align 8
  %108 = load i64, i64* %R8.i1310, align 8
  store i64 %108, i64* %RCX.i1291, align 8
  %109 = load i64, i64* %R9.i1307, align 8
  store i64 %109, i64* %R8.i1310, align 8
  %110 = load i64, i64* %R10.i1304, align 8
  store i64 %110, i64* %R9.i1307, align 8
  %111 = add i64 %70, -188407
  %112 = add i64 %70, 39
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %113, -8
  %115 = inttoptr i64 %114 to i64*
  store i64 %112, i64* %115, align 8
  store i64 %114, i64* %6, align 8
  store i64 %111, i64* %3, align 8
  %call2_4358a9 = tail call %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* %0, i64 %111, %struct.Memory* %2)
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -40
  %118 = load i64, i64* %RAX.i1312, align 8
  %119 = load i64, i64* %3, align 8
  %120 = add i64 %119, 4
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %117 to i64*
  store i64 %118, i64* %121, align 8
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -24
  %124 = load i64, i64* %3, align 8
  %125 = add i64 %124, 4
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %123 to i64*
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %RAX.i1312, align 8
  %128 = add i64 %127, 352
  %129 = add i64 %124, 10
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RSI.i1288, align 8
  %133 = add i64 %122, -48
  %134 = add i64 %124, 14
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i64*
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %RAX.i1312, align 8
  %137 = add i64 %122, -12
  %138 = add i64 %124, 18
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %RCX.i1291, align 8
  %142 = shl nsw i64 %141, 3
  %143 = add i64 %142, %136
  %144 = add i64 %124, 22
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %RAX.i1312, align 8
  %147 = add i64 %146, 8
  %148 = add i64 %124, 25
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i32*
  store i32 %131, i32* %149, align 4
  %150 = load i64, i64* %RBP.i, align 8
  %151 = add i64 %150, -48
  %152 = load i64, i64* %3, align 8
  %153 = add i64 %152, 4
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %151 to i64*
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %RAX.i1312, align 8
  %156 = add i64 %150, -12
  %157 = add i64 %152, 8
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %RCX.i1291, align 8
  %161 = shl nsw i64 %160, 3
  %162 = add i64 %161, %155
  %163 = add i64 %152, 12
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i64*
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %RAX.i1312, align 8
  %166 = add i64 %165, 8
  %167 = add i64 %152, 15
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %166 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RSI.i1288, align 8
  %171 = add i64 %150, -24
  %172 = add i64 %152, 19
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %RAX.i1312, align 8
  %175 = add i64 %174, 344
  %176 = add i64 %152, 25
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = add i32 %178, %169
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RSI.i1288, align 8
  %181 = icmp ult i32 %179, %169
  %182 = icmp ult i32 %179, %178
  %183 = or i1 %181, %182
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %14, align 1
  %185 = and i32 %179, 255
  %186 = tail call i32 @llvm.ctpop.i32(i32 %185)
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  store i8 %189, i8* %21, align 1
  %190 = xor i32 %178, %169
  %191 = xor i32 %190, %179
  %192 = lshr i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  store i8 %194, i8* %26, align 1
  %195 = icmp eq i32 %179, 0
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %29, align 1
  %197 = lshr i32 %179, 31
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %32, align 1
  %199 = lshr i32 %169, 31
  %200 = lshr i32 %178, 31
  %201 = xor i32 %197, %199
  %202 = xor i32 %197, %200
  %203 = add nuw nsw i32 %201, %202
  %204 = icmp eq i32 %203, 2
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %38, align 1
  %206 = add i64 %152, 29
  store i64 %206, i64* %3, align 8
  %207 = load i64, i64* %154, align 8
  store i64 %207, i64* %RAX.i1312, align 8
  %208 = add i64 %152, 33
  store i64 %208, i64* %3, align 8
  %209 = load i32, i32* %158, align 4
  %210 = sext i32 %209 to i64
  store i64 %210, i64* %RCX.i1291, align 8
  %211 = shl nsw i64 %210, 3
  %212 = add i64 %211, %207
  %213 = add i64 %152, 37
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i64*
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %RAX.i1312, align 8
  %216 = add i64 %215, 4
  %217 = add i64 %152, 40
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to i32*
  store i32 %179, i32* %218, align 4
  %219 = load i64, i64* %RBP.i, align 8
  %220 = add i64 %219, -48
  %221 = load i64, i64* %3, align 8
  %222 = add i64 %221, 4
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %220 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %RAX.i1312, align 8
  %225 = add i64 %219, -12
  %226 = add i64 %221, 8
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  store i64 %229, i64* %RCX.i1291, align 8
  %230 = shl nsw i64 %229, 3
  %231 = add i64 %230, %224
  %232 = add i64 %221, 12
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i64*
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %RAX.i1312, align 8
  %235 = add i64 %234, 16
  %236 = add i64 %221, 19
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  store i32 -987654321, i32* %237, align 4
  %238 = load i64, i64* %RBP.i, align 8
  %239 = add i64 %238, -48
  %240 = load i64, i64* %3, align 8
  %241 = add i64 %240, 4
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %239 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RAX.i1312, align 8
  %244 = add i64 %238, -12
  %245 = add i64 %240, 8
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  store i64 %248, i64* %RCX.i1291, align 8
  %249 = shl nsw i64 %248, 3
  %250 = add i64 %249, %243
  %251 = add i64 %240, 12
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %RAX.i1312, align 8
  %254 = add i64 %240, 18
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i32*
  store i32 -987654321, i32* %255, align 4
  %256 = load i64, i64* %RBP.i, align 8
  %257 = add i64 %256, -48
  %258 = load i64, i64* %3, align 8
  %259 = add i64 %258, 4
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %257 to i64*
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %RAX.i1312, align 8
  %262 = add i64 %256, -12
  %263 = add i64 %258, 8
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  store i64 %266, i64* %RCX.i1291, align 8
  %267 = shl nsw i64 %266, 3
  %268 = add i64 %267, %261
  %269 = add i64 %258, 12
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i64*
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %RAX.i1312, align 8
  %272 = add i64 %271, 12
  %273 = add i64 %258, 19
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i32*
  store i32 -987654321, i32* %274, align 4
  %275 = load i64, i64* %RBP.i, align 8
  %276 = add i64 %275, -24
  %277 = load i64, i64* %3, align 8
  %278 = add i64 %277, 4
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %276 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %RAX.i1312, align 8
  %281 = add i64 %280, 136
  %282 = add i64 %277, 10
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RSI.i1288, align 8
  %286 = add i64 %275, -80
  %287 = add i64 %277, 13
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i32*
  store i32 %284, i32* %288, align 4
  %EDX.i1127 = bitcast %union.anon* %55 to i32*
  %EAX.i1041 = bitcast %union.anon* %39 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_435938

block_.L_435938:                                  ; preds = %block_435942, %entry
  %289 = phi i64 [ %575, %block_435942 ], [ %.pre, %entry ]
  %290 = load i64, i64* %RBP.i, align 8
  %291 = add i64 %290, -80
  %292 = add i64 %289, 4
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = add i32 %294, -1
  %296 = icmp eq i32 %294, 0
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %14, align 1
  %298 = and i32 %295, 255
  %299 = tail call i32 @llvm.ctpop.i32(i32 %298)
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  store i8 %302, i8* %21, align 1
  %303 = xor i32 %295, %294
  %304 = lshr i32 %303, 4
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  store i8 %306, i8* %26, align 1
  %307 = icmp eq i32 %295, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %29, align 1
  %309 = lshr i32 %295, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %32, align 1
  %311 = lshr i32 %294, 31
  %312 = xor i32 %309, %311
  %313 = add nuw nsw i32 %312, %311
  %314 = icmp eq i32 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %38, align 1
  %316 = icmp ne i8 %310, 0
  %317 = xor i1 %316, %314
  %.v20 = select i1 %317, i64 181, i64 10
  %318 = add i64 %289, %.v20
  store i64 %318, i64* %3, align 8
  br i1 %317, label %block_.L_4359ed, label %block_435942

block_435942:                                     ; preds = %block_.L_435938
  %319 = add i64 %290, -48
  %320 = add i64 %318, 4
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RAX.i1312, align 8
  %323 = add i64 %290, -12
  %324 = add i64 %318, 8
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  store i64 %327, i64* %RCX.i1291, align 8
  %328 = shl nsw i64 %327, 3
  %329 = add i64 %328, %322
  %330 = add i64 %318, 12
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i64*
  %332 = load i64, i64* %331, align 8
  store i64 %332, i64* %RAX.i1312, align 8
  %333 = add i64 %332, 4
  %334 = add i64 %318, 15
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %RDX.i1294, align 8
  %338 = add i64 %290, -24
  %339 = add i64 %318, 19
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i64*
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %RAX.i1312, align 8
  %342 = add i64 %341, 376
  %343 = add i64 %318, 26
  store i64 %343, i64* %3, align 8
  %344 = inttoptr i64 %342 to i64*
  %345 = load i64, i64* %344, align 8
  store i64 %345, i64* %RAX.i1312, align 8
  %346 = add i64 %318, 30
  store i64 %346, i64* %3, align 8
  %347 = load i32, i32* %293, align 4
  %348 = sext i32 %347 to i64
  store i64 %348, i64* %RCX.i1291, align 8
  %349 = shl nsw i64 %348, 2
  %350 = add i64 %345, %349
  %351 = add i64 %318, 33
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = add i32 %353, %336
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RDX.i1294, align 8
  %356 = icmp ult i32 %354, %336
  %357 = icmp ult i32 %354, %353
  %358 = or i1 %356, %357
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %14, align 1
  %360 = and i32 %354, 255
  %361 = tail call i32 @llvm.ctpop.i32(i32 %360)
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  store i8 %364, i8* %21, align 1
  %365 = xor i32 %353, %336
  %366 = xor i32 %365, %354
  %367 = lshr i32 %366, 4
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  store i8 %369, i8* %26, align 1
  %370 = icmp eq i32 %354, 0
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %29, align 1
  %372 = lshr i32 %354, 31
  %373 = trunc i32 %372 to i8
  store i8 %373, i8* %32, align 1
  %374 = lshr i32 %336, 31
  %375 = lshr i32 %353, 31
  %376 = xor i32 %372, %374
  %377 = xor i32 %372, %375
  %378 = add nuw nsw i32 %376, %377
  %379 = icmp eq i32 %378, 2
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %38, align 1
  %381 = add i64 %290, -56
  %382 = add i64 %318, 37
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %381 to i64*
  %384 = load i64, i64* %383, align 8
  store i64 %384, i64* %RAX.i1312, align 8
  %385 = add i64 %318, 41
  store i64 %385, i64* %3, align 8
  %386 = load i32, i32* %325, align 4
  %387 = sext i32 %386 to i64
  store i64 %387, i64* %RCX.i1291, align 8
  %388 = shl nsw i64 %387, 3
  %389 = add i64 %388, %384
  %390 = add i64 %318, 45
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i64*
  %392 = load i64, i64* %391, align 8
  store i64 %392, i64* %RAX.i1312, align 8
  %393 = load i64, i64* %RBP.i, align 8
  %394 = add i64 %393, -80
  %395 = add i64 %318, 49
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = sext i32 %397 to i64
  store i64 %398, i64* %RCX.i1291, align 8
  %399 = shl nsw i64 %398, 2
  %400 = add i64 %399, %392
  %401 = add i64 %318, 52
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i32*
  store i32 %354, i32* %402, align 4
  %403 = load i64, i64* %RBP.i, align 8
  %404 = add i64 %403, -24
  %405 = load i64, i64* %3, align 8
  %406 = add i64 %405, 4
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %404 to i64*
  %408 = load i64, i64* %407, align 8
  store i64 %408, i64* %RAX.i1312, align 8
  %409 = add i64 %408, 320
  %410 = add i64 %405, 11
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to i64*
  %412 = load i64, i64* %411, align 8
  store i64 %412, i64* %RAX.i1312, align 8
  %413 = add i64 %403, -8
  %414 = add i64 %405, 15
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i64*
  %416 = load i64, i64* %415, align 8
  store i64 %416, i64* %RCX.i1291, align 8
  %417 = add i64 %403, -12
  %418 = add i64 %405, 19
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = sext i32 %420 to i64
  store i64 %421, i64* %RSI.i1288, align 8
  %422 = add i64 %416, %421
  %423 = add i64 %405, 23
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i8*
  %425 = load i8, i8* %424, align 1
  %426 = sext i8 %425 to i64
  %427 = and i64 %426, 4294967295
  store i64 %427, i64* %RDX.i1294, align 8
  %428 = sext i8 %425 to i64
  store i64 %428, i64* %RCX.i1291, align 8
  %429 = shl nsw i64 %428, 3
  %430 = add i64 %412, %429
  %431 = add i64 %405, 30
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i64*
  %433 = load i64, i64* %432, align 8
  store i64 %433, i64* %RAX.i1312, align 8
  %434 = add i64 %403, -80
  %435 = add i64 %405, 34
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = sext i32 %437 to i64
  store i64 %438, i64* %RCX.i1291, align 8
  %439 = shl nsw i64 %438, 2
  %440 = add i64 %439, %433
  %441 = add i64 %405, 37
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RDX.i1294, align 8
  %445 = add i64 %403, -56
  %446 = add i64 %405, 41
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %RAX.i1312, align 8
  %449 = add i64 %405, 45
  store i64 %449, i64* %3, align 8
  %450 = load i32, i32* %419, align 4
  %451 = sext i32 %450 to i64
  store i64 %451, i64* %RCX.i1291, align 8
  %452 = shl nsw i64 %451, 3
  %453 = add i64 %452, %448
  %454 = add i64 %405, 49
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i64*
  %456 = load i64, i64* %455, align 8
  store i64 %456, i64* %RAX.i1312, align 8
  %457 = add i64 %405, 53
  store i64 %457, i64* %3, align 8
  %458 = load i32, i32* %436, align 4
  %459 = sext i32 %458 to i64
  store i64 %459, i64* %RCX.i1291, align 8
  %460 = shl nsw i64 %459, 2
  %461 = add i64 %456, %460
  %462 = add i64 %405, 56
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %461 to i32*
  %464 = load i32, i32* %463, align 4
  %465 = add i32 %464, %443
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %RDX.i1294, align 8
  %467 = icmp ult i32 %465, %443
  %468 = icmp ult i32 %465, %464
  %469 = or i1 %467, %468
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %14, align 1
  %471 = and i32 %465, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %21, align 1
  %476 = xor i32 %464, %443
  %477 = xor i32 %476, %465
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %26, align 1
  %481 = icmp eq i32 %465, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %29, align 1
  %483 = lshr i32 %465, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %32, align 1
  %485 = lshr i32 %443, 31
  %486 = lshr i32 %464, 31
  %487 = xor i32 %483, %485
  %488 = xor i32 %483, %486
  %489 = add nuw nsw i32 %487, %488
  %490 = icmp eq i32 %489, 2
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %38, align 1
  %492 = add i64 %405, 59
  store i64 %492, i64* %3, align 8
  store i32 %465, i32* %463, align 4
  %493 = load i64, i64* %RBP.i, align 8
  %494 = add i64 %493, -72
  %495 = load i64, i64* %3, align 8
  %496 = add i64 %495, 4
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %494 to i64*
  %498 = load i64, i64* %497, align 8
  store i64 %498, i64* %RAX.i1312, align 8
  %499 = add i64 %493, -12
  %500 = add i64 %495, 8
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i32*
  %502 = load i32, i32* %501, align 4
  %503 = sext i32 %502 to i64
  store i64 %503, i64* %RCX.i1291, align 8
  %504 = shl nsw i64 %503, 3
  %505 = add i64 %504, %498
  %506 = add i64 %495, 12
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i64*
  %508 = load i64, i64* %507, align 8
  store i64 %508, i64* %RAX.i1312, align 8
  %509 = add i64 %493, -80
  %510 = add i64 %495, 16
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = sext i32 %512 to i64
  store i64 %513, i64* %RCX.i1291, align 8
  %514 = shl nsw i64 %513, 2
  %515 = add i64 %514, %508
  %516 = add i64 %495, 23
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i32*
  store i32 -987654321, i32* %517, align 4
  %518 = load i64, i64* %RBP.i, align 8
  %519 = add i64 %518, -64
  %520 = load i64, i64* %3, align 8
  %521 = add i64 %520, 4
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %519 to i64*
  %523 = load i64, i64* %522, align 8
  store i64 %523, i64* %RAX.i1312, align 8
  %524 = add i64 %518, -12
  %525 = add i64 %520, 8
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i32*
  %527 = load i32, i32* %526, align 4
  %528 = sext i32 %527 to i64
  store i64 %528, i64* %RCX.i1291, align 8
  %529 = shl nsw i64 %528, 3
  %530 = add i64 %529, %523
  %531 = add i64 %520, 12
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i64*
  %533 = load i64, i64* %532, align 8
  store i64 %533, i64* %RAX.i1312, align 8
  %534 = add i64 %518, -80
  %535 = add i64 %520, 16
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = sext i32 %537 to i64
  store i64 %538, i64* %RCX.i1291, align 8
  %539 = shl nsw i64 %538, 2
  %540 = add i64 %539, %533
  %541 = add i64 %520, 23
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i32*
  store i32 -987654321, i32* %542, align 4
  %543 = load i64, i64* %RBP.i, align 8
  %544 = add i64 %543, -80
  %545 = load i64, i64* %3, align 8
  %546 = add i64 %545, 3
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %544 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = add i32 %548, -1
  %550 = zext i32 %549 to i64
  store i64 %550, i64* %RAX.i1312, align 8
  %551 = icmp ne i32 %548, 0
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %14, align 1
  %553 = and i32 %549, 255
  %554 = tail call i32 @llvm.ctpop.i32(i32 %553)
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  %557 = xor i8 %556, 1
  store i8 %557, i8* %21, align 1
  %558 = xor i32 %548, 16
  %559 = xor i32 %558, %549
  %560 = lshr i32 %559, 4
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  store i8 %562, i8* %26, align 1
  %563 = icmp eq i32 %549, 0
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %29, align 1
  %565 = lshr i32 %549, 31
  %566 = trunc i32 %565 to i8
  store i8 %566, i8* %32, align 1
  %567 = lshr i32 %548, 31
  %568 = xor i32 %565, %567
  %569 = xor i32 %565, 1
  %570 = add nuw nsw i32 %568, %569
  %571 = icmp eq i32 %570, 2
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %38, align 1
  %573 = add i64 %545, 9
  store i64 %573, i64* %3, align 8
  store i32 %549, i32* %547, align 4
  %574 = load i64, i64* %3, align 8
  %575 = add i64 %574, -176
  store i64 %575, i64* %3, align 8
  br label %block_.L_435938

block_.L_4359ed:                                  ; preds = %block_.L_435938
  %576 = add i64 %290, -24
  %577 = add i64 %318, 4
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i64*
  %579 = load i64, i64* %578, align 8
  store i64 %579, i64* %RAX.i1312, align 8
  %580 = add i64 %579, 312
  %581 = add i64 %318, 11
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i64*
  %583 = load i64, i64* %582, align 8
  store i64 %583, i64* %RAX.i1312, align 8
  %584 = add i64 %583, 16
  %585 = add i64 %318, 15
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %584 to i64*
  %587 = load i64, i64* %586, align 8
  store i64 %587, i64* %RAX.i1312, align 8
  %588 = add i64 %318, 19
  store i64 %588, i64* %3, align 8
  %589 = load i64, i64* %578, align 8
  store i64 %589, i64* %RCX.i1291, align 8
  %590 = add i64 %589, 136
  %591 = add i64 %318, 25
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i32*
  %593 = load i32, i32* %592, align 4
  %594 = add i32 %593, -1
  %595 = zext i32 %594 to i64
  store i64 %595, i64* %RDX.i1294, align 8
  %596 = icmp eq i32 %593, 0
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %14, align 1
  %598 = and i32 %594, 255
  %599 = tail call i32 @llvm.ctpop.i32(i32 %598)
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  store i8 %602, i8* %21, align 1
  %603 = xor i32 %594, %593
  %604 = lshr i32 %603, 4
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  store i8 %606, i8* %26, align 1
  %607 = icmp eq i32 %594, 0
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %29, align 1
  %609 = lshr i32 %594, 31
  %610 = trunc i32 %609 to i8
  store i8 %610, i8* %32, align 1
  %611 = lshr i32 %593, 31
  %612 = xor i32 %609, %611
  %613 = add nuw nsw i32 %612, %611
  %614 = icmp eq i32 %613, 2
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %38, align 1
  %616 = sext i32 %594 to i64
  store i64 %616, i64* %RCX.i1291, align 8
  %617 = shl nsw i64 %616, 2
  %618 = add i64 %587, %617
  %619 = add i64 %318, 38
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i32*
  store i32 -987654321, i32* %620, align 4
  %621 = load i64, i64* %RBP.i, align 8
  %622 = add i64 %621, -24
  %623 = load i64, i64* %3, align 8
  %624 = add i64 %623, 4
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %622 to i64*
  %626 = load i64, i64* %625, align 8
  store i64 %626, i64* %RAX.i1312, align 8
  %627 = add i64 %626, 312
  %628 = add i64 %623, 11
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i64*
  %630 = load i64, i64* %629, align 8
  store i64 %630, i64* %RAX.i1312, align 8
  %631 = add i64 %630, 48
  %632 = add i64 %623, 15
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i64*
  %634 = load i64, i64* %633, align 8
  store i64 %634, i64* %RAX.i1312, align 8
  %635 = add i64 %623, 19
  store i64 %635, i64* %3, align 8
  %636 = load i64, i64* %625, align 8
  store i64 %636, i64* %RCX.i1291, align 8
  %637 = add i64 %636, 136
  %638 = add i64 %623, 25
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i32*
  %640 = load i32, i32* %639, align 4
  %641 = add i32 %640, -1
  %642 = zext i32 %641 to i64
  store i64 %642, i64* %RDX.i1294, align 8
  %643 = icmp eq i32 %640, 0
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %14, align 1
  %645 = and i32 %641, 255
  %646 = tail call i32 @llvm.ctpop.i32(i32 %645)
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  store i8 %649, i8* %21, align 1
  %650 = xor i32 %641, %640
  %651 = lshr i32 %650, 4
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  store i8 %653, i8* %26, align 1
  %654 = icmp eq i32 %641, 0
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %29, align 1
  %656 = lshr i32 %641, 31
  %657 = trunc i32 %656 to i8
  store i8 %657, i8* %32, align 1
  %658 = lshr i32 %640, 31
  %659 = xor i32 %656, %658
  %660 = add nuw nsw i32 %659, %658
  %661 = icmp eq i32 %660, 2
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %38, align 1
  %663 = sext i32 %641 to i64
  store i64 %663, i64* %RCX.i1291, align 8
  %664 = shl nsw i64 %663, 2
  %665 = add i64 %634, %664
  %666 = add i64 %623, 38
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i32*
  store i32 -987654321, i32* %667, align 4
  %668 = load i64, i64* %RBP.i, align 8
  %669 = add i64 %668, -12
  %670 = load i64, i64* %3, align 8
  %671 = add i64 %670, 3
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %669 to i32*
  %673 = load i32, i32* %672, align 4
  %674 = add i32 %673, -1
  %675 = zext i32 %674 to i64
  store i64 %675, i64* %RDX.i1294, align 8
  %676 = icmp eq i32 %673, 0
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %14, align 1
  %678 = and i32 %674, 255
  %679 = tail call i32 @llvm.ctpop.i32(i32 %678)
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  store i8 %682, i8* %21, align 1
  %683 = xor i32 %674, %673
  %684 = lshr i32 %683, 4
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  store i8 %686, i8* %26, align 1
  %687 = icmp eq i32 %674, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %29, align 1
  %689 = lshr i32 %674, 31
  %690 = trunc i32 %689 to i8
  store i8 %690, i8* %32, align 1
  %691 = lshr i32 %673, 31
  %692 = xor i32 %689, %691
  %693 = add nuw nsw i32 %692, %691
  %694 = icmp eq i32 %693, 2
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %38, align 1
  %696 = add i64 %668, -76
  %697 = add i64 %670, 9
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i32*
  store i32 %674, i32* %698, align 4
  %.pre14 = load i64, i64* %3, align 8
  br label %block_.L_435a42

block_.L_435a42:                                  ; preds = %block_.L_435f6b, %block_.L_4359ed
  %699 = phi i64 [ %.pre14, %block_.L_4359ed ], [ %3087, %block_.L_435f6b ]
  %700 = load i64, i64* %RBP.i, align 8
  %701 = add i64 %700, -76
  %702 = add i64 %699, 4
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i32*
  %704 = load i32, i32* %703, align 4
  store i8 0, i8* %14, align 1
  %705 = and i32 %704, 255
  %706 = tail call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  store i8 %709, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %710 = icmp eq i32 %704, 0
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %29, align 1
  %712 = lshr i32 %704, 31
  %713 = trunc i32 %712 to i8
  store i8 %713, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %714 = icmp ne i8 %713, 0
  %.v = select i1 %714, i64 1336, i64 6
  %715 = add i64 %702, %.v
  %716 = add i64 %700, -48
  %717 = add i64 %715, 4
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i64*
  %719 = load i64, i64* %718, align 8
  store i64 %719, i64* %RAX.i1312, align 8
  %720 = add i64 %715, 7
  store i64 %720, i64* %3, align 8
  br i1 %714, label %block_.L_435f7e, label %block_435a4c

block_435a4c:                                     ; preds = %block_.L_435a42
  %721 = load i32, i32* %703, align 4
  %722 = add i32 %721, 1
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RCX.i1291, align 8
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
  %745 = sext i32 %722 to i64
  store i64 %745, i64* %RDX.i1294, align 8
  %746 = shl nsw i64 %745, 3
  %747 = add i64 %719, %746
  %748 = add i64 %715, 17
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %747 to i64*
  %750 = load i64, i64* %749, align 8
  store i64 %750, i64* %RAX.i1312, align 8
  %751 = add i64 %750, 8
  %752 = add i64 %715, 20
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i32*
  %754 = load i32, i32* %753, align 4
  %755 = zext i32 %754 to i64
  store i64 %755, i64* %RCX.i1291, align 8
  %756 = add i64 %700, -24
  %757 = add i64 %715, 24
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i64*
  %759 = load i64, i64* %758, align 8
  store i64 %759, i64* %RAX.i1312, align 8
  %760 = add i64 %759, 356
  %761 = add i64 %715, 30
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i32*
  %763 = load i32, i32* %762, align 4
  %764 = add i32 %763, %754
  %765 = zext i32 %764 to i64
  store i64 %765, i64* %RCX.i1291, align 8
  %766 = icmp ult i32 %764, %754
  %767 = icmp ult i32 %764, %763
  %768 = or i1 %766, %767
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %14, align 1
  %770 = and i32 %764, 255
  %771 = tail call i32 @llvm.ctpop.i32(i32 %770)
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  %774 = xor i8 %773, 1
  store i8 %774, i8* %21, align 1
  %775 = xor i32 %763, %754
  %776 = xor i32 %775, %764
  %777 = lshr i32 %776, 4
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  store i8 %779, i8* %26, align 1
  %780 = icmp eq i32 %764, 0
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %29, align 1
  %782 = lshr i32 %764, 31
  %783 = trunc i32 %782 to i8
  store i8 %783, i8* %32, align 1
  %784 = lshr i32 %754, 31
  %785 = lshr i32 %763, 31
  %786 = xor i32 %782, %784
  %787 = xor i32 %782, %785
  %788 = add nuw nsw i32 %786, %787
  %789 = icmp eq i32 %788, 2
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %38, align 1
  %791 = load i64, i64* %RBP.i, align 8
  %792 = add i64 %791, -48
  %793 = add i64 %715, 34
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i64*
  %795 = load i64, i64* %794, align 8
  store i64 %795, i64* %RAX.i1312, align 8
  %796 = add i64 %791, -76
  %797 = add i64 %715, 38
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %796 to i32*
  %799 = load i32, i32* %798, align 4
  %800 = sext i32 %799 to i64
  store i64 %800, i64* %RDX.i1294, align 8
  %801 = shl nsw i64 %800, 3
  %802 = add i64 %801, %795
  %803 = add i64 %715, 42
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i64*
  %805 = load i64, i64* %804, align 8
  store i64 %805, i64* %RAX.i1312, align 8
  %806 = add i64 %805, 8
  %807 = add i64 %715, 45
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i32*
  store i32 %764, i32* %808, align 4
  %809 = load i64, i64* %RBP.i, align 8
  %810 = add i64 %809, -48
  %811 = load i64, i64* %3, align 8
  %812 = add i64 %811, 4
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %810 to i64*
  %814 = load i64, i64* %813, align 8
  store i64 %814, i64* %RAX.i1312, align 8
  %815 = add i64 %809, -76
  %816 = add i64 %811, 8
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i32*
  %818 = load i32, i32* %817, align 4
  %819 = sext i32 %818 to i64
  store i64 %819, i64* %RDX.i1294, align 8
  %820 = shl nsw i64 %819, 3
  %821 = add i64 %820, %814
  %822 = add i64 %811, 12
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i64*
  %824 = load i64, i64* %823, align 8
  store i64 %824, i64* %RAX.i1312, align 8
  %825 = add i64 %811, 18
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i32*
  store i32 -987654321, i32* %826, align 4
  %827 = load i64, i64* %RBP.i, align 8
  %828 = add i64 %827, -48
  %829 = load i64, i64* %3, align 8
  %830 = add i64 %829, 4
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %828 to i64*
  %832 = load i64, i64* %831, align 8
  store i64 %832, i64* %RAX.i1312, align 8
  %833 = add i64 %827, -76
  %834 = add i64 %829, 8
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = sext i32 %836 to i64
  store i64 %837, i64* %RDX.i1294, align 8
  %838 = shl nsw i64 %837, 3
  %839 = add i64 %838, %832
  %840 = add i64 %829, 12
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i64*
  %842 = load i64, i64* %841, align 8
  store i64 %842, i64* %RAX.i1312, align 8
  %843 = add i64 %829, 14
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = zext i32 %845 to i64
  store i64 %846, i64* %RDI.i1300, align 8
  %847 = add i64 %827, -56
  %848 = add i64 %829, 18
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i64*
  %850 = load i64, i64* %849, align 8
  store i64 %850, i64* %RAX.i1312, align 8
  %851 = add i64 %829, 21
  store i64 %851, i64* %3, align 8
  %852 = load i32, i32* %835, align 4
  %853 = add i32 %852, 1
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RCX.i1291, align 8
  %855 = icmp eq i32 %852, -1
  %856 = icmp eq i32 %853, 0
  %857 = or i1 %855, %856
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %14, align 1
  %859 = and i32 %853, 255
  %860 = tail call i32 @llvm.ctpop.i32(i32 %859)
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = xor i8 %862, 1
  store i8 %863, i8* %21, align 1
  %864 = xor i32 %853, %852
  %865 = lshr i32 %864, 4
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  store i8 %867, i8* %26, align 1
  %868 = zext i1 %856 to i8
  store i8 %868, i8* %29, align 1
  %869 = lshr i32 %853, 31
  %870 = trunc i32 %869 to i8
  store i8 %870, i8* %32, align 1
  %871 = lshr i32 %852, 31
  %872 = xor i32 %869, %871
  %873 = add nuw nsw i32 %872, %869
  %874 = icmp eq i32 %873, 2
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %38, align 1
  %876 = sext i32 %853 to i64
  store i64 %876, i64* %RDX.i1294, align 8
  %877 = shl nsw i64 %876, 3
  %878 = add i64 %850, %877
  %879 = add i64 %829, 31
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i64*
  %881 = load i64, i64* %880, align 8
  store i64 %881, i64* %RAX.i1312, align 8
  %882 = add i64 %827, -24
  %883 = add i64 %829, 35
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i64*
  %885 = load i64, i64* %884, align 8
  store i64 %885, i64* %RDX.i1294, align 8
  %886 = add i64 %885, 136
  %887 = add i64 %829, 42
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i32*
  %889 = load i32, i32* %888, align 4
  %890 = sext i32 %889 to i64
  store i64 %890, i64* %RDX.i1294, align 8
  %891 = shl nsw i64 %890, 2
  %892 = add i64 %891, %881
  %893 = add i64 %829, 45
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = zext i32 %895 to i64
  store i64 %896, i64* %RCX.i1291, align 8
  %897 = load i64, i64* %RBP.i, align 8
  %898 = add i64 %897, -24
  %899 = add i64 %829, 49
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i64*
  %901 = load i64, i64* %900, align 8
  store i64 %901, i64* %RAX.i1312, align 8
  %902 = add i64 %901, 368
  %903 = add i64 %829, 56
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i64*
  %905 = load i64, i64* %904, align 8
  store i64 %905, i64* %RAX.i1312, align 8
  %906 = add i64 %829, 60
  store i64 %906, i64* %3, align 8
  %907 = load i64, i64* %900, align 8
  store i64 %907, i64* %RDX.i1294, align 8
  %908 = add i64 %907, 136
  %909 = add i64 %829, 66
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i32*
  %911 = load i32, i32* %910, align 4
  %912 = add i32 %911, -1
  %913 = zext i32 %912 to i64
  store i64 %913, i64* %RSI.i1288, align 8
  %914 = icmp eq i32 %911, 0
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %14, align 1
  %916 = and i32 %912, 255
  %917 = tail call i32 @llvm.ctpop.i32(i32 %916)
  %918 = trunc i32 %917 to i8
  %919 = and i8 %918, 1
  %920 = xor i8 %919, 1
  store i8 %920, i8* %21, align 1
  %921 = xor i32 %912, %911
  %922 = lshr i32 %921, 4
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  store i8 %924, i8* %26, align 1
  %925 = icmp eq i32 %912, 0
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %29, align 1
  %927 = lshr i32 %912, 31
  %928 = trunc i32 %927 to i8
  store i8 %928, i8* %32, align 1
  %929 = lshr i32 %911, 31
  %930 = xor i32 %927, %929
  %931 = add nuw nsw i32 %930, %929
  %932 = icmp eq i32 %931, 2
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %38, align 1
  %934 = sext i32 %912 to i64
  store i64 %934, i64* %RDX.i1294, align 8
  %935 = shl nsw i64 %934, 2
  %936 = add i64 %905, %935
  %937 = add i64 %829, 75
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %936 to i32*
  %939 = load i32, i32* %938, align 4
  %940 = add i32 %939, %895
  %941 = zext i32 %940 to i64
  store i64 %941, i64* %RCX.i1291, align 8
  %942 = icmp ult i32 %940, %895
  %943 = icmp ult i32 %940, %939
  %944 = or i1 %942, %943
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %14, align 1
  %946 = and i32 %940, 255
  %947 = tail call i32 @llvm.ctpop.i32(i32 %946)
  %948 = trunc i32 %947 to i8
  %949 = and i8 %948, 1
  %950 = xor i8 %949, 1
  store i8 %950, i8* %21, align 1
  %951 = xor i32 %939, %895
  %952 = xor i32 %951, %940
  %953 = lshr i32 %952, 4
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  store i8 %955, i8* %26, align 1
  %956 = icmp eq i32 %940, 0
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %29, align 1
  %958 = lshr i32 %940, 31
  %959 = trunc i32 %958 to i8
  store i8 %959, i8* %32, align 1
  %960 = lshr i32 %895, 31
  %961 = lshr i32 %939, 31
  %962 = xor i32 %958, %960
  %963 = xor i32 %958, %961
  %964 = add nuw nsw i32 %962, %963
  %965 = icmp eq i32 %964, 2
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %38, align 1
  store i64 %941, i64* %RSI.i1288, align 8
  %967 = add i64 %829, -55515
  %968 = add i64 %829, 82
  %969 = load i64, i64* %6, align 8
  %970 = add i64 %969, -8
  %971 = inttoptr i64 %970 to i64*
  store i64 %968, i64* %971, align 8
  store i64 %970, i64* %6, align 8
  store i64 %967, i64* %3, align 8
  %call2_435ad8 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %967, %struct.Memory* %call2_4358a9)
  %972 = load i64, i64* %RBP.i, align 8
  %973 = add i64 %972, -48
  %974 = load i64, i64* %3, align 8
  %975 = add i64 %974, 4
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %973 to i64*
  %977 = load i64, i64* %976, align 8
  store i64 %977, i64* %RDX.i1294, align 8
  %978 = add i64 %972, -76
  %979 = add i64 %974, 8
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i32*
  %981 = load i32, i32* %980, align 4
  %982 = sext i32 %981 to i64
  store i64 %982, i64* %R8.i1310, align 8
  %983 = shl nsw i64 %982, 3
  %984 = add i64 %983, %977
  %985 = add i64 %974, 12
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %984 to i64*
  %987 = load i64, i64* %986, align 8
  store i64 %987, i64* %RDX.i1294, align 8
  %988 = load i32, i32* %EAX.i1041, align 4
  %989 = add i64 %974, 14
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %987 to i32*
  store i32 %988, i32* %990, align 4
  %991 = load i64, i64* %RBP.i, align 8
  %992 = add i64 %991, -24
  %993 = load i64, i64* %3, align 8
  %994 = add i64 %993, 4
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %992 to i64*
  %996 = load i64, i64* %995, align 8
  store i64 %996, i64* %RDX.i1294, align 8
  %997 = add i64 %996, 136
  %998 = add i64 %993, 10
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %997 to i32*
  %1000 = load i32, i32* %999, align 4
  %1001 = add i32 %1000, -1
  %1002 = zext i32 %1001 to i64
  store i64 %1002, i64* %RAX.i1312, align 8
  %1003 = icmp eq i32 %1000, 0
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %14, align 1
  %1005 = and i32 %1001, 255
  %1006 = tail call i32 @llvm.ctpop.i32(i32 %1005)
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  store i8 %1009, i8* %21, align 1
  %1010 = xor i32 %1001, %1000
  %1011 = lshr i32 %1010, 4
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  store i8 %1013, i8* %26, align 1
  %1014 = icmp eq i32 %1001, 0
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %29, align 1
  %1016 = lshr i32 %1001, 31
  %1017 = trunc i32 %1016 to i8
  store i8 %1017, i8* %32, align 1
  %1018 = lshr i32 %1000, 31
  %1019 = xor i32 %1016, %1018
  %1020 = add nuw nsw i32 %1019, %1018
  %1021 = icmp eq i32 %1020, 2
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %38, align 1
  %1023 = add i64 %991, -80
  %1024 = add i64 %993, 16
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i32*
  store i32 %1001, i32* %1025, align 4
  %.pre15 = load i64, i64* %3, align 8
  br label %block_.L_435afb

block_.L_435afb:                                  ; preds = %block_435b05, %block_435a4c
  %1026 = phi i64 [ %1217, %block_435b05 ], [ %.pre15, %block_435a4c ]
  %1027 = load i64, i64* %RBP.i, align 8
  %1028 = add i64 %1027, -80
  %1029 = add i64 %1026, 4
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i32*
  %1031 = load i32, i32* %1030, align 4
  %1032 = add i32 %1031, -1
  %1033 = icmp eq i32 %1031, 0
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %14, align 1
  %1035 = and i32 %1032, 255
  %1036 = tail call i32 @llvm.ctpop.i32(i32 %1035)
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  %1039 = xor i8 %1038, 1
  store i8 %1039, i8* %21, align 1
  %1040 = xor i32 %1032, %1031
  %1041 = lshr i32 %1040, 4
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  store i8 %1043, i8* %26, align 1
  %1044 = icmp eq i32 %1032, 0
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %29, align 1
  %1046 = lshr i32 %1032, 31
  %1047 = trunc i32 %1046 to i8
  store i8 %1047, i8* %32, align 1
  %1048 = lshr i32 %1031, 31
  %1049 = xor i32 %1046, %1048
  %1050 = add nuw nsw i32 %1049, %1048
  %1051 = icmp eq i32 %1050, 2
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %38, align 1
  %1053 = icmp ne i8 %1047, 0
  %1054 = xor i1 %1053, %1051
  %.v18 = select i1 %1054, i64 101, i64 10
  %1055 = add i64 %1026, %.v18
  %1056 = add i64 %1027, -48
  %1057 = add i64 %1055, 4
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i64*
  %1059 = load i64, i64* %1058, align 8
  store i64 %1059, i64* %RAX.i1312, align 8
  %1060 = add i64 %1027, -76
  %1061 = add i64 %1055, 8
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i32*
  %1063 = load i32, i32* %1062, align 4
  %1064 = sext i32 %1063 to i64
  store i64 %1064, i64* %RCX.i1291, align 8
  %1065 = shl nsw i64 %1064, 3
  %1066 = add i64 %1065, %1059
  %1067 = add i64 %1055, 12
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1066 to i64*
  %1069 = load i64, i64* %1068, align 8
  store i64 %1069, i64* %RAX.i1312, align 8
  %1070 = add i64 %1055, 14
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  %1072 = load i32, i32* %1071, align 4
  %1073 = zext i32 %1072 to i64
  br i1 %1054, label %block_.L_435b60, label %block_435b05

block_435b05:                                     ; preds = %block_.L_435afb
  store i64 %1073, i64* %RDI.i1300, align 8
  %1074 = add i64 %1027, -56
  %1075 = add i64 %1055, 18
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i64*
  %1077 = load i64, i64* %1076, align 8
  store i64 %1077, i64* %RAX.i1312, align 8
  %1078 = add i64 %1055, 21
  store i64 %1078, i64* %3, align 8
  %1079 = load i32, i32* %1062, align 4
  %1080 = add i32 %1079, 1
  %1081 = zext i32 %1080 to i64
  store i64 %1081, i64* %RDX.i1294, align 8
  %1082 = icmp eq i32 %1079, -1
  %1083 = icmp eq i32 %1080, 0
  %1084 = or i1 %1082, %1083
  %1085 = zext i1 %1084 to i8
  store i8 %1085, i8* %14, align 1
  %1086 = and i32 %1080, 255
  %1087 = tail call i32 @llvm.ctpop.i32(i32 %1086)
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  %1090 = xor i8 %1089, 1
  store i8 %1090, i8* %21, align 1
  %1091 = xor i32 %1080, %1079
  %1092 = lshr i32 %1091, 4
  %1093 = trunc i32 %1092 to i8
  %1094 = and i8 %1093, 1
  store i8 %1094, i8* %26, align 1
  %1095 = zext i1 %1083 to i8
  store i8 %1095, i8* %29, align 1
  %1096 = lshr i32 %1080, 31
  %1097 = trunc i32 %1096 to i8
  store i8 %1097, i8* %32, align 1
  %1098 = lshr i32 %1079, 31
  %1099 = xor i32 %1096, %1098
  %1100 = add nuw nsw i32 %1099, %1096
  %1101 = icmp eq i32 %1100, 2
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %38, align 1
  %1103 = sext i32 %1080 to i64
  store i64 %1103, i64* %RCX.i1291, align 8
  %1104 = shl nsw i64 %1103, 3
  %1105 = add i64 %1077, %1104
  %1106 = add i64 %1055, 31
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1105 to i64*
  %1108 = load i64, i64* %1107, align 8
  store i64 %1108, i64* %RAX.i1312, align 8
  %1109 = add i64 %1055, 35
  store i64 %1109, i64* %3, align 8
  %1110 = load i32, i32* %1030, align 4
  %1111 = sext i32 %1110 to i64
  store i64 %1111, i64* %RCX.i1291, align 8
  %1112 = shl nsw i64 %1111, 2
  %1113 = add i64 %1112, %1108
  %1114 = add i64 %1055, 38
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i32*
  %1116 = load i32, i32* %1115, align 4
  %1117 = zext i32 %1116 to i64
  store i64 %1117, i64* %RDX.i1294, align 8
  %1118 = add i64 %1027, -24
  %1119 = add i64 %1055, 42
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i64*
  %1121 = load i64, i64* %1120, align 8
  store i64 %1121, i64* %RAX.i1312, align 8
  %1122 = add i64 %1121, 368
  %1123 = add i64 %1055, 49
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i64*
  %1125 = load i64, i64* %1124, align 8
  store i64 %1125, i64* %RAX.i1312, align 8
  %1126 = add i64 %1055, 53
  store i64 %1126, i64* %3, align 8
  %1127 = load i32, i32* %1030, align 4
  %1128 = sext i32 %1127 to i64
  store i64 %1128, i64* %RCX.i1291, align 8
  %1129 = shl nsw i64 %1128, 2
  %1130 = add i64 %1125, %1129
  %1131 = add i64 %1055, 56
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i32*
  %1133 = load i32, i32* %1132, align 4
  %1134 = add i32 %1133, %1116
  %1135 = zext i32 %1134 to i64
  store i64 %1135, i64* %RDX.i1294, align 8
  %1136 = icmp ult i32 %1134, %1116
  %1137 = icmp ult i32 %1134, %1133
  %1138 = or i1 %1136, %1137
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %14, align 1
  %1140 = and i32 %1134, 255
  %1141 = tail call i32 @llvm.ctpop.i32(i32 %1140)
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  %1144 = xor i8 %1143, 1
  store i8 %1144, i8* %21, align 1
  %1145 = xor i32 %1133, %1116
  %1146 = xor i32 %1145, %1134
  %1147 = lshr i32 %1146, 4
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  store i8 %1149, i8* %26, align 1
  %1150 = icmp eq i32 %1134, 0
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %29, align 1
  %1152 = lshr i32 %1134, 31
  %1153 = trunc i32 %1152 to i8
  store i8 %1153, i8* %32, align 1
  %1154 = lshr i32 %1116, 31
  %1155 = lshr i32 %1133, 31
  %1156 = xor i32 %1152, %1154
  %1157 = xor i32 %1152, %1155
  %1158 = add nuw nsw i32 %1156, %1157
  %1159 = icmp eq i32 %1158, 2
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %38, align 1
  store i64 %1135, i64* %RSI.i1288, align 8
  %1161 = add i64 %1055, -55637
  %1162 = add i64 %1055, 63
  %1163 = load i64, i64* %6, align 8
  %1164 = add i64 %1163, -8
  %1165 = inttoptr i64 %1164 to i64*
  store i64 %1162, i64* %1165, align 8
  store i64 %1164, i64* %6, align 8
  store i64 %1161, i64* %3, align 8
  %call2_435b3f = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %1161, %struct.Memory* %call2_4358a9)
  %1166 = load i64, i64* %RBP.i, align 8
  %1167 = add i64 %1166, -48
  %1168 = load i64, i64* %3, align 8
  %1169 = add i64 %1168, 4
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1167 to i64*
  %1171 = load i64, i64* %1170, align 8
  store i64 %1171, i64* %RCX.i1291, align 8
  %1172 = add i64 %1166, -76
  %1173 = add i64 %1168, 8
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = sext i32 %1175 to i64
  store i64 %1176, i64* %R8.i1310, align 8
  %1177 = shl nsw i64 %1176, 3
  %1178 = add i64 %1177, %1171
  %1179 = add i64 %1168, 12
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i64*
  %1181 = load i64, i64* %1180, align 8
  store i64 %1181, i64* %RCX.i1291, align 8
  %1182 = load i32, i32* %EAX.i1041, align 4
  %1183 = add i64 %1168, 14
  store i64 %1183, i64* %3, align 8
  %1184 = inttoptr i64 %1181 to i32*
  store i32 %1182, i32* %1184, align 4
  %1185 = load i64, i64* %RBP.i, align 8
  %1186 = add i64 %1185, -80
  %1187 = load i64, i64* %3, align 8
  %1188 = add i64 %1187, 3
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1186 to i32*
  %1190 = load i32, i32* %1189, align 4
  %1191 = add i32 %1190, -1
  %1192 = zext i32 %1191 to i64
  store i64 %1192, i64* %RAX.i1312, align 8
  %1193 = icmp ne i32 %1190, 0
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %14, align 1
  %1195 = and i32 %1191, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %21, align 1
  %1200 = xor i32 %1190, 16
  %1201 = xor i32 %1200, %1191
  %1202 = lshr i32 %1201, 4
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  store i8 %1204, i8* %26, align 1
  %1205 = icmp eq i32 %1191, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %29, align 1
  %1207 = lshr i32 %1191, 31
  %1208 = trunc i32 %1207 to i8
  store i8 %1208, i8* %32, align 1
  %1209 = lshr i32 %1190, 31
  %1210 = xor i32 %1207, %1209
  %1211 = xor i32 %1207, 1
  %1212 = add nuw nsw i32 %1210, %1211
  %1213 = icmp eq i32 %1212, 2
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %38, align 1
  %1215 = add i64 %1187, 9
  store i64 %1215, i64* %3, align 8
  store i32 %1191, i32* %1189, align 4
  %1216 = load i64, i64* %3, align 8
  %1217 = add i64 %1216, -96
  store i64 %1217, i64* %3, align 8
  br label %block_.L_435afb

block_.L_435b60:                                  ; preds = %block_.L_435afb
  store i64 %1073, i64* %RDX.i1294, align 8
  %1218 = add i64 %1027, -24
  %1219 = add i64 %1055, 18
  store i64 %1219, i64* %3, align 8
  %1220 = inttoptr i64 %1218 to i64*
  %1221 = load i64, i64* %1220, align 8
  store i64 %1221, i64* %RAX.i1312, align 8
  %1222 = add i64 %1221, 360
  %1223 = add i64 %1055, 24
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1222 to i32*
  %1225 = load i32, i32* %1224, align 4
  %1226 = add i32 %1225, %1072
  %1227 = zext i32 %1226 to i64
  store i64 %1227, i64* %RDX.i1294, align 8
  %1228 = icmp ult i32 %1226, %1072
  %1229 = icmp ult i32 %1226, %1225
  %1230 = or i1 %1228, %1229
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %14, align 1
  %1232 = and i32 %1226, 255
  %1233 = tail call i32 @llvm.ctpop.i32(i32 %1232)
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  %1236 = xor i8 %1235, 1
  store i8 %1236, i8* %21, align 1
  %1237 = xor i32 %1225, %1072
  %1238 = xor i32 %1237, %1226
  %1239 = lshr i32 %1238, 4
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  store i8 %1241, i8* %26, align 1
  %1242 = icmp eq i32 %1226, 0
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %29, align 1
  %1244 = lshr i32 %1226, 31
  %1245 = trunc i32 %1244 to i8
  store i8 %1245, i8* %32, align 1
  %1246 = lshr i32 %1072, 31
  %1247 = lshr i32 %1225, 31
  %1248 = xor i32 %1244, %1246
  %1249 = xor i32 %1244, %1247
  %1250 = add nuw nsw i32 %1248, %1249
  %1251 = icmp eq i32 %1250, 2
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %38, align 1
  %1253 = add i64 %1055, 28
  store i64 %1253, i64* %3, align 8
  %1254 = load i64, i64* %1058, align 8
  store i64 %1254, i64* %RAX.i1312, align 8
  %1255 = add i64 %1055, 31
  store i64 %1255, i64* %3, align 8
  %1256 = load i32, i32* %1062, align 4
  %1257 = add i32 %1256, 1
  %1258 = zext i32 %1257 to i64
  store i64 %1258, i64* %RSI.i1288, align 8
  %1259 = icmp eq i32 %1256, -1
  %1260 = icmp eq i32 %1257, 0
  %1261 = or i1 %1259, %1260
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %14, align 1
  %1263 = and i32 %1257, 255
  %1264 = tail call i32 @llvm.ctpop.i32(i32 %1263)
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  store i8 %1267, i8* %21, align 1
  %1268 = xor i32 %1257, %1256
  %1269 = lshr i32 %1268, 4
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  store i8 %1271, i8* %26, align 1
  %1272 = zext i1 %1260 to i8
  store i8 %1272, i8* %29, align 1
  %1273 = lshr i32 %1257, 31
  %1274 = trunc i32 %1273 to i8
  store i8 %1274, i8* %32, align 1
  %1275 = lshr i32 %1256, 31
  %1276 = xor i32 %1273, %1275
  %1277 = add nuw nsw i32 %1276, %1273
  %1278 = icmp eq i32 %1277, 2
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %38, align 1
  %1280 = sext i32 %1257 to i64
  store i64 %1280, i64* %RCX.i1291, align 8
  %1281 = shl nsw i64 %1280, 3
  %1282 = add i64 %1254, %1281
  %1283 = add i64 %1055, 41
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1282 to i64*
  %1285 = load i64, i64* %1284, align 8
  store i64 %1285, i64* %RAX.i1312, align 8
  %1286 = add i64 %1285, 12
  %1287 = add i64 %1055, 44
  store i64 %1287, i64* %3, align 8
  %1288 = inttoptr i64 %1286 to i32*
  %1289 = load i32, i32* %1288, align 4
  %1290 = zext i32 %1289 to i64
  store i64 %1290, i64* %RSI.i1288, align 8
  %1291 = load i64, i64* %RBP.i, align 8
  %1292 = add i64 %1291, -24
  %1293 = add i64 %1055, 48
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i64*
  %1295 = load i64, i64* %1294, align 8
  store i64 %1295, i64* %RAX.i1312, align 8
  %1296 = add i64 %1295, 364
  %1297 = add i64 %1055, 54
  store i64 %1297, i64* %3, align 8
  %1298 = inttoptr i64 %1296 to i32*
  %1299 = load i32, i32* %1298, align 4
  %1300 = add i32 %1299, %1289
  %1301 = zext i32 %1300 to i64
  store i64 %1301, i64* %RSI.i1288, align 8
  %1302 = icmp ult i32 %1300, %1289
  %1303 = icmp ult i32 %1300, %1299
  %1304 = or i1 %1302, %1303
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %14, align 1
  %1306 = and i32 %1300, 255
  %1307 = tail call i32 @llvm.ctpop.i32(i32 %1306)
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = xor i8 %1309, 1
  store i8 %1310, i8* %21, align 1
  %1311 = xor i32 %1299, %1289
  %1312 = xor i32 %1311, %1300
  %1313 = lshr i32 %1312, 4
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  store i8 %1315, i8* %26, align 1
  %1316 = icmp eq i32 %1300, 0
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %29, align 1
  %1318 = lshr i32 %1300, 31
  %1319 = trunc i32 %1318 to i8
  store i8 %1319, i8* %32, align 1
  %1320 = lshr i32 %1289, 31
  %1321 = lshr i32 %1299, 31
  %1322 = xor i32 %1318, %1320
  %1323 = xor i32 %1318, %1321
  %1324 = add nuw nsw i32 %1322, %1323
  %1325 = icmp eq i32 %1324, 2
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %38, align 1
  %1327 = load i32, i32* %EDX.i1127, align 4
  %1328 = zext i32 %1327 to i64
  store i64 %1328, i64* %RDI.i1300, align 8
  %1329 = add i64 %1055, -55728
  %1330 = add i64 %1055, 61
  %1331 = load i64, i64* %6, align 8
  %1332 = add i64 %1331, -8
  %1333 = inttoptr i64 %1332 to i64*
  store i64 %1330, i64* %1333, align 8
  store i64 %1332, i64* %6, align 8
  store i64 %1329, i64* %3, align 8
  %call2_435b98 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %1329, %struct.Memory* %call2_4358a9)
  %1334 = load i64, i64* %RBP.i, align 8
  %1335 = add i64 %1334, -48
  %1336 = load i64, i64* %3, align 8
  %1337 = add i64 %1336, 4
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1335 to i64*
  %1339 = load i64, i64* %1338, align 8
  store i64 %1339, i64* %RCX.i1291, align 8
  %1340 = add i64 %1334, -76
  %1341 = add i64 %1336, 8
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i32*
  %1343 = load i32, i32* %1342, align 4
  %1344 = sext i32 %1343 to i64
  store i64 %1344, i64* %R8.i1310, align 8
  %1345 = shl nsw i64 %1344, 3
  %1346 = add i64 %1345, %1339
  %1347 = add i64 %1336, 12
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i64*
  %1349 = load i64, i64* %1348, align 8
  store i64 %1349, i64* %RCX.i1291, align 8
  %1350 = add i64 %1349, 12
  %1351 = load i32, i32* %EAX.i1041, align 4
  %1352 = add i64 %1336, 15
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1350 to i32*
  store i32 %1351, i32* %1353, align 4
  %1354 = load i64, i64* %RBP.i, align 8
  %1355 = add i64 %1354, -48
  %1356 = load i64, i64* %3, align 8
  %1357 = add i64 %1356, 4
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1355 to i64*
  %1359 = load i64, i64* %1358, align 8
  store i64 %1359, i64* %RCX.i1291, align 8
  %1360 = add i64 %1354, -76
  %1361 = add i64 %1356, 8
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i32*
  %1363 = load i32, i32* %1362, align 4
  %1364 = sext i32 %1363 to i64
  store i64 %1364, i64* %R8.i1310, align 8
  %1365 = shl nsw i64 %1364, 3
  %1366 = add i64 %1365, %1359
  %1367 = add i64 %1356, 12
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i64*
  %1369 = load i64, i64* %1368, align 8
  store i64 %1369, i64* %RCX.i1291, align 8
  %1370 = add i64 %1369, 8
  %1371 = add i64 %1356, 15
  store i64 %1371, i64* %3, align 8
  %1372 = inttoptr i64 %1370 to i32*
  %1373 = load i32, i32* %1372, align 4
  %1374 = zext i32 %1373 to i64
  store i64 %1374, i64* %RAX.i1312, align 8
  %1375 = add i64 %1354, -24
  %1376 = add i64 %1356, 19
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i64*
  %1378 = load i64, i64* %1377, align 8
  store i64 %1378, i64* %RCX.i1291, align 8
  %1379 = add i64 %1378, 344
  %1380 = add i64 %1356, 25
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i32*
  %1382 = load i32, i32* %1381, align 4
  %1383 = add i32 %1382, %1373
  %1384 = zext i32 %1383 to i64
  store i64 %1384, i64* %RAX.i1312, align 8
  %1385 = icmp ult i32 %1383, %1373
  %1386 = icmp ult i32 %1383, %1382
  %1387 = or i1 %1385, %1386
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %14, align 1
  %1389 = and i32 %1383, 255
  %1390 = tail call i32 @llvm.ctpop.i32(i32 %1389)
  %1391 = trunc i32 %1390 to i8
  %1392 = and i8 %1391, 1
  %1393 = xor i8 %1392, 1
  store i8 %1393, i8* %21, align 1
  %1394 = xor i32 %1382, %1373
  %1395 = xor i32 %1394, %1383
  %1396 = lshr i32 %1395, 4
  %1397 = trunc i32 %1396 to i8
  %1398 = and i8 %1397, 1
  store i8 %1398, i8* %26, align 1
  %1399 = icmp eq i32 %1383, 0
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %29, align 1
  %1401 = lshr i32 %1383, 31
  %1402 = trunc i32 %1401 to i8
  store i8 %1402, i8* %32, align 1
  %1403 = lshr i32 %1373, 31
  %1404 = lshr i32 %1382, 31
  %1405 = xor i32 %1401, %1403
  %1406 = xor i32 %1401, %1404
  %1407 = add nuw nsw i32 %1405, %1406
  %1408 = icmp eq i32 %1407, 2
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %38, align 1
  %1410 = add i64 %1356, 29
  store i64 %1410, i64* %3, align 8
  %1411 = load i64, i64* %1358, align 8
  store i64 %1411, i64* %RCX.i1291, align 8
  %1412 = add i64 %1356, 33
  store i64 %1412, i64* %3, align 8
  %1413 = load i32, i32* %1362, align 4
  %1414 = sext i32 %1413 to i64
  store i64 %1414, i64* %R8.i1310, align 8
  %1415 = shl nsw i64 %1414, 3
  %1416 = add i64 %1415, %1411
  %1417 = add i64 %1356, 37
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1416 to i64*
  %1419 = load i64, i64* %1418, align 8
  store i64 %1419, i64* %RCX.i1291, align 8
  %1420 = add i64 %1419, 12
  %1421 = add i64 %1356, 40
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to i32*
  %1423 = load i32, i32* %1422, align 4
  %1424 = zext i32 %1423 to i64
  store i64 %1424, i64* %RDX.i1294, align 8
  %1425 = add i64 %1356, 44
  store i64 %1425, i64* %3, align 8
  %1426 = load i64, i64* %1377, align 8
  store i64 %1426, i64* %RCX.i1291, align 8
  %1427 = add i64 %1426, 348
  %1428 = add i64 %1356, 50
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i32*
  %1430 = load i32, i32* %1429, align 4
  %1431 = add i32 %1430, %1423
  %1432 = zext i32 %1431 to i64
  store i64 %1432, i64* %RDX.i1294, align 8
  %1433 = icmp ult i32 %1431, %1423
  %1434 = icmp ult i32 %1431, %1430
  %1435 = or i1 %1433, %1434
  %1436 = zext i1 %1435 to i8
  store i8 %1436, i8* %14, align 1
  %1437 = and i32 %1431, 255
  %1438 = tail call i32 @llvm.ctpop.i32(i32 %1437)
  %1439 = trunc i32 %1438 to i8
  %1440 = and i8 %1439, 1
  %1441 = xor i8 %1440, 1
  store i8 %1441, i8* %21, align 1
  %1442 = xor i32 %1430, %1423
  %1443 = xor i32 %1442, %1431
  %1444 = lshr i32 %1443, 4
  %1445 = trunc i32 %1444 to i8
  %1446 = and i8 %1445, 1
  store i8 %1446, i8* %26, align 1
  %1447 = icmp eq i32 %1431, 0
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %29, align 1
  %1449 = lshr i32 %1431, 31
  %1450 = trunc i32 %1449 to i8
  store i8 %1450, i8* %32, align 1
  %1451 = lshr i32 %1423, 31
  %1452 = lshr i32 %1430, 31
  %1453 = xor i32 %1449, %1451
  %1454 = xor i32 %1449, %1452
  %1455 = add nuw nsw i32 %1453, %1454
  %1456 = icmp eq i32 %1455, 2
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %38, align 1
  store i64 %1384, i64* %RDI.i1300, align 8
  store i64 %1432, i64* %RSI.i1288, align 8
  %1458 = add i64 %1356, -55804
  %1459 = add i64 %1356, 59
  %1460 = load i64, i64* %6, align 8
  %1461 = add i64 %1460, -8
  %1462 = inttoptr i64 %1461 to i64*
  store i64 %1459, i64* %1462, align 8
  store i64 %1461, i64* %6, align 8
  store i64 %1458, i64* %3, align 8
  %call2_435be2 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %1458, %struct.Memory* %call2_4358a9)
  %1463 = load i64, i64* %RBP.i, align 8
  %1464 = add i64 %1463, -48
  %1465 = load i64, i64* %3, align 8
  %1466 = add i64 %1465, 4
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1464 to i64*
  %1468 = load i64, i64* %1467, align 8
  store i64 %1468, i64* %RCX.i1291, align 8
  %1469 = add i64 %1463, -76
  %1470 = add i64 %1465, 8
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = sext i32 %1472 to i64
  store i64 %1473, i64* %R8.i1310, align 8
  %1474 = shl nsw i64 %1473, 3
  %1475 = add i64 %1474, %1468
  %1476 = add i64 %1465, 12
  store i64 %1476, i64* %3, align 8
  %1477 = inttoptr i64 %1475 to i64*
  %1478 = load i64, i64* %1477, align 8
  store i64 %1478, i64* %RCX.i1291, align 8
  %1479 = add i64 %1478, 4
  %1480 = load i32, i32* %EAX.i1041, align 4
  %1481 = add i64 %1465, 15
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1479 to i32*
  store i32 %1480, i32* %1482, align 4
  %1483 = load i64, i64* %RBP.i, align 8
  %1484 = add i64 %1483, -48
  %1485 = load i64, i64* %3, align 8
  %1486 = add i64 %1485, 4
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1484 to i64*
  %1488 = load i64, i64* %1487, align 8
  store i64 %1488, i64* %RCX.i1291, align 8
  %1489 = add i64 %1483, -76
  %1490 = add i64 %1485, 8
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1489 to i32*
  %1492 = load i32, i32* %1491, align 4
  %1493 = sext i32 %1492 to i64
  store i64 %1493, i64* %R8.i1310, align 8
  %1494 = shl nsw i64 %1493, 3
  %1495 = add i64 %1494, %1488
  %1496 = add i64 %1485, 12
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i64*
  %1498 = load i64, i64* %1497, align 8
  store i64 %1498, i64* %RCX.i1291, align 8
  %1499 = add i64 %1485, 14
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i32*
  %1501 = load i32, i32* %1500, align 4
  %1502 = zext i32 %1501 to i64
  store i64 %1502, i64* %RAX.i1312, align 8
  %1503 = add i64 %1483, -24
  %1504 = add i64 %1485, 18
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i64*
  %1506 = load i64, i64* %1505, align 8
  store i64 %1506, i64* %RCX.i1291, align 8
  %1507 = add i64 %1506, 336
  %1508 = add i64 %1485, 24
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1507 to i32*
  %1510 = load i32, i32* %1509, align 4
  %1511 = add i32 %1510, %1501
  %1512 = zext i32 %1511 to i64
  store i64 %1512, i64* %RAX.i1312, align 8
  %1513 = icmp ult i32 %1511, %1501
  %1514 = icmp ult i32 %1511, %1510
  %1515 = or i1 %1513, %1514
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %14, align 1
  %1517 = and i32 %1511, 255
  %1518 = tail call i32 @llvm.ctpop.i32(i32 %1517)
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  %1521 = xor i8 %1520, 1
  store i8 %1521, i8* %21, align 1
  %1522 = xor i32 %1510, %1501
  %1523 = xor i32 %1522, %1511
  %1524 = lshr i32 %1523, 4
  %1525 = trunc i32 %1524 to i8
  %1526 = and i8 %1525, 1
  store i8 %1526, i8* %26, align 1
  %1527 = icmp eq i32 %1511, 0
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %29, align 1
  %1529 = lshr i32 %1511, 31
  %1530 = trunc i32 %1529 to i8
  store i8 %1530, i8* %32, align 1
  %1531 = lshr i32 %1501, 31
  %1532 = lshr i32 %1510, 31
  %1533 = xor i32 %1529, %1531
  %1534 = xor i32 %1529, %1532
  %1535 = add nuw nsw i32 %1533, %1534
  %1536 = icmp eq i32 %1535, 2
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %38, align 1
  %1538 = add i64 %1485, 28
  store i64 %1538, i64* %3, align 8
  %1539 = load i64, i64* %1487, align 8
  store i64 %1539, i64* %RCX.i1291, align 8
  %1540 = add i64 %1485, 31
  store i64 %1540, i64* %3, align 8
  %1541 = load i32, i32* %1491, align 4
  %1542 = add i32 %1541, 1
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RDX.i1294, align 8
  %1544 = icmp eq i32 %1541, -1
  %1545 = icmp eq i32 %1542, 0
  %1546 = or i1 %1544, %1545
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %14, align 1
  %1548 = and i32 %1542, 255
  %1549 = tail call i32 @llvm.ctpop.i32(i32 %1548)
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  %1552 = xor i8 %1551, 1
  store i8 %1552, i8* %21, align 1
  %1553 = xor i32 %1542, %1541
  %1554 = lshr i32 %1553, 4
  %1555 = trunc i32 %1554 to i8
  %1556 = and i8 %1555, 1
  store i8 %1556, i8* %26, align 1
  %1557 = zext i1 %1545 to i8
  store i8 %1557, i8* %29, align 1
  %1558 = lshr i32 %1542, 31
  %1559 = trunc i32 %1558 to i8
  store i8 %1559, i8* %32, align 1
  %1560 = lshr i32 %1541, 31
  %1561 = xor i32 %1558, %1560
  %1562 = add nuw nsw i32 %1561, %1558
  %1563 = icmp eq i32 %1562, 2
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %38, align 1
  %1565 = sext i32 %1542 to i64
  store i64 %1565, i64* %R8.i1310, align 8
  %1566 = shl nsw i64 %1565, 3
  %1567 = add i64 %1539, %1566
  %1568 = add i64 %1485, 41
  store i64 %1568, i64* %3, align 8
  %1569 = inttoptr i64 %1567 to i64*
  %1570 = load i64, i64* %1569, align 8
  store i64 %1570, i64* %RCX.i1291, align 8
  %1571 = add i64 %1570, 16
  %1572 = add i64 %1485, 44
  store i64 %1572, i64* %3, align 8
  %1573 = inttoptr i64 %1571 to i32*
  %1574 = load i32, i32* %1573, align 4
  %1575 = zext i32 %1574 to i64
  store i64 %1575, i64* %RDX.i1294, align 8
  %1576 = load i64, i64* %RBP.i, align 8
  %1577 = add i64 %1576, -24
  %1578 = add i64 %1485, 48
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1577 to i64*
  %1580 = load i64, i64* %1579, align 8
  store i64 %1580, i64* %RCX.i1291, align 8
  %1581 = add i64 %1580, 340
  %1582 = add i64 %1485, 54
  store i64 %1582, i64* %3, align 8
  %1583 = inttoptr i64 %1581 to i32*
  %1584 = load i32, i32* %1583, align 4
  %1585 = add i32 %1584, %1574
  %1586 = zext i32 %1585 to i64
  store i64 %1586, i64* %RDX.i1294, align 8
  %1587 = icmp ult i32 %1585, %1574
  %1588 = icmp ult i32 %1585, %1584
  %1589 = or i1 %1587, %1588
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %14, align 1
  %1591 = and i32 %1585, 255
  %1592 = tail call i32 @llvm.ctpop.i32(i32 %1591)
  %1593 = trunc i32 %1592 to i8
  %1594 = and i8 %1593, 1
  %1595 = xor i8 %1594, 1
  store i8 %1595, i8* %21, align 1
  %1596 = xor i32 %1584, %1574
  %1597 = xor i32 %1596, %1585
  %1598 = lshr i32 %1597, 4
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  store i8 %1600, i8* %26, align 1
  %1601 = icmp eq i32 %1585, 0
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %29, align 1
  %1603 = lshr i32 %1585, 31
  %1604 = trunc i32 %1603 to i8
  store i8 %1604, i8* %32, align 1
  %1605 = lshr i32 %1574, 31
  %1606 = lshr i32 %1584, 31
  %1607 = xor i32 %1603, %1605
  %1608 = xor i32 %1603, %1606
  %1609 = add nuw nsw i32 %1607, %1608
  %1610 = icmp eq i32 %1609, 2
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %38, align 1
  %1612 = load i32, i32* %EAX.i1041, align 4
  %1613 = zext i32 %1612 to i64
  store i64 %1613, i64* %RDI.i1300, align 8
  store i64 %1586, i64* %RSI.i1288, align 8
  %1614 = add i64 %1485, -55878
  %1615 = add i64 %1485, 63
  %1616 = load i64, i64* %6, align 8
  %1617 = add i64 %1616, -8
  %1618 = inttoptr i64 %1617 to i64*
  store i64 %1615, i64* %1618, align 8
  store i64 %1617, i64* %6, align 8
  store i64 %1614, i64* %3, align 8
  %call2_435c30 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %1614, %struct.Memory* %call2_4358a9)
  %1619 = load i64, i64* %RBP.i, align 8
  %1620 = add i64 %1619, -48
  %1621 = load i64, i64* %3, align 8
  %1622 = add i64 %1621, 4
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1620 to i64*
  %1624 = load i64, i64* %1623, align 8
  store i64 %1624, i64* %RCX.i1291, align 8
  %1625 = add i64 %1619, -76
  %1626 = add i64 %1621, 8
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1625 to i32*
  %1628 = load i32, i32* %1627, align 4
  %1629 = sext i32 %1628 to i64
  store i64 %1629, i64* %R8.i1310, align 8
  %1630 = shl nsw i64 %1629, 3
  %1631 = add i64 %1630, %1624
  %1632 = add i64 %1621, 12
  store i64 %1632, i64* %3, align 8
  %1633 = inttoptr i64 %1631 to i64*
  %1634 = load i64, i64* %1633, align 8
  store i64 %1634, i64* %RCX.i1291, align 8
  %1635 = add i64 %1634, 16
  %1636 = load i32, i32* %EAX.i1041, align 4
  %1637 = add i64 %1621, 15
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1635 to i32*
  store i32 %1636, i32* %1638, align 4
  %1639 = load i64, i64* %RBP.i, align 8
  %1640 = add i64 %1639, -76
  %1641 = load i64, i64* %3, align 8
  %1642 = add i64 %1641, 4
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1640 to i32*
  %1644 = load i32, i32* %1643, align 4
  store i8 0, i8* %14, align 1
  %1645 = and i32 %1644, 255
  %1646 = tail call i32 @llvm.ctpop.i32(i32 %1645)
  %1647 = trunc i32 %1646 to i8
  %1648 = and i8 %1647, 1
  %1649 = xor i8 %1648, 1
  store i8 %1649, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1650 = icmp eq i32 %1644, 0
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %29, align 1
  %1652 = lshr i32 %1644, 31
  %1653 = trunc i32 %1652 to i8
  store i8 %1653, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1654 = icmp ne i8 %1653, 0
  %1655 = or i1 %1650, %1654
  %.v21 = select i1 %1655, i64 807, i64 10
  %1656 = add i64 %1641, %.v21
  store i64 %1656, i64* %3, align 8
  br i1 %1655, label %block_.L_435f6b, label %block_435c4e

block_435c4e:                                     ; preds = %block_.L_435b60
  %1657 = add i64 %1639, -48
  %1658 = add i64 %1656, 4
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i64*
  %1660 = load i64, i64* %1659, align 8
  store i64 %1660, i64* %RAX.i1312, align 8
  %1661 = add i64 %1656, 8
  store i64 %1661, i64* %3, align 8
  %1662 = load i32, i32* %1643, align 4
  %1663 = sext i32 %1662 to i64
  store i64 %1663, i64* %RCX.i1291, align 8
  %1664 = shl nsw i64 %1663, 3
  %1665 = add i64 %1664, %1660
  %1666 = add i64 %1656, 12
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i64*
  %1668 = load i64, i64* %1667, align 8
  store i64 %1668, i64* %RAX.i1312, align 8
  %1669 = add i64 %1668, 4
  %1670 = add i64 %1656, 15
  store i64 %1670, i64* %3, align 8
  %1671 = inttoptr i64 %1669 to i32*
  %1672 = load i32, i32* %1671, align 4
  %1673 = zext i32 %1672 to i64
  store i64 %1673, i64* %RDX.i1294, align 8
  %1674 = add i64 %1639, -24
  %1675 = add i64 %1656, 19
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i64*
  %1677 = load i64, i64* %1676, align 8
  store i64 %1677, i64* %RAX.i1312, align 8
  %1678 = add i64 %1677, 376
  %1679 = add i64 %1656, 26
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i64*
  %1681 = load i64, i64* %1680, align 8
  store i64 %1681, i64* %RAX.i1312, align 8
  %1682 = add i64 %1656, 30
  store i64 %1682, i64* %3, align 8
  %1683 = load i64, i64* %1676, align 8
  store i64 %1683, i64* %RCX.i1291, align 8
  %1684 = add i64 %1683, 136
  %1685 = add i64 %1656, 37
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1684 to i32*
  %1687 = load i32, i32* %1686, align 4
  %1688 = sext i32 %1687 to i64
  store i64 %1688, i64* %RCX.i1291, align 8
  %1689 = shl nsw i64 %1688, 2
  %1690 = add i64 %1681, %1689
  %1691 = add i64 %1656, 40
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1690 to i32*
  %1693 = load i32, i32* %1692, align 4
  %1694 = add i32 %1693, %1672
  %1695 = zext i32 %1694 to i64
  store i64 %1695, i64* %RDX.i1294, align 8
  %1696 = icmp ult i32 %1694, %1672
  %1697 = icmp ult i32 %1694, %1693
  %1698 = or i1 %1696, %1697
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %14, align 1
  %1700 = and i32 %1694, 255
  %1701 = tail call i32 @llvm.ctpop.i32(i32 %1700)
  %1702 = trunc i32 %1701 to i8
  %1703 = and i8 %1702, 1
  %1704 = xor i8 %1703, 1
  store i8 %1704, i8* %21, align 1
  %1705 = xor i32 %1693, %1672
  %1706 = xor i32 %1705, %1694
  %1707 = lshr i32 %1706, 4
  %1708 = trunc i32 %1707 to i8
  %1709 = and i8 %1708, 1
  store i8 %1709, i8* %26, align 1
  %1710 = icmp eq i32 %1694, 0
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %29, align 1
  %1712 = lshr i32 %1694, 31
  %1713 = trunc i32 %1712 to i8
  store i8 %1713, i8* %32, align 1
  %1714 = lshr i32 %1672, 31
  %1715 = lshr i32 %1693, 31
  %1716 = xor i32 %1712, %1714
  %1717 = xor i32 %1712, %1715
  %1718 = add nuw nsw i32 %1716, %1717
  %1719 = icmp eq i32 %1718, 2
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %38, align 1
  %1721 = add i64 %1656, 44
  store i64 %1721, i64* %3, align 8
  %1722 = load i64, i64* %1676, align 8
  store i64 %1722, i64* %RAX.i1312, align 8
  %1723 = add i64 %1722, 320
  %1724 = add i64 %1656, 51
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1723 to i64*
  %1726 = load i64, i64* %1725, align 8
  store i64 %1726, i64* %RAX.i1312, align 8
  %1727 = add i64 %1639, -8
  %1728 = add i64 %1656, 55
  store i64 %1728, i64* %3, align 8
  %1729 = inttoptr i64 %1727 to i64*
  %1730 = load i64, i64* %1729, align 8
  store i64 %1730, i64* %RCX.i1291, align 8
  %1731 = load i64, i64* %RBP.i, align 8
  %1732 = add i64 %1731, -76
  %1733 = add i64 %1656, 59
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to i32*
  %1735 = load i32, i32* %1734, align 4
  %1736 = sext i32 %1735 to i64
  store i64 %1736, i64* %RSI.i1288, align 8
  %1737 = add i64 %1730, %1736
  %1738 = add i64 %1656, 63
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1737 to i8*
  %1740 = load i8, i8* %1739, align 1
  %1741 = sext i8 %1740 to i64
  %1742 = and i64 %1741, 4294967295
  store i64 %1742, i64* %RDI.i1300, align 8
  %1743 = sext i8 %1740 to i64
  store i64 %1743, i64* %RCX.i1291, align 8
  %1744 = shl nsw i64 %1743, 3
  %1745 = add i64 %1726, %1744
  %1746 = add i64 %1656, 70
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1745 to i64*
  %1748 = load i64, i64* %1747, align 8
  store i64 %1748, i64* %RAX.i1312, align 8
  %1749 = add i64 %1731, -24
  %1750 = add i64 %1656, 74
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1749 to i64*
  %1752 = load i64, i64* %1751, align 8
  store i64 %1752, i64* %RCX.i1291, align 8
  %1753 = add i64 %1752, 136
  %1754 = add i64 %1656, 81
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = sext i32 %1756 to i64
  store i64 %1757, i64* %RCX.i1291, align 8
  %1758 = shl nsw i64 %1757, 2
  %1759 = add i64 %1748, %1758
  %1760 = add i64 %1656, 84
  store i64 %1760, i64* %3, align 8
  %1761 = inttoptr i64 %1759 to i32*
  %1762 = load i32, i32* %1761, align 4
  %1763 = add i32 %1762, %1694
  %1764 = zext i32 %1763 to i64
  store i64 %1764, i64* %RDX.i1294, align 8
  %1765 = icmp ult i32 %1763, %1694
  %1766 = icmp ult i32 %1763, %1762
  %1767 = or i1 %1765, %1766
  %1768 = zext i1 %1767 to i8
  store i8 %1768, i8* %14, align 1
  %1769 = and i32 %1763, 255
  %1770 = tail call i32 @llvm.ctpop.i32(i32 %1769)
  %1771 = trunc i32 %1770 to i8
  %1772 = and i8 %1771, 1
  %1773 = xor i8 %1772, 1
  store i8 %1773, i8* %21, align 1
  %1774 = xor i32 %1762, %1694
  %1775 = xor i32 %1774, %1763
  %1776 = lshr i32 %1775, 4
  %1777 = trunc i32 %1776 to i8
  %1778 = and i8 %1777, 1
  store i8 %1778, i8* %26, align 1
  %1779 = icmp eq i32 %1763, 0
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %29, align 1
  %1781 = lshr i32 %1763, 31
  %1782 = trunc i32 %1781 to i8
  store i8 %1782, i8* %32, align 1
  %1783 = lshr i32 %1762, 31
  %1784 = xor i32 %1781, %1712
  %1785 = xor i32 %1781, %1783
  %1786 = add nuw nsw i32 %1784, %1785
  %1787 = icmp eq i32 %1786, 2
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %38, align 1
  %1789 = add i64 %1731, -56
  %1790 = add i64 %1656, 88
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1789 to i64*
  %1792 = load i64, i64* %1791, align 8
  store i64 %1792, i64* %RAX.i1312, align 8
  %1793 = add i64 %1656, 92
  store i64 %1793, i64* %3, align 8
  %1794 = load i32, i32* %1734, align 4
  %1795 = sext i32 %1794 to i64
  store i64 %1795, i64* %RCX.i1291, align 8
  %1796 = shl nsw i64 %1795, 3
  %1797 = add i64 %1796, %1792
  %1798 = add i64 %1656, 96
  store i64 %1798, i64* %3, align 8
  %1799 = inttoptr i64 %1797 to i64*
  %1800 = load i64, i64* %1799, align 8
  store i64 %1800, i64* %RAX.i1312, align 8
  %1801 = add i64 %1656, 100
  store i64 %1801, i64* %3, align 8
  %1802 = load i64, i64* %1751, align 8
  store i64 %1802, i64* %RCX.i1291, align 8
  %1803 = add i64 %1802, 136
  %1804 = add i64 %1656, 107
  store i64 %1804, i64* %3, align 8
  %1805 = inttoptr i64 %1803 to i32*
  %1806 = load i32, i32* %1805, align 4
  %1807 = sext i32 %1806 to i64
  store i64 %1807, i64* %RCX.i1291, align 8
  %1808 = shl nsw i64 %1807, 2
  %1809 = add i64 %1808, %1800
  %1810 = add i64 %1656, 110
  store i64 %1810, i64* %3, align 8
  %1811 = inttoptr i64 %1809 to i32*
  store i32 %1763, i32* %1811, align 4
  %1812 = load i64, i64* %RBP.i, align 8
  %1813 = add i64 %1812, -72
  %1814 = load i64, i64* %3, align 8
  %1815 = add i64 %1814, 4
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1813 to i64*
  %1817 = load i64, i64* %1816, align 8
  store i64 %1817, i64* %RAX.i1312, align 8
  %1818 = add i64 %1812, -76
  %1819 = add i64 %1814, 8
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i32*
  %1821 = load i32, i32* %1820, align 4
  %1822 = sext i32 %1821 to i64
  store i64 %1822, i64* %RCX.i1291, align 8
  %1823 = shl nsw i64 %1822, 3
  %1824 = add i64 %1823, %1817
  %1825 = add i64 %1814, 12
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to i64*
  %1827 = load i64, i64* %1826, align 8
  store i64 %1827, i64* %RAX.i1312, align 8
  %1828 = add i64 %1812, -24
  %1829 = add i64 %1814, 16
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1828 to i64*
  %1831 = load i64, i64* %1830, align 8
  store i64 %1831, i64* %RCX.i1291, align 8
  %1832 = add i64 %1831, 136
  %1833 = add i64 %1814, 23
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1832 to i32*
  %1835 = load i32, i32* %1834, align 4
  %1836 = sext i32 %1835 to i64
  store i64 %1836, i64* %RCX.i1291, align 8
  %1837 = shl nsw i64 %1836, 2
  %1838 = add i64 %1837, %1827
  %1839 = add i64 %1814, 30
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1838 to i32*
  store i32 -987654321, i32* %1840, align 4
  %1841 = load i64, i64* %RBP.i, align 8
  %1842 = add i64 %1841, -24
  %1843 = load i64, i64* %3, align 8
  %1844 = add i64 %1843, 4
  store i64 %1844, i64* %3, align 8
  %1845 = inttoptr i64 %1842 to i64*
  %1846 = load i64, i64* %1845, align 8
  store i64 %1846, i64* %RAX.i1312, align 8
  %1847 = add i64 %1846, 136
  %1848 = add i64 %1843, 10
  store i64 %1848, i64* %3, align 8
  %1849 = inttoptr i64 %1847 to i32*
  %1850 = load i32, i32* %1849, align 4
  %1851 = add i32 %1850, -1
  %1852 = zext i32 %1851 to i64
  store i64 %1852, i64* %RDX.i1294, align 8
  %1853 = icmp eq i32 %1850, 0
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %14, align 1
  %1855 = and i32 %1851, 255
  %1856 = tail call i32 @llvm.ctpop.i32(i32 %1855)
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 1
  %1859 = xor i8 %1858, 1
  store i8 %1859, i8* %21, align 1
  %1860 = xor i32 %1851, %1850
  %1861 = lshr i32 %1860, 4
  %1862 = trunc i32 %1861 to i8
  %1863 = and i8 %1862, 1
  store i8 %1863, i8* %26, align 1
  %1864 = icmp eq i32 %1851, 0
  %1865 = zext i1 %1864 to i8
  store i8 %1865, i8* %29, align 1
  %1866 = lshr i32 %1851, 31
  %1867 = trunc i32 %1866 to i8
  store i8 %1867, i8* %32, align 1
  %1868 = lshr i32 %1850, 31
  %1869 = xor i32 %1866, %1868
  %1870 = add nuw nsw i32 %1869, %1868
  %1871 = icmp eq i32 %1870, 2
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %38, align 1
  %1873 = add i64 %1841, -80
  %1874 = add i64 %1843, 16
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1873 to i32*
  store i32 %1851, i32* %1875, align 4
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_435cea

block_.L_435cea:                                  ; preds = %block_435cf4, %block_435c4e
  %1876 = phi i64 [ %3053, %block_435cf4 ], [ %.pre16, %block_435c4e ]
  %1877 = load i64, i64* %RBP.i, align 8
  %1878 = add i64 %1877, -80
  %1879 = add i64 %1876, 4
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1878 to i32*
  %1881 = load i32, i32* %1880, align 4
  %1882 = add i32 %1881, -1
  %1883 = icmp eq i32 %1881, 0
  %1884 = zext i1 %1883 to i8
  store i8 %1884, i8* %14, align 1
  %1885 = and i32 %1882, 255
  %1886 = tail call i32 @llvm.ctpop.i32(i32 %1885)
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  %1889 = xor i8 %1888, 1
  store i8 %1889, i8* %21, align 1
  %1890 = xor i32 %1882, %1881
  %1891 = lshr i32 %1890, 4
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  store i8 %1893, i8* %26, align 1
  %1894 = icmp eq i32 %1882, 0
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %29, align 1
  %1896 = lshr i32 %1882, 31
  %1897 = trunc i32 %1896 to i8
  store i8 %1897, i8* %32, align 1
  %1898 = lshr i32 %1881, 31
  %1899 = xor i32 %1896, %1898
  %1900 = add nuw nsw i32 %1899, %1898
  %1901 = icmp eq i32 %1900, 2
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %38, align 1
  %1903 = icmp ne i8 %1897, 0
  %1904 = xor i1 %1903, %1901
  %.v22 = select i1 %1904, i64 636, i64 10
  %1905 = add i64 %1876, %.v22
  store i64 %1905, i64* %3, align 8
  br i1 %1904, label %block_.L_435f66, label %block_435cf4

block_435cf4:                                     ; preds = %block_.L_435cea
  %1906 = add i64 %1877, -48
  %1907 = add i64 %1905, 4
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1906 to i64*
  %1909 = load i64, i64* %1908, align 8
  store i64 %1909, i64* %RAX.i1312, align 8
  %1910 = add i64 %1877, -76
  %1911 = add i64 %1905, 8
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1910 to i32*
  %1913 = load i32, i32* %1912, align 4
  %1914 = sext i32 %1913 to i64
  store i64 %1914, i64* %RCX.i1291, align 8
  %1915 = shl nsw i64 %1914, 3
  %1916 = add i64 %1915, %1909
  %1917 = add i64 %1905, 12
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1916 to i64*
  %1919 = load i64, i64* %1918, align 8
  store i64 %1919, i64* %RAX.i1312, align 8
  %1920 = add i64 %1919, 4
  %1921 = add i64 %1905, 15
  store i64 %1921, i64* %3, align 8
  %1922 = inttoptr i64 %1920 to i32*
  %1923 = load i32, i32* %1922, align 4
  %1924 = zext i32 %1923 to i64
  store i64 %1924, i64* %RDX.i1294, align 8
  %1925 = add i64 %1877, -24
  %1926 = add i64 %1905, 19
  store i64 %1926, i64* %3, align 8
  %1927 = inttoptr i64 %1925 to i64*
  %1928 = load i64, i64* %1927, align 8
  store i64 %1928, i64* %RAX.i1312, align 8
  %1929 = add i64 %1928, 376
  %1930 = add i64 %1905, 26
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1929 to i64*
  %1932 = load i64, i64* %1931, align 8
  store i64 %1932, i64* %RAX.i1312, align 8
  %1933 = add i64 %1905, 30
  store i64 %1933, i64* %3, align 8
  %1934 = load i32, i32* %1880, align 4
  %1935 = sext i32 %1934 to i64
  store i64 %1935, i64* %RCX.i1291, align 8
  %1936 = shl nsw i64 %1935, 2
  %1937 = add i64 %1932, %1936
  %1938 = add i64 %1905, 33
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1937 to i32*
  %1940 = load i32, i32* %1939, align 4
  %1941 = add i32 %1940, %1923
  %1942 = zext i32 %1941 to i64
  store i64 %1942, i64* %RDX.i1294, align 8
  %1943 = icmp ult i32 %1941, %1923
  %1944 = icmp ult i32 %1941, %1940
  %1945 = or i1 %1943, %1944
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %14, align 1
  %1947 = and i32 %1941, 255
  %1948 = tail call i32 @llvm.ctpop.i32(i32 %1947)
  %1949 = trunc i32 %1948 to i8
  %1950 = and i8 %1949, 1
  %1951 = xor i8 %1950, 1
  store i8 %1951, i8* %21, align 1
  %1952 = xor i32 %1940, %1923
  %1953 = xor i32 %1952, %1941
  %1954 = lshr i32 %1953, 4
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  store i8 %1956, i8* %26, align 1
  %1957 = icmp eq i32 %1941, 0
  %1958 = zext i1 %1957 to i8
  store i8 %1958, i8* %29, align 1
  %1959 = lshr i32 %1941, 31
  %1960 = trunc i32 %1959 to i8
  store i8 %1960, i8* %32, align 1
  %1961 = lshr i32 %1923, 31
  %1962 = lshr i32 %1940, 31
  %1963 = xor i32 %1959, %1961
  %1964 = xor i32 %1959, %1962
  %1965 = add nuw nsw i32 %1963, %1964
  %1966 = icmp eq i32 %1965, 2
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %38, align 1
  %1968 = add i64 %1877, -56
  %1969 = add i64 %1905, 37
  store i64 %1969, i64* %3, align 8
  %1970 = inttoptr i64 %1968 to i64*
  %1971 = load i64, i64* %1970, align 8
  store i64 %1971, i64* %RAX.i1312, align 8
  %1972 = add i64 %1905, 40
  store i64 %1972, i64* %3, align 8
  %1973 = load i32, i32* %1912, align 4
  %1974 = add i32 %1973, 1
  %1975 = zext i32 %1974 to i64
  store i64 %1975, i64* %RSI.i1288, align 8
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
  %1997 = sext i32 %1974 to i64
  store i64 %1997, i64* %RCX.i1291, align 8
  %1998 = shl nsw i64 %1997, 3
  %1999 = add i64 %1971, %1998
  %2000 = add i64 %1905, 50
  store i64 %2000, i64* %3, align 8
  %2001 = inttoptr i64 %1999 to i64*
  %2002 = load i64, i64* %2001, align 8
  store i64 %2002, i64* %RAX.i1312, align 8
  %2003 = load i64, i64* %RBP.i, align 8
  %2004 = add i64 %2003, -80
  %2005 = add i64 %1905, 53
  store i64 %2005, i64* %3, align 8
  %2006 = inttoptr i64 %2004 to i32*
  %2007 = load i32, i32* %2006, align 4
  %2008 = add i32 %2007, 1
  %2009 = zext i32 %2008 to i64
  store i64 %2009, i64* %RSI.i1288, align 8
  %2010 = icmp eq i32 %2007, -1
  %2011 = icmp eq i32 %2008, 0
  %2012 = or i1 %2010, %2011
  %2013 = zext i1 %2012 to i8
  store i8 %2013, i8* %14, align 1
  %2014 = and i32 %2008, 255
  %2015 = tail call i32 @llvm.ctpop.i32(i32 %2014)
  %2016 = trunc i32 %2015 to i8
  %2017 = and i8 %2016, 1
  %2018 = xor i8 %2017, 1
  store i8 %2018, i8* %21, align 1
  %2019 = xor i32 %2008, %2007
  %2020 = lshr i32 %2019, 4
  %2021 = trunc i32 %2020 to i8
  %2022 = and i8 %2021, 1
  store i8 %2022, i8* %26, align 1
  %2023 = zext i1 %2011 to i8
  store i8 %2023, i8* %29, align 1
  %2024 = lshr i32 %2008, 31
  %2025 = trunc i32 %2024 to i8
  store i8 %2025, i8* %32, align 1
  %2026 = lshr i32 %2007, 31
  %2027 = xor i32 %2024, %2026
  %2028 = add nuw nsw i32 %2027, %2024
  %2029 = icmp eq i32 %2028, 2
  %2030 = zext i1 %2029 to i8
  store i8 %2030, i8* %38, align 1
  %2031 = sext i32 %2008 to i64
  store i64 %2031, i64* %RCX.i1291, align 8
  %2032 = shl nsw i64 %2031, 2
  %2033 = add i64 %2002, %2032
  %2034 = add i64 %1905, 62
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i32*
  %2036 = load i32, i32* %2035, align 4
  %2037 = zext i32 %2036 to i64
  store i64 %2037, i64* %RSI.i1288, align 8
  %2038 = add i64 %2003, -24
  %2039 = add i64 %1905, 66
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i64*
  %2041 = load i64, i64* %2040, align 8
  store i64 %2041, i64* %RAX.i1312, align 8
  %2042 = add i64 %2041, 312
  %2043 = add i64 %1905, 73
  store i64 %2043, i64* %3, align 8
  %2044 = inttoptr i64 %2042 to i64*
  %2045 = load i64, i64* %2044, align 8
  store i64 %2045, i64* %RAX.i1312, align 8
  %2046 = add i64 %1905, 76
  store i64 %2046, i64* %3, align 8
  %2047 = inttoptr i64 %2045 to i64*
  %2048 = load i64, i64* %2047, align 8
  store i64 %2048, i64* %RAX.i1312, align 8
  %2049 = add i64 %1905, 80
  store i64 %2049, i64* %3, align 8
  %2050 = load i32, i32* %2006, align 4
  %2051 = sext i32 %2050 to i64
  store i64 %2051, i64* %RCX.i1291, align 8
  %2052 = shl nsw i64 %2051, 2
  %2053 = add i64 %2048, %2052
  %2054 = add i64 %1905, 83
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i32*
  %2056 = load i32, i32* %2055, align 4
  %2057 = add i32 %2056, %2036
  %2058 = zext i32 %2057 to i64
  store i64 %2058, i64* %RSI.i1288, align 8
  %2059 = icmp ult i32 %2057, %2036
  %2060 = icmp ult i32 %2057, %2056
  %2061 = or i1 %2059, %2060
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %14, align 1
  %2063 = and i32 %2057, 255
  %2064 = tail call i32 @llvm.ctpop.i32(i32 %2063)
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  %2067 = xor i8 %2066, 1
  store i8 %2067, i8* %21, align 1
  %2068 = xor i32 %2056, %2036
  %2069 = xor i32 %2068, %2057
  %2070 = lshr i32 %2069, 4
  %2071 = trunc i32 %2070 to i8
  %2072 = and i8 %2071, 1
  store i8 %2072, i8* %26, align 1
  %2073 = icmp eq i32 %2057, 0
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %29, align 1
  %2075 = lshr i32 %2057, 31
  %2076 = trunc i32 %2075 to i8
  store i8 %2076, i8* %32, align 1
  %2077 = lshr i32 %2036, 31
  %2078 = lshr i32 %2056, 31
  %2079 = xor i32 %2075, %2077
  %2080 = xor i32 %2075, %2078
  %2081 = add nuw nsw i32 %2079, %2080
  %2082 = icmp eq i32 %2081, 2
  %2083 = zext i1 %2082 to i8
  store i8 %2083, i8* %38, align 1
  %2084 = load i32, i32* %EDX.i1127, align 4
  %2085 = zext i32 %2084 to i64
  store i64 %2085, i64* %RDI.i1300, align 8
  %2086 = add i64 %1905, -56132
  %2087 = add i64 %1905, 90
  %2088 = load i64, i64* %6, align 8
  %2089 = add i64 %2088, -8
  %2090 = inttoptr i64 %2089 to i64*
  store i64 %2087, i64* %2090, align 8
  store i64 %2089, i64* %6, align 8
  store i64 %2086, i64* %3, align 8
  %call2_435d49 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %2086, %struct.Memory* %call2_4358a9)
  %2091 = load i64, i64* %RBP.i, align 8
  %2092 = add i64 %2091, -64
  %2093 = load i64, i64* %3, align 8
  %2094 = add i64 %2093, 4
  store i64 %2094, i64* %3, align 8
  %2095 = inttoptr i64 %2092 to i64*
  %2096 = load i64, i64* %2095, align 8
  store i64 %2096, i64* %RCX.i1291, align 8
  %2097 = add i64 %2091, -76
  %2098 = add i64 %2093, 7
  store i64 %2098, i64* %3, align 8
  %2099 = inttoptr i64 %2097 to i32*
  %2100 = load i32, i32* %2099, align 4
  %2101 = add i32 %2100, 1
  %2102 = zext i32 %2101 to i64
  store i64 %2102, i64* %RDX.i1294, align 8
  %2103 = icmp eq i32 %2100, -1
  %2104 = icmp eq i32 %2101, 0
  %2105 = or i1 %2103, %2104
  %2106 = zext i1 %2105 to i8
  store i8 %2106, i8* %14, align 1
  %2107 = and i32 %2101, 255
  %2108 = tail call i32 @llvm.ctpop.i32(i32 %2107)
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  %2111 = xor i8 %2110, 1
  store i8 %2111, i8* %21, align 1
  %2112 = xor i32 %2101, %2100
  %2113 = lshr i32 %2112, 4
  %2114 = trunc i32 %2113 to i8
  %2115 = and i8 %2114, 1
  store i8 %2115, i8* %26, align 1
  %2116 = zext i1 %2104 to i8
  store i8 %2116, i8* %29, align 1
  %2117 = lshr i32 %2101, 31
  %2118 = trunc i32 %2117 to i8
  store i8 %2118, i8* %32, align 1
  %2119 = lshr i32 %2100, 31
  %2120 = xor i32 %2117, %2119
  %2121 = add nuw nsw i32 %2120, %2117
  %2122 = icmp eq i32 %2121, 2
  %2123 = zext i1 %2122 to i8
  store i8 %2123, i8* %38, align 1
  %2124 = sext i32 %2101 to i64
  store i64 %2124, i64* %R8.i1310, align 8
  %2125 = shl nsw i64 %2124, 3
  %2126 = add i64 %2096, %2125
  %2127 = add i64 %2093, 17
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2126 to i64*
  %2129 = load i64, i64* %2128, align 8
  store i64 %2129, i64* %RCX.i1291, align 8
  %2130 = add i64 %2091, -80
  %2131 = add i64 %2093, 21
  store i64 %2131, i64* %3, align 8
  %2132 = inttoptr i64 %2130 to i32*
  %2133 = load i32, i32* %2132, align 4
  %2134 = sext i32 %2133 to i64
  store i64 %2134, i64* %R8.i1310, align 8
  %2135 = shl nsw i64 %2134, 2
  %2136 = add i64 %2135, %2129
  %2137 = add i64 %2093, 25
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i32*
  %2139 = load i32, i32* %2138, align 4
  %2140 = zext i32 %2139 to i64
  store i64 %2140, i64* %RDX.i1294, align 8
  %2141 = add i64 %2091, -24
  %2142 = add i64 %2093, 29
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2141 to i64*
  %2144 = load i64, i64* %2143, align 8
  store i64 %2144, i64* %RCX.i1291, align 8
  %2145 = add i64 %2144, 312
  %2146 = add i64 %2093, 36
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i64*
  %2148 = load i64, i64* %2147, align 8
  store i64 %2148, i64* %RCX.i1291, align 8
  %2149 = add i64 %2148, 8
  %2150 = add i64 %2093, 40
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2149 to i64*
  %2152 = load i64, i64* %2151, align 8
  store i64 %2152, i64* %RCX.i1291, align 8
  %2153 = add i64 %2093, 44
  store i64 %2153, i64* %3, align 8
  %2154 = load i32, i32* %2132, align 4
  %2155 = sext i32 %2154 to i64
  store i64 %2155, i64* %R8.i1310, align 8
  %2156 = shl nsw i64 %2155, 2
  %2157 = add i64 %2152, %2156
  %2158 = add i64 %2093, 48
  store i64 %2158, i64* %3, align 8
  %2159 = inttoptr i64 %2157 to i32*
  %2160 = load i32, i32* %2159, align 4
  %2161 = add i32 %2160, %2139
  %2162 = zext i32 %2161 to i64
  store i64 %2162, i64* %RDX.i1294, align 8
  %2163 = icmp ult i32 %2161, %2139
  %2164 = icmp ult i32 %2161, %2160
  %2165 = or i1 %2163, %2164
  %2166 = zext i1 %2165 to i8
  store i8 %2166, i8* %14, align 1
  %2167 = and i32 %2161, 255
  %2168 = tail call i32 @llvm.ctpop.i32(i32 %2167)
  %2169 = trunc i32 %2168 to i8
  %2170 = and i8 %2169, 1
  %2171 = xor i8 %2170, 1
  store i8 %2171, i8* %21, align 1
  %2172 = xor i32 %2160, %2139
  %2173 = xor i32 %2172, %2161
  %2174 = lshr i32 %2173, 4
  %2175 = trunc i32 %2174 to i8
  %2176 = and i8 %2175, 1
  store i8 %2176, i8* %26, align 1
  %2177 = icmp eq i32 %2161, 0
  %2178 = zext i1 %2177 to i8
  store i8 %2178, i8* %29, align 1
  %2179 = lshr i32 %2161, 31
  %2180 = trunc i32 %2179 to i8
  store i8 %2180, i8* %32, align 1
  %2181 = lshr i32 %2139, 31
  %2182 = lshr i32 %2160, 31
  %2183 = xor i32 %2179, %2181
  %2184 = xor i32 %2179, %2182
  %2185 = add nuw nsw i32 %2183, %2184
  %2186 = icmp eq i32 %2185, 2
  %2187 = zext i1 %2186 to i8
  store i8 %2187, i8* %38, align 1
  %2188 = load i64, i64* %RBP.i, align 8
  %2189 = add i64 %2188, -72
  %2190 = add i64 %2093, 52
  store i64 %2190, i64* %3, align 8
  %2191 = inttoptr i64 %2189 to i64*
  %2192 = load i64, i64* %2191, align 8
  store i64 %2192, i64* %RCX.i1291, align 8
  %2193 = add i64 %2188, -76
  %2194 = add i64 %2093, 56
  store i64 %2194, i64* %3, align 8
  %2195 = inttoptr i64 %2193 to i32*
  %2196 = load i32, i32* %2195, align 4
  %2197 = sext i32 %2196 to i64
  store i64 %2197, i64* %R8.i1310, align 8
  %2198 = shl nsw i64 %2197, 3
  %2199 = add i64 %2198, %2192
  %2200 = add i64 %2093, 60
  store i64 %2200, i64* %3, align 8
  %2201 = inttoptr i64 %2199 to i64*
  %2202 = load i64, i64* %2201, align 8
  store i64 %2202, i64* %RCX.i1291, align 8
  %2203 = add i64 %2188, -80
  %2204 = add i64 %2093, 63
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i32*
  %2206 = load i32, i32* %2205, align 4
  %2207 = add i32 %2206, 1
  %2208 = zext i32 %2207 to i64
  store i64 %2208, i64* %RSI.i1288, align 8
  %2209 = icmp eq i32 %2206, -1
  %2210 = icmp eq i32 %2207, 0
  %2211 = or i1 %2209, %2210
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %14, align 1
  %2213 = and i32 %2207, 255
  %2214 = tail call i32 @llvm.ctpop.i32(i32 %2213)
  %2215 = trunc i32 %2214 to i8
  %2216 = and i8 %2215, 1
  %2217 = xor i8 %2216, 1
  store i8 %2217, i8* %21, align 1
  %2218 = xor i32 %2207, %2206
  %2219 = lshr i32 %2218, 4
  %2220 = trunc i32 %2219 to i8
  %2221 = and i8 %2220, 1
  store i8 %2221, i8* %26, align 1
  %2222 = zext i1 %2210 to i8
  store i8 %2222, i8* %29, align 1
  %2223 = lshr i32 %2207, 31
  %2224 = trunc i32 %2223 to i8
  store i8 %2224, i8* %32, align 1
  %2225 = lshr i32 %2206, 31
  %2226 = xor i32 %2223, %2225
  %2227 = add nuw nsw i32 %2226, %2223
  %2228 = icmp eq i32 %2227, 2
  %2229 = zext i1 %2228 to i8
  store i8 %2229, i8* %38, align 1
  %2230 = sext i32 %2207 to i64
  store i64 %2230, i64* %R8.i1310, align 8
  %2231 = shl nsw i64 %2230, 2
  %2232 = add i64 %2202, %2231
  %2233 = add i64 %2093, 73
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i32*
  %2235 = load i32, i32* %2234, align 4
  %2236 = zext i32 %2235 to i64
  store i64 %2236, i64* %RSI.i1288, align 8
  %2237 = add i64 %2188, -24
  %2238 = add i64 %2093, 77
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2237 to i64*
  %2240 = load i64, i64* %2239, align 8
  store i64 %2240, i64* %RCX.i1291, align 8
  %2241 = add i64 %2240, 312
  %2242 = add i64 %2093, 84
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2241 to i64*
  %2244 = load i64, i64* %2243, align 8
  store i64 %2244, i64* %RCX.i1291, align 8
  %2245 = add i64 %2244, 16
  %2246 = add i64 %2093, 88
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2245 to i64*
  %2248 = load i64, i64* %2247, align 8
  store i64 %2248, i64* %RCX.i1291, align 8
  %2249 = add i64 %2093, 92
  store i64 %2249, i64* %3, align 8
  %2250 = load i32, i32* %2205, align 4
  %2251 = sext i32 %2250 to i64
  store i64 %2251, i64* %R8.i1310, align 8
  %2252 = shl nsw i64 %2251, 2
  %2253 = add i64 %2248, %2252
  %2254 = add i64 %2093, 96
  store i64 %2254, i64* %3, align 8
  %2255 = inttoptr i64 %2253 to i32*
  %2256 = load i32, i32* %2255, align 4
  %2257 = add i32 %2256, %2235
  %2258 = zext i32 %2257 to i64
  store i64 %2258, i64* %RSI.i1288, align 8
  %2259 = icmp ult i32 %2257, %2235
  %2260 = icmp ult i32 %2257, %2256
  %2261 = or i1 %2259, %2260
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %14, align 1
  %2263 = and i32 %2257, 255
  %2264 = tail call i32 @llvm.ctpop.i32(i32 %2263)
  %2265 = trunc i32 %2264 to i8
  %2266 = and i8 %2265, 1
  %2267 = xor i8 %2266, 1
  store i8 %2267, i8* %21, align 1
  %2268 = xor i32 %2256, %2235
  %2269 = xor i32 %2268, %2257
  %2270 = lshr i32 %2269, 4
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  store i8 %2272, i8* %26, align 1
  %2273 = icmp eq i32 %2257, 0
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %29, align 1
  %2275 = lshr i32 %2257, 31
  %2276 = trunc i32 %2275 to i8
  store i8 %2276, i8* %32, align 1
  %2277 = lshr i32 %2235, 31
  %2278 = lshr i32 %2256, 31
  %2279 = xor i32 %2275, %2277
  %2280 = xor i32 %2275, %2278
  %2281 = add nuw nsw i32 %2279, %2280
  %2282 = icmp eq i32 %2281, 2
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %38, align 1
  %2284 = load i32, i32* %EDX.i1127, align 4
  %2285 = zext i32 %2284 to i64
  store i64 %2285, i64* %RDI.i1300, align 8
  %2286 = load i64, i64* %RBP.i, align 8
  %2287 = add i64 %2286, -88
  %2288 = load i32, i32* %EAX.i1041, align 4
  %2289 = add i64 %2093, 101
  store i64 %2289, i64* %3, align 8
  %2290 = inttoptr i64 %2287 to i32*
  store i32 %2288, i32* %2290, align 4
  %2291 = load i64, i64* %3, align 8
  %2292 = add i64 %2291, -56323
  %2293 = add i64 %2291, 5
  %2294 = load i64, i64* %6, align 8
  %2295 = add i64 %2294, -8
  %2296 = inttoptr i64 %2295 to i64*
  store i64 %2293, i64* %2296, align 8
  store i64 %2295, i64* %6, align 8
  store i64 %2292, i64* %3, align 8
  %call2_435db3 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %2292, %struct.Memory* %call2_4358a9)
  %2297 = load i64, i64* %RBP.i, align 8
  %2298 = add i64 %2297, -88
  %2299 = load i64, i64* %3, align 8
  %2300 = add i64 %2299, 3
  store i64 %2300, i64* %3, align 8
  %2301 = inttoptr i64 %2298 to i32*
  %2302 = load i32, i32* %2301, align 4
  %2303 = zext i32 %2302 to i64
  store i64 %2303, i64* %RDI.i1300, align 8
  %2304 = load i32, i32* %EAX.i1041, align 4
  %2305 = zext i32 %2304 to i64
  store i64 %2305, i64* %RSI.i1288, align 8
  %2306 = add i64 %2299, -56328
  %2307 = add i64 %2299, 10
  %2308 = load i64, i64* %6, align 8
  %2309 = add i64 %2308, -8
  %2310 = inttoptr i64 %2309 to i64*
  store i64 %2307, i64* %2310, align 8
  store i64 %2309, i64* %6, align 8
  store i64 %2306, i64* %3, align 8
  %call2_435dbd = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %2306, %struct.Memory* %call2_4358a9)
  %2311 = load i64, i64* %RBP.i, align 8
  %2312 = add i64 %2311, -56
  %2313 = load i64, i64* %3, align 8
  %2314 = add i64 %2313, 4
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2312 to i64*
  %2316 = load i64, i64* %2315, align 8
  store i64 %2316, i64* %RCX.i1291, align 8
  %2317 = add i64 %2311, -76
  %2318 = add i64 %2313, 8
  store i64 %2318, i64* %3, align 8
  %2319 = inttoptr i64 %2317 to i32*
  %2320 = load i32, i32* %2319, align 4
  %2321 = sext i32 %2320 to i64
  store i64 %2321, i64* %R8.i1310, align 8
  %2322 = shl nsw i64 %2321, 3
  %2323 = add i64 %2322, %2316
  %2324 = add i64 %2313, 12
  store i64 %2324, i64* %3, align 8
  %2325 = inttoptr i64 %2323 to i64*
  %2326 = load i64, i64* %2325, align 8
  store i64 %2326, i64* %RCX.i1291, align 8
  %2327 = add i64 %2311, -80
  %2328 = add i64 %2313, 16
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2327 to i32*
  %2330 = load i32, i32* %2329, align 4
  %2331 = sext i32 %2330 to i64
  store i64 %2331, i64* %R8.i1310, align 8
  %2332 = shl nsw i64 %2331, 2
  %2333 = add i64 %2332, %2326
  %2334 = load i32, i32* %EAX.i1041, align 4
  %2335 = add i64 %2313, 20
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2333 to i32*
  store i32 %2334, i32* %2336, align 4
  %2337 = load i64, i64* %RBP.i, align 8
  %2338 = add i64 %2337, -24
  %2339 = load i64, i64* %3, align 8
  %2340 = add i64 %2339, 4
  store i64 %2340, i64* %3, align 8
  %2341 = inttoptr i64 %2338 to i64*
  %2342 = load i64, i64* %2341, align 8
  store i64 %2342, i64* %RCX.i1291, align 8
  %2343 = add i64 %2342, 320
  %2344 = add i64 %2339, 11
  store i64 %2344, i64* %3, align 8
  %2345 = inttoptr i64 %2343 to i64*
  %2346 = load i64, i64* %2345, align 8
  store i64 %2346, i64* %RCX.i1291, align 8
  %2347 = add i64 %2337, -8
  %2348 = add i64 %2339, 15
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2347 to i64*
  %2350 = load i64, i64* %2349, align 8
  store i64 %2350, i64* %R8.i1310, align 8
  %2351 = add i64 %2337, -76
  %2352 = add i64 %2339, 19
  store i64 %2352, i64* %3, align 8
  %2353 = inttoptr i64 %2351 to i32*
  %2354 = load i32, i32* %2353, align 4
  %2355 = sext i32 %2354 to i64
  store i64 %2355, i64* %R9.i1307, align 8
  %2356 = add i64 %2350, %2355
  %2357 = add i64 %2339, 24
  store i64 %2357, i64* %3, align 8
  %2358 = inttoptr i64 %2356 to i8*
  %2359 = load i8, i8* %2358, align 1
  %2360 = sext i8 %2359 to i64
  %2361 = and i64 %2360, 4294967295
  store i64 %2361, i64* %RAX.i1312, align 8
  %2362 = sext i8 %2359 to i64
  store i64 %2362, i64* %R8.i1310, align 8
  %2363 = shl nsw i64 %2362, 3
  %2364 = add i64 %2346, %2363
  %2365 = add i64 %2339, 31
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to i64*
  %2367 = load i64, i64* %2366, align 8
  store i64 %2367, i64* %RCX.i1291, align 8
  %2368 = add i64 %2337, -80
  %2369 = add i64 %2339, 35
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = sext i32 %2371 to i64
  store i64 %2372, i64* %R8.i1310, align 8
  %2373 = shl nsw i64 %2372, 2
  %2374 = add i64 %2373, %2367
  %2375 = add i64 %2339, 39
  store i64 %2375, i64* %3, align 8
  %2376 = inttoptr i64 %2374 to i32*
  %2377 = load i32, i32* %2376, align 4
  %2378 = zext i32 %2377 to i64
  store i64 %2378, i64* %RAX.i1312, align 8
  %2379 = add i64 %2337, -56
  %2380 = add i64 %2339, 43
  store i64 %2380, i64* %3, align 8
  %2381 = inttoptr i64 %2379 to i64*
  %2382 = load i64, i64* %2381, align 8
  store i64 %2382, i64* %RCX.i1291, align 8
  %2383 = add i64 %2339, 47
  store i64 %2383, i64* %3, align 8
  %2384 = load i32, i32* %2353, align 4
  %2385 = sext i32 %2384 to i64
  store i64 %2385, i64* %R8.i1310, align 8
  %2386 = shl nsw i64 %2385, 3
  %2387 = add i64 %2386, %2382
  %2388 = add i64 %2339, 51
  store i64 %2388, i64* %3, align 8
  %2389 = inttoptr i64 %2387 to i64*
  %2390 = load i64, i64* %2389, align 8
  store i64 %2390, i64* %RCX.i1291, align 8
  %2391 = add i64 %2339, 55
  store i64 %2391, i64* %3, align 8
  %2392 = load i32, i32* %2370, align 4
  %2393 = sext i32 %2392 to i64
  store i64 %2393, i64* %R8.i1310, align 8
  %2394 = shl nsw i64 %2393, 2
  %2395 = add i64 %2390, %2394
  %2396 = add i64 %2339, 59
  store i64 %2396, i64* %3, align 8
  %2397 = inttoptr i64 %2395 to i32*
  %2398 = load i32, i32* %2397, align 4
  %2399 = add i32 %2398, %2377
  %2400 = zext i32 %2399 to i64
  store i64 %2400, i64* %RAX.i1312, align 8
  %2401 = icmp ult i32 %2399, %2377
  %2402 = icmp ult i32 %2399, %2398
  %2403 = or i1 %2401, %2402
  %2404 = zext i1 %2403 to i8
  store i8 %2404, i8* %14, align 1
  %2405 = and i32 %2399, 255
  %2406 = tail call i32 @llvm.ctpop.i32(i32 %2405)
  %2407 = trunc i32 %2406 to i8
  %2408 = and i8 %2407, 1
  %2409 = xor i8 %2408, 1
  store i8 %2409, i8* %21, align 1
  %2410 = xor i32 %2398, %2377
  %2411 = xor i32 %2410, %2399
  %2412 = lshr i32 %2411, 4
  %2413 = trunc i32 %2412 to i8
  %2414 = and i8 %2413, 1
  store i8 %2414, i8* %26, align 1
  %2415 = icmp eq i32 %2399, 0
  %2416 = zext i1 %2415 to i8
  store i8 %2416, i8* %29, align 1
  %2417 = lshr i32 %2399, 31
  %2418 = trunc i32 %2417 to i8
  store i8 %2418, i8* %32, align 1
  %2419 = lshr i32 %2377, 31
  %2420 = lshr i32 %2398, 31
  %2421 = xor i32 %2417, %2419
  %2422 = xor i32 %2417, %2420
  %2423 = add nuw nsw i32 %2421, %2422
  %2424 = icmp eq i32 %2423, 2
  %2425 = zext i1 %2424 to i8
  store i8 %2425, i8* %38, align 1
  %2426 = add i64 %2339, 63
  store i64 %2426, i64* %3, align 8
  store i32 %2399, i32* %2397, align 4
  %2427 = load i64, i64* %RBP.i, align 8
  %2428 = add i64 %2427, -64
  %2429 = load i64, i64* %3, align 8
  %2430 = add i64 %2429, 4
  store i64 %2430, i64* %3, align 8
  %2431 = inttoptr i64 %2428 to i64*
  %2432 = load i64, i64* %2431, align 8
  store i64 %2432, i64* %RCX.i1291, align 8
  %2433 = add i64 %2427, -76
  %2434 = add i64 %2429, 7
  store i64 %2434, i64* %3, align 8
  %2435 = inttoptr i64 %2433 to i32*
  %2436 = load i32, i32* %2435, align 4
  %2437 = add i32 %2436, 1
  %2438 = zext i32 %2437 to i64
  store i64 %2438, i64* %RAX.i1312, align 8
  %2439 = icmp eq i32 %2436, -1
  %2440 = icmp eq i32 %2437, 0
  %2441 = or i1 %2439, %2440
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %14, align 1
  %2443 = and i32 %2437, 255
  %2444 = tail call i32 @llvm.ctpop.i32(i32 %2443)
  %2445 = trunc i32 %2444 to i8
  %2446 = and i8 %2445, 1
  %2447 = xor i8 %2446, 1
  store i8 %2447, i8* %21, align 1
  %2448 = xor i32 %2437, %2436
  %2449 = lshr i32 %2448, 4
  %2450 = trunc i32 %2449 to i8
  %2451 = and i8 %2450, 1
  store i8 %2451, i8* %26, align 1
  %2452 = zext i1 %2440 to i8
  store i8 %2452, i8* %29, align 1
  %2453 = lshr i32 %2437, 31
  %2454 = trunc i32 %2453 to i8
  store i8 %2454, i8* %32, align 1
  %2455 = lshr i32 %2436, 31
  %2456 = xor i32 %2453, %2455
  %2457 = add nuw nsw i32 %2456, %2453
  %2458 = icmp eq i32 %2457, 2
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %38, align 1
  %2460 = sext i32 %2437 to i64
  store i64 %2460, i64* %R8.i1310, align 8
  %2461 = shl nsw i64 %2460, 3
  %2462 = add i64 %2432, %2461
  %2463 = add i64 %2429, 17
  store i64 %2463, i64* %3, align 8
  %2464 = inttoptr i64 %2462 to i64*
  %2465 = load i64, i64* %2464, align 8
  store i64 %2465, i64* %RCX.i1291, align 8
  %2466 = add i64 %2427, -80
  %2467 = add i64 %2429, 21
  store i64 %2467, i64* %3, align 8
  %2468 = inttoptr i64 %2466 to i32*
  %2469 = load i32, i32* %2468, align 4
  %2470 = sext i32 %2469 to i64
  store i64 %2470, i64* %R8.i1310, align 8
  %2471 = shl nsw i64 %2470, 2
  %2472 = add i64 %2471, %2465
  %2473 = add i64 %2429, 25
  store i64 %2473, i64* %3, align 8
  %2474 = inttoptr i64 %2472 to i32*
  %2475 = load i32, i32* %2474, align 4
  %2476 = zext i32 %2475 to i64
  store i64 %2476, i64* %RAX.i1312, align 8
  %2477 = add i64 %2427, -24
  %2478 = add i64 %2429, 29
  store i64 %2478, i64* %3, align 8
  %2479 = inttoptr i64 %2477 to i64*
  %2480 = load i64, i64* %2479, align 8
  store i64 %2480, i64* %RCX.i1291, align 8
  %2481 = add i64 %2480, 312
  %2482 = add i64 %2429, 36
  store i64 %2482, i64* %3, align 8
  %2483 = inttoptr i64 %2481 to i64*
  %2484 = load i64, i64* %2483, align 8
  store i64 %2484, i64* %RCX.i1291, align 8
  %2485 = add i64 %2484, 32
  %2486 = add i64 %2429, 40
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2485 to i64*
  %2488 = load i64, i64* %2487, align 8
  store i64 %2488, i64* %RCX.i1291, align 8
  %2489 = add i64 %2429, 44
  store i64 %2489, i64* %3, align 8
  %2490 = load i32, i32* %2468, align 4
  %2491 = sext i32 %2490 to i64
  store i64 %2491, i64* %R8.i1310, align 8
  %2492 = shl nsw i64 %2491, 2
  %2493 = add i64 %2488, %2492
  %2494 = add i64 %2429, 48
  store i64 %2494, i64* %3, align 8
  %2495 = inttoptr i64 %2493 to i32*
  %2496 = load i32, i32* %2495, align 4
  %2497 = add i32 %2496, %2475
  %2498 = zext i32 %2497 to i64
  store i64 %2498, i64* %RAX.i1312, align 8
  %2499 = icmp ult i32 %2497, %2475
  %2500 = icmp ult i32 %2497, %2496
  %2501 = or i1 %2499, %2500
  %2502 = zext i1 %2501 to i8
  store i8 %2502, i8* %14, align 1
  %2503 = and i32 %2497, 255
  %2504 = tail call i32 @llvm.ctpop.i32(i32 %2503)
  %2505 = trunc i32 %2504 to i8
  %2506 = and i8 %2505, 1
  %2507 = xor i8 %2506, 1
  store i8 %2507, i8* %21, align 1
  %2508 = xor i32 %2496, %2475
  %2509 = xor i32 %2508, %2497
  %2510 = lshr i32 %2509, 4
  %2511 = trunc i32 %2510 to i8
  %2512 = and i8 %2511, 1
  store i8 %2512, i8* %26, align 1
  %2513 = icmp eq i32 %2497, 0
  %2514 = zext i1 %2513 to i8
  store i8 %2514, i8* %29, align 1
  %2515 = lshr i32 %2497, 31
  %2516 = trunc i32 %2515 to i8
  store i8 %2516, i8* %32, align 1
  %2517 = lshr i32 %2475, 31
  %2518 = lshr i32 %2496, 31
  %2519 = xor i32 %2515, %2517
  %2520 = xor i32 %2515, %2518
  %2521 = add nuw nsw i32 %2519, %2520
  %2522 = icmp eq i32 %2521, 2
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %38, align 1
  %2524 = load i64, i64* %RBP.i, align 8
  %2525 = add i64 %2524, -56
  %2526 = add i64 %2429, 52
  store i64 %2526, i64* %3, align 8
  %2527 = inttoptr i64 %2525 to i64*
  %2528 = load i64, i64* %2527, align 8
  store i64 %2528, i64* %RCX.i1291, align 8
  %2529 = add i64 %2524, -76
  %2530 = add i64 %2429, 55
  store i64 %2530, i64* %3, align 8
  %2531 = inttoptr i64 %2529 to i32*
  %2532 = load i32, i32* %2531, align 4
  %2533 = add i32 %2532, 1
  %2534 = zext i32 %2533 to i64
  store i64 %2534, i64* %RDX.i1294, align 8
  %2535 = icmp eq i32 %2532, -1
  %2536 = icmp eq i32 %2533, 0
  %2537 = or i1 %2535, %2536
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %14, align 1
  %2539 = and i32 %2533, 255
  %2540 = tail call i32 @llvm.ctpop.i32(i32 %2539)
  %2541 = trunc i32 %2540 to i8
  %2542 = and i8 %2541, 1
  %2543 = xor i8 %2542, 1
  store i8 %2543, i8* %21, align 1
  %2544 = xor i32 %2533, %2532
  %2545 = lshr i32 %2544, 4
  %2546 = trunc i32 %2545 to i8
  %2547 = and i8 %2546, 1
  store i8 %2547, i8* %26, align 1
  %2548 = zext i1 %2536 to i8
  store i8 %2548, i8* %29, align 1
  %2549 = lshr i32 %2533, 31
  %2550 = trunc i32 %2549 to i8
  store i8 %2550, i8* %32, align 1
  %2551 = lshr i32 %2532, 31
  %2552 = xor i32 %2549, %2551
  %2553 = add nuw nsw i32 %2552, %2549
  %2554 = icmp eq i32 %2553, 2
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %38, align 1
  %2556 = sext i32 %2533 to i64
  store i64 %2556, i64* %R8.i1310, align 8
  %2557 = shl nsw i64 %2556, 3
  %2558 = add i64 %2528, %2557
  %2559 = add i64 %2429, 65
  store i64 %2559, i64* %3, align 8
  %2560 = inttoptr i64 %2558 to i64*
  %2561 = load i64, i64* %2560, align 8
  store i64 %2561, i64* %RCX.i1291, align 8
  %2562 = add i64 %2524, -80
  %2563 = add i64 %2429, 68
  store i64 %2563, i64* %3, align 8
  %2564 = inttoptr i64 %2562 to i32*
  %2565 = load i32, i32* %2564, align 4
  %2566 = add i32 %2565, 1
  %2567 = zext i32 %2566 to i64
  store i64 %2567, i64* %RDX.i1294, align 8
  %2568 = icmp eq i32 %2565, -1
  %2569 = icmp eq i32 %2566, 0
  %2570 = or i1 %2568, %2569
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %14, align 1
  %2572 = and i32 %2566, 255
  %2573 = tail call i32 @llvm.ctpop.i32(i32 %2572)
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  %2576 = xor i8 %2575, 1
  store i8 %2576, i8* %21, align 1
  %2577 = xor i32 %2566, %2565
  %2578 = lshr i32 %2577, 4
  %2579 = trunc i32 %2578 to i8
  %2580 = and i8 %2579, 1
  store i8 %2580, i8* %26, align 1
  %2581 = zext i1 %2569 to i8
  store i8 %2581, i8* %29, align 1
  %2582 = lshr i32 %2566, 31
  %2583 = trunc i32 %2582 to i8
  store i8 %2583, i8* %32, align 1
  %2584 = lshr i32 %2565, 31
  %2585 = xor i32 %2582, %2584
  %2586 = add nuw nsw i32 %2585, %2582
  %2587 = icmp eq i32 %2586, 2
  %2588 = zext i1 %2587 to i8
  store i8 %2588, i8* %38, align 1
  %2589 = sext i32 %2566 to i64
  store i64 %2589, i64* %R8.i1310, align 8
  %2590 = shl nsw i64 %2589, 2
  %2591 = add i64 %2561, %2590
  %2592 = add i64 %2429, 78
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i32*
  %2594 = load i32, i32* %2593, align 4
  %2595 = zext i32 %2594 to i64
  store i64 %2595, i64* %RDX.i1294, align 8
  %2596 = load i64, i64* %RBP.i, align 8
  %2597 = add i64 %2596, -24
  %2598 = add i64 %2429, 82
  store i64 %2598, i64* %3, align 8
  %2599 = inttoptr i64 %2597 to i64*
  %2600 = load i64, i64* %2599, align 8
  store i64 %2600, i64* %RCX.i1291, align 8
  %2601 = add i64 %2600, 312
  %2602 = add i64 %2429, 89
  store i64 %2602, i64* %3, align 8
  %2603 = inttoptr i64 %2601 to i64*
  %2604 = load i64, i64* %2603, align 8
  store i64 %2604, i64* %RCX.i1291, align 8
  %2605 = add i64 %2604, 24
  %2606 = add i64 %2429, 93
  store i64 %2606, i64* %3, align 8
  %2607 = inttoptr i64 %2605 to i64*
  %2608 = load i64, i64* %2607, align 8
  store i64 %2608, i64* %RCX.i1291, align 8
  %2609 = add i64 %2596, -80
  %2610 = add i64 %2429, 97
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to i32*
  %2612 = load i32, i32* %2611, align 4
  %2613 = sext i32 %2612 to i64
  store i64 %2613, i64* %R8.i1310, align 8
  %2614 = shl nsw i64 %2613, 2
  %2615 = add i64 %2608, %2614
  %2616 = add i64 %2429, 101
  store i64 %2616, i64* %3, align 8
  %2617 = inttoptr i64 %2615 to i32*
  %2618 = load i32, i32* %2617, align 4
  %2619 = add i32 %2618, %2594
  %2620 = zext i32 %2619 to i64
  store i64 %2620, i64* %RDX.i1294, align 8
  %2621 = icmp ult i32 %2619, %2594
  %2622 = icmp ult i32 %2619, %2618
  %2623 = or i1 %2621, %2622
  %2624 = zext i1 %2623 to i8
  store i8 %2624, i8* %14, align 1
  %2625 = and i32 %2619, 255
  %2626 = tail call i32 @llvm.ctpop.i32(i32 %2625)
  %2627 = trunc i32 %2626 to i8
  %2628 = and i8 %2627, 1
  %2629 = xor i8 %2628, 1
  store i8 %2629, i8* %21, align 1
  %2630 = xor i32 %2618, %2594
  %2631 = xor i32 %2630, %2619
  %2632 = lshr i32 %2631, 4
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  store i8 %2634, i8* %26, align 1
  %2635 = icmp eq i32 %2619, 0
  %2636 = zext i1 %2635 to i8
  store i8 %2636, i8* %29, align 1
  %2637 = lshr i32 %2619, 31
  %2638 = trunc i32 %2637 to i8
  store i8 %2638, i8* %32, align 1
  %2639 = lshr i32 %2594, 31
  %2640 = lshr i32 %2618, 31
  %2641 = xor i32 %2637, %2639
  %2642 = xor i32 %2637, %2640
  %2643 = add nuw nsw i32 %2641, %2642
  %2644 = icmp eq i32 %2643, 2
  %2645 = zext i1 %2644 to i8
  store i8 %2645, i8* %38, align 1
  %2646 = load i32, i32* %EAX.i1041, align 4
  %2647 = zext i32 %2646 to i64
  store i64 %2647, i64* %RDI.i1300, align 8
  store i64 %2620, i64* %RSI.i1288, align 8
  %2648 = add i64 %2429, -56421
  %2649 = add i64 %2429, 110
  %2650 = load i64, i64* %6, align 8
  %2651 = add i64 %2650, -8
  %2652 = inttoptr i64 %2651 to i64*
  store i64 %2649, i64* %2652, align 8
  store i64 %2651, i64* %6, align 8
  store i64 %2648, i64* %3, align 8
  %call2_435e7e = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %2648, %struct.Memory* %call2_4358a9)
  %2653 = load i64, i64* %RBP.i, align 8
  %2654 = add i64 %2653, -64
  %2655 = load i64, i64* %3, align 8
  %2656 = add i64 %2655, 4
  store i64 %2656, i64* %3, align 8
  %2657 = inttoptr i64 %2654 to i64*
  %2658 = load i64, i64* %2657, align 8
  store i64 %2658, i64* %RCX.i1291, align 8
  %2659 = add i64 %2653, -76
  %2660 = add i64 %2655, 8
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2659 to i32*
  %2662 = load i32, i32* %2661, align 4
  %2663 = sext i32 %2662 to i64
  store i64 %2663, i64* %R8.i1310, align 8
  %2664 = shl nsw i64 %2663, 3
  %2665 = add i64 %2664, %2658
  %2666 = add i64 %2655, 12
  store i64 %2666, i64* %3, align 8
  %2667 = inttoptr i64 %2665 to i64*
  %2668 = load i64, i64* %2667, align 8
  store i64 %2668, i64* %RCX.i1291, align 8
  %2669 = add i64 %2653, -80
  %2670 = add i64 %2655, 16
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2669 to i32*
  %2672 = load i32, i32* %2671, align 4
  %2673 = sext i32 %2672 to i64
  store i64 %2673, i64* %R8.i1310, align 8
  %2674 = shl nsw i64 %2673, 2
  %2675 = add i64 %2674, %2668
  %2676 = load i32, i32* %EAX.i1041, align 4
  %2677 = add i64 %2655, 20
  store i64 %2677, i64* %3, align 8
  %2678 = inttoptr i64 %2675 to i32*
  store i32 %2676, i32* %2678, align 4
  %2679 = load i64, i64* %RBP.i, align 8
  %2680 = add i64 %2679, -24
  %2681 = load i64, i64* %3, align 8
  %2682 = add i64 %2681, 4
  store i64 %2682, i64* %3, align 8
  %2683 = inttoptr i64 %2680 to i64*
  %2684 = load i64, i64* %2683, align 8
  store i64 %2684, i64* %RCX.i1291, align 8
  %2685 = add i64 %2684, 328
  %2686 = add i64 %2681, 11
  store i64 %2686, i64* %3, align 8
  %2687 = inttoptr i64 %2685 to i64*
  %2688 = load i64, i64* %2687, align 8
  store i64 %2688, i64* %RCX.i1291, align 8
  %2689 = add i64 %2679, -8
  %2690 = add i64 %2681, 15
  store i64 %2690, i64* %3, align 8
  %2691 = inttoptr i64 %2689 to i64*
  %2692 = load i64, i64* %2691, align 8
  store i64 %2692, i64* %R8.i1310, align 8
  %2693 = add i64 %2679, -76
  %2694 = add i64 %2681, 19
  store i64 %2694, i64* %3, align 8
  %2695 = inttoptr i64 %2693 to i32*
  %2696 = load i32, i32* %2695, align 4
  %2697 = sext i32 %2696 to i64
  store i64 %2697, i64* %R9.i1307, align 8
  %2698 = add i64 %2692, %2697
  %2699 = add i64 %2681, 24
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to i8*
  %2701 = load i8, i8* %2700, align 1
  %2702 = sext i8 %2701 to i64
  %2703 = and i64 %2702, 4294967295
  store i64 %2703, i64* %RAX.i1312, align 8
  %2704 = sext i8 %2701 to i64
  store i64 %2704, i64* %R8.i1310, align 8
  %2705 = shl nsw i64 %2704, 3
  %2706 = add i64 %2688, %2705
  %2707 = add i64 %2681, 31
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i64*
  %2709 = load i64, i64* %2708, align 8
  store i64 %2709, i64* %RCX.i1291, align 8
  %2710 = add i64 %2679, -80
  %2711 = add i64 %2681, 35
  store i64 %2711, i64* %3, align 8
  %2712 = inttoptr i64 %2710 to i32*
  %2713 = load i32, i32* %2712, align 4
  %2714 = sext i32 %2713 to i64
  store i64 %2714, i64* %R8.i1310, align 8
  %2715 = shl nsw i64 %2714, 2
  %2716 = add i64 %2715, %2709
  %2717 = add i64 %2681, 39
  store i64 %2717, i64* %3, align 8
  %2718 = inttoptr i64 %2716 to i32*
  %2719 = load i32, i32* %2718, align 4
  %2720 = zext i32 %2719 to i64
  store i64 %2720, i64* %RAX.i1312, align 8
  %2721 = add i64 %2679, -64
  %2722 = add i64 %2681, 43
  store i64 %2722, i64* %3, align 8
  %2723 = inttoptr i64 %2721 to i64*
  %2724 = load i64, i64* %2723, align 8
  store i64 %2724, i64* %RCX.i1291, align 8
  %2725 = add i64 %2681, 47
  store i64 %2725, i64* %3, align 8
  %2726 = load i32, i32* %2695, align 4
  %2727 = sext i32 %2726 to i64
  store i64 %2727, i64* %R8.i1310, align 8
  %2728 = shl nsw i64 %2727, 3
  %2729 = add i64 %2728, %2724
  %2730 = add i64 %2681, 51
  store i64 %2730, i64* %3, align 8
  %2731 = inttoptr i64 %2729 to i64*
  %2732 = load i64, i64* %2731, align 8
  store i64 %2732, i64* %RCX.i1291, align 8
  %2733 = add i64 %2681, 55
  store i64 %2733, i64* %3, align 8
  %2734 = load i32, i32* %2712, align 4
  %2735 = sext i32 %2734 to i64
  store i64 %2735, i64* %R8.i1310, align 8
  %2736 = shl nsw i64 %2735, 2
  %2737 = add i64 %2732, %2736
  %2738 = add i64 %2681, 59
  store i64 %2738, i64* %3, align 8
  %2739 = inttoptr i64 %2737 to i32*
  %2740 = load i32, i32* %2739, align 4
  %2741 = add i32 %2740, %2719
  %2742 = zext i32 %2741 to i64
  store i64 %2742, i64* %RAX.i1312, align 8
  %2743 = icmp ult i32 %2741, %2719
  %2744 = icmp ult i32 %2741, %2740
  %2745 = or i1 %2743, %2744
  %2746 = zext i1 %2745 to i8
  store i8 %2746, i8* %14, align 1
  %2747 = and i32 %2741, 255
  %2748 = tail call i32 @llvm.ctpop.i32(i32 %2747)
  %2749 = trunc i32 %2748 to i8
  %2750 = and i8 %2749, 1
  %2751 = xor i8 %2750, 1
  store i8 %2751, i8* %21, align 1
  %2752 = xor i32 %2740, %2719
  %2753 = xor i32 %2752, %2741
  %2754 = lshr i32 %2753, 4
  %2755 = trunc i32 %2754 to i8
  %2756 = and i8 %2755, 1
  store i8 %2756, i8* %26, align 1
  %2757 = icmp eq i32 %2741, 0
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %29, align 1
  %2759 = lshr i32 %2741, 31
  %2760 = trunc i32 %2759 to i8
  store i8 %2760, i8* %32, align 1
  %2761 = lshr i32 %2719, 31
  %2762 = lshr i32 %2740, 31
  %2763 = xor i32 %2759, %2761
  %2764 = xor i32 %2759, %2762
  %2765 = add nuw nsw i32 %2763, %2764
  %2766 = icmp eq i32 %2765, 2
  %2767 = zext i1 %2766 to i8
  store i8 %2767, i8* %38, align 1
  %2768 = add i64 %2681, 63
  store i64 %2768, i64* %3, align 8
  store i32 %2741, i32* %2739, align 4
  %2769 = load i64, i64* %RBP.i, align 8
  %2770 = add i64 %2769, -72
  %2771 = load i64, i64* %3, align 8
  %2772 = add i64 %2771, 4
  store i64 %2772, i64* %3, align 8
  %2773 = inttoptr i64 %2770 to i64*
  %2774 = load i64, i64* %2773, align 8
  store i64 %2774, i64* %RCX.i1291, align 8
  %2775 = add i64 %2769, -76
  %2776 = add i64 %2771, 8
  store i64 %2776, i64* %3, align 8
  %2777 = inttoptr i64 %2775 to i32*
  %2778 = load i32, i32* %2777, align 4
  %2779 = sext i32 %2778 to i64
  store i64 %2779, i64* %R8.i1310, align 8
  %2780 = shl nsw i64 %2779, 3
  %2781 = add i64 %2780, %2774
  %2782 = add i64 %2771, 12
  store i64 %2782, i64* %3, align 8
  %2783 = inttoptr i64 %2781 to i64*
  %2784 = load i64, i64* %2783, align 8
  store i64 %2784, i64* %RCX.i1291, align 8
  %2785 = add i64 %2769, -80
  %2786 = add i64 %2771, 15
  store i64 %2786, i64* %3, align 8
  %2787 = inttoptr i64 %2785 to i32*
  %2788 = load i32, i32* %2787, align 4
  %2789 = add i32 %2788, 1
  %2790 = zext i32 %2789 to i64
  store i64 %2790, i64* %RAX.i1312, align 8
  %2791 = icmp eq i32 %2788, -1
  %2792 = icmp eq i32 %2789, 0
  %2793 = or i1 %2791, %2792
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %14, align 1
  %2795 = and i32 %2789, 255
  %2796 = tail call i32 @llvm.ctpop.i32(i32 %2795)
  %2797 = trunc i32 %2796 to i8
  %2798 = and i8 %2797, 1
  %2799 = xor i8 %2798, 1
  store i8 %2799, i8* %21, align 1
  %2800 = xor i32 %2789, %2788
  %2801 = lshr i32 %2800, 4
  %2802 = trunc i32 %2801 to i8
  %2803 = and i8 %2802, 1
  store i8 %2803, i8* %26, align 1
  %2804 = zext i1 %2792 to i8
  store i8 %2804, i8* %29, align 1
  %2805 = lshr i32 %2789, 31
  %2806 = trunc i32 %2805 to i8
  store i8 %2806, i8* %32, align 1
  %2807 = lshr i32 %2788, 31
  %2808 = xor i32 %2805, %2807
  %2809 = add nuw nsw i32 %2808, %2805
  %2810 = icmp eq i32 %2809, 2
  %2811 = zext i1 %2810 to i8
  store i8 %2811, i8* %38, align 1
  %2812 = sext i32 %2789 to i64
  store i64 %2812, i64* %R8.i1310, align 8
  %2813 = shl nsw i64 %2812, 2
  %2814 = add i64 %2784, %2813
  %2815 = add i64 %2771, 25
  store i64 %2815, i64* %3, align 8
  %2816 = inttoptr i64 %2814 to i32*
  %2817 = load i32, i32* %2816, align 4
  %2818 = zext i32 %2817 to i64
  store i64 %2818, i64* %RAX.i1312, align 8
  %2819 = add i64 %2769, -24
  %2820 = add i64 %2771, 29
  store i64 %2820, i64* %3, align 8
  %2821 = inttoptr i64 %2819 to i64*
  %2822 = load i64, i64* %2821, align 8
  store i64 %2822, i64* %RCX.i1291, align 8
  %2823 = add i64 %2822, 312
  %2824 = add i64 %2771, 36
  store i64 %2824, i64* %3, align 8
  %2825 = inttoptr i64 %2823 to i64*
  %2826 = load i64, i64* %2825, align 8
  store i64 %2826, i64* %RCX.i1291, align 8
  %2827 = add i64 %2826, 48
  %2828 = add i64 %2771, 40
  store i64 %2828, i64* %3, align 8
  %2829 = inttoptr i64 %2827 to i64*
  %2830 = load i64, i64* %2829, align 8
  store i64 %2830, i64* %RCX.i1291, align 8
  %2831 = add i64 %2771, 44
  store i64 %2831, i64* %3, align 8
  %2832 = load i32, i32* %2787, align 4
  %2833 = sext i32 %2832 to i64
  store i64 %2833, i64* %R8.i1310, align 8
  %2834 = shl nsw i64 %2833, 2
  %2835 = add i64 %2830, %2834
  %2836 = add i64 %2771, 48
  store i64 %2836, i64* %3, align 8
  %2837 = inttoptr i64 %2835 to i32*
  %2838 = load i32, i32* %2837, align 4
  %2839 = add i32 %2838, %2817
  %2840 = zext i32 %2839 to i64
  store i64 %2840, i64* %RAX.i1312, align 8
  %2841 = icmp ult i32 %2839, %2817
  %2842 = icmp ult i32 %2839, %2838
  %2843 = or i1 %2841, %2842
  %2844 = zext i1 %2843 to i8
  store i8 %2844, i8* %14, align 1
  %2845 = and i32 %2839, 255
  %2846 = tail call i32 @llvm.ctpop.i32(i32 %2845)
  %2847 = trunc i32 %2846 to i8
  %2848 = and i8 %2847, 1
  %2849 = xor i8 %2848, 1
  store i8 %2849, i8* %21, align 1
  %2850 = xor i32 %2838, %2817
  %2851 = xor i32 %2850, %2839
  %2852 = lshr i32 %2851, 4
  %2853 = trunc i32 %2852 to i8
  %2854 = and i8 %2853, 1
  store i8 %2854, i8* %26, align 1
  %2855 = icmp eq i32 %2839, 0
  %2856 = zext i1 %2855 to i8
  store i8 %2856, i8* %29, align 1
  %2857 = lshr i32 %2839, 31
  %2858 = trunc i32 %2857 to i8
  store i8 %2858, i8* %32, align 1
  %2859 = lshr i32 %2817, 31
  %2860 = lshr i32 %2838, 31
  %2861 = xor i32 %2857, %2859
  %2862 = xor i32 %2857, %2860
  %2863 = add nuw nsw i32 %2861, %2862
  %2864 = icmp eq i32 %2863, 2
  %2865 = zext i1 %2864 to i8
  store i8 %2865, i8* %38, align 1
  %2866 = load i64, i64* %RBP.i, align 8
  %2867 = add i64 %2866, -56
  %2868 = add i64 %2771, 52
  store i64 %2868, i64* %3, align 8
  %2869 = inttoptr i64 %2867 to i64*
  %2870 = load i64, i64* %2869, align 8
  store i64 %2870, i64* %RCX.i1291, align 8
  %2871 = add i64 %2866, -76
  %2872 = add i64 %2771, 55
  store i64 %2872, i64* %3, align 8
  %2873 = inttoptr i64 %2871 to i32*
  %2874 = load i32, i32* %2873, align 4
  %2875 = add i32 %2874, 1
  %2876 = zext i32 %2875 to i64
  store i64 %2876, i64* %RDX.i1294, align 8
  %2877 = icmp eq i32 %2874, -1
  %2878 = icmp eq i32 %2875, 0
  %2879 = or i1 %2877, %2878
  %2880 = zext i1 %2879 to i8
  store i8 %2880, i8* %14, align 1
  %2881 = and i32 %2875, 255
  %2882 = tail call i32 @llvm.ctpop.i32(i32 %2881)
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  %2885 = xor i8 %2884, 1
  store i8 %2885, i8* %21, align 1
  %2886 = xor i32 %2875, %2874
  %2887 = lshr i32 %2886, 4
  %2888 = trunc i32 %2887 to i8
  %2889 = and i8 %2888, 1
  store i8 %2889, i8* %26, align 1
  %2890 = zext i1 %2878 to i8
  store i8 %2890, i8* %29, align 1
  %2891 = lshr i32 %2875, 31
  %2892 = trunc i32 %2891 to i8
  store i8 %2892, i8* %32, align 1
  %2893 = lshr i32 %2874, 31
  %2894 = xor i32 %2891, %2893
  %2895 = add nuw nsw i32 %2894, %2891
  %2896 = icmp eq i32 %2895, 2
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %38, align 1
  %2898 = sext i32 %2875 to i64
  store i64 %2898, i64* %R8.i1310, align 8
  %2899 = shl nsw i64 %2898, 3
  %2900 = add i64 %2870, %2899
  %2901 = add i64 %2771, 65
  store i64 %2901, i64* %3, align 8
  %2902 = inttoptr i64 %2900 to i64*
  %2903 = load i64, i64* %2902, align 8
  store i64 %2903, i64* %RCX.i1291, align 8
  %2904 = add i64 %2866, -80
  %2905 = add i64 %2771, 68
  store i64 %2905, i64* %3, align 8
  %2906 = inttoptr i64 %2904 to i32*
  %2907 = load i32, i32* %2906, align 4
  %2908 = add i32 %2907, 1
  %2909 = zext i32 %2908 to i64
  store i64 %2909, i64* %RDX.i1294, align 8
  %2910 = icmp eq i32 %2907, -1
  %2911 = icmp eq i32 %2908, 0
  %2912 = or i1 %2910, %2911
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %14, align 1
  %2914 = and i32 %2908, 255
  %2915 = tail call i32 @llvm.ctpop.i32(i32 %2914)
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = xor i8 %2917, 1
  store i8 %2918, i8* %21, align 1
  %2919 = xor i32 %2908, %2907
  %2920 = lshr i32 %2919, 4
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  store i8 %2922, i8* %26, align 1
  %2923 = zext i1 %2911 to i8
  store i8 %2923, i8* %29, align 1
  %2924 = lshr i32 %2908, 31
  %2925 = trunc i32 %2924 to i8
  store i8 %2925, i8* %32, align 1
  %2926 = lshr i32 %2907, 31
  %2927 = xor i32 %2924, %2926
  %2928 = add nuw nsw i32 %2927, %2924
  %2929 = icmp eq i32 %2928, 2
  %2930 = zext i1 %2929 to i8
  store i8 %2930, i8* %38, align 1
  %2931 = sext i32 %2908 to i64
  store i64 %2931, i64* %R8.i1310, align 8
  %2932 = shl nsw i64 %2931, 2
  %2933 = add i64 %2903, %2932
  %2934 = add i64 %2771, 78
  store i64 %2934, i64* %3, align 8
  %2935 = inttoptr i64 %2933 to i32*
  %2936 = load i32, i32* %2935, align 4
  %2937 = zext i32 %2936 to i64
  store i64 %2937, i64* %RDX.i1294, align 8
  %2938 = load i64, i64* %RBP.i, align 8
  %2939 = add i64 %2938, -24
  %2940 = add i64 %2771, 82
  store i64 %2940, i64* %3, align 8
  %2941 = inttoptr i64 %2939 to i64*
  %2942 = load i64, i64* %2941, align 8
  store i64 %2942, i64* %RCX.i1291, align 8
  %2943 = add i64 %2942, 312
  %2944 = add i64 %2771, 89
  store i64 %2944, i64* %3, align 8
  %2945 = inttoptr i64 %2943 to i64*
  %2946 = load i64, i64* %2945, align 8
  store i64 %2946, i64* %RCX.i1291, align 8
  %2947 = add i64 %2946, 40
  %2948 = add i64 %2771, 93
  store i64 %2948, i64* %3, align 8
  %2949 = inttoptr i64 %2947 to i64*
  %2950 = load i64, i64* %2949, align 8
  store i64 %2950, i64* %RCX.i1291, align 8
  %2951 = add i64 %2938, -80
  %2952 = add i64 %2771, 97
  store i64 %2952, i64* %3, align 8
  %2953 = inttoptr i64 %2951 to i32*
  %2954 = load i32, i32* %2953, align 4
  %2955 = sext i32 %2954 to i64
  store i64 %2955, i64* %R8.i1310, align 8
  %2956 = shl nsw i64 %2955, 2
  %2957 = add i64 %2950, %2956
  %2958 = add i64 %2771, 101
  store i64 %2958, i64* %3, align 8
  %2959 = inttoptr i64 %2957 to i32*
  %2960 = load i32, i32* %2959, align 4
  %2961 = add i32 %2960, %2936
  %2962 = zext i32 %2961 to i64
  store i64 %2962, i64* %RDX.i1294, align 8
  %2963 = icmp ult i32 %2961, %2936
  %2964 = icmp ult i32 %2961, %2960
  %2965 = or i1 %2963, %2964
  %2966 = zext i1 %2965 to i8
  store i8 %2966, i8* %14, align 1
  %2967 = and i32 %2961, 255
  %2968 = tail call i32 @llvm.ctpop.i32(i32 %2967)
  %2969 = trunc i32 %2968 to i8
  %2970 = and i8 %2969, 1
  %2971 = xor i8 %2970, 1
  store i8 %2971, i8* %21, align 1
  %2972 = xor i32 %2960, %2936
  %2973 = xor i32 %2972, %2961
  %2974 = lshr i32 %2973, 4
  %2975 = trunc i32 %2974 to i8
  %2976 = and i8 %2975, 1
  store i8 %2976, i8* %26, align 1
  %2977 = icmp eq i32 %2961, 0
  %2978 = zext i1 %2977 to i8
  store i8 %2978, i8* %29, align 1
  %2979 = lshr i32 %2961, 31
  %2980 = trunc i32 %2979 to i8
  store i8 %2980, i8* %32, align 1
  %2981 = lshr i32 %2936, 31
  %2982 = lshr i32 %2960, 31
  %2983 = xor i32 %2979, %2981
  %2984 = xor i32 %2979, %2982
  %2985 = add nuw nsw i32 %2983, %2984
  %2986 = icmp eq i32 %2985, 2
  %2987 = zext i1 %2986 to i8
  store i8 %2987, i8* %38, align 1
  %2988 = load i32, i32* %EAX.i1041, align 4
  %2989 = zext i32 %2988 to i64
  store i64 %2989, i64* %RDI.i1300, align 8
  store i64 %2962, i64* %RSI.i1288, align 8
  %2990 = add i64 %2771, -56614
  %2991 = add i64 %2771, 110
  %2992 = load i64, i64* %6, align 8
  %2993 = add i64 %2992, -8
  %2994 = inttoptr i64 %2993 to i64*
  store i64 %2991, i64* %2994, align 8
  store i64 %2993, i64* %6, align 8
  store i64 %2990, i64* %3, align 8
  %call2_435f3f = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %2990, %struct.Memory* %call2_4358a9)
  %2995 = load i64, i64* %RBP.i, align 8
  %2996 = add i64 %2995, -72
  %2997 = load i64, i64* %3, align 8
  %2998 = add i64 %2997, 4
  store i64 %2998, i64* %3, align 8
  %2999 = inttoptr i64 %2996 to i64*
  %3000 = load i64, i64* %2999, align 8
  store i64 %3000, i64* %RCX.i1291, align 8
  %3001 = add i64 %2995, -76
  %3002 = add i64 %2997, 8
  store i64 %3002, i64* %3, align 8
  %3003 = inttoptr i64 %3001 to i32*
  %3004 = load i32, i32* %3003, align 4
  %3005 = sext i32 %3004 to i64
  store i64 %3005, i64* %R8.i1310, align 8
  %3006 = shl nsw i64 %3005, 3
  %3007 = add i64 %3006, %3000
  %3008 = add i64 %2997, 12
  store i64 %3008, i64* %3, align 8
  %3009 = inttoptr i64 %3007 to i64*
  %3010 = load i64, i64* %3009, align 8
  store i64 %3010, i64* %RCX.i1291, align 8
  %3011 = add i64 %2995, -80
  %3012 = add i64 %2997, 16
  store i64 %3012, i64* %3, align 8
  %3013 = inttoptr i64 %3011 to i32*
  %3014 = load i32, i32* %3013, align 4
  %3015 = sext i32 %3014 to i64
  store i64 %3015, i64* %R8.i1310, align 8
  %3016 = shl nsw i64 %3015, 2
  %3017 = add i64 %3016, %3010
  %3018 = load i32, i32* %EAX.i1041, align 4
  %3019 = add i64 %2997, 20
  store i64 %3019, i64* %3, align 8
  %3020 = inttoptr i64 %3017 to i32*
  store i32 %3018, i32* %3020, align 4
  %3021 = load i64, i64* %RBP.i, align 8
  %3022 = add i64 %3021, -80
  %3023 = load i64, i64* %3, align 8
  %3024 = add i64 %3023, 3
  store i64 %3024, i64* %3, align 8
  %3025 = inttoptr i64 %3022 to i32*
  %3026 = load i32, i32* %3025, align 4
  %3027 = add i32 %3026, -1
  %3028 = zext i32 %3027 to i64
  store i64 %3028, i64* %RAX.i1312, align 8
  %3029 = icmp ne i32 %3026, 0
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %14, align 1
  %3031 = and i32 %3027, 255
  %3032 = tail call i32 @llvm.ctpop.i32(i32 %3031)
  %3033 = trunc i32 %3032 to i8
  %3034 = and i8 %3033, 1
  %3035 = xor i8 %3034, 1
  store i8 %3035, i8* %21, align 1
  %3036 = xor i32 %3026, 16
  %3037 = xor i32 %3036, %3027
  %3038 = lshr i32 %3037, 4
  %3039 = trunc i32 %3038 to i8
  %3040 = and i8 %3039, 1
  store i8 %3040, i8* %26, align 1
  %3041 = icmp eq i32 %3027, 0
  %3042 = zext i1 %3041 to i8
  store i8 %3042, i8* %29, align 1
  %3043 = lshr i32 %3027, 31
  %3044 = trunc i32 %3043 to i8
  store i8 %3044, i8* %32, align 1
  %3045 = lshr i32 %3026, 31
  %3046 = xor i32 %3043, %3045
  %3047 = xor i32 %3043, 1
  %3048 = add nuw nsw i32 %3046, %3047
  %3049 = icmp eq i32 %3048, 2
  %3050 = zext i1 %3049 to i8
  store i8 %3050, i8* %38, align 1
  %3051 = add i64 %3023, 9
  store i64 %3051, i64* %3, align 8
  store i32 %3027, i32* %3025, align 4
  %3052 = load i64, i64* %3, align 8
  %3053 = add i64 %3052, -631
  store i64 %3053, i64* %3, align 8
  br label %block_.L_435cea

block_.L_435f66:                                  ; preds = %block_.L_435cea
  %3054 = add i64 %1905, 5
  store i64 %3054, i64* %3, align 8
  br label %block_.L_435f6b

block_.L_435f6b:                                  ; preds = %block_.L_435f66, %block_.L_435b60
  %3055 = phi i64 [ %1877, %block_.L_435f66 ], [ %1639, %block_.L_435b60 ]
  %3056 = phi i64 [ %3054, %block_.L_435f66 ], [ %1656, %block_.L_435b60 ]
  %3057 = add i64 %3055, -76
  %3058 = add i64 %3056, 8
  store i64 %3058, i64* %3, align 8
  %3059 = inttoptr i64 %3057 to i32*
  %3060 = load i32, i32* %3059, align 4
  %3061 = add i32 %3060, -1
  %3062 = zext i32 %3061 to i64
  store i64 %3062, i64* %RAX.i1312, align 8
  %3063 = icmp ne i32 %3060, 0
  %3064 = zext i1 %3063 to i8
  store i8 %3064, i8* %14, align 1
  %3065 = and i32 %3061, 255
  %3066 = tail call i32 @llvm.ctpop.i32(i32 %3065)
  %3067 = trunc i32 %3066 to i8
  %3068 = and i8 %3067, 1
  %3069 = xor i8 %3068, 1
  store i8 %3069, i8* %21, align 1
  %3070 = xor i32 %3060, 16
  %3071 = xor i32 %3070, %3061
  %3072 = lshr i32 %3071, 4
  %3073 = trunc i32 %3072 to i8
  %3074 = and i8 %3073, 1
  store i8 %3074, i8* %26, align 1
  %3075 = icmp eq i32 %3061, 0
  %3076 = zext i1 %3075 to i8
  store i8 %3076, i8* %29, align 1
  %3077 = lshr i32 %3061, 31
  %3078 = trunc i32 %3077 to i8
  store i8 %3078, i8* %32, align 1
  %3079 = lshr i32 %3060, 31
  %3080 = xor i32 %3077, %3079
  %3081 = xor i32 %3077, 1
  %3082 = add nuw nsw i32 %3080, %3081
  %3083 = icmp eq i32 %3082, 2
  %3084 = zext i1 %3083 to i8
  store i8 %3084, i8* %38, align 1
  %3085 = add i64 %3056, 14
  store i64 %3085, i64* %3, align 8
  store i32 %3061, i32* %3059, align 4
  %3086 = load i64, i64* %3, align 8
  %3087 = add i64 %3086, -1335
  store i64 %3087, i64* %3, align 8
  br label %block_.L_435a42

block_.L_435f7e:                                  ; preds = %block_.L_435a42
  %3088 = inttoptr i64 %719 to i64*
  %3089 = load i64, i64* %3088, align 8
  store i64 %3089, i64* %RAX.i1312, align 8
  %3090 = add i64 %3089, 16
  %3091 = add i64 %715, 10
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to i32*
  %3093 = load i32, i32* %3092, align 4
  %3094 = zext i32 %3093 to i64
  store i64 %3094, i64* %RCX.i1291, align 8
  %3095 = add i64 %700, -84
  %3096 = add i64 %715, 13
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i32*
  store i32 %3093, i32* %3097, align 4
  %3098 = load i64, i64* %RBP.i, align 8
  %3099 = add i64 %3098, -32
  %3100 = load i64, i64* %3, align 8
  %3101 = add i64 %3100, 5
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3099 to i64*
  %3103 = load i64, i64* %3102, align 8
  store i8 0, i8* %14, align 1
  %3104 = trunc i64 %3103 to i32
  %3105 = and i32 %3104, 255
  %3106 = tail call i32 @llvm.ctpop.i32(i32 %3105)
  %3107 = trunc i32 %3106 to i8
  %3108 = and i8 %3107, 1
  %3109 = xor i8 %3108, 1
  store i8 %3109, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3110 = icmp eq i64 %3103, 0
  %3111 = zext i1 %3110 to i8
  store i8 %3111, i8* %29, align 1
  %3112 = lshr i64 %3103, 63
  %3113 = trunc i64 %3112 to i8
  store i8 %3113, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v19 = select i1 %3110, i64 27, i64 11
  %3114 = add i64 %3100, %.v19
  %3115 = add i64 %3098, -40
  %3116 = add i64 %3114, 4
  store i64 %3116, i64* %3, align 8
  %3117 = inttoptr i64 %3115 to i64*
  %3118 = load i64, i64* %3117, align 8
  br i1 %3110, label %block_.L_435fa6, label %block_435f96

block_435f96:                                     ; preds = %block_.L_435f7e
  store i64 %3118, i64* %RAX.i1312, align 8
  %3119 = add i64 %3114, 8
  store i64 %3119, i64* %3, align 8
  %3120 = load i64, i64* %3102, align 8
  store i64 %3120, i64* %RCX.i1291, align 8
  %3121 = add i64 %3114, 11
  store i64 %3121, i64* %3, align 8
  %3122 = inttoptr i64 %3120 to i64*
  store i64 %3118, i64* %3122, align 8
  %3123 = load i64, i64* %3, align 8
  %3124 = add i64 %3123, 14
  store i64 %3124, i64* %3, align 8
  br label %block_.L_435faf

block_.L_435fa6:                                  ; preds = %block_.L_435f7e
  store i64 %3118, i64* %RDI.i1300, align 8
  %3125 = add i64 %3114, -190054
  %3126 = add i64 %3114, 9
  %3127 = load i64, i64* %6, align 8
  %3128 = add i64 %3127, -8
  %3129 = inttoptr i64 %3128 to i64*
  store i64 %3126, i64* %3129, align 8
  store i64 %3128, i64* %6, align 8
  store i64 %3125, i64* %3, align 8
  %call2_435faa = tail call %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* nonnull %0, i64 %3125, %struct.Memory* %call2_4358a9)
  %.pre17 = load i64, i64* %3, align 8
  br label %block_.L_435faf

block_.L_435faf:                                  ; preds = %block_.L_435fa6, %block_435f96
  %3130 = phi i64 [ %.pre17, %block_.L_435fa6 ], [ %3124, %block_435f96 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_435faa, %block_.L_435fa6 ], [ %call2_4358a9, %block_435f96 ]
  %3131 = load i64, i64* %RBP.i, align 8
  %3132 = add i64 %3131, -84
  %3133 = add i64 %3130, 3
  store i64 %3133, i64* %3, align 8
  %3134 = inttoptr i64 %3132 to i32*
  %3135 = load i32, i32* %3134, align 4
  %3136 = zext i32 %3135 to i64
  store i64 %3136, i64* %RDI.i1300, align 8
  %3137 = add i64 %3130, -57535
  %3138 = add i64 %3130, 8
  %3139 = load i64, i64* %6, align 8
  %3140 = add i64 %3139, -8
  %3141 = inttoptr i64 %3140 to i64*
  store i64 %3138, i64* %3141, align 8
  store i64 %3140, i64* %6, align 8
  store i64 %3137, i64* %3, align 8
  %call2_435fb2 = tail call %struct.Memory* @sub_427ef0.Scorify(%struct.State* nonnull %0, i64 %3137, %struct.Memory* %MEMORY.5)
  %3142 = load i64, i64* %6, align 8
  %3143 = load i64, i64* %3, align 8
  %3144 = add i64 %3142, 96
  store i64 %3144, i64* %6, align 8
  %3145 = icmp ugt i64 %3142, -97
  %3146 = zext i1 %3145 to i8
  store i8 %3146, i8* %14, align 1
  %3147 = trunc i64 %3144 to i32
  %3148 = and i32 %3147, 255
  %3149 = tail call i32 @llvm.ctpop.i32(i32 %3148)
  %3150 = trunc i32 %3149 to i8
  %3151 = and i8 %3150, 1
  %3152 = xor i8 %3151, 1
  store i8 %3152, i8* %21, align 1
  %3153 = xor i64 %3144, %3142
  %3154 = lshr i64 %3153, 4
  %3155 = trunc i64 %3154 to i8
  %3156 = and i8 %3155, 1
  store i8 %3156, i8* %26, align 1
  %3157 = icmp eq i64 %3144, 0
  %3158 = zext i1 %3157 to i8
  store i8 %3158, i8* %29, align 1
  %3159 = lshr i64 %3144, 63
  %3160 = trunc i64 %3159 to i8
  store i8 %3160, i8* %32, align 1
  %3161 = lshr i64 %3142, 63
  %3162 = xor i64 %3159, %3161
  %3163 = add nuw nsw i64 %3162, %3159
  %3164 = icmp eq i64 %3163, 2
  %3165 = zext i1 %3164 to i8
  store i8 %3165, i8* %38, align 1
  %3166 = add i64 %3143, 5
  store i64 %3166, i64* %3, align 8
  %3167 = add i64 %3142, 104
  %3168 = inttoptr i64 %3144 to i64*
  %3169 = load i64, i64* %3168, align 8
  store i64 %3169, i64* %RBP.i, align 8
  store i64 %3167, i64* %6, align 8
  %3170 = add i64 %3143, 6
  store i64 %3170, i64* %3, align 8
  %3171 = inttoptr i64 %3167 to i64*
  %3172 = load i64, i64* %3171, align 8
  store i64 %3172, i64* %3, align 8
  %3173 = add i64 %3142, 112
  store i64 %3173, i64* %6, align 8
  ret %struct.Memory* %call2_435fb2
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
define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x38__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x40__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x48__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R10, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x88__rcx____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R11D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x160__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 352
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__esi__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_addl_0x158__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 344
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 -987654321, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_jl_.L_4359ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 -987654321, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_jmpq_.L_435938(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x88__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_jl_.L_435f7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x164__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 356
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
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
define %struct.Memory* @routine_movslq_0x88__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.ILogsum(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movl_0x88__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_jl_.L_435b60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_jmpq_.L_435afb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
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
define %struct.Memory* @routine_addl_0x168__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 360
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_addl_0x16c__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 364
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__edx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_addl_0x158__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 344
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_addl_0x15c__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 348
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl___rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x150__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 336
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movslq__edx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x154__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 340
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_jle_.L_435f6b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x88__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movsbl___rcx__rsi_1____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_435f66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl___rcx__r8_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rcx__r8_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx__r8_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rcx__r8_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx__r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x140__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___r8__r9_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %R9, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx__r8_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rcx__r8_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
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
define %struct.Memory* @routine_movq_0x20__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movq_0x148__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_435cea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_435f6b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_435f70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_435a42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_je_.L_435fa6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_435faf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Scorify(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
