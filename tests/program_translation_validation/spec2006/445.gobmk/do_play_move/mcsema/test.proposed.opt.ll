; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99da08_type = type <{ [4 x i8] }>
%G_0xa7f420_type = type <{ [8 x i8] }>
%G_0xb6eec4_type = type <{ [4 x i8] }>
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57c4d2_type = type <{ [8 x i8] }>
%G__0xa7f430_type = type <{ [8 x i8] }>
%G__0xafc500_type = type <{ [8 x i8] }>
%G__0xb89e60_type = type <{ [8 x i8] }>
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
@G_0xa7f420 = local_unnamed_addr global %G_0xa7f420_type zeroinitializer
@G_0xb6eec4 = local_unnamed_addr global %G_0xb6eec4_type zeroinitializer
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57c4d2 = global %G__0x57c4d2_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer
@G__0xafc500 = global %G__0xafc500_type zeroinitializer
@G__0xb89e60 = global %G__0xb89e60_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_40a360.do_remove_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a5e0.do_commit_suicide(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_428b70.hashdata_invert_stone(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a850.create_new_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b1b0.extend_neighbor_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c070.assimilate_neighbor_strings(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_428b10.hashdata_invert_ko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @do_play_move(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %RAX.i976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 3, i64* %RAX.i976, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 15
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i971 = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -8
  %48 = load i32, i32* %ESI.i971, align 4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %52 = load i64, i64* %RAX.i976, align 8
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -8
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %3, align 8
  %57 = trunc i64 %52 to i32
  %58 = inttoptr i64 %54 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = sub i32 %57, %59
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %RAX.i976, align 8
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
  store i8 %73, i8* %27, align 1
  %74 = icmp eq i32 %60, 0
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %30, align 1
  %76 = lshr i32 %60, 31
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %33, align 1
  %78 = lshr i32 %57, 31
  %79 = lshr i32 %59, 31
  %80 = xor i32 %79, %78
  %81 = xor i32 %76, %78
  %82 = add nuw nsw i32 %81, %80
  %83 = icmp eq i32 %82, 2
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %39, align 1
  %85 = add i64 %53, -12
  %86 = add i64 %55, 6
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %85 to i32*
  store i32 %60, i32* %87, align 4
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -16
  %90 = load i64, i64* %3, align 8
  %91 = add i64 %90, 7
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %89 to i32*
  store i32 0, i32* %92, align 4
  %93 = load i64, i64* %RBP.i, align 8
  %94 = add i64 %93, -20
  %95 = load i64, i64* %3, align 8
  %96 = add i64 %95, 7
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %94 to i32*
  store i32 0, i32* %97, align 4
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -24
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 7
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %99 to i32*
  store i32 0, i32* %102, align 4
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -28
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 7
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %104 to i32*
  store i32 -1, i32* %107, align 4
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -4
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 3
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %109 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, 20
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RAX.i976, align 8
  %116 = icmp ugt i32 %113, -21
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %14, align 1
  %118 = and i32 %114, 255
  %119 = tail call i32 @llvm.ctpop.i32(i32 %118)
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  store i8 %122, i8* %21, align 1
  %123 = xor i32 %113, 16
  %124 = xor i32 %123, %114
  %125 = lshr i32 %124, 4
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  store i8 %127, i8* %27, align 1
  %128 = icmp eq i32 %114, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %30, align 1
  %130 = lshr i32 %114, 31
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %33, align 1
  %132 = lshr i32 %113, 31
  %133 = xor i32 %130, %132
  %134 = add nuw nsw i32 %133, %130
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %39, align 1
  %137 = add i64 %108, -32
  %138 = add i64 %110, 9
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i32*
  store i32 %114, i32* %139, align 4
  %140 = load i64, i64* %RBP.i, align 8
  %141 = add i64 %140, -4
  %142 = load i64, i64* %3, align 8
  %143 = add i64 %142, 3
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %141 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = add i32 %145, -1
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RAX.i976, align 8
  %148 = icmp eq i32 %145, 0
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %14, align 1
  %150 = and i32 %146, 255
  %151 = tail call i32 @llvm.ctpop.i32(i32 %150)
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  %154 = xor i8 %153, 1
  store i8 %154, i8* %21, align 1
  %155 = xor i32 %146, %145
  %156 = lshr i32 %155, 4
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  store i8 %158, i8* %27, align 1
  %159 = icmp eq i32 %146, 0
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %30, align 1
  %161 = lshr i32 %146, 31
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %33, align 1
  %163 = lshr i32 %145, 31
  %164 = xor i32 %161, %163
  %165 = add nuw nsw i32 %164, %163
  %166 = icmp eq i32 %165, 2
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %39, align 1
  %168 = add i64 %140, -36
  %169 = add i64 %142, 9
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %168 to i32*
  store i32 %146, i32* %170, align 4
  %171 = load i64, i64* %RBP.i, align 8
  %172 = add i64 %171, -4
  %173 = load i64, i64* %3, align 8
  %174 = add i64 %173, 3
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %172 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = add i32 %176, -20
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RAX.i976, align 8
  %179 = icmp ult i32 %176, 20
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %14, align 1
  %181 = and i32 %177, 255
  %182 = tail call i32 @llvm.ctpop.i32(i32 %181)
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = xor i8 %184, 1
  store i8 %185, i8* %21, align 1
  %186 = xor i32 %176, 16
  %187 = xor i32 %186, %177
  %188 = lshr i32 %187, 4
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  store i8 %190, i8* %27, align 1
  %191 = icmp eq i32 %177, 0
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %30, align 1
  %193 = lshr i32 %177, 31
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %33, align 1
  %195 = lshr i32 %176, 31
  %196 = xor i32 %193, %195
  %197 = add nuw nsw i32 %196, %195
  %198 = icmp eq i32 %197, 2
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %39, align 1
  %200 = add i64 %171, -40
  %201 = add i64 %173, 9
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i32*
  store i32 %177, i32* %202, align 4
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -4
  %205 = load i64, i64* %3, align 8
  %206 = add i64 %205, 3
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %204 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = add i32 %208, 1
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RAX.i976, align 8
  %211 = icmp eq i32 %208, -1
  %212 = icmp eq i32 %209, 0
  %213 = or i1 %211, %212
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %14, align 1
  %215 = and i32 %209, 255
  %216 = tail call i32 @llvm.ctpop.i32(i32 %215)
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  %219 = xor i8 %218, 1
  store i8 %219, i8* %21, align 1
  %220 = xor i32 %209, %208
  %221 = lshr i32 %220, 4
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  store i8 %223, i8* %27, align 1
  %224 = zext i1 %212 to i8
  store i8 %224, i8* %30, align 1
  %225 = lshr i32 %209, 31
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %33, align 1
  %227 = lshr i32 %208, 31
  %228 = xor i32 %225, %227
  %229 = add nuw nsw i32 %228, %225
  %230 = icmp eq i32 %229, 2
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %39, align 1
  %232 = add i64 %203, -44
  %233 = add i64 %205, 9
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i32*
  store i32 %209, i32* %234, align 4
  %RCX.i922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %235 = load i64, i64* %RBP.i, align 8
  %236 = add i64 %235, -32
  %237 = load i64, i64* %3, align 8
  %238 = add i64 %237, 4
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %236 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  store i64 %241, i64* %RCX.i922, align 8
  %242 = add nsw i64 %241, 12099168
  %243 = add i64 %237, 12
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i8*
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i64
  store i64 %246, i64* %RAX.i976, align 8
  %247 = zext i8 %245 to i32
  %248 = add i64 %235, -12
  %249 = add i64 %237, 15
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = sub i32 %247, %251
  %253 = icmp ult i32 %247, %251
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %14, align 1
  %255 = and i32 %252, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %21, align 1
  %260 = xor i32 %251, %247
  %261 = xor i32 %260, %252
  %262 = lshr i32 %261, 4
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %27, align 1
  %265 = icmp eq i32 %252, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %30, align 1
  %267 = lshr i32 %252, 31
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %33, align 1
  %269 = lshr i32 %251, 31
  %270 = add nuw nsw i32 %267, %269
  %271 = icmp eq i32 %270, 2
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %39, align 1
  %.v77 = select i1 %265, i64 21, i64 85
  %273 = add i64 %237, %.v77
  store i64 %273, i64* %3, align 8
  br i1 %265, label %block_409a7e, label %block_.L_409abe

block_409a7e:                                     ; preds = %entry
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %274 = add i64 %273, 14
  store i64 %274, i64* %3, align 8
  %275 = load i32, i32* %239, align 4
  %276 = sext i32 %275 to i64
  store i64 %276, i64* %RCX.i922, align 8
  %277 = shl nsw i64 %276, 2
  %278 = add nsw i64 %277, 11187184
  %279 = add i64 %273, 22
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = mul nsw i64 %282, 744
  store i64 %283, i64* %RCX.i922, align 8
  %284 = lshr i64 %283, 63
  %285 = add i64 %283, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %285, i64* %RAX.i976, align 8
  %286 = icmp ult i64 %285, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %287 = icmp ult i64 %285, %283
  %288 = or i1 %286, %287
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %14, align 1
  %290 = trunc i64 %285 to i32
  %291 = and i32 %290, 248
  %292 = tail call i32 @llvm.ctpop.i32(i32 %291)
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  store i8 %295, i8* %21, align 1
  %296 = xor i64 %283, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %297 = xor i64 %296, %285
  %298 = lshr i64 %297, 4
  %299 = trunc i64 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %27, align 1
  %301 = icmp eq i64 %285, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %30, align 1
  %303 = lshr i64 %285, 63
  %304 = trunc i64 %303 to i8
  store i8 %304, i8* %33, align 1
  %305 = xor i64 %303, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %306 = xor i64 %303, %284
  %307 = add nuw nsw i64 %305, %306
  %308 = icmp eq i64 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %39, align 1
  %310 = add i64 %283, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %311 = add i64 %273, 36
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = add i32 %313, -1
  %315 = icmp eq i32 %313, 0
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %14, align 1
  %317 = and i32 %314, 255
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317)
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %21, align 1
  %322 = xor i32 %314, %313
  %323 = lshr i32 %322, 4
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  store i8 %325, i8* %27, align 1
  %326 = icmp eq i32 %314, 0
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %30, align 1
  %328 = lshr i32 %314, 31
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %33, align 1
  %330 = lshr i32 %313, 31
  %331 = xor i32 %328, %330
  %332 = add nuw nsw i32 %331, %330
  %333 = icmp eq i32 %332, 2
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %39, align 1
  %.v121 = select i1 %326, i64 42, i64 64
  %335 = add i64 %273, %.v121
  store i64 %335, i64* %3, align 8
  br i1 %326, label %block_409aa8, label %block_.L_409abe

block_409aa8:                                     ; preds = %block_409a7e
  %336 = load i64, i64* %RBP.i, align 8
  %337 = add i64 %336, -32
  %338 = add i64 %335, 4
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  store i64 %341, i64* %RAX.i976, align 8
  %RDI.i895 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %342 = shl nsw i64 %341, 2
  %343 = add nsw i64 %342, 11187184
  %344 = add i64 %335, 11
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = zext i32 %346 to i64
  store i64 %347, i64* %RDI.i895, align 8
  %348 = add i64 %335, 2232
  %349 = add i64 %335, 16
  %350 = load i64, i64* %6, align 8
  %351 = add i64 %350, -8
  %352 = inttoptr i64 %351 to i64*
  store i64 %349, i64* %352, align 8
  store i64 %351, i64* %6, align 8
  store i64 %348, i64* %3, align 8
  %call2_409ab3 = tail call %struct.Memory* @sub_40a360.do_remove_string(%struct.State* nonnull %0, i64 %348, %struct.Memory* %2)
  %353 = load i64, i64* %RAX.i976, align 8
  %354 = load i64, i64* %RBP.i, align 8
  %355 = add i64 %354, -16
  %356 = load i64, i64* %3, align 8
  %357 = add i64 %356, 3
  store i64 %357, i64* %3, align 8
  %358 = trunc i64 %353 to i32
  %359 = inttoptr i64 %355 to i32*
  %360 = load i32, i32* %359, align 4
  %361 = add i32 %360, %358
  %362 = zext i32 %361 to i64
  store i64 %362, i64* %RAX.i976, align 8
  %363 = icmp ult i32 %361, %358
  %364 = icmp ult i32 %361, %360
  %365 = or i1 %363, %364
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %14, align 1
  %367 = and i32 %361, 255
  %368 = tail call i32 @llvm.ctpop.i32(i32 %367)
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  store i8 %371, i8* %21, align 1
  %372 = xor i32 %360, %358
  %373 = xor i32 %372, %361
  %374 = lshr i32 %373, 4
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  store i8 %376, i8* %27, align 1
  %377 = icmp eq i32 %361, 0
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %30, align 1
  %379 = lshr i32 %361, 31
  %380 = trunc i32 %379 to i8
  store i8 %380, i8* %33, align 1
  %381 = lshr i32 %358, 31
  %382 = lshr i32 %360, 31
  %383 = xor i32 %379, %381
  %384 = xor i32 %379, %382
  %385 = add nuw nsw i32 %383, %384
  %386 = icmp eq i32 %385, 2
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %39, align 1
  %388 = add i64 %356, 6
  store i64 %388, i64* %3, align 8
  store i32 %361, i32* %359, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_409abe

block_.L_409abe:                                  ; preds = %block_409a7e, %entry, %block_409aa8
  %389 = phi i64 [ %273, %entry ], [ %335, %block_409a7e ], [ %.pre, %block_409aa8 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %2, %block_409a7e ], [ %call2_409ab3, %block_409aa8 ]
  %390 = load i64, i64* %RBP.i, align 8
  %391 = add i64 %390, -36
  %392 = add i64 %389, 4
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = sext i32 %394 to i64
  store i64 %395, i64* %RAX.i976, align 8
  %396 = add nsw i64 %395, 12099168
  %397 = add i64 %389, 12
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i8*
  %399 = load i8, i8* %398, align 1
  %400 = zext i8 %399 to i64
  store i64 %400, i64* %RCX.i922, align 8
  %401 = zext i8 %399 to i32
  %402 = add i64 %390, -12
  %403 = add i64 %389, 15
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i32*
  %405 = load i32, i32* %404, align 4
  %406 = sub i32 %401, %405
  %407 = icmp ult i32 %401, %405
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %14, align 1
  %409 = and i32 %406, 255
  %410 = tail call i32 @llvm.ctpop.i32(i32 %409)
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  store i8 %413, i8* %21, align 1
  %414 = xor i32 %405, %401
  %415 = xor i32 %414, %406
  %416 = lshr i32 %415, 4
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  store i8 %418, i8* %27, align 1
  %419 = icmp eq i32 %406, 0
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %30, align 1
  %421 = lshr i32 %406, 31
  %422 = trunc i32 %421 to i8
  store i8 %422, i8* %33, align 1
  %423 = lshr i32 %405, 31
  %424 = add nuw nsw i32 %421, %423
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %39, align 1
  %.v78 = select i1 %419, i64 21, i64 85
  %427 = add i64 %389, %.v78
  store i64 %427, i64* %3, align 8
  br i1 %419, label %block_409ad3, label %block_.L_409b13

block_409ad3:                                     ; preds = %block_.L_409abe
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %428 = add i64 %427, 14
  store i64 %428, i64* %3, align 8
  %429 = load i32, i32* %393, align 4
  %430 = sext i32 %429 to i64
  store i64 %430, i64* %RCX.i922, align 8
  %431 = shl nsw i64 %430, 2
  %432 = add nsw i64 %431, 11187184
  %433 = add i64 %427, 22
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = sext i32 %435 to i64
  %437 = mul nsw i64 %436, 744
  store i64 %437, i64* %RCX.i922, align 8
  %438 = lshr i64 %437, 63
  %439 = add i64 %437, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %439, i64* %RAX.i976, align 8
  %440 = icmp ult i64 %439, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %441 = icmp ult i64 %439, %437
  %442 = or i1 %440, %441
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %14, align 1
  %444 = trunc i64 %439 to i32
  %445 = and i32 %444, 248
  %446 = tail call i32 @llvm.ctpop.i32(i32 %445)
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  %449 = xor i8 %448, 1
  store i8 %449, i8* %21, align 1
  %450 = xor i64 %437, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %451 = xor i64 %450, %439
  %452 = lshr i64 %451, 4
  %453 = trunc i64 %452 to i8
  %454 = and i8 %453, 1
  store i8 %454, i8* %27, align 1
  %455 = icmp eq i64 %439, 0
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %30, align 1
  %457 = lshr i64 %439, 63
  %458 = trunc i64 %457 to i8
  store i8 %458, i8* %33, align 1
  %459 = xor i64 %457, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %460 = xor i64 %457, %438
  %461 = add nuw nsw i64 %459, %460
  %462 = icmp eq i64 %461, 2
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %39, align 1
  %464 = add i64 %437, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %465 = add i64 %427, 36
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = add i32 %467, -1
  %469 = icmp eq i32 %467, 0
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %14, align 1
  %471 = and i32 %468, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %21, align 1
  %476 = xor i32 %468, %467
  %477 = lshr i32 %476, 4
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  store i8 %479, i8* %27, align 1
  %480 = icmp eq i32 %468, 0
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %30, align 1
  %482 = lshr i32 %468, 31
  %483 = trunc i32 %482 to i8
  store i8 %483, i8* %33, align 1
  %484 = lshr i32 %467, 31
  %485 = xor i32 %482, %484
  %486 = add nuw nsw i32 %485, %484
  %487 = icmp eq i32 %486, 2
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %39, align 1
  %.v120 = select i1 %480, i64 42, i64 64
  %489 = add i64 %427, %.v120
  store i64 %489, i64* %3, align 8
  br i1 %480, label %block_409afd, label %block_.L_409b13

block_409afd:                                     ; preds = %block_409ad3
  %490 = load i64, i64* %RBP.i, align 8
  %491 = add i64 %490, -36
  %492 = add i64 %489, 4
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = sext i32 %494 to i64
  store i64 %495, i64* %RAX.i976, align 8
  %RDI.i857 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %496 = shl nsw i64 %495, 2
  %497 = add nsw i64 %496, 11187184
  %498 = add i64 %489, 11
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RDI.i857, align 8
  %502 = add i64 %489, 2147
  %503 = add i64 %489, 16
  %504 = load i64, i64* %6, align 8
  %505 = add i64 %504, -8
  %506 = inttoptr i64 %505 to i64*
  store i64 %503, i64* %506, align 8
  store i64 %505, i64* %6, align 8
  store i64 %502, i64* %3, align 8
  %call2_409b08 = tail call %struct.Memory* @sub_40a360.do_remove_string(%struct.State* nonnull %0, i64 %502, %struct.Memory* %MEMORY.0)
  %507 = load i64, i64* %RAX.i976, align 8
  %508 = load i64, i64* %RBP.i, align 8
  %509 = add i64 %508, -16
  %510 = load i64, i64* %3, align 8
  %511 = add i64 %510, 3
  store i64 %511, i64* %3, align 8
  %512 = trunc i64 %507 to i32
  %513 = inttoptr i64 %509 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = add i32 %514, %512
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RAX.i976, align 8
  %517 = icmp ult i32 %515, %512
  %518 = icmp ult i32 %515, %514
  %519 = or i1 %517, %518
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %14, align 1
  %521 = and i32 %515, 255
  %522 = tail call i32 @llvm.ctpop.i32(i32 %521)
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  store i8 %525, i8* %21, align 1
  %526 = xor i32 %514, %512
  %527 = xor i32 %526, %515
  %528 = lshr i32 %527, 4
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  store i8 %530, i8* %27, align 1
  %531 = icmp eq i32 %515, 0
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %30, align 1
  %533 = lshr i32 %515, 31
  %534 = trunc i32 %533 to i8
  store i8 %534, i8* %33, align 1
  %535 = lshr i32 %512, 31
  %536 = lshr i32 %514, 31
  %537 = xor i32 %533, %535
  %538 = xor i32 %533, %536
  %539 = add nuw nsw i32 %537, %538
  %540 = icmp eq i32 %539, 2
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %39, align 1
  %542 = add i64 %510, 6
  store i64 %542, i64* %3, align 8
  store i32 %515, i32* %513, align 4
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_409b13

block_.L_409b13:                                  ; preds = %block_409ad3, %block_.L_409abe, %block_409afd
  %543 = phi i64 [ %427, %block_.L_409abe ], [ %489, %block_409ad3 ], [ %.pre52, %block_409afd ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_409abe ], [ %MEMORY.0, %block_409ad3 ], [ %call2_409b08, %block_409afd ]
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -40
  %546 = add i64 %543, 4
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = sext i32 %548 to i64
  store i64 %549, i64* %RAX.i976, align 8
  %550 = add nsw i64 %549, 12099168
  %551 = add i64 %543, 12
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i8*
  %553 = load i8, i8* %552, align 1
  %554 = zext i8 %553 to i64
  store i64 %554, i64* %RCX.i922, align 8
  %555 = zext i8 %553 to i32
  %556 = add i64 %544, -12
  %557 = add i64 %543, 15
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  %560 = sub i32 %555, %559
  %561 = icmp ult i32 %555, %559
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %14, align 1
  %563 = and i32 %560, 255
  %564 = tail call i32 @llvm.ctpop.i32(i32 %563)
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  store i8 %567, i8* %21, align 1
  %568 = xor i32 %559, %555
  %569 = xor i32 %568, %560
  %570 = lshr i32 %569, 4
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %27, align 1
  %573 = icmp eq i32 %560, 0
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %30, align 1
  %575 = lshr i32 %560, 31
  %576 = trunc i32 %575 to i8
  store i8 %576, i8* %33, align 1
  %577 = lshr i32 %559, 31
  %578 = add nuw nsw i32 %575, %577
  %579 = icmp eq i32 %578, 2
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %39, align 1
  %.v79 = select i1 %573, i64 21, i64 85
  %581 = add i64 %543, %.v79
  store i64 %581, i64* %3, align 8
  br i1 %573, label %block_409b28, label %block_.L_409b68

block_409b28:                                     ; preds = %block_.L_409b13
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %582 = add i64 %581, 14
  store i64 %582, i64* %3, align 8
  %583 = load i32, i32* %547, align 4
  %584 = sext i32 %583 to i64
  store i64 %584, i64* %RCX.i922, align 8
  %585 = shl nsw i64 %584, 2
  %586 = add nsw i64 %585, 11187184
  %587 = add i64 %581, 22
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = sext i32 %589 to i64
  %591 = mul nsw i64 %590, 744
  store i64 %591, i64* %RCX.i922, align 8
  %592 = lshr i64 %591, 63
  %593 = add i64 %591, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %593, i64* %RAX.i976, align 8
  %594 = icmp ult i64 %593, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %595 = icmp ult i64 %593, %591
  %596 = or i1 %594, %595
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %14, align 1
  %598 = trunc i64 %593 to i32
  %599 = and i32 %598, 248
  %600 = tail call i32 @llvm.ctpop.i32(i32 %599)
  %601 = trunc i32 %600 to i8
  %602 = and i8 %601, 1
  %603 = xor i8 %602, 1
  store i8 %603, i8* %21, align 1
  %604 = xor i64 %591, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %605 = xor i64 %604, %593
  %606 = lshr i64 %605, 4
  %607 = trunc i64 %606 to i8
  %608 = and i8 %607, 1
  store i8 %608, i8* %27, align 1
  %609 = icmp eq i64 %593, 0
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %30, align 1
  %611 = lshr i64 %593, 63
  %612 = trunc i64 %611 to i8
  store i8 %612, i8* %33, align 1
  %613 = xor i64 %611, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %614 = xor i64 %611, %592
  %615 = add nuw nsw i64 %613, %614
  %616 = icmp eq i64 %615, 2
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %39, align 1
  %618 = add i64 %591, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %619 = add i64 %581, 36
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i32*
  %621 = load i32, i32* %620, align 4
  %622 = add i32 %621, -1
  %623 = icmp eq i32 %621, 0
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %14, align 1
  %625 = and i32 %622, 255
  %626 = tail call i32 @llvm.ctpop.i32(i32 %625)
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  %629 = xor i8 %628, 1
  store i8 %629, i8* %21, align 1
  %630 = xor i32 %622, %621
  %631 = lshr i32 %630, 4
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  store i8 %633, i8* %27, align 1
  %634 = icmp eq i32 %622, 0
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %30, align 1
  %636 = lshr i32 %622, 31
  %637 = trunc i32 %636 to i8
  store i8 %637, i8* %33, align 1
  %638 = lshr i32 %621, 31
  %639 = xor i32 %636, %638
  %640 = add nuw nsw i32 %639, %638
  %641 = icmp eq i32 %640, 2
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %39, align 1
  %.v119 = select i1 %634, i64 42, i64 64
  %643 = add i64 %581, %.v119
  store i64 %643, i64* %3, align 8
  br i1 %634, label %block_409b52, label %block_.L_409b68

block_409b52:                                     ; preds = %block_409b28
  %644 = load i64, i64* %RBP.i, align 8
  %645 = add i64 %644, -40
  %646 = add i64 %643, 4
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i32*
  %648 = load i32, i32* %647, align 4
  %649 = sext i32 %648 to i64
  store i64 %649, i64* %RAX.i976, align 8
  %RDI.i819 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %650 = shl nsw i64 %649, 2
  %651 = add nsw i64 %650, 11187184
  %652 = add i64 %643, 11
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i32*
  %654 = load i32, i32* %653, align 4
  %655 = zext i32 %654 to i64
  store i64 %655, i64* %RDI.i819, align 8
  %656 = add i64 %643, 2062
  %657 = add i64 %643, 16
  %658 = load i64, i64* %6, align 8
  %659 = add i64 %658, -8
  %660 = inttoptr i64 %659 to i64*
  store i64 %657, i64* %660, align 8
  store i64 %659, i64* %6, align 8
  store i64 %656, i64* %3, align 8
  %call2_409b5d = tail call %struct.Memory* @sub_40a360.do_remove_string(%struct.State* nonnull %0, i64 %656, %struct.Memory* %MEMORY.1)
  %661 = load i64, i64* %RAX.i976, align 8
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -16
  %664 = load i64, i64* %3, align 8
  %665 = add i64 %664, 3
  store i64 %665, i64* %3, align 8
  %666 = trunc i64 %661 to i32
  %667 = inttoptr i64 %663 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = add i32 %668, %666
  %670 = zext i32 %669 to i64
  store i64 %670, i64* %RAX.i976, align 8
  %671 = icmp ult i32 %669, %666
  %672 = icmp ult i32 %669, %668
  %673 = or i1 %671, %672
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %14, align 1
  %675 = and i32 %669, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %21, align 1
  %680 = xor i32 %668, %666
  %681 = xor i32 %680, %669
  %682 = lshr i32 %681, 4
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  store i8 %684, i8* %27, align 1
  %685 = icmp eq i32 %669, 0
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %30, align 1
  %687 = lshr i32 %669, 31
  %688 = trunc i32 %687 to i8
  store i8 %688, i8* %33, align 1
  %689 = lshr i32 %666, 31
  %690 = lshr i32 %668, 31
  %691 = xor i32 %687, %689
  %692 = xor i32 %687, %690
  %693 = add nuw nsw i32 %691, %692
  %694 = icmp eq i32 %693, 2
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %39, align 1
  %696 = add i64 %664, 6
  store i64 %696, i64* %3, align 8
  store i32 %669, i32* %667, align 4
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_409b68

block_.L_409b68:                                  ; preds = %block_409b28, %block_.L_409b13, %block_409b52
  %697 = phi i64 [ %581, %block_.L_409b13 ], [ %643, %block_409b28 ], [ %.pre53, %block_409b52 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_.L_409b13 ], [ %MEMORY.1, %block_409b28 ], [ %call2_409b5d, %block_409b52 ]
  %698 = load i64, i64* %RBP.i, align 8
  %699 = add i64 %698, -44
  %700 = add i64 %697, 4
  store i64 %700, i64* %3, align 8
  %701 = inttoptr i64 %699 to i32*
  %702 = load i32, i32* %701, align 4
  %703 = sext i32 %702 to i64
  store i64 %703, i64* %RAX.i976, align 8
  %704 = add nsw i64 %703, 12099168
  %705 = add i64 %697, 12
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to i8*
  %707 = load i8, i8* %706, align 1
  %708 = zext i8 %707 to i64
  store i64 %708, i64* %RCX.i922, align 8
  %709 = zext i8 %707 to i32
  %710 = add i64 %698, -12
  %711 = add i64 %697, 15
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i32*
  %713 = load i32, i32* %712, align 4
  %714 = sub i32 %709, %713
  %715 = icmp ult i32 %709, %713
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %14, align 1
  %717 = and i32 %714, 255
  %718 = tail call i32 @llvm.ctpop.i32(i32 %717)
  %719 = trunc i32 %718 to i8
  %720 = and i8 %719, 1
  %721 = xor i8 %720, 1
  store i8 %721, i8* %21, align 1
  %722 = xor i32 %713, %709
  %723 = xor i32 %722, %714
  %724 = lshr i32 %723, 4
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  store i8 %726, i8* %27, align 1
  %727 = icmp eq i32 %714, 0
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %30, align 1
  %729 = lshr i32 %714, 31
  %730 = trunc i32 %729 to i8
  store i8 %730, i8* %33, align 1
  %731 = lshr i32 %713, 31
  %732 = add nuw nsw i32 %729, %731
  %733 = icmp eq i32 %732, 2
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %39, align 1
  %.v80 = select i1 %727, i64 21, i64 85
  %735 = add i64 %697, %.v80
  store i64 %735, i64* %3, align 8
  br i1 %727, label %block_409b7d, label %block_.L_409bbd

block_409b7d:                                     ; preds = %block_.L_409b68
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %736 = add i64 %735, 14
  store i64 %736, i64* %3, align 8
  %737 = load i32, i32* %701, align 4
  %738 = sext i32 %737 to i64
  store i64 %738, i64* %RCX.i922, align 8
  %739 = shl nsw i64 %738, 2
  %740 = add nsw i64 %739, 11187184
  %741 = add i64 %735, 22
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i32*
  %743 = load i32, i32* %742, align 4
  %744 = sext i32 %743 to i64
  %745 = mul nsw i64 %744, 744
  store i64 %745, i64* %RCX.i922, align 8
  %746 = lshr i64 %745, 63
  %747 = add i64 %745, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %747, i64* %RAX.i976, align 8
  %748 = icmp ult i64 %747, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %749 = icmp ult i64 %747, %745
  %750 = or i1 %748, %749
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %14, align 1
  %752 = trunc i64 %747 to i32
  %753 = and i32 %752, 248
  %754 = tail call i32 @llvm.ctpop.i32(i32 %753)
  %755 = trunc i32 %754 to i8
  %756 = and i8 %755, 1
  %757 = xor i8 %756, 1
  store i8 %757, i8* %21, align 1
  %758 = xor i64 %745, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %759 = xor i64 %758, %747
  %760 = lshr i64 %759, 4
  %761 = trunc i64 %760 to i8
  %762 = and i8 %761, 1
  store i8 %762, i8* %27, align 1
  %763 = icmp eq i64 %747, 0
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %30, align 1
  %765 = lshr i64 %747, 63
  %766 = trunc i64 %765 to i8
  store i8 %766, i8* %33, align 1
  %767 = xor i64 %765, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %768 = xor i64 %765, %746
  %769 = add nuw nsw i64 %767, %768
  %770 = icmp eq i64 %769, 2
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %39, align 1
  %772 = add i64 %745, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %773 = add i64 %735, 36
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = add i32 %775, -1
  %777 = icmp eq i32 %775, 0
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %14, align 1
  %779 = and i32 %776, 255
  %780 = tail call i32 @llvm.ctpop.i32(i32 %779)
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  %783 = xor i8 %782, 1
  store i8 %783, i8* %21, align 1
  %784 = xor i32 %776, %775
  %785 = lshr i32 %784, 4
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  store i8 %787, i8* %27, align 1
  %788 = icmp eq i32 %776, 0
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %30, align 1
  %790 = lshr i32 %776, 31
  %791 = trunc i32 %790 to i8
  store i8 %791, i8* %33, align 1
  %792 = lshr i32 %775, 31
  %793 = xor i32 %790, %792
  %794 = add nuw nsw i32 %793, %792
  %795 = icmp eq i32 %794, 2
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %39, align 1
  %.v118 = select i1 %788, i64 42, i64 64
  %797 = add i64 %735, %.v118
  store i64 %797, i64* %3, align 8
  br i1 %788, label %block_409ba7, label %block_.L_409bbd

block_409ba7:                                     ; preds = %block_409b7d
  %798 = load i64, i64* %RBP.i, align 8
  %799 = add i64 %798, -44
  %800 = add i64 %797, 4
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i32*
  %802 = load i32, i32* %801, align 4
  %803 = sext i32 %802 to i64
  store i64 %803, i64* %RAX.i976, align 8
  %RDI.i781 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %804 = shl nsw i64 %803, 2
  %805 = add nsw i64 %804, 11187184
  %806 = add i64 %797, 11
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i32*
  %808 = load i32, i32* %807, align 4
  %809 = zext i32 %808 to i64
  store i64 %809, i64* %RDI.i781, align 8
  %810 = add i64 %797, 1977
  %811 = add i64 %797, 16
  %812 = load i64, i64* %6, align 8
  %813 = add i64 %812, -8
  %814 = inttoptr i64 %813 to i64*
  store i64 %811, i64* %814, align 8
  store i64 %813, i64* %6, align 8
  store i64 %810, i64* %3, align 8
  %call2_409bb2 = tail call %struct.Memory* @sub_40a360.do_remove_string(%struct.State* nonnull %0, i64 %810, %struct.Memory* %MEMORY.2)
  %815 = load i64, i64* %RAX.i976, align 8
  %816 = load i64, i64* %RBP.i, align 8
  %817 = add i64 %816, -16
  %818 = load i64, i64* %3, align 8
  %819 = add i64 %818, 3
  store i64 %819, i64* %3, align 8
  %820 = trunc i64 %815 to i32
  %821 = inttoptr i64 %817 to i32*
  %822 = load i32, i32* %821, align 4
  %823 = add i32 %822, %820
  %824 = zext i32 %823 to i64
  store i64 %824, i64* %RAX.i976, align 8
  %825 = icmp ult i32 %823, %820
  %826 = icmp ult i32 %823, %822
  %827 = or i1 %825, %826
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %14, align 1
  %829 = and i32 %823, 255
  %830 = tail call i32 @llvm.ctpop.i32(i32 %829)
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  %833 = xor i8 %832, 1
  store i8 %833, i8* %21, align 1
  %834 = xor i32 %822, %820
  %835 = xor i32 %834, %823
  %836 = lshr i32 %835, 4
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  store i8 %838, i8* %27, align 1
  %839 = icmp eq i32 %823, 0
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %30, align 1
  %841 = lshr i32 %823, 31
  %842 = trunc i32 %841 to i8
  store i8 %842, i8* %33, align 1
  %843 = lshr i32 %820, 31
  %844 = lshr i32 %822, 31
  %845 = xor i32 %841, %843
  %846 = xor i32 %841, %844
  %847 = add nuw nsw i32 %845, %846
  %848 = icmp eq i32 %847, 2
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %39, align 1
  %850 = add i64 %818, 6
  store i64 %850, i64* %3, align 8
  store i32 %823, i32* %821, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_409bbd

block_.L_409bbd:                                  ; preds = %block_409b7d, %block_.L_409b68, %block_409ba7
  %851 = phi i64 [ %735, %block_.L_409b68 ], [ %797, %block_409b7d ], [ %.pre54, %block_409ba7 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_409b68 ], [ %MEMORY.2, %block_409b7d ], [ %call2_409bb2, %block_409ba7 ]
  %852 = load i64, i64* %RBP.i, align 8
  %853 = add i64 %852, -16
  %854 = add i64 %851, 4
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  %856 = load i32, i32* %855, align 4
  store i8 0, i8* %14, align 1
  %857 = and i32 %856, 255
  %858 = tail call i32 @llvm.ctpop.i32(i32 %857)
  %859 = trunc i32 %858 to i8
  %860 = and i8 %859, 1
  %861 = xor i8 %860, 1
  store i8 %861, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %862 = icmp eq i32 %856, 0
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %30, align 1
  %864 = lshr i32 %856, 31
  %865 = trunc i32 %864 to i8
  store i8 %865, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v81 = select i1 %862, i64 10, i64 409
  %866 = add i64 %851, %.v81
  store i64 %866, i64* %3, align 8
  br i1 %862, label %block_409bc7, label %block_.L_409d56

block_409bc7:                                     ; preds = %block_.L_409bbd
  %867 = add i64 %852, -32
  %868 = add i64 %866, 4
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = sext i32 %870 to i64
  store i64 %871, i64* %RAX.i976, align 8
  %872 = add nsw i64 %871, 12099168
  %873 = add i64 %866, 12
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %872 to i8*
  %875 = load i8, i8* %874, align 1
  %876 = zext i8 %875 to i64
  store i64 %876, i64* %RCX.i922, align 8
  %877 = zext i8 %875 to i32
  store i8 0, i8* %14, align 1
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %882 = icmp eq i8 %875, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v106 = select i1 %882, i64 84, i64 21
  %884 = add i64 %866, %.v106
  store i64 %884, i64* %3, align 8
  br i1 %882, label %block_.L_409c1b, label %block_409bdc

block_409bdc:                                     ; preds = %block_409bc7
  %885 = add i64 %884, 4
  store i64 %885, i64* %3, align 8
  %886 = load i32, i32* %869, align 4
  %887 = sext i32 %886 to i64
  store i64 %887, i64* %RAX.i976, align 8
  %888 = add nsw i64 %887, 12099168
  %889 = add i64 %884, 12
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to i8*
  %891 = load i8, i8* %890, align 1
  %892 = zext i8 %891 to i64
  store i64 %892, i64* %RCX.i922, align 8
  %893 = zext i8 %891 to i32
  %894 = add i64 %852, -8
  %895 = add i64 %884, 15
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i32*
  %897 = load i32, i32* %896, align 4
  %898 = sub i32 %893, %897
  %899 = icmp ult i32 %893, %897
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %14, align 1
  %901 = and i32 %898, 255
  %902 = tail call i32 @llvm.ctpop.i32(i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  store i8 %905, i8* %21, align 1
  %906 = xor i32 %897, %893
  %907 = xor i32 %906, %898
  %908 = lshr i32 %907, 4
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  store i8 %910, i8* %27, align 1
  %911 = icmp eq i32 %898, 0
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %30, align 1
  %913 = lshr i32 %898, 31
  %914 = trunc i32 %913 to i8
  store i8 %914, i8* %33, align 1
  %915 = lshr i32 %897, 31
  %916 = add nuw nsw i32 %913, %915
  %917 = icmp eq i32 %916, 2
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %39, align 1
  %.v107 = select i1 %911, i64 21, i64 75
  %919 = add i64 %884, %.v107
  store i64 %919, i64* %3, align 8
  br i1 %911, label %block_409bf1, label %block_.L_409c27

block_409bf1:                                     ; preds = %block_409bdc
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %920 = add i64 %919, 14
  store i64 %920, i64* %3, align 8
  %921 = load i32, i32* %869, align 4
  %922 = sext i32 %921 to i64
  store i64 %922, i64* %RCX.i922, align 8
  %923 = shl nsw i64 %922, 2
  %924 = add nsw i64 %923, 11187184
  %925 = add i64 %919, 22
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i32*
  %927 = load i32, i32* %926, align 4
  %928 = sext i32 %927 to i64
  %929 = mul nsw i64 %928, 744
  store i64 %929, i64* %RCX.i922, align 8
  %930 = lshr i64 %929, 63
  %931 = add i64 %929, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %931, i64* %RAX.i976, align 8
  %932 = icmp ult i64 %931, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %933 = icmp ult i64 %931, %929
  %934 = or i1 %932, %933
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %14, align 1
  %936 = trunc i64 %931 to i32
  %937 = and i32 %936, 248
  %938 = tail call i32 @llvm.ctpop.i32(i32 %937)
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  %941 = xor i8 %940, 1
  store i8 %941, i8* %21, align 1
  %942 = xor i64 %929, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %943 = xor i64 %942, %931
  %944 = lshr i64 %943, 4
  %945 = trunc i64 %944 to i8
  %946 = and i8 %945, 1
  store i8 %946, i8* %27, align 1
  %947 = icmp eq i64 %931, 0
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %30, align 1
  %949 = lshr i64 %931, 63
  %950 = trunc i64 %949 to i8
  store i8 %950, i8* %33, align 1
  %951 = xor i64 %949, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %952 = xor i64 %949, %930
  %953 = add nuw nsw i64 %951, %952
  %954 = icmp eq i64 %953, 2
  %955 = zext i1 %954 to i8
  store i8 %955, i8* %39, align 1
  %956 = add i64 %929, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %957 = add i64 %919, 36
  store i64 %957, i64* %3, align 8
  %958 = inttoptr i64 %956 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = add i32 %959, -1
  %961 = icmp eq i32 %959, 0
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %14, align 1
  %963 = and i32 %960, 255
  %964 = tail call i32 @llvm.ctpop.i32(i32 %963)
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = xor i8 %966, 1
  store i8 %967, i8* %21, align 1
  %968 = xor i32 %960, %959
  %969 = lshr i32 %968, 4
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  store i8 %971, i8* %27, align 1
  %972 = icmp eq i32 %960, 0
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %30, align 1
  %974 = lshr i32 %960, 31
  %975 = trunc i32 %974 to i8
  store i8 %975, i8* %33, align 1
  %976 = lshr i32 %959, 31
  %977 = xor i32 %974, %976
  %978 = add nuw nsw i32 %977, %976
  %979 = icmp eq i32 %978, 2
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %39, align 1
  %981 = icmp ne i8 %975, 0
  %982 = xor i1 %981, %979
  %983 = or i1 %972, %982
  %.v117 = select i1 %983, i64 54, i64 42
  %984 = add i64 %919, %.v117
  store i64 %984, i64* %3, align 8
  %.pre55 = load i64, i64* %RBP.i, align 8
  br i1 %983, label %block_.L_409c27, label %block_.L_409c1b

block_.L_409c1b:                                  ; preds = %block_409bf1, %block_409bc7
  %985 = phi i64 [ %884, %block_409bc7 ], [ %984, %block_409bf1 ]
  %986 = phi i64 [ %852, %block_409bc7 ], [ %.pre55, %block_409bf1 ]
  %987 = add i64 %986, -24
  %988 = add i64 %985, 7
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i32*
  store i32 1, i32* %989, align 4
  %990 = load i64, i64* %3, align 8
  %991 = add i64 %990, 303
  br label %block_.L_409d51

block_.L_409c27:                                  ; preds = %block_409bf1, %block_409bdc
  %992 = phi i64 [ %919, %block_409bdc ], [ %984, %block_409bf1 ]
  %993 = phi i64 [ %852, %block_409bdc ], [ %.pre55, %block_409bf1 ]
  %994 = add i64 %993, -36
  %995 = add i64 %992, 4
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = sext i32 %997 to i64
  store i64 %998, i64* %RAX.i976, align 8
  %999 = add nsw i64 %998, 12099168
  %1000 = add i64 %992, 12
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i8*
  %1002 = load i8, i8* %1001, align 1
  %1003 = zext i8 %1002 to i64
  store i64 %1003, i64* %RCX.i922, align 8
  %1004 = zext i8 %1002 to i32
  store i8 0, i8* %14, align 1
  %1005 = tail call i32 @llvm.ctpop.i32(i32 %1004)
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  %1008 = xor i8 %1007, 1
  store i8 %1008, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1009 = icmp eq i8 %1002, 0
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v108 = select i1 %1009, i64 84, i64 21
  %1011 = add i64 %992, %.v108
  store i64 %1011, i64* %3, align 8
  br i1 %1009, label %block_.L_409c7b, label %block_409c3c

block_409c3c:                                     ; preds = %block_.L_409c27
  %1012 = add i64 %1011, 4
  store i64 %1012, i64* %3, align 8
  %1013 = load i32, i32* %996, align 4
  %1014 = sext i32 %1013 to i64
  store i64 %1014, i64* %RAX.i976, align 8
  %1015 = add nsw i64 %1014, 12099168
  %1016 = add i64 %1011, 12
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i8*
  %1018 = load i8, i8* %1017, align 1
  %1019 = zext i8 %1018 to i64
  store i64 %1019, i64* %RCX.i922, align 8
  %1020 = zext i8 %1018 to i32
  %1021 = add i64 %993, -8
  %1022 = add i64 %1011, 15
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i32*
  %1024 = load i32, i32* %1023, align 4
  %1025 = sub i32 %1020, %1024
  %1026 = icmp ult i32 %1020, %1024
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %14, align 1
  %1028 = and i32 %1025, 255
  %1029 = tail call i32 @llvm.ctpop.i32(i32 %1028)
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  %1032 = xor i8 %1031, 1
  store i8 %1032, i8* %21, align 1
  %1033 = xor i32 %1024, %1020
  %1034 = xor i32 %1033, %1025
  %1035 = lshr i32 %1034, 4
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  store i8 %1037, i8* %27, align 1
  %1038 = icmp eq i32 %1025, 0
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %30, align 1
  %1040 = lshr i32 %1025, 31
  %1041 = trunc i32 %1040 to i8
  store i8 %1041, i8* %33, align 1
  %1042 = lshr i32 %1024, 31
  %1043 = add nuw nsw i32 %1040, %1042
  %1044 = icmp eq i32 %1043, 2
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %39, align 1
  %.v109 = select i1 %1038, i64 21, i64 75
  %1046 = add i64 %1011, %.v109
  store i64 %1046, i64* %3, align 8
  br i1 %1038, label %block_409c51, label %block_.L_409c87

block_409c51:                                     ; preds = %block_409c3c
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %1047 = add i64 %1046, 14
  store i64 %1047, i64* %3, align 8
  %1048 = load i32, i32* %996, align 4
  %1049 = sext i32 %1048 to i64
  store i64 %1049, i64* %RCX.i922, align 8
  %1050 = shl nsw i64 %1049, 2
  %1051 = add nsw i64 %1050, 11187184
  %1052 = add i64 %1046, 22
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i32*
  %1054 = load i32, i32* %1053, align 4
  %1055 = sext i32 %1054 to i64
  %1056 = mul nsw i64 %1055, 744
  store i64 %1056, i64* %RCX.i922, align 8
  %1057 = lshr i64 %1056, 63
  %1058 = add i64 %1056, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1058, i64* %RAX.i976, align 8
  %1059 = icmp ult i64 %1058, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1060 = icmp ult i64 %1058, %1056
  %1061 = or i1 %1059, %1060
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %14, align 1
  %1063 = trunc i64 %1058 to i32
  %1064 = and i32 %1063, 248
  %1065 = tail call i32 @llvm.ctpop.i32(i32 %1064)
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  %1068 = xor i8 %1067, 1
  store i8 %1068, i8* %21, align 1
  %1069 = xor i64 %1056, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1070 = xor i64 %1069, %1058
  %1071 = lshr i64 %1070, 4
  %1072 = trunc i64 %1071 to i8
  %1073 = and i8 %1072, 1
  store i8 %1073, i8* %27, align 1
  %1074 = icmp eq i64 %1058, 0
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %30, align 1
  %1076 = lshr i64 %1058, 63
  %1077 = trunc i64 %1076 to i8
  store i8 %1077, i8* %33, align 1
  %1078 = xor i64 %1076, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1079 = xor i64 %1076, %1057
  %1080 = add nuw nsw i64 %1078, %1079
  %1081 = icmp eq i64 %1080, 2
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %39, align 1
  %1083 = add i64 %1056, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1084 = add i64 %1046, 36
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1083 to i32*
  %1086 = load i32, i32* %1085, align 4
  %1087 = add i32 %1086, -1
  %1088 = icmp eq i32 %1086, 0
  %1089 = zext i1 %1088 to i8
  store i8 %1089, i8* %14, align 1
  %1090 = and i32 %1087, 255
  %1091 = tail call i32 @llvm.ctpop.i32(i32 %1090)
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  %1094 = xor i8 %1093, 1
  store i8 %1094, i8* %21, align 1
  %1095 = xor i32 %1087, %1086
  %1096 = lshr i32 %1095, 4
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  store i8 %1098, i8* %27, align 1
  %1099 = icmp eq i32 %1087, 0
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %30, align 1
  %1101 = lshr i32 %1087, 31
  %1102 = trunc i32 %1101 to i8
  store i8 %1102, i8* %33, align 1
  %1103 = lshr i32 %1086, 31
  %1104 = xor i32 %1101, %1103
  %1105 = add nuw nsw i32 %1104, %1103
  %1106 = icmp eq i32 %1105, 2
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %39, align 1
  %1108 = icmp ne i8 %1102, 0
  %1109 = xor i1 %1108, %1106
  %1110 = or i1 %1099, %1109
  %.v116 = select i1 %1110, i64 54, i64 42
  %1111 = add i64 %1046, %.v116
  store i64 %1111, i64* %3, align 8
  %.pre56 = load i64, i64* %RBP.i, align 8
  br i1 %1110, label %block_.L_409c87, label %block_.L_409c7b

block_.L_409c7b:                                  ; preds = %block_409c51, %block_.L_409c27
  %1112 = phi i64 [ %1011, %block_.L_409c27 ], [ %1111, %block_409c51 ]
  %1113 = phi i64 [ %993, %block_.L_409c27 ], [ %.pre56, %block_409c51 ]
  %1114 = add i64 %1113, -24
  %1115 = add i64 %1112, 7
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i32*
  store i32 1, i32* %1116, align 4
  %1117 = load i64, i64* %3, align 8
  %1118 = add i64 %1117, 202
  br label %block_.L_409d4c

block_.L_409c87:                                  ; preds = %block_409c51, %block_409c3c
  %1119 = phi i64 [ %1046, %block_409c3c ], [ %1111, %block_409c51 ]
  %1120 = phi i64 [ %993, %block_409c3c ], [ %.pre56, %block_409c51 ]
  %1121 = add i64 %1120, -40
  %1122 = add i64 %1119, 4
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to i32*
  %1124 = load i32, i32* %1123, align 4
  %1125 = sext i32 %1124 to i64
  store i64 %1125, i64* %RAX.i976, align 8
  %1126 = add nsw i64 %1125, 12099168
  %1127 = add i64 %1119, 12
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i8*
  %1129 = load i8, i8* %1128, align 1
  %1130 = zext i8 %1129 to i64
  store i64 %1130, i64* %RCX.i922, align 8
  %1131 = zext i8 %1129 to i32
  store i8 0, i8* %14, align 1
  %1132 = tail call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  store i8 %1135, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1136 = icmp eq i8 %1129, 0
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v110 = select i1 %1136, i64 84, i64 21
  %1138 = add i64 %1119, %.v110
  store i64 %1138, i64* %3, align 8
  br i1 %1136, label %block_.L_409cdb, label %block_409c9c

block_409c9c:                                     ; preds = %block_.L_409c87
  %1139 = add i64 %1138, 4
  store i64 %1139, i64* %3, align 8
  %1140 = load i32, i32* %1123, align 4
  %1141 = sext i32 %1140 to i64
  store i64 %1141, i64* %RAX.i976, align 8
  %1142 = add nsw i64 %1141, 12099168
  %1143 = add i64 %1138, 12
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i8*
  %1145 = load i8, i8* %1144, align 1
  %1146 = zext i8 %1145 to i64
  store i64 %1146, i64* %RCX.i922, align 8
  %1147 = zext i8 %1145 to i32
  %1148 = add i64 %1120, -8
  %1149 = add i64 %1138, 15
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i32*
  %1151 = load i32, i32* %1150, align 4
  %1152 = sub i32 %1147, %1151
  %1153 = icmp ult i32 %1147, %1151
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %14, align 1
  %1155 = and i32 %1152, 255
  %1156 = tail call i32 @llvm.ctpop.i32(i32 %1155)
  %1157 = trunc i32 %1156 to i8
  %1158 = and i8 %1157, 1
  %1159 = xor i8 %1158, 1
  store i8 %1159, i8* %21, align 1
  %1160 = xor i32 %1151, %1147
  %1161 = xor i32 %1160, %1152
  %1162 = lshr i32 %1161, 4
  %1163 = trunc i32 %1162 to i8
  %1164 = and i8 %1163, 1
  store i8 %1164, i8* %27, align 1
  %1165 = icmp eq i32 %1152, 0
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %30, align 1
  %1167 = lshr i32 %1152, 31
  %1168 = trunc i32 %1167 to i8
  store i8 %1168, i8* %33, align 1
  %1169 = lshr i32 %1151, 31
  %1170 = add nuw nsw i32 %1167, %1169
  %1171 = icmp eq i32 %1170, 2
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %39, align 1
  %.v111 = select i1 %1165, i64 21, i64 75
  %1173 = add i64 %1138, %.v111
  store i64 %1173, i64* %3, align 8
  br i1 %1165, label %block_409cb1, label %block_.L_409ce7

block_409cb1:                                     ; preds = %block_409c9c
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %1174 = add i64 %1173, 14
  store i64 %1174, i64* %3, align 8
  %1175 = load i32, i32* %1123, align 4
  %1176 = sext i32 %1175 to i64
  store i64 %1176, i64* %RCX.i922, align 8
  %1177 = shl nsw i64 %1176, 2
  %1178 = add nsw i64 %1177, 11187184
  %1179 = add i64 %1173, 22
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i32*
  %1181 = load i32, i32* %1180, align 4
  %1182 = sext i32 %1181 to i64
  %1183 = mul nsw i64 %1182, 744
  store i64 %1183, i64* %RCX.i922, align 8
  %1184 = lshr i64 %1183, 63
  %1185 = add i64 %1183, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1185, i64* %RAX.i976, align 8
  %1186 = icmp ult i64 %1185, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1187 = icmp ult i64 %1185, %1183
  %1188 = or i1 %1186, %1187
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %14, align 1
  %1190 = trunc i64 %1185 to i32
  %1191 = and i32 %1190, 248
  %1192 = tail call i32 @llvm.ctpop.i32(i32 %1191)
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = xor i8 %1194, 1
  store i8 %1195, i8* %21, align 1
  %1196 = xor i64 %1183, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1197 = xor i64 %1196, %1185
  %1198 = lshr i64 %1197, 4
  %1199 = trunc i64 %1198 to i8
  %1200 = and i8 %1199, 1
  store i8 %1200, i8* %27, align 1
  %1201 = icmp eq i64 %1185, 0
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %30, align 1
  %1203 = lshr i64 %1185, 63
  %1204 = trunc i64 %1203 to i8
  store i8 %1204, i8* %33, align 1
  %1205 = xor i64 %1203, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1206 = xor i64 %1203, %1184
  %1207 = add nuw nsw i64 %1205, %1206
  %1208 = icmp eq i64 %1207, 2
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %39, align 1
  %1210 = add i64 %1183, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1211 = add i64 %1173, 36
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i32*
  %1213 = load i32, i32* %1212, align 4
  %1214 = add i32 %1213, -1
  %1215 = icmp eq i32 %1213, 0
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %14, align 1
  %1217 = and i32 %1214, 255
  %1218 = tail call i32 @llvm.ctpop.i32(i32 %1217)
  %1219 = trunc i32 %1218 to i8
  %1220 = and i8 %1219, 1
  %1221 = xor i8 %1220, 1
  store i8 %1221, i8* %21, align 1
  %1222 = xor i32 %1214, %1213
  %1223 = lshr i32 %1222, 4
  %1224 = trunc i32 %1223 to i8
  %1225 = and i8 %1224, 1
  store i8 %1225, i8* %27, align 1
  %1226 = icmp eq i32 %1214, 0
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %30, align 1
  %1228 = lshr i32 %1214, 31
  %1229 = trunc i32 %1228 to i8
  store i8 %1229, i8* %33, align 1
  %1230 = lshr i32 %1213, 31
  %1231 = xor i32 %1228, %1230
  %1232 = add nuw nsw i32 %1231, %1230
  %1233 = icmp eq i32 %1232, 2
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %39, align 1
  %1235 = icmp ne i8 %1229, 0
  %1236 = xor i1 %1235, %1233
  %1237 = or i1 %1226, %1236
  %.v115 = select i1 %1237, i64 54, i64 42
  %1238 = add i64 %1173, %.v115
  store i64 %1238, i64* %3, align 8
  %.pre57 = load i64, i64* %RBP.i, align 8
  br i1 %1237, label %block_.L_409ce7, label %block_.L_409cdb

block_.L_409cdb:                                  ; preds = %block_409cb1, %block_.L_409c87
  %1239 = phi i64 [ %1138, %block_.L_409c87 ], [ %1238, %block_409cb1 ]
  %1240 = phi i64 [ %1120, %block_.L_409c87 ], [ %.pre57, %block_409cb1 ]
  %1241 = add i64 %1240, -24
  %1242 = add i64 %1239, 7
  store i64 %1242, i64* %3, align 8
  %1243 = inttoptr i64 %1241 to i32*
  store i32 1, i32* %1243, align 4
  %1244 = load i64, i64* %3, align 8
  %1245 = add i64 %1244, 101
  br label %block_.L_409d47

block_.L_409ce7:                                  ; preds = %block_409cb1, %block_409c9c
  %1246 = phi i64 [ %1173, %block_409c9c ], [ %1238, %block_409cb1 ]
  %1247 = phi i64 [ %1120, %block_409c9c ], [ %.pre57, %block_409cb1 ]
  %1248 = add i64 %1247, -44
  %1249 = add i64 %1246, 4
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to i32*
  %1251 = load i32, i32* %1250, align 4
  %1252 = sext i32 %1251 to i64
  store i64 %1252, i64* %RAX.i976, align 8
  %1253 = add nsw i64 %1252, 12099168
  %1254 = add i64 %1246, 12
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i8*
  %1256 = load i8, i8* %1255, align 1
  %1257 = zext i8 %1256 to i64
  store i64 %1257, i64* %RCX.i922, align 8
  %1258 = zext i8 %1256 to i32
  store i8 0, i8* %14, align 1
  %1259 = tail call i32 @llvm.ctpop.i32(i32 %1258)
  %1260 = trunc i32 %1259 to i8
  %1261 = and i8 %1260, 1
  %1262 = xor i8 %1261, 1
  store i8 %1262, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1263 = icmp eq i8 %1256, 0
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v112 = select i1 %1263, i64 84, i64 21
  %1265 = add i64 %1246, %.v112
  store i64 %1265, i64* %3, align 8
  br i1 %1263, label %block_.L_409d3b, label %block_409cfc

block_409cfc:                                     ; preds = %block_.L_409ce7
  %1266 = add i64 %1265, 4
  store i64 %1266, i64* %3, align 8
  %1267 = load i32, i32* %1250, align 4
  %1268 = sext i32 %1267 to i64
  store i64 %1268, i64* %RAX.i976, align 8
  %1269 = add nsw i64 %1268, 12099168
  %1270 = add i64 %1265, 12
  store i64 %1270, i64* %3, align 8
  %1271 = inttoptr i64 %1269 to i8*
  %1272 = load i8, i8* %1271, align 1
  %1273 = zext i8 %1272 to i64
  store i64 %1273, i64* %RCX.i922, align 8
  %1274 = zext i8 %1272 to i32
  %1275 = add i64 %1247, -8
  %1276 = add i64 %1265, 15
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1275 to i32*
  %1278 = load i32, i32* %1277, align 4
  %1279 = sub i32 %1274, %1278
  %1280 = icmp ult i32 %1274, %1278
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %14, align 1
  %1282 = and i32 %1279, 255
  %1283 = tail call i32 @llvm.ctpop.i32(i32 %1282)
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  %1286 = xor i8 %1285, 1
  store i8 %1286, i8* %21, align 1
  %1287 = xor i32 %1278, %1274
  %1288 = xor i32 %1287, %1279
  %1289 = lshr i32 %1288, 4
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  store i8 %1291, i8* %27, align 1
  %1292 = icmp eq i32 %1279, 0
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %30, align 1
  %1294 = lshr i32 %1279, 31
  %1295 = trunc i32 %1294 to i8
  store i8 %1295, i8* %33, align 1
  %1296 = lshr i32 %1278, 31
  %1297 = add nuw nsw i32 %1294, %1296
  %1298 = icmp eq i32 %1297, 2
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %39, align 1
  %.v113 = select i1 %1292, i64 21, i64 70
  %1300 = add i64 %1265, %.v113
  store i64 %1300, i64* %3, align 8
  br i1 %1292, label %block_409d11, label %block_.L_409d42

block_409d11:                                     ; preds = %block_409cfc
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %1301 = add i64 %1300, 14
  store i64 %1301, i64* %3, align 8
  %1302 = load i32, i32* %1250, align 4
  %1303 = sext i32 %1302 to i64
  store i64 %1303, i64* %RCX.i922, align 8
  %1304 = shl nsw i64 %1303, 2
  %1305 = add nsw i64 %1304, 11187184
  %1306 = add i64 %1300, 22
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to i32*
  %1308 = load i32, i32* %1307, align 4
  %1309 = sext i32 %1308 to i64
  %1310 = mul nsw i64 %1309, 744
  store i64 %1310, i64* %RCX.i922, align 8
  %1311 = lshr i64 %1310, 63
  %1312 = add i64 %1310, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1312, i64* %RAX.i976, align 8
  %1313 = icmp ult i64 %1312, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1314 = icmp ult i64 %1312, %1310
  %1315 = or i1 %1313, %1314
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %14, align 1
  %1317 = trunc i64 %1312 to i32
  %1318 = and i32 %1317, 248
  %1319 = tail call i32 @llvm.ctpop.i32(i32 %1318)
  %1320 = trunc i32 %1319 to i8
  %1321 = and i8 %1320, 1
  %1322 = xor i8 %1321, 1
  store i8 %1322, i8* %21, align 1
  %1323 = xor i64 %1310, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1324 = xor i64 %1323, %1312
  %1325 = lshr i64 %1324, 4
  %1326 = trunc i64 %1325 to i8
  %1327 = and i8 %1326, 1
  store i8 %1327, i8* %27, align 1
  %1328 = icmp eq i64 %1312, 0
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %30, align 1
  %1330 = lshr i64 %1312, 63
  %1331 = trunc i64 %1330 to i8
  store i8 %1331, i8* %33, align 1
  %1332 = xor i64 %1330, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1333 = xor i64 %1330, %1311
  %1334 = add nuw nsw i64 %1332, %1333
  %1335 = icmp eq i64 %1334, 2
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %39, align 1
  %1337 = add i64 %1310, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1338 = add i64 %1300, 36
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1337 to i32*
  %1340 = load i32, i32* %1339, align 4
  %1341 = add i32 %1340, -1
  %1342 = icmp eq i32 %1340, 0
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %14, align 1
  %1344 = and i32 %1341, 255
  %1345 = tail call i32 @llvm.ctpop.i32(i32 %1344)
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = xor i8 %1347, 1
  store i8 %1348, i8* %21, align 1
  %1349 = xor i32 %1341, %1340
  %1350 = lshr i32 %1349, 4
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  store i8 %1352, i8* %27, align 1
  %1353 = icmp eq i32 %1341, 0
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %30, align 1
  %1355 = lshr i32 %1341, 31
  %1356 = trunc i32 %1355 to i8
  store i8 %1356, i8* %33, align 1
  %1357 = lshr i32 %1340, 31
  %1358 = xor i32 %1355, %1357
  %1359 = add nuw nsw i32 %1358, %1357
  %1360 = icmp eq i32 %1359, 2
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %39, align 1
  %1362 = icmp ne i8 %1356, 0
  %1363 = xor i1 %1362, %1360
  %1364 = or i1 %1353, %1363
  %.v114 = select i1 %1364, i64 49, i64 42
  %1365 = add i64 %1300, %.v114
  store i64 %1365, i64* %3, align 8
  br i1 %1364, label %block_.L_409d42, label %block_409d11.block_.L_409d3b_crit_edge

block_409d11.block_.L_409d3b_crit_edge:           ; preds = %block_409d11
  %.pre58 = load i64, i64* %RBP.i, align 8
  br label %block_.L_409d3b

block_.L_409d3b:                                  ; preds = %block_409d11.block_.L_409d3b_crit_edge, %block_.L_409ce7
  %1366 = phi i64 [ %1365, %block_409d11.block_.L_409d3b_crit_edge ], [ %1265, %block_.L_409ce7 ]
  %1367 = phi i64 [ %.pre58, %block_409d11.block_.L_409d3b_crit_edge ], [ %1247, %block_.L_409ce7 ]
  %1368 = add i64 %1367, -24
  %1369 = add i64 %1366, 7
  store i64 %1369, i64* %3, align 8
  %1370 = inttoptr i64 %1368 to i32*
  store i32 1, i32* %1370, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_409d42

block_.L_409d42:                                  ; preds = %block_409cfc, %block_.L_409d3b, %block_409d11
  %1371 = phi i64 [ %.pre59, %block_.L_409d3b ], [ %1365, %block_409d11 ], [ %1300, %block_409cfc ]
  %1372 = add i64 %1371, 5
  store i64 %1372, i64* %3, align 8
  br label %block_.L_409d47

block_.L_409d47:                                  ; preds = %block_.L_409d42, %block_.L_409cdb
  %storemerge51 = phi i64 [ %1245, %block_.L_409cdb ], [ %1372, %block_.L_409d42 ]
  %1373 = add i64 %storemerge51, 5
  store i64 %1373, i64* %3, align 8
  br label %block_.L_409d4c

block_.L_409d4c:                                  ; preds = %block_.L_409d47, %block_.L_409c7b
  %storemerge50 = phi i64 [ %1118, %block_.L_409c7b ], [ %1373, %block_.L_409d47 ]
  %1374 = add i64 %storemerge50, 5
  store i64 %1374, i64* %3, align 8
  br label %block_.L_409d51

block_.L_409d51:                                  ; preds = %block_.L_409d4c, %block_.L_409c1b
  %storemerge = phi i64 [ %991, %block_.L_409c1b ], [ %1374, %block_.L_409d4c ]
  %1375 = add i64 %storemerge, 12
  store i64 %1375, i64* %3, align 8
  br label %block_.L_409d5d

block_.L_409d56:                                  ; preds = %block_.L_409bbd
  %1376 = add i64 %852, -24
  %1377 = add i64 %866, 7
  store i64 %1377, i64* %3, align 8
  %1378 = inttoptr i64 %1376 to i32*
  store i32 1, i32* %1378, align 4
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_409d5d

block_.L_409d5d:                                  ; preds = %block_.L_409d56, %block_.L_409d51
  %1379 = phi i64 [ %.pre63, %block_.L_409d56 ], [ %1375, %block_.L_409d51 ]
  %1380 = load i64, i64* %RBP.i, align 8
  %1381 = add i64 %1380, -24
  %1382 = add i64 %1379, 4
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1381 to i32*
  %1384 = load i32, i32* %1383, align 4
  store i8 0, i8* %14, align 1
  %1385 = and i32 %1384, 255
  %1386 = tail call i32 @llvm.ctpop.i32(i32 %1385)
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  %1389 = xor i8 %1388, 1
  store i8 %1389, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1390 = icmp eq i32 %1384, 0
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %30, align 1
  %1392 = lshr i32 %1384, 31
  %1393 = trunc i32 %1392 to i8
  store i8 %1393, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v82 = select i1 %1390, i64 10, i64 36
  %1394 = add i64 %1379, %.v82
  store i64 %1394, i64* %3, align 8
  br i1 %1390, label %block_409d67, label %block_.L_409d81

block_409d67:                                     ; preds = %block_.L_409d5d
  %1395 = add i64 %1380, -16
  %1396 = add i64 %1394, 4
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i32*
  %1398 = load i32, i32* %1397, align 4
  store i8 0, i8* %14, align 1
  %1399 = and i32 %1398, 255
  %1400 = tail call i32 @llvm.ctpop.i32(i32 %1399)
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = xor i8 %1402, 1
  store i8 %1403, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1404 = icmp eq i32 %1398, 0
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %30, align 1
  %1406 = lshr i32 %1398, 31
  %1407 = trunc i32 %1406 to i8
  store i8 %1407, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v105 = select i1 %1404, i64 10, i64 26
  %1408 = add i64 %1394, %.v105
  store i64 %1408, i64* %3, align 8
  br i1 %1404, label %block_409d71, label %block_.L_409d81

block_409d71:                                     ; preds = %block_409d67
  %RDI.i608 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %1409 = add i64 %1380, -4
  %1410 = add i64 %1408, 3
  store i64 %1410, i64* %3, align 8
  %1411 = inttoptr i64 %1409 to i32*
  %1412 = load i32, i32* %1411, align 4
  %1413 = zext i32 %1412 to i64
  store i64 %1413, i64* %RDI.i608, align 8
  %RSI.i605 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %1414 = add i64 %1380, -8
  %1415 = add i64 %1408, 6
  store i64 %1415, i64* %3, align 8
  %1416 = inttoptr i64 %1414 to i32*
  %1417 = load i32, i32* %1416, align 4
  %1418 = zext i32 %1417 to i64
  store i64 %1418, i64* %RSI.i605, align 8
  %1419 = add i64 %1408, 2159
  %1420 = add i64 %1408, 11
  %1421 = load i64, i64* %6, align 8
  %1422 = add i64 %1421, -8
  %1423 = inttoptr i64 %1422 to i64*
  store i64 %1420, i64* %1423, align 8
  store i64 %1422, i64* %6, align 8
  store i64 %1419, i64* %3, align 8
  %call2_409d77 = tail call %struct.Memory* @sub_40a5e0.do_commit_suicide(%struct.State* nonnull %0, i64 %1419, %struct.Memory* %MEMORY.3)
  %1424 = load i64, i64* %3, align 8
  %1425 = add i64 %1424, 1487
  store i64 %1425, i64* %3, align 8
  br label %block_.L_40a34b

block_.L_409d81:                                  ; preds = %block_409d67, %block_.L_409d5d
  %1426 = phi i64 [ %1408, %block_409d67 ], [ %1394, %block_.L_409d5d ]
  %RDI.i600 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0xafc500_type* @G__0xafc500 to i64), i64* %RDI.i600, align 8
  store i64 ptrtoint (%G__0xb89e60_type* @G__0xb89e60 to i64), i64* %RAX.i976, align 8
  %1427 = add i64 %1380, -4
  %1428 = add i64 %1426, 29
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i32*
  %1430 = load i32, i32* %1429, align 4
  %1431 = sext i32 %1430 to i64
  %1432 = add i64 %1431, ptrtoint (%G__0xb89e60_type* @G__0xb89e60 to i64)
  store i64 %1432, i64* %RAX.i976, align 8
  %1433 = icmp ult i64 %1432, ptrtoint (%G__0xb89e60_type* @G__0xb89e60 to i64)
  %1434 = icmp ult i64 %1432, %1431
  %1435 = or i1 %1433, %1434
  %1436 = zext i1 %1435 to i8
  store i8 %1436, i8* %14, align 1
  %1437 = trunc i64 %1432 to i32
  %1438 = and i32 %1437, 255
  %1439 = tail call i32 @llvm.ctpop.i32(i32 %1438)
  %1440 = trunc i32 %1439 to i8
  %1441 = and i8 %1440, 1
  %1442 = xor i8 %1441, 1
  store i8 %1442, i8* %21, align 1
  %1443 = xor i64 %1431, ptrtoint (%G__0xb89e60_type* @G__0xb89e60 to i64)
  %1444 = xor i64 %1443, %1432
  %1445 = lshr i64 %1444, 4
  %1446 = trunc i64 %1445 to i8
  %1447 = and i8 %1446, 1
  store i8 %1447, i8* %27, align 1
  %1448 = icmp eq i64 %1432, 0
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %30, align 1
  %1450 = lshr i64 %1432, 63
  %1451 = trunc i64 %1450 to i8
  store i8 %1451, i8* %33, align 1
  %1452 = lshr i64 %1431, 63
  %1453 = xor i64 %1450, lshr (i64 ptrtoint (%G__0xb89e60_type* @G__0xb89e60 to i64), i64 63)
  %1454 = xor i64 %1450, %1452
  %1455 = add nuw nsw i64 %1453, %1454
  %1456 = icmp eq i64 %1455, 2
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %39, align 1
  %1458 = load i64, i64* bitcast (%G_0xa7f420_type* @G_0xa7f420 to i64*), align 8
  store i64 %1458, i64* %RCX.i922, align 8
  %1459 = add i64 %1426, 43
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1458 to i64*
  store i64 %1432, i64* %1460, align 8
  %1461 = load i64, i64* %RBP.i, align 8
  %1462 = add i64 %1461, -4
  %1463 = load i64, i64* %3, align 8
  %1464 = add i64 %1463, 4
  store i64 %1464, i64* %3, align 8
  %1465 = inttoptr i64 %1462 to i32*
  %1466 = load i32, i32* %1465, align 4
  %1467 = sext i32 %1466 to i64
  store i64 %1467, i64* %RAX.i976, align 8
  %RDX.i582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1468 = add nsw i64 %1467, 12099168
  %1469 = add i64 %1463, 12
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1468 to i8*
  %1471 = load i8, i8* %1470, align 1
  %1472 = zext i8 %1471 to i64
  store i64 %1472, i64* %RDX.i582, align 8
  %1473 = load i64, i64* bitcast (%G_0xa7f420_type* @G_0xa7f420 to i64*), align 8
  store i64 %1473, i64* %RAX.i976, align 8
  %1474 = add i64 %1473, 16
  store i64 %1474, i64* %RCX.i922, align 8
  %1475 = icmp ugt i64 %1473, -17
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %14, align 1
  %1477 = trunc i64 %1474 to i32
  %1478 = and i32 %1477, 255
  %1479 = tail call i32 @llvm.ctpop.i32(i32 %1478)
  %1480 = trunc i32 %1479 to i8
  %1481 = and i8 %1480, 1
  %1482 = xor i8 %1481, 1
  store i8 %1482, i8* %21, align 1
  %1483 = xor i64 %1473, 16
  %1484 = xor i64 %1483, %1474
  %1485 = lshr i64 %1484, 4
  %1486 = trunc i64 %1485 to i8
  %1487 = and i8 %1486, 1
  store i8 %1487, i8* %27, align 1
  %1488 = icmp eq i64 %1474, 0
  %1489 = zext i1 %1488 to i8
  store i8 %1489, i8* %30, align 1
  %1490 = lshr i64 %1474, 63
  %1491 = trunc i64 %1490 to i8
  store i8 %1491, i8* %33, align 1
  %1492 = lshr i64 %1473, 63
  %1493 = xor i64 %1490, %1492
  %1494 = add nuw nsw i64 %1493, %1490
  %1495 = icmp eq i64 %1494, 2
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %39, align 1
  store i64 %1474, i64* bitcast (%G_0xa7f420_type* @G_0xa7f420 to i64*), align 8
  %1497 = add i64 %1473, 8
  %1498 = zext i8 %1471 to i32
  %1499 = add i64 %1463, 38
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1497 to i32*
  store i32 %1498, i32* %1500, align 4
  %1501 = load i64, i64* %RBP.i, align 8
  %1502 = add i64 %1501, -8
  %1503 = load i64, i64* %3, align 8
  %1504 = add i64 %1503, 3
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1502 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = zext i32 %1506 to i64
  store i64 %1507, i64* %RDX.i582, align 8
  %SIL.i564 = bitcast %union.anon* %45 to i8*
  %1508 = trunc i32 %1506 to i8
  store i8 %1508, i8* %SIL.i564, align 1
  %1509 = add i64 %1501, -4
  %1510 = add i64 %1503, 10
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i32*
  %1512 = load i32, i32* %1511, align 4
  %1513 = sext i32 %1512 to i64
  store i64 %1513, i64* %RAX.i976, align 8
  %1514 = add nsw i64 %1513, 12099168
  %1515 = add i64 %1503, 18
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i8*
  store i8 %1508, i8* %1516, align 1
  %RSI.i556 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %1517 = load i64, i64* %RBP.i, align 8
  %1518 = add i64 %1517, -4
  %1519 = load i64, i64* %3, align 8
  %1520 = add i64 %1519, 3
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1518 to i32*
  %1522 = load i32, i32* %1521, align 4
  %1523 = zext i32 %1522 to i64
  store i64 %1523, i64* %RSI.i556, align 8
  %1524 = add i64 %1517, -8
  %1525 = add i64 %1519, 6
  store i64 %1525, i64* %3, align 8
  %1526 = inttoptr i64 %1524 to i32*
  %1527 = load i32, i32* %1526, align 4
  %1528 = zext i32 %1527 to i64
  store i64 %1528, i64* %RDX.i582, align 8
  %1529 = add i64 %1519, 126348
  %1530 = add i64 %1519, 11
  %1531 = load i64, i64* %6, align 8
  %1532 = add i64 %1531, -8
  %1533 = inttoptr i64 %1532 to i64*
  store i64 %1530, i64* %1533, align 8
  store i64 %1532, i64* %6, align 8
  store i64 %1529, i64* %3, align 8
  %call2_409dea = tail call %struct.Memory* @sub_428b70.hashdata_invert_stone(%struct.State* nonnull %0, i64 %1529, %struct.Memory* %MEMORY.3)
  %1534 = load i64, i64* %3, align 8
  %1535 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1536 = add i32 %1535, 1
  %1537 = zext i32 %1536 to i64
  store i64 %1537, i64* %RAX.i976, align 8
  %1538 = icmp eq i32 %1535, -1
  %1539 = icmp eq i32 %1536, 0
  %1540 = or i1 %1538, %1539
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %14, align 1
  %1542 = and i32 %1536, 255
  %1543 = tail call i32 @llvm.ctpop.i32(i32 %1542)
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  %1546 = xor i8 %1545, 1
  store i8 %1546, i8* %21, align 1
  %1547 = xor i32 %1536, %1535
  %1548 = lshr i32 %1547, 4
  %1549 = trunc i32 %1548 to i8
  %1550 = and i8 %1549, 1
  store i8 %1550, i8* %27, align 1
  %1551 = zext i1 %1539 to i8
  store i8 %1551, i8* %30, align 1
  %1552 = lshr i32 %1536, 31
  %1553 = trunc i32 %1552 to i8
  store i8 %1553, i8* %33, align 1
  %1554 = lshr i32 %1535, 31
  %1555 = xor i32 %1552, %1554
  %1556 = add nuw nsw i32 %1555, %1552
  %1557 = icmp eq i32 %1556, 2
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %39, align 1
  store i32 %1536, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1559 = load i64, i64* %RBP.i, align 8
  %1560 = add i64 %1559, -32
  %1561 = add i64 %1534, 21
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1560 to i32*
  %1563 = load i32, i32* %1562, align 4
  %1564 = sext i32 %1563 to i64
  store i64 %1564, i64* %RCX.i922, align 8
  %1565 = add nsw i64 %1564, 12099168
  %1566 = add i64 %1534, 29
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i8*
  %1568 = load i8, i8* %1567, align 1
  %1569 = zext i8 %1568 to i64
  store i64 %1569, i64* %RAX.i976, align 8
  %1570 = zext i8 %1568 to i32
  %1571 = add i64 %1559, -8
  %1572 = add i64 %1534, 32
  store i64 %1572, i64* %3, align 8
  %1573 = inttoptr i64 %1571 to i32*
  %1574 = load i32, i32* %1573, align 4
  %1575 = sub i32 %1570, %1574
  %1576 = icmp ult i32 %1570, %1574
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %14, align 1
  %1578 = and i32 %1575, 255
  %1579 = tail call i32 @llvm.ctpop.i32(i32 %1578)
  %1580 = trunc i32 %1579 to i8
  %1581 = and i8 %1580, 1
  %1582 = xor i8 %1581, 1
  store i8 %1582, i8* %21, align 1
  %1583 = xor i32 %1574, %1570
  %1584 = xor i32 %1583, %1575
  %1585 = lshr i32 %1584, 4
  %1586 = trunc i32 %1585 to i8
  %1587 = and i8 %1586, 1
  store i8 %1587, i8* %27, align 1
  %1588 = icmp eq i32 %1575, 0
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %30, align 1
  %1590 = lshr i32 %1575, 31
  %1591 = trunc i32 %1590 to i8
  store i8 %1591, i8* %33, align 1
  %1592 = lshr i32 %1574, 31
  %1593 = add nuw nsw i32 %1590, %1592
  %1594 = icmp eq i32 %1593, 2
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %39, align 1
  %.v83 = select i1 %1588, i64 38, i64 162
  %1596 = add i64 %1534, %.v83
  store i64 %1596, i64* %3, align 8
  br i1 %1588, label %block_409e15, label %block_.L_409e91

block_409e15:                                     ; preds = %block_.L_409d81
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %1597 = add i64 %1596, 14
  store i64 %1597, i64* %3, align 8
  %1598 = load i32, i32* %1562, align 4
  %1599 = sext i32 %1598 to i64
  store i64 %1599, i64* %RCX.i922, align 8
  %1600 = shl nsw i64 %1599, 2
  %1601 = add nsw i64 %1600, 11187184
  %1602 = add i64 %1596, 22
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1601 to i32*
  %1604 = load i32, i32* %1603, align 4
  %1605 = sext i32 %1604 to i64
  %1606 = mul nsw i64 %1605, 744
  store i64 %1606, i64* %RCX.i922, align 8
  %1607 = lshr i64 %1606, 63
  %1608 = add i64 %1606, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1608, i64* %RAX.i976, align 8
  %1609 = icmp ult i64 %1608, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1610 = icmp ult i64 %1608, %1606
  %1611 = or i1 %1609, %1610
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %14, align 1
  %1613 = trunc i64 %1608 to i32
  %1614 = and i32 %1613, 248
  %1615 = tail call i32 @llvm.ctpop.i32(i32 %1614)
  %1616 = trunc i32 %1615 to i8
  %1617 = and i8 %1616, 1
  %1618 = xor i8 %1617, 1
  store i8 %1618, i8* %21, align 1
  %1619 = xor i64 %1606, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1620 = xor i64 %1619, %1608
  %1621 = lshr i64 %1620, 4
  %1622 = trunc i64 %1621 to i8
  %1623 = and i8 %1622, 1
  store i8 %1623, i8* %27, align 1
  %1624 = icmp eq i64 %1608, 0
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %30, align 1
  %1626 = lshr i64 %1608, 63
  %1627 = trunc i64 %1626 to i8
  store i8 %1627, i8* %33, align 1
  %1628 = xor i64 %1626, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1629 = xor i64 %1626, %1607
  %1630 = add nuw nsw i64 %1628, %1629
  %1631 = icmp eq i64 %1630, 2
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %39, align 1
  %1633 = add i64 %1606, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %1634 = add i64 %1596, 38
  store i64 %1634, i64* %3, align 8
  %1635 = inttoptr i64 %1633 to i32*
  %1636 = load i32, i32* %1635, align 4
  %1637 = zext i32 %1636 to i64
  store i64 %1637, i64* %RDX.i582, align 8
  %1638 = sub i32 %1636, %1536
  %1639 = icmp ult i32 %1636, %1536
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %14, align 1
  %1641 = and i32 %1638, 255
  %1642 = tail call i32 @llvm.ctpop.i32(i32 %1641)
  %1643 = trunc i32 %1642 to i8
  %1644 = and i8 %1643, 1
  %1645 = xor i8 %1644, 1
  store i8 %1645, i8* %21, align 1
  %1646 = xor i32 %1536, %1636
  %1647 = xor i32 %1646, %1638
  %1648 = lshr i32 %1647, 4
  %1649 = trunc i32 %1648 to i8
  %1650 = and i8 %1649, 1
  store i8 %1650, i8* %27, align 1
  %1651 = icmp eq i32 %1638, 0
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %30, align 1
  %1653 = lshr i32 %1638, 31
  %1654 = trunc i32 %1653 to i8
  store i8 %1654, i8* %33, align 1
  %1655 = lshr i32 %1636, 31
  %1656 = xor i32 %1552, %1655
  %1657 = xor i32 %1653, %1655
  %1658 = add nuw nsw i32 %1657, %1656
  %1659 = icmp eq i32 %1658, 2
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %39, align 1
  %.v104 = select i1 %1651, i64 124, i64 51
  %1661 = add i64 %1596, %.v104
  store i64 %1661, i64* %3, align 8
  br i1 %1651, label %block_409e15.block_.L_409e91_crit_edge, label %block_409e48

block_409e15.block_.L_409e91_crit_edge:           ; preds = %block_409e15
  %.pre64 = load i64, i64* %RBP.i, align 8
  br label %block_.L_409e91

block_409e48:                                     ; preds = %block_409e15
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %1662 = load i64, i64* %RBP.i, align 8
  %1663 = add i64 %1662, -20
  %1664 = add i64 %1661, 13
  store i64 %1664, i64* %3, align 8
  %1665 = inttoptr i64 %1663 to i32*
  %1666 = load i32, i32* %1665, align 4
  %1667 = add i32 %1666, 1
  %1668 = zext i32 %1667 to i64
  store i64 %1668, i64* %RCX.i922, align 8
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
  store i8 %1681, i8* %27, align 1
  %1682 = zext i1 %1670 to i8
  store i8 %1682, i8* %30, align 1
  %1683 = lshr i32 %1667, 31
  %1684 = trunc i32 %1683 to i8
  store i8 %1684, i8* %33, align 1
  %1685 = lshr i32 %1666, 31
  %1686 = xor i32 %1683, %1685
  %1687 = add nuw nsw i32 %1686, %1683
  %1688 = icmp eq i32 %1687, 2
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %39, align 1
  %1690 = add i64 %1661, 19
  store i64 %1690, i64* %3, align 8
  store i32 %1667, i32* %1665, align 4
  %1691 = load i64, i64* %RBP.i, align 8
  %1692 = add i64 %1691, -32
  %1693 = load i64, i64* %3, align 8
  %1694 = add i64 %1693, 4
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1692 to i32*
  %1696 = load i32, i32* %1695, align 4
  %1697 = sext i32 %1696 to i64
  store i64 %1697, i64* %RDX.i582, align 8
  %1698 = shl nsw i64 %1697, 2
  %1699 = add nsw i64 %1698, 11187184
  %1700 = add i64 %1693, 11
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1699 to i32*
  %1702 = load i32, i32* %1701, align 4
  %1703 = add i64 %1691, -28
  %1704 = add i64 %1693, 14
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to i32*
  store i32 %1702, i32* %1705, align 4
  %1706 = load i64, i64* %3, align 8
  %1707 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1708 = zext i32 %1707 to i64
  store i64 %1708, i64* %RCX.i922, align 8
  %1709 = load i64, i64* %RBP.i, align 8
  %1710 = add i64 %1709, -32
  %1711 = add i64 %1706, 11
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i32*
  %1713 = load i32, i32* %1712, align 4
  %1714 = sext i32 %1713 to i64
  store i64 %1714, i64* %RDX.i582, align 8
  %1715 = shl nsw i64 %1714, 2
  %1716 = add nsw i64 %1715, 11187184
  %1717 = add i64 %1706, 19
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1716 to i32*
  %1719 = load i32, i32* %1718, align 4
  %1720 = sext i32 %1719 to i64
  %1721 = mul nsw i64 %1720, 744
  store i64 %1721, i64* %RDX.i582, align 8
  %1722 = lshr i64 %1721, 63
  %1723 = load i64, i64* %RAX.i976, align 8
  %1724 = add i64 %1721, %1723
  store i64 %1724, i64* %RAX.i976, align 8
  %1725 = icmp ult i64 %1724, %1723
  %1726 = icmp ult i64 %1724, %1721
  %1727 = or i1 %1725, %1726
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %14, align 1
  %1729 = trunc i64 %1724 to i32
  %1730 = and i32 %1729, 255
  %1731 = tail call i32 @llvm.ctpop.i32(i32 %1730)
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  %1734 = xor i8 %1733, 1
  store i8 %1734, i8* %21, align 1
  %1735 = xor i64 %1721, %1723
  %1736 = xor i64 %1735, %1724
  %1737 = lshr i64 %1736, 4
  %1738 = trunc i64 %1737 to i8
  %1739 = and i8 %1738, 1
  store i8 %1739, i8* %27, align 1
  %1740 = icmp eq i64 %1724, 0
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %30, align 1
  %1742 = lshr i64 %1724, 63
  %1743 = trunc i64 %1742 to i8
  store i8 %1743, i8* %33, align 1
  %1744 = lshr i64 %1723, 63
  %1745 = xor i64 %1742, %1744
  %1746 = xor i64 %1742, %1722
  %1747 = add nuw nsw i64 %1745, %1746
  %1748 = icmp eq i64 %1747, 2
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %39, align 1
  %1750 = add i64 %1724, 740
  %1751 = add i64 %1706, 35
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i32*
  store i32 %1707, i32* %1752, align 4
  %1753 = load i64, i64* %3, align 8
  %1754 = add i64 %1753, 146
  br label %block_.L_409f1e

block_.L_409e91:                                  ; preds = %block_.L_409d81, %block_409e15.block_.L_409e91_crit_edge
  %1755 = phi i64 [ %1661, %block_409e15.block_.L_409e91_crit_edge ], [ %1596, %block_.L_409d81 ]
  %1756 = phi i64 [ %.pre64, %block_409e15.block_.L_409e91_crit_edge ], [ %1559, %block_.L_409d81 ]
  %1757 = add i64 %1756, -32
  %1758 = add i64 %1755, 4
  store i64 %1758, i64* %3, align 8
  %1759 = inttoptr i64 %1757 to i32*
  %1760 = load i32, i32* %1759, align 4
  %1761 = sext i32 %1760 to i64
  store i64 %1761, i64* %RAX.i976, align 8
  %1762 = add nsw i64 %1761, 12099168
  %1763 = add i64 %1755, 12
  store i64 %1763, i64* %3, align 8
  %1764 = inttoptr i64 %1762 to i8*
  %1765 = load i8, i8* %1764, align 1
  %1766 = zext i8 %1765 to i64
  store i64 %1766, i64* %RCX.i922, align 8
  %1767 = zext i8 %1765 to i32
  %1768 = add i64 %1756, -12
  %1769 = add i64 %1755, 15
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1768 to i32*
  %1771 = load i32, i32* %1770, align 4
  %1772 = sub i32 %1767, %1771
  %1773 = icmp ult i32 %1767, %1771
  %1774 = zext i1 %1773 to i8
  store i8 %1774, i8* %14, align 1
  %1775 = and i32 %1772, 255
  %1776 = tail call i32 @llvm.ctpop.i32(i32 %1775)
  %1777 = trunc i32 %1776 to i8
  %1778 = and i8 %1777, 1
  %1779 = xor i8 %1778, 1
  store i8 %1779, i8* %21, align 1
  %1780 = xor i32 %1771, %1767
  %1781 = xor i32 %1780, %1772
  %1782 = lshr i32 %1781, 4
  %1783 = trunc i32 %1782 to i8
  %1784 = and i8 %1783, 1
  store i8 %1784, i8* %27, align 1
  %1785 = icmp eq i32 %1772, 0
  %1786 = zext i1 %1785 to i8
  store i8 %1786, i8* %30, align 1
  %1787 = lshr i32 %1772, 31
  %1788 = trunc i32 %1787 to i8
  store i8 %1788, i8* %33, align 1
  %1789 = lshr i32 %1771, 31
  %1790 = add nuw nsw i32 %1787, %1789
  %1791 = icmp eq i32 %1790, 2
  %1792 = zext i1 %1791 to i8
  store i8 %1792, i8* %39, align 1
  %.v84 = select i1 %1785, i64 21, i64 136
  %1793 = add i64 %1755, %.v84
  store i64 %1793, i64* %3, align 8
  br i1 %1785, label %block_409ea6, label %block_.L_409f19

block_409ea6:                                     ; preds = %block_.L_409e91
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %1794 = add i64 %1793, 14
  store i64 %1794, i64* %3, align 8
  %1795 = load i32, i32* %1759, align 4
  %1796 = sext i32 %1795 to i64
  store i64 %1796, i64* %RCX.i922, align 8
  %1797 = shl nsw i64 %1796, 2
  %1798 = add nsw i64 %1797, 11187184
  %1799 = add i64 %1793, 22
  store i64 %1799, i64* %3, align 8
  %1800 = inttoptr i64 %1798 to i32*
  %1801 = load i32, i32* %1800, align 4
  %1802 = sext i32 %1801 to i64
  %1803 = mul nsw i64 %1802, 744
  store i64 %1803, i64* %RCX.i922, align 8
  %1804 = lshr i64 %1803, 63
  %1805 = add i64 %1803, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1805, i64* %RAX.i976, align 8
  %1806 = icmp ult i64 %1805, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1807 = icmp ult i64 %1805, %1803
  %1808 = or i1 %1806, %1807
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %14, align 1
  %1810 = trunc i64 %1805 to i32
  %1811 = and i32 %1810, 248
  %1812 = tail call i32 @llvm.ctpop.i32(i32 %1811)
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  %1815 = xor i8 %1814, 1
  store i8 %1815, i8* %21, align 1
  %1816 = xor i64 %1803, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1817 = xor i64 %1816, %1805
  %1818 = lshr i64 %1817, 4
  %1819 = trunc i64 %1818 to i8
  %1820 = and i8 %1819, 1
  store i8 %1820, i8* %27, align 1
  %1821 = icmp eq i64 %1805, 0
  %1822 = zext i1 %1821 to i8
  store i8 %1822, i8* %30, align 1
  %1823 = lshr i64 %1805, 63
  %1824 = trunc i64 %1823 to i8
  store i8 %1824, i8* %33, align 1
  %1825 = xor i64 %1823, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1826 = xor i64 %1823, %1804
  %1827 = add nuw nsw i64 %1825, %1826
  %1828 = icmp eq i64 %1827, 2
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %39, align 1
  %1830 = add i64 %1803, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %1831 = add i64 %1793, 38
  store i64 %1831, i64* %3, align 8
  %1832 = inttoptr i64 %1830 to i32*
  %1833 = load i32, i32* %1832, align 4
  %1834 = zext i32 %1833 to i64
  store i64 %1834, i64* %RDX.i582, align 8
  %1835 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1836 = sub i32 %1833, %1835
  %1837 = icmp ult i32 %1833, %1835
  %1838 = zext i1 %1837 to i8
  store i8 %1838, i8* %14, align 1
  %1839 = and i32 %1836, 255
  %1840 = tail call i32 @llvm.ctpop.i32(i32 %1839)
  %1841 = trunc i32 %1840 to i8
  %1842 = and i8 %1841, 1
  %1843 = xor i8 %1842, 1
  store i8 %1843, i8* %21, align 1
  %1844 = xor i32 %1835, %1833
  %1845 = xor i32 %1844, %1836
  %1846 = lshr i32 %1845, 4
  %1847 = trunc i32 %1846 to i8
  %1848 = and i8 %1847, 1
  store i8 %1848, i8* %27, align 1
  %1849 = icmp eq i32 %1836, 0
  %1850 = zext i1 %1849 to i8
  store i8 %1850, i8* %30, align 1
  %1851 = lshr i32 %1836, 31
  %1852 = trunc i32 %1851 to i8
  store i8 %1852, i8* %33, align 1
  %1853 = lshr i32 %1833, 31
  %1854 = lshr i32 %1835, 31
  %1855 = xor i32 %1854, %1853
  %1856 = xor i32 %1851, %1853
  %1857 = add nuw nsw i32 %1856, %1855
  %1858 = icmp eq i32 %1857, 2
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %39, align 1
  %.v103 = select i1 %1849, i64 115, i64 51
  %1860 = add i64 %1793, %.v103
  store i64 %1860, i64* %3, align 8
  br i1 %1849, label %block_.L_409f19, label %block_409ed9

block_409ed9:                                     ; preds = %block_409ea6
  %1861 = load i64, i64* %RBP.i, align 8
  %1862 = add i64 %1861, -32
  %1863 = add i64 %1860, 4
  store i64 %1863, i64* %3, align 8
  %1864 = inttoptr i64 %1862 to i32*
  %1865 = load i32, i32* %1864, align 4
  %1866 = sext i32 %1865 to i64
  store i64 %1866, i64* %RAX.i976, align 8
  %1867 = shl nsw i64 %1866, 2
  %1868 = add nsw i64 %1867, 11187184
  %1869 = add i64 %1860, 11
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1868 to i32*
  %1871 = load i32, i32* %1870, align 4
  %1872 = zext i32 %1871 to i64
  store i64 %1872, i64* %RDI.i600, align 8
  %1873 = add i64 %1861, -4
  %1874 = add i64 %1860, 14
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1873 to i32*
  %1876 = load i32, i32* %1875, align 4
  %1877 = zext i32 %1876 to i64
  store i64 %1877, i64* %RSI.i556, align 8
  %1878 = add i64 %1860, 2023
  %1879 = add i64 %1860, 19
  %1880 = load i64, i64* %6, align 8
  %1881 = add i64 %1880, -8
  %1882 = inttoptr i64 %1881 to i64*
  store i64 %1879, i64* %1882, align 8
  store i64 %1881, i64* %6, align 8
  store i64 %1878, i64* %3, align 8
  %call2_409ee7 = tail call %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* nonnull %0, i64 %1878, %struct.Memory* %call2_409dea)
  %1883 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %1884 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1885 = zext i32 %1884 to i64
  store i64 %1885, i64* %RSI.i556, align 8
  %1886 = load i64, i64* %RBP.i, align 8
  %1887 = add i64 %1886, -32
  %1888 = add i64 %1883, 21
  store i64 %1888, i64* %3, align 8
  %1889 = inttoptr i64 %1887 to i32*
  %1890 = load i32, i32* %1889, align 4
  %1891 = sext i32 %1890 to i64
  store i64 %1891, i64* %RCX.i922, align 8
  %1892 = shl nsw i64 %1891, 2
  %1893 = add nsw i64 %1892, 11187184
  %1894 = add i64 %1883, 29
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i32*
  %1896 = load i32, i32* %1895, align 4
  %1897 = sext i32 %1896 to i64
  %1898 = mul nsw i64 %1897, 744
  store i64 %1898, i64* %RCX.i922, align 8
  %1899 = lshr i64 %1898, 63
  %1900 = add i64 %1898, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1900, i64* %RAX.i976, align 8
  %1901 = icmp ult i64 %1900, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1902 = icmp ult i64 %1900, %1898
  %1903 = or i1 %1901, %1902
  %1904 = zext i1 %1903 to i8
  store i8 %1904, i8* %14, align 1
  %1905 = trunc i64 %1900 to i32
  %1906 = and i32 %1905, 248
  %1907 = tail call i32 @llvm.ctpop.i32(i32 %1906)
  %1908 = trunc i32 %1907 to i8
  %1909 = and i8 %1908, 1
  %1910 = xor i8 %1909, 1
  store i8 %1910, i8* %21, align 1
  %1911 = xor i64 %1898, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1912 = xor i64 %1911, %1900
  %1913 = lshr i64 %1912, 4
  %1914 = trunc i64 %1913 to i8
  %1915 = and i8 %1914, 1
  store i8 %1915, i8* %27, align 1
  %1916 = icmp eq i64 %1900, 0
  %1917 = zext i1 %1916 to i8
  store i8 %1917, i8* %30, align 1
  %1918 = lshr i64 %1900, 63
  %1919 = trunc i64 %1918 to i8
  store i8 %1919, i8* %33, align 1
  %1920 = xor i64 %1918, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1921 = xor i64 %1918, %1899
  %1922 = add nuw nsw i64 %1920, %1921
  %1923 = icmp eq i64 %1922, 2
  %1924 = zext i1 %1923 to i8
  store i8 %1924, i8* %39, align 1
  %1925 = add i64 %1898, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %1926 = add i64 %1883, 45
  store i64 %1926, i64* %3, align 8
  %1927 = inttoptr i64 %1925 to i32*
  store i32 %1884, i32* %1927, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_409f19

block_.L_409f19:                                  ; preds = %block_.L_409e91, %block_409ed9, %block_409ea6
  %1928 = phi i64 [ %1793, %block_.L_409e91 ], [ %1860, %block_409ea6 ], [ %.pre65, %block_409ed9 ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_409dea, %block_.L_409e91 ], [ %call2_409dea, %block_409ea6 ], [ %call2_409ee7, %block_409ed9 ]
  %1929 = add i64 %1928, 5
  store i64 %1929, i64* %3, align 8
  br label %block_.L_409f1e

block_.L_409f1e:                                  ; preds = %block_.L_409f19, %block_409e48
  %storemerge46 = phi i64 [ %1754, %block_409e48 ], [ %1929, %block_.L_409f19 ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_409dea, %block_409e48 ], [ %MEMORY.18, %block_.L_409f19 ]
  %1930 = load i64, i64* %RBP.i, align 8
  %1931 = add i64 %1930, -36
  %1932 = add i64 %storemerge46, 4
  store i64 %1932, i64* %3, align 8
  %1933 = inttoptr i64 %1931 to i32*
  %1934 = load i32, i32* %1933, align 4
  %1935 = sext i32 %1934 to i64
  store i64 %1935, i64* %RAX.i976, align 8
  %1936 = add nsw i64 %1935, 12099168
  %1937 = add i64 %storemerge46, 12
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i8*
  %1939 = load i8, i8* %1938, align 1
  %1940 = zext i8 %1939 to i64
  store i64 %1940, i64* %RCX.i922, align 8
  %1941 = zext i8 %1939 to i32
  %1942 = add i64 %1930, -8
  %1943 = add i64 %storemerge46, 15
  store i64 %1943, i64* %3, align 8
  %1944 = inttoptr i64 %1942 to i32*
  %1945 = load i32, i32* %1944, align 4
  %1946 = sub i32 %1941, %1945
  %1947 = icmp ult i32 %1941, %1945
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %14, align 1
  %1949 = and i32 %1946, 255
  %1950 = tail call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  store i8 %1953, i8* %21, align 1
  %1954 = xor i32 %1945, %1941
  %1955 = xor i32 %1954, %1946
  %1956 = lshr i32 %1955, 4
  %1957 = trunc i32 %1956 to i8
  %1958 = and i8 %1957, 1
  store i8 %1958, i8* %27, align 1
  %1959 = icmp eq i32 %1946, 0
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %30, align 1
  %1961 = lshr i32 %1946, 31
  %1962 = trunc i32 %1961 to i8
  store i8 %1962, i8* %33, align 1
  %1963 = lshr i32 %1945, 31
  %1964 = add nuw nsw i32 %1961, %1963
  %1965 = icmp eq i32 %1964, 2
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %39, align 1
  %.v85 = select i1 %1959, i64 21, i64 145
  %1967 = add i64 %storemerge46, %.v85
  store i64 %1967, i64* %3, align 8
  br i1 %1959, label %block_409f33, label %block_.L_409faf

block_409f33:                                     ; preds = %block_.L_409f1e
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %1968 = add i64 %1967, 14
  store i64 %1968, i64* %3, align 8
  %1969 = load i32, i32* %1933, align 4
  %1970 = sext i32 %1969 to i64
  store i64 %1970, i64* %RCX.i922, align 8
  %1971 = shl nsw i64 %1970, 2
  %1972 = add nsw i64 %1971, 11187184
  %1973 = add i64 %1967, 22
  store i64 %1973, i64* %3, align 8
  %1974 = inttoptr i64 %1972 to i32*
  %1975 = load i32, i32* %1974, align 4
  %1976 = sext i32 %1975 to i64
  %1977 = mul nsw i64 %1976, 744
  store i64 %1977, i64* %RCX.i922, align 8
  %1978 = lshr i64 %1977, 63
  %1979 = add i64 %1977, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1979, i64* %RAX.i976, align 8
  %1980 = icmp ult i64 %1979, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1981 = icmp ult i64 %1979, %1977
  %1982 = or i1 %1980, %1981
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %14, align 1
  %1984 = trunc i64 %1979 to i32
  %1985 = and i32 %1984, 248
  %1986 = tail call i32 @llvm.ctpop.i32(i32 %1985)
  %1987 = trunc i32 %1986 to i8
  %1988 = and i8 %1987, 1
  %1989 = xor i8 %1988, 1
  store i8 %1989, i8* %21, align 1
  %1990 = xor i64 %1977, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1991 = xor i64 %1990, %1979
  %1992 = lshr i64 %1991, 4
  %1993 = trunc i64 %1992 to i8
  %1994 = and i8 %1993, 1
  store i8 %1994, i8* %27, align 1
  %1995 = icmp eq i64 %1979, 0
  %1996 = zext i1 %1995 to i8
  store i8 %1996, i8* %30, align 1
  %1997 = lshr i64 %1979, 63
  %1998 = trunc i64 %1997 to i8
  store i8 %1998, i8* %33, align 1
  %1999 = xor i64 %1997, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2000 = xor i64 %1997, %1978
  %2001 = add nuw nsw i64 %1999, %2000
  %2002 = icmp eq i64 %2001, 2
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %39, align 1
  %2004 = add i64 %1977, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2005 = add i64 %1967, 38
  store i64 %2005, i64* %3, align 8
  %2006 = inttoptr i64 %2004 to i32*
  %2007 = load i32, i32* %2006, align 4
  %2008 = zext i32 %2007 to i64
  store i64 %2008, i64* %RDX.i582, align 8
  %2009 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2010 = sub i32 %2007, %2009
  %2011 = icmp ult i32 %2007, %2009
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %14, align 1
  %2013 = and i32 %2010, 255
  %2014 = tail call i32 @llvm.ctpop.i32(i32 %2013)
  %2015 = trunc i32 %2014 to i8
  %2016 = and i8 %2015, 1
  %2017 = xor i8 %2016, 1
  store i8 %2017, i8* %21, align 1
  %2018 = xor i32 %2009, %2007
  %2019 = xor i32 %2018, %2010
  %2020 = lshr i32 %2019, 4
  %2021 = trunc i32 %2020 to i8
  %2022 = and i8 %2021, 1
  store i8 %2022, i8* %27, align 1
  %2023 = icmp eq i32 %2010, 0
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %30, align 1
  %2025 = lshr i32 %2010, 31
  %2026 = trunc i32 %2025 to i8
  store i8 %2026, i8* %33, align 1
  %2027 = lshr i32 %2007, 31
  %2028 = lshr i32 %2009, 31
  %2029 = xor i32 %2028, %2027
  %2030 = xor i32 %2025, %2027
  %2031 = add nuw nsw i32 %2030, %2029
  %2032 = icmp eq i32 %2031, 2
  %2033 = zext i1 %2032 to i8
  store i8 %2033, i8* %39, align 1
  %.v102 = select i1 %2023, i64 124, i64 51
  %2034 = add i64 %1967, %.v102
  store i64 %2034, i64* %3, align 8
  br i1 %2023, label %block_409f33.block_.L_409faf_crit_edge, label %block_409f66

block_409f33.block_.L_409faf_crit_edge:           ; preds = %block_409f33
  %.pre66 = load i64, i64* %RBP.i, align 8
  br label %block_.L_409faf

block_409f66:                                     ; preds = %block_409f33
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %2035 = load i64, i64* %RBP.i, align 8
  %2036 = add i64 %2035, -20
  %2037 = add i64 %2034, 13
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2036 to i32*
  %2039 = load i32, i32* %2038, align 4
  %2040 = add i32 %2039, 1
  %2041 = zext i32 %2040 to i64
  store i64 %2041, i64* %RCX.i922, align 8
  %2042 = icmp eq i32 %2039, -1
  %2043 = icmp eq i32 %2040, 0
  %2044 = or i1 %2042, %2043
  %2045 = zext i1 %2044 to i8
  store i8 %2045, i8* %14, align 1
  %2046 = and i32 %2040, 255
  %2047 = tail call i32 @llvm.ctpop.i32(i32 %2046)
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  %2050 = xor i8 %2049, 1
  store i8 %2050, i8* %21, align 1
  %2051 = xor i32 %2040, %2039
  %2052 = lshr i32 %2051, 4
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  store i8 %2054, i8* %27, align 1
  %2055 = zext i1 %2043 to i8
  store i8 %2055, i8* %30, align 1
  %2056 = lshr i32 %2040, 31
  %2057 = trunc i32 %2056 to i8
  store i8 %2057, i8* %33, align 1
  %2058 = lshr i32 %2039, 31
  %2059 = xor i32 %2056, %2058
  %2060 = add nuw nsw i32 %2059, %2056
  %2061 = icmp eq i32 %2060, 2
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %39, align 1
  %2063 = add i64 %2034, 19
  store i64 %2063, i64* %3, align 8
  store i32 %2040, i32* %2038, align 4
  %2064 = load i64, i64* %RBP.i, align 8
  %2065 = add i64 %2064, -36
  %2066 = load i64, i64* %3, align 8
  %2067 = add i64 %2066, 4
  store i64 %2067, i64* %3, align 8
  %2068 = inttoptr i64 %2065 to i32*
  %2069 = load i32, i32* %2068, align 4
  %2070 = sext i32 %2069 to i64
  store i64 %2070, i64* %RDX.i582, align 8
  %2071 = shl nsw i64 %2070, 2
  %2072 = add nsw i64 %2071, 11187184
  %2073 = add i64 %2066, 11
  store i64 %2073, i64* %3, align 8
  %2074 = inttoptr i64 %2072 to i32*
  %2075 = load i32, i32* %2074, align 4
  %2076 = add i64 %2064, -28
  %2077 = add i64 %2066, 14
  store i64 %2077, i64* %3, align 8
  %2078 = inttoptr i64 %2076 to i32*
  store i32 %2075, i32* %2078, align 4
  %2079 = load i64, i64* %3, align 8
  %2080 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2081 = zext i32 %2080 to i64
  store i64 %2081, i64* %RCX.i922, align 8
  %2082 = load i64, i64* %RBP.i, align 8
  %2083 = add i64 %2082, -36
  %2084 = add i64 %2079, 11
  store i64 %2084, i64* %3, align 8
  %2085 = inttoptr i64 %2083 to i32*
  %2086 = load i32, i32* %2085, align 4
  %2087 = sext i32 %2086 to i64
  store i64 %2087, i64* %RDX.i582, align 8
  %2088 = shl nsw i64 %2087, 2
  %2089 = add nsw i64 %2088, 11187184
  %2090 = add i64 %2079, 19
  store i64 %2090, i64* %3, align 8
  %2091 = inttoptr i64 %2089 to i32*
  %2092 = load i32, i32* %2091, align 4
  %2093 = sext i32 %2092 to i64
  %2094 = mul nsw i64 %2093, 744
  store i64 %2094, i64* %RDX.i582, align 8
  %2095 = lshr i64 %2094, 63
  %2096 = load i64, i64* %RAX.i976, align 8
  %2097 = add i64 %2094, %2096
  store i64 %2097, i64* %RAX.i976, align 8
  %2098 = icmp ult i64 %2097, %2096
  %2099 = icmp ult i64 %2097, %2094
  %2100 = or i1 %2098, %2099
  %2101 = zext i1 %2100 to i8
  store i8 %2101, i8* %14, align 1
  %2102 = trunc i64 %2097 to i32
  %2103 = and i32 %2102, 255
  %2104 = tail call i32 @llvm.ctpop.i32(i32 %2103)
  %2105 = trunc i32 %2104 to i8
  %2106 = and i8 %2105, 1
  %2107 = xor i8 %2106, 1
  store i8 %2107, i8* %21, align 1
  %2108 = xor i64 %2094, %2096
  %2109 = xor i64 %2108, %2097
  %2110 = lshr i64 %2109, 4
  %2111 = trunc i64 %2110 to i8
  %2112 = and i8 %2111, 1
  store i8 %2112, i8* %27, align 1
  %2113 = icmp eq i64 %2097, 0
  %2114 = zext i1 %2113 to i8
  store i8 %2114, i8* %30, align 1
  %2115 = lshr i64 %2097, 63
  %2116 = trunc i64 %2115 to i8
  store i8 %2116, i8* %33, align 1
  %2117 = lshr i64 %2096, 63
  %2118 = xor i64 %2115, %2117
  %2119 = xor i64 %2115, %2095
  %2120 = add nuw nsw i64 %2118, %2119
  %2121 = icmp eq i64 %2120, 2
  %2122 = zext i1 %2121 to i8
  store i8 %2122, i8* %39, align 1
  %2123 = add i64 %2097, 740
  %2124 = add i64 %2079, 35
  store i64 %2124, i64* %3, align 8
  %2125 = inttoptr i64 %2123 to i32*
  store i32 %2080, i32* %2125, align 4
  %2126 = load i64, i64* %3, align 8
  %2127 = add i64 %2126, 146
  br label %block_.L_40a03c

block_.L_409faf:                                  ; preds = %block_.L_409f1e, %block_409f33.block_.L_409faf_crit_edge
  %2128 = phi i64 [ %2034, %block_409f33.block_.L_409faf_crit_edge ], [ %1967, %block_.L_409f1e ]
  %2129 = phi i64 [ %.pre66, %block_409f33.block_.L_409faf_crit_edge ], [ %1930, %block_.L_409f1e ]
  %2130 = add i64 %2129, -36
  %2131 = add i64 %2128, 4
  store i64 %2131, i64* %3, align 8
  %2132 = inttoptr i64 %2130 to i32*
  %2133 = load i32, i32* %2132, align 4
  %2134 = sext i32 %2133 to i64
  store i64 %2134, i64* %RAX.i976, align 8
  %2135 = add nsw i64 %2134, 12099168
  %2136 = add i64 %2128, 12
  store i64 %2136, i64* %3, align 8
  %2137 = inttoptr i64 %2135 to i8*
  %2138 = load i8, i8* %2137, align 1
  %2139 = zext i8 %2138 to i64
  store i64 %2139, i64* %RCX.i922, align 8
  %2140 = zext i8 %2138 to i32
  %2141 = add i64 %2129, -12
  %2142 = add i64 %2128, 15
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2141 to i32*
  %2144 = load i32, i32* %2143, align 4
  %2145 = sub i32 %2140, %2144
  %2146 = icmp ult i32 %2140, %2144
  %2147 = zext i1 %2146 to i8
  store i8 %2147, i8* %14, align 1
  %2148 = and i32 %2145, 255
  %2149 = tail call i32 @llvm.ctpop.i32(i32 %2148)
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  %2152 = xor i8 %2151, 1
  store i8 %2152, i8* %21, align 1
  %2153 = xor i32 %2144, %2140
  %2154 = xor i32 %2153, %2145
  %2155 = lshr i32 %2154, 4
  %2156 = trunc i32 %2155 to i8
  %2157 = and i8 %2156, 1
  store i8 %2157, i8* %27, align 1
  %2158 = icmp eq i32 %2145, 0
  %2159 = zext i1 %2158 to i8
  store i8 %2159, i8* %30, align 1
  %2160 = lshr i32 %2145, 31
  %2161 = trunc i32 %2160 to i8
  store i8 %2161, i8* %33, align 1
  %2162 = lshr i32 %2144, 31
  %2163 = add nuw nsw i32 %2160, %2162
  %2164 = icmp eq i32 %2163, 2
  %2165 = zext i1 %2164 to i8
  store i8 %2165, i8* %39, align 1
  %.v86 = select i1 %2158, i64 21, i64 136
  %2166 = add i64 %2128, %.v86
  store i64 %2166, i64* %3, align 8
  br i1 %2158, label %block_409fc4, label %block_.L_40a037

block_409fc4:                                     ; preds = %block_.L_409faf
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %2167 = add i64 %2166, 14
  store i64 %2167, i64* %3, align 8
  %2168 = load i32, i32* %2132, align 4
  %2169 = sext i32 %2168 to i64
  store i64 %2169, i64* %RCX.i922, align 8
  %2170 = shl nsw i64 %2169, 2
  %2171 = add nsw i64 %2170, 11187184
  %2172 = add i64 %2166, 22
  store i64 %2172, i64* %3, align 8
  %2173 = inttoptr i64 %2171 to i32*
  %2174 = load i32, i32* %2173, align 4
  %2175 = sext i32 %2174 to i64
  %2176 = mul nsw i64 %2175, 744
  store i64 %2176, i64* %RCX.i922, align 8
  %2177 = lshr i64 %2176, 63
  %2178 = add i64 %2176, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2178, i64* %RAX.i976, align 8
  %2179 = icmp ult i64 %2178, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2180 = icmp ult i64 %2178, %2176
  %2181 = or i1 %2179, %2180
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %14, align 1
  %2183 = trunc i64 %2178 to i32
  %2184 = and i32 %2183, 248
  %2185 = tail call i32 @llvm.ctpop.i32(i32 %2184)
  %2186 = trunc i32 %2185 to i8
  %2187 = and i8 %2186, 1
  %2188 = xor i8 %2187, 1
  store i8 %2188, i8* %21, align 1
  %2189 = xor i64 %2176, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2190 = xor i64 %2189, %2178
  %2191 = lshr i64 %2190, 4
  %2192 = trunc i64 %2191 to i8
  %2193 = and i8 %2192, 1
  store i8 %2193, i8* %27, align 1
  %2194 = icmp eq i64 %2178, 0
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %30, align 1
  %2196 = lshr i64 %2178, 63
  %2197 = trunc i64 %2196 to i8
  store i8 %2197, i8* %33, align 1
  %2198 = xor i64 %2196, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2199 = xor i64 %2196, %2177
  %2200 = add nuw nsw i64 %2198, %2199
  %2201 = icmp eq i64 %2200, 2
  %2202 = zext i1 %2201 to i8
  store i8 %2202, i8* %39, align 1
  %2203 = add i64 %2176, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2204 = add i64 %2166, 38
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i32*
  %2206 = load i32, i32* %2205, align 4
  %2207 = zext i32 %2206 to i64
  store i64 %2207, i64* %RDX.i582, align 8
  %2208 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2209 = sub i32 %2206, %2208
  %2210 = icmp ult i32 %2206, %2208
  %2211 = zext i1 %2210 to i8
  store i8 %2211, i8* %14, align 1
  %2212 = and i32 %2209, 255
  %2213 = tail call i32 @llvm.ctpop.i32(i32 %2212)
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  %2216 = xor i8 %2215, 1
  store i8 %2216, i8* %21, align 1
  %2217 = xor i32 %2208, %2206
  %2218 = xor i32 %2217, %2209
  %2219 = lshr i32 %2218, 4
  %2220 = trunc i32 %2219 to i8
  %2221 = and i8 %2220, 1
  store i8 %2221, i8* %27, align 1
  %2222 = icmp eq i32 %2209, 0
  %2223 = zext i1 %2222 to i8
  store i8 %2223, i8* %30, align 1
  %2224 = lshr i32 %2209, 31
  %2225 = trunc i32 %2224 to i8
  store i8 %2225, i8* %33, align 1
  %2226 = lshr i32 %2206, 31
  %2227 = lshr i32 %2208, 31
  %2228 = xor i32 %2227, %2226
  %2229 = xor i32 %2224, %2226
  %2230 = add nuw nsw i32 %2229, %2228
  %2231 = icmp eq i32 %2230, 2
  %2232 = zext i1 %2231 to i8
  store i8 %2232, i8* %39, align 1
  %.v101 = select i1 %2222, i64 115, i64 51
  %2233 = add i64 %2166, %.v101
  store i64 %2233, i64* %3, align 8
  br i1 %2222, label %block_.L_40a037, label %block_409ff7

block_409ff7:                                     ; preds = %block_409fc4
  %2234 = load i64, i64* %RBP.i, align 8
  %2235 = add i64 %2234, -36
  %2236 = add i64 %2233, 4
  store i64 %2236, i64* %3, align 8
  %2237 = inttoptr i64 %2235 to i32*
  %2238 = load i32, i32* %2237, align 4
  %2239 = sext i32 %2238 to i64
  store i64 %2239, i64* %RAX.i976, align 8
  %2240 = shl nsw i64 %2239, 2
  %2241 = add nsw i64 %2240, 11187184
  %2242 = add i64 %2233, 11
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2241 to i32*
  %2244 = load i32, i32* %2243, align 4
  %2245 = zext i32 %2244 to i64
  store i64 %2245, i64* %RDI.i600, align 8
  %2246 = add i64 %2234, -4
  %2247 = add i64 %2233, 14
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i32*
  %2249 = load i32, i32* %2248, align 4
  %2250 = zext i32 %2249 to i64
  store i64 %2250, i64* %RSI.i556, align 8
  %2251 = add i64 %2233, 1737
  %2252 = add i64 %2233, 19
  %2253 = load i64, i64* %6, align 8
  %2254 = add i64 %2253, -8
  %2255 = inttoptr i64 %2254 to i64*
  store i64 %2252, i64* %2255, align 8
  store i64 %2254, i64* %6, align 8
  store i64 %2251, i64* %3, align 8
  %call2_40a005 = tail call %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* nonnull %0, i64 %2251, %struct.Memory* %MEMORY.19)
  %2256 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %2257 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2258 = zext i32 %2257 to i64
  store i64 %2258, i64* %RSI.i556, align 8
  %2259 = load i64, i64* %RBP.i, align 8
  %2260 = add i64 %2259, -36
  %2261 = add i64 %2256, 21
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i32*
  %2263 = load i32, i32* %2262, align 4
  %2264 = sext i32 %2263 to i64
  store i64 %2264, i64* %RCX.i922, align 8
  %2265 = shl nsw i64 %2264, 2
  %2266 = add nsw i64 %2265, 11187184
  %2267 = add i64 %2256, 29
  store i64 %2267, i64* %3, align 8
  %2268 = inttoptr i64 %2266 to i32*
  %2269 = load i32, i32* %2268, align 4
  %2270 = sext i32 %2269 to i64
  %2271 = mul nsw i64 %2270, 744
  store i64 %2271, i64* %RCX.i922, align 8
  %2272 = lshr i64 %2271, 63
  %2273 = add i64 %2271, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2273, i64* %RAX.i976, align 8
  %2274 = icmp ult i64 %2273, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2275 = icmp ult i64 %2273, %2271
  %2276 = or i1 %2274, %2275
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %14, align 1
  %2278 = trunc i64 %2273 to i32
  %2279 = and i32 %2278, 248
  %2280 = tail call i32 @llvm.ctpop.i32(i32 %2279)
  %2281 = trunc i32 %2280 to i8
  %2282 = and i8 %2281, 1
  %2283 = xor i8 %2282, 1
  store i8 %2283, i8* %21, align 1
  %2284 = xor i64 %2271, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2285 = xor i64 %2284, %2273
  %2286 = lshr i64 %2285, 4
  %2287 = trunc i64 %2286 to i8
  %2288 = and i8 %2287, 1
  store i8 %2288, i8* %27, align 1
  %2289 = icmp eq i64 %2273, 0
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %30, align 1
  %2291 = lshr i64 %2273, 63
  %2292 = trunc i64 %2291 to i8
  store i8 %2292, i8* %33, align 1
  %2293 = xor i64 %2291, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2294 = xor i64 %2291, %2272
  %2295 = add nuw nsw i64 %2293, %2294
  %2296 = icmp eq i64 %2295, 2
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %39, align 1
  %2298 = add i64 %2271, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2299 = add i64 %2256, 45
  store i64 %2299, i64* %3, align 8
  %2300 = inttoptr i64 %2298 to i32*
  store i32 %2257, i32* %2300, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_40a037

block_.L_40a037:                                  ; preds = %block_.L_409faf, %block_409ff7, %block_409fc4
  %2301 = phi i64 [ %2166, %block_.L_409faf ], [ %2233, %block_409fc4 ], [ %.pre67, %block_409ff7 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.19, %block_.L_409faf ], [ %MEMORY.19, %block_409fc4 ], [ %call2_40a005, %block_409ff7 ]
  %2302 = add i64 %2301, 5
  store i64 %2302, i64* %3, align 8
  br label %block_.L_40a03c

block_.L_40a03c:                                  ; preds = %block_.L_40a037, %block_409f66
  %storemerge47 = phi i64 [ %2127, %block_409f66 ], [ %2302, %block_.L_40a037 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.19, %block_409f66 ], [ %MEMORY.21, %block_.L_40a037 ]
  %2303 = load i64, i64* %RBP.i, align 8
  %2304 = add i64 %2303, -40
  %2305 = add i64 %storemerge47, 4
  store i64 %2305, i64* %3, align 8
  %2306 = inttoptr i64 %2304 to i32*
  %2307 = load i32, i32* %2306, align 4
  %2308 = sext i32 %2307 to i64
  store i64 %2308, i64* %RAX.i976, align 8
  %2309 = add nsw i64 %2308, 12099168
  %2310 = add i64 %storemerge47, 12
  store i64 %2310, i64* %3, align 8
  %2311 = inttoptr i64 %2309 to i8*
  %2312 = load i8, i8* %2311, align 1
  %2313 = zext i8 %2312 to i64
  store i64 %2313, i64* %RCX.i922, align 8
  %2314 = zext i8 %2312 to i32
  %2315 = add i64 %2303, -8
  %2316 = add i64 %storemerge47, 15
  store i64 %2316, i64* %3, align 8
  %2317 = inttoptr i64 %2315 to i32*
  %2318 = load i32, i32* %2317, align 4
  %2319 = sub i32 %2314, %2318
  %2320 = icmp ult i32 %2314, %2318
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %14, align 1
  %2322 = and i32 %2319, 255
  %2323 = tail call i32 @llvm.ctpop.i32(i32 %2322)
  %2324 = trunc i32 %2323 to i8
  %2325 = and i8 %2324, 1
  %2326 = xor i8 %2325, 1
  store i8 %2326, i8* %21, align 1
  %2327 = xor i32 %2318, %2314
  %2328 = xor i32 %2327, %2319
  %2329 = lshr i32 %2328, 4
  %2330 = trunc i32 %2329 to i8
  %2331 = and i8 %2330, 1
  store i8 %2331, i8* %27, align 1
  %2332 = icmp eq i32 %2319, 0
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %30, align 1
  %2334 = lshr i32 %2319, 31
  %2335 = trunc i32 %2334 to i8
  store i8 %2335, i8* %33, align 1
  %2336 = lshr i32 %2318, 31
  %2337 = add nuw nsw i32 %2334, %2336
  %2338 = icmp eq i32 %2337, 2
  %2339 = zext i1 %2338 to i8
  store i8 %2339, i8* %39, align 1
  %.v87 = select i1 %2332, i64 21, i64 145
  %2340 = add i64 %storemerge47, %.v87
  store i64 %2340, i64* %3, align 8
  br i1 %2332, label %block_40a051, label %block_.L_40a0cd

block_40a051:                                     ; preds = %block_.L_40a03c
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %2341 = add i64 %2340, 14
  store i64 %2341, i64* %3, align 8
  %2342 = load i32, i32* %2306, align 4
  %2343 = sext i32 %2342 to i64
  store i64 %2343, i64* %RCX.i922, align 8
  %2344 = shl nsw i64 %2343, 2
  %2345 = add nsw i64 %2344, 11187184
  %2346 = add i64 %2340, 22
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to i32*
  %2348 = load i32, i32* %2347, align 4
  %2349 = sext i32 %2348 to i64
  %2350 = mul nsw i64 %2349, 744
  store i64 %2350, i64* %RCX.i922, align 8
  %2351 = lshr i64 %2350, 63
  %2352 = add i64 %2350, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2352, i64* %RAX.i976, align 8
  %2353 = icmp ult i64 %2352, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2354 = icmp ult i64 %2352, %2350
  %2355 = or i1 %2353, %2354
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %14, align 1
  %2357 = trunc i64 %2352 to i32
  %2358 = and i32 %2357, 248
  %2359 = tail call i32 @llvm.ctpop.i32(i32 %2358)
  %2360 = trunc i32 %2359 to i8
  %2361 = and i8 %2360, 1
  %2362 = xor i8 %2361, 1
  store i8 %2362, i8* %21, align 1
  %2363 = xor i64 %2350, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2364 = xor i64 %2363, %2352
  %2365 = lshr i64 %2364, 4
  %2366 = trunc i64 %2365 to i8
  %2367 = and i8 %2366, 1
  store i8 %2367, i8* %27, align 1
  %2368 = icmp eq i64 %2352, 0
  %2369 = zext i1 %2368 to i8
  store i8 %2369, i8* %30, align 1
  %2370 = lshr i64 %2352, 63
  %2371 = trunc i64 %2370 to i8
  store i8 %2371, i8* %33, align 1
  %2372 = xor i64 %2370, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2373 = xor i64 %2370, %2351
  %2374 = add nuw nsw i64 %2372, %2373
  %2375 = icmp eq i64 %2374, 2
  %2376 = zext i1 %2375 to i8
  store i8 %2376, i8* %39, align 1
  %2377 = add i64 %2350, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2378 = add i64 %2340, 38
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2377 to i32*
  %2380 = load i32, i32* %2379, align 4
  %2381 = zext i32 %2380 to i64
  store i64 %2381, i64* %RDX.i582, align 8
  %2382 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2383 = sub i32 %2380, %2382
  %2384 = icmp ult i32 %2380, %2382
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %14, align 1
  %2386 = and i32 %2383, 255
  %2387 = tail call i32 @llvm.ctpop.i32(i32 %2386)
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  %2390 = xor i8 %2389, 1
  store i8 %2390, i8* %21, align 1
  %2391 = xor i32 %2382, %2380
  %2392 = xor i32 %2391, %2383
  %2393 = lshr i32 %2392, 4
  %2394 = trunc i32 %2393 to i8
  %2395 = and i8 %2394, 1
  store i8 %2395, i8* %27, align 1
  %2396 = icmp eq i32 %2383, 0
  %2397 = zext i1 %2396 to i8
  store i8 %2397, i8* %30, align 1
  %2398 = lshr i32 %2383, 31
  %2399 = trunc i32 %2398 to i8
  store i8 %2399, i8* %33, align 1
  %2400 = lshr i32 %2380, 31
  %2401 = lshr i32 %2382, 31
  %2402 = xor i32 %2401, %2400
  %2403 = xor i32 %2398, %2400
  %2404 = add nuw nsw i32 %2403, %2402
  %2405 = icmp eq i32 %2404, 2
  %2406 = zext i1 %2405 to i8
  store i8 %2406, i8* %39, align 1
  %.v100 = select i1 %2396, i64 124, i64 51
  %2407 = add i64 %2340, %.v100
  store i64 %2407, i64* %3, align 8
  br i1 %2396, label %block_40a051.block_.L_40a0cd_crit_edge, label %block_40a084

block_40a051.block_.L_40a0cd_crit_edge:           ; preds = %block_40a051
  %.pre68 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40a0cd

block_40a084:                                     ; preds = %block_40a051
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %2408 = load i64, i64* %RBP.i, align 8
  %2409 = add i64 %2408, -20
  %2410 = add i64 %2407, 13
  store i64 %2410, i64* %3, align 8
  %2411 = inttoptr i64 %2409 to i32*
  %2412 = load i32, i32* %2411, align 4
  %2413 = add i32 %2412, 1
  %2414 = zext i32 %2413 to i64
  store i64 %2414, i64* %RCX.i922, align 8
  %2415 = icmp eq i32 %2412, -1
  %2416 = icmp eq i32 %2413, 0
  %2417 = or i1 %2415, %2416
  %2418 = zext i1 %2417 to i8
  store i8 %2418, i8* %14, align 1
  %2419 = and i32 %2413, 255
  %2420 = tail call i32 @llvm.ctpop.i32(i32 %2419)
  %2421 = trunc i32 %2420 to i8
  %2422 = and i8 %2421, 1
  %2423 = xor i8 %2422, 1
  store i8 %2423, i8* %21, align 1
  %2424 = xor i32 %2413, %2412
  %2425 = lshr i32 %2424, 4
  %2426 = trunc i32 %2425 to i8
  %2427 = and i8 %2426, 1
  store i8 %2427, i8* %27, align 1
  %2428 = zext i1 %2416 to i8
  store i8 %2428, i8* %30, align 1
  %2429 = lshr i32 %2413, 31
  %2430 = trunc i32 %2429 to i8
  store i8 %2430, i8* %33, align 1
  %2431 = lshr i32 %2412, 31
  %2432 = xor i32 %2429, %2431
  %2433 = add nuw nsw i32 %2432, %2429
  %2434 = icmp eq i32 %2433, 2
  %2435 = zext i1 %2434 to i8
  store i8 %2435, i8* %39, align 1
  %2436 = add i64 %2407, 19
  store i64 %2436, i64* %3, align 8
  store i32 %2413, i32* %2411, align 4
  %2437 = load i64, i64* %RBP.i, align 8
  %2438 = add i64 %2437, -40
  %2439 = load i64, i64* %3, align 8
  %2440 = add i64 %2439, 4
  store i64 %2440, i64* %3, align 8
  %2441 = inttoptr i64 %2438 to i32*
  %2442 = load i32, i32* %2441, align 4
  %2443 = sext i32 %2442 to i64
  store i64 %2443, i64* %RDX.i582, align 8
  %2444 = shl nsw i64 %2443, 2
  %2445 = add nsw i64 %2444, 11187184
  %2446 = add i64 %2439, 11
  store i64 %2446, i64* %3, align 8
  %2447 = inttoptr i64 %2445 to i32*
  %2448 = load i32, i32* %2447, align 4
  %2449 = add i64 %2437, -28
  %2450 = add i64 %2439, 14
  store i64 %2450, i64* %3, align 8
  %2451 = inttoptr i64 %2449 to i32*
  store i32 %2448, i32* %2451, align 4
  %2452 = load i64, i64* %3, align 8
  %2453 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2454 = zext i32 %2453 to i64
  store i64 %2454, i64* %RCX.i922, align 8
  %2455 = load i64, i64* %RBP.i, align 8
  %2456 = add i64 %2455, -40
  %2457 = add i64 %2452, 11
  store i64 %2457, i64* %3, align 8
  %2458 = inttoptr i64 %2456 to i32*
  %2459 = load i32, i32* %2458, align 4
  %2460 = sext i32 %2459 to i64
  store i64 %2460, i64* %RDX.i582, align 8
  %2461 = shl nsw i64 %2460, 2
  %2462 = add nsw i64 %2461, 11187184
  %2463 = add i64 %2452, 19
  store i64 %2463, i64* %3, align 8
  %2464 = inttoptr i64 %2462 to i32*
  %2465 = load i32, i32* %2464, align 4
  %2466 = sext i32 %2465 to i64
  %2467 = mul nsw i64 %2466, 744
  store i64 %2467, i64* %RDX.i582, align 8
  %2468 = lshr i64 %2467, 63
  %2469 = load i64, i64* %RAX.i976, align 8
  %2470 = add i64 %2467, %2469
  store i64 %2470, i64* %RAX.i976, align 8
  %2471 = icmp ult i64 %2470, %2469
  %2472 = icmp ult i64 %2470, %2467
  %2473 = or i1 %2471, %2472
  %2474 = zext i1 %2473 to i8
  store i8 %2474, i8* %14, align 1
  %2475 = trunc i64 %2470 to i32
  %2476 = and i32 %2475, 255
  %2477 = tail call i32 @llvm.ctpop.i32(i32 %2476)
  %2478 = trunc i32 %2477 to i8
  %2479 = and i8 %2478, 1
  %2480 = xor i8 %2479, 1
  store i8 %2480, i8* %21, align 1
  %2481 = xor i64 %2467, %2469
  %2482 = xor i64 %2481, %2470
  %2483 = lshr i64 %2482, 4
  %2484 = trunc i64 %2483 to i8
  %2485 = and i8 %2484, 1
  store i8 %2485, i8* %27, align 1
  %2486 = icmp eq i64 %2470, 0
  %2487 = zext i1 %2486 to i8
  store i8 %2487, i8* %30, align 1
  %2488 = lshr i64 %2470, 63
  %2489 = trunc i64 %2488 to i8
  store i8 %2489, i8* %33, align 1
  %2490 = lshr i64 %2469, 63
  %2491 = xor i64 %2488, %2490
  %2492 = xor i64 %2488, %2468
  %2493 = add nuw nsw i64 %2491, %2492
  %2494 = icmp eq i64 %2493, 2
  %2495 = zext i1 %2494 to i8
  store i8 %2495, i8* %39, align 1
  %2496 = add i64 %2470, 740
  %2497 = add i64 %2452, 35
  store i64 %2497, i64* %3, align 8
  %2498 = inttoptr i64 %2496 to i32*
  store i32 %2453, i32* %2498, align 4
  %2499 = load i64, i64* %3, align 8
  %2500 = add i64 %2499, 146
  br label %block_.L_40a15a

block_.L_40a0cd:                                  ; preds = %block_.L_40a03c, %block_40a051.block_.L_40a0cd_crit_edge
  %2501 = phi i64 [ %2407, %block_40a051.block_.L_40a0cd_crit_edge ], [ %2340, %block_.L_40a03c ]
  %2502 = phi i64 [ %.pre68, %block_40a051.block_.L_40a0cd_crit_edge ], [ %2303, %block_.L_40a03c ]
  %2503 = add i64 %2502, -40
  %2504 = add i64 %2501, 4
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2503 to i32*
  %2506 = load i32, i32* %2505, align 4
  %2507 = sext i32 %2506 to i64
  store i64 %2507, i64* %RAX.i976, align 8
  %2508 = add nsw i64 %2507, 12099168
  %2509 = add i64 %2501, 12
  store i64 %2509, i64* %3, align 8
  %2510 = inttoptr i64 %2508 to i8*
  %2511 = load i8, i8* %2510, align 1
  %2512 = zext i8 %2511 to i64
  store i64 %2512, i64* %RCX.i922, align 8
  %2513 = zext i8 %2511 to i32
  %2514 = add i64 %2502, -12
  %2515 = add i64 %2501, 15
  store i64 %2515, i64* %3, align 8
  %2516 = inttoptr i64 %2514 to i32*
  %2517 = load i32, i32* %2516, align 4
  %2518 = sub i32 %2513, %2517
  %2519 = icmp ult i32 %2513, %2517
  %2520 = zext i1 %2519 to i8
  store i8 %2520, i8* %14, align 1
  %2521 = and i32 %2518, 255
  %2522 = tail call i32 @llvm.ctpop.i32(i32 %2521)
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  %2525 = xor i8 %2524, 1
  store i8 %2525, i8* %21, align 1
  %2526 = xor i32 %2517, %2513
  %2527 = xor i32 %2526, %2518
  %2528 = lshr i32 %2527, 4
  %2529 = trunc i32 %2528 to i8
  %2530 = and i8 %2529, 1
  store i8 %2530, i8* %27, align 1
  %2531 = icmp eq i32 %2518, 0
  %2532 = zext i1 %2531 to i8
  store i8 %2532, i8* %30, align 1
  %2533 = lshr i32 %2518, 31
  %2534 = trunc i32 %2533 to i8
  store i8 %2534, i8* %33, align 1
  %2535 = lshr i32 %2517, 31
  %2536 = add nuw nsw i32 %2533, %2535
  %2537 = icmp eq i32 %2536, 2
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %39, align 1
  %.v88 = select i1 %2531, i64 21, i64 136
  %2539 = add i64 %2501, %.v88
  store i64 %2539, i64* %3, align 8
  br i1 %2531, label %block_40a0e2, label %block_.L_40a155

block_40a0e2:                                     ; preds = %block_.L_40a0cd
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %2540 = add i64 %2539, 14
  store i64 %2540, i64* %3, align 8
  %2541 = load i32, i32* %2505, align 4
  %2542 = sext i32 %2541 to i64
  store i64 %2542, i64* %RCX.i922, align 8
  %2543 = shl nsw i64 %2542, 2
  %2544 = add nsw i64 %2543, 11187184
  %2545 = add i64 %2539, 22
  store i64 %2545, i64* %3, align 8
  %2546 = inttoptr i64 %2544 to i32*
  %2547 = load i32, i32* %2546, align 4
  %2548 = sext i32 %2547 to i64
  %2549 = mul nsw i64 %2548, 744
  store i64 %2549, i64* %RCX.i922, align 8
  %2550 = lshr i64 %2549, 63
  %2551 = add i64 %2549, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2551, i64* %RAX.i976, align 8
  %2552 = icmp ult i64 %2551, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2553 = icmp ult i64 %2551, %2549
  %2554 = or i1 %2552, %2553
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %14, align 1
  %2556 = trunc i64 %2551 to i32
  %2557 = and i32 %2556, 248
  %2558 = tail call i32 @llvm.ctpop.i32(i32 %2557)
  %2559 = trunc i32 %2558 to i8
  %2560 = and i8 %2559, 1
  %2561 = xor i8 %2560, 1
  store i8 %2561, i8* %21, align 1
  %2562 = xor i64 %2549, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2563 = xor i64 %2562, %2551
  %2564 = lshr i64 %2563, 4
  %2565 = trunc i64 %2564 to i8
  %2566 = and i8 %2565, 1
  store i8 %2566, i8* %27, align 1
  %2567 = icmp eq i64 %2551, 0
  %2568 = zext i1 %2567 to i8
  store i8 %2568, i8* %30, align 1
  %2569 = lshr i64 %2551, 63
  %2570 = trunc i64 %2569 to i8
  store i8 %2570, i8* %33, align 1
  %2571 = xor i64 %2569, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2572 = xor i64 %2569, %2550
  %2573 = add nuw nsw i64 %2571, %2572
  %2574 = icmp eq i64 %2573, 2
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %39, align 1
  %2576 = add i64 %2549, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2577 = add i64 %2539, 38
  store i64 %2577, i64* %3, align 8
  %2578 = inttoptr i64 %2576 to i32*
  %2579 = load i32, i32* %2578, align 4
  %2580 = zext i32 %2579 to i64
  store i64 %2580, i64* %RDX.i582, align 8
  %2581 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2582 = sub i32 %2579, %2581
  %2583 = icmp ult i32 %2579, %2581
  %2584 = zext i1 %2583 to i8
  store i8 %2584, i8* %14, align 1
  %2585 = and i32 %2582, 255
  %2586 = tail call i32 @llvm.ctpop.i32(i32 %2585)
  %2587 = trunc i32 %2586 to i8
  %2588 = and i8 %2587, 1
  %2589 = xor i8 %2588, 1
  store i8 %2589, i8* %21, align 1
  %2590 = xor i32 %2581, %2579
  %2591 = xor i32 %2590, %2582
  %2592 = lshr i32 %2591, 4
  %2593 = trunc i32 %2592 to i8
  %2594 = and i8 %2593, 1
  store i8 %2594, i8* %27, align 1
  %2595 = icmp eq i32 %2582, 0
  %2596 = zext i1 %2595 to i8
  store i8 %2596, i8* %30, align 1
  %2597 = lshr i32 %2582, 31
  %2598 = trunc i32 %2597 to i8
  store i8 %2598, i8* %33, align 1
  %2599 = lshr i32 %2579, 31
  %2600 = lshr i32 %2581, 31
  %2601 = xor i32 %2600, %2599
  %2602 = xor i32 %2597, %2599
  %2603 = add nuw nsw i32 %2602, %2601
  %2604 = icmp eq i32 %2603, 2
  %2605 = zext i1 %2604 to i8
  store i8 %2605, i8* %39, align 1
  %.v99 = select i1 %2595, i64 115, i64 51
  %2606 = add i64 %2539, %.v99
  store i64 %2606, i64* %3, align 8
  br i1 %2595, label %block_.L_40a155, label %block_40a115

block_40a115:                                     ; preds = %block_40a0e2
  %2607 = load i64, i64* %RBP.i, align 8
  %2608 = add i64 %2607, -40
  %2609 = add i64 %2606, 4
  store i64 %2609, i64* %3, align 8
  %2610 = inttoptr i64 %2608 to i32*
  %2611 = load i32, i32* %2610, align 4
  %2612 = sext i32 %2611 to i64
  store i64 %2612, i64* %RAX.i976, align 8
  %2613 = shl nsw i64 %2612, 2
  %2614 = add nsw i64 %2613, 11187184
  %2615 = add i64 %2606, 11
  store i64 %2615, i64* %3, align 8
  %2616 = inttoptr i64 %2614 to i32*
  %2617 = load i32, i32* %2616, align 4
  %2618 = zext i32 %2617 to i64
  store i64 %2618, i64* %RDI.i600, align 8
  %2619 = add i64 %2607, -4
  %2620 = add i64 %2606, 14
  store i64 %2620, i64* %3, align 8
  %2621 = inttoptr i64 %2619 to i32*
  %2622 = load i32, i32* %2621, align 4
  %2623 = zext i32 %2622 to i64
  store i64 %2623, i64* %RSI.i556, align 8
  %2624 = add i64 %2606, 1451
  %2625 = add i64 %2606, 19
  %2626 = load i64, i64* %6, align 8
  %2627 = add i64 %2626, -8
  %2628 = inttoptr i64 %2627 to i64*
  store i64 %2625, i64* %2628, align 8
  store i64 %2627, i64* %6, align 8
  store i64 %2624, i64* %3, align 8
  %call2_40a123 = tail call %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* nonnull %0, i64 %2624, %struct.Memory* %MEMORY.22)
  %2629 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %2630 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2631 = zext i32 %2630 to i64
  store i64 %2631, i64* %RSI.i556, align 8
  %2632 = load i64, i64* %RBP.i, align 8
  %2633 = add i64 %2632, -40
  %2634 = add i64 %2629, 21
  store i64 %2634, i64* %3, align 8
  %2635 = inttoptr i64 %2633 to i32*
  %2636 = load i32, i32* %2635, align 4
  %2637 = sext i32 %2636 to i64
  store i64 %2637, i64* %RCX.i922, align 8
  %2638 = shl nsw i64 %2637, 2
  %2639 = add nsw i64 %2638, 11187184
  %2640 = add i64 %2629, 29
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to i32*
  %2642 = load i32, i32* %2641, align 4
  %2643 = sext i32 %2642 to i64
  %2644 = mul nsw i64 %2643, 744
  store i64 %2644, i64* %RCX.i922, align 8
  %2645 = lshr i64 %2644, 63
  %2646 = add i64 %2644, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2646, i64* %RAX.i976, align 8
  %2647 = icmp ult i64 %2646, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2648 = icmp ult i64 %2646, %2644
  %2649 = or i1 %2647, %2648
  %2650 = zext i1 %2649 to i8
  store i8 %2650, i8* %14, align 1
  %2651 = trunc i64 %2646 to i32
  %2652 = and i32 %2651, 248
  %2653 = tail call i32 @llvm.ctpop.i32(i32 %2652)
  %2654 = trunc i32 %2653 to i8
  %2655 = and i8 %2654, 1
  %2656 = xor i8 %2655, 1
  store i8 %2656, i8* %21, align 1
  %2657 = xor i64 %2644, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2658 = xor i64 %2657, %2646
  %2659 = lshr i64 %2658, 4
  %2660 = trunc i64 %2659 to i8
  %2661 = and i8 %2660, 1
  store i8 %2661, i8* %27, align 1
  %2662 = icmp eq i64 %2646, 0
  %2663 = zext i1 %2662 to i8
  store i8 %2663, i8* %30, align 1
  %2664 = lshr i64 %2646, 63
  %2665 = trunc i64 %2664 to i8
  store i8 %2665, i8* %33, align 1
  %2666 = xor i64 %2664, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2667 = xor i64 %2664, %2645
  %2668 = add nuw nsw i64 %2666, %2667
  %2669 = icmp eq i64 %2668, 2
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %39, align 1
  %2671 = add i64 %2644, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2672 = add i64 %2629, 45
  store i64 %2672, i64* %3, align 8
  %2673 = inttoptr i64 %2671 to i32*
  store i32 %2630, i32* %2673, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_40a155

