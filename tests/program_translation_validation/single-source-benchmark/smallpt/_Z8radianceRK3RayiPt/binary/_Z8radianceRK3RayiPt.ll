; ModuleID = '_Z8radianceRK3RayiPt.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Sphere = type <{ double, %struct.Vec, %struct.Vec, %struct.Vec, i32, [4 x i8] }>
%struct.Vec = type { double, double, double }
%struct.Ray = type { %struct.Vec, %struct.Vec }

@spheres = local_unnamed_addr global [9 x %struct.Sphere] [%struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 1.000010e+05, double 4.080000e+01, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 2.500000e-01, double 2.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double -9.990100e+04, double 4.080000e+01, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 2.500000e-01, double 2.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double 4.080000e+01, double 1.000000e+05 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 7.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double 4.080000e+01, double -9.983000e+04 }, %struct.Vec zeroinitializer, %struct.Vec zeroinitializer, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double 1.000000e+05, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 7.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double 0xC0F864E666666666, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 7.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.650000e+01, %struct.Vec { double 2.700000e+01, double 1.650000e+01, double 4.700000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 0x3FEFF7CED916872B, double 0x3FEFF7CED916872B, double 0x3FEFF7CED916872B }, i32 1, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.650000e+01, %struct.Vec { double 7.300000e+01, double 1.650000e+01, double 7.800000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 0x3FEFF7CED916872B, double 0x3FEFF7CED916872B, double 0x3FEFF7CED916872B }, i32 2, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 6.000000e+02, %struct.Vec { double 5.000000e+01, double 6.813300e+02, double 8.160000e+01 }, %struct.Vec { double 1.200000e+01, double 1.200000e+01, double 1.200000e+01 }, %struct.Vec zeroinitializer, i32 0, [4 x i8] zeroinitializer }>], align 16
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = hidden unnamed_addr constant [20 x i8] c"Rendering (%d spp)\0A\00", align 1

; Function Attrs: uwtable
define void @_Z8radianceRK3RayiPt(%struct.Vec* noalias nocapture sret, %struct.Ray* readonly dereferenceable(48), i32, i16*) local_unnamed_addr #0 {
  %5 = alloca %struct.Vec, align 16
  %6 = alloca %struct.Ray, align 16
  %7 = alloca %struct.Vec, align 16
  %8 = alloca %struct.Ray, align 16
  %9 = alloca %struct.Ray, align 16
  %10 = alloca %struct.Vec, align 16
  %11 = alloca %struct.Vec, align 16
  %12 = alloca %struct.Ray, align 16
  %13 = alloca %struct.Vec, align 16
  %14 = alloca %struct.Vec, align 16
  %15 = alloca %struct.Ray, align 16
  %16 = alloca %struct.Vec, align 16
  %17 = getelementptr inbounds %struct.Ray, %struct.Ray* %1, i64 0, i32 0, i32 0
  %18 = getelementptr inbounds %struct.Ray, %struct.Ray* %1, i64 0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.Ray, %struct.Ray* %1, i64 0, i32 0, i32 2
  %20 = getelementptr inbounds %struct.Ray, %struct.Ray* %1, i64 0, i32 1, i32 0
  %21 = getelementptr inbounds %struct.Ray, %struct.Ray* %1, i64 0, i32 1, i32 1
  %22 = getelementptr inbounds %struct.Ray, %struct.Ray* %1, i64 0, i32 1, i32 2
  br label %23

; <label>:23:                                     ; preds = %84, %4
  %24 = phi i32 [ 0, %4 ], [ %85, %84 ]
  %25 = phi double [ 1.000000e+20, %4 ], [ %86, %84 ]
  %26 = phi i64 [ 8, %4 ], [ %87, %84 ]
  %27 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %26, i32 1, i32 0
  %28 = load double, double* %27, align 8, !tbaa !2, !noalias !7
  %29 = load double, double* %17, align 8, !tbaa !2, !noalias !7
  %30 = fsub double %28, %29
  %31 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %26, i32 1, i32 1
  %32 = load double, double* %31, align 8, !tbaa !10, !noalias !7
  %33 = load double, double* %18, align 8, !tbaa !10, !noalias !7
  %34 = fsub double %32, %33
  %35 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %26, i32 1, i32 2
  %36 = load double, double* %35, align 8, !tbaa !11, !noalias !7
  %37 = load double, double* %19, align 8, !tbaa !11, !noalias !7
  %38 = fsub double %36, %37
  %39 = load double, double* %20, align 8, !tbaa !2
  %40 = load double, double* %21, align 8, !tbaa !10
  %41 = load double, double* %22, align 8, !tbaa !11
  %42 = insertelement <2 x double> undef, double %30, i32 0
  %43 = shufflevector <2 x double> %42, <2 x double> undef, <2 x i32> zeroinitializer
  %44 = insertelement <2 x double> undef, double %39, i32 0
  %45 = insertelement <2 x double> %44, double %30, i32 1
  %46 = fmul <2 x double> %43, %45
  %47 = insertelement <2 x double> undef, double %34, i32 0
  %48 = shufflevector <2 x double> %47, <2 x double> undef, <2 x i32> zeroinitializer
  %49 = insertelement <2 x double> undef, double %40, i32 0
  %50 = insertelement <2 x double> %49, double %34, i32 1
  %51 = fmul <2 x double> %48, %50
  %52 = fadd <2 x double> %46, %51
  %53 = insertelement <2 x double> undef, double %38, i32 0
  %54 = shufflevector <2 x double> %53, <2 x double> undef, <2 x i32> zeroinitializer
  %55 = insertelement <2 x double> undef, double %41, i32 0
  %56 = insertelement <2 x double> %55, double %38, i32 1
  %57 = fmul <2 x double> %54, %56
  %58 = fadd <2 x double> %52, %57
  %59 = extractelement <2 x double> %58, i32 0
  %60 = fmul double %59, %59
  %61 = extractelement <2 x double> %58, i32 1
  %62 = fsub double %60, %61
  %63 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %26, i32 0
  %64 = load double, double* %63, align 8, !tbaa !12
  %65 = fmul double %64, %64
  %66 = fadd double %65, %62
  %67 = fcmp olt double %66, 0.000000e+00
  br i1 %67, label %84, label %68

