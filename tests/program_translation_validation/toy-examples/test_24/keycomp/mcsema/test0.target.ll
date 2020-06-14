; ModuleID = 'mcsema/test0.target.extract.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%struct.State.0 = type { %struct.ArchState.1, [32 x %union.VectorReg.2], %struct.ArithFlags.3, %union.anon.4, %struct.Segments.5, %struct.AddressSpace.6, %struct.GPR.7, %struct.X87Stack.8, %struct.MMX.9, %struct.FPUStatusFlags.10, %union.anon.4, %union.FPU.11, %struct.SegmentCaches.12 }
%struct.ArchState.1 = type { i32, i32, %union.anon.4 }
%union.VectorReg.2 = type { %union.vec512_t.13 }
%union.vec512_t.13 = type { %struct.uint64v8_t.14 }
%struct.uint64v8_t.14 = type { [8 x i64] }
%struct.ArithFlags.3 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments.5 = type { i16, %union.SegmentSelector.15, i16, %union.SegmentSelector.15, i16, %union.SegmentSelector.15, i16, %union.SegmentSelector.15, i16, %union.SegmentSelector.15, i16, %union.SegmentSelector.15 }
%union.SegmentSelector.15 = type { i16 }
%struct.AddressSpace.6 = type { i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16 }
%struct.Reg.16 = type { %union.anon.4 }
%struct.GPR.7 = type { i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16 }
%struct.X87Stack.8 = type { [8 x %struct.anon.3.17] }
%struct.anon.3.17 = type { i64, double }
%struct.MMX.9 = type { [8 x %struct.anon.4.18] }
%struct.anon.4.18 = type { i64, %union.vec64_t.19 }
%union.vec64_t.19 = type { %struct.uint64v1_t.20 }
%struct.uint64v1_t.20 = type { [1 x i64] }
%struct.FPUStatusFlags.10 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.anon.4 = type { i64 }
%union.FPU.11 = type { %struct.anon.13.21 }
%struct.anon.13.21 = type { %struct.FpuFXSAVE.22, [96 x i8] }
%struct.FpuFXSAVE.22 = type { %union.SegmentSelector.15, %union.SegmentSelector.15, %union.FPUAbridgedTagWord.23, i8, i16, i32, %union.SegmentSelector.15, i16, i32, %union.SegmentSelector.15, i16, %union.FPUControlStatus.24, %union.FPUControlStatus.24, [8 x %struct.FPUStackElem.25], [16 x %union.vec128_t.26] }
%union.FPUAbridgedTagWord.23 = type { i8 }
%union.FPUControlStatus.24 = type { i32 }
%struct.FPUStackElem.25 = type { %union.anon.11.27, [6 x i8] }
%union.anon.11.27 = type { %struct.float80_t.28 }
%struct.float80_t.28 = type { [10 x i8] }
%union.vec128_t.26 = type { %struct.uint128v1_t.29 }
%struct.uint128v1_t.29 = type { [1 x i128] }
%struct.SegmentCaches.12 = type { %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30 }
%struct.SegmentShadow.30 = type { %union.anon.4, i32, i32 }
%struct.Memory.31 = type opaque