block_.L_40a155:                                  ; preds = %block_.L_40a0cd, %block_40a115, %block_40a0e2
  %2674 = phi i64 [ %2539, %block_.L_40a0cd ], [ %2606, %block_40a0e2 ], [ %.pre69, %block_40a115 ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.22, %block_.L_40a0cd ], [ %MEMORY.22, %block_40a0e2 ], [ %call2_40a123, %block_40a115 ]
  %2675 = add i64 %2674, 5
  store i64 %2675, i64* %3, align 8
  br label %block_.L_40a15a

block_.L_40a15a:                                  ; preds = %block_.L_40a155, %block_40a084
  %storemerge48 = phi i64 [ %2500, %block_40a084 ], [ %2675, %block_.L_40a155 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.22, %block_40a084 ], [ %MEMORY.24, %block_.L_40a155 ]
  %2676 = load i64, i64* %RBP.i, align 8
  %2677 = add i64 %2676, -44
  %2678 = add i64 %storemerge48, 4
  store i64 %2678, i64* %3, align 8
  %2679 = inttoptr i64 %2677 to i32*
  %2680 = load i32, i32* %2679, align 4
  %2681 = sext i32 %2680 to i64
  store i64 %2681, i64* %RAX.i976, align 8
  %2682 = add nsw i64 %2681, 12099168
  %2683 = add i64 %storemerge48, 12
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2682 to i8*
  %2685 = load i8, i8* %2684, align 1
  %2686 = zext i8 %2685 to i64
  store i64 %2686, i64* %RCX.i922, align 8
  %2687 = zext i8 %2685 to i32
  %2688 = add i64 %2676, -8
  %2689 = add i64 %storemerge48, 15
  store i64 %2689, i64* %3, align 8
  %2690 = inttoptr i64 %2688 to i32*
  %2691 = load i32, i32* %2690, align 4
  %2692 = sub i32 %2687, %2691
  %2693 = icmp ult i32 %2687, %2691
  %2694 = zext i1 %2693 to i8
  store i8 %2694, i8* %14, align 1
  %2695 = and i32 %2692, 255
  %2696 = tail call i32 @llvm.ctpop.i32(i32 %2695)
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  %2699 = xor i8 %2698, 1
  store i8 %2699, i8* %21, align 1
  %2700 = xor i32 %2691, %2687
  %2701 = xor i32 %2700, %2692
  %2702 = lshr i32 %2701, 4
  %2703 = trunc i32 %2702 to i8
  %2704 = and i8 %2703, 1
  store i8 %2704, i8* %27, align 1
  %2705 = icmp eq i32 %2692, 0
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %30, align 1
  %2707 = lshr i32 %2692, 31
  %2708 = trunc i32 %2707 to i8
  store i8 %2708, i8* %33, align 1
  %2709 = lshr i32 %2691, 31
  %2710 = add nuw nsw i32 %2707, %2709
  %2711 = icmp eq i32 %2710, 2
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %39, align 1
  %.v89 = select i1 %2705, i64 21, i64 100
  %2713 = add i64 %storemerge48, %.v89
  store i64 %2713, i64* %3, align 8
  br i1 %2705, label %block_40a16f, label %block_.L_40a1be