; <label>:68:                                     ; preds = %23
  %69 = tail call double @sqrt(double %66) #4
  %70 = fsub double %59, %69
  %71 = fcmp ogt double %70, 1.000000e-04
  br i1 %71, label %76, label %72

; <label>:72:                                     ; preds = %68
  %73 = fadd double %59, %69
  %74 = fcmp ogt double %73, 1.000000e-04
  %75 = select i1 %74, double %73, double 0.000000e+00
  br label %76

; <label>:76:                                     ; preds = %72, %68
  %77 = phi double [ %75, %72 ], [ %70, %68 ]
  %78 = fcmp une double %77, 0.000000e+00
  %79 = fcmp olt double %77, %25
  %80 = and i1 %78, %79
  %81 = trunc i64 %26 to i32
  %82 = select i1 %80, i32 %81, i32 %24
  %83 = select i1 %80, double %77, double %25
  br label %84

; <label>:84:                                     ; preds = %76, %23
  %85 = phi i32 [ %24, %23 ], [ %82, %76 ]
  %86 = phi double [ %25, %23 ], [ %83, %76 ]
  %87 = add nsw i64 %26, -1
  %88 = icmp eq i64 %26, 0
  br i1 %88, label %89, label %23

; <label>:89:                                     ; preds = %84
  %90 = fcmp olt double %86, 1.000000e+20
  br i1 %90, label %93, label %91

; <label>:91:                                     ; preds = %89
  %92 = bitcast %struct.Vec* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %92, i8 0, i64 24, i32 8, i1 false)
  br label %524

; <label>:93:                                     ; preds = %89
  %94 = sext i32 %85 to i64
  %95 = bitcast double* %20 to <2 x double>*
  %96 = load <2 x double>, <2 x double>* %95, align 8, !tbaa !15, !noalias !16
  %97 = insertelement <2 x double> undef, double %86, i32 0
  %98 = shufflevector <2 x double> %97, <2 x double> undef, <2 x i32> zeroinitializer
  %99 = fmul <2 x double> %98, %96
  %100 = load double, double* %22, align 8, !tbaa !11, !noalias !16
  %101 = fmul double %86, %100
  %102 = bitcast %struct.Ray* %1 to <2 x double>*
  %103 = load <2 x double>, <2 x double>* %102, align 8, !tbaa !15, !noalias !19
  %104 = fadd <2 x double> %99, %103
  %105 = load double, double* %19, align 8, !tbaa !11, !noalias !19
  %106 = fadd double %101, %105
  %107 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %94, i32 1, i32 0
  %108 = bitcast double* %107 to <2 x double>*
  %109 = load <2 x double>, <2 x double>* %108, align 8, !tbaa !15, !noalias !22
  %110 = fsub <2 x double> %104, %109
  %111 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %94, i32 1, i32 2
  %112 = load double, double* %111, align 8, !tbaa !11, !noalias !22
  %113 = fsub double %106, %112
  %114 = fmul <2 x double> %110, %110
  %115 = extractelement <2 x double> %114, i32 0
  %116 = extractelement <2 x double> %114, i32 1
  %117 = fadd double %115, %116
  %118 = fmul double %113, %113
  %119 = fadd double %117, %118
  %120 = tail call double @sqrt(double %119) #4
  %121 = fdiv double 1.000000e+00, %120
  %122 = insertelement <2 x double> undef, double %121, i32 0
  %123 = shufflevector <2 x double> %122, <2 x double> undef, <2 x i32> zeroinitializer
  %124 = fmul <2 x double> %110, %123
  %125 = fmul double %113, %121
  %126 = load double, double* %20, align 8, !tbaa !2
  %127 = extractelement <2 x double> %124, i32 0
  %128 = fmul double %126, %127
  %129 = extractelement <2 x double> %124, i32 1
  %130 = bitcast double* %21 to <2 x double>*
  %131 = load <2 x double>, <2 x double>* %130, align 8, !tbaa !15
  %132 = insertelement <2 x double> undef, double %129, i32 0
  %133 = insertelement <2 x double> %132, double %125, i32 1
  %134 = fmul <2 x double> %133, %131
  %135 = extractelement <2 x double> %134, i32 0
  %136 = fadd double %128, %135
  %137 = extractelement <2 x double> %134, i32 1
  %138 = fadd double %136, %137
  %139 = fcmp olt double %138, 0.000000e+00
  %140 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %124
  %141 = fsub double -0.000000e+00, %125
  %142 = select i1 %139, double %125, double %141
  %143 = select i1 %139, <2 x double> %124, <2 x double> %140
  %144 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %94, i32 3, i32 0
  %145 = bitcast double* %144 to <2 x double>*
  %146 = load <2 x double>, <2 x double>* %145, align 8
  %147 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %94, i32 3, i32 2
  %148 = load double, double* %147, align 8
  %149 = extractelement <2 x double> %146, i32 0
  %150 = extractelement <2 x double> %146, i32 1
  %151 = fcmp ogt double %149, %150
  %152 = fcmp ogt double %149, %148
  %153 = and i1 %151, %152
  %154 = fcmp ogt double %150, %148
  %155 = select i1 %154, double %150, double %148
  %156 = select i1 %153, double %149, double %155
  %157 = add nsw i32 %2, 1
  %158 = icmp sgt i32 %2, 4
  br i1 %158, label %159, label %177

