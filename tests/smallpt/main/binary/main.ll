; ModuleID = 'main.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Sphere = type <{ double, %struct.Vec, %struct.Vec, %struct.Vec, i32, [4 x i8] }>
%struct.Vec = type { double, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Ray = type { %struct.Vec, %struct.Vec }

@spheres = local_unnamed_addr global [9 x %struct.Sphere] [%struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 1.000010e+05, double 4.080000e+01, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 2.500000e-01, double 2.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double -9.990100e+04, double 4.080000e+01, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 2.500000e-01, double 2.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double 4.080000e+01, double 1.000000e+05 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 7.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double 4.080000e+01, double -9.983000e+04 }, %struct.Vec zeroinitializer, %struct.Vec zeroinitializer, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double 1.000000e+05, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 7.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double 0xC0F864E666666666, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 7.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.650000e+01, %struct.Vec { double 2.700000e+01, double 1.650000e+01, double 4.700000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 0x3FEFF7CED916872B, double 0x3FEFF7CED916872B, double 0x3FEFF7CED916872B }, i32 1, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.650000e+01, %struct.Vec { double 7.300000e+01, double 1.650000e+01, double 7.800000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 0x3FEFF7CED916872B, double 0x3FEFF7CED916872B, double 0x3FEFF7CED916872B }, i32 2, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 6.000000e+02, %struct.Vec { double 5.000000e+01, double 6.813300e+02, double 8.160000e+01 }, %struct.Vec { double 1.200000e+01, double 1.200000e+01, double 1.200000e+01 }, %struct.Vec zeroinitializer, i32 0, [4 x i8] zeroinitializer }>], align 16
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = hidden unnamed_addr constant [20 x i8] c"Rendering (%d spp)\0A\00", align 1

; Function Attrs: uwtable
declare void @_Z8radianceRK3RayiPt(%struct.Vec* noalias nocapture sret, %struct.Ray* readonly dereferenceable(48), i32, i16*) local_unnamed_addr #0

; Function Attrs: nounwind
declare double @sqrt(double) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare double @erand48(i16*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: norecurse uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca [3 x i16], align 2
  %4 = alloca %struct.Ray, align 16
  %5 = alloca %struct.Vec, align 16
  %6 = icmp eq i32 %0, 2
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds i8*, i8** %1, i64 1
  %9 = load i8*, i8** %8, align 8, !tbaa !2
  %10 = tail call i64 @strtol(i8* nocapture nonnull %9, i8** null, i32 10) #5
  %11 = trunc i64 %10 to i32
  %12 = sdiv i32 %11, 4
  br label %13

; <label>:13:                                     ; preds = %7, %2
  %14 = phi i32 [ %12, %7 ], [ 1, %2 ]
  %15 = tail call i8* @_Znam(i64 18874368) #6
  %16 = bitcast i8* %15 to %struct.Vec*
  call void @llvm.memset.p0i8.i64(i8* nonnull %15, i8 0, i64 18874368, i32 8, i1 false)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %18 = shl nsw i32 %14, 2
  %19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18) #7
  %20 = bitcast [3 x i16]* %3 to i8*
  %21 = getelementptr inbounds [3 x i16], [3 x i16]* %3, i64 0, i64 0
  %22 = getelementptr inbounds [3 x i16], [3 x i16]* %3, i64 0, i64 1
  %23 = getelementptr inbounds [3 x i16], [3 x i16]* %3, i64 0, i64 2
  %24 = icmp sgt i32 %14, 0
  %25 = bitcast %struct.Ray* %4 to i8*
  %26 = getelementptr inbounds %struct.Ray, %struct.Ray* %4, i64 0, i32 0, i32 2
  %27 = getelementptr inbounds %struct.Ray, %struct.Ray* %4, i64 0, i32 1, i32 0
  %28 = getelementptr inbounds %struct.Ray, %struct.Ray* %4, i64 0, i32 1, i32 2
  %29 = sitofp i32 %14 to double
  %30 = fdiv double 1.000000e+00, %29
  %31 = getelementptr inbounds %struct.Vec, %struct.Vec* %5, i64 0, i32 2
  %32 = bitcast %struct.Ray* %4 to <2 x double>*
  %33 = bitcast double* %27 to <2 x double>*
  %34 = bitcast %struct.Vec* %5 to <2 x double>*
  %35 = insertelement <2 x double> undef, double %30, i32 0
  %36 = shufflevector <2 x double> %35, <2 x double> undef, <2 x i32> zeroinitializer
  %37 = bitcast %struct.Ray* %4 to <2 x double>*
  %38 = bitcast double* %27 to <2 x double>*
  %39 = bitcast %struct.Vec* %5 to <2 x double>*
  %40 = insertelement <2 x double> undef, double %30, i32 0
  %41 = shufflevector <2 x double> %40, <2 x double> undef, <2 x i32> zeroinitializer
  br label %43