block_40a16f:                                     ; preds = %block_.L_40a15a
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %2714 = add i64 %2713, 14
  store i64 %2714, i64* %3, align 8
  %2715 = load i32, i32* %2679, align 4
  %2716 = sext i32 %2715 to i64
  store i64 %2716, i64* %RCX.i922, align 8
  %2717 = shl nsw i64 %2716, 2
  %2718 = add nsw i64 %2717, 11187184
  %2719 = add i64 %2713, 22
  store i64 %2719, i64* %3, align 8
  %2720 = inttoptr i64 %2718 to i32*
  %2721 = load i32, i32* %2720, align 4
  %2722 = sext i32 %2721 to i64
  %2723 = mul nsw i64 %2722, 744
  store i64 %2723, i64* %RCX.i922, align 8
  %2724 = lshr i64 %2723, 63
  %2725 = add i64 %2723, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2725, i64* %RAX.i976, align 8
  %2726 = icmp ult i64 %2725, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2727 = icmp ult i64 %2725, %2723
  %2728 = or i1 %2726, %2727
  %2729 = zext i1 %2728 to i8
  store i8 %2729, i8* %14, align 1
  %2730 = trunc i64 %2725 to i32
  %2731 = and i32 %2730, 248
  %2732 = tail call i32 @llvm.ctpop.i32(i32 %2731)
  %2733 = trunc i32 %2732 to i8
  %2734 = and i8 %2733, 1
  %2735 = xor i8 %2734, 1
  store i8 %2735, i8* %21, align 1
  %2736 = xor i64 %2723, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2737 = xor i64 %2736, %2725
  %2738 = lshr i64 %2737, 4
  %2739 = trunc i64 %2738 to i8
  %2740 = and i8 %2739, 1
  store i8 %2740, i8* %27, align 1
  %2741 = icmp eq i64 %2725, 0
  %2742 = zext i1 %2741 to i8
  store i8 %2742, i8* %30, align 1
  %2743 = lshr i64 %2725, 63
  %2744 = trunc i64 %2743 to i8
  store i8 %2744, i8* %33, align 1
  %2745 = xor i64 %2743, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2746 = xor i64 %2743, %2724
  %2747 = add nuw nsw i64 %2745, %2746
  %2748 = icmp eq i64 %2747, 2
  %2749 = zext i1 %2748 to i8
  store i8 %2749, i8* %39, align 1
  %2750 = add i64 %2723, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2751 = add i64 %2713, 38
  store i64 %2751, i64* %3, align 8
  %2752 = inttoptr i64 %2750 to i32*
  %2753 = load i32, i32* %2752, align 4
  %2754 = zext i32 %2753 to i64
  store i64 %2754, i64* %RDX.i582, align 8
  %2755 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2756 = sub i32 %2753, %2755
  %2757 = icmp ult i32 %2753, %2755
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %14, align 1
  %2759 = and i32 %2756, 255
  %2760 = tail call i32 @llvm.ctpop.i32(i32 %2759)
  %2761 = trunc i32 %2760 to i8
  %2762 = and i8 %2761, 1
  %2763 = xor i8 %2762, 1
  store i8 %2763, i8* %21, align 1
  %2764 = xor i32 %2755, %2753
  %2765 = xor i32 %2764, %2756
  %2766 = lshr i32 %2765, 4
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  store i8 %2768, i8* %27, align 1
  %2769 = icmp eq i32 %2756, 0
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %30, align 1
  %2771 = lshr i32 %2756, 31
  %2772 = trunc i32 %2771 to i8
  store i8 %2772, i8* %33, align 1
  %2773 = lshr i32 %2753, 31
  %2774 = lshr i32 %2755, 31
  %2775 = xor i32 %2774, %2773
  %2776 = xor i32 %2771, %2773
  %2777 = add nuw nsw i32 %2776, %2775
  %2778 = icmp eq i32 %2777, 2
  %2779 = zext i1 %2778 to i8
  store i8 %2779, i8* %39, align 1
  %.v98 = select i1 %2769, i64 79, i64 51
  %2780 = add i64 %2713, %.v98
  store i64 %2780, i64* %3, align 8
  %.pre70 = load i64, i64* %RBP.i, align 8
  br i1 %2769, label %block_.L_40a1be, label %block_40a1a2