; <label>:159:                                    ; preds = %93
  %160 = tail call double @erand48(i16* %3) #4
  %161 = fcmp olt double %160, %156
  br i1 %161, label %166, label %162

; <label>:162:                                    ; preds = %159
  %163 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %94, i32 2
  %164 = bitcast %struct.Vec* %0 to i8*
  %165 = bitcast %struct.Vec* %163 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %164, i8* nonnull %165, i64 24, i32 8, i1 false), !tbaa.struct !25
  br label %524

; <label>:166:                                    ; preds = %159
  %167 = fdiv double 1.000000e+00, %156
  %168 = insertelement <2 x double> undef, double %167, i32 0
  %169 = shufflevector <2 x double> %168, <2 x double> undef, <2 x i32> zeroinitializer
  %170 = fmul <2 x double> %146, %169
  %171 = fmul double %148, %167
  %172 = icmp sgt i32 %2, 127
  br i1 %172, label %173, label %177

; <label>:173:                                    ; preds = %166
  %174 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %94, i32 2
  %175 = bitcast %struct.Vec* %0 to i8*
  %176 = bitcast %struct.Vec* %174 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %175, i8* nonnull %176, i64 24, i32 8, i1 false), !tbaa.struct !25
  br label %524

; <label>:177:                                    ; preds = %166, %93
  %178 = phi double [ %171, %166 ], [ %148, %93 ]
  %179 = phi <2 x double> [ %170, %166 ], [ %146, %93 ]
  %180 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %94, i32 4
  %181 = load i32, i32* %180, align 8, !tbaa !26
  switch i32 %181, label %333 [
    i32 0, label %182
    i32 1, label %292
  ]