; <label>:42:                                     ; preds = %53
  ret i32 0

; <label>:43:                                     ; preds = %53, %13
  %44 = phi i64 [ 0, %13 ], [ %54, %53 ]
  %45 = phi i32 [ 0, %13 ], [ %55, %53 ]
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %20) #5
  store i16 0, i16* %21, align 2, !tbaa !6
  store i16 0, i16* %22, align 2, !tbaa !6
  %46 = mul nsw i32 %45, %45
  %47 = trunc i64 %44 to i32
  %48 = mul nsw i32 %46, %47
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %23, align 2, !tbaa !6
  %50 = shl i64 %44, 10
  %51 = sub nuw nsw i64 785408, %50
  %52 = sitofp i32 %47 to double
  br label %57

; <label>:53:                                     ; preds = %68
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %20) #5
  %54 = add nuw nsw i64 %44, 1
  %55 = add nuw nsw i32 %45, 1
  %56 = icmp eq i64 %54, 768
  br i1 %56, label %42, label %43

; <label>:57:                                     ; preds = %68, %43
  %58 = phi i64 [ 0, %43 ], [ %69, %68 ]
  %59 = phi i32 [ 0, %43 ], [ %70, %68 ]
  %60 = add nuw nsw i64 %51, %58
  %61 = getelementptr inbounds %struct.Vec, %struct.Vec* %16, i64 %60, i32 0
  %62 = getelementptr inbounds %struct.Vec, %struct.Vec* %16, i64 %60, i32 2
  %63 = trunc i32 %59 to i16
  %64 = uitofp i16 %63 to double
  %65 = bitcast double* %61 to <2 x double>*
  %66 = bitcast double* %61 to <2 x double>*
  %67 = bitcast double* %61 to <2 x double>*
  br label %72

; <label>:68:                                     ; preds = %245
  %69 = add nuw nsw i64 %58, 1
  %70 = add nuw nsw i32 %59, 1
  %71 = icmp eq i64 %69, 1024
  br i1 %71, label %53, label %57

; <label>:72:                                     ; preds = %245, %57
  %73 = phi i32 [ 0, %57 ], [ %260, %245 ]
  %74 = sitofp i32 %73 to double
  %75 = fadd double %74, 5.000000e-01
  br i1 %24, label %76, label %77

; <label>:76:                                     ; preds = %72
  br label %95

; <label>:77:                                     ; preds = %121, %72
  %78 = phi double [ 0.000000e+00, %72 ], [ %167, %121 ]
  %79 = phi <2 x double> [ zeroinitializer, %72 ], [ %166, %121 ]
  %80 = fcmp olt <2 x double> %79, zeroinitializer
  %81 = fcmp ogt <2 x double> %79, <double 1.000000e+00, double 1.000000e+00>
  %82 = select <2 x i1> %81, <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double> %79
  %83 = fcmp olt double %78, 0.000000e+00
  %84 = fcmp ogt double %78, 1.000000e+00
  %85 = select i1 %84, double 1.000000e+00, double %78
  %86 = fmul <2 x double> %82, <double 2.500000e-01, double 2.500000e-01>
  %87 = select <2 x i1> %80, <2 x double> zeroinitializer, <2 x double> %86
  %88 = fmul double %85, 2.500000e-01
  %89 = select i1 %83, double 0.000000e+00, double %88
  %90 = load <2 x double>, <2 x double>* %65, align 8, !tbaa !8, !noalias !10
  %91 = fadd <2 x double> %87, %90
  %92 = load double, double* %62, align 8, !tbaa !13, !noalias !10
  %93 = fadd double %89, %92
  store <2 x double> %91, <2 x double>* %66, align 8
  store double %93, double* %62, align 8
  br i1 %24, label %94, label %245