block_40a1a2:                                     ; preds = %block_40a16f
  %2781 = add i64 %.pre70, -20
  %2782 = add i64 %2780, 3
  store i64 %2782, i64* %3, align 8
  %2783 = inttoptr i64 %2781 to i32*
  %2784 = load i32, i32* %2783, align 4
  %2785 = add i32 %2784, 1
  %2786 = zext i32 %2785 to i64
  store i64 %2786, i64* %RAX.i976, align 8
  %2787 = icmp eq i32 %2784, -1
  %2788 = icmp eq i32 %2785, 0
  %2789 = or i1 %2787, %2788
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %14, align 1
  %2791 = and i32 %2785, 255
  %2792 = tail call i32 @llvm.ctpop.i32(i32 %2791)
  %2793 = trunc i32 %2792 to i8
  %2794 = and i8 %2793, 1
  %2795 = xor i8 %2794, 1
  store i8 %2795, i8* %21, align 1
  %2796 = xor i32 %2785, %2784
  %2797 = lshr i32 %2796, 4
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  store i8 %2799, i8* %27, align 1
  %2800 = zext i1 %2788 to i8
  store i8 %2800, i8* %30, align 1
  %2801 = lshr i32 %2785, 31
  %2802 = trunc i32 %2801 to i8
  store i8 %2802, i8* %33, align 1
  %2803 = lshr i32 %2784, 31
  %2804 = xor i32 %2801, %2803
  %2805 = add nuw nsw i32 %2804, %2801
  %2806 = icmp eq i32 %2805, 2
  %2807 = zext i1 %2806 to i8
  store i8 %2807, i8* %39, align 1
  %2808 = add i64 %2780, 9
  store i64 %2808, i64* %3, align 8
  store i32 %2785, i32* %2783, align 4
  %2809 = load i64, i64* %RBP.i, align 8
  %2810 = add i64 %2809, -44
  %2811 = load i64, i64* %3, align 8
  %2812 = add i64 %2811, 4
  store i64 %2812, i64* %3, align 8
  %2813 = inttoptr i64 %2810 to i32*
  %2814 = load i32, i32* %2813, align 4
  %2815 = sext i32 %2814 to i64
  store i64 %2815, i64* %RCX.i922, align 8
  %2816 = shl nsw i64 %2815, 2
  %2817 = add nsw i64 %2816, 11187184
  %2818 = add i64 %2811, 11
  store i64 %2818, i64* %3, align 8
  %2819 = inttoptr i64 %2817 to i32*
  %2820 = load i32, i32* %2819, align 4
  %2821 = zext i32 %2820 to i64
  store i64 %2821, i64* %RAX.i976, align 8
  %2822 = add i64 %2809, -28
  %2823 = add i64 %2811, 14
  store i64 %2823, i64* %3, align 8
  %2824 = inttoptr i64 %2822 to i32*
  store i32 %2820, i32* %2824, align 4
  %2825 = load i64, i64* %3, align 8
  %2826 = add i64 %2825, 101
  br label %block_.L_40a21e