; <label>:182:                                    ; preds = %177
  %183 = tail call double @erand48(i16* %3) #4
  %184 = fmul double %183, 0x401921FB54442D18
  %185 = tail call double @erand48(i16* %3) #4
  %186 = tail call double @sqrt(double %185) #4
  %187 = extractelement <2 x double> %143, i32 0
  %188 = tail call double @llvm.fabs.f64(double %187)
  %189 = fcmp ogt double %188, 1.000000e-01
  %190 = select i1 %189, double 0.000000e+00, double 1.000000e+00
  %191 = select i1 %189, double 1.000000e+00, double 0.000000e+00
  %192 = extractelement <2 x double> %143, i32 1
  %193 = insertelement <2 x double> undef, double %142, i32 0
  %194 = shufflevector <2 x double> %193, <2 x double> %143, <2 x i32> <i32 0, i32 2>
  %195 = insertelement <2 x double> <double undef, double 0.000000e+00>, double %191, i32 0
  %196 = fmul <2 x double> %194, %195
  %197 = insertelement <2 x double> <double 0.000000e+00, double undef>, double %142, i32 1
  %198 = shufflevector <2 x double> %143, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %199 = insertelement <2 x double> %198, double %190, i32 1
  %200 = fmul <2 x double> %197, %199
  %201 = fsub <2 x double> %196, %200
  %202 = fmul double %192, %190
  %203 = fmul double %187, %191
  %204 = fsub double %202, %203
  %205 = extractelement <2 x double> %201, i32 0
  %206 = fmul double %205, %205
  %207 = extractelement <2 x double> %201, i32 1
  %208 = fmul double %207, %207
  %209 = fadd double %206, %208
  %210 = fmul double %204, %204
  %211 = fadd double %210, %209
  %212 = tail call double @sqrt(double %211) #4
  %213 = fdiv double 1.000000e+00, %212
  %214 = insertelement <2 x double> undef, double %213, i32 0
  %215 = shufflevector <2 x double> %214, <2 x double> undef, <2 x i32> zeroinitializer
  %216 = fmul <2 x double> %201, %215
  %217 = fmul double %204, %213
  %218 = insertelement <2 x double> %198, double %142, i32 1
  %219 = insertelement <2 x double> undef, double %217, i32 0
  %220 = extractelement <2 x double> %216, i32 0
  %221 = shufflevector <2 x double> %219, <2 x double> %216, <2 x i32> <i32 0, i32 2>
  %222 = fmul <2 x double> %218, %221
  %223 = extractelement <2 x double> %216, i32 1
  %224 = insertelement <2 x double> undef, double %223, i32 0
  %225 = insertelement <2 x double> %224, double %217, i32 1
  %226 = fmul <2 x double> %194, %225
  %227 = fsub <2 x double> %222, %226
  %228 = fmul double %187, %223
  %229 = fmul double %192, %220
  %230 = fsub double %228, %229
  %231 = tail call double @cos(double %184) #4
  %232 = insertelement <2 x double> undef, double %231, i32 0
  %233 = shufflevector <2 x double> %232, <2 x double> undef, <2 x i32> zeroinitializer
  %234 = fmul <2 x double> %233, %216
  %235 = fmul double %231, %217
  %236 = insertelement <2 x double> undef, double %186, i32 0
  %237 = shufflevector <2 x double> %236, <2 x double> undef, <2 x i32> zeroinitializer
  %238 = fmul <2 x double> %237, %234
  %239 = fmul double %186, %235
  %240 = tail call double @sin(double %184) #4
  %241 = insertelement <2 x double> undef, double %240, i32 0
  %242 = shufflevector <2 x double> %241, <2 x double> undef, <2 x i32> zeroinitializer
  %243 = fmul <2 x double> %242, %227
  %244 = fmul double %240, %230
  %245 = fmul <2 x double> %237, %243
  %246 = fmul double %186, %244
  %247 = fadd <2 x double> %238, %245
  %248 = fadd double %239, %246
  %249 = fsub double 1.000000e+00, %185
  %250 = tail call double @sqrt(double %249) #4
  %251 = insertelement <2 x double> undef, double %250, i32 0
  %252 = shufflevector <2 x double> %251, <2 x double> undef, <2 x i32> zeroinitializer
  %253 = fmul <2 x double> %143, %252
  %254 = fmul double %142, %250
  %255 = fadd <2 x double> %253, %247
  %256 = fadd double %254, %248
  %257 = extractelement <2 x double> %255, i32 0
  %258 = fmul double %257, %257
  %259 = extractelement <2 x double> %255, i32 1
  %260 = fmul double %259, %259
  %261 = fadd double %258, %260
  %262 = fmul double %256, %256
  %263 = fadd double %262, %261
  %264 = tail call double @sqrt(double %263) #4
  %265 = fdiv double 1.000000e+00, %264
  %266 = insertelement <2 x double> undef, double %265, i32 0
  %267 = shufflevector <2 x double> %266, <2 x double> undef, <2 x i32> zeroinitializer
  %268 = fmul <2 x double> %267, %255
  %269 = fmul double %265, %256
  %270 = bitcast %struct.Vec* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %270) #4
  %271 = bitcast %struct.Ray* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %271) #4
  %272 = bitcast %struct.Ray* %6 to <2 x double>*
  store <2 x double> %104, <2 x double>* %272, align 16
  %273 = getelementptr inbounds %struct.Ray, %struct.Ray* %6, i64 0, i32 0, i32 2
  store double %106, double* %273, align 16
  %274 = getelementptr inbounds %struct.Ray, %struct.Ray* %6, i64 0, i32 1, i32 0
  %275 = bitcast double* %274 to <2 x double>*
  store <2 x double> %268, <2 x double>* %275, align 8
  %276 = getelementptr inbounds %struct.Ray, %struct.Ray* %6, i64 0, i32 1, i32 2
  store double %269, double* %276, align 8
  call void @_Z8radianceRK3RayiPt(%struct.Vec* nonnull sret %5, %struct.Ray* nonnull dereferenceable(48) %6, i32 %157, i16* %3)
  %277 = bitcast %struct.Vec* %5 to <2 x double>*
  %278 = load <2 x double>, <2 x double>* %277, align 16, !tbaa !15, !noalias !27
  %279 = fmul <2 x double> %179, %278
  %280 = getelementptr inbounds %struct.Vec, %struct.Vec* %5, i64 0, i32 2
  %281 = load double, double* %280, align 16, !tbaa !11, !noalias !27
  %282 = fmul double %178, %281
  %283 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %94, i32 2, i32 0
  %284 = bitcast double* %283 to <2 x double>*
  %285 = load <2 x double>, <2 x double>* %284, align 8, !tbaa !15, !noalias !30
  %286 = fadd <2 x double> %279, %285
  %287 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %94, i32 2, i32 2
  %288 = load double, double* %287, align 8, !tbaa !11, !noalias !30
  %289 = fadd double %282, %288
  %290 = bitcast %struct.Vec* %0 to <2 x double>*
  store <2 x double> %286, <2 x double>* %290, align 8, !tbaa !15, !alias.scope !30
  %291 = getelementptr inbounds %struct.Vec, %struct.Vec* %0, i64 0, i32 2
  store double %289, double* %291, align 8, !tbaa !11, !alias.scope !30
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %271) #4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %270) #4
  br label %524