; <label>:94:                                     ; preds = %77
  br label %170

; <label>:95:                                     ; preds = %121, %76
  %96 = phi i32 [ %168, %121 ], [ 0, %76 ]
  %97 = phi double [ %167, %121 ], [ 0.000000e+00, %76 ]
  %98 = phi <2 x double> [ %166, %121 ], [ zeroinitializer, %76 ]
  %99 = call double @erand48(i16* nonnull %21) #5
  %100 = fmul double %99, 2.000000e+00
  %101 = fcmp olt double %100, 1.000000e+00
  br i1 %101, label %102, label %105

; <label>:102:                                    ; preds = %95
  %103 = call double @sqrt(double %100) #5
  %104 = fadd double %103, -1.000000e+00
  br label %109

; <label>:105:                                    ; preds = %95
  %106 = fsub double 2.000000e+00, %100
  %107 = call double @sqrt(double %106) #5
  %108 = fsub double 1.000000e+00, %107
  br label %109

; <label>:109:                                    ; preds = %105, %102
  %110 = phi double [ %104, %102 ], [ %108, %105 ]
  %111 = call double @erand48(i16* nonnull %21) #5
  %112 = fmul double %111, 2.000000e+00
  %113 = fcmp olt double %112, 1.000000e+00
  br i1 %113, label %114, label %117

; <label>:114:                                    ; preds = %109
  %115 = call double @sqrt(double %112) #5
  %116 = fadd double %115, -1.000000e+00
  br label %121

; <label>:117:                                    ; preds = %109
  %118 = fsub double 2.000000e+00, %112
  %119 = call double @sqrt(double %118) #5
  %120 = fsub double 1.000000e+00, %119
  br label %121

; <label>:121:                                    ; preds = %117, %114
  %122 = phi double [ %116, %114 ], [ %120, %117 ]
  %123 = fadd double %110, 5.000000e-01
  %124 = fmul double %123, 5.000000e-01
  %125 = fadd double %124, %64
  %126 = fmul double %125, 0x3F50000000000000
  %127 = fadd double %126, -5.000000e-01
  %128 = insertelement <2 x double> undef, double %127, i32 0
  %129 = shufflevector <2 x double> %128, <2 x double> undef, <2 x i32> zeroinitializer
  %130 = fmul <2 x double> %129, <double 0x3FE5E8CA11BFD44F, double 0.000000e+00>
  %131 = fadd double %75, %122
  %132 = fmul double %131, 5.000000e-01
  %133 = fadd double %132, %52
  %134 = fdiv double %133, 7.680000e+02
  %135 = fadd double %134, -5.000000e-01
  %136 = insertelement <2 x double> undef, double %135, i32 0
  %137 = shufflevector <2 x double> %136, <2 x double> undef, <2 x i32> zeroinitializer
  %138 = fmul <2 x double> %137, <double 0.000000e+00, double 0x3FE06AC72F44BE81>
  %139 = fmul double %135, 0x3F9662D746DC5A9D
  %140 = fadd <2 x double> %130, %138
  %141 = extractelement <2 x double> %130, i32 1
  %142 = fsub double %141, %139
  %143 = fadd <2 x double> %140, <double 0.000000e+00, double 0xBFA5CC2D1960285F>
  %144 = fadd double %142, 0xBFEFF8929A5E7D34
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %25) #5
  %145 = fmul <2 x double> %143, <double 1.400000e+02, double 1.400000e+02>
  %146 = fmul double %144, 1.400000e+02
  %147 = fadd <2 x double> %145, <double 5.000000e+01, double 5.200000e+01>
  %148 = fadd double %146, 2.956000e+02
  %149 = extractelement <2 x double> %143, i32 0
  %150 = fmul double %149, %149
  %151 = extractelement <2 x double> %143, i32 1
  %152 = fmul double %151, %151
  %153 = fadd double %150, %152
  %154 = fmul double %144, %144
  %155 = fadd double %154, %153
  %156 = call double @sqrt(double %155) #5
  %157 = fdiv double 1.000000e+00, %156
  %158 = insertelement <2 x double> undef, double %157, i32 0
  %159 = shufflevector <2 x double> %158, <2 x double> undef, <2 x i32> zeroinitializer
  %160 = fmul <2 x double> %159, %143
  %161 = fmul double %157, %144
  store <2 x double> %147, <2 x double>* %32, align 16
  store double %148, double* %26, align 16
  store <2 x double> %160, <2 x double>* %33, align 8
  store double %161, double* %28, align 8
  call void @_Z8radianceRK3RayiPt(%struct.Vec* nonnull sret %5, %struct.Ray* nonnull dereferenceable(48) %4, i32 0, i16* nonnull %21)
  %162 = load <2 x double>, <2 x double>* %34, align 16, !tbaa !8, !noalias !15
  %163 = fmul <2 x double> %36, %162
  %164 = load double, double* %31, align 16, !tbaa !13, !noalias !15
  %165 = fmul double %30, %164
  %166 = fadd <2 x double> %98, %163
  %167 = fadd double %97, %165
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %25) #5
  %168 = add nuw nsw i32 %96, 1
  %169 = icmp eq i32 %168, %14
  br i1 %169, label %77, label %95