block_.L_40a1be:                                  ; preds = %block_40a16f, %block_.L_40a15a
  %2827 = phi i64 [ %2713, %block_.L_40a15a ], [ %2780, %block_40a16f ]
  %2828 = phi i64 [ %2676, %block_.L_40a15a ], [ %.pre70, %block_40a16f ]
  %2829 = add i64 %2828, -44
  %2830 = add i64 %2827, 4
  store i64 %2830, i64* %3, align 8
  %2831 = inttoptr i64 %2829 to i32*
  %2832 = load i32, i32* %2831, align 4
  %2833 = sext i32 %2832 to i64
  store i64 %2833, i64* %RAX.i976, align 8
  %2834 = add nsw i64 %2833, 12099168
  %2835 = add i64 %2827, 12
  store i64 %2835, i64* %3, align 8
  %2836 = inttoptr i64 %2834 to i8*
  %2837 = load i8, i8* %2836, align 1
  %2838 = zext i8 %2837 to i64
  store i64 %2838, i64* %RCX.i922, align 8
  %2839 = zext i8 %2837 to i32
  %2840 = add i64 %2828, -12
  %2841 = add i64 %2827, 15
  store i64 %2841, i64* %3, align 8
  %2842 = inttoptr i64 %2840 to i32*
  %2843 = load i32, i32* %2842, align 4
  %2844 = sub i32 %2839, %2843
  %2845 = icmp ult i32 %2839, %2843
  %2846 = zext i1 %2845 to i8
  store i8 %2846, i8* %14, align 1
  %2847 = and i32 %2844, 255
  %2848 = tail call i32 @llvm.ctpop.i32(i32 %2847)
  %2849 = trunc i32 %2848 to i8
  %2850 = and i8 %2849, 1
  %2851 = xor i8 %2850, 1
  store i8 %2851, i8* %21, align 1
  %2852 = xor i32 %2843, %2839
  %2853 = xor i32 %2852, %2844
  %2854 = lshr i32 %2853, 4
  %2855 = trunc i32 %2854 to i8
  %2856 = and i8 %2855, 1
  store i8 %2856, i8* %27, align 1
  %2857 = icmp eq i32 %2844, 0
  %2858 = zext i1 %2857 to i8
  store i8 %2858, i8* %30, align 1
  %2859 = lshr i32 %2844, 31
  %2860 = trunc i32 %2859 to i8
  store i8 %2860, i8* %33, align 1
  %2861 = lshr i32 %2843, 31
  %2862 = add nuw nsw i32 %2859, %2861
  %2863 = icmp eq i32 %2862, 2
  %2864 = zext i1 %2863 to i8
  store i8 %2864, i8* %39, align 1
  %.v90 = select i1 %2857, i64 21, i64 91
  %2865 = add i64 %2827, %.v90
  store i64 %2865, i64* %3, align 8
  br i1 %2857, label %block_40a1d3, label %block_.L_40a219