; <label>:292:                                    ; preds = %177
  %293 = bitcast %struct.Vec* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %293) #4
  %294 = bitcast %struct.Ray* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %294) #4
  %295 = fmul <2 x double> %124, <double 2.000000e+00, double 2.000000e+00>
  %296 = fmul double %125, 2.000000e+00
  %297 = bitcast double* %20 to <2 x double>*
  %298 = load <2 x double>, <2 x double>* %297, align 8, !tbaa !15
  %299 = extractelement <2 x double> %298, i32 0
  %300 = fmul double %127, %299
  %301 = extractelement <2 x double> %298, i32 1
  %302 = fmul double %129, %301
  %303 = fadd double %300, %302
  %304 = load double, double* %22, align 8, !tbaa !11
  %305 = fmul double %125, %304
  %306 = fadd double %303, %305
  %307 = insertelement <2 x double> undef, double %306, i32 0
  %308 = shufflevector <2 x double> %307, <2 x double> undef, <2 x i32> zeroinitializer
  %309 = fmul <2 x double> %295, %308
  %310 = fmul double %296, %306
  %311 = fsub <2 x double> %298, %309
  %312 = fsub double %304, %310
  %313 = bitcast %struct.Ray* %8 to <2 x double>*
  store <2 x double> %104, <2 x double>* %313, align 16
  %314 = getelementptr inbounds %struct.Ray, %struct.Ray* %8, i64 0, i32 0, i32 2
  store double %106, double* %314, align 16
  %315 = getelementptr inbounds %struct.Ray, %struct.Ray* %8, i64 0, i32 1, i32 0
  %316 = bitcast double* %315 to <2 x double>*
  store <2 x double> %311, <2 x double>* %316, align 8
  %317 = getelementptr inbounds %struct.Ray, %struct.Ray* %8, i64 0, i32 1, i32 2
  store double %312, double* %317, align 8
  call void @_Z8radianceRK3RayiPt(%struct.Vec* nonnull sret %7, %struct.Ray* nonnull dereferenceable(48) %8, i32 %157, i16* %3)
  %318 = bitcast %struct.Vec* %7 to <2 x double>*
  %319 = load <2 x double>, <2 x double>* %318, align 16, !tbaa !15, !noalias !33
  %320 = fmul <2 x double> %179, %319
  %321 = getelementptr inbounds %struct.Vec, %struct.Vec* %7, i64 0, i32 2
  %322 = load double, double* %321, align 16, !tbaa !11, !noalias !33
  %323 = fmul double %178, %322
  %324 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %94, i32 2, i32 0
  %325 = bitcast double* %324 to <2 x double>*
  %326 = load <2 x double>, <2 x double>* %325, align 8, !tbaa !15, !noalias !36
  %327 = fadd <2 x double> %320, %326
  %328 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %94, i32 2, i32 2
  %329 = load double, double* %328, align 8, !tbaa !11, !noalias !36
  %330 = fadd double %323, %329
  %331 = bitcast %struct.Vec* %0 to <2 x double>*
  store <2 x double> %327, <2 x double>* %331, align 8, !tbaa !15, !alias.scope !36
  %332 = getelementptr inbounds %struct.Vec, %struct.Vec* %0, i64 0, i32 2
  store double %330, double* %332, align 8, !tbaa !11, !alias.scope !36
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %294) #4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %293) #4
  br label %524

; <label>:333:                                    ; preds = %177
  %334 = bitcast %struct.Ray* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %334) #4
  %335 = fmul <2 x double> %124, <double 2.000000e+00, double 2.000000e+00>
  %336 = fmul double %125, 2.000000e+00
  %337 = bitcast double* %20 to <2 x double>*
  %338 = load <2 x double>, <2 x double>* %337, align 8, !tbaa !15
  %339 = extractelement <2 x double> %338, i32 0
  %340 = fmul double %127, %339
  %341 = extractelement <2 x double> %338, i32 1
  %342 = fmul double %129, %341
  %343 = fadd double %340, %342
  %344 = load double, double* %22, align 8, !tbaa !11
  %345 = fmul double %125, %344
  %346 = fadd double %343, %345
  %347 = insertelement <2 x double> undef, double %346, i32 0
  %348 = shufflevector <2 x double> %347, <2 x double> undef, <2 x i32> zeroinitializer
  %349 = fmul <2 x double> %335, %348
  %350 = fmul double %336, %346
  %351 = fsub <2 x double> %338, %349
  %352 = fsub double %344, %350
  %353 = bitcast %struct.Ray* %9 to <2 x double>*
  store <2 x double> %104, <2 x double>* %353, align 16
  %354 = getelementptr inbounds %struct.Ray, %struct.Ray* %9, i64 0, i32 0, i32 2
  store double %106, double* %354, align 16
  %355 = getelementptr inbounds %struct.Ray, %struct.Ray* %9, i64 0, i32 1, i32 0
  %356 = bitcast double* %355 to <2 x double>*
  store <2 x double> %351, <2 x double>* %356, align 8
  %357 = getelementptr inbounds %struct.Ray, %struct.Ray* %9, i64 0, i32 1, i32 2
  store double %352, double* %357, align 8
  %358 = fmul <2 x double> %124, %143
  %359 = extractelement <2 x double> %358, i32 0
  %360 = extractelement <2 x double> %358, i32 1
  %361 = fadd double %359, %360
  %362 = fmul double %125, %142
  %363 = fadd double %361, %362
  %364 = fcmp ogt double %363, 0.000000e+00
  %365 = select i1 %364, double 0x3FE5555555555555, double 1.500000e+00
  %366 = fmul <2 x double> %143, %338
  %367 = extractelement <2 x double> %366, i32 0
  %368 = extractelement <2 x double> %366, i32 1
  %369 = fadd double %367, %368
  %370 = fmul double %142, %344
  %371 = fadd double %369, %370
  %372 = select i1 %364, double 0x3FDC71C71C71C71C, double 2.250000e+00
  %373 = fmul double %371, %371
  %374 = fsub double 1.000000e+00, %373
  %375 = fmul double %372, %374
  %376 = fsub double 1.000000e+00, %375
  %377 = fcmp olt double %376, 0.000000e+00
  br i1 %377, label %378, label %395