; <label>:170:                                    ; preds = %196, %94
  %171 = phi i32 [ %243, %196 ], [ 0, %94 ]
  %172 = phi double [ %242, %196 ], [ 0.000000e+00, %94 ]
  %173 = phi <2 x double> [ %241, %196 ], [ zeroinitializer, %94 ]
  %174 = call double @erand48(i16* nonnull %21) #5
  %175 = fmul double %174, 2.000000e+00
  %176 = fcmp olt double %175, 1.000000e+00
  br i1 %176, label %181, label %177

; <label>:177:                                    ; preds = %170
  %178 = fsub double 2.000000e+00, %175
  %179 = call double @sqrt(double %178) #5
  %180 = fsub double 1.000000e+00, %179
  br label %184

; <label>:181:                                    ; preds = %170
  %182 = call double @sqrt(double %175) #5
  %183 = fadd double %182, -1.000000e+00
  br label %184

; <label>:184:                                    ; preds = %181, %177
  %185 = phi double [ %183, %181 ], [ %180, %177 ]
  %186 = call double @erand48(i16* nonnull %21) #5
  %187 = fmul double %186, 2.000000e+00
  %188 = fcmp olt double %187, 1.000000e+00
  br i1 %188, label %193, label %189

; <label>:189:                                    ; preds = %184
  %190 = fsub double 2.000000e+00, %187
  %191 = call double @sqrt(double %190) #5
  %192 = fsub double 1.000000e+00, %191
  br label %196

; <label>:193:                                    ; preds = %184
  %194 = call double @sqrt(double %187) #5
  %195 = fadd double %194, -1.000000e+00
  br label %196