block_40a1d3:                                     ; preds = %block_.L_40a1be
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %2866 = add i64 %2865, 14
  store i64 %2866, i64* %3, align 8
  %2867 = load i32, i32* %2831, align 4
  %2868 = sext i32 %2867 to i64
  store i64 %2868, i64* %RCX.i922, align 8
  %2869 = shl nsw i64 %2868, 2
  %2870 = add nsw i64 %2869, 11187184
  %2871 = add i64 %2865, 22
  store i64 %2871, i64* %3, align 8
  %2872 = inttoptr i64 %2870 to i32*
  %2873 = load i32, i32* %2872, align 4
  %2874 = sext i32 %2873 to i64
  %2875 = mul nsw i64 %2874, 744
  store i64 %2875, i64* %RCX.i922, align 8
  %2876 = lshr i64 %2875, 63
  %2877 = add i64 %2875, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2877, i64* %RAX.i976, align 8
  %2878 = icmp ult i64 %2877, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2879 = icmp ult i64 %2877, %2875
  %2880 = or i1 %2878, %2879
  %2881 = zext i1 %2880 to i8
  store i8 %2881, i8* %14, align 1
  %2882 = trunc i64 %2877 to i32
  %2883 = and i32 %2882, 248
  %2884 = tail call i32 @llvm.ctpop.i32(i32 %2883)
  %2885 = trunc i32 %2884 to i8
  %2886 = and i8 %2885, 1
  %2887 = xor i8 %2886, 1
  store i8 %2887, i8* %21, align 1
  %2888 = xor i64 %2875, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2889 = xor i64 %2888, %2877
  %2890 = lshr i64 %2889, 4
  %2891 = trunc i64 %2890 to i8
  %2892 = and i8 %2891, 1
  store i8 %2892, i8* %27, align 1
  %2893 = icmp eq i64 %2877, 0
  %2894 = zext i1 %2893 to i8
  store i8 %2894, i8* %30, align 1
  %2895 = lshr i64 %2877, 63
  %2896 = trunc i64 %2895 to i8
  store i8 %2896, i8* %33, align 1
  %2897 = xor i64 %2895, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2898 = xor i64 %2895, %2876
  %2899 = add nuw nsw i64 %2897, %2898
  %2900 = icmp eq i64 %2899, 2
  %2901 = zext i1 %2900 to i8
  store i8 %2901, i8* %39, align 1
  %2902 = add i64 %2875, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2903 = add i64 %2865, 38
  store i64 %2903, i64* %3, align 8
  %2904 = inttoptr i64 %2902 to i32*
  %2905 = load i32, i32* %2904, align 4
  %2906 = zext i32 %2905 to i64
  store i64 %2906, i64* %RDX.i582, align 8
  %2907 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2908 = sub i32 %2905, %2907
  %2909 = icmp ult i32 %2905, %2907
  %2910 = zext i1 %2909 to i8
  store i8 %2910, i8* %14, align 1
  %2911 = and i32 %2908, 255
  %2912 = tail call i32 @llvm.ctpop.i32(i32 %2911)
  %2913 = trunc i32 %2912 to i8
  %2914 = and i8 %2913, 1
  %2915 = xor i8 %2914, 1
  store i8 %2915, i8* %21, align 1
  %2916 = xor i32 %2907, %2905
  %2917 = xor i32 %2916, %2908
  %2918 = lshr i32 %2917, 4
  %2919 = trunc i32 %2918 to i8
  %2920 = and i8 %2919, 1
  store i8 %2920, i8* %27, align 1
  %2921 = icmp eq i32 %2908, 0
  %2922 = zext i1 %2921 to i8
  store i8 %2922, i8* %30, align 1
  %2923 = lshr i32 %2908, 31
  %2924 = trunc i32 %2923 to i8
  store i8 %2924, i8* %33, align 1
  %2925 = lshr i32 %2905, 31
  %2926 = lshr i32 %2907, 31
  %2927 = xor i32 %2926, %2925
  %2928 = xor i32 %2923, %2925
  %2929 = add nuw nsw i32 %2928, %2927
  %2930 = icmp eq i32 %2929, 2
  %2931 = zext i1 %2930 to i8
  store i8 %2931, i8* %39, align 1
  %.v97 = select i1 %2921, i64 70, i64 51
  %2932 = add i64 %2865, %.v97
  store i64 %2932, i64* %3, align 8
  br i1 %2921, label %block_.L_40a219, label %block_40a206