; <label>:378:                                    ; preds = %333
  %379 = bitcast %struct.Vec* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %379) #4
  call void @_Z8radianceRK3RayiPt(%struct.Vec* nonnull sret %10, %struct.Ray* nonnull dereferenceable(48) %9, i32 %157, i16* %3)
  %380 = bitcast %struct.Vec* %10 to <2 x double>*
  %381 = load <2 x double>, <2 x double>* %380, align 16, !tbaa !15, !noalias !39
  %382 = fmul <2 x double> %179, %381
  %383 = getelementptr inbounds %struct.Vec, %struct.Vec* %10, i64 0, i32 2
  %384 = load double, double* %383, align 16, !tbaa !11, !noalias !39
  %385 = fmul double %178, %384
  %386 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %94, i32 2, i32 0
  %387 = bitcast double* %386 to <2 x double>*
  %388 = load <2 x double>, <2 x double>* %387, align 8, !tbaa !15, !noalias !42
  %389 = fadd <2 x double> %382, %388
  %390 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %94, i32 2, i32 2
  %391 = load double, double* %390, align 8, !tbaa !11, !noalias !42
  %392 = fadd double %385, %391
  %393 = bitcast %struct.Vec* %0 to <2 x double>*
  store <2 x double> %389, <2 x double>* %393, align 8, !tbaa !15, !alias.scope !42
  %394 = getelementptr inbounds %struct.Vec, %struct.Vec* %0, i64 0, i32 2
  store double %392, double* %394, align 8, !tbaa !11, !alias.scope !42
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %379) #4
  br label %523

; <label>:395:                                    ; preds = %333
  %396 = insertelement <2 x double> undef, double %365, i32 0
  %397 = shufflevector <2 x double> %396, <2 x double> undef, <2 x i32> zeroinitializer
  %398 = fmul <2 x double> %397, %338
  %399 = fmul double %365, %344
  %400 = select i1 %364, double 1.000000e+00, double -1.000000e+00
  %401 = fmul double %365, %371
  %402 = tail call double @sqrt(double %376) #4
  %403 = fadd double %401, %402
  %404 = fmul double %400, %403
  %405 = insertelement <2 x double> undef, double %404, i32 0
  %406 = shufflevector <2 x double> %405, <2 x double> undef, <2 x i32> zeroinitializer
  %407 = fmul <2 x double> %124, %406
  %408 = fmul double %125, %404
  %409 = fsub <2 x double> %398, %407
  %410 = fsub double %399, %408
  %411 = extractelement <2 x double> %409, i32 0
  %412 = fmul double %411, %411
  %413 = extractelement <2 x double> %409, i32 1
  %414 = fmul double %413, %413
  %415 = fadd double %412, %414
  %416 = fmul double %410, %410
  %417 = fadd double %416, %415
  %418 = tail call double @sqrt(double %417) #4
  %419 = fdiv double 1.000000e+00, %418
  %420 = insertelement <2 x double> undef, double %419, i32 0
  %421 = shufflevector <2 x double> %420, <2 x double> undef, <2 x i32> zeroinitializer
  %422 = fmul <2 x double> %421, %409
  %423 = fmul double %419, %410
  br i1 %364, label %424, label %426

; <label>:424:                                    ; preds = %395
  %425 = fsub double -0.000000e+00, %371
  br label %434

; <label>:426:                                    ; preds = %395
  %427 = extractelement <2 x double> %422, i32 0
  %428 = fmul double %127, %427
  %429 = extractelement <2 x double> %422, i32 1
  %430 = fmul double %129, %429
  %431 = fadd double %428, %430
  %432 = fmul double %125, %423
  %433 = fadd double %432, %431
  br label %434