declare %struct.Memory.31* @__remill_error(%struct.State.0* dereferenceable(3376), i64, %struct.Memory.31*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory.31* @__remill_function_call(%struct.State.0* dereferenceable(3376), i64, %struct.Memory.31*) local_unnamed_addr

declare %struct.Memory.31* @sub_4005c0.to_byte(%struct.State.0* noalias dereferenceable(3376), i64, %struct.Memory.31* noalias readnone returned) local_unnamed_addr

declare %struct.Memory.31* @sub_400630.read_bytes(%struct.State.0* noalias dereferenceable(3376), i64, %struct.Memory.31* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory.31* @keycomp(%struct.State.0* noalias, i64, %struct.Memory.31* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 2, i32 13
  %5 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 11, i32 0
  %6 = tail call %struct.Memory.31* @__remill_function_call(%struct.State.0* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory.31* %2)
  %7 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i578 = bitcast %union.anon.4* %7 to i32*
  %8 = load i32, i32* %EAX.i578, align 4
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %RBP.i, align 8
  %11 = add i64 %10, -32
  %12 = add i64 %9, 5
  store i64 %12, i64* %3, align 8
  %13 = inttoptr i64 %11 to i32*
  store i32 %8, i32* %13, align 4
  %14 = load i64, i64* %RBP.i, align 8
  %15 = add i64 %14, -32
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 4
  store i64 %17, i64* %3, align 8
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %19, -37
  %21 = icmp eq i32 %20, 0
  %.v = select i1 %21, i64 21, i64 10
  %22 = add i64 %16, %.v
  store i64 %22, i64* %3, align 8
  br i1 %21, label %block_.L_40076f, label %block_400764

block_400764:                                     ; preds = %entry
  br label %block_.L_400b57

block_.L_40076f:                                  ; preds = %entry
  %23 = add i64 %14, -16
  %24 = add i64 %22, 4
  store i64 %24, i64* %3, align 8
  %25 = inttoptr i64 %23 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 4
  %28 = add i64 %22, 12
  store i64 %28, i64* %3, align 8
  store i64 %27, i64* %25, align 8
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -16
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 4
  store i64 %32, i64* %3, align 8
  %33 = inttoptr i64 %30 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %31, 7
  store i64 %35, i64* %3, align 8
  %36 = inttoptr i64 %34 to i8*
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, -100
  %40 = icmp eq i32 %39, 0
  %.v51 = select i1 %40, i64 28, i64 16
  %41 = add i64 %31, %.v51
  br i1 %40, label %block_.L_400797, label %block_40078b

block_40078b:                                     ; preds = %block_.L_40076f
  br label %block_.L_400b57

block_.L_400797:                                  ; preds = %block_.L_40076f
  %42 = add i64 %41, -471
  %call2_40079f = tail call %struct.Memory.31* @sub_4005c0.to_byte(%struct.State.0* %0, i64 %42, %struct.Memory.31* %6)
  %43 = load i32, i32* %EAX.i578, align 4
  %44 = load i64, i64* %3, align 8
  %45 = add i32 %43, -9
  %46 = icmp eq i32 %45, 0
  %.v52 = select i1 %46, i64 21, i64 9
  %47 = add i64 %44, %.v52
  br i1 %46, label %block_.L_4007b9, label %block_4007ad

block_4007ad:                                     ; preds = %block_.L_400797
  br label %block_.L_400b57

block_.L_4007b9:                                  ; preds = %block_.L_400797
  %48 = add i64 %47, -505
  %call2_4007c1 = tail call %struct.Memory.31* @sub_4005c0.to_byte(%struct.State.0* %0, i64 %48, %struct.Memory.31* %call2_40079f)
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -24
  %51 = load i32, i32* %EAX.i578, align 4
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 3
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %50 to i32*
  store i32 %51, i32* %54, align 4
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -24
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 3
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %56 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 1
  %62 = add i32 %61, -26
  %63 = icmp eq i32 %62, 0
  %.v53 = select i1 %63, i64 27, i64 15
  %64 = add i64 %57, %.v53
  br i1 %63, label %block_.L_4007e4, label %block_4007d8

block_4007d8:                                     ; preds = %block_.L_4007b9
  br label %block_.L_400b57

block_.L_4007e4:                                  ; preds = %block_.L_4007b9
  %65 = add i64 %64, -548
  %call2_4007ec = tail call %struct.Memory.31* @sub_4005c0.to_byte(%struct.State.0* %0, i64 %65, %struct.Memory.31* %call2_4007c1)
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -28
  %69 = load i32, i32* %EAX.i578, align 4
  %70 = add i64 %66, 8
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %68 to i32*
  store i32 %69, i32* %71, align 4
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -28
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 3
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %73 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %77, 1
  %79 = zext i32 %78 to i64
  %80 = lshr i32 %78, 31
  %81 = lshr i32 %77, 31
  %82 = xor i32 %80, %81
  %83 = add nuw nsw i32 %82, %80
  %84 = icmp eq i32 %83, 2
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %4, align 1
  %86 = sext i32 %78 to i64
  %87 = lshr i64 %86, 32
  %EDI.i489 = bitcast %union.anon.4* %5 to i32*
  %88 = load i32, i32* %EDI.i489, align 4
  %89 = add i64 %74, 9
  %90 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 7, i32 0
  %91 = sext i32 %88 to i64
  %92 = shl nuw i64 %87, 32
  %93 = or i64 %92, %79
  %94 = sdiv i64 %93, %91
  br i1 undef, label %97, label %95

; <label>:95:                                     ; preds = %block_.L_4007e4
  %96 = tail call %struct.Memory.31* @__remill_error(%struct.State.0* nonnull dereferenceable(3376) %0, i64 %89, %struct.Memory.31* %call2_4007ec)
  %.pre = load i32, i32* %EAX.i578, align 4
  %.pre1 = load i64, i64* %3, align 8
  %.pre74 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__edi.exit

; <label>:97:                                     ; preds = %block_.L_4007e4
  %98 = getelementptr inbounds %union.anon.4, %union.anon.4* %90, i64 0, i32 0
  store i8 0, i8* %4, align 1
  %99 = trunc i64 %94 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %97, %95
  %100 = phi i64 [ %.pre74, %95 ], [ %72, %97 ]
  %101 = phi i64 [ %.pre1, %95 ], [ %89, %97 ]
  %102 = phi i32 [ %.pre, %95 ], [ %99, %97 ]
  %103 = phi %struct.Memory.31* [ %96, %95 ], [ %call2_4007ec, %97 ]
  %104 = add i32 %102, -7
  %105 = icmp eq i32 %104, 0
  %.v54 = select i1 %105, i64 21, i64 9
  %106 = add i64 %101, %.v54
  store i64 %106, i64* %3, align 8
  br i1 %105, label %block_.L_400817, label %block_40080b

block_40080b:                                     ; preds = %routine_idivl__edi.exit
  br label %block_.L_400b57

block_.L_400817:                                  ; preds = %routine_idivl__edi.exit
  %107 = add i64 %100, -16
  %108 = add i64 %106, 4
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %107 to i64*
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, 4
  %112 = add i64 %106, 8
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i8*
  %114 = load i8, i8* %113, align 1
  %115 = and i8 %114, 15
  %116 = zext i8 %115 to i32
  %117 = add nsw i32 %116, -1
  %118 = icmp eq i32 %117, 0
  %.v55 = select i1 %118, i64 20, i64 55
  %119 = add i64 %106, %.v55
  store i64 %119, i64* %3, align 8
  br i1 %118, label %block_40082b, label %block_.L_40084e

block_40082b:                                     ; preds = %block_.L_400817
  %120 = add i64 %119, 4
  store i64 %120, i64* %3, align 8
  %121 = load i64, i64* %109, align 8
  %122 = add i64 %121, 4
  %123 = add i64 %119, 8
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i8*
  %125 = load i8, i8* %124, align 1
  %126 = and i8 %125, -16
  %127 = zext i8 %126 to i32
  %128 = add nsw i32 %127, -48
  %129 = icmp eq i32 %128, 0
  %.v56 = select i1 %129, i64 23, i64 35
  %130 = add i64 %119, %.v56
  store i64 %130, i64* %3, align 8
  br i1 %129, label %block_400842, label %block_.L_40084e

block_400842:                                     ; preds = %block_40082b
  %131 = add i64 %100, -20
  %132 = add i64 %130, 7
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i32*
  store i32 -4, i32* %133, align 4
  %134 = load i64, i64* %3, align 8
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -16
  %137 = add i64 %134, 21
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i64*
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, 5
  %141 = add i64 %134, 25
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i8*
  %143 = load i8, i8* %142, align 1
  %144 = and i8 %143, 15
  %145 = add i64 %135, -33
  %146 = add i64 %134, 33
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i8*
  store i8 %144, i8* %147, align 1
  %148 = load i64, i64* %RBP.i, align 8
  %149 = add i64 %148, -16
  %150 = load i64, i64* %3, align 8
  %151 = add i64 %150, 4
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %149 to i64*
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, 5
  %155 = add i64 %150, 8
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i8*
  %157 = load i8, i8* %156, align 1
  %158 = and i8 %157, -16
  %159 = add i64 %148, -34
  %160 = add i64 %150, 19
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i8*
  store i8 %158, i8* %161, align 1
  %162 = load i64, i64* %RBP.i, align 8
  %163 = add i64 %162, -33
  %164 = load i64, i64* %3, align 8
  %165 = add i64 %164, 4
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %163 to i8*
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = add nsw i32 %168, -3
  %170 = icmp eq i32 %169, 0
  %.v57 = select i1 %170, i64 13, i64 40
  %171 = add i64 %164, %.v57
  store i64 %171, i64* %3, align 8
  br i1 %170, label %block_40088a, label %block_.L_4008a5

block_.L_40084e:                                  ; preds = %block_40082b, %block_.L_400817
  br label %block_.L_400b57

block_40088a:                                     ; preds = %block_400842
  %172 = add i64 %162, -34
  %173 = add i64 %171, 4
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i8*
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = add nsw i32 %176, -96
  %178 = icmp eq i32 %177, 0
  %.v58 = select i1 %178, i64 13, i64 27
  %179 = add i64 %171, %.v58
  store i64 %179, i64* %3, align 8
  br i1 %178, label %block_400897, label %block_.L_4008a5

block_400897:                                     ; preds = %block_40088a
  %180 = add i64 %162, -20
  %181 = add i64 %179, 3
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = add i32 %183, 4
  %185 = add i64 %179, 9
  store i64 %185, i64* %3, align 8
  store i32 %184, i32* %182, align 4
  %186 = load i64, i64* %3, align 8
  %187 = add i64 %186, 14
  br label %block_.L_4008ae

block_.L_4008a5:                                  ; preds = %block_40088a, %block_400842
  %188 = phi i64 [ %179, %block_40088a ], [ %171, %block_400842 ]
  %189 = add i64 %162, -20
  %190 = add i64 %188, 3
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = add i32 %192, 5
  %194 = add i64 %188, 9
  store i64 %194, i64* %3, align 8
  store i32 %193, i32* %191, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_4008ae

block_.L_4008ae:                                  ; preds = %block_.L_4008a5, %block_400897
  %195 = phi i64 [ %.pre2, %block_.L_4008a5 ], [ %187, %block_400897 ]
  %196 = add i64 %195, -750
  %call2_4008b6 = tail call %struct.Memory.31* @sub_4005c0.to_byte(%struct.State.0* %0, i64 %196, %struct.Memory.31* %103)
  %AL.i = bitcast %union.anon.4* %7 to i8*
  %197 = load i8, i8* %AL.i, align 1
  %198 = load i64, i64* %3, align 8
  %199 = load i64, i64* %RBP.i, align 8
  %200 = add i64 %199, -35
  %201 = add i64 %198, 5
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i8*
  store i8 %197, i8* %202, align 1
  %RDX.i384 = getelementptr inbounds %union.anon.4, %union.anon.4* %90, i64 0, i32 0
  %203 = load i64, i64* %3, align 8
  %204 = add i64 %203, -768
  %call2_4008c8 = tail call %struct.Memory.31* @sub_4005c0.to_byte(%struct.State.0* %0, i64 %204, %struct.Memory.31* %call2_4008b6)
  %205 = load i64, i64* %RBP.i, align 8
  %206 = add i64 %205, -35
  %207 = load i64, i64* %3, align 8
  %208 = add i64 %207, 4
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %206 to i8*
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i64
  %212 = load i32, i32* %EAX.i578, align 4
  %213 = zext i32 %212 to i64
  %214 = or i64 %213, %211
  %215 = trunc i64 %214 to i8
  %216 = add i64 %207, 12
  store i64 %216, i64* %3, align 8
  store i8 %215, i8* %209, align 1
  %217 = load i64, i64* %RBP.i, align 8
  %218 = load i64, i64* %3, align 8
  %219 = add i64 %218, 4
  store i64 %219, i64* %3, align 8
  %220 = add i64 %217, -20
  %221 = add i64 %218, 33
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = add i64 %218, 36
  store i64 %224, i64* %3, align 8
  %225 = load i32, i32* %222, align 4
  %226 = zext i32 %225 to i64
  %227 = add i64 %218, 38
  store i64 %227, i64* %3, align 8
                                                  ; No predecessors!
  %229 = shl i32 %225, 1
  br label %238
                                                  ; No predecessors!
  %231 = and i32 %223, 31
  %232 = zext i32 %231 to i64
  %233 = add nuw nsw i64 %232, 4294967295
  %234 = and i64 %233, 4294967295
  %235 = shl i64 %226, %234
  %236 = trunc i64 %235 to i32
  %237 = shl i32 %236, 1
  br label %238

; <label>:238:                                    ; preds = %230, %228
  %239 = phi i32 [ %229, %228 ], [ %237, %230 ]
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %238
  %240 = phi i32 [ %239, %238 ], [ %225, %block_.L_4008ae ]
  %241 = add i64 %218, 41
  store i64 %241, i64* %3, align 8
  store i32 %240, i32* %222, align 4
  %.pre3 = load i64, i64* %RBP.i, align 8
  %.pre4 = load i64, i64* %3, align 8
  %242 = add i64 %.pre3, -20
  %243 = add i64 %.pre4, 4
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 0
  %.v59 = select i1 %246, i64 22, i64 10
  %247 = add i64 %.pre4, %.v59
  br i1 %246, label %block_.L_400918, label %block_40090c

block_40090c:                                     ; preds = %routine_shll__cl___eax.exit
  br label %block_.L_400b57

block_.L_400918:                                  ; preds = %routine_shll__cl___eax.exit
  %248 = add i64 %247, -744
  %call2_40092a = tail call %struct.Memory.31* @sub_400630.read_bytes(%struct.State.0* %0, i64 %248, %struct.Memory.31* %call2_4008c8)
  %AX.i = bitcast %union.anon.4* %7 to i16*
  %249 = load i16, i16* %AX.i, align 2
  %250 = load i64, i64* %3, align 8
  %251 = load i64, i64* %RBP.i, align 8
  %252 = add i64 %251, -38
  %253 = add i64 %250, 7
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i16*
  store i16 %249, i16* %254, align 2
  %255 = load i64, i64* %RBP.i, align 8
  %256 = add i64 %255, -38
  %257 = load i64, i64* %3, align 8
  %258 = add i64 %257, 4
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %256 to i16*
  %260 = load i16, i16* %259, align 2
  %261 = or i16 %260, 21845
  %262 = zext i16 %261 to i32
  %263 = add nsw i32 %262, -56663
  %264 = icmp eq i32 %263, 0
  %.v60 = select i1 %264, i64 20, i64 52
  %265 = add i64 %257, %.v60
  store i64 %265, i64* %3, align 8
  br i1 %264, label %block_40094a, label %block_.L_40096a

block_40094a:                                     ; preds = %block_.L_400918
  %266 = add i64 %265, 4
  store i64 %266, i64* %3, align 8
  %267 = load i16, i16* %259, align 2
  %268 = or i16 %267, -21846
  %269 = zext i16 %268 to i32
  %270 = add nsw i32 %269, -65211
  %271 = icmp eq i32 %270, 0
  %.v61 = select i1 %271, i64 20, i64 32
  %272 = add i64 %265, %.v61
  store i64 %272, i64* %3, align 8
  br i1 %271, label %block_40095e, label %block_.L_40096a

block_40095e:                                     ; preds = %block_40094a
  %273 = add i64 %255, -20
  %274 = add i64 %272, 7
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i32*
  store i32 43690, i32* %275, align 4
  %276 = load i64, i64* %3, align 8
  %277 = add i64 %276, 12
  br label %block_.L_400971

block_.L_40096a:                                  ; preds = %block_40094a, %block_.L_400918
  %278 = phi i64 [ %272, %block_40094a ], [ %265, %block_.L_400918 ]
  %279 = add i64 %255, -20
  %280 = add i64 %278, 7
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i32*
  store i32 48059, i32* %281, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400971

block_.L_400971:                                  ; preds = %block_.L_40096a, %block_40095e
  %282 = phi i64 [ %.pre5, %block_.L_40096a ], [ %277, %block_40095e ]
  %283 = add i64 %282, -833
  %call2_400983 = tail call %struct.Memory.31* @sub_400630.read_bytes(%struct.State.0* %0, i64 %283, %struct.Memory.31* %call2_40092a)
  %284 = load i64, i64* %RBP.i, align 8
  %285 = add i64 %284, -44
  %286 = load i32, i32* %EAX.i578, align 4
  %287 = load i64, i64* %3, align 8
  %288 = add i64 %287, 3
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %285 to i32*
  store i32 %286, i32* %289, align 4
  %290 = load i64, i64* %RBP.i, align 8
  %291 = add i64 %290, -44
  %292 = load i64, i64* %3, align 8
  %293 = add i64 %292, 3
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %291 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = zext i32 %295 to i64
  %297 = xor i64 %296, -1534560611
  %298 = trunc i64 %297 to i32
  %299 = add i64 %290, -48
  %300 = add i64 %292, 11
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %299 to i32*
  store i32 %298, i32* %301, align 4
  %302 = load i64, i64* %RBP.i, align 8
  %303 = add i64 %302, -48
  %304 = load i64, i64* %3, align 8
  %305 = add i64 %304, 3
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %303 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = lshr i32 %307, 16
  %309 = add i64 %302, -52
  %310 = add i64 %304, 9
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i32*
  store i32 %308, i32* %311, align 4
  %312 = load i64, i64* %RBP.i, align 8
  %313 = add i64 %312, -48
  %314 = load i64, i64* %3, align 8
  %315 = add i64 %314, 3
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %313 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %317, 65535
  %319 = add i64 %312, -56
  %320 = add i64 %314, 11
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  store i32 %318, i32* %321, align 4
  %322 = load i64, i64* %RBP.i, align 8
  br i1 undef, label %block_4009b4, label %block_.L_400971.block_.L_4009cc_crit_edge

block_.L_400971.block_.L_4009cc_crit_edge:        ; preds = %block_.L_400971
  %.pre46 = add i64 %322, -20
  %.pre48 = inttoptr i64 %.pre46 to i32*
  br label %block_.L_4009cc

block_4009b4:                                     ; preds = %block_.L_400971
  %323 = add i64 %322, -20
  %324 = inttoptr i64 %323 to i32*
  br i1 undef, label %block_4009c0, label %block_.L_4009cc

block_4009c0:                                     ; preds = %block_4009b4
  br label %block_.L_4009d3

block_.L_4009cc:                                  ; preds = %block_4009b4, %block_.L_400971.block_.L_4009cc_crit_edge
  br label %block_.L_4009d3

block_.L_4009d3:                                  ; preds = %block_.L_4009cc, %block_4009c0
  br i1 undef, label %block_.L_400a12, label %block_400a06

block_400a06:                                     ; preds = %block_.L_4009d3
  br label %block_.L_400b57

block_.L_400a12:                                  ; preds = %block_.L_4009d3
  br i1 undef, label %block_.L_400a36, label %block_400a2a

block_400a2a:                                     ; preds = %block_.L_400a12
  br label %block_.L_400b57

block_.L_400a36:                                  ; preds = %block_.L_400a12
  br i1 undef, label %block_.L_400a83, label %block_400a78

block_400a78:                                     ; preds = %block_.L_400a36
  br label %block_.L_400b57

block_.L_400a83:                                  ; preds = %block_.L_400a36
  br i1 undef, label %block_400aaf, label %block_.L_400ace

block_400aaf:                                     ; preds = %block_.L_400a83
  br i1 undef, label %block_400ac0, label %block_.L_400ace

block_400ac0:                                     ; preds = %block_400aaf
  br label %block_.L_400b51

block_.L_400ace:                                  ; preds = %block_400aaf, %block_.L_400a83
  br i1 undef, label %block_400ae6, label %block_.L_400b46

block_400ae6:                                     ; preds = %block_.L_400ace
  br i1 undef, label %block_400b24, label %block_.L_400b41

block_400b24:                                     ; preds = %block_400ae6
  br i1 undef, label %block_.L_400b41, label %block_400b3a

block_400b3a:                                     ; preds = %block_400b24
  br label %block_.L_400b41

block_.L_400b41:                                  ; preds = %block_400b3a, %block_400b24, %block_400ae6
  br label %block_.L_400b4c

block_.L_400b46:                                  ; preds = %block_.L_400ace
  br label %block_.L_400b4c

block_.L_400b4c:                                  ; preds = %block_.L_400b46, %block_.L_400b41
  br label %block_.L_400b51

block_.L_400b51:                                  ; preds = %block_.L_400b4c, %block_400ac0
  br label %block_.L_400b57

block_.L_400b57:                                  ; preds = %block_.L_400b51, %block_400a78, %block_400a2a, %block_400a06, %block_40090c, %block_.L_40084e, %block_40080b, %block_4007d8, %block_4007ad, %block_40078b, %block_400764
  ret %struct.Memory.31* undef
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