block_40a206:                                     ; preds = %block_40a1d3
  %2933 = load i64, i64* %RBP.i, align 8
  %2934 = add i64 %2933, -44
  %2935 = add i64 %2932, 4
  store i64 %2935, i64* %3, align 8
  %2936 = inttoptr i64 %2934 to i32*
  %2937 = load i32, i32* %2936, align 4
  %2938 = sext i32 %2937 to i64
  store i64 %2938, i64* %RAX.i976, align 8
  %2939 = shl nsw i64 %2938, 2
  %2940 = add nsw i64 %2939, 11187184
  %2941 = add i64 %2932, 11
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i32*
  %2943 = load i32, i32* %2942, align 4
  %2944 = zext i32 %2943 to i64
  store i64 %2944, i64* %RDI.i600, align 8
  %2945 = add i64 %2933, -4
  %2946 = add i64 %2932, 14
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2945 to i32*
  %2948 = load i32, i32* %2947, align 4
  %2949 = zext i32 %2948 to i64
  store i64 %2949, i64* %RSI.i556, align 8
  %2950 = add i64 %2932, 1210
  %2951 = add i64 %2932, 19
  %2952 = load i64, i64* %6, align 8
  %2953 = add i64 %2952, -8
  %2954 = inttoptr i64 %2953 to i64*
  store i64 %2951, i64* %2954, align 8
  store i64 %2953, i64* %6, align 8
  store i64 %2950, i64* %3, align 8
  %call2_40a214 = tail call %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* nonnull %0, i64 %2950, %struct.Memory* %MEMORY.25)
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_40a219

block_.L_40a219:                                  ; preds = %block_.L_40a1be, %block_40a206, %block_40a1d3
  %2955 = phi i64 [ %2865, %block_.L_40a1be ], [ %2932, %block_40a1d3 ], [ %.pre71, %block_40a206 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.25, %block_.L_40a1be ], [ %MEMORY.25, %block_40a1d3 ], [ %call2_40a214, %block_40a206 ]
  %2956 = add i64 %2955, 5
  store i64 %2956, i64* %3, align 8
  br label %block_.L_40a21e

block_.L_40a21e:                                  ; preds = %block_.L_40a219, %block_40a1a2
  %storemerge49 = phi i64 [ %2826, %block_40a1a2 ], [ %2956, %block_.L_40a219 ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.25, %block_40a1a2 ], [ %MEMORY.27, %block_.L_40a219 ]
  %2957 = load i64, i64* %RBP.i, align 8
  %2958 = add i64 %2957, -20
  %2959 = add i64 %storemerge49, 4
  store i64 %2959, i64* %3, align 8
  %2960 = inttoptr i64 %2958 to i32*
  %2961 = load i32, i32* %2960, align 4
  store i8 0, i8* %14, align 1
  %2962 = and i32 %2961, 255
  %2963 = tail call i32 @llvm.ctpop.i32(i32 %2962)
  %2964 = trunc i32 %2963 to i8
  %2965 = and i8 %2964, 1
  %2966 = xor i8 %2965, 1
  store i8 %2966, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2967 = icmp eq i32 %2961, 0
  %2968 = zext i1 %2967 to i8
  store i8 %2968, i8* %30, align 1
  %2969 = lshr i32 %2961, 31
  %2970 = trunc i32 %2969 to i8
  store i8 %2970, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v91 = select i1 %2967, i64 10, i64 23
  %2971 = add i64 %storemerge49, %.v91
  store i64 %2971, i64* %3, align 8
  br i1 %2967, label %block_40a228, label %block_.L_40a235

block_40a228:                                     ; preds = %block_.L_40a21e
  %2972 = add i64 %2957, -4
  %2973 = add i64 %2971, 3
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2972 to i32*
  %2975 = load i32, i32* %2974, align 4
  %2976 = zext i32 %2975 to i64
  store i64 %2976, i64* %RDI.i600, align 8
  %2977 = add i64 %2971, 1576
  %2978 = add i64 %2971, 8
  %2979 = load i64, i64* %6, align 8
  %2980 = add i64 %2979, -8
  %2981 = inttoptr i64 %2980 to i64*
  store i64 %2978, i64* %2981, align 8
  store i64 %2980, i64* %6, align 8
  store i64 %2977, i64* %3, align 8
  %call2_40a22b = tail call %struct.Memory* @sub_40a850.create_new_string(%struct.State* nonnull %0, i64 %2977, %struct.Memory* %MEMORY.28)
  %2982 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %2983 = load i64, i64* %RBP.i, align 8
  %2984 = add i64 %2983, -4
  %2985 = add i64 %2982, 113
  store i64 %2985, i64* %3, align 8
  %2986 = inttoptr i64 %2984 to i32*
  %2987 = load i32, i32* %2986, align 4
  %2988 = sext i32 %2987 to i64
  store i64 %2988, i64* %RCX.i922, align 8
  %2989 = shl nsw i64 %2988, 2
  %2990 = add nsw i64 %2989, 11187184
  %2991 = add i64 %2982, 120
  store i64 %2991, i64* %3, align 8
  %2992 = inttoptr i64 %2990 to i32*
  %2993 = load i32, i32* %2992, align 4
  %2994 = zext i32 %2993 to i64
  store i64 %2994, i64* %RDX.i582, align 8
  %2995 = add i64 %2983, -28
  %2996 = add i64 %2982, 123
  store i64 %2996, i64* %3, align 8
  %2997 = inttoptr i64 %2995 to i32*
  store i32 %2993, i32* %2997, align 4
  %2998 = load i64, i64* %RBP.i, align 8
  %2999 = add i64 %2998, -28
  %3000 = load i64, i64* %3, align 8
  %3001 = add i64 %3000, 4
  store i64 %3001, i64* %3, align 8
  %3002 = inttoptr i64 %2999 to i32*
  %3003 = load i32, i32* %3002, align 4
  %3004 = sext i32 %3003 to i64
  %3005 = mul nsw i64 %3004, 744
  store i64 %3005, i64* %RCX.i922, align 8
  %3006 = lshr i64 %3005, 63
  %3007 = load i64, i64* %RAX.i976, align 8
  %3008 = add i64 %3005, %3007
  store i64 %3008, i64* %RAX.i976, align 8
  %3009 = icmp ult i64 %3008, %3007
  %3010 = icmp ult i64 %3008, %3005
  %3011 = or i1 %3009, %3010
  %3012 = zext i1 %3011 to i8
  store i8 %3012, i8* %14, align 1
  %3013 = trunc i64 %3008 to i32
  %3014 = and i32 %3013, 255
  %3015 = tail call i32 @llvm.ctpop.i32(i32 %3014)
  %3016 = trunc i32 %3015 to i8
  %3017 = and i8 %3016, 1
  %3018 = xor i8 %3017, 1
  store i8 %3018, i8* %21, align 1
  %3019 = xor i64 %3005, %3007
  %3020 = xor i64 %3019, %3008
  %3021 = lshr i64 %3020, 4
  %3022 = trunc i64 %3021 to i8
  %3023 = and i8 %3022, 1
  store i8 %3023, i8* %27, align 1
  %3024 = icmp eq i64 %3008, 0
  %3025 = zext i1 %3024 to i8
  store i8 %3025, i8* %30, align 1
  %3026 = lshr i64 %3008, 63
  %3027 = trunc i64 %3026 to i8
  store i8 %3027, i8* %33, align 1
  %3028 = lshr i64 %3007, 63
  %3029 = xor i64 %3026, %3028
  %3030 = xor i64 %3026, %3006
  %3031 = add nuw nsw i64 %3029, %3030
  %3032 = icmp eq i64 %3031, 2
  %3033 = zext i1 %3032 to i8
  store i8 %3033, i8* %39, align 1
  %3034 = add i64 %3008, 12
  %3035 = add i64 %3000, 18
  store i64 %3035, i64* %3, align 8
  %3036 = inttoptr i64 %3034 to i32*
  %3037 = load i32, i32* %3036, align 4
  %3038 = add i32 %3037, -1
  %3039 = icmp eq i32 %3037, 0
  %3040 = zext i1 %3039 to i8
  store i8 %3040, i8* %14, align 1
  %3041 = and i32 %3038, 255
  %3042 = tail call i32 @llvm.ctpop.i32(i32 %3041)
  %3043 = trunc i32 %3042 to i8
  %3044 = and i8 %3043, 1
  %3045 = xor i8 %3044, 1
  store i8 %3045, i8* %21, align 1
  %3046 = xor i32 %3038, %3037
  %3047 = lshr i32 %3046, 4
  %3048 = trunc i32 %3047 to i8
  %3049 = and i8 %3048, 1
  store i8 %3049, i8* %27, align 1
  %3050 = icmp eq i32 %3038, 0
  %3051 = zext i1 %3050 to i8
  store i8 %3051, i8* %30, align 1
  %3052 = lshr i32 %3038, 31
  %3053 = trunc i32 %3052 to i8
  store i8 %3053, i8* %33, align 1
  %3054 = lshr i32 %3037, 31
  %3055 = xor i32 %3052, %3054
  %3056 = add nuw nsw i32 %3055, %3054
  %3057 = icmp eq i32 %3056, 2
  %3058 = zext i1 %3057 to i8
  store i8 %3058, i8* %39, align 1
  %.v93 = select i1 %3050, i64 24, i64 160
  %3059 = add i64 %3000, %.v93
  store i64 %3059, i64* %3, align 8
  br i1 %3050, label %block_40a2c3, label %block_.L_40a34b