; <label>:434:                                    ; preds = %426, %424
  %435 = phi double [ %425, %424 ], [ %433, %426 ]
  %436 = fsub double 1.000000e+00, %435
  %437 = fmul double %436, 0x3FEEB851EB851EB8
  %438 = fmul double %436, %437
  %439 = fmul double %436, %438
  %440 = fmul double %436, %439
  %441 = fmul double %436, %440
  %442 = fadd double %441, 4.000000e-02
  %443 = fsub double 1.000000e+00, %442
  %444 = fmul double %442, 5.000000e-01
  %445 = fadd double %444, 2.500000e-01
  %446 = fdiv double %442, %445
  %447 = fsub double 1.000000e+00, %445
  %448 = fdiv double %443, %447
  %449 = icmp sgt i32 %2, 1
  br i1 %449, label %450, label %477

; <label>:450:                                    ; preds = %434
  %451 = tail call double @erand48(i16* %3) #4
  %452 = fcmp olt double %451, %445
  br i1 %452, label %453, label %462

; <label>:453:                                    ; preds = %450
  call void @_Z8radianceRK3RayiPt(%struct.Vec* nonnull sret %11, %struct.Ray* nonnull dereferenceable(48) %9, i32 %157, i16* %3)
  %454 = bitcast %struct.Vec* %11 to <2 x double>*
  %455 = load <2 x double>, <2 x double>* %454, align 16, !tbaa !15, !noalias !45
  %456 = insertelement <2 x double> undef, double %446, i32 0
  %457 = shufflevector <2 x double> %456, <2 x double> undef, <2 x i32> zeroinitializer
  %458 = fmul <2 x double> %457, %455
  %459 = getelementptr inbounds %struct.Vec, %struct.Vec* %11, i64 0, i32 2
  %460 = load double, double* %459, align 16, !tbaa !11, !noalias !45
  %461 = fmul double %446, %460
  br label %502

; <label>:462:                                    ; preds = %450
  %463 = bitcast %struct.Ray* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %463) #4
  %464 = bitcast %struct.Ray* %12 to <2 x double>*
  store <2 x double> %104, <2 x double>* %464, align 16
  %465 = getelementptr inbounds %struct.Ray, %struct.Ray* %12, i64 0, i32 0, i32 2
  store double %106, double* %465, align 16
  %466 = getelementptr inbounds %struct.Ray, %struct.Ray* %12, i64 0, i32 1, i32 0
  %467 = bitcast double* %466 to <2 x double>*
  store <2 x double> %422, <2 x double>* %467, align 8
  %468 = getelementptr inbounds %struct.Ray, %struct.Ray* %12, i64 0, i32 1, i32 2
  store double %423, double* %468, align 8
  call void @_Z8radianceRK3RayiPt(%struct.Vec* nonnull sret %13, %struct.Ray* nonnull dereferenceable(48) %12, i32 %157, i16* %3)
  %469 = bitcast %struct.Vec* %13 to <2 x double>*
  %470 = load <2 x double>, <2 x double>* %469, align 16, !tbaa !15, !noalias !48
  %471 = insertelement <2 x double> undef, double %448, i32 0
  %472 = shufflevector <2 x double> %471, <2 x double> undef, <2 x i32> zeroinitializer
  %473 = fmul <2 x double> %472, %470
  %474 = getelementptr inbounds %struct.Vec, %struct.Vec* %13, i64 0, i32 2
  %475 = load double, double* %474, align 16, !tbaa !11, !noalias !48
  %476 = fmul double %448, %475
  br label %502

; <label>:477:                                    ; preds = %434
  call void @_Z8radianceRK3RayiPt(%struct.Vec* nonnull sret %14, %struct.Ray* nonnull dereferenceable(48) %9, i32 %157, i16* %3)
  %478 = bitcast %struct.Vec* %14 to <2 x double>*
  %479 = load <2 x double>, <2 x double>* %478, align 16, !tbaa !15, !noalias !51
  %480 = insertelement <2 x double> undef, double %442, i32 0
  %481 = shufflevector <2 x double> %480, <2 x double> undef, <2 x i32> zeroinitializer
  %482 = fmul <2 x double> %481, %479
  %483 = getelementptr inbounds %struct.Vec, %struct.Vec* %14, i64 0, i32 2
  %484 = load double, double* %483, align 16, !tbaa !11, !noalias !51
  %485 = fmul double %442, %484
  %486 = bitcast %struct.Ray* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %486) #4
  %487 = bitcast %struct.Ray* %15 to <2 x double>*
  store <2 x double> %104, <2 x double>* %487, align 16
  %488 = getelementptr inbounds %struct.Ray, %struct.Ray* %15, i64 0, i32 0, i32 2
  store double %106, double* %488, align 16
  %489 = getelementptr inbounds %struct.Ray, %struct.Ray* %15, i64 0, i32 1, i32 0
  %490 = bitcast double* %489 to <2 x double>*
  store <2 x double> %422, <2 x double>* %490, align 8
  %491 = getelementptr inbounds %struct.Ray, %struct.Ray* %15, i64 0, i32 1, i32 2
  store double %423, double* %491, align 8
  call void @_Z8radianceRK3RayiPt(%struct.Vec* nonnull sret %16, %struct.Ray* nonnull dereferenceable(48) %15, i32 %157, i16* %3)
  %492 = bitcast %struct.Vec* %16 to <2 x double>*
  %493 = load <2 x double>, <2 x double>* %492, align 16, !tbaa !15, !noalias !54
  %494 = insertelement <2 x double> undef, double %443, i32 0
  %495 = shufflevector <2 x double> %494, <2 x double> undef, <2 x i32> zeroinitializer
  %496 = fmul <2 x double> %495, %493
  %497 = getelementptr inbounds %struct.Vec, %struct.Vec* %16, i64 0, i32 2
  %498 = load double, double* %497, align 16, !tbaa !11, !noalias !54
  %499 = fmul double %443, %498
  %500 = fadd <2 x double> %482, %496
  %501 = fadd double %485, %499
  br label %502