; <label>:196:                                    ; preds = %193, %189
  %197 = phi double [ %195, %193 ], [ %192, %189 ]
  %198 = fadd double %185, 1.500000e+00
  %199 = fmul double %198, 5.000000e-01
  %200 = fadd double %199, %64
  %201 = fmul double %200, 0x3F50000000000000
  %202 = fadd double %201, -5.000000e-01
  %203 = insertelement <2 x double> undef, double %202, i32 0
  %204 = shufflevector <2 x double> %203, <2 x double> undef, <2 x i32> zeroinitializer
  %205 = fmul <2 x double> %204, <double 0x3FE5E8CA11BFD44F, double 0.000000e+00>
  %206 = fadd double %75, %197
  %207 = fmul double %206, 5.000000e-01
  %208 = fadd double %207, %52
  %209 = fdiv double %208, 7.680000e+02
  %210 = fadd double %209, -5.000000e-01
  %211 = insertelement <2 x double> undef, double %210, i32 0
  %212 = shufflevector <2 x double> %211, <2 x double> undef, <2 x i32> zeroinitializer
  %213 = fmul <2 x double> %212, <double 0.000000e+00, double 0x3FE06AC72F44BE81>
  %214 = fmul double %210, 0x3F9662D746DC5A9D
  %215 = fadd <2 x double> %205, %213
  %216 = extractelement <2 x double> %205, i32 1
  %217 = fsub double %216, %214
  %218 = fadd <2 x double> %215, <double 0.000000e+00, double 0xBFA5CC2D1960285F>
  %219 = fadd double %217, 0xBFEFF8929A5E7D34
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %25) #5
  %220 = fmul <2 x double> %218, <double 1.400000e+02, double 1.400000e+02>
  %221 = fmul double %219, 1.400000e+02
  %222 = fadd <2 x double> %220, <double 5.000000e+01, double 5.200000e+01>
  %223 = fadd double %221, 2.956000e+02
  %224 = extractelement <2 x double> %218, i32 0
  %225 = fmul double %224, %224
  %226 = extractelement <2 x double> %218, i32 1
  %227 = fmul double %226, %226
  %228 = fadd double %225, %227
  %229 = fmul double %219, %219
  %230 = fadd double %229, %228
  %231 = call double @sqrt(double %230) #5
  %232 = fdiv double 1.000000e+00, %231
  %233 = insertelement <2 x double> undef, double %232, i32 0
  %234 = shufflevector <2 x double> %233, <2 x double> undef, <2 x i32> zeroinitializer
  %235 = fmul <2 x double> %234, %218
  %236 = fmul double %232, %219
  store <2 x double> %222, <2 x double>* %37, align 16
  store double %223, double* %26, align 16
  store <2 x double> %235, <2 x double>* %38, align 8
  store double %236, double* %28, align 8
  call void @_Z8radianceRK3RayiPt(%struct.Vec* nonnull sret %5, %struct.Ray* nonnull dereferenceable(48) %4, i32 0, i16* nonnull %21)
  %237 = load <2 x double>, <2 x double>* %39, align 16, !tbaa !8, !noalias !15
  %238 = fmul <2 x double> %41, %237
  %239 = load double, double* %31, align 16, !tbaa !13, !noalias !15
  %240 = fmul double %30, %239
  %241 = fadd <2 x double> %173, %238
  %242 = fadd double %172, %240
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %25) #5
  %243 = add nuw nsw i32 %171, 1
  %244 = icmp eq i32 %243, %14
  br i1 %244, label %245, label %170

; <label>:245:                                    ; preds = %196, %77
  %246 = phi double [ 0.000000e+00, %77 ], [ %242, %196 ]
  %247 = phi <2 x double> [ zeroinitializer, %77 ], [ %241, %196 ]
  %248 = fcmp olt <2 x double> %247, zeroinitializer
  %249 = fcmp ogt <2 x double> %247, <double 1.000000e+00, double 1.000000e+00>
  %250 = select <2 x i1> %249, <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double> %247
  %251 = fcmp olt double %246, 0.000000e+00
  %252 = fcmp ogt double %246, 1.000000e+00
  %253 = select i1 %252, double 1.000000e+00, double %246
  %254 = fmul <2 x double> %250, <double 2.500000e-01, double 2.500000e-01>
  %255 = select <2 x i1> %248, <2 x double> zeroinitializer, <2 x double> %254
  %256 = fmul double %253, 2.500000e-01
  %257 = select i1 %251, double 0.000000e+00, double %256
  %258 = fadd <2 x double> %255, %91
  %259 = fadd double %257, %93
  store <2 x double> %258, <2 x double>* %67, align 8
  store double %259, double* %62, align 8
  %260 = add nuw nsw i32 %73, 1
  %261 = icmp eq i32 %260, 2
  br i1 %261, label %68, label %72
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #1

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znam(i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #1

attributes #0 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { builtin }
attributes #7 = { cold }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"short", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZNK3VecplERKS_: argument 0"}
!12 = distinct !{!12, !"_ZNK3VecplERKS_"}
!13 = !{!14, !9, i64 16}
!14 = !{!"_ZTS3Vec", !9, i64 0, !9, i64 8, !9, i64 16}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZNK3VecmlEd: argument 0"}
!17 = distinct !{!17, !"_ZNK3VecmlEd"}