block_.L_40a235:                                  ; preds = %block_.L_40a21e
  %3060 = add i64 %2971, 4
  store i64 %3060, i64* %3, align 8
  %3061 = load i32, i32* %2960, align 4
  %3062 = add i32 %3061, -1
  %3063 = icmp eq i32 %3061, 0
  %3064 = zext i1 %3063 to i8
  store i8 %3064, i8* %14, align 1
  %3065 = and i32 %3062, 255
  %3066 = tail call i32 @llvm.ctpop.i32(i32 %3065)
  %3067 = trunc i32 %3066 to i8
  %3068 = and i8 %3067, 1
  %3069 = xor i8 %3068, 1
  store i8 %3069, i8* %21, align 1
  %3070 = xor i32 %3062, %3061
  %3071 = lshr i32 %3070, 4
  %3072 = trunc i32 %3071 to i8
  %3073 = and i8 %3072, 1
  store i8 %3073, i8* %27, align 1
  %3074 = icmp eq i32 %3062, 0
  %3075 = zext i1 %3074 to i8
  store i8 %3075, i8* %30, align 1
  %3076 = lshr i32 %3062, 31
  %3077 = trunc i32 %3076 to i8
  store i8 %3077, i8* %33, align 1
  %3078 = lshr i32 %3061, 31
  %3079 = xor i32 %3076, %3078
  %3080 = add nuw nsw i32 %3079, %3078
  %3081 = icmp eq i32 %3080, 2
  %3082 = zext i1 %3081 to i8
  store i8 %3082, i8* %39, align 1
  %.v92 = select i1 %3074, i64 10, i64 81
  %3083 = add i64 %2971, %.v92
  store i64 %3083, i64* %3, align 8
  br i1 %3074, label %block_40a23f, label %block_.L_40a286

block_40a23f:                                     ; preds = %block_.L_40a235
  %3084 = add i64 %2957, -28
  %3085 = add i64 %3083, 4
  store i64 %3085, i64* %3, align 8
  %3086 = inttoptr i64 %3084 to i32*
  %3087 = load i32, i32* %3086, align 4
  store i8 0, i8* %14, align 1
  %3088 = and i32 %3087, 255
  %3089 = tail call i32 @llvm.ctpop.i32(i32 %3088)
  %3090 = trunc i32 %3089 to i8
  %3091 = and i8 %3090, 1
  %3092 = xor i8 %3091, 1
  store i8 %3092, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3093 = icmp eq i32 %3087, 0
  %3094 = zext i1 %3093 to i8
  store i8 %3094, i8* %30, align 1
  %3095 = lshr i32 %3087, 31
  %3096 = trunc i32 %3095 to i8
  store i8 %3096, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3097 = icmp ne i8 %3096, 0
  %.v = select i1 %3097, i64 11, i64 6
  %3098 = add i64 %3085, %.v
  store i64 %3098, i64* %3, align 8
  br i1 %3097, label %block_.L_40a24e, label %block_40a249

block_40a249:                                     ; preds = %block_40a23f
  %3099 = add i64 %3098, 45
  store i64 %3099, i64* %3, align 8
  br label %block_.L_40a276

block_.L_40a24e:                                  ; preds = %block_40a23f
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i600, align 8
  store i64 3498, i64* %RSI.i556, align 8
  store i64 ptrtoint (%G__0x57c4d2_type* @G__0x57c4d2 to i64), i64* %RDX.i582, align 8
  store i64 4294967295, i64* %RAX.i976, align 8
  store i64 4294967295, i64* %RCX.i922, align 8
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %3100, align 8
  %3101 = add i64 %3098, 294466
  %3102 = add i64 %3098, 40
  %3103 = load i64, i64* %6, align 8
  %3104 = add i64 %3103, -8
  %3105 = inttoptr i64 %3104 to i64*
  store i64 %3102, i64* %3105, align 8
  store i64 %3104, i64* %6, align 8
  store i64 %3101, i64* %3, align 8
  %call2_40a271 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %3101, %struct.Memory* %MEMORY.28)
  %.pre74 = load i64, i64* %RBP.i, align 8
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_40a276

block_.L_40a276:                                  ; preds = %block_.L_40a24e, %block_40a249
  %3106 = phi i64 [ %.pre75, %block_.L_40a24e ], [ %3099, %block_40a249 ]
  %3107 = phi i64 [ %.pre74, %block_.L_40a24e ], [ %2957, %block_40a249 ]
  %MEMORY.29 = phi %struct.Memory* [ %call2_40a271, %block_.L_40a24e ], [ %MEMORY.28, %block_40a249 ]
  %3108 = add i64 %3107, -4
  %3109 = add i64 %3106, 3
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3108 to i32*
  %3111 = load i32, i32* %3110, align 4
  %3112 = zext i32 %3111 to i64
  store i64 %3112, i64* %RDI.i600, align 8
  %3113 = add i64 %3107, -28
  %3114 = add i64 %3106, 6
  store i64 %3114, i64* %3, align 8
  %3115 = inttoptr i64 %3113 to i32*
  %3116 = load i32, i32* %3115, align 4
  %3117 = zext i32 %3116 to i64
  store i64 %3117, i64* %RSI.i556, align 8
  %3118 = add i64 %3106, 3898
  %3119 = add i64 %3106, 11
  %3120 = load i64, i64* %6, align 8
  %3121 = add i64 %3120, -8
  %3122 = inttoptr i64 %3121 to i64*
  store i64 %3119, i64* %3122, align 8
  store i64 %3121, i64* %6, align 8
  store i64 %3118, i64* %3, align 8
  %call2_40a27c = tail call %struct.Memory* @sub_40b1b0.extend_neighbor_string(%struct.State* nonnull %0, i64 %3118, %struct.Memory* %MEMORY.29)
  %3123 = load i64, i64* %3, align 8
  %3124 = add i64 %3123, 202
  store i64 %3124, i64* %3, align 8
  br label %block_.L_40a34b

block_.L_40a286:                                  ; preds = %block_.L_40a235
  %3125 = add i64 %2957, -4
  %3126 = add i64 %3083, 3
  store i64 %3126, i64* %3, align 8
  %3127 = inttoptr i64 %3125 to i32*
  %3128 = load i32, i32* %3127, align 4
  %3129 = zext i32 %3128 to i64
  store i64 %3129, i64* %RDI.i600, align 8
  %3130 = add i64 %3083, 7658
  %3131 = add i64 %3083, 8
  %3132 = load i64, i64* %6, align 8
  %3133 = add i64 %3132, -8
  %3134 = inttoptr i64 %3133 to i64*
  store i64 %3131, i64* %3134, align 8
  store i64 %3133, i64* %6, align 8
  store i64 %3130, i64* %3, align 8
  %call2_40a289 = tail call %struct.Memory* @sub_40c070.assimilate_neighbor_strings(%struct.State* nonnull %0, i64 %3130, %struct.Memory* %MEMORY.28)
  %3135 = load i64, i64* %3, align 8
  %3136 = add i64 %3135, 189
  store i64 %3136, i64* %3, align 8
  br label %block_.L_40a34b

block_40a2c3:                                     ; preds = %block_40a228
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %3137 = load i64, i64* %RBP.i, align 8
  %3138 = add i64 %3137, -28
  %3139 = add i64 %3059, 14
  store i64 %3139, i64* %3, align 8
  %3140 = inttoptr i64 %3138 to i32*
  %3141 = load i32, i32* %3140, align 4
  %3142 = sext i32 %3141 to i64
  %3143 = mul nsw i64 %3142, 744
  store i64 %3143, i64* %RCX.i922, align 8
  %3144 = lshr i64 %3143, 63
  %3145 = add i64 %3143, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3145, i64* %RAX.i976, align 8
  %3146 = icmp ult i64 %3145, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3147 = icmp ult i64 %3145, %3143
  %3148 = or i1 %3146, %3147
  %3149 = zext i1 %3148 to i8
  store i8 %3149, i8* %14, align 1
  %3150 = trunc i64 %3145 to i32
  %3151 = and i32 %3150, 248
  %3152 = tail call i32 @llvm.ctpop.i32(i32 %3151)
  %3153 = trunc i32 %3152 to i8
  %3154 = and i8 %3153, 1
  %3155 = xor i8 %3154, 1
  store i8 %3155, i8* %21, align 1
  %3156 = xor i64 %3143, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3157 = xor i64 %3156, %3145
  %3158 = lshr i64 %3157, 4
  %3159 = trunc i64 %3158 to i8
  %3160 = and i8 %3159, 1
  store i8 %3160, i8* %27, align 1
  %3161 = icmp eq i64 %3145, 0
  %3162 = zext i1 %3161 to i8
  store i8 %3162, i8* %30, align 1
  %3163 = lshr i64 %3145, 63
  %3164 = trunc i64 %3163 to i8
  store i8 %3164, i8* %33, align 1
  %3165 = xor i64 %3163, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3166 = xor i64 %3163, %3144
  %3167 = add nuw nsw i64 %3165, %3166
  %3168 = icmp eq i64 %3167, 2
  %3169 = zext i1 %3168 to i8
  store i8 %3169, i8* %39, align 1
  %3170 = add i64 %3143, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 4)
  %3171 = add i64 %3059, 28
  store i64 %3171, i64* %3, align 8
  %3172 = inttoptr i64 %3170 to i32*
  %3173 = load i32, i32* %3172, align 4
  %3174 = add i32 %3173, -1
  %3175 = icmp eq i32 %3173, 0
  %3176 = zext i1 %3175 to i8
  store i8 %3176, i8* %14, align 1
  %3177 = and i32 %3174, 255
  %3178 = tail call i32 @llvm.ctpop.i32(i32 %3177)
  %3179 = trunc i32 %3178 to i8
  %3180 = and i8 %3179, 1
  %3181 = xor i8 %3180, 1
  store i8 %3181, i8* %21, align 1
  %3182 = xor i32 %3174, %3173
  %3183 = lshr i32 %3182, 4
  %3184 = trunc i32 %3183 to i8
  %3185 = and i8 %3184, 1
  store i8 %3185, i8* %27, align 1
  %3186 = icmp eq i32 %3174, 0
  %3187 = zext i1 %3186 to i8
  store i8 %3187, i8* %30, align 1
  %3188 = lshr i32 %3174, 31
  %3189 = trunc i32 %3188 to i8
  store i8 %3189, i8* %33, align 1
  %3190 = lshr i32 %3173, 31
  %3191 = xor i32 %3188, %3190
  %3192 = add nuw nsw i32 %3191, %3190
  %3193 = icmp eq i32 %3192, 2
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %39, align 1
  %.v94 = select i1 %3186, i64 34, i64 136
  %3195 = add i64 %3059, %.v94
  store i64 %3195, i64* %3, align 8
  br i1 %3186, label %block_40a2e5, label %block_.L_40a34b

block_40a2e5:                                     ; preds = %block_40a2c3
  %3196 = load i64, i64* %RBP.i, align 8
  %3197 = add i64 %3196, -16
  %3198 = add i64 %3195, 4
  store i64 %3198, i64* %3, align 8
  %3199 = inttoptr i64 %3197 to i32*
  %3200 = load i32, i32* %3199, align 4
  %3201 = add i32 %3200, -1
  %3202 = icmp eq i32 %3200, 0
  %3203 = zext i1 %3202 to i8
  store i8 %3203, i8* %14, align 1
  %3204 = and i32 %3201, 255
  %3205 = tail call i32 @llvm.ctpop.i32(i32 %3204)
  %3206 = trunc i32 %3205 to i8
  %3207 = and i8 %3206, 1
  %3208 = xor i8 %3207, 1
  store i8 %3208, i8* %21, align 1
  %3209 = xor i32 %3201, %3200
  %3210 = lshr i32 %3209, 4
  %3211 = trunc i32 %3210 to i8
  %3212 = and i8 %3211, 1
  store i8 %3212, i8* %27, align 1
  %3213 = icmp eq i32 %3201, 0
  %3214 = zext i1 %3213 to i8
  store i8 %3214, i8* %30, align 1
  %3215 = lshr i32 %3201, 31
  %3216 = trunc i32 %3215 to i8
  store i8 %3216, i8* %33, align 1
  %3217 = lshr i32 %3200, 31
  %3218 = xor i32 %3215, %3217
  %3219 = add nuw nsw i32 %3218, %3217
  %3220 = icmp eq i32 %3219, 2
  %3221 = zext i1 %3220 to i8
  store i8 %3221, i8* %39, align 1
  %.v95 = select i1 %3213, i64 10, i64 102
  %3222 = add i64 %3195, %.v95
  store i64 %3222, i64* %3, align 8
  br i1 %3213, label %block_40a2ef, label %block_.L_40a34b

block_40a2ef:                                     ; preds = %block_40a2e5
  %3223 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %3224 = and i32 %3223, 255
  %3225 = tail call i32 @llvm.ctpop.i32(i32 %3224)
  %3226 = trunc i32 %3225 to i8
  %3227 = and i8 %3226, 1
  %3228 = xor i8 %3227, 1
  store i8 %3228, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3229 = icmp eq i32 %3223, 0
  %3230 = zext i1 %3229 to i8
  store i8 %3230, i8* %30, align 1
  %3231 = lshr i32 %3223, 31
  %3232 = trunc i32 %3231 to i8
  store i8 %3232, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v96 = select i1 %3229, i64 36, i64 14
  %3233 = add i64 %3222, %.v96
  store i64 %3233, i64* %3, align 8
  br i1 %3229, label %block_.L_40a313, label %block_40a2fd

block_40a2fd:                                     ; preds = %block_40a2ef
  store i64 ptrtoint (%G__0xafc500_type* @G__0xafc500 to i64), i64* %RDI.i600, align 8
  %3234 = zext i32 %3223 to i64
  store i64 %3234, i64* %RSI.i556, align 8
  %3235 = add i64 %3233, 124947
  %3236 = add i64 %3233, 22
  %3237 = load i64, i64* %6, align 8
  %3238 = add i64 %3237, -8
  %3239 = inttoptr i64 %3238 to i64*
  store i64 %3236, i64* %3239, align 8
  store i64 %3238, i64* %6, align 8
  store i64 %3235, i64* %3, align 8
  %call2_40a30e = tail call %struct.Memory* @sub_428b10.hashdata_invert_ko(%struct.State* nonnull %0, i64 %3235, %struct.Memory* %call2_40a22b)
  %.pre72 = load i64, i64* %3, align 8
  %.pre73 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40a313

block_.L_40a313:                                  ; preds = %block_40a2fd, %block_40a2ef
  %3240 = phi i64 [ %3196, %block_40a2ef ], [ %.pre73, %block_40a2fd ]
  %3241 = phi i64 [ %3233, %block_40a2ef ], [ %.pre72, %block_40a2fd ]
  %MEMORY.30 = phi %struct.Memory* [ %call2_40a22b, %block_40a2ef ], [ %call2_40a30e, %block_40a2fd ]
  store i64 ptrtoint (%G__0xafc500_type* @G__0xafc500 to i64), i64* %RDI.i600, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i976, align 8
  %3242 = add i64 %3240, -28
  %3243 = add i64 %3241, 24
  store i64 %3243, i64* %3, align 8
  %3244 = inttoptr i64 %3242 to i32*
  %3245 = load i32, i32* %3244, align 4
  %3246 = sext i32 %3245 to i64
  %3247 = mul nsw i64 %3246, 744
  store i64 %3247, i64* %RCX.i922, align 8
  %3248 = lshr i64 %3247, 63
  %3249 = add i64 %3247, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3249, i64* %RAX.i976, align 8
  %3250 = icmp ult i64 %3249, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3251 = icmp ult i64 %3249, %3247
  %3252 = or i1 %3250, %3251
  %3253 = zext i1 %3252 to i8
  store i8 %3253, i8* %14, align 1
  %3254 = trunc i64 %3249 to i32
  %3255 = and i32 %3254, 248
  %3256 = tail call i32 @llvm.ctpop.i32(i32 %3255)
  %3257 = trunc i32 %3256 to i8
  %3258 = and i8 %3257, 1
  %3259 = xor i8 %3258, 1
  store i8 %3259, i8* %21, align 1
  %3260 = xor i64 %3247, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3261 = xor i64 %3260, %3249
  %3262 = lshr i64 %3261, 4
  %3263 = trunc i64 %3262 to i8
  %3264 = and i8 %3263, 1
  store i8 %3264, i8* %27, align 1
  %3265 = icmp eq i64 %3249, 0
  %3266 = zext i1 %3265 to i8
  store i8 %3266, i8* %30, align 1
  %3267 = lshr i64 %3249, 63
  %3268 = trunc i64 %3267 to i8
  store i8 %3268, i8* %33, align 1
  %3269 = xor i64 %3267, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3270 = xor i64 %3267, %3248
  %3271 = add nuw nsw i64 %3269, %3270
  %3272 = icmp eq i64 %3271, 2
  %3273 = zext i1 %3272 to i8
  store i8 %3273, i8* %39, align 1
  %3274 = add i64 %3247, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 16)
  %3275 = add i64 %3241, 37
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3274 to i32*
  %3277 = load i32, i32* %3276, align 8
  %3278 = zext i32 %3277 to i64
  store i64 %3278, i64* %RDX.i582, align 8
  store i32 %3277, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*), align 8
  store i64 %3278, i64* %RSI.i556, align 8
  %3279 = add i64 %3241, 124925
  %3280 = add i64 %3241, 56
  %3281 = load i64, i64* %6, align 8
  %3282 = add i64 %3281, -8
  %3283 = inttoptr i64 %3282 to i64*
  store i64 %3280, i64* %3283, align 8
  store i64 %3282, i64* %6, align 8
  store i64 %3279, i64* %3, align 8
  %call2_40a346 = tail call %struct.Memory* @sub_428b10.hashdata_invert_ko(%struct.State* nonnull %0, i64 %3279, %struct.Memory* %MEMORY.30)
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_40a34b

block_.L_40a34b:                                  ; preds = %block_40a2e5, %block_40a2c3, %block_40a228, %block_.L_40a313, %block_.L_40a286, %block_.L_40a276, %block_409d71
  %3284 = phi i64 [ %3136, %block_.L_40a286 ], [ %3124, %block_.L_40a276 ], [ %3059, %block_40a228 ], [ %3195, %block_40a2c3 ], [ %3222, %block_40a2e5 ], [ %.pre76, %block_.L_40a313 ], [ %1425, %block_409d71 ]
  %MEMORY.31 = phi %struct.Memory* [ %call2_40a289, %block_.L_40a286 ], [ %call2_40a27c, %block_.L_40a276 ], [ %call2_40a22b, %block_40a228 ], [ %call2_40a22b, %block_40a2c3 ], [ %call2_40a22b, %block_40a2e5 ], [ %call2_40a346, %block_.L_40a313 ], [ %call2_409d77, %block_409d71 ]
  %3285 = load i64, i64* %6, align 8
  %3286 = add i64 %3285, 48
  store i64 %3286, i64* %6, align 8
  %3287 = icmp ugt i64 %3285, -49
  %3288 = zext i1 %3287 to i8
  store i8 %3288, i8* %14, align 1
  %3289 = trunc i64 %3286 to i32
  %3290 = and i32 %3289, 255
  %3291 = tail call i32 @llvm.ctpop.i32(i32 %3290)
  %3292 = trunc i32 %3291 to i8
  %3293 = and i8 %3292, 1
  %3294 = xor i8 %3293, 1
  store i8 %3294, i8* %21, align 1
  %3295 = xor i64 %3285, 16
  %3296 = xor i64 %3295, %3286
  %3297 = lshr i64 %3296, 4
  %3298 = trunc i64 %3297 to i8
  %3299 = and i8 %3298, 1
  store i8 %3299, i8* %27, align 1
  %3300 = icmp eq i64 %3286, 0
  %3301 = zext i1 %3300 to i8
  store i8 %3301, i8* %30, align 1
  %3302 = lshr i64 %3286, 63
  %3303 = trunc i64 %3302 to i8
  store i8 %3303, i8* %33, align 1
  %3304 = lshr i64 %3285, 63
  %3305 = xor i64 %3302, %3304
  %3306 = add nuw nsw i64 %3305, %3302
  %3307 = icmp eq i64 %3306, 2
  %3308 = zext i1 %3307 to i8
  store i8 %3308, i8* %39, align 1
  %3309 = add i64 %3284, 5
  store i64 %3309, i64* %3, align 8
  %3310 = add i64 %3285, 56
  %3311 = inttoptr i64 %3286 to i64*
  %3312 = load i64, i64* %3311, align 8
  store i64 %3312, i64* %RBP.i, align 8
  store i64 %3310, i64* %6, align 8
  %3313 = add i64 %3284, 6
  store i64 %3313, i64* %3, align 8
  %3314 = inttoptr i64 %3310 to i64*
  %3315 = load i64, i64* %3314, align 8
  store i64 %3315, i64* %3, align 8
  %3316 = add i64 %3285, 64
  store i64 %3316, i64* %6, align 8
  ret %struct.Memory* %MEMORY.31
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jne_.L_409abe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 744
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl_0xaab3f0___rax_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.do_remove_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_409b13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jne_.L_409b68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_jne_.L_409bbd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_409d56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_409c1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_jne_.L_409c27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_409c27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_409d51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_409c7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_409c87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_409c87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_409d4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_409cdb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_409ce7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_409ce7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_409d47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_409d3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_409d42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_409d42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_409d5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_409d81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.do_commit_suicide(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40a34b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_409d86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xafc500___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xafc500_type* @G__0xafc500 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xb89e60___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb89e60_type* @G__0xb89e60 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_0xa7f420___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xa7f420_type* @G_0xa7f420 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_0xa7f420___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xa7f420_type* @G_0xa7f420 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rcx__0xa7f420(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xa7f420_type* @G_0xa7f420 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movb__dl___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__0xb89e60___rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12099168
  %6 = load i8, i8* %SIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_callq_.hashdata_invert_stone(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_jne_.L_409e91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 740
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
define %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_je_.L_409e91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_jmpq_.L_409f1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_409f19(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_409f19(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.remove_liberty(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x99da08___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x2e4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 740
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_409faf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_409faf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jmpq_.L_40a03c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40a037(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40a037(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40a0cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40a0cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40a15a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40a155(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40a155(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40a1be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40a1be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_40a21e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40a219(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40a219(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_jne_.L_40a235(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.create_new_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40a293(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_jne_.L_40a286(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_40a24e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40a276(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xdaa___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3498, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c4d2___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c4d2_type* @G__0x57c4d2 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_callq_.extend_neighbor_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.assimilate_neighbor_strings(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40a34b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xb6eec4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40a313(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb6eec4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.hashdata_invert_ko(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__edx__0xb6eec4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*), align 8
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