; <label>:502:                                    ; preds = %477, %462, %453
  %503 = phi double [ %461, %453 ], [ %476, %462 ], [ %501, %477 ]
  %504 = phi i1 [ false, %453 ], [ true, %462 ], [ false, %477 ]
  %505 = phi i1 [ false, %453 ], [ false, %462 ], [ true, %477 ]
  %506 = phi <2 x double> [ %458, %453 ], [ %473, %462 ], [ %500, %477 ]
  %507 = fmul <2 x double> %179, %506
  %508 = fmul double %178, %503
  %509 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %94, i32 2, i32 0
  %510 = bitcast double* %509 to <2 x double>*
  %511 = load <2 x double>, <2 x double>* %510, align 8, !tbaa !15, !noalias !57
  %512 = fadd <2 x double> %507, %511
  %513 = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %94, i32 2, i32 2
  %514 = load double, double* %513, align 8, !tbaa !11, !noalias !57
  %515 = fadd double %508, %514
  %516 = bitcast %struct.Vec* %0 to <2 x double>*
  store <2 x double> %512, <2 x double>* %516, align 8, !tbaa !15, !alias.scope !57
  %517 = getelementptr inbounds %struct.Vec, %struct.Vec* %0, i64 0, i32 2
  store double %515, double* %517, align 8, !tbaa !11, !alias.scope !57
  br i1 %505, label %518, label %520

; <label>:518:                                    ; preds = %502
  %519 = bitcast %struct.Ray* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %519) #4
  br label %520

; <label>:520:                                    ; preds = %518, %502
  br i1 %504, label %521, label %523

; <label>:521:                                    ; preds = %520
  %522 = bitcast %struct.Ray* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %522) #4
  br label %523

; <label>:523:                                    ; preds = %521, %520, %378
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %334) #4
  br label %524

; <label>:524:                                    ; preds = %523, %292, %182, %173, %162, %91
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare double @erand48(i16*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind
declare double @cos(double) local_unnamed_addr #1

; Function Attrs: nounwind
declare double @sin(double) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

attributes #0 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !4, i64 0}
!3 = !{!"_ZTS3Vec", !4, i64 0, !4, i64 8, !4, i64 16}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZNK3VecmiERKS_: argument 0"}
!9 = distinct !{!9, !"_ZNK3VecmiERKS_"}
!10 = !{!3, !4, i64 8}
!11 = !{!3, !4, i64 16}
!12 = !{!13, !4, i64 0}
!13 = !{!"_ZTS6Sphere", !4, i64 0, !3, i64 8, !3, i64 32, !3, i64 56, !14, i64 80}
!14 = !{!"_ZTS6Refl_t", !5, i64 0}
!15 = !{!4, !4, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZNK3VecmlEd: argument 0"}
!18 = distinct !{!18, !"_ZNK3VecmlEd"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNK3VecplERKS_: argument 0"}
!21 = distinct !{!21, !"_ZNK3VecplERKS_"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZNK3VecmiERKS_: argument 0"}
!24 = distinct !{!24, !"_ZNK3VecmiERKS_"}
!25 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !15}
!26 = !{!13, !14, i64 80}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNK3Vec4multERKS_: argument 0"}
!29 = distinct !{!29, !"_ZNK3Vec4multERKS_"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZNK3VecplERKS_: argument 0"}
!32 = distinct !{!32, !"_ZNK3VecplERKS_"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZNK3Vec4multERKS_: argument 0"}
!35 = distinct !{!35, !"_ZNK3Vec4multERKS_"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZNK3VecplERKS_: argument 0"}
!38 = distinct !{!38, !"_ZNK3VecplERKS_"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNK3Vec4multERKS_: argument 0"}
!41 = distinct !{!41, !"_ZNK3Vec4multERKS_"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNK3VecplERKS_: argument 0"}
!44 = distinct !{!44, !"_ZNK3VecplERKS_"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNK3VecmlEd: argument 0"}
!47 = distinct !{!47, !"_ZNK3VecmlEd"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZNK3VecmlEd: argument 0"}
!50 = distinct !{!50, !"_ZNK3VecmlEd"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNK3VecmlEd: argument 0"}
!53 = distinct !{!53, !"_ZNK3VecmlEd"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZNK3VecmlEd: argument 0"}
!56 = distinct !{!56, !"_ZNK3VecmlEd"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZNK3VecplERKS_: argument 0"}
!59 = distinct !{!59, !"_ZNK3VecplERKS_"}
