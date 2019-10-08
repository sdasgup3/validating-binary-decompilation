; ModuleID = 'main.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.one_result = type { double, i8* }
%"class.std::reverse_iterator" = type { double* }
%"class.std::reverse_iterator.0" = type { [8 x i8], %"class.std::reverse_iterator" }
%"class.std::reverse_iterator.1" = type { %"class.std::reverse_iterator" }
%"class.std::reverse_iterator.2" = type { [8 x i8], %"class.std::reverse_iterator.1" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl" = type { double*, double*, double* }

@results = local_unnamed_addr global %struct.one_result* null, align 8
@current_test = local_unnamed_addr global i32 0, align 4
@allocated_results = local_unnamed_addr global i32 0, align 4
@start_time = local_unnamed_addr global i64 0, align 8
@end_time = local_unnamed_addr global i64 0, align 8
@iterations = local_unnamed_addr global i32 60000, align 4
@init_value = local_unnamed_addr global double 3.000000e+00, align 8
@data = global [2000 x double] zeroinitializer, align 16
@dataMaster = global [2000 x double] zeroinitializer, align 16
@dpb = local_unnamed_addr global double* getelementptr inbounds ([2000 x double], [2000 x double]* @data, i64 0, i64 0), align 8
@dpe = local_unnamed_addr global double* getelementptr inbounds ([2000 x double], [2000 x double]* @data, i64 1, i64 0), align 8
@dMpb = local_unnamed_addr global double* getelementptr inbounds ([2000 x double], [2000 x double]* @dataMaster, i64 0, i64 0), align 8
@dMpe = local_unnamed_addr global double* getelementptr inbounds ([2000 x double], [2000 x double]* @dataMaster, i64 1, i64 0), align 8
@rdpb = local_unnamed_addr global %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @data, i64 1, i64 0) }, align 8
@rdpe = local_unnamed_addr global %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @data, i64 0, i64 0) }, align 8
@rdMpb = local_unnamed_addr global %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @dataMaster, i64 1, i64 0) }, align 8
@rdMpe = local_unnamed_addr global %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @dataMaster, i64 0, i64 0) }, align 8
@rrdpb = local_unnamed_addr global %"class.std::reverse_iterator.0" { [8 x i8] zeroinitializer, %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @data, i64 0, i64 0) } }, align 8
@rrdpe = local_unnamed_addr global %"class.std::reverse_iterator.0" { [8 x i8] zeroinitializer, %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @data, i64 1, i64 0) } }, align 8
@rrdMpb = local_unnamed_addr global %"class.std::reverse_iterator.0" { [8 x i8] zeroinitializer, %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @dataMaster, i64 0, i64 0) } }, align 8
@rrdMpe = local_unnamed_addr global %"class.std::reverse_iterator.0" { [8 x i8] zeroinitializer, %"class.std::reverse_iterator" { double* getelementptr inbounds ([2000 x double], [2000 x double]* @dataMaster, i64 1, i64 0) } }, align 8
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str = hidden unnamed_addr constant [31 x i8] c"Could not allocate %d results\0A\00", align 1
@.str.1 = hidden unnamed_addr constant [60 x i8] c"\0Atest %*s description   absolute   operations   ratio with\0A\00", align 1
@.str.2 = hidden unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = hidden unnamed_addr constant [43 x i8] c"number %*s time       per second   test0\0A\0A\00", align 1
@.str.4 = hidden unnamed_addr constant [43 x i8] c"%2i %*s\22%s\22  %5.2f sec   %5.2f M     %.2f\0A\00", align 1
@.str.5 = hidden unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = hidden unnamed_addr constant [39 x i8] c"\0ATotal absolute time for %s: %.2f sec\0A\00", align 1
@.str.7 = hidden unnamed_addr constant [20 x i8] c"\0A%s Penalty: %.2f\0A\0A\00", align 1
@.str.8 = hidden unnamed_addr constant [34 x i8] c"\0Atest %*s description   absolute\0A\00", align 1
@.str.9 = hidden unnamed_addr constant [18 x i8] c"number %*s time\0A\0A\00", align 1
@.str.10 = hidden unnamed_addr constant [24 x i8] c"%2i %*s\22%s\22  %5.2f sec\0A\00", align 1
@.str.51 = hidden unnamed_addr constant [16 x i8] c"test %i failed\0A\00", align 1
@.str.26 = hidden unnamed_addr constant [38 x i8] c"insertion_sort double pointer verify2\00", align 1
@.str.27 = hidden unnamed_addr constant [38 x i8] c"insertion_sort double vector iterator\00", align 1
@.str.52 = hidden unnamed_addr constant [21 x i8] c"sort test %i failed\0A\00", align 1
@.str.34 = hidden unnamed_addr constant [33 x i8] c"quicksort double pointer verify2\00", align 1
@.str.35 = hidden unnamed_addr constant [33 x i8] c"quicksort double vector iterator\00", align 1
@.str.42 = hidden unnamed_addr constant [33 x i8] c"heap_sort double pointer verify2\00", align 1
@.str.43 = hidden unnamed_addr constant [33 x i8] c"heap_sort double vector iterator\00", align 1
@.str.50 = hidden unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #0

; Function Attrs: norecurse uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::reverse_iterator", align 8
  %4 = alloca %"class.std::reverse_iterator", align 8
  %5 = alloca %"class.std::reverse_iterator.1", align 8
  %6 = alloca %"class.std::reverse_iterator.1", align 8
  %7 = alloca %"class.std::reverse_iterator.1", align 8
  %8 = alloca %"class.std::reverse_iterator.1", align 8
  %9 = alloca %"class.std::reverse_iterator.0", align 8
  %10 = alloca %"class.std::reverse_iterator.0", align 8
  %11 = alloca %"class.std::reverse_iterator.2", align 8
  %12 = alloca %"class.std::reverse_iterator.2", align 8
  %13 = alloca %"class.std::reverse_iterator.2", align 8
  %14 = alloca %"class.std::reverse_iterator.2", align 8
  %15 = alloca %"class.std::reverse_iterator", align 8
  %16 = alloca %"class.std::reverse_iterator", align 8
  %17 = alloca %"class.std::reverse_iterator.1", align 8
  %18 = alloca %"class.std::reverse_iterator.1", align 8
  %19 = alloca %"class.std::reverse_iterator.1", align 8
  %20 = alloca %"class.std::reverse_iterator.1", align 8
  %21 = alloca %"class.std::reverse_iterator.0", align 8
  %22 = alloca %"class.std::reverse_iterator.0", align 8
  %23 = alloca %"class.std::reverse_iterator.2", align 8
  %24 = alloca %"class.std::reverse_iterator.2", align 8
  %25 = alloca %"class.std::reverse_iterator.2", align 8
  %26 = alloca %"class.std::reverse_iterator.2", align 8
  %27 = alloca %"class.std::vector", align 8
  %28 = alloca %"class.std::vector", align 8
  %29 = icmp sgt i32 %0, 1
  br i1 %29, label %30, label %40

; <label>:30:                                     ; preds = %2
  %31 = getelementptr inbounds i8*, i8** %1, i64 1
  %32 = load i8*, i8** %31, align 8, !tbaa !2
  %33 = tail call i64 @strtol(i8* nocapture nonnull %32, i8** null, i32 10) #5
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* @iterations, align 4, !tbaa !6
  %35 = icmp eq i32 %0, 2
  br i1 %35, label %40, label %36

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds i8*, i8** %1, i64 2
  %38 = load i8*, i8** %37, align 8, !tbaa !2
  %39 = tail call double @strtod(i8* nocapture nonnull %38, i8** null) #5
  store double %39, double* @init_value, align 8, !tbaa !8
  br label %40

; <label>:40:                                     ; preds = %30, %2, %36
  %41 = load double, double* @init_value, align 8, !tbaa !8
  %42 = fptosi double %41 to i32
  %43 = add nsw i32 %42, 123
  tail call void @srand(i32 %43) #5
  %44 = load double*, double** @dpb, align 8, !tbaa !2
  %45 = load double*, double** @dpe, align 8, !tbaa !2
  %46 = load i64, i64* bitcast (double* @init_value to i64*), align 8, !tbaa !8
  %47 = icmp eq double* %44, %45
  br i1 %47, label %138, label %48

; <label>:48:                                     ; preds = %40
  %49 = ptrtoint double* %44 to i64
  %50 = getelementptr double, double* %45, i64 -1
  %51 = ptrtoint double* %50 to i64
  %52 = sub i64 %51, %49
  %53 = lshr i64 %52, 3
  %54 = add nuw nsw i64 %53, 1
  %55 = icmp ult i64 %54, 4
  br i1 %55, label %131, label %56

; <label>:56:                                     ; preds = %48
  %57 = and i64 %54, 4611686018427387900
  %58 = getelementptr double, double* %44, i64 %57
  %59 = insertelement <2 x i64> undef, i64 %46, i32 0
  %60 = shufflevector <2 x i64> %59, <2 x i64> undef, <2 x i32> zeroinitializer
  %61 = insertelement <2 x i64> undef, i64 %46, i32 0
  %62 = shufflevector <2 x i64> %61, <2 x i64> undef, <2 x i32> zeroinitializer
  %63 = add nsw i64 %57, -4
  %64 = lshr exact i64 %63, 2
  %65 = add nuw nsw i64 %64, 1
  %66 = and i64 %65, 7
  %67 = icmp ult i64 %63, 28
  br i1 %67, label %115, label %68

; <label>:68:                                     ; preds = %56
  %69 = sub nsw i64 %65, %66
  br label %70

; <label>:70:                                     ; preds = %70, %68
  %71 = phi i64 [ 0, %68 ], [ %112, %70 ]
  %72 = phi i64 [ %69, %68 ], [ %113, %70 ]
  %73 = getelementptr double, double* %44, i64 %71
  %74 = bitcast double* %73 to <2 x i64>*
  store <2 x i64> %60, <2 x i64>* %74, align 8, !tbaa !8
  %75 = getelementptr double, double* %73, i64 2
  %76 = bitcast double* %75 to <2 x i64>*
  store <2 x i64> %62, <2 x i64>* %76, align 8, !tbaa !8
  %77 = or i64 %71, 4
  %78 = getelementptr double, double* %44, i64 %77
  %79 = bitcast double* %78 to <2 x i64>*
  store <2 x i64> %60, <2 x i64>* %79, align 8, !tbaa !8
  %80 = getelementptr double, double* %78, i64 2
  %81 = bitcast double* %80 to <2 x i64>*
  store <2 x i64> %62, <2 x i64>* %81, align 8, !tbaa !8
  %82 = or i64 %71, 8
  %83 = getelementptr double, double* %44, i64 %82
  %84 = bitcast double* %83 to <2 x i64>*
  store <2 x i64> %60, <2 x i64>* %84, align 8, !tbaa !8
  %85 = getelementptr double, double* %83, i64 2
  %86 = bitcast double* %85 to <2 x i64>*
  store <2 x i64> %62, <2 x i64>* %86, align 8, !tbaa !8
  %87 = or i64 %71, 12
  %88 = getelementptr double, double* %44, i64 %87
  %89 = bitcast double* %88 to <2 x i64>*
  store <2 x i64> %60, <2 x i64>* %89, align 8, !tbaa !8
  %90 = getelementptr double, double* %88, i64 2
  %91 = bitcast double* %90 to <2 x i64>*
  store <2 x i64> %62, <2 x i64>* %91, align 8, !tbaa !8
  %92 = or i64 %71, 16
  %93 = getelementptr double, double* %44, i64 %92
  %94 = bitcast double* %93 to <2 x i64>*
  store <2 x i64> %60, <2 x i64>* %94, align 8, !tbaa !8
  %95 = getelementptr double, double* %93, i64 2
  %96 = bitcast double* %95 to <2 x i64>*
  store <2 x i64> %62, <2 x i64>* %96, align 8, !tbaa !8
  %97 = or i64 %71, 20
  %98 = getelementptr double, double* %44, i64 %97
  %99 = bitcast double* %98 to <2 x i64>*
  store <2 x i64> %60, <2 x i64>* %99, align 8, !tbaa !8
  %100 = getelementptr double, double* %98, i64 2
  %101 = bitcast double* %100 to <2 x i64>*
  store <2 x i64> %62, <2 x i64>* %101, align 8, !tbaa !8
  %102 = or i64 %71, 24
  %103 = getelementptr double, double* %44, i64 %102
  %104 = bitcast double* %103 to <2 x i64>*
  store <2 x i64> %60, <2 x i64>* %104, align 8, !tbaa !8
  %105 = getelementptr double, double* %103, i64 2
  %106 = bitcast double* %105 to <2 x i64>*
  store <2 x i64> %62, <2 x i64>* %106, align 8, !tbaa !8
  %107 = or i64 %71, 28
  %108 = getelementptr double, double* %44, i64 %107
  %109 = bitcast double* %108 to <2 x i64>*
  store <2 x i64> %60, <2 x i64>* %109, align 8, !tbaa !8
  %110 = getelementptr double, double* %108, i64 2
  %111 = bitcast double* %110 to <2 x i64>*
  store <2 x i64> %62, <2 x i64>* %111, align 8, !tbaa !8
  %112 = add i64 %71, 32
  %113 = add i64 %72, -8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %70, !llvm.loop !10

; <label>:115:                                    ; preds = %70, %56
  %116 = phi i64 [ 0, %56 ], [ %112, %70 ]
  %117 = icmp eq i64 %66, 0
  br i1 %117, label %129, label %118

; <label>:118:                                    ; preds = %115
  br label %119

; <label>:119:                                    ; preds = %119, %118
  %120 = phi i64 [ %116, %118 ], [ %126, %119 ]
  %121 = phi i64 [ %66, %118 ], [ %127, %119 ]
  %122 = getelementptr double, double* %44, i64 %120
  %123 = bitcast double* %122 to <2 x i64>*
  store <2 x i64> %60, <2 x i64>* %123, align 8, !tbaa !8
  %124 = getelementptr double, double* %122, i64 2
  %125 = bitcast double* %124 to <2 x i64>*
  store <2 x i64> %62, <2 x i64>* %125, align 8, !tbaa !8
  %126 = add i64 %120, 4
  %127 = add i64 %121, -1
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %119, !llvm.loop !12

; <label>:129:                                    ; preds = %119, %115
  %130 = icmp eq i64 %54, %57
  br i1 %130, label %138, label %131

; <label>:131:                                    ; preds = %129, %48
  %132 = phi double* [ %44, %48 ], [ %58, %129 ]
  br label %133

; <label>:133:                                    ; preds = %131, %133
  %134 = phi double* [ %135, %133 ], [ %132, %131 ]
  %135 = getelementptr inbounds double, double* %134, i64 1
  %136 = bitcast double* %134 to i64*
  store i64 %46, i64* %136, align 8, !tbaa !8
  %137 = icmp eq double* %135, %45
  br i1 %137, label %138, label %133, !llvm.loop !14

; <label>:138:                                    ; preds = %133, %129, %40
  %139 = bitcast %"class.std::vector"* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %139) #5
  call void @llvm.memset.p0i8.i64(i8* nonnull %139, i8 0, i64 24, i32 8, i1 false) #5
  %140 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %27, i64 0, i32 0, i32 0, i32 1
  %141 = bitcast double** %140 to i64*
  %142 = bitcast %"class.std::vector"* %27 to i64*
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull %27, i64 2000)
          to label %143 unwind label %5040

; <label>:143:                                    ; preds = %138
  %144 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %27, i64 0, i32 0, i32 0, i32 0
  %145 = load double*, double** %144, align 8, !tbaa !2
  %146 = ptrtoint double* %145 to i64
  %147 = load double*, double** %140, align 8, !tbaa !2
  %148 = ptrtoint double* %145 to i64
  %149 = ptrtoint double* %147 to i64
  %150 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %27, i64 0, i32 0, i32 0, i32 0
  %151 = load i64, i64* bitcast (double* @init_value to i64*), align 8, !tbaa !8
  %152 = icmp eq double* %145, %147
  br i1 %152, label %242, label %153

; <label>:153:                                    ; preds = %143
  %154 = getelementptr double, double* %147, i64 -1
  %155 = ptrtoint double* %154 to i64
  %156 = sub i64 %155, %146
  %157 = lshr i64 %156, 3
  %158 = add nuw nsw i64 %157, 1
  %159 = icmp ult i64 %158, 4
  br i1 %159, label %235, label %160

; <label>:160:                                    ; preds = %153
  %161 = and i64 %158, 4611686018427387900
  %162 = getelementptr double, double* %145, i64 %161
  %163 = insertelement <2 x i64> undef, i64 %151, i32 0
  %164 = shufflevector <2 x i64> %163, <2 x i64> undef, <2 x i32> zeroinitializer
  %165 = insertelement <2 x i64> undef, i64 %151, i32 0
  %166 = shufflevector <2 x i64> %165, <2 x i64> undef, <2 x i32> zeroinitializer
  %167 = add nsw i64 %161, -4
  %168 = lshr exact i64 %167, 2
  %169 = add nuw nsw i64 %168, 1
  %170 = and i64 %169, 7
  %171 = icmp ult i64 %167, 28
  br i1 %171, label %219, label %172

; <label>:172:                                    ; preds = %160
  %173 = sub nsw i64 %169, %170
  br label %174

; <label>:174:                                    ; preds = %174, %172
  %175 = phi i64 [ 0, %172 ], [ %216, %174 ]
  %176 = phi i64 [ %173, %172 ], [ %217, %174 ]
  %177 = getelementptr double, double* %145, i64 %175
  %178 = bitcast double* %177 to <2 x i64>*
  store <2 x i64> %164, <2 x i64>* %178, align 8, !tbaa !8
  %179 = getelementptr double, double* %177, i64 2
  %180 = bitcast double* %179 to <2 x i64>*
  store <2 x i64> %166, <2 x i64>* %180, align 8, !tbaa !8
  %181 = or i64 %175, 4
  %182 = getelementptr double, double* %145, i64 %181
  %183 = bitcast double* %182 to <2 x i64>*
  store <2 x i64> %164, <2 x i64>* %183, align 8, !tbaa !8
  %184 = getelementptr double, double* %182, i64 2
  %185 = bitcast double* %184 to <2 x i64>*
  store <2 x i64> %166, <2 x i64>* %185, align 8, !tbaa !8
  %186 = or i64 %175, 8
  %187 = getelementptr double, double* %145, i64 %186
  %188 = bitcast double* %187 to <2 x i64>*
  store <2 x i64> %164, <2 x i64>* %188, align 8, !tbaa !8
  %189 = getelementptr double, double* %187, i64 2
  %190 = bitcast double* %189 to <2 x i64>*
  store <2 x i64> %166, <2 x i64>* %190, align 8, !tbaa !8
  %191 = or i64 %175, 12
  %192 = getelementptr double, double* %145, i64 %191
  %193 = bitcast double* %192 to <2 x i64>*
  store <2 x i64> %164, <2 x i64>* %193, align 8, !tbaa !8
  %194 = getelementptr double, double* %192, i64 2
  %195 = bitcast double* %194 to <2 x i64>*
  store <2 x i64> %166, <2 x i64>* %195, align 8, !tbaa !8
  %196 = or i64 %175, 16
  %197 = getelementptr double, double* %145, i64 %196
  %198 = bitcast double* %197 to <2 x i64>*
  store <2 x i64> %164, <2 x i64>* %198, align 8, !tbaa !8
  %199 = getelementptr double, double* %197, i64 2
  %200 = bitcast double* %199 to <2 x i64>*
  store <2 x i64> %166, <2 x i64>* %200, align 8, !tbaa !8
  %201 = or i64 %175, 20
  %202 = getelementptr double, double* %145, i64 %201
  %203 = bitcast double* %202 to <2 x i64>*
  store <2 x i64> %164, <2 x i64>* %203, align 8, !tbaa !8
  %204 = getelementptr double, double* %202, i64 2
  %205 = bitcast double* %204 to <2 x i64>*
  store <2 x i64> %166, <2 x i64>* %205, align 8, !tbaa !8
  %206 = or i64 %175, 24
  %207 = getelementptr double, double* %145, i64 %206
  %208 = bitcast double* %207 to <2 x i64>*
  store <2 x i64> %164, <2 x i64>* %208, align 8, !tbaa !8
  %209 = getelementptr double, double* %207, i64 2
  %210 = bitcast double* %209 to <2 x i64>*
  store <2 x i64> %166, <2 x i64>* %210, align 8, !tbaa !8
  %211 = or i64 %175, 28
  %212 = getelementptr double, double* %145, i64 %211
  %213 = bitcast double* %212 to <2 x i64>*
  store <2 x i64> %164, <2 x i64>* %213, align 8, !tbaa !8
  %214 = getelementptr double, double* %212, i64 2
  %215 = bitcast double* %214 to <2 x i64>*
  store <2 x i64> %166, <2 x i64>* %215, align 8, !tbaa !8
  %216 = add i64 %175, 32
  %217 = add i64 %176, -8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %174, !llvm.loop !16

; <label>:219:                                    ; preds = %174, %160
  %220 = phi i64 [ 0, %160 ], [ %216, %174 ]
  %221 = icmp eq i64 %170, 0
  br i1 %221, label %233, label %222

; <label>:222:                                    ; preds = %219
  br label %223

; <label>:223:                                    ; preds = %223, %222
  %224 = phi i64 [ %220, %222 ], [ %230, %223 ]
  %225 = phi i64 [ %170, %222 ], [ %231, %223 ]
  %226 = getelementptr double, double* %145, i64 %224
  %227 = bitcast double* %226 to <2 x i64>*
  store <2 x i64> %164, <2 x i64>* %227, align 8, !tbaa !8
  %228 = getelementptr double, double* %226, i64 2
  %229 = bitcast double* %228 to <2 x i64>*
  store <2 x i64> %166, <2 x i64>* %229, align 8, !tbaa !8
  %230 = add i64 %224, 4
  %231 = add i64 %225, -1
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %223, !llvm.loop !17

; <label>:233:                                    ; preds = %223, %219
  %234 = icmp eq i64 %158, %161
  br i1 %234, label %242, label %235

; <label>:235:                                    ; preds = %233, %153
  %236 = phi double* [ %145, %153 ], [ %162, %233 ]
  br label %237

; <label>:237:                                    ; preds = %235, %237
  %238 = phi double* [ %239, %237 ], [ %236, %235 ]
  %239 = getelementptr inbounds double, double* %238, i64 1
  %240 = bitcast double* %238 to i64*
  store i64 %151, i64* %240, align 8, !tbaa !8
  %241 = icmp eq double* %239, %147
  br i1 %241, label %242, label %237, !llvm.loop !18

; <label>:242:                                    ; preds = %237, %233, %143
  %243 = ptrtoint double* %147 to i64
  %244 = load double*, double** @dpb, align 8, !tbaa !2
  %245 = ptrtoint double* %244 to i64
  %246 = load double*, double** @dpe, align 8, !tbaa !2
  %247 = load i32, i32* @iterations, align 4, !tbaa !6
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %960

; <label>:249:                                    ; preds = %242
  %250 = icmp eq double* %244, %246
  br i1 %250, label %260, label %251

; <label>:251:                                    ; preds = %249
  %252 = getelementptr double, double* %246, i64 -1
  %253 = ptrtoint double* %252 to i64
  %254 = sub i64 %253, %245
  %255 = lshr i64 %254, 3
  %256 = add nuw nsw i64 %255, 1
  %257 = and i64 %256, 7
  %258 = icmp eq i64 %257, 0
  %259 = icmp ult i64 %254, 56
  br label %275

; <label>:260:                                    ; preds = %249
  br label %261

; <label>:261:                                    ; preds = %260, %271
  %262 = phi i32 [ %272, %271 ], [ %247, %260 ]
  %263 = phi i32 [ %273, %271 ], [ 0, %260 ]
  %264 = load double, double* @init_value, align 8, !tbaa !8
  %265 = fmul double %264, 2.000000e+03
  %266 = fcmp une double %265, 0.000000e+00
  br i1 %266, label %267, label %271

; <label>:267:                                    ; preds = %261
  %268 = load i32, i32* @current_test, align 4, !tbaa !6
  %269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %268)
  %270 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %271

; <label>:271:                                    ; preds = %267, %261
  %272 = phi i32 [ %270, %267 ], [ %262, %261 ]
  %273 = add nuw nsw i32 %263, 1
  %274 = icmp slt i32 %273, %272
  br i1 %274, label %261, label %334

; <label>:275:                                    ; preds = %251, %330
  %276 = phi i32 [ %331, %330 ], [ %247, %251 ]
  %277 = phi i32 [ %332, %330 ], [ 0, %251 ]
  br i1 %258, label %288, label %278

; <label>:278:                                    ; preds = %275
  br label %279

; <label>:279:                                    ; preds = %279, %278
  %280 = phi double [ 0.000000e+00, %278 ], [ %285, %279 ]
  %281 = phi double* [ %244, %278 ], [ %283, %279 ]
  %282 = phi i64 [ %257, %278 ], [ %286, %279 ]
  %283 = getelementptr inbounds double, double* %281, i64 1
  %284 = load double, double* %281, align 8, !tbaa !8
  %285 = fadd double %280, %284
  %286 = add i64 %282, -1
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %279, !llvm.loop !19

; <label>:288:                                    ; preds = %279, %275
  %289 = phi double [ undef, %275 ], [ %285, %279 ]
  %290 = phi double [ 0.000000e+00, %275 ], [ %285, %279 ]
  %291 = phi double* [ %244, %275 ], [ %283, %279 ]
  br i1 %259, label %321, label %292

; <label>:292:                                    ; preds = %288
  br label %293

; <label>:293:                                    ; preds = %293, %292
  %294 = phi double [ %290, %292 ], [ %319, %293 ]
  %295 = phi double* [ %291, %292 ], [ %317, %293 ]
  %296 = getelementptr inbounds double, double* %295, i64 1
  %297 = load double, double* %295, align 8, !tbaa !8
  %298 = fadd double %294, %297
  %299 = getelementptr inbounds double, double* %295, i64 2
  %300 = load double, double* %296, align 8, !tbaa !8
  %301 = fadd double %298, %300
  %302 = getelementptr inbounds double, double* %295, i64 3
  %303 = load double, double* %299, align 8, !tbaa !8
  %304 = fadd double %301, %303
  %305 = getelementptr inbounds double, double* %295, i64 4
  %306 = load double, double* %302, align 8, !tbaa !8
  %307 = fadd double %304, %306
  %308 = getelementptr inbounds double, double* %295, i64 5
  %309 = load double, double* %305, align 8, !tbaa !8
  %310 = fadd double %307, %309
  %311 = getelementptr inbounds double, double* %295, i64 6
  %312 = load double, double* %308, align 8, !tbaa !8
  %313 = fadd double %310, %312
  %314 = getelementptr inbounds double, double* %295, i64 7
  %315 = load double, double* %311, align 8, !tbaa !8
  %316 = fadd double %313, %315
  %317 = getelementptr inbounds double, double* %295, i64 8
  %318 = load double, double* %314, align 8, !tbaa !8
  %319 = fadd double %316, %318
  %320 = icmp eq double* %317, %246
  br i1 %320, label %321, label %293

; <label>:321:                                    ; preds = %293, %288
  %322 = phi double [ %289, %288 ], [ %319, %293 ]
  %323 = load double, double* @init_value, align 8, !tbaa !8
  %324 = fmul double %323, 2.000000e+03
  %325 = fcmp une double %324, %322
  br i1 %325, label %326, label %330

; <label>:326:                                    ; preds = %321
  %327 = load i32, i32* @current_test, align 4, !tbaa !6
  %328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %327)
  %329 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %330

; <label>:330:                                    ; preds = %326, %321
  %331 = phi i32 [ %276, %321 ], [ %329, %326 ]
  %332 = add nuw nsw i32 %277, 1
  %333 = icmp slt i32 %332, %331
  br i1 %333, label %275, label %334

; <label>:334:                                    ; preds = %330, %271
  %335 = phi i32 [ %272, %271 ], [ %331, %330 ]
  %336 = load double*, double** %150, align 8, !tbaa !2
  %337 = ptrtoint double* %336 to i64
  %338 = load double*, double** %140, align 8, !tbaa !2
  %339 = icmp sgt i32 %335, 0
  br i1 %339, label %340, label %960

; <label>:340:                                    ; preds = %334
  %341 = icmp eq double* %336, %338
  br i1 %341, label %351, label %342

; <label>:342:                                    ; preds = %340
  %343 = getelementptr double, double* %338, i64 -1
  %344 = ptrtoint double* %343 to i64
  %345 = sub i64 %344, %337
  %346 = lshr i64 %345, 3
  %347 = add nuw nsw i64 %346, 1
  %348 = and i64 %347, 7
  %349 = icmp eq i64 %348, 0
  %350 = icmp ult i64 %345, 56
  br label %366

; <label>:351:                                    ; preds = %340
  br label %352

; <label>:352:                                    ; preds = %351, %362
  %353 = phi i32 [ %363, %362 ], [ %335, %351 ]
  %354 = phi i32 [ %364, %362 ], [ 0, %351 ]
  %355 = load double, double* @init_value, align 8, !tbaa !8
  %356 = fmul double %355, 2.000000e+03
  %357 = fcmp une double %356, 0.000000e+00
  br i1 %357, label %358, label %362

; <label>:358:                                    ; preds = %352
  %359 = load i32, i32* @current_test, align 4, !tbaa !6
  %360 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %359)
  %361 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %362

; <label>:362:                                    ; preds = %358, %352
  %363 = phi i32 [ %361, %358 ], [ %353, %352 ]
  %364 = add nuw nsw i32 %354, 1
  %365 = icmp slt i32 %364, %363
  br i1 %365, label %352, label %425

; <label>:366:                                    ; preds = %342, %421
  %367 = phi i32 [ %422, %421 ], [ %335, %342 ]
  %368 = phi i32 [ %423, %421 ], [ 0, %342 ]
  br i1 %349, label %379, label %369

; <label>:369:                                    ; preds = %366
  br label %370

; <label>:370:                                    ; preds = %370, %369
  %371 = phi double [ 0.000000e+00, %369 ], [ %376, %370 ]
  %372 = phi double* [ %336, %369 ], [ %374, %370 ]
  %373 = phi i64 [ %348, %369 ], [ %377, %370 ]
  %374 = getelementptr inbounds double, double* %372, i64 1
  %375 = load double, double* %372, align 8, !tbaa !8
  %376 = fadd double %371, %375
  %377 = add i64 %373, -1
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %379, label %370, !llvm.loop !20

; <label>:379:                                    ; preds = %370, %366
  %380 = phi double [ undef, %366 ], [ %376, %370 ]
  %381 = phi double [ 0.000000e+00, %366 ], [ %376, %370 ]
  %382 = phi double* [ %336, %366 ], [ %374, %370 ]
  br i1 %350, label %412, label %383

; <label>:383:                                    ; preds = %379
  br label %384

; <label>:384:                                    ; preds = %384, %383
  %385 = phi double [ %381, %383 ], [ %410, %384 ]
  %386 = phi double* [ %382, %383 ], [ %408, %384 ]
  %387 = getelementptr inbounds double, double* %386, i64 1
  %388 = load double, double* %386, align 8, !tbaa !8
  %389 = fadd double %385, %388
  %390 = getelementptr inbounds double, double* %386, i64 2
  %391 = load double, double* %387, align 8, !tbaa !8
  %392 = fadd double %389, %391
  %393 = getelementptr inbounds double, double* %386, i64 3
  %394 = load double, double* %390, align 8, !tbaa !8
  %395 = fadd double %392, %394
  %396 = getelementptr inbounds double, double* %386, i64 4
  %397 = load double, double* %393, align 8, !tbaa !8
  %398 = fadd double %395, %397
  %399 = getelementptr inbounds double, double* %386, i64 5
  %400 = load double, double* %396, align 8, !tbaa !8
  %401 = fadd double %398, %400
  %402 = getelementptr inbounds double, double* %386, i64 6
  %403 = load double, double* %399, align 8, !tbaa !8
  %404 = fadd double %401, %403
  %405 = getelementptr inbounds double, double* %386, i64 7
  %406 = load double, double* %402, align 8, !tbaa !8
  %407 = fadd double %404, %406
  %408 = getelementptr inbounds double, double* %386, i64 8
  %409 = load double, double* %405, align 8, !tbaa !8
  %410 = fadd double %407, %409
  %411 = icmp eq double* %408, %338
  br i1 %411, label %412, label %384

; <label>:412:                                    ; preds = %384, %379
  %413 = phi double [ %380, %379 ], [ %410, %384 ]
  %414 = load double, double* @init_value, align 8, !tbaa !8
  %415 = fmul double %414, 2.000000e+03
  %416 = fcmp une double %415, %413
  br i1 %416, label %417, label %421

; <label>:417:                                    ; preds = %412
  %418 = load i32, i32* @current_test, align 4, !tbaa !6
  %419 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %418)
  %420 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %421

; <label>:421:                                    ; preds = %417, %412
  %422 = phi i32 [ %367, %412 ], [ %420, %417 ]
  %423 = add nuw nsw i32 %368, 1
  %424 = icmp slt i32 %423, %422
  br i1 %424, label %366, label %425

; <label>:425:                                    ; preds = %421, %362
  %426 = phi i32 [ %363, %362 ], [ %422, %421 ]
  %427 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator", %"class.std::reverse_iterator"* @rdpb, i64 0, i32 0), align 8, !tbaa !21
  %428 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator", %"class.std::reverse_iterator"* @rdpe, i64 0, i32 0), align 8, !tbaa !21
  %429 = ptrtoint double* %428 to i64
  %430 = icmp sgt i32 %426, 0
  br i1 %430, label %431, label %960

; <label>:431:                                    ; preds = %425
  %432 = icmp eq double* %427, %428
  br i1 %432, label %442, label %433

; <label>:433:                                    ; preds = %431
  %434 = getelementptr double, double* %427, i64 -1
  %435 = ptrtoint double* %434 to i64
  %436 = sub i64 %435, %429
  %437 = lshr i64 %436, 3
  %438 = add nuw nsw i64 %437, 1
  %439 = and i64 %438, 7
  %440 = icmp eq i64 %439, 0
  %441 = icmp ult i64 %436, 56
  br label %457

; <label>:442:                                    ; preds = %431
  br label %443

; <label>:443:                                    ; preds = %442, %453
  %444 = phi i32 [ %454, %453 ], [ %426, %442 ]
  %445 = phi i32 [ %455, %453 ], [ 0, %442 ]
  %446 = load double, double* @init_value, align 8, !tbaa !8
  %447 = fmul double %446, 2.000000e+03
  %448 = fcmp une double %447, 0.000000e+00
  br i1 %448, label %449, label %453

; <label>:449:                                    ; preds = %443
  %450 = load i32, i32* @current_test, align 4, !tbaa !6
  %451 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %450)
  %452 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %453

; <label>:453:                                    ; preds = %449, %443
  %454 = phi i32 [ %444, %443 ], [ %452, %449 ]
  %455 = add nuw nsw i32 %445, 1
  %456 = icmp slt i32 %455, %454
  br i1 %456, label %443, label %516

; <label>:457:                                    ; preds = %433, %512
  %458 = phi i32 [ %513, %512 ], [ %426, %433 ]
  %459 = phi i32 [ %514, %512 ], [ 0, %433 ]
  br i1 %440, label %470, label %460

; <label>:460:                                    ; preds = %457
  br label %461

; <label>:461:                                    ; preds = %461, %460
  %462 = phi double* [ %427, %460 ], [ %465, %461 ]
  %463 = phi double [ 0.000000e+00, %460 ], [ %467, %461 ]
  %464 = phi i64 [ %439, %460 ], [ %468, %461 ]
  %465 = getelementptr inbounds double, double* %462, i64 -1
  %466 = load double, double* %465, align 8, !tbaa !8
  %467 = fadd double %463, %466
  %468 = add i64 %464, -1
  %469 = icmp eq i64 %468, 0
  br i1 %469, label %470, label %461, !llvm.loop !23

; <label>:470:                                    ; preds = %461, %457
  %471 = phi double [ undef, %457 ], [ %467, %461 ]
  %472 = phi double* [ %427, %457 ], [ %465, %461 ]
  %473 = phi double [ 0.000000e+00, %457 ], [ %467, %461 ]
  br i1 %441, label %503, label %474

; <label>:474:                                    ; preds = %470
  br label %475

; <label>:475:                                    ; preds = %475, %474
  %476 = phi double* [ %472, %474 ], [ %499, %475 ]
  %477 = phi double [ %473, %474 ], [ %501, %475 ]
  %478 = getelementptr inbounds double, double* %476, i64 -1
  %479 = load double, double* %478, align 8, !tbaa !8
  %480 = fadd double %477, %479
  %481 = getelementptr inbounds double, double* %476, i64 -2
  %482 = load double, double* %481, align 8, !tbaa !8
  %483 = fadd double %480, %482
  %484 = getelementptr inbounds double, double* %476, i64 -3
  %485 = load double, double* %484, align 8, !tbaa !8
  %486 = fadd double %483, %485
  %487 = getelementptr inbounds double, double* %476, i64 -4
  %488 = load double, double* %487, align 8, !tbaa !8
  %489 = fadd double %486, %488
  %490 = getelementptr inbounds double, double* %476, i64 -5
  %491 = load double, double* %490, align 8, !tbaa !8
  %492 = fadd double %489, %491
  %493 = getelementptr inbounds double, double* %476, i64 -6
  %494 = load double, double* %493, align 8, !tbaa !8
  %495 = fadd double %492, %494
  %496 = getelementptr inbounds double, double* %476, i64 -7
  %497 = load double, double* %496, align 8, !tbaa !8
  %498 = fadd double %495, %497
  %499 = getelementptr inbounds double, double* %476, i64 -8
  %500 = load double, double* %499, align 8, !tbaa !8
  %501 = fadd double %498, %500
  %502 = icmp eq double* %499, %428
  br i1 %502, label %503, label %475

; <label>:503:                                    ; preds = %475, %470
  %504 = phi double [ %471, %470 ], [ %501, %475 ]
  %505 = load double, double* @init_value, align 8, !tbaa !8
  %506 = fmul double %505, 2.000000e+03
  %507 = fcmp une double %506, %504
  br i1 %507, label %508, label %512

; <label>:508:                                    ; preds = %503
  %509 = load i32, i32* @current_test, align 4, !tbaa !6
  %510 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %509)
  %511 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %512

; <label>:512:                                    ; preds = %508, %503
  %513 = phi i32 [ %458, %503 ], [ %511, %508 ]
  %514 = add nuw nsw i32 %459, 1
  %515 = icmp slt i32 %514, %513
  br i1 %515, label %457, label %516

; <label>:516:                                    ; preds = %512, %453
  %517 = phi i32 [ %454, %453 ], [ %513, %512 ]
  %518 = load double*, double** %140, align 8, !tbaa !2, !noalias !24
  %519 = load double*, double** %150, align 8, !tbaa !2, !noalias !27
  %520 = ptrtoint double* %519 to i64
  %521 = icmp sgt i32 %517, 0
  br i1 %521, label %522, label %960

; <label>:522:                                    ; preds = %516
  %523 = icmp eq double* %518, %519
  br i1 %523, label %533, label %524

; <label>:524:                                    ; preds = %522
  %525 = getelementptr double, double* %518, i64 -1
  %526 = ptrtoint double* %525 to i64
  %527 = sub i64 %526, %520
  %528 = lshr i64 %527, 3
  %529 = add nuw nsw i64 %528, 1
  %530 = and i64 %529, 7
  %531 = icmp eq i64 %530, 0
  %532 = icmp ult i64 %527, 56
  br label %548

; <label>:533:                                    ; preds = %522
  br label %534

; <label>:534:                                    ; preds = %533, %544
  %535 = phi i32 [ %545, %544 ], [ %517, %533 ]
  %536 = phi i32 [ %546, %544 ], [ 0, %533 ]
  %537 = load double, double* @init_value, align 8, !tbaa !8
  %538 = fmul double %537, 2.000000e+03
  %539 = fcmp une double %538, 0.000000e+00
  br i1 %539, label %540, label %544

; <label>:540:                                    ; preds = %534
  %541 = load i32, i32* @current_test, align 4, !tbaa !6
  %542 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %541)
  %543 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %544

; <label>:544:                                    ; preds = %540, %534
  %545 = phi i32 [ %535, %534 ], [ %543, %540 ]
  %546 = add nuw nsw i32 %536, 1
  %547 = icmp slt i32 %546, %545
  br i1 %547, label %534, label %607

; <label>:548:                                    ; preds = %524, %603
  %549 = phi i32 [ %604, %603 ], [ %517, %524 ]
  %550 = phi i32 [ %605, %603 ], [ 0, %524 ]
  br i1 %531, label %561, label %551

; <label>:551:                                    ; preds = %548
  br label %552

; <label>:552:                                    ; preds = %552, %551
  %553 = phi double* [ %518, %551 ], [ %556, %552 ]
  %554 = phi double [ 0.000000e+00, %551 ], [ %558, %552 ]
  %555 = phi i64 [ %530, %551 ], [ %559, %552 ]
  %556 = getelementptr inbounds double, double* %553, i64 -1
  %557 = load double, double* %556, align 8, !tbaa !8
  %558 = fadd double %554, %557
  %559 = add i64 %555, -1
  %560 = icmp eq i64 %559, 0
  br i1 %560, label %561, label %552, !llvm.loop !30

; <label>:561:                                    ; preds = %552, %548
  %562 = phi double [ undef, %548 ], [ %558, %552 ]
  %563 = phi double* [ %518, %548 ], [ %556, %552 ]
  %564 = phi double [ 0.000000e+00, %548 ], [ %558, %552 ]
  br i1 %532, label %594, label %565

; <label>:565:                                    ; preds = %561
  br label %566

; <label>:566:                                    ; preds = %566, %565
  %567 = phi double* [ %563, %565 ], [ %590, %566 ]
  %568 = phi double [ %564, %565 ], [ %592, %566 ]
  %569 = getelementptr inbounds double, double* %567, i64 -1
  %570 = load double, double* %569, align 8, !tbaa !8
  %571 = fadd double %568, %570
  %572 = getelementptr inbounds double, double* %567, i64 -2
  %573 = load double, double* %572, align 8, !tbaa !8
  %574 = fadd double %571, %573
  %575 = getelementptr inbounds double, double* %567, i64 -3
  %576 = load double, double* %575, align 8, !tbaa !8
  %577 = fadd double %574, %576
  %578 = getelementptr inbounds double, double* %567, i64 -4
  %579 = load double, double* %578, align 8, !tbaa !8
  %580 = fadd double %577, %579
  %581 = getelementptr inbounds double, double* %567, i64 -5
  %582 = load double, double* %581, align 8, !tbaa !8
  %583 = fadd double %580, %582
  %584 = getelementptr inbounds double, double* %567, i64 -6
  %585 = load double, double* %584, align 8, !tbaa !8
  %586 = fadd double %583, %585
  %587 = getelementptr inbounds double, double* %567, i64 -7
  %588 = load double, double* %587, align 8, !tbaa !8
  %589 = fadd double %586, %588
  %590 = getelementptr inbounds double, double* %567, i64 -8
  %591 = load double, double* %590, align 8, !tbaa !8
  %592 = fadd double %589, %591
  %593 = icmp eq double* %590, %519
  br i1 %593, label %594, label %566

; <label>:594:                                    ; preds = %566, %561
  %595 = phi double [ %562, %561 ], [ %592, %566 ]
  %596 = load double, double* @init_value, align 8, !tbaa !8
  %597 = fmul double %596, 2.000000e+03
  %598 = fcmp une double %597, %595
  br i1 %598, label %599, label %603

; <label>:599:                                    ; preds = %594
  %600 = load i32, i32* @current_test, align 4, !tbaa !6
  %601 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %600)
  %602 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %603

; <label>:603:                                    ; preds = %599, %594
  %604 = phi i32 [ %549, %594 ], [ %602, %599 ]
  %605 = add nuw nsw i32 %550, 1
  %606 = icmp slt i32 %605, %604
  br i1 %606, label %548, label %607

; <label>:607:                                    ; preds = %603, %544
  %608 = phi i32 [ %545, %544 ], [ %604, %603 ]
  %609 = icmp sgt i32 %608, 0
  br i1 %609, label %610, label %960

; <label>:610:                                    ; preds = %607
  br i1 %152, label %620, label %611

; <label>:611:                                    ; preds = %610
  %612 = getelementptr double, double* %147, i64 -1
  %613 = ptrtoint double* %612 to i64
  %614 = sub i64 %613, %146
  %615 = lshr i64 %614, 3
  %616 = add nuw nsw i64 %615, 1
  %617 = and i64 %616, 7
  %618 = icmp eq i64 %617, 0
  %619 = icmp ult i64 %614, 56
  br label %635

; <label>:620:                                    ; preds = %610
  br label %621

; <label>:621:                                    ; preds = %620, %631
  %622 = phi i32 [ %632, %631 ], [ %608, %620 ]
  %623 = phi i32 [ %633, %631 ], [ 0, %620 ]
  %624 = load double, double* @init_value, align 8, !tbaa !8
  %625 = fmul double %624, 2.000000e+03
  %626 = fcmp une double %625, 0.000000e+00
  br i1 %626, label %627, label %631

; <label>:627:                                    ; preds = %621
  %628 = load i32, i32* @current_test, align 4, !tbaa !6
  %629 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %628)
  %630 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %631

; <label>:631:                                    ; preds = %627, %621
  %632 = phi i32 [ %622, %621 ], [ %630, %627 ]
  %633 = add nuw nsw i32 %623, 1
  %634 = icmp slt i32 %633, %632
  br i1 %634, label %621, label %694

; <label>:635:                                    ; preds = %611, %690
  %636 = phi i32 [ %691, %690 ], [ %608, %611 ]
  %637 = phi i32 [ %692, %690 ], [ 0, %611 ]
  br i1 %618, label %648, label %638

; <label>:638:                                    ; preds = %635
  br label %639

; <label>:639:                                    ; preds = %639, %638
  %640 = phi double* [ %147, %638 ], [ %643, %639 ]
  %641 = phi double [ 0.000000e+00, %638 ], [ %645, %639 ]
  %642 = phi i64 [ %617, %638 ], [ %646, %639 ]
  %643 = getelementptr inbounds double, double* %640, i64 -1
  %644 = load double, double* %643, align 8, !tbaa !8
  %645 = fadd double %641, %644
  %646 = add i64 %642, -1
  %647 = icmp eq i64 %646, 0
  br i1 %647, label %648, label %639, !llvm.loop !31

; <label>:648:                                    ; preds = %639, %635
  %649 = phi double [ undef, %635 ], [ %645, %639 ]
  %650 = phi double* [ %147, %635 ], [ %643, %639 ]
  %651 = phi double [ 0.000000e+00, %635 ], [ %645, %639 ]
  br i1 %619, label %681, label %652

; <label>:652:                                    ; preds = %648
  br label %653

; <label>:653:                                    ; preds = %653, %652
  %654 = phi double* [ %650, %652 ], [ %677, %653 ]
  %655 = phi double [ %651, %652 ], [ %679, %653 ]
  %656 = getelementptr inbounds double, double* %654, i64 -1
  %657 = load double, double* %656, align 8, !tbaa !8
  %658 = fadd double %655, %657
  %659 = getelementptr inbounds double, double* %654, i64 -2
  %660 = load double, double* %659, align 8, !tbaa !8
  %661 = fadd double %658, %660
  %662 = getelementptr inbounds double, double* %654, i64 -3
  %663 = load double, double* %662, align 8, !tbaa !8
  %664 = fadd double %661, %663
  %665 = getelementptr inbounds double, double* %654, i64 -4
  %666 = load double, double* %665, align 8, !tbaa !8
  %667 = fadd double %664, %666
  %668 = getelementptr inbounds double, double* %654, i64 -5
  %669 = load double, double* %668, align 8, !tbaa !8
  %670 = fadd double %667, %669
  %671 = getelementptr inbounds double, double* %654, i64 -6
  %672 = load double, double* %671, align 8, !tbaa !8
  %673 = fadd double %670, %672
  %674 = getelementptr inbounds double, double* %654, i64 -7
  %675 = load double, double* %674, align 8, !tbaa !8
  %676 = fadd double %673, %675
  %677 = getelementptr inbounds double, double* %654, i64 -8
  %678 = load double, double* %677, align 8, !tbaa !8
  %679 = fadd double %676, %678
  %680 = icmp eq double* %677, %145
  br i1 %680, label %681, label %653

; <label>:681:                                    ; preds = %653, %648
  %682 = phi double [ %649, %648 ], [ %679, %653 ]
  %683 = load double, double* @init_value, align 8, !tbaa !8
  %684 = fmul double %683, 2.000000e+03
  %685 = fcmp une double %684, %682
  br i1 %685, label %686, label %690

; <label>:686:                                    ; preds = %681
  %687 = load i32, i32* @current_test, align 4, !tbaa !6
  %688 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %687)
  %689 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %690

; <label>:690:                                    ; preds = %686, %681
  %691 = phi i32 [ %636, %681 ], [ %689, %686 ]
  %692 = add nuw nsw i32 %637, 1
  %693 = icmp slt i32 %692, %691
  br i1 %693, label %635, label %694

; <label>:694:                                    ; preds = %690, %631
  %695 = phi i32 [ %632, %631 ], [ %691, %690 ]
  %696 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* @rrdpb, i64 0, i32 1, i32 0), align 8, !tbaa !21
  %697 = ptrtoint double* %696 to i64
  %698 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* @rrdpe, i64 0, i32 1, i32 0), align 8, !tbaa !21
  %699 = icmp sgt i32 %695, 0
  br i1 %699, label %700, label %960

; <label>:700:                                    ; preds = %694
  %701 = icmp eq double* %696, %698
  br i1 %701, label %711, label %702

; <label>:702:                                    ; preds = %700
  %703 = getelementptr double, double* %698, i64 -1
  %704 = ptrtoint double* %703 to i64
  %705 = sub i64 %704, %697
  %706 = lshr i64 %705, 3
  %707 = add nuw nsw i64 %706, 1
  %708 = and i64 %707, 7
  %709 = icmp eq i64 %708, 0
  %710 = icmp ult i64 %705, 56
  br label %726

; <label>:711:                                    ; preds = %700
  br label %712

; <label>:712:                                    ; preds = %711, %722
  %713 = phi i32 [ %723, %722 ], [ %695, %711 ]
  %714 = phi i32 [ %724, %722 ], [ 0, %711 ]
  %715 = load double, double* @init_value, align 8, !tbaa !8
  %716 = fmul double %715, 2.000000e+03
  %717 = fcmp une double %716, 0.000000e+00
  br i1 %717, label %718, label %722

; <label>:718:                                    ; preds = %712
  %719 = load i32, i32* @current_test, align 4, !tbaa !6
  %720 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %719)
  %721 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %722

; <label>:722:                                    ; preds = %718, %712
  %723 = phi i32 [ %713, %712 ], [ %721, %718 ]
  %724 = add nuw nsw i32 %714, 1
  %725 = icmp slt i32 %724, %723
  br i1 %725, label %712, label %785

; <label>:726:                                    ; preds = %702, %781
  %727 = phi i32 [ %782, %781 ], [ %695, %702 ]
  %728 = phi i32 [ %783, %781 ], [ 0, %702 ]
  br i1 %709, label %739, label %729

; <label>:729:                                    ; preds = %726
  br label %730

; <label>:730:                                    ; preds = %730, %729
  %731 = phi double* [ %696, %729 ], [ %734, %730 ]
  %732 = phi double [ 0.000000e+00, %729 ], [ %736, %730 ]
  %733 = phi i64 [ %708, %729 ], [ %737, %730 ]
  %734 = getelementptr inbounds double, double* %731, i64 1
  %735 = load double, double* %731, align 8, !tbaa !8
  %736 = fadd double %732, %735
  %737 = add i64 %733, -1
  %738 = icmp eq i64 %737, 0
  br i1 %738, label %739, label %730, !llvm.loop !32

; <label>:739:                                    ; preds = %730, %726
  %740 = phi double [ undef, %726 ], [ %736, %730 ]
  %741 = phi double* [ %696, %726 ], [ %734, %730 ]
  %742 = phi double [ 0.000000e+00, %726 ], [ %736, %730 ]
  br i1 %710, label %772, label %743

; <label>:743:                                    ; preds = %739
  br label %744

; <label>:744:                                    ; preds = %744, %743
  %745 = phi double* [ %741, %743 ], [ %768, %744 ]
  %746 = phi double [ %742, %743 ], [ %770, %744 ]
  %747 = getelementptr inbounds double, double* %745, i64 1
  %748 = load double, double* %745, align 8, !tbaa !8
  %749 = fadd double %746, %748
  %750 = getelementptr inbounds double, double* %745, i64 2
  %751 = load double, double* %747, align 8, !tbaa !8
  %752 = fadd double %749, %751
  %753 = getelementptr inbounds double, double* %745, i64 3
  %754 = load double, double* %750, align 8, !tbaa !8
  %755 = fadd double %752, %754
  %756 = getelementptr inbounds double, double* %745, i64 4
  %757 = load double, double* %753, align 8, !tbaa !8
  %758 = fadd double %755, %757
  %759 = getelementptr inbounds double, double* %745, i64 5
  %760 = load double, double* %756, align 8, !tbaa !8
  %761 = fadd double %758, %760
  %762 = getelementptr inbounds double, double* %745, i64 6
  %763 = load double, double* %759, align 8, !tbaa !8
  %764 = fadd double %761, %763
  %765 = getelementptr inbounds double, double* %745, i64 7
  %766 = load double, double* %762, align 8, !tbaa !8
  %767 = fadd double %764, %766
  %768 = getelementptr inbounds double, double* %745, i64 8
  %769 = load double, double* %765, align 8, !tbaa !8
  %770 = fadd double %767, %769
  %771 = icmp eq double* %768, %698
  br i1 %771, label %772, label %744

; <label>:772:                                    ; preds = %744, %739
  %773 = phi double [ %740, %739 ], [ %770, %744 ]
  %774 = load double, double* @init_value, align 8, !tbaa !8
  %775 = fmul double %774, 2.000000e+03
  %776 = fcmp une double %775, %773
  br i1 %776, label %777, label %781

; <label>:777:                                    ; preds = %772
  %778 = load i32, i32* @current_test, align 4, !tbaa !6
  %779 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %778)
  %780 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %781

; <label>:781:                                    ; preds = %777, %772
  %782 = phi i32 [ %727, %772 ], [ %780, %777 ]
  %783 = add nuw nsw i32 %728, 1
  %784 = icmp slt i32 %783, %782
  br i1 %784, label %726, label %785

; <label>:785:                                    ; preds = %781, %722
  %786 = phi i32 [ %723, %722 ], [ %782, %781 ]
  %787 = icmp sgt i32 %786, 0
  br i1 %787, label %788, label %960

; <label>:788:                                    ; preds = %785
  %789 = icmp eq double* %145, %147
  br i1 %789, label %799, label %790

; <label>:790:                                    ; preds = %788
  %791 = getelementptr double, double* %147, i64 -1
  %792 = ptrtoint double* %791 to i64
  %793 = sub i64 %792, %146
  %794 = lshr i64 %793, 3
  %795 = add nuw nsw i64 %794, 1
  %796 = and i64 %795, 7
  %797 = icmp eq i64 %796, 0
  %798 = icmp ult i64 %793, 56
  br label %814

; <label>:799:                                    ; preds = %788
  br label %800

; <label>:800:                                    ; preds = %799, %810
  %801 = phi i32 [ %811, %810 ], [ %786, %799 ]
  %802 = phi i32 [ %812, %810 ], [ 0, %799 ]
  %803 = load double, double* @init_value, align 8, !tbaa !8
  %804 = fmul double %803, 2.000000e+03
  %805 = fcmp une double %804, 0.000000e+00
  br i1 %805, label %806, label %810

; <label>:806:                                    ; preds = %800
  %807 = load i32, i32* @current_test, align 4, !tbaa !6
  %808 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %807)
  %809 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %810

; <label>:810:                                    ; preds = %806, %800
  %811 = phi i32 [ %801, %800 ], [ %809, %806 ]
  %812 = add nuw nsw i32 %802, 1
  %813 = icmp slt i32 %812, %811
  br i1 %813, label %800, label %873

; <label>:814:                                    ; preds = %790, %869
  %815 = phi i32 [ %870, %869 ], [ %786, %790 ]
  %816 = phi i32 [ %871, %869 ], [ 0, %790 ]
  br i1 %797, label %827, label %817

; <label>:817:                                    ; preds = %814
  br label %818

; <label>:818:                                    ; preds = %818, %817
  %819 = phi double* [ %145, %817 ], [ %822, %818 ]
  %820 = phi double [ 0.000000e+00, %817 ], [ %824, %818 ]
  %821 = phi i64 [ %796, %817 ], [ %825, %818 ]
  %822 = getelementptr inbounds double, double* %819, i64 1
  %823 = load double, double* %819, align 8, !tbaa !8
  %824 = fadd double %820, %823
  %825 = add i64 %821, -1
  %826 = icmp eq i64 %825, 0
  br i1 %826, label %827, label %818, !llvm.loop !33

; <label>:827:                                    ; preds = %818, %814
  %828 = phi double [ undef, %814 ], [ %824, %818 ]
  %829 = phi double* [ %145, %814 ], [ %822, %818 ]
  %830 = phi double [ 0.000000e+00, %814 ], [ %824, %818 ]
  br i1 %798, label %860, label %831

; <label>:831:                                    ; preds = %827
  br label %832

; <label>:832:                                    ; preds = %832, %831
  %833 = phi double* [ %829, %831 ], [ %856, %832 ]
  %834 = phi double [ %830, %831 ], [ %858, %832 ]
  %835 = getelementptr inbounds double, double* %833, i64 1
  %836 = load double, double* %833, align 8, !tbaa !8
  %837 = fadd double %834, %836
  %838 = getelementptr inbounds double, double* %833, i64 2
  %839 = load double, double* %835, align 8, !tbaa !8
  %840 = fadd double %837, %839
  %841 = getelementptr inbounds double, double* %833, i64 3
  %842 = load double, double* %838, align 8, !tbaa !8
  %843 = fadd double %840, %842
  %844 = getelementptr inbounds double, double* %833, i64 4
  %845 = load double, double* %841, align 8, !tbaa !8
  %846 = fadd double %843, %845
  %847 = getelementptr inbounds double, double* %833, i64 5
  %848 = load double, double* %844, align 8, !tbaa !8
  %849 = fadd double %846, %848
  %850 = getelementptr inbounds double, double* %833, i64 6
  %851 = load double, double* %847, align 8, !tbaa !8
  %852 = fadd double %849, %851
  %853 = getelementptr inbounds double, double* %833, i64 7
  %854 = load double, double* %850, align 8, !tbaa !8
  %855 = fadd double %852, %854
  %856 = getelementptr inbounds double, double* %833, i64 8
  %857 = load double, double* %853, align 8, !tbaa !8
  %858 = fadd double %855, %857
  %859 = icmp eq double* %856, %147
  br i1 %859, label %860, label %832

; <label>:860:                                    ; preds = %832, %827
  %861 = phi double [ %828, %827 ], [ %858, %832 ]
  %862 = load double, double* @init_value, align 8, !tbaa !8
  %863 = fmul double %862, 2.000000e+03
  %864 = fcmp une double %863, %861
  br i1 %864, label %865, label %869

; <label>:865:                                    ; preds = %860
  %866 = load i32, i32* @current_test, align 4, !tbaa !6
  %867 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %866)
  %868 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %869

; <label>:869:                                    ; preds = %865, %860
  %870 = phi i32 [ %815, %860 ], [ %868, %865 ]
  %871 = add nuw nsw i32 %816, 1
  %872 = icmp slt i32 %871, %870
  br i1 %872, label %814, label %873

; <label>:873:                                    ; preds = %869, %810
  %874 = phi i32 [ %811, %810 ], [ %870, %869 ]
  %875 = icmp sgt i32 %874, 0
  br i1 %875, label %876, label %960

; <label>:876:                                    ; preds = %873
  br i1 %152, label %886, label %877

; <label>:877:                                    ; preds = %876
  %878 = getelementptr double, double* %147, i64 -1
  %879 = ptrtoint double* %878 to i64
  %880 = sub i64 %879, %146
  %881 = lshr i64 %880, 3
  %882 = add nuw nsw i64 %881, 1
  %883 = and i64 %882, 7
  %884 = icmp eq i64 %883, 0
  %885 = icmp ult i64 %880, 56
  br label %901

; <label>:886:                                    ; preds = %876
  br label %887

; <label>:887:                                    ; preds = %886, %897
  %888 = phi i32 [ %898, %897 ], [ %874, %886 ]
  %889 = phi i32 [ %899, %897 ], [ 0, %886 ]
  %890 = load double, double* @init_value, align 8, !tbaa !8
  %891 = fmul double %890, 2.000000e+03
  %892 = fcmp une double %891, 0.000000e+00
  br i1 %892, label %893, label %897

; <label>:893:                                    ; preds = %887
  %894 = load i32, i32* @current_test, align 4, !tbaa !6
  %895 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %894)
  %896 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %897

; <label>:897:                                    ; preds = %893, %887
  %898 = phi i32 [ %888, %887 ], [ %896, %893 ]
  %899 = add nuw nsw i32 %889, 1
  %900 = icmp slt i32 %899, %898
  br i1 %900, label %887, label %960

; <label>:901:                                    ; preds = %877, %956
  %902 = phi i32 [ %957, %956 ], [ %874, %877 ]
  %903 = phi i32 [ %958, %956 ], [ 0, %877 ]
  br i1 %884, label %914, label %904

; <label>:904:                                    ; preds = %901
  br label %905

; <label>:905:                                    ; preds = %905, %904
  %906 = phi double* [ %145, %904 ], [ %909, %905 ]
  %907 = phi double [ 0.000000e+00, %904 ], [ %911, %905 ]
  %908 = phi i64 [ %883, %904 ], [ %912, %905 ]
  %909 = getelementptr inbounds double, double* %906, i64 1
  %910 = load double, double* %906, align 8, !tbaa !8
  %911 = fadd double %907, %910
  %912 = add i64 %908, -1
  %913 = icmp eq i64 %912, 0
  br i1 %913, label %914, label %905, !llvm.loop !34

; <label>:914:                                    ; preds = %905, %901
  %915 = phi double [ undef, %901 ], [ %911, %905 ]
  %916 = phi double* [ %145, %901 ], [ %909, %905 ]
  %917 = phi double [ 0.000000e+00, %901 ], [ %911, %905 ]
  br i1 %885, label %947, label %918

; <label>:918:                                    ; preds = %914
  br label %919

; <label>:919:                                    ; preds = %919, %918
  %920 = phi double* [ %916, %918 ], [ %943, %919 ]
  %921 = phi double [ %917, %918 ], [ %945, %919 ]
  %922 = getelementptr inbounds double, double* %920, i64 1
  %923 = load double, double* %920, align 8, !tbaa !8
  %924 = fadd double %921, %923
  %925 = getelementptr inbounds double, double* %920, i64 2
  %926 = load double, double* %922, align 8, !tbaa !8
  %927 = fadd double %924, %926
  %928 = getelementptr inbounds double, double* %920, i64 3
  %929 = load double, double* %925, align 8, !tbaa !8
  %930 = fadd double %927, %929
  %931 = getelementptr inbounds double, double* %920, i64 4
  %932 = load double, double* %928, align 8, !tbaa !8
  %933 = fadd double %930, %932
  %934 = getelementptr inbounds double, double* %920, i64 5
  %935 = load double, double* %931, align 8, !tbaa !8
  %936 = fadd double %933, %935
  %937 = getelementptr inbounds double, double* %920, i64 6
  %938 = load double, double* %934, align 8, !tbaa !8
  %939 = fadd double %936, %938
  %940 = getelementptr inbounds double, double* %920, i64 7
  %941 = load double, double* %937, align 8, !tbaa !8
  %942 = fadd double %939, %941
  %943 = getelementptr inbounds double, double* %920, i64 8
  %944 = load double, double* %940, align 8, !tbaa !8
  %945 = fadd double %942, %944
  %946 = icmp eq double* %943, %147
  br i1 %946, label %947, label %919

; <label>:947:                                    ; preds = %919, %914
  %948 = phi double [ %915, %914 ], [ %945, %919 ]
  %949 = load double, double* @init_value, align 8, !tbaa !8
  %950 = fmul double %949, 2.000000e+03
  %951 = fcmp une double %950, %948
  br i1 %951, label %952, label %956

; <label>:952:                                    ; preds = %947
  %953 = load i32, i32* @current_test, align 4, !tbaa !6
  %954 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %953)
  %955 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %956

; <label>:956:                                    ; preds = %952, %947
  %957 = phi i32 [ %902, %947 ], [ %955, %952 ]
  %958 = add nuw nsw i32 %903, 1
  %959 = icmp slt i32 %958, %957
  br i1 %959, label %901, label %960

; <label>:960:                                    ; preds = %956, %897, %873, %785, %607, %694, %334, %242, %516, %425
  %961 = phi i32 [ %426, %425 ], [ %517, %516 ], [ %247, %242 ], [ %335, %334 ], [ %695, %694 ], [ %608, %607 ], [ %786, %785 ], [ %874, %873 ], [ %898, %897 ], [ %957, %956 ]
  %962 = sdiv i32 %961, 1000
  store i32 %962, i32* @iterations, align 4, !tbaa !6
  %963 = bitcast %"class.std::vector"* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %963) #5
  call void @llvm.memset.p0i8.i64(i8* nonnull %963, i8 0, i64 24, i32 8, i1 false) #5
  %964 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %28, i64 0, i32 0, i32 0, i32 1
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* nonnull %28, i64 2000)
          to label %965 unwind label %5045

; <label>:965:                                    ; preds = %960
  %966 = load double*, double** @dMpb, align 8, !tbaa !2
  %967 = load double*, double** @dMpe, align 8, !tbaa !2
  %968 = icmp eq double* %966, %967
  br i1 %968, label %970, label %969

; <label>:969:                                    ; preds = %965
  br label %973

; <label>:970:                                    ; preds = %965
  %971 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %28, i64 0, i32 0, i32 0, i32 0
  %972 = load double*, double** %971, align 8, !tbaa !2
  br label %1158

; <label>:973:                                    ; preds = %969, %973
  %974 = phi double* [ %977, %973 ], [ %966, %969 ]
  %975 = call i32 @rand() #5
  %976 = sitofp i32 %975 to double
  %977 = getelementptr inbounds double, double* %974, i64 1
  store double %976, double* %974, align 8, !tbaa !8
  %978 = icmp eq double* %977, %967
  br i1 %978, label %979, label %973

; <label>:979:                                    ; preds = %973
  %980 = load double*, double** @dMpb, align 8, !tbaa !2
  %981 = ptrtoint double* %980 to i64
  %982 = load double*, double** @dMpe, align 8, !tbaa !2
  %983 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %28, i64 0, i32 0, i32 0, i32 0
  %984 = load double*, double** %983, align 8, !tbaa !2
  %985 = icmp eq double* %980, %982
  br i1 %985, label %1158, label %986

; <label>:986:                                    ; preds = %979
  %987 = getelementptr double, double* %982, i64 -1
  %988 = ptrtoint double* %987 to i64
  %989 = sub i64 %988, %981
  %990 = lshr i64 %989, 3
  %991 = add nuw nsw i64 %990, 1
  %992 = icmp ult i64 %991, 4
  br i1 %992, label %1086, label %993

; <label>:993:                                    ; preds = %986
  %994 = getelementptr double, double* %982, i64 -1
  %995 = ptrtoint double* %994 to i64
  %996 = sub i64 %995, %981
  %997 = lshr i64 %996, 3
  %998 = add nuw nsw i64 %997, 1
  %999 = getelementptr double, double* %984, i64 %998
  %1000 = getelementptr double, double* %980, i64 %998
  %1001 = icmp ult double* %984, %1000
  %1002 = icmp ult double* %980, %999
  %1003 = and i1 %1001, %1002
  br i1 %1003, label %1086, label %1004

; <label>:1004:                                   ; preds = %993
  %1005 = and i64 %991, 4611686018427387900
  %1006 = getelementptr double, double* %980, i64 %1005
  %1007 = getelementptr double, double* %984, i64 %1005
  %1008 = add nsw i64 %1005, -4
  %1009 = lshr exact i64 %1008, 2
  %1010 = add nuw nsw i64 %1009, 1
  %1011 = and i64 %1010, 3
  %1012 = icmp ult i64 %1008, 12
  br i1 %1012, label %1064, label %1013

; <label>:1013:                                   ; preds = %1004
  %1014 = sub nsw i64 %1010, %1011
  br label %1015

; <label>:1015:                                   ; preds = %1015, %1013
  %1016 = phi i64 [ 0, %1013 ], [ %1061, %1015 ]
  %1017 = phi i64 [ %1014, %1013 ], [ %1062, %1015 ]
  %1018 = getelementptr double, double* %980, i64 %1016
  %1019 = getelementptr double, double* %984, i64 %1016
  %1020 = bitcast double* %1018 to <2 x i64>*
  %1021 = load <2 x i64>, <2 x i64>* %1020, align 8, !tbaa !8, !alias.scope !35
  %1022 = getelementptr double, double* %1018, i64 2
  %1023 = bitcast double* %1022 to <2 x i64>*
  %1024 = load <2 x i64>, <2 x i64>* %1023, align 8, !tbaa !8, !alias.scope !35
  %1025 = bitcast double* %1019 to <2 x i64>*
  store <2 x i64> %1021, <2 x i64>* %1025, align 8, !tbaa !8, !alias.scope !38, !noalias !35
  %1026 = getelementptr double, double* %1019, i64 2
  %1027 = bitcast double* %1026 to <2 x i64>*
  store <2 x i64> %1024, <2 x i64>* %1027, align 8, !tbaa !8, !alias.scope !38, !noalias !35
  %1028 = or i64 %1016, 4
  %1029 = getelementptr double, double* %980, i64 %1028
  %1030 = getelementptr double, double* %984, i64 %1028
  %1031 = bitcast double* %1029 to <2 x i64>*
  %1032 = load <2 x i64>, <2 x i64>* %1031, align 8, !tbaa !8, !alias.scope !35
  %1033 = getelementptr double, double* %1029, i64 2
  %1034 = bitcast double* %1033 to <2 x i64>*
  %1035 = load <2 x i64>, <2 x i64>* %1034, align 8, !tbaa !8, !alias.scope !35
  %1036 = bitcast double* %1030 to <2 x i64>*
  store <2 x i64> %1032, <2 x i64>* %1036, align 8, !tbaa !8, !alias.scope !38, !noalias !35
  %1037 = getelementptr double, double* %1030, i64 2
  %1038 = bitcast double* %1037 to <2 x i64>*
  store <2 x i64> %1035, <2 x i64>* %1038, align 8, !tbaa !8, !alias.scope !38, !noalias !35
  %1039 = or i64 %1016, 8
  %1040 = getelementptr double, double* %980, i64 %1039
  %1041 = getelementptr double, double* %984, i64 %1039
  %1042 = bitcast double* %1040 to <2 x i64>*
  %1043 = load <2 x i64>, <2 x i64>* %1042, align 8, !tbaa !8, !alias.scope !35
  %1044 = getelementptr double, double* %1040, i64 2
  %1045 = bitcast double* %1044 to <2 x i64>*
  %1046 = load <2 x i64>, <2 x i64>* %1045, align 8, !tbaa !8, !alias.scope !35
  %1047 = bitcast double* %1041 to <2 x i64>*
  store <2 x i64> %1043, <2 x i64>* %1047, align 8, !tbaa !8, !alias.scope !38, !noalias !35
  %1048 = getelementptr double, double* %1041, i64 2
  %1049 = bitcast double* %1048 to <2 x i64>*
  store <2 x i64> %1046, <2 x i64>* %1049, align 8, !tbaa !8, !alias.scope !38, !noalias !35
  %1050 = or i64 %1016, 12
  %1051 = getelementptr double, double* %980, i64 %1050
  %1052 = getelementptr double, double* %984, i64 %1050
  %1053 = bitcast double* %1051 to <2 x i64>*
  %1054 = load <2 x i64>, <2 x i64>* %1053, align 8, !tbaa !8, !alias.scope !35
  %1055 = getelementptr double, double* %1051, i64 2
  %1056 = bitcast double* %1055 to <2 x i64>*
  %1057 = load <2 x i64>, <2 x i64>* %1056, align 8, !tbaa !8, !alias.scope !35
  %1058 = bitcast double* %1052 to <2 x i64>*
  store <2 x i64> %1054, <2 x i64>* %1058, align 8, !tbaa !8, !alias.scope !38, !noalias !35
  %1059 = getelementptr double, double* %1052, i64 2
  %1060 = bitcast double* %1059 to <2 x i64>*
  store <2 x i64> %1057, <2 x i64>* %1060, align 8, !tbaa !8, !alias.scope !38, !noalias !35
  %1061 = add i64 %1016, 16
  %1062 = add i64 %1017, -4
  %1063 = icmp eq i64 %1062, 0
  br i1 %1063, label %1064, label %1015, !llvm.loop !40

; <label>:1064:                                   ; preds = %1015, %1004
  %1065 = phi i64 [ 0, %1004 ], [ %1061, %1015 ]
  %1066 = icmp eq i64 %1011, 0
  br i1 %1066, label %1084, label %1067

; <label>:1067:                                   ; preds = %1064
  br label %1068

; <label>:1068:                                   ; preds = %1068, %1067
  %1069 = phi i64 [ %1065, %1067 ], [ %1081, %1068 ]
  %1070 = phi i64 [ %1011, %1067 ], [ %1082, %1068 ]
  %1071 = getelementptr double, double* %980, i64 %1069
  %1072 = getelementptr double, double* %984, i64 %1069
  %1073 = bitcast double* %1071 to <2 x i64>*
  %1074 = load <2 x i64>, <2 x i64>* %1073, align 8, !tbaa !8, !alias.scope !35
  %1075 = getelementptr double, double* %1071, i64 2
  %1076 = bitcast double* %1075 to <2 x i64>*
  %1077 = load <2 x i64>, <2 x i64>* %1076, align 8, !tbaa !8, !alias.scope !35
  %1078 = bitcast double* %1072 to <2 x i64>*
  store <2 x i64> %1074, <2 x i64>* %1078, align 8, !tbaa !8, !alias.scope !38, !noalias !35
  %1079 = getelementptr double, double* %1072, i64 2
  %1080 = bitcast double* %1079 to <2 x i64>*
  store <2 x i64> %1077, <2 x i64>* %1080, align 8, !tbaa !8, !alias.scope !38, !noalias !35
  %1081 = add i64 %1069, 4
  %1082 = add i64 %1070, -1
  %1083 = icmp eq i64 %1082, 0
  br i1 %1083, label %1084, label %1068, !llvm.loop !41

; <label>:1084:                                   ; preds = %1068, %1064
  %1085 = icmp eq i64 %991, %1005
  br i1 %1085, label %1158, label %1086

; <label>:1086:                                   ; preds = %1084, %993, %986
  %1087 = phi double* [ %980, %993 ], [ %980, %986 ], [ %1006, %1084 ]
  %1088 = phi double* [ %984, %993 ], [ %984, %986 ], [ %1007, %1084 ]
  %1089 = ptrtoint double* %1087 to i64
  %1090 = getelementptr double, double* %982, i64 -1
  %1091 = ptrtoint double* %1090 to i64
  %1092 = sub i64 %1091, %1089
  %1093 = lshr i64 %1092, 3
  %1094 = add nuw nsw i64 %1093, 1
  %1095 = and i64 %1094, 7
  %1096 = icmp eq i64 %1095, 0
  br i1 %1096, label %1109, label %1097

; <label>:1097:                                   ; preds = %1086
  br label %1098

; <label>:1098:                                   ; preds = %1098, %1097
  %1099 = phi double* [ %1102, %1098 ], [ %1087, %1097 ]
  %1100 = phi double* [ %1105, %1098 ], [ %1088, %1097 ]
  %1101 = phi i64 [ %1107, %1098 ], [ %1095, %1097 ]
  %1102 = getelementptr inbounds double, double* %1099, i64 1
  %1103 = bitcast double* %1099 to i64*
  %1104 = load i64, i64* %1103, align 8, !tbaa !8
  %1105 = getelementptr inbounds double, double* %1100, i64 1
  %1106 = bitcast double* %1100 to i64*
  store i64 %1104, i64* %1106, align 8, !tbaa !8
  %1107 = add i64 %1101, -1
  %1108 = icmp eq i64 %1107, 0
  br i1 %1108, label %1109, label %1098, !llvm.loop !42

; <label>:1109:                                   ; preds = %1098, %1086
  %1110 = phi double* [ %1087, %1086 ], [ %1102, %1098 ]
  %1111 = phi double* [ %1088, %1086 ], [ %1105, %1098 ]
  %1112 = icmp ult i64 %1092, 56
  br i1 %1112, label %1158, label %1113

; <label>:1113:                                   ; preds = %1109
  br label %1114

; <label>:1114:                                   ; preds = %1114, %1113
  %1115 = phi double* [ %1110, %1113 ], [ %1152, %1114 ]
  %1116 = phi double* [ %1111, %1113 ], [ %1155, %1114 ]
  %1117 = getelementptr inbounds double, double* %1115, i64 1
  %1118 = bitcast double* %1115 to i64*
  %1119 = load i64, i64* %1118, align 8, !tbaa !8
  %1120 = getelementptr inbounds double, double* %1116, i64 1
  %1121 = bitcast double* %1116 to i64*
  store i64 %1119, i64* %1121, align 8, !tbaa !8
  %1122 = getelementptr inbounds double, double* %1115, i64 2
  %1123 = bitcast double* %1117 to i64*
  %1124 = load i64, i64* %1123, align 8, !tbaa !8
  %1125 = getelementptr inbounds double, double* %1116, i64 2
  %1126 = bitcast double* %1120 to i64*
  store i64 %1124, i64* %1126, align 8, !tbaa !8
  %1127 = getelementptr inbounds double, double* %1115, i64 3
  %1128 = bitcast double* %1122 to i64*
  %1129 = load i64, i64* %1128, align 8, !tbaa !8
  %1130 = getelementptr inbounds double, double* %1116, i64 3
  %1131 = bitcast double* %1125 to i64*
  store i64 %1129, i64* %1131, align 8, !tbaa !8
  %1132 = getelementptr inbounds double, double* %1115, i64 4
  %1133 = bitcast double* %1127 to i64*
  %1134 = load i64, i64* %1133, align 8, !tbaa !8
  %1135 = getelementptr inbounds double, double* %1116, i64 4
  %1136 = bitcast double* %1130 to i64*
  store i64 %1134, i64* %1136, align 8, !tbaa !8
  %1137 = getelementptr inbounds double, double* %1115, i64 5
  %1138 = bitcast double* %1132 to i64*
  %1139 = load i64, i64* %1138, align 8, !tbaa !8
  %1140 = getelementptr inbounds double, double* %1116, i64 5
  %1141 = bitcast double* %1135 to i64*
  store i64 %1139, i64* %1141, align 8, !tbaa !8
  %1142 = getelementptr inbounds double, double* %1115, i64 6
  %1143 = bitcast double* %1137 to i64*
  %1144 = load i64, i64* %1143, align 8, !tbaa !8
  %1145 = getelementptr inbounds double, double* %1116, i64 6
  %1146 = bitcast double* %1140 to i64*
  store i64 %1144, i64* %1146, align 8, !tbaa !8
  %1147 = getelementptr inbounds double, double* %1115, i64 7
  %1148 = bitcast double* %1142 to i64*
  %1149 = load i64, i64* %1148, align 8, !tbaa !8
  %1150 = getelementptr inbounds double, double* %1116, i64 7
  %1151 = bitcast double* %1145 to i64*
  store i64 %1149, i64* %1151, align 8, !tbaa !8
  %1152 = getelementptr inbounds double, double* %1115, i64 8
  %1153 = bitcast double* %1147 to i64*
  %1154 = load i64, i64* %1153, align 8, !tbaa !8
  %1155 = getelementptr inbounds double, double* %1116, i64 8
  %1156 = bitcast double* %1150 to i64*
  store i64 %1154, i64* %1156, align 8, !tbaa !8
  %1157 = icmp eq double* %1152, %982
  br i1 %1157, label %1158, label %1114, !llvm.loop !43

; <label>:1158:                                   ; preds = %1109, %1114, %1084, %970, %979
  %1159 = phi double* [ %972, %970 ], [ %984, %979 ], [ %984, %1084 ], [ %984, %1114 ], [ %984, %1109 ]
  %1160 = phi double** [ %971, %970 ], [ %983, %979 ], [ %983, %1084 ], [ %983, %1114 ], [ %983, %1109 ]
  %1161 = phi double* [ %966, %970 ], [ %980, %979 ], [ %980, %1084 ], [ %980, %1114 ], [ %980, %1109 ]
  %1162 = phi double* [ %966, %970 ], [ %982, %979 ], [ %982, %1084 ], [ %982, %1114 ], [ %982, %1109 ]
  %1163 = ptrtoint double* %1159 to i64
  %1164 = load double*, double** %964, align 8, !tbaa !2
  %1165 = load double*, double** @dpb, align 8, !tbaa !2
  %1166 = load double*, double** @dpe, align 8, !tbaa !2
  invoke void @_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc(double* %1161, double* %1162, double* %1165, double* %1166, double 0.000000e+00, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0))
          to label %1167 unwind label %5074

; <label>:1167:                                   ; preds = %1158
  %1168 = load double*, double** %1160, align 8, !tbaa !2
  %1169 = load double*, double** %964, align 8, !tbaa !2
  %1170 = load double*, double** %150, align 8, !tbaa !2
  %1171 = load double*, double** %140, align 8, !tbaa !2
  invoke void @_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(double* %1168, double* %1169, double* %1170, double* %1171, double 0.000000e+00, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0))
          to label %1172 unwind label %5074

; <label>:1172:                                   ; preds = %1167
  %1173 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator", %"class.std::reverse_iterator"* @rdMpb, i64 0, i32 0), align 8, !tbaa !21
  %1174 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator", %"class.std::reverse_iterator"* @rdMpe, i64 0, i32 0), align 8, !tbaa !21
  %1175 = ptrtoint double* %1174 to i64
  %1176 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator", %"class.std::reverse_iterator"* @rdpe, i64 0, i32 0), align 8, !tbaa !21
  %1177 = ptrtoint double* %1176 to i64
  %1178 = load i32, i32* @iterations, align 4, !tbaa !6
  %1179 = icmp sgt i32 %1178, 0
  br i1 %1179, label %1180, label %2764

; <label>:1180:                                   ; preds = %1172
  %1181 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator", %"class.std::reverse_iterator"* @rdpb, i64 0, i32 0), align 8, !tbaa !21
  %1182 = icmp eq double* %1173, %1174
  %1183 = getelementptr inbounds double, double* %1181, i64 -1
  %1184 = icmp eq double* %1183, %1176
  br i1 %1182, label %1185, label %1254

; <label>:1185:                                   ; preds = %1180
  %1186 = getelementptr double, double* %1181, i64 -2
  %1187 = ptrtoint double* %1186 to i64
  %1188 = sub i64 %1187, %1177
  %1189 = and i64 %1188, 8
  %1190 = icmp eq i64 %1189, 0
  %1191 = getelementptr inbounds double, double* %1181, i64 -2
  %1192 = icmp ult i64 %1188, 8
  br label %1193

; <label>:1193:                                   ; preds = %1185, %1250
  %1194 = phi i32 [ %1251, %1250 ], [ %1178, %1185 ]
  %1195 = phi i32 [ %1252, %1250 ], [ 0, %1185 ]
  br i1 %1184, label %1250, label %1196

; <label>:1196:                                   ; preds = %1193
  br i1 %1190, label %1197, label %1211

; <label>:1197:                                   ; preds = %1196
  %1198 = load double, double* %1191, align 8, !tbaa !8
  br label %1199

; <label>:1199:                                   ; preds = %1205, %1197
  %1200 = phi double* [ %1206, %1205 ], [ %1183, %1197 ]
  %1201 = load double, double* %1200, align 8, !tbaa !8
  %1202 = fcmp olt double %1198, %1201
  br i1 %1202, label %1205, label %1203

; <label>:1203:                                   ; preds = %1199
  %1204 = getelementptr inbounds double, double* %1200, i64 -1
  br label %1209

; <label>:1205:                                   ; preds = %1199
  %1206 = getelementptr inbounds double, double* %1200, i64 1
  %1207 = getelementptr inbounds double, double* %1200, i64 -1
  store double %1201, double* %1207, align 8, !tbaa !8
  %1208 = icmp eq double* %1206, %1181
  br i1 %1208, label %1209, label %1199

; <label>:1209:                                   ; preds = %1205, %1203
  %1210 = phi double* [ %1204, %1203 ], [ %1183, %1205 ]
  store double %1198, double* %1210, align 8, !tbaa !8
  br label %1211

; <label>:1211:                                   ; preds = %1209, %1196
  %1212 = phi double* [ %1191, %1209 ], [ %1183, %1196 ]
  br i1 %1192, label %1235, label %1213

; <label>:1213:                                   ; preds = %1211
  br label %1214

; <label>:1214:                                   ; preds = %5239, %1213
  %1215 = phi double* [ %1212, %1213 ], [ %1232, %5239 ]
  %1216 = getelementptr inbounds double, double* %1215, i64 -1
  %1217 = load double, double* %1216, align 8, !tbaa !8
  %1218 = icmp eq double* %1215, %1181
  br i1 %1218, label %1230, label %1219

; <label>:1219:                                   ; preds = %1214
  br label %1220

; <label>:1220:                                   ; preds = %1219, %1226
  %1221 = phi double* [ %1227, %1226 ], [ %1215, %1219 ]
  %1222 = load double, double* %1221, align 8, !tbaa !8
  %1223 = fcmp olt double %1217, %1222
  br i1 %1223, label %1226, label %1224

; <label>:1224:                                   ; preds = %1220
  %1225 = getelementptr inbounds double, double* %1221, i64 -1
  br label %1230

; <label>:1226:                                   ; preds = %1220
  %1227 = getelementptr inbounds double, double* %1221, i64 1
  %1228 = getelementptr inbounds double, double* %1221, i64 -1
  store double %1222, double* %1228, align 8, !tbaa !8
  %1229 = icmp eq double* %1227, %1181
  br i1 %1229, label %1230, label %1220

; <label>:1230:                                   ; preds = %1226, %1224, %1214
  %1231 = phi double* [ %1183, %1214 ], [ %1225, %1224 ], [ %1183, %1226 ]
  store double %1217, double* %1231, align 8, !tbaa !8
  %1232 = getelementptr inbounds double, double* %1215, i64 -2
  %1233 = load double, double* %1232, align 8, !tbaa !8
  %1234 = icmp eq double* %1216, %1181
  br i1 %1234, label %5239, label %5228

; <label>:1235:                                   ; preds = %5239, %1211
  br label %1236

; <label>:1236:                                   ; preds = %1235, %1244
  %1237 = phi double* [ %1239, %1244 ], [ %1183, %1235 ]
  %1238 = phi double* [ %1241, %1244 ], [ %1181, %1235 ]
  %1239 = getelementptr inbounds double, double* %1237, i64 -1
  %1240 = load double, double* %1239, align 8, !tbaa !8
  %1241 = getelementptr inbounds double, double* %1238, i64 -1
  %1242 = load double, double* %1241, align 8, !tbaa !8
  %1243 = fcmp olt double %1240, %1242
  br i1 %1243, label %1246, label %1244

; <label>:1244:                                   ; preds = %1236
  %1245 = icmp eq double* %1239, %1176
  br i1 %1245, label %1250, label %1236

; <label>:1246:                                   ; preds = %1236
  %1247 = load i32, i32* @current_test, align 4, !tbaa !6
  %1248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %1247)
  %1249 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %1250

; <label>:1250:                                   ; preds = %1244, %1246, %1193
  %1251 = phi i32 [ %1194, %1193 ], [ %1249, %1246 ], [ %1194, %1244 ]
  %1252 = add nuw nsw i32 %1195, 1
  %1253 = icmp slt i32 %1252, %1251
  br i1 %1253, label %1193, label %1496

; <label>:1254:                                   ; preds = %1180
  %1255 = getelementptr double, double* %1173, i64 -1
  %1256 = ptrtoint double* %1255 to i64
  %1257 = sub i64 %1256, %1175
  %1258 = lshr i64 %1257, 3
  %1259 = add nuw nsw i64 %1258, 1
  %1260 = getelementptr double, double* %1173, i64 -1
  %1261 = ptrtoint double* %1260 to i64
  %1262 = sub i64 %1261, %1175
  %1263 = lshr i64 %1262, 3
  %1264 = xor i64 %1263, -1
  %1265 = getelementptr double, double* %1181, i64 %1264
  %1266 = getelementptr double, double* %1173, i64 %1264
  %1267 = and i64 %1259, 3
  %1268 = add nsw i64 %1267, -1
  %1269 = sub nsw i64 %1268, %1258
  %1270 = and i64 %1259, 3
  %1271 = add nsw i64 %1270, -1
  %1272 = sub nsw i64 %1271, %1258
  %1273 = and i64 %1259, 4611686018427387900
  %1274 = add nsw i64 %1273, -4
  %1275 = lshr exact i64 %1274, 2
  %1276 = add nuw nsw i64 %1275, 1
  %1277 = getelementptr double, double* %1181, i64 -2
  %1278 = ptrtoint double* %1277 to i64
  %1279 = sub i64 %1278, %1177
  %1280 = icmp ult i64 %1259, 4
  %1281 = icmp ult double* %1265, %1173
  %1282 = icmp ult double* %1266, %1181
  %1283 = and i1 %1281, %1282
  %1284 = and i64 %1279, 8
  %1285 = icmp eq i64 %1284, 0
  %1286 = and i64 %1259, 4611686018427387900
  %1287 = getelementptr double, double* %1181, i64 %1269
  %1288 = getelementptr double, double* %1173, i64 %1272
  %1289 = and i64 %1276, 1
  %1290 = icmp eq i64 %1274, 0
  %1291 = sub nsw i64 %1276, %1289
  %1292 = icmp eq i64 %1289, 0
  %1293 = getelementptr inbounds double, double* %1181, i64 -2
  %1294 = icmp ult i64 %1279, 8
  %1295 = icmp eq i64 %1259, %1286
  br label %1296

; <label>:1296:                                   ; preds = %1492, %1254
  %1297 = phi i32 [ %1178, %1254 ], [ %1493, %1492 ]
  %1298 = phi i32 [ 0, %1254 ], [ %1494, %1492 ]
  %1299 = or i1 %1280, %1283
  br i1 %1299, label %1366, label %1300

; <label>:1300:                                   ; preds = %1296
  br i1 %1290, label %1344, label %1301

; <label>:1301:                                   ; preds = %1300
  br label %1302

; <label>:1302:                                   ; preds = %1302, %1301
  %1303 = phi i64 [ 0, %1301 ], [ %1341, %1302 ]
  %1304 = phi i64 [ %1291, %1301 ], [ %1342, %1302 ]
  %1305 = sub i64 0, %1303
  %1306 = getelementptr double, double* %1181, i64 %1305
  %1307 = sub i64 0, %1303
  %1308 = getelementptr double, double* %1173, i64 %1307
  %1309 = getelementptr inbounds double, double* %1308, i64 -1
  %1310 = getelementptr double, double* %1309, i64 -1
  %1311 = bitcast double* %1310 to <2 x i64>*
  %1312 = load <2 x i64>, <2 x i64>* %1311, align 8, !tbaa !8, !alias.scope !44
  %1313 = getelementptr double, double* %1309, i64 -2
  %1314 = getelementptr double, double* %1313, i64 -1
  %1315 = bitcast double* %1314 to <2 x i64>*
  %1316 = load <2 x i64>, <2 x i64>* %1315, align 8, !tbaa !8, !alias.scope !44
  %1317 = getelementptr inbounds double, double* %1306, i64 -1
  %1318 = getelementptr double, double* %1317, i64 -1
  %1319 = bitcast double* %1318 to <2 x i64>*
  store <2 x i64> %1312, <2 x i64>* %1319, align 8, !tbaa !8, !alias.scope !47, !noalias !44
  %1320 = getelementptr double, double* %1317, i64 -2
  %1321 = getelementptr double, double* %1320, i64 -1
  %1322 = bitcast double* %1321 to <2 x i64>*
  store <2 x i64> %1316, <2 x i64>* %1322, align 8, !tbaa !8, !alias.scope !47, !noalias !44
  %1323 = sub i64 -4, %1303
  %1324 = getelementptr double, double* %1181, i64 %1323
  %1325 = sub i64 -4, %1303
  %1326 = getelementptr double, double* %1173, i64 %1325
  %1327 = getelementptr inbounds double, double* %1326, i64 -1
  %1328 = getelementptr double, double* %1327, i64 -1
  %1329 = bitcast double* %1328 to <2 x i64>*
  %1330 = load <2 x i64>, <2 x i64>* %1329, align 8, !tbaa !8, !alias.scope !44
  %1331 = getelementptr double, double* %1327, i64 -2
  %1332 = getelementptr double, double* %1331, i64 -1
  %1333 = bitcast double* %1332 to <2 x i64>*
  %1334 = load <2 x i64>, <2 x i64>* %1333, align 8, !tbaa !8, !alias.scope !44
  %1335 = getelementptr inbounds double, double* %1324, i64 -1
  %1336 = getelementptr double, double* %1335, i64 -1
  %1337 = bitcast double* %1336 to <2 x i64>*
  store <2 x i64> %1330, <2 x i64>* %1337, align 8, !tbaa !8, !alias.scope !47, !noalias !44
  %1338 = getelementptr double, double* %1335, i64 -2
  %1339 = getelementptr double, double* %1338, i64 -1
  %1340 = bitcast double* %1339 to <2 x i64>*
  store <2 x i64> %1334, <2 x i64>* %1340, align 8, !tbaa !8, !alias.scope !47, !noalias !44
  %1341 = add i64 %1303, 8
  %1342 = add i64 %1304, -2
  %1343 = icmp eq i64 %1342, 0
  br i1 %1343, label %1344, label %1302, !llvm.loop !49

; <label>:1344:                                   ; preds = %1302, %1300
  %1345 = phi i64 [ 0, %1300 ], [ %1341, %1302 ]
  br i1 %1292, label %1365, label %1346

; <label>:1346:                                   ; preds = %1344
  %1347 = sub i64 0, %1345
  %1348 = getelementptr double, double* %1181, i64 %1347
  %1349 = sub i64 0, %1345
  %1350 = getelementptr double, double* %1173, i64 %1349
  %1351 = getelementptr inbounds double, double* %1350, i64 -1
  %1352 = getelementptr double, double* %1351, i64 -1
  %1353 = bitcast double* %1352 to <2 x i64>*
  %1354 = load <2 x i64>, <2 x i64>* %1353, align 8, !tbaa !8, !alias.scope !44
  %1355 = getelementptr double, double* %1351, i64 -2
  %1356 = getelementptr double, double* %1355, i64 -1
  %1357 = bitcast double* %1356 to <2 x i64>*
  %1358 = load <2 x i64>, <2 x i64>* %1357, align 8, !tbaa !8, !alias.scope !44
  %1359 = getelementptr inbounds double, double* %1348, i64 -1
  %1360 = getelementptr double, double* %1359, i64 -1
  %1361 = bitcast double* %1360 to <2 x i64>*
  store <2 x i64> %1354, <2 x i64>* %1361, align 8, !tbaa !8, !alias.scope !47, !noalias !44
  %1362 = getelementptr double, double* %1359, i64 -2
  %1363 = getelementptr double, double* %1362, i64 -1
  %1364 = bitcast double* %1363 to <2 x i64>*
  store <2 x i64> %1358, <2 x i64>* %1364, align 8, !tbaa !8, !alias.scope !47, !noalias !44
  br label %1365

; <label>:1365:                                   ; preds = %1344, %1346
  br i1 %1295, label %1437, label %1366

; <label>:1366:                                   ; preds = %1296, %1365
  %1367 = phi double* [ %1181, %1296 ], [ %1287, %1365 ]
  %1368 = phi double* [ %1173, %1296 ], [ %1288, %1365 ]
  %1369 = getelementptr double, double* %1368, i64 -1
  %1370 = ptrtoint double* %1369 to i64
  %1371 = sub i64 %1370, %1175
  %1372 = lshr i64 %1371, 3
  %1373 = add nuw nsw i64 %1372, 1
  %1374 = and i64 %1373, 7
  %1375 = icmp eq i64 %1374, 0
  br i1 %1375, label %1388, label %1376

; <label>:1376:                                   ; preds = %1366
  br label %1377

; <label>:1377:                                   ; preds = %1377, %1376
  %1378 = phi double* [ %1384, %1377 ], [ %1367, %1376 ]
  %1379 = phi double* [ %1381, %1377 ], [ %1368, %1376 ]
  %1380 = phi i64 [ %1386, %1377 ], [ %1374, %1376 ]
  %1381 = getelementptr inbounds double, double* %1379, i64 -1
  %1382 = bitcast double* %1381 to i64*
  %1383 = load i64, i64* %1382, align 8, !tbaa !8
  %1384 = getelementptr inbounds double, double* %1378, i64 -1
  %1385 = bitcast double* %1384 to i64*
  store i64 %1383, i64* %1385, align 8, !tbaa !8
  %1386 = add i64 %1380, -1
  %1387 = icmp eq i64 %1386, 0
  br i1 %1387, label %1388, label %1377, !llvm.loop !50

; <label>:1388:                                   ; preds = %1377, %1366
  %1389 = phi double* [ %1367, %1366 ], [ %1384, %1377 ]
  %1390 = phi double* [ %1368, %1366 ], [ %1381, %1377 ]
  %1391 = icmp ult i64 %1371, 56
  br i1 %1391, label %1437, label %1392

; <label>:1392:                                   ; preds = %1388
  br label %1393

; <label>:1393:                                   ; preds = %1393, %1392
  %1394 = phi double* [ %1389, %1392 ], [ %1434, %1393 ]
  %1395 = phi double* [ %1390, %1392 ], [ %1431, %1393 ]
  %1396 = getelementptr inbounds double, double* %1395, i64 -1
  %1397 = bitcast double* %1396 to i64*
  %1398 = load i64, i64* %1397, align 8, !tbaa !8
  %1399 = getelementptr inbounds double, double* %1394, i64 -1
  %1400 = bitcast double* %1399 to i64*
  store i64 %1398, i64* %1400, align 8, !tbaa !8
  %1401 = getelementptr inbounds double, double* %1395, i64 -2
  %1402 = bitcast double* %1401 to i64*
  %1403 = load i64, i64* %1402, align 8, !tbaa !8
  %1404 = getelementptr inbounds double, double* %1394, i64 -2
  %1405 = bitcast double* %1404 to i64*
  store i64 %1403, i64* %1405, align 8, !tbaa !8
  %1406 = getelementptr inbounds double, double* %1395, i64 -3
  %1407 = bitcast double* %1406 to i64*
  %1408 = load i64, i64* %1407, align 8, !tbaa !8
  %1409 = getelementptr inbounds double, double* %1394, i64 -3
  %1410 = bitcast double* %1409 to i64*
  store i64 %1408, i64* %1410, align 8, !tbaa !8
  %1411 = getelementptr inbounds double, double* %1395, i64 -4
  %1412 = bitcast double* %1411 to i64*
  %1413 = load i64, i64* %1412, align 8, !tbaa !8
  %1414 = getelementptr inbounds double, double* %1394, i64 -4
  %1415 = bitcast double* %1414 to i64*
  store i64 %1413, i64* %1415, align 8, !tbaa !8
  %1416 = getelementptr inbounds double, double* %1395, i64 -5
  %1417 = bitcast double* %1416 to i64*
  %1418 = load i64, i64* %1417, align 8, !tbaa !8
  %1419 = getelementptr inbounds double, double* %1394, i64 -5
  %1420 = bitcast double* %1419 to i64*
  store i64 %1418, i64* %1420, align 8, !tbaa !8
  %1421 = getelementptr inbounds double, double* %1395, i64 -6
  %1422 = bitcast double* %1421 to i64*
  %1423 = load i64, i64* %1422, align 8, !tbaa !8
  %1424 = getelementptr inbounds double, double* %1394, i64 -6
  %1425 = bitcast double* %1424 to i64*
  store i64 %1423, i64* %1425, align 8, !tbaa !8
  %1426 = getelementptr inbounds double, double* %1395, i64 -7
  %1427 = bitcast double* %1426 to i64*
  %1428 = load i64, i64* %1427, align 8, !tbaa !8
  %1429 = getelementptr inbounds double, double* %1394, i64 -7
  %1430 = bitcast double* %1429 to i64*
  store i64 %1428, i64* %1430, align 8, !tbaa !8
  %1431 = getelementptr inbounds double, double* %1395, i64 -8
  %1432 = bitcast double* %1431 to i64*
  %1433 = load i64, i64* %1432, align 8, !tbaa !8
  %1434 = getelementptr inbounds double, double* %1394, i64 -8
  %1435 = bitcast double* %1434 to i64*
  store i64 %1433, i64* %1435, align 8, !tbaa !8
  %1436 = icmp eq double* %1431, %1174
  br i1 %1436, label %1437, label %1393, !llvm.loop !51

; <label>:1437:                                   ; preds = %1388, %1393, %1365
  br i1 %1184, label %1492, label %1438

; <label>:1438:                                   ; preds = %1437
  br i1 %1285, label %1439, label %1453

; <label>:1439:                                   ; preds = %1438
  %1440 = load double, double* %1293, align 8, !tbaa !8
  br label %1441

; <label>:1441:                                   ; preds = %1447, %1439
  %1442 = phi double* [ %1448, %1447 ], [ %1183, %1439 ]
  %1443 = load double, double* %1442, align 8, !tbaa !8
  %1444 = fcmp olt double %1440, %1443
  br i1 %1444, label %1447, label %1445

; <label>:1445:                                   ; preds = %1441
  %1446 = getelementptr inbounds double, double* %1442, i64 -1
  br label %1451

; <label>:1447:                                   ; preds = %1441
  %1448 = getelementptr inbounds double, double* %1442, i64 1
  %1449 = getelementptr inbounds double, double* %1442, i64 -1
  store double %1443, double* %1449, align 8, !tbaa !8
  %1450 = icmp eq double* %1448, %1181
  br i1 %1450, label %1451, label %1441

; <label>:1451:                                   ; preds = %1447, %1445
  %1452 = phi double* [ %1446, %1445 ], [ %1183, %1447 ]
  store double %1440, double* %1452, align 8, !tbaa !8
  br label %1453

; <label>:1453:                                   ; preds = %1451, %1438
  %1454 = phi double* [ %1293, %1451 ], [ %1183, %1438 ]
  br i1 %1294, label %1477, label %1455

; <label>:1455:                                   ; preds = %1453
  br label %1456

; <label>:1456:                                   ; preds = %5253, %1455
  %1457 = phi double* [ %1454, %1455 ], [ %1474, %5253 ]
  %1458 = getelementptr inbounds double, double* %1457, i64 -1
  %1459 = load double, double* %1458, align 8, !tbaa !8
  %1460 = icmp eq double* %1457, %1181
  br i1 %1460, label %1472, label %1461

; <label>:1461:                                   ; preds = %1456
  br label %1462

; <label>:1462:                                   ; preds = %1461, %1468
  %1463 = phi double* [ %1469, %1468 ], [ %1457, %1461 ]
  %1464 = load double, double* %1463, align 8, !tbaa !8
  %1465 = fcmp olt double %1459, %1464
  br i1 %1465, label %1468, label %1466

; <label>:1466:                                   ; preds = %1462
  %1467 = getelementptr inbounds double, double* %1463, i64 -1
  br label %1472

; <label>:1468:                                   ; preds = %1462
  %1469 = getelementptr inbounds double, double* %1463, i64 1
  %1470 = getelementptr inbounds double, double* %1463, i64 -1
  store double %1464, double* %1470, align 8, !tbaa !8
  %1471 = icmp eq double* %1469, %1181
  br i1 %1471, label %1472, label %1462

; <label>:1472:                                   ; preds = %1468, %1466, %1456
  %1473 = phi double* [ %1183, %1456 ], [ %1467, %1466 ], [ %1183, %1468 ]
  store double %1459, double* %1473, align 8, !tbaa !8
  %1474 = getelementptr inbounds double, double* %1457, i64 -2
  %1475 = load double, double* %1474, align 8, !tbaa !8
  %1476 = icmp eq double* %1458, %1181
  br i1 %1476, label %5253, label %5242

; <label>:1477:                                   ; preds = %5253, %1453
  br label %1480

; <label>:1478:                                   ; preds = %1480
  %1479 = icmp eq double* %1483, %1176
  br i1 %1479, label %1492, label %1480

; <label>:1480:                                   ; preds = %1477, %1478
  %1481 = phi double* [ %1483, %1478 ], [ %1183, %1477 ]
  %1482 = phi double* [ %1485, %1478 ], [ %1181, %1477 ]
  %1483 = getelementptr inbounds double, double* %1481, i64 -1
  %1484 = load double, double* %1483, align 8, !tbaa !8
  %1485 = getelementptr inbounds double, double* %1482, i64 -1
  %1486 = load double, double* %1485, align 8, !tbaa !8
  %1487 = fcmp olt double %1484, %1486
  br i1 %1487, label %1488, label %1478

; <label>:1488:                                   ; preds = %1480
  %1489 = load i32, i32* @current_test, align 4, !tbaa !6
  %1490 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %1489)
  %1491 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %1492

; <label>:1492:                                   ; preds = %1478, %1488, %1437
  %1493 = phi i32 [ %1297, %1437 ], [ %1491, %1488 ], [ %1297, %1478 ]
  %1494 = add nuw nsw i32 %1298, 1
  %1495 = icmp slt i32 %1494, %1493
  br i1 %1495, label %1296, label %1496

; <label>:1496:                                   ; preds = %1492, %1250
  %1497 = phi i32 [ %1251, %1250 ], [ %1493, %1492 ]
  %1498 = load double*, double** %964, align 8, !tbaa !2, !noalias !52
  %1499 = load double*, double** %1160, align 8, !tbaa !2, !noalias !55
  %1500 = ptrtoint double* %1499 to i64
  %1501 = load double*, double** %150, align 8, !tbaa !2, !noalias !58
  %1502 = ptrtoint double* %1501 to i64
  %1503 = icmp sgt i32 %1497, 0
  br i1 %1503, label %1504, label %2764

; <label>:1504:                                   ; preds = %1496
  %1505 = load double*, double** %140, align 8, !tbaa !2, !noalias !61
  %1506 = icmp eq double* %1498, %1499
  %1507 = getelementptr inbounds double, double* %1505, i64 -1
  %1508 = icmp eq double* %1507, %1501
  br i1 %1506, label %1509, label %1578

; <label>:1509:                                   ; preds = %1504
  %1510 = getelementptr double, double* %1505, i64 -2
  %1511 = ptrtoint double* %1510 to i64
  %1512 = sub i64 %1511, %1502
  %1513 = and i64 %1512, 8
  %1514 = icmp eq i64 %1513, 0
  %1515 = getelementptr inbounds double, double* %1505, i64 -2
  %1516 = icmp ult i64 %1512, 8
  br label %1517

; <label>:1517:                                   ; preds = %1509, %1574
  %1518 = phi i32 [ %1575, %1574 ], [ %1497, %1509 ]
  %1519 = phi i32 [ %1576, %1574 ], [ 0, %1509 ]
  br i1 %1508, label %1574, label %1520

; <label>:1520:                                   ; preds = %1517
  br i1 %1514, label %1521, label %1535

; <label>:1521:                                   ; preds = %1520
  %1522 = load double, double* %1515, align 8, !tbaa !8
  br label %1523

; <label>:1523:                                   ; preds = %1529, %1521
  %1524 = phi double* [ %1530, %1529 ], [ %1507, %1521 ]
  %1525 = load double, double* %1524, align 8, !tbaa !8
  %1526 = fcmp olt double %1522, %1525
  br i1 %1526, label %1529, label %1527

; <label>:1527:                                   ; preds = %1523
  %1528 = getelementptr inbounds double, double* %1524, i64 -1
  br label %1533

; <label>:1529:                                   ; preds = %1523
  %1530 = getelementptr inbounds double, double* %1524, i64 1
  %1531 = getelementptr inbounds double, double* %1524, i64 -1
  store double %1525, double* %1531, align 8, !tbaa !8
  %1532 = icmp eq double* %1530, %1505
  br i1 %1532, label %1533, label %1523

; <label>:1533:                                   ; preds = %1529, %1527
  %1534 = phi double* [ %1528, %1527 ], [ %1507, %1529 ]
  store double %1522, double* %1534, align 8, !tbaa !8
  br label %1535

; <label>:1535:                                   ; preds = %1533, %1520
  %1536 = phi double* [ %1515, %1533 ], [ %1507, %1520 ]
  br i1 %1516, label %1559, label %1537

; <label>:1537:                                   ; preds = %1535
  br label %1538

; <label>:1538:                                   ; preds = %5211, %1537
  %1539 = phi double* [ %1536, %1537 ], [ %1556, %5211 ]
  %1540 = getelementptr inbounds double, double* %1539, i64 -1
  %1541 = load double, double* %1540, align 8, !tbaa !8
  %1542 = icmp eq double* %1539, %1505
  br i1 %1542, label %1554, label %1543

; <label>:1543:                                   ; preds = %1538
  br label %1544

; <label>:1544:                                   ; preds = %1543, %1550
  %1545 = phi double* [ %1551, %1550 ], [ %1539, %1543 ]
  %1546 = load double, double* %1545, align 8, !tbaa !8
  %1547 = fcmp olt double %1541, %1546
  br i1 %1547, label %1550, label %1548

; <label>:1548:                                   ; preds = %1544
  %1549 = getelementptr inbounds double, double* %1545, i64 -1
  br label %1554

; <label>:1550:                                   ; preds = %1544
  %1551 = getelementptr inbounds double, double* %1545, i64 1
  %1552 = getelementptr inbounds double, double* %1545, i64 -1
  store double %1546, double* %1552, align 8, !tbaa !8
  %1553 = icmp eq double* %1551, %1505
  br i1 %1553, label %1554, label %1544

; <label>:1554:                                   ; preds = %1550, %1548, %1538
  %1555 = phi double* [ %1507, %1538 ], [ %1549, %1548 ], [ %1507, %1550 ]
  store double %1541, double* %1555, align 8, !tbaa !8
  %1556 = getelementptr inbounds double, double* %1539, i64 -2
  %1557 = load double, double* %1556, align 8, !tbaa !8
  %1558 = icmp eq double* %1540, %1505
  br i1 %1558, label %5211, label %5200

; <label>:1559:                                   ; preds = %5211, %1535
  br label %1560

; <label>:1560:                                   ; preds = %1559, %1568
  %1561 = phi double* [ %1563, %1568 ], [ %1507, %1559 ]
  %1562 = phi double* [ %1565, %1568 ], [ %1505, %1559 ]
  %1563 = getelementptr inbounds double, double* %1561, i64 -1
  %1564 = load double, double* %1563, align 8, !tbaa !8
  %1565 = getelementptr inbounds double, double* %1562, i64 -1
  %1566 = load double, double* %1565, align 8, !tbaa !8
  %1567 = fcmp olt double %1564, %1566
  br i1 %1567, label %1570, label %1568

; <label>:1568:                                   ; preds = %1560
  %1569 = icmp eq double* %1563, %1501
  br i1 %1569, label %1574, label %1560

; <label>:1570:                                   ; preds = %1560
  %1571 = load i32, i32* @current_test, align 4, !tbaa !6
  %1572 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %1571)
  %1573 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %1574

; <label>:1574:                                   ; preds = %1568, %1570, %1517
  %1575 = phi i32 [ %1518, %1517 ], [ %1573, %1570 ], [ %1518, %1568 ]
  %1576 = add nuw nsw i32 %1519, 1
  %1577 = icmp slt i32 %1576, %1575
  br i1 %1577, label %1517, label %1820

; <label>:1578:                                   ; preds = %1504
  %1579 = getelementptr double, double* %1498, i64 -1
  %1580 = ptrtoint double* %1579 to i64
  %1581 = sub i64 %1580, %1500
  %1582 = lshr i64 %1581, 3
  %1583 = add nuw nsw i64 %1582, 1
  %1584 = getelementptr double, double* %1498, i64 -1
  %1585 = ptrtoint double* %1584 to i64
  %1586 = sub i64 %1585, %1500
  %1587 = lshr i64 %1586, 3
  %1588 = xor i64 %1587, -1
  %1589 = getelementptr double, double* %1505, i64 %1588
  %1590 = getelementptr double, double* %1498, i64 %1588
  %1591 = and i64 %1583, 3
  %1592 = add nsw i64 %1591, -1
  %1593 = sub nsw i64 %1592, %1582
  %1594 = and i64 %1583, 3
  %1595 = add nsw i64 %1594, -1
  %1596 = sub nsw i64 %1595, %1582
  %1597 = and i64 %1583, 4611686018427387900
  %1598 = add nsw i64 %1597, -4
  %1599 = lshr exact i64 %1598, 2
  %1600 = add nuw nsw i64 %1599, 1
  %1601 = getelementptr double, double* %1505, i64 -2
  %1602 = ptrtoint double* %1601 to i64
  %1603 = sub i64 %1602, %1502
  %1604 = icmp ult i64 %1583, 4
  %1605 = icmp ult double* %1589, %1498
  %1606 = icmp ult double* %1590, %1505
  %1607 = and i1 %1605, %1606
  %1608 = and i64 %1603, 8
  %1609 = icmp eq i64 %1608, 0
  %1610 = and i64 %1583, 4611686018427387900
  %1611 = getelementptr double, double* %1505, i64 %1593
  %1612 = getelementptr double, double* %1498, i64 %1596
  %1613 = and i64 %1600, 1
  %1614 = icmp eq i64 %1598, 0
  %1615 = sub nsw i64 %1600, %1613
  %1616 = icmp eq i64 %1613, 0
  %1617 = getelementptr inbounds double, double* %1505, i64 -2
  %1618 = icmp ult i64 %1603, 8
  %1619 = icmp eq i64 %1583, %1610
  br label %1620

; <label>:1620:                                   ; preds = %1816, %1578
  %1621 = phi i32 [ %1497, %1578 ], [ %1817, %1816 ]
  %1622 = phi i32 [ 0, %1578 ], [ %1818, %1816 ]
  %1623 = or i1 %1604, %1607
  br i1 %1623, label %1690, label %1624

; <label>:1624:                                   ; preds = %1620
  br i1 %1614, label %1668, label %1625

; <label>:1625:                                   ; preds = %1624
  br label %1626

; <label>:1626:                                   ; preds = %1626, %1625
  %1627 = phi i64 [ 0, %1625 ], [ %1665, %1626 ]
  %1628 = phi i64 [ %1615, %1625 ], [ %1666, %1626 ]
  %1629 = sub i64 0, %1627
  %1630 = getelementptr double, double* %1505, i64 %1629
  %1631 = sub i64 0, %1627
  %1632 = getelementptr double, double* %1498, i64 %1631
  %1633 = getelementptr inbounds double, double* %1632, i64 -1
  %1634 = getelementptr double, double* %1633, i64 -1
  %1635 = bitcast double* %1634 to <2 x i64>*
  %1636 = load <2 x i64>, <2 x i64>* %1635, align 8, !tbaa !8, !alias.scope !64
  %1637 = getelementptr double, double* %1633, i64 -2
  %1638 = getelementptr double, double* %1637, i64 -1
  %1639 = bitcast double* %1638 to <2 x i64>*
  %1640 = load <2 x i64>, <2 x i64>* %1639, align 8, !tbaa !8, !alias.scope !64
  %1641 = getelementptr inbounds double, double* %1630, i64 -1
  %1642 = getelementptr double, double* %1641, i64 -1
  %1643 = bitcast double* %1642 to <2 x i64>*
  store <2 x i64> %1636, <2 x i64>* %1643, align 8, !tbaa !8, !alias.scope !67, !noalias !64
  %1644 = getelementptr double, double* %1641, i64 -2
  %1645 = getelementptr double, double* %1644, i64 -1
  %1646 = bitcast double* %1645 to <2 x i64>*
  store <2 x i64> %1640, <2 x i64>* %1646, align 8, !tbaa !8, !alias.scope !67, !noalias !64
  %1647 = sub i64 -4, %1627
  %1648 = getelementptr double, double* %1505, i64 %1647
  %1649 = sub i64 -4, %1627
  %1650 = getelementptr double, double* %1498, i64 %1649
  %1651 = getelementptr inbounds double, double* %1650, i64 -1
  %1652 = getelementptr double, double* %1651, i64 -1
  %1653 = bitcast double* %1652 to <2 x i64>*
  %1654 = load <2 x i64>, <2 x i64>* %1653, align 8, !tbaa !8, !alias.scope !64
  %1655 = getelementptr double, double* %1651, i64 -2
  %1656 = getelementptr double, double* %1655, i64 -1
  %1657 = bitcast double* %1656 to <2 x i64>*
  %1658 = load <2 x i64>, <2 x i64>* %1657, align 8, !tbaa !8, !alias.scope !64
  %1659 = getelementptr inbounds double, double* %1648, i64 -1
  %1660 = getelementptr double, double* %1659, i64 -1
  %1661 = bitcast double* %1660 to <2 x i64>*
  store <2 x i64> %1654, <2 x i64>* %1661, align 8, !tbaa !8, !alias.scope !67, !noalias !64
  %1662 = getelementptr double, double* %1659, i64 -2
  %1663 = getelementptr double, double* %1662, i64 -1
  %1664 = bitcast double* %1663 to <2 x i64>*
  store <2 x i64> %1658, <2 x i64>* %1664, align 8, !tbaa !8, !alias.scope !67, !noalias !64
  %1665 = add i64 %1627, 8
  %1666 = add i64 %1628, -2
  %1667 = icmp eq i64 %1666, 0
  br i1 %1667, label %1668, label %1626, !llvm.loop !69

; <label>:1668:                                   ; preds = %1626, %1624
  %1669 = phi i64 [ 0, %1624 ], [ %1665, %1626 ]
  br i1 %1616, label %1689, label %1670

; <label>:1670:                                   ; preds = %1668
  %1671 = sub i64 0, %1669
  %1672 = getelementptr double, double* %1505, i64 %1671
  %1673 = sub i64 0, %1669
  %1674 = getelementptr double, double* %1498, i64 %1673
  %1675 = getelementptr inbounds double, double* %1674, i64 -1
  %1676 = getelementptr double, double* %1675, i64 -1
  %1677 = bitcast double* %1676 to <2 x i64>*
  %1678 = load <2 x i64>, <2 x i64>* %1677, align 8, !tbaa !8, !alias.scope !64
  %1679 = getelementptr double, double* %1675, i64 -2
  %1680 = getelementptr double, double* %1679, i64 -1
  %1681 = bitcast double* %1680 to <2 x i64>*
  %1682 = load <2 x i64>, <2 x i64>* %1681, align 8, !tbaa !8, !alias.scope !64
  %1683 = getelementptr inbounds double, double* %1672, i64 -1
  %1684 = getelementptr double, double* %1683, i64 -1
  %1685 = bitcast double* %1684 to <2 x i64>*
  store <2 x i64> %1678, <2 x i64>* %1685, align 8, !tbaa !8, !alias.scope !67, !noalias !64
  %1686 = getelementptr double, double* %1683, i64 -2
  %1687 = getelementptr double, double* %1686, i64 -1
  %1688 = bitcast double* %1687 to <2 x i64>*
  store <2 x i64> %1682, <2 x i64>* %1688, align 8, !tbaa !8, !alias.scope !67, !noalias !64
  br label %1689

; <label>:1689:                                   ; preds = %1668, %1670
  br i1 %1619, label %1761, label %1690

; <label>:1690:                                   ; preds = %1620, %1689
  %1691 = phi double* [ %1505, %1620 ], [ %1611, %1689 ]
  %1692 = phi double* [ %1498, %1620 ], [ %1612, %1689 ]
  %1693 = getelementptr double, double* %1692, i64 -1
  %1694 = ptrtoint double* %1693 to i64
  %1695 = sub i64 %1694, %1500
  %1696 = lshr i64 %1695, 3
  %1697 = add nuw nsw i64 %1696, 1
  %1698 = and i64 %1697, 7
  %1699 = icmp eq i64 %1698, 0
  br i1 %1699, label %1712, label %1700

; <label>:1700:                                   ; preds = %1690
  br label %1701

; <label>:1701:                                   ; preds = %1701, %1700
  %1702 = phi double* [ %1708, %1701 ], [ %1691, %1700 ]
  %1703 = phi double* [ %1705, %1701 ], [ %1692, %1700 ]
  %1704 = phi i64 [ %1710, %1701 ], [ %1698, %1700 ]
  %1705 = getelementptr inbounds double, double* %1703, i64 -1
  %1706 = bitcast double* %1705 to i64*
  %1707 = load i64, i64* %1706, align 8, !tbaa !8
  %1708 = getelementptr inbounds double, double* %1702, i64 -1
  %1709 = bitcast double* %1708 to i64*
  store i64 %1707, i64* %1709, align 8, !tbaa !8
  %1710 = add i64 %1704, -1
  %1711 = icmp eq i64 %1710, 0
  br i1 %1711, label %1712, label %1701, !llvm.loop !70

; <label>:1712:                                   ; preds = %1701, %1690
  %1713 = phi double* [ %1691, %1690 ], [ %1708, %1701 ]
  %1714 = phi double* [ %1692, %1690 ], [ %1705, %1701 ]
  %1715 = icmp ult i64 %1695, 56
  br i1 %1715, label %1761, label %1716

; <label>:1716:                                   ; preds = %1712
  br label %1717

; <label>:1717:                                   ; preds = %1717, %1716
  %1718 = phi double* [ %1713, %1716 ], [ %1758, %1717 ]
  %1719 = phi double* [ %1714, %1716 ], [ %1755, %1717 ]
  %1720 = getelementptr inbounds double, double* %1719, i64 -1
  %1721 = bitcast double* %1720 to i64*
  %1722 = load i64, i64* %1721, align 8, !tbaa !8
  %1723 = getelementptr inbounds double, double* %1718, i64 -1
  %1724 = bitcast double* %1723 to i64*
  store i64 %1722, i64* %1724, align 8, !tbaa !8
  %1725 = getelementptr inbounds double, double* %1719, i64 -2
  %1726 = bitcast double* %1725 to i64*
  %1727 = load i64, i64* %1726, align 8, !tbaa !8
  %1728 = getelementptr inbounds double, double* %1718, i64 -2
  %1729 = bitcast double* %1728 to i64*
  store i64 %1727, i64* %1729, align 8, !tbaa !8
  %1730 = getelementptr inbounds double, double* %1719, i64 -3
  %1731 = bitcast double* %1730 to i64*
  %1732 = load i64, i64* %1731, align 8, !tbaa !8
  %1733 = getelementptr inbounds double, double* %1718, i64 -3
  %1734 = bitcast double* %1733 to i64*
  store i64 %1732, i64* %1734, align 8, !tbaa !8
  %1735 = getelementptr inbounds double, double* %1719, i64 -4
  %1736 = bitcast double* %1735 to i64*
  %1737 = load i64, i64* %1736, align 8, !tbaa !8
  %1738 = getelementptr inbounds double, double* %1718, i64 -4
  %1739 = bitcast double* %1738 to i64*
  store i64 %1737, i64* %1739, align 8, !tbaa !8
  %1740 = getelementptr inbounds double, double* %1719, i64 -5
  %1741 = bitcast double* %1740 to i64*
  %1742 = load i64, i64* %1741, align 8, !tbaa !8
  %1743 = getelementptr inbounds double, double* %1718, i64 -5
  %1744 = bitcast double* %1743 to i64*
  store i64 %1742, i64* %1744, align 8, !tbaa !8
  %1745 = getelementptr inbounds double, double* %1719, i64 -6
  %1746 = bitcast double* %1745 to i64*
  %1747 = load i64, i64* %1746, align 8, !tbaa !8
  %1748 = getelementptr inbounds double, double* %1718, i64 -6
  %1749 = bitcast double* %1748 to i64*
  store i64 %1747, i64* %1749, align 8, !tbaa !8
  %1750 = getelementptr inbounds double, double* %1719, i64 -7
  %1751 = bitcast double* %1750 to i64*
  %1752 = load i64, i64* %1751, align 8, !tbaa !8
  %1753 = getelementptr inbounds double, double* %1718, i64 -7
  %1754 = bitcast double* %1753 to i64*
  store i64 %1752, i64* %1754, align 8, !tbaa !8
  %1755 = getelementptr inbounds double, double* %1719, i64 -8
  %1756 = bitcast double* %1755 to i64*
  %1757 = load i64, i64* %1756, align 8, !tbaa !8
  %1758 = getelementptr inbounds double, double* %1718, i64 -8
  %1759 = bitcast double* %1758 to i64*
  store i64 %1757, i64* %1759, align 8, !tbaa !8
  %1760 = icmp eq double* %1755, %1499
  br i1 %1760, label %1761, label %1717, !llvm.loop !71

; <label>:1761:                                   ; preds = %1712, %1717, %1689
  br i1 %1508, label %1816, label %1762

; <label>:1762:                                   ; preds = %1761
  br i1 %1609, label %1763, label %1777

; <label>:1763:                                   ; preds = %1762
  %1764 = load double, double* %1617, align 8, !tbaa !8
  br label %1765

; <label>:1765:                                   ; preds = %1771, %1763
  %1766 = phi double* [ %1772, %1771 ], [ %1507, %1763 ]
  %1767 = load double, double* %1766, align 8, !tbaa !8
  %1768 = fcmp olt double %1764, %1767
  br i1 %1768, label %1771, label %1769

; <label>:1769:                                   ; preds = %1765
  %1770 = getelementptr inbounds double, double* %1766, i64 -1
  br label %1775

; <label>:1771:                                   ; preds = %1765
  %1772 = getelementptr inbounds double, double* %1766, i64 1
  %1773 = getelementptr inbounds double, double* %1766, i64 -1
  store double %1767, double* %1773, align 8, !tbaa !8
  %1774 = icmp eq double* %1772, %1505
  br i1 %1774, label %1775, label %1765

; <label>:1775:                                   ; preds = %1771, %1769
  %1776 = phi double* [ %1770, %1769 ], [ %1507, %1771 ]
  store double %1764, double* %1776, align 8, !tbaa !8
  br label %1777

; <label>:1777:                                   ; preds = %1775, %1762
  %1778 = phi double* [ %1617, %1775 ], [ %1507, %1762 ]
  br i1 %1618, label %1801, label %1779

; <label>:1779:                                   ; preds = %1777
  br label %1780

; <label>:1780:                                   ; preds = %5225, %1779
  %1781 = phi double* [ %1778, %1779 ], [ %1798, %5225 ]
  %1782 = getelementptr inbounds double, double* %1781, i64 -1
  %1783 = load double, double* %1782, align 8, !tbaa !8
  %1784 = icmp eq double* %1781, %1505
  br i1 %1784, label %1796, label %1785

; <label>:1785:                                   ; preds = %1780
  br label %1786

; <label>:1786:                                   ; preds = %1785, %1792
  %1787 = phi double* [ %1793, %1792 ], [ %1781, %1785 ]
  %1788 = load double, double* %1787, align 8, !tbaa !8
  %1789 = fcmp olt double %1783, %1788
  br i1 %1789, label %1792, label %1790

; <label>:1790:                                   ; preds = %1786
  %1791 = getelementptr inbounds double, double* %1787, i64 -1
  br label %1796

; <label>:1792:                                   ; preds = %1786
  %1793 = getelementptr inbounds double, double* %1787, i64 1
  %1794 = getelementptr inbounds double, double* %1787, i64 -1
  store double %1788, double* %1794, align 8, !tbaa !8
  %1795 = icmp eq double* %1793, %1505
  br i1 %1795, label %1796, label %1786

; <label>:1796:                                   ; preds = %1792, %1790, %1780
  %1797 = phi double* [ %1507, %1780 ], [ %1791, %1790 ], [ %1507, %1792 ]
  store double %1783, double* %1797, align 8, !tbaa !8
  %1798 = getelementptr inbounds double, double* %1781, i64 -2
  %1799 = load double, double* %1798, align 8, !tbaa !8
  %1800 = icmp eq double* %1782, %1505
  br i1 %1800, label %5225, label %5214

; <label>:1801:                                   ; preds = %5225, %1777
  br label %1804

; <label>:1802:                                   ; preds = %1804
  %1803 = icmp eq double* %1807, %1501
  br i1 %1803, label %1816, label %1804

; <label>:1804:                                   ; preds = %1801, %1802
  %1805 = phi double* [ %1807, %1802 ], [ %1507, %1801 ]
  %1806 = phi double* [ %1809, %1802 ], [ %1505, %1801 ]
  %1807 = getelementptr inbounds double, double* %1805, i64 -1
  %1808 = load double, double* %1807, align 8, !tbaa !8
  %1809 = getelementptr inbounds double, double* %1806, i64 -1
  %1810 = load double, double* %1809, align 8, !tbaa !8
  %1811 = fcmp olt double %1808, %1810
  br i1 %1811, label %1812, label %1802

; <label>:1812:                                   ; preds = %1804
  %1813 = load i32, i32* @current_test, align 4, !tbaa !6
  %1814 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %1813)
  %1815 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %1816

; <label>:1816:                                   ; preds = %1802, %1812, %1761
  %1817 = phi i32 [ %1621, %1761 ], [ %1815, %1812 ], [ %1621, %1802 ]
  %1818 = add nuw nsw i32 %1622, 1
  %1819 = icmp slt i32 %1818, %1817
  br i1 %1819, label %1620, label %1820

; <label>:1820:                                   ; preds = %1816, %1574
  %1821 = phi i32 [ %1575, %1574 ], [ %1817, %1816 ]
  %1822 = icmp sgt i32 %1821, 0
  br i1 %1822, label %1823, label %2764

; <label>:1823:                                   ; preds = %1820
  %1824 = icmp eq double* %1164, %1159
  %1825 = getelementptr inbounds double, double* %147, i64 -1
  %1826 = icmp eq double* %1825, %145
  br i1 %1824, label %1827, label %1896

; <label>:1827:                                   ; preds = %1823
  %1828 = getelementptr double, double* %147, i64 -2
  %1829 = ptrtoint double* %1828 to i64
  %1830 = sub i64 %1829, %146
  %1831 = and i64 %1830, 8
  %1832 = icmp eq i64 %1831, 0
  %1833 = getelementptr inbounds double, double* %147, i64 -2
  %1834 = icmp ult i64 %1830, 8
  br label %1835

; <label>:1835:                                   ; preds = %1827, %1892
  %1836 = phi i32 [ %1893, %1892 ], [ %1821, %1827 ]
  %1837 = phi i32 [ %1894, %1892 ], [ 0, %1827 ]
  br i1 %1826, label %1892, label %1838

; <label>:1838:                                   ; preds = %1835
  br i1 %1832, label %1839, label %1853

; <label>:1839:                                   ; preds = %1838
  %1840 = load double, double* %1833, align 8, !tbaa !8
  br label %1841

; <label>:1841:                                   ; preds = %1847, %1839
  %1842 = phi double* [ %1848, %1847 ], [ %1825, %1839 ]
  %1843 = load double, double* %1842, align 8, !tbaa !8
  %1844 = fcmp olt double %1840, %1843
  br i1 %1844, label %1847, label %1845

; <label>:1845:                                   ; preds = %1841
  %1846 = getelementptr inbounds double, double* %1842, i64 -1
  br label %1851

; <label>:1847:                                   ; preds = %1841
  %1848 = getelementptr inbounds double, double* %1842, i64 1
  %1849 = getelementptr inbounds double, double* %1842, i64 -1
  store double %1843, double* %1849, align 8, !tbaa !8
  %1850 = icmp eq double* %1848, %147
  br i1 %1850, label %1851, label %1841

; <label>:1851:                                   ; preds = %1847, %1845
  %1852 = phi double* [ %1846, %1845 ], [ %1825, %1847 ]
  store double %1840, double* %1852, align 8, !tbaa !8
  br label %1853

; <label>:1853:                                   ; preds = %1851, %1838
  %1854 = phi double* [ %1833, %1851 ], [ %1825, %1838 ]
  br i1 %1834, label %1877, label %1855

; <label>:1855:                                   ; preds = %1853
  br label %1856

; <label>:1856:                                   ; preds = %5183, %1855
  %1857 = phi double* [ %1854, %1855 ], [ %1874, %5183 ]
  %1858 = getelementptr inbounds double, double* %1857, i64 -1
  %1859 = load double, double* %1858, align 8, !tbaa !8
  %1860 = icmp eq double* %1857, %147
  br i1 %1860, label %1872, label %1861

; <label>:1861:                                   ; preds = %1856
  br label %1862

; <label>:1862:                                   ; preds = %1861, %1868
  %1863 = phi double* [ %1869, %1868 ], [ %1857, %1861 ]
  %1864 = load double, double* %1863, align 8, !tbaa !8
  %1865 = fcmp olt double %1859, %1864
  br i1 %1865, label %1868, label %1866

; <label>:1866:                                   ; preds = %1862
  %1867 = getelementptr inbounds double, double* %1863, i64 -1
  br label %1872

; <label>:1868:                                   ; preds = %1862
  %1869 = getelementptr inbounds double, double* %1863, i64 1
  %1870 = getelementptr inbounds double, double* %1863, i64 -1
  store double %1864, double* %1870, align 8, !tbaa !8
  %1871 = icmp eq double* %1869, %147
  br i1 %1871, label %1872, label %1862

; <label>:1872:                                   ; preds = %1868, %1866, %1856
  %1873 = phi double* [ %1825, %1856 ], [ %1867, %1866 ], [ %1825, %1868 ]
  store double %1859, double* %1873, align 8, !tbaa !8
  %1874 = getelementptr inbounds double, double* %1857, i64 -2
  %1875 = load double, double* %1874, align 8, !tbaa !8
  %1876 = icmp eq double* %1858, %147
  br i1 %1876, label %5183, label %5172

; <label>:1877:                                   ; preds = %5183, %1853
  br label %1878

; <label>:1878:                                   ; preds = %1877, %1886
  %1879 = phi double* [ %1881, %1886 ], [ %1825, %1877 ]
  %1880 = phi double* [ %1883, %1886 ], [ %147, %1877 ]
  %1881 = getelementptr inbounds double, double* %1879, i64 -1
  %1882 = load double, double* %1881, align 8, !tbaa !8
  %1883 = getelementptr inbounds double, double* %1880, i64 -1
  %1884 = load double, double* %1883, align 8, !tbaa !8
  %1885 = fcmp olt double %1882, %1884
  br i1 %1885, label %1888, label %1886

; <label>:1886:                                   ; preds = %1878
  %1887 = icmp eq double* %1881, %145
  br i1 %1887, label %1892, label %1878

; <label>:1888:                                   ; preds = %1878
  %1889 = load i32, i32* @current_test, align 4, !tbaa !6
  %1890 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %1889)
  %1891 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %1892

; <label>:1892:                                   ; preds = %1886, %1888, %1835
  %1893 = phi i32 [ %1836, %1835 ], [ %1891, %1888 ], [ %1836, %1886 ]
  %1894 = add nuw nsw i32 %1837, 1
  %1895 = icmp slt i32 %1894, %1893
  br i1 %1895, label %1835, label %2138

; <label>:1896:                                   ; preds = %1823
  %1897 = getelementptr double, double* %1164, i64 -1
  %1898 = ptrtoint double* %1897 to i64
  %1899 = sub i64 %1898, %1163
  %1900 = lshr i64 %1899, 3
  %1901 = add nuw nsw i64 %1900, 1
  %1902 = getelementptr double, double* %1164, i64 -1
  %1903 = ptrtoint double* %1902 to i64
  %1904 = sub i64 %1903, %1163
  %1905 = lshr i64 %1904, 3
  %1906 = xor i64 %1905, -1
  %1907 = getelementptr double, double* %147, i64 %1906
  %1908 = getelementptr double, double* %1164, i64 %1906
  %1909 = and i64 %1901, 3
  %1910 = add nsw i64 %1909, -1
  %1911 = sub nsw i64 %1910, %1900
  %1912 = and i64 %1901, 3
  %1913 = add nsw i64 %1912, -1
  %1914 = sub nsw i64 %1913, %1900
  %1915 = and i64 %1901, 4611686018427387900
  %1916 = add nsw i64 %1915, -4
  %1917 = lshr exact i64 %1916, 2
  %1918 = add nuw nsw i64 %1917, 1
  %1919 = getelementptr double, double* %147, i64 -2
  %1920 = ptrtoint double* %1919 to i64
  %1921 = sub i64 %1920, %146
  %1922 = icmp ult i64 %1901, 4
  %1923 = icmp ult double* %1907, %1164
  %1924 = icmp ult double* %1908, %147
  %1925 = and i1 %1923, %1924
  %1926 = and i64 %1921, 8
  %1927 = icmp eq i64 %1926, 0
  %1928 = and i64 %1901, 4611686018427387900
  %1929 = getelementptr double, double* %147, i64 %1911
  %1930 = getelementptr double, double* %1164, i64 %1914
  %1931 = and i64 %1918, 1
  %1932 = icmp eq i64 %1916, 0
  %1933 = sub nsw i64 %1918, %1931
  %1934 = icmp eq i64 %1931, 0
  %1935 = getelementptr inbounds double, double* %147, i64 -2
  %1936 = icmp ult i64 %1921, 8
  %1937 = icmp eq i64 %1901, %1928
  br label %1938

; <label>:1938:                                   ; preds = %2134, %1896
  %1939 = phi i32 [ %1821, %1896 ], [ %2135, %2134 ]
  %1940 = phi i32 [ 0, %1896 ], [ %2136, %2134 ]
  %1941 = or i1 %1922, %1925
  br i1 %1941, label %2008, label %1942

; <label>:1942:                                   ; preds = %1938
  br i1 %1932, label %1986, label %1943

; <label>:1943:                                   ; preds = %1942
  br label %1944

; <label>:1944:                                   ; preds = %1944, %1943
  %1945 = phi i64 [ 0, %1943 ], [ %1983, %1944 ]
  %1946 = phi i64 [ %1933, %1943 ], [ %1984, %1944 ]
  %1947 = sub i64 0, %1945
  %1948 = getelementptr double, double* %147, i64 %1947
  %1949 = sub i64 0, %1945
  %1950 = getelementptr double, double* %1164, i64 %1949
  %1951 = getelementptr inbounds double, double* %1950, i64 -1
  %1952 = getelementptr double, double* %1951, i64 -1
  %1953 = bitcast double* %1952 to <2 x i64>*
  %1954 = load <2 x i64>, <2 x i64>* %1953, align 8, !tbaa !8, !alias.scope !72
  %1955 = getelementptr double, double* %1951, i64 -2
  %1956 = getelementptr double, double* %1955, i64 -1
  %1957 = bitcast double* %1956 to <2 x i64>*
  %1958 = load <2 x i64>, <2 x i64>* %1957, align 8, !tbaa !8, !alias.scope !72
  %1959 = getelementptr inbounds double, double* %1948, i64 -1
  %1960 = getelementptr double, double* %1959, i64 -1
  %1961 = bitcast double* %1960 to <2 x i64>*
  store <2 x i64> %1954, <2 x i64>* %1961, align 8, !tbaa !8, !alias.scope !75, !noalias !72
  %1962 = getelementptr double, double* %1959, i64 -2
  %1963 = getelementptr double, double* %1962, i64 -1
  %1964 = bitcast double* %1963 to <2 x i64>*
  store <2 x i64> %1958, <2 x i64>* %1964, align 8, !tbaa !8, !alias.scope !75, !noalias !72
  %1965 = sub i64 -4, %1945
  %1966 = getelementptr double, double* %147, i64 %1965
  %1967 = sub i64 -4, %1945
  %1968 = getelementptr double, double* %1164, i64 %1967
  %1969 = getelementptr inbounds double, double* %1968, i64 -1
  %1970 = getelementptr double, double* %1969, i64 -1
  %1971 = bitcast double* %1970 to <2 x i64>*
  %1972 = load <2 x i64>, <2 x i64>* %1971, align 8, !tbaa !8, !alias.scope !72
  %1973 = getelementptr double, double* %1969, i64 -2
  %1974 = getelementptr double, double* %1973, i64 -1
  %1975 = bitcast double* %1974 to <2 x i64>*
  %1976 = load <2 x i64>, <2 x i64>* %1975, align 8, !tbaa !8, !alias.scope !72
  %1977 = getelementptr inbounds double, double* %1966, i64 -1
  %1978 = getelementptr double, double* %1977, i64 -1
  %1979 = bitcast double* %1978 to <2 x i64>*
  store <2 x i64> %1972, <2 x i64>* %1979, align 8, !tbaa !8, !alias.scope !75, !noalias !72
  %1980 = getelementptr double, double* %1977, i64 -2
  %1981 = getelementptr double, double* %1980, i64 -1
  %1982 = bitcast double* %1981 to <2 x i64>*
  store <2 x i64> %1976, <2 x i64>* %1982, align 8, !tbaa !8, !alias.scope !75, !noalias !72
  %1983 = add i64 %1945, 8
  %1984 = add i64 %1946, -2
  %1985 = icmp eq i64 %1984, 0
  br i1 %1985, label %1986, label %1944, !llvm.loop !77

; <label>:1986:                                   ; preds = %1944, %1942
  %1987 = phi i64 [ 0, %1942 ], [ %1983, %1944 ]
  br i1 %1934, label %2007, label %1988

; <label>:1988:                                   ; preds = %1986
  %1989 = sub i64 0, %1987
  %1990 = getelementptr double, double* %147, i64 %1989
  %1991 = sub i64 0, %1987
  %1992 = getelementptr double, double* %1164, i64 %1991
  %1993 = getelementptr inbounds double, double* %1992, i64 -1
  %1994 = getelementptr double, double* %1993, i64 -1
  %1995 = bitcast double* %1994 to <2 x i64>*
  %1996 = load <2 x i64>, <2 x i64>* %1995, align 8, !tbaa !8, !alias.scope !72
  %1997 = getelementptr double, double* %1993, i64 -2
  %1998 = getelementptr double, double* %1997, i64 -1
  %1999 = bitcast double* %1998 to <2 x i64>*
  %2000 = load <2 x i64>, <2 x i64>* %1999, align 8, !tbaa !8, !alias.scope !72
  %2001 = getelementptr inbounds double, double* %1990, i64 -1
  %2002 = getelementptr double, double* %2001, i64 -1
  %2003 = bitcast double* %2002 to <2 x i64>*
  store <2 x i64> %1996, <2 x i64>* %2003, align 8, !tbaa !8, !alias.scope !75, !noalias !72
  %2004 = getelementptr double, double* %2001, i64 -2
  %2005 = getelementptr double, double* %2004, i64 -1
  %2006 = bitcast double* %2005 to <2 x i64>*
  store <2 x i64> %2000, <2 x i64>* %2006, align 8, !tbaa !8, !alias.scope !75, !noalias !72
  br label %2007

; <label>:2007:                                   ; preds = %1986, %1988
  br i1 %1937, label %2079, label %2008

; <label>:2008:                                   ; preds = %1938, %2007
  %2009 = phi double* [ %147, %1938 ], [ %1929, %2007 ]
  %2010 = phi double* [ %1164, %1938 ], [ %1930, %2007 ]
  %2011 = getelementptr double, double* %2010, i64 -1
  %2012 = ptrtoint double* %2011 to i64
  %2013 = sub i64 %2012, %1163
  %2014 = lshr i64 %2013, 3
  %2015 = add nuw nsw i64 %2014, 1
  %2016 = and i64 %2015, 7
  %2017 = icmp eq i64 %2016, 0
  br i1 %2017, label %2030, label %2018

; <label>:2018:                                   ; preds = %2008
  br label %2019

; <label>:2019:                                   ; preds = %2019, %2018
  %2020 = phi double* [ %2026, %2019 ], [ %2009, %2018 ]
  %2021 = phi double* [ %2023, %2019 ], [ %2010, %2018 ]
  %2022 = phi i64 [ %2028, %2019 ], [ %2016, %2018 ]
  %2023 = getelementptr inbounds double, double* %2021, i64 -1
  %2024 = bitcast double* %2023 to i64*
  %2025 = load i64, i64* %2024, align 8, !tbaa !8
  %2026 = getelementptr inbounds double, double* %2020, i64 -1
  %2027 = bitcast double* %2026 to i64*
  store i64 %2025, i64* %2027, align 8, !tbaa !8
  %2028 = add i64 %2022, -1
  %2029 = icmp eq i64 %2028, 0
  br i1 %2029, label %2030, label %2019, !llvm.loop !78

; <label>:2030:                                   ; preds = %2019, %2008
  %2031 = phi double* [ %2009, %2008 ], [ %2026, %2019 ]
  %2032 = phi double* [ %2010, %2008 ], [ %2023, %2019 ]
  %2033 = icmp ult i64 %2013, 56
  br i1 %2033, label %2079, label %2034

; <label>:2034:                                   ; preds = %2030
  br label %2035

; <label>:2035:                                   ; preds = %2035, %2034
  %2036 = phi double* [ %2031, %2034 ], [ %2076, %2035 ]
  %2037 = phi double* [ %2032, %2034 ], [ %2073, %2035 ]
  %2038 = getelementptr inbounds double, double* %2037, i64 -1
  %2039 = bitcast double* %2038 to i64*
  %2040 = load i64, i64* %2039, align 8, !tbaa !8
  %2041 = getelementptr inbounds double, double* %2036, i64 -1
  %2042 = bitcast double* %2041 to i64*
  store i64 %2040, i64* %2042, align 8, !tbaa !8
  %2043 = getelementptr inbounds double, double* %2037, i64 -2
  %2044 = bitcast double* %2043 to i64*
  %2045 = load i64, i64* %2044, align 8, !tbaa !8
  %2046 = getelementptr inbounds double, double* %2036, i64 -2
  %2047 = bitcast double* %2046 to i64*
  store i64 %2045, i64* %2047, align 8, !tbaa !8
  %2048 = getelementptr inbounds double, double* %2037, i64 -3
  %2049 = bitcast double* %2048 to i64*
  %2050 = load i64, i64* %2049, align 8, !tbaa !8
  %2051 = getelementptr inbounds double, double* %2036, i64 -3
  %2052 = bitcast double* %2051 to i64*
  store i64 %2050, i64* %2052, align 8, !tbaa !8
  %2053 = getelementptr inbounds double, double* %2037, i64 -4
  %2054 = bitcast double* %2053 to i64*
  %2055 = load i64, i64* %2054, align 8, !tbaa !8
  %2056 = getelementptr inbounds double, double* %2036, i64 -4
  %2057 = bitcast double* %2056 to i64*
  store i64 %2055, i64* %2057, align 8, !tbaa !8
  %2058 = getelementptr inbounds double, double* %2037, i64 -5
  %2059 = bitcast double* %2058 to i64*
  %2060 = load i64, i64* %2059, align 8, !tbaa !8
  %2061 = getelementptr inbounds double, double* %2036, i64 -5
  %2062 = bitcast double* %2061 to i64*
  store i64 %2060, i64* %2062, align 8, !tbaa !8
  %2063 = getelementptr inbounds double, double* %2037, i64 -6
  %2064 = bitcast double* %2063 to i64*
  %2065 = load i64, i64* %2064, align 8, !tbaa !8
  %2066 = getelementptr inbounds double, double* %2036, i64 -6
  %2067 = bitcast double* %2066 to i64*
  store i64 %2065, i64* %2067, align 8, !tbaa !8
  %2068 = getelementptr inbounds double, double* %2037, i64 -7
  %2069 = bitcast double* %2068 to i64*
  %2070 = load i64, i64* %2069, align 8, !tbaa !8
  %2071 = getelementptr inbounds double, double* %2036, i64 -7
  %2072 = bitcast double* %2071 to i64*
  store i64 %2070, i64* %2072, align 8, !tbaa !8
  %2073 = getelementptr inbounds double, double* %2037, i64 -8
  %2074 = bitcast double* %2073 to i64*
  %2075 = load i64, i64* %2074, align 8, !tbaa !8
  %2076 = getelementptr inbounds double, double* %2036, i64 -8
  %2077 = bitcast double* %2076 to i64*
  store i64 %2075, i64* %2077, align 8, !tbaa !8
  %2078 = icmp eq double* %2073, %1159
  br i1 %2078, label %2079, label %2035, !llvm.loop !79

; <label>:2079:                                   ; preds = %2030, %2035, %2007
  br i1 %1826, label %2134, label %2080

; <label>:2080:                                   ; preds = %2079
  br i1 %1927, label %2081, label %2095

; <label>:2081:                                   ; preds = %2080
  %2082 = load double, double* %1935, align 8, !tbaa !8
  br label %2083

; <label>:2083:                                   ; preds = %2089, %2081
  %2084 = phi double* [ %2090, %2089 ], [ %1825, %2081 ]
  %2085 = load double, double* %2084, align 8, !tbaa !8
  %2086 = fcmp olt double %2082, %2085
  br i1 %2086, label %2089, label %2087

; <label>:2087:                                   ; preds = %2083
  %2088 = getelementptr inbounds double, double* %2084, i64 -1
  br label %2093

; <label>:2089:                                   ; preds = %2083
  %2090 = getelementptr inbounds double, double* %2084, i64 1
  %2091 = getelementptr inbounds double, double* %2084, i64 -1
  store double %2085, double* %2091, align 8, !tbaa !8
  %2092 = icmp eq double* %2090, %147
  br i1 %2092, label %2093, label %2083

; <label>:2093:                                   ; preds = %2089, %2087
  %2094 = phi double* [ %2088, %2087 ], [ %1825, %2089 ]
  store double %2082, double* %2094, align 8, !tbaa !8
  br label %2095

; <label>:2095:                                   ; preds = %2093, %2080
  %2096 = phi double* [ %1935, %2093 ], [ %1825, %2080 ]
  br i1 %1936, label %2119, label %2097

; <label>:2097:                                   ; preds = %2095
  br label %2098

; <label>:2098:                                   ; preds = %5197, %2097
  %2099 = phi double* [ %2096, %2097 ], [ %2116, %5197 ]
  %2100 = getelementptr inbounds double, double* %2099, i64 -1
  %2101 = load double, double* %2100, align 8, !tbaa !8
  %2102 = icmp eq double* %2099, %147
  br i1 %2102, label %2114, label %2103

; <label>:2103:                                   ; preds = %2098
  br label %2104

; <label>:2104:                                   ; preds = %2103, %2110
  %2105 = phi double* [ %2111, %2110 ], [ %2099, %2103 ]
  %2106 = load double, double* %2105, align 8, !tbaa !8
  %2107 = fcmp olt double %2101, %2106
  br i1 %2107, label %2110, label %2108

; <label>:2108:                                   ; preds = %2104
  %2109 = getelementptr inbounds double, double* %2105, i64 -1
  br label %2114

; <label>:2110:                                   ; preds = %2104
  %2111 = getelementptr inbounds double, double* %2105, i64 1
  %2112 = getelementptr inbounds double, double* %2105, i64 -1
  store double %2106, double* %2112, align 8, !tbaa !8
  %2113 = icmp eq double* %2111, %147
  br i1 %2113, label %2114, label %2104

; <label>:2114:                                   ; preds = %2110, %2108, %2098
  %2115 = phi double* [ %1825, %2098 ], [ %2109, %2108 ], [ %1825, %2110 ]
  store double %2101, double* %2115, align 8, !tbaa !8
  %2116 = getelementptr inbounds double, double* %2099, i64 -2
  %2117 = load double, double* %2116, align 8, !tbaa !8
  %2118 = icmp eq double* %2100, %147
  br i1 %2118, label %5197, label %5186

; <label>:2119:                                   ; preds = %5197, %2095
  br label %2122

; <label>:2120:                                   ; preds = %2122
  %2121 = icmp eq double* %2125, %145
  br i1 %2121, label %2134, label %2122

; <label>:2122:                                   ; preds = %2119, %2120
  %2123 = phi double* [ %2125, %2120 ], [ %1825, %2119 ]
  %2124 = phi double* [ %2127, %2120 ], [ %147, %2119 ]
  %2125 = getelementptr inbounds double, double* %2123, i64 -1
  %2126 = load double, double* %2125, align 8, !tbaa !8
  %2127 = getelementptr inbounds double, double* %2124, i64 -1
  %2128 = load double, double* %2127, align 8, !tbaa !8
  %2129 = fcmp olt double %2126, %2128
  br i1 %2129, label %2130, label %2120

; <label>:2130:                                   ; preds = %2122
  %2131 = load i32, i32* @current_test, align 4, !tbaa !6
  %2132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %2131)
  %2133 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %2134

; <label>:2134:                                   ; preds = %2120, %2130, %2079
  %2135 = phi i32 [ %1939, %2079 ], [ %2133, %2130 ], [ %1939, %2120 ]
  %2136 = add nuw nsw i32 %1940, 1
  %2137 = icmp slt i32 %2136, %2135
  br i1 %2137, label %1938, label %2138

; <label>:2138:                                   ; preds = %2134, %1892
  %2139 = phi i32 [ %1893, %1892 ], [ %2135, %2134 ]
  %2140 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* @rrdMpb, i64 0, i32 1, i32 0), align 8, !tbaa !21
  %2141 = ptrtoint double* %2140 to i64
  %2142 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* @rrdMpe, i64 0, i32 1, i32 0), align 8, !tbaa !21
  %2143 = load i64, i64* bitcast (%"class.std::reverse_iterator"* getelementptr inbounds (%"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* @rrdpb, i64 0, i32 1) to i64*), align 8, !tbaa !21
  %2144 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* @rrdpe, i64 0, i32 1, i32 0), align 8, !tbaa !21
  %2145 = icmp sgt i32 %2139, 0
  br i1 %2145, label %2146, label %2764

; <label>:2146:                                   ; preds = %2138
  %2147 = icmp eq double* %2140, %2142
  %2148 = inttoptr i64 %2143 to double*
  %2149 = getelementptr inbounds double, double* %2148, i64 1
  %2150 = icmp eq double* %2149, %2144
  br i1 %2147, label %2169, label %2151

; <label>:2151:                                   ; preds = %2146
  %2152 = getelementptr double, double* %2142, i64 -1
  %2153 = ptrtoint double* %2152 to i64
  %2154 = sub i64 %2153, %2141
  %2155 = lshr i64 %2154, 3
  %2156 = add nuw nsw i64 %2155, 1
  %2157 = getelementptr double, double* %2144, i64 -2
  %2158 = bitcast double* %2157 to i8*
  %2159 = sub i64 0, %2143
  %2160 = getelementptr i8, i8* %2158, i64 %2159
  %2161 = ptrtoint i8* %2160 to i64
  %2162 = and i64 %2156, 7
  %2163 = icmp eq i64 %2162, 0
  %2164 = icmp ult i64 %2154, 56
  %2165 = and i64 %2161, 8
  %2166 = icmp eq i64 %2165, 0
  %2167 = icmp ult i8* %2160, inttoptr (i64 8 to i8*)
  %2168 = getelementptr inbounds double, double* %2148, i64 2
  br label %2233

; <label>:2169:                                   ; preds = %2146
  %2170 = getelementptr double, double* %2144, i64 -2
  %2171 = bitcast double* %2170 to i8*
  %2172 = sub i64 0, %2143
  %2173 = getelementptr i8, i8* %2171, i64 %2172
  %2174 = ptrtoint i8* %2173 to i64
  %2175 = and i64 %2174, 8
  %2176 = icmp eq i64 %2175, 0
  %2177 = icmp ult i8* %2173, inttoptr (i64 8 to i8*)
  %2178 = getelementptr inbounds double, double* %2148, i64 2
  br label %2179

; <label>:2179:                                   ; preds = %2169, %2229
  %2180 = phi i32 [ %2230, %2229 ], [ %2139, %2169 ]
  %2181 = phi i32 [ %2231, %2229 ], [ 0, %2169 ]
  br i1 %2150, label %2229, label %2182

; <label>:2182:                                   ; preds = %2179
  br i1 %2176, label %2183, label %2194

; <label>:2183:                                   ; preds = %2182
  %2184 = load double, double* %2149, align 8, !tbaa !8
  br label %2185

; <label>:2185:                                   ; preds = %2190, %2183
  %2186 = phi double* [ %2187, %2190 ], [ %2149, %2183 ]
  %2187 = getelementptr inbounds double, double* %2186, i64 -1
  %2188 = load double, double* %2187, align 8, !tbaa !8
  %2189 = fcmp olt double %2184, %2188
  br i1 %2189, label %2190, label %2192

; <label>:2190:                                   ; preds = %2185
  store double %2188, double* %2186, align 8, !tbaa !8
  %2191 = icmp eq double* %2187, %2148
  br i1 %2191, label %2192, label %2185

; <label>:2192:                                   ; preds = %2185, %2190
  %2193 = phi double* [ %2148, %2190 ], [ %2186, %2185 ]
  store double %2184, double* %2193, align 8, !tbaa !8
  br label %2194

; <label>:2194:                                   ; preds = %2192, %2182
  %2195 = phi double* [ %2178, %2192 ], [ %2149, %2182 ]
  br i1 %2177, label %2214, label %2196

; <label>:2196:                                   ; preds = %2194
  br label %2197

; <label>:2197:                                   ; preds = %5156, %2196
  %2198 = phi double* [ %2195, %2196 ], [ %5158, %5156 ]
  %2199 = load double, double* %2198, align 8, !tbaa !8
  %2200 = icmp eq double* %2198, %2148
  br i1 %2200, label %2209, label %2201

; <label>:2201:                                   ; preds = %2197
  br label %2202

; <label>:2202:                                   ; preds = %2201, %2207
  %2203 = phi double* [ %2204, %2207 ], [ %2198, %2201 ]
  %2204 = getelementptr inbounds double, double* %2203, i64 -1
  %2205 = load double, double* %2204, align 8, !tbaa !8
  %2206 = fcmp olt double %2199, %2205
  br i1 %2206, label %2207, label %2209

; <label>:2207:                                   ; preds = %2202
  store double %2205, double* %2203, align 8, !tbaa !8
  %2208 = icmp eq double* %2204, %2148
  br i1 %2208, label %2209, label %2202

; <label>:2209:                                   ; preds = %2202, %2207, %2197
  %2210 = phi double* [ %2148, %2197 ], [ %2148, %2207 ], [ %2203, %2202 ]
  store double %2199, double* %2210, align 8, !tbaa !8
  %2211 = getelementptr inbounds double, double* %2198, i64 1
  %2212 = load double, double* %2211, align 8, !tbaa !8
  %2213 = icmp eq double* %2211, %2148
  br i1 %2213, label %5156, label %5148

; <label>:2214:                                   ; preds = %5156, %2194
  br label %2215

; <label>:2215:                                   ; preds = %2214, %2222
  %2216 = phi double* [ %2218, %2222 ], [ %2149, %2214 ]
  %2217 = phi double* [ %2223, %2222 ], [ %2148, %2214 ]
  %2218 = getelementptr inbounds double, double* %2216, i64 1
  %2219 = load double, double* %2216, align 8, !tbaa !8
  %2220 = load double, double* %2217, align 8, !tbaa !8
  %2221 = fcmp olt double %2219, %2220
  br i1 %2221, label %2225, label %2222

; <label>:2222:                                   ; preds = %2215
  %2223 = getelementptr inbounds double, double* %2217, i64 1
  %2224 = icmp eq double* %2218, %2144
  br i1 %2224, label %2229, label %2215

; <label>:2225:                                   ; preds = %2215
  %2226 = load i32, i32* @current_test, align 4, !tbaa !6
  %2227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %2226)
  %2228 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %2229

; <label>:2229:                                   ; preds = %2222, %2225, %2179
  %2230 = phi i32 [ %2180, %2179 ], [ %2228, %2225 ], [ %2180, %2222 ]
  %2231 = add nuw nsw i32 %2181, 1
  %2232 = icmp slt i32 %2231, %2230
  br i1 %2232, label %2179, label %2354

; <label>:2233:                                   ; preds = %2151, %2350
  %2234 = phi i32 [ %2351, %2350 ], [ %2139, %2151 ]
  %2235 = phi i32 [ %2352, %2350 ], [ 0, %2151 ]
  br i1 %2163, label %2252, label %2236

; <label>:2236:                                   ; preds = %2233
  br label %2237

; <label>:2237:                                   ; preds = %2237, %2236
  %2238 = phi i64 [ %2143, %2236 ], [ %2246, %2237 ]
  %2239 = phi double* [ %2140, %2236 ], [ %2241, %2237 ]
  %2240 = phi i64 [ %2162, %2236 ], [ %2248, %2237 ]
  %2241 = getelementptr inbounds double, double* %2239, i64 1
  %2242 = bitcast double* %2239 to i64*
  %2243 = load i64, i64* %2242, align 8, !tbaa !8
  %2244 = inttoptr i64 %2238 to double*
  %2245 = getelementptr inbounds double, double* %2244, i64 1
  %2246 = ptrtoint double* %2245 to i64
  %2247 = inttoptr i64 %2238 to i64*
  store i64 %2243, i64* %2247, align 8, !tbaa !8
  %2248 = add i64 %2240, -1
  %2249 = icmp eq i64 %2248, 0
  br i1 %2249, label %2250, label %2237, !llvm.loop !80

; <label>:2250:                                   ; preds = %2237
  %2251 = ptrtoint double* %2245 to i64
  br label %2252

; <label>:2252:                                   ; preds = %2233, %2250
  %2253 = phi i64 [ %2143, %2233 ], [ %2251, %2250 ]
  %2254 = phi double* [ %2140, %2233 ], [ %2241, %2250 ]
  br i1 %2164, label %2302, label %2255

; <label>:2255:                                   ; preds = %2252
  br label %2256

; <label>:2256:                                   ; preds = %2256, %2255
  %2257 = phi i64 [ %2253, %2255 ], [ %2299, %2256 ]
  %2258 = phi double* [ %2254, %2255 ], [ %2295, %2256 ]
  %2259 = getelementptr inbounds double, double* %2258, i64 1
  %2260 = bitcast double* %2258 to i64*
  %2261 = load i64, i64* %2260, align 8, !tbaa !8
  %2262 = inttoptr i64 %2257 to double*
  %2263 = getelementptr inbounds double, double* %2262, i64 1
  %2264 = inttoptr i64 %2257 to i64*
  store i64 %2261, i64* %2264, align 8, !tbaa !8
  %2265 = getelementptr inbounds double, double* %2258, i64 2
  %2266 = bitcast double* %2259 to i64*
  %2267 = load i64, i64* %2266, align 8, !tbaa !8
  %2268 = getelementptr inbounds double, double* %2262, i64 2
  %2269 = bitcast double* %2263 to i64*
  store i64 %2267, i64* %2269, align 8, !tbaa !8
  %2270 = getelementptr inbounds double, double* %2258, i64 3
  %2271 = bitcast double* %2265 to i64*
  %2272 = load i64, i64* %2271, align 8, !tbaa !8
  %2273 = getelementptr inbounds double, double* %2262, i64 3
  %2274 = bitcast double* %2268 to i64*
  store i64 %2272, i64* %2274, align 8, !tbaa !8
  %2275 = getelementptr inbounds double, double* %2258, i64 4
  %2276 = bitcast double* %2270 to i64*
  %2277 = load i64, i64* %2276, align 8, !tbaa !8
  %2278 = getelementptr inbounds double, double* %2262, i64 4
  %2279 = bitcast double* %2273 to i64*
  store i64 %2277, i64* %2279, align 8, !tbaa !8
  %2280 = getelementptr inbounds double, double* %2258, i64 5
  %2281 = bitcast double* %2275 to i64*
  %2282 = load i64, i64* %2281, align 8, !tbaa !8
  %2283 = getelementptr inbounds double, double* %2262, i64 5
  %2284 = bitcast double* %2278 to i64*
  store i64 %2282, i64* %2284, align 8, !tbaa !8
  %2285 = getelementptr inbounds double, double* %2258, i64 6
  %2286 = bitcast double* %2280 to i64*
  %2287 = load i64, i64* %2286, align 8, !tbaa !8
  %2288 = getelementptr inbounds double, double* %2262, i64 6
  %2289 = bitcast double* %2283 to i64*
  store i64 %2287, i64* %2289, align 8, !tbaa !8
  %2290 = getelementptr inbounds double, double* %2258, i64 7
  %2291 = bitcast double* %2285 to i64*
  %2292 = load i64, i64* %2291, align 8, !tbaa !8
  %2293 = getelementptr inbounds double, double* %2262, i64 7
  %2294 = bitcast double* %2288 to i64*
  store i64 %2292, i64* %2294, align 8, !tbaa !8
  %2295 = getelementptr inbounds double, double* %2258, i64 8
  %2296 = bitcast double* %2290 to i64*
  %2297 = load i64, i64* %2296, align 8, !tbaa !8
  %2298 = getelementptr inbounds double, double* %2262, i64 8
  %2299 = ptrtoint double* %2298 to i64
  %2300 = bitcast double* %2293 to i64*
  store i64 %2297, i64* %2300, align 8, !tbaa !8
  %2301 = icmp eq double* %2295, %2142
  br i1 %2301, label %2302, label %2256

; <label>:2302:                                   ; preds = %2256, %2252
  br i1 %2150, label %2350, label %2303

; <label>:2303:                                   ; preds = %2302
  br i1 %2166, label %2304, label %2315

; <label>:2304:                                   ; preds = %2303
  %2305 = load double, double* %2149, align 8, !tbaa !8
  br label %2306

; <label>:2306:                                   ; preds = %2311, %2304
  %2307 = phi double* [ %2308, %2311 ], [ %2149, %2304 ]
  %2308 = getelementptr inbounds double, double* %2307, i64 -1
  %2309 = load double, double* %2308, align 8, !tbaa !8
  %2310 = fcmp olt double %2305, %2309
  br i1 %2310, label %2311, label %2313

; <label>:2311:                                   ; preds = %2306
  store double %2309, double* %2307, align 8, !tbaa !8
  %2312 = icmp eq double* %2308, %2148
  br i1 %2312, label %2313, label %2306

; <label>:2313:                                   ; preds = %2306, %2311
  %2314 = phi double* [ %2148, %2311 ], [ %2307, %2306 ]
  store double %2305, double* %2314, align 8, !tbaa !8
  br label %2315

; <label>:2315:                                   ; preds = %2313, %2303
  %2316 = phi double* [ %2168, %2313 ], [ %2149, %2303 ]
  br i1 %2167, label %2335, label %2317

; <label>:2317:                                   ; preds = %2315
  br label %2318

; <label>:2318:                                   ; preds = %5168, %2317
  %2319 = phi double* [ %2316, %2317 ], [ %5170, %5168 ]
  %2320 = load double, double* %2319, align 8, !tbaa !8
  %2321 = icmp eq double* %2319, %2148
  br i1 %2321, label %2330, label %2322

; <label>:2322:                                   ; preds = %2318
  br label %2323

; <label>:2323:                                   ; preds = %2322, %2328
  %2324 = phi double* [ %2325, %2328 ], [ %2319, %2322 ]
  %2325 = getelementptr inbounds double, double* %2324, i64 -1
  %2326 = load double, double* %2325, align 8, !tbaa !8
  %2327 = fcmp olt double %2320, %2326
  br i1 %2327, label %2328, label %2330

; <label>:2328:                                   ; preds = %2323
  store double %2326, double* %2324, align 8, !tbaa !8
  %2329 = icmp eq double* %2325, %2148
  br i1 %2329, label %2330, label %2323

; <label>:2330:                                   ; preds = %2328, %2323, %2318
  %2331 = phi double* [ %2148, %2318 ], [ %2148, %2328 ], [ %2324, %2323 ]
  store double %2320, double* %2331, align 8, !tbaa !8
  %2332 = getelementptr inbounds double, double* %2319, i64 1
  %2333 = load double, double* %2332, align 8, !tbaa !8
  %2334 = icmp eq double* %2332, %2148
  br i1 %2334, label %5168, label %5160

; <label>:2335:                                   ; preds = %5168, %2315
  br label %2339

; <label>:2336:                                   ; preds = %2339
  %2337 = getelementptr inbounds double, double* %2341, i64 1
  %2338 = icmp eq double* %2342, %2144
  br i1 %2338, label %2350, label %2339

; <label>:2339:                                   ; preds = %2335, %2336
  %2340 = phi double* [ %2342, %2336 ], [ %2149, %2335 ]
  %2341 = phi double* [ %2337, %2336 ], [ %2148, %2335 ]
  %2342 = getelementptr inbounds double, double* %2340, i64 1
  %2343 = load double, double* %2340, align 8, !tbaa !8
  %2344 = load double, double* %2341, align 8, !tbaa !8
  %2345 = fcmp olt double %2343, %2344
  br i1 %2345, label %2346, label %2336

; <label>:2346:                                   ; preds = %2339
  %2347 = load i32, i32* @current_test, align 4, !tbaa !6
  %2348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %2347)
  %2349 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %2350

; <label>:2350:                                   ; preds = %2336, %2346, %2302
  %2351 = phi i32 [ %2234, %2302 ], [ %2349, %2346 ], [ %2234, %2336 ]
  %2352 = add nuw nsw i32 %2235, 1
  %2353 = icmp slt i32 %2352, %2351
  br i1 %2353, label %2233, label %2354

; <label>:2354:                                   ; preds = %2350, %2229
  %2355 = phi i32 [ %2230, %2229 ], [ %2351, %2350 ]
  %2356 = icmp sgt i32 %2355, 0
  br i1 %2356, label %2357, label %2764

; <label>:2357:                                   ; preds = %2354
  %2358 = getelementptr inbounds double, double* %145, i64 1
  %2359 = icmp eq double* %2358, %147
  br i1 %1824, label %2376, label %2360

; <label>:2360:                                   ; preds = %2357
  %2361 = getelementptr double, double* %1164, i64 -1
  %2362 = ptrtoint double* %2361 to i64
  %2363 = sub i64 %2362, %1163
  %2364 = lshr i64 %2363, 3
  %2365 = add nuw nsw i64 %2364, 1
  %2366 = getelementptr double, double* %147, i64 -2
  %2367 = ptrtoint double* %2366 to i64
  %2368 = sub i64 %2367, %146
  %2369 = and i64 %2365, 7
  %2370 = icmp eq i64 %2369, 0
  %2371 = icmp ult i64 %2363, 56
  %2372 = and i64 %2368, 8
  %2373 = icmp eq i64 %2372, 0
  %2374 = icmp ult i64 %2368, 8
  %2375 = getelementptr inbounds double, double* %145, i64 2
  br label %2438

; <label>:2376:                                   ; preds = %2357
  %2377 = getelementptr double, double* %147, i64 -2
  %2378 = ptrtoint double* %2377 to i64
  %2379 = sub i64 %2378, %146
  %2380 = and i64 %2379, 8
  %2381 = icmp eq i64 %2380, 0
  %2382 = icmp ult i64 %2379, 8
  %2383 = getelementptr inbounds double, double* %145, i64 2
  br label %2384

; <label>:2384:                                   ; preds = %2376, %2434
  %2385 = phi i32 [ %2435, %2434 ], [ %2355, %2376 ]
  %2386 = phi i32 [ %2436, %2434 ], [ 0, %2376 ]
  br i1 %2359, label %2434, label %2387

; <label>:2387:                                   ; preds = %2384
  br i1 %2381, label %2388, label %2399

; <label>:2388:                                   ; preds = %2387
  %2389 = load double, double* %2358, align 8, !tbaa !8
  br label %2390

; <label>:2390:                                   ; preds = %2395, %2388
  %2391 = phi double* [ %2392, %2395 ], [ %2358, %2388 ]
  %2392 = getelementptr inbounds double, double* %2391, i64 -1
  %2393 = load double, double* %2392, align 8, !tbaa !8
  %2394 = fcmp olt double %2389, %2393
  br i1 %2394, label %2395, label %2397

; <label>:2395:                                   ; preds = %2390
  store double %2393, double* %2391, align 8, !tbaa !8
  %2396 = icmp eq double* %2392, %145
  br i1 %2396, label %2397, label %2390

; <label>:2397:                                   ; preds = %2390, %2395
  %2398 = phi double* [ %145, %2395 ], [ %2391, %2390 ]
  store double %2389, double* %2398, align 8, !tbaa !8
  br label %2399

; <label>:2399:                                   ; preds = %2397, %2387
  %2400 = phi double* [ %2383, %2397 ], [ %2358, %2387 ]
  br i1 %2382, label %2419, label %2401

; <label>:2401:                                   ; preds = %2399
  br label %2402

; <label>:2402:                                   ; preds = %5132, %2401
  %2403 = phi double* [ %2400, %2401 ], [ %5134, %5132 ]
  %2404 = load double, double* %2403, align 8, !tbaa !8
  %2405 = icmp eq double* %2403, %145
  br i1 %2405, label %2414, label %2406

; <label>:2406:                                   ; preds = %2402
  br label %2407

; <label>:2407:                                   ; preds = %2406, %2412
  %2408 = phi double* [ %2409, %2412 ], [ %2403, %2406 ]
  %2409 = getelementptr inbounds double, double* %2408, i64 -1
  %2410 = load double, double* %2409, align 8, !tbaa !8
  %2411 = fcmp olt double %2404, %2410
  br i1 %2411, label %2412, label %2414

; <label>:2412:                                   ; preds = %2407
  store double %2410, double* %2408, align 8, !tbaa !8
  %2413 = icmp eq double* %2409, %145
  br i1 %2413, label %2414, label %2407

; <label>:2414:                                   ; preds = %2407, %2412, %2402
  %2415 = phi double* [ %145, %2402 ], [ %145, %2412 ], [ %2408, %2407 ]
  store double %2404, double* %2415, align 8, !tbaa !8
  %2416 = getelementptr inbounds double, double* %2403, i64 1
  %2417 = load double, double* %2416, align 8, !tbaa !8
  %2418 = icmp eq double* %2416, %145
  br i1 %2418, label %5132, label %5124

; <label>:2419:                                   ; preds = %5132, %2399
  br label %2420

; <label>:2420:                                   ; preds = %2419, %2427
  %2421 = phi double* [ %2423, %2427 ], [ %2358, %2419 ]
  %2422 = phi double* [ %2428, %2427 ], [ %145, %2419 ]
  %2423 = getelementptr inbounds double, double* %2421, i64 1
  %2424 = load double, double* %2421, align 8, !tbaa !8
  %2425 = load double, double* %2422, align 8, !tbaa !8
  %2426 = fcmp olt double %2424, %2425
  br i1 %2426, label %2430, label %2427

; <label>:2427:                                   ; preds = %2420
  %2428 = getelementptr inbounds double, double* %2422, i64 1
  %2429 = icmp eq double* %2423, %147
  br i1 %2429, label %2434, label %2420

; <label>:2430:                                   ; preds = %2420
  %2431 = load i32, i32* @current_test, align 4, !tbaa !6
  %2432 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %2431)
  %2433 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %2434

; <label>:2434:                                   ; preds = %2427, %2430, %2384
  %2435 = phi i32 [ %2385, %2384 ], [ %2433, %2430 ], [ %2385, %2427 ]
  %2436 = add nuw nsw i32 %2386, 1
  %2437 = icmp slt i32 %2436, %2435
  br i1 %2437, label %2384, label %2559

; <label>:2438:                                   ; preds = %2360, %2555
  %2439 = phi i32 [ %2556, %2555 ], [ %2355, %2360 ]
  %2440 = phi i32 [ %2557, %2555 ], [ 0, %2360 ]
  br i1 %2370, label %2457, label %2441

; <label>:2441:                                   ; preds = %2438
  br label %2442

; <label>:2442:                                   ; preds = %2442, %2441
  %2443 = phi i64 [ %148, %2441 ], [ %2451, %2442 ]
  %2444 = phi double* [ %1159, %2441 ], [ %2446, %2442 ]
  %2445 = phi i64 [ %2369, %2441 ], [ %2453, %2442 ]
  %2446 = getelementptr inbounds double, double* %2444, i64 1
  %2447 = bitcast double* %2444 to i64*
  %2448 = load i64, i64* %2447, align 8, !tbaa !8
  %2449 = inttoptr i64 %2443 to double*
  %2450 = getelementptr inbounds double, double* %2449, i64 1
  %2451 = ptrtoint double* %2450 to i64
  %2452 = inttoptr i64 %2443 to i64*
  store i64 %2448, i64* %2452, align 8, !tbaa !8
  %2453 = add i64 %2445, -1
  %2454 = icmp eq i64 %2453, 0
  br i1 %2454, label %2455, label %2442, !llvm.loop !81

; <label>:2455:                                   ; preds = %2442
  %2456 = ptrtoint double* %2450 to i64
  br label %2457

; <label>:2457:                                   ; preds = %2438, %2455
  %2458 = phi i64 [ %148, %2438 ], [ %2456, %2455 ]
  %2459 = phi double* [ %1159, %2438 ], [ %2446, %2455 ]
  br i1 %2371, label %2507, label %2460

; <label>:2460:                                   ; preds = %2457
  br label %2461

; <label>:2461:                                   ; preds = %2461, %2460
  %2462 = phi i64 [ %2458, %2460 ], [ %2504, %2461 ]
  %2463 = phi double* [ %2459, %2460 ], [ %2500, %2461 ]
  %2464 = getelementptr inbounds double, double* %2463, i64 1
  %2465 = bitcast double* %2463 to i64*
  %2466 = load i64, i64* %2465, align 8, !tbaa !8
  %2467 = inttoptr i64 %2462 to double*
  %2468 = getelementptr inbounds double, double* %2467, i64 1
  %2469 = inttoptr i64 %2462 to i64*
  store i64 %2466, i64* %2469, align 8, !tbaa !8
  %2470 = getelementptr inbounds double, double* %2463, i64 2
  %2471 = bitcast double* %2464 to i64*
  %2472 = load i64, i64* %2471, align 8, !tbaa !8
  %2473 = getelementptr inbounds double, double* %2467, i64 2
  %2474 = bitcast double* %2468 to i64*
  store i64 %2472, i64* %2474, align 8, !tbaa !8
  %2475 = getelementptr inbounds double, double* %2463, i64 3
  %2476 = bitcast double* %2470 to i64*
  %2477 = load i64, i64* %2476, align 8, !tbaa !8
  %2478 = getelementptr inbounds double, double* %2467, i64 3
  %2479 = bitcast double* %2473 to i64*
  store i64 %2477, i64* %2479, align 8, !tbaa !8
  %2480 = getelementptr inbounds double, double* %2463, i64 4
  %2481 = bitcast double* %2475 to i64*
  %2482 = load i64, i64* %2481, align 8, !tbaa !8
  %2483 = getelementptr inbounds double, double* %2467, i64 4
  %2484 = bitcast double* %2478 to i64*
  store i64 %2482, i64* %2484, align 8, !tbaa !8
  %2485 = getelementptr inbounds double, double* %2463, i64 5
  %2486 = bitcast double* %2480 to i64*
  %2487 = load i64, i64* %2486, align 8, !tbaa !8
  %2488 = getelementptr inbounds double, double* %2467, i64 5
  %2489 = bitcast double* %2483 to i64*
  store i64 %2487, i64* %2489, align 8, !tbaa !8
  %2490 = getelementptr inbounds double, double* %2463, i64 6
  %2491 = bitcast double* %2485 to i64*
  %2492 = load i64, i64* %2491, align 8, !tbaa !8
  %2493 = getelementptr inbounds double, double* %2467, i64 6
  %2494 = bitcast double* %2488 to i64*
  store i64 %2492, i64* %2494, align 8, !tbaa !8
  %2495 = getelementptr inbounds double, double* %2463, i64 7
  %2496 = bitcast double* %2490 to i64*
  %2497 = load i64, i64* %2496, align 8, !tbaa !8
  %2498 = getelementptr inbounds double, double* %2467, i64 7
  %2499 = bitcast double* %2493 to i64*
  store i64 %2497, i64* %2499, align 8, !tbaa !8
  %2500 = getelementptr inbounds double, double* %2463, i64 8
  %2501 = bitcast double* %2495 to i64*
  %2502 = load i64, i64* %2501, align 8, !tbaa !8
  %2503 = getelementptr inbounds double, double* %2467, i64 8
  %2504 = ptrtoint double* %2503 to i64
  %2505 = bitcast double* %2498 to i64*
  store i64 %2502, i64* %2505, align 8, !tbaa !8
  %2506 = icmp eq double* %2500, %1164
  br i1 %2506, label %2507, label %2461

; <label>:2507:                                   ; preds = %2461, %2457
  br i1 %2359, label %2555, label %2508

; <label>:2508:                                   ; preds = %2507
  br i1 %2373, label %2509, label %2520

; <label>:2509:                                   ; preds = %2508
  %2510 = load double, double* %2358, align 8, !tbaa !8
  br label %2511

; <label>:2511:                                   ; preds = %2516, %2509
  %2512 = phi double* [ %2513, %2516 ], [ %2358, %2509 ]
  %2513 = getelementptr inbounds double, double* %2512, i64 -1
  %2514 = load double, double* %2513, align 8, !tbaa !8
  %2515 = fcmp olt double %2510, %2514
  br i1 %2515, label %2516, label %2518

; <label>:2516:                                   ; preds = %2511
  store double %2514, double* %2512, align 8, !tbaa !8
  %2517 = icmp eq double* %2513, %145
  br i1 %2517, label %2518, label %2511

; <label>:2518:                                   ; preds = %2511, %2516
  %2519 = phi double* [ %145, %2516 ], [ %2512, %2511 ]
  store double %2510, double* %2519, align 8, !tbaa !8
  br label %2520

; <label>:2520:                                   ; preds = %2518, %2508
  %2521 = phi double* [ %2375, %2518 ], [ %2358, %2508 ]
  br i1 %2374, label %2540, label %2522

; <label>:2522:                                   ; preds = %2520
  br label %2523

; <label>:2523:                                   ; preds = %5144, %2522
  %2524 = phi double* [ %2521, %2522 ], [ %5146, %5144 ]
  %2525 = load double, double* %2524, align 8, !tbaa !8
  %2526 = icmp eq double* %2524, %145
  br i1 %2526, label %2535, label %2527

; <label>:2527:                                   ; preds = %2523
  br label %2528

; <label>:2528:                                   ; preds = %2527, %2533
  %2529 = phi double* [ %2530, %2533 ], [ %2524, %2527 ]
  %2530 = getelementptr inbounds double, double* %2529, i64 -1
  %2531 = load double, double* %2530, align 8, !tbaa !8
  %2532 = fcmp olt double %2525, %2531
  br i1 %2532, label %2533, label %2535

; <label>:2533:                                   ; preds = %2528
  store double %2531, double* %2529, align 8, !tbaa !8
  %2534 = icmp eq double* %2530, %145
  br i1 %2534, label %2535, label %2528

; <label>:2535:                                   ; preds = %2533, %2528, %2523
  %2536 = phi double* [ %145, %2523 ], [ %145, %2533 ], [ %2529, %2528 ]
  store double %2525, double* %2536, align 8, !tbaa !8
  %2537 = getelementptr inbounds double, double* %2524, i64 1
  %2538 = load double, double* %2537, align 8, !tbaa !8
  %2539 = icmp eq double* %2537, %145
  br i1 %2539, label %5144, label %5136

; <label>:2540:                                   ; preds = %5144, %2520
  br label %2544

; <label>:2541:                                   ; preds = %2544
  %2542 = getelementptr inbounds double, double* %2546, i64 1
  %2543 = icmp eq double* %2547, %147
  br i1 %2543, label %2555, label %2544

; <label>:2544:                                   ; preds = %2540, %2541
  %2545 = phi double* [ %2547, %2541 ], [ %2358, %2540 ]
  %2546 = phi double* [ %2542, %2541 ], [ %145, %2540 ]
  %2547 = getelementptr inbounds double, double* %2545, i64 1
  %2548 = load double, double* %2545, align 8, !tbaa !8
  %2549 = load double, double* %2546, align 8, !tbaa !8
  %2550 = fcmp olt double %2548, %2549
  br i1 %2550, label %2551, label %2541

; <label>:2551:                                   ; preds = %2544
  %2552 = load i32, i32* @current_test, align 4, !tbaa !6
  %2553 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %2552)
  %2554 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %2555

; <label>:2555:                                   ; preds = %2541, %2551, %2507
  %2556 = phi i32 [ %2439, %2507 ], [ %2554, %2551 ], [ %2439, %2541 ]
  %2557 = add nuw nsw i32 %2440, 1
  %2558 = icmp slt i32 %2557, %2556
  br i1 %2558, label %2438, label %2559

; <label>:2559:                                   ; preds = %2555, %2434
  %2560 = phi i32 [ %2435, %2434 ], [ %2556, %2555 ]
  %2561 = icmp sgt i32 %2560, 0
  br i1 %2561, label %2562, label %2764

; <label>:2562:                                   ; preds = %2559
  %2563 = getelementptr inbounds double, double* %145, i64 1
  %2564 = icmp eq double* %2563, %147
  br i1 %1824, label %2581, label %2565

; <label>:2565:                                   ; preds = %2562
  %2566 = getelementptr double, double* %1164, i64 -1
  %2567 = ptrtoint double* %2566 to i64
  %2568 = sub i64 %2567, %1163
  %2569 = lshr i64 %2568, 3
  %2570 = add nuw nsw i64 %2569, 1
  %2571 = getelementptr double, double* %147, i64 -2
  %2572 = ptrtoint double* %2571 to i64
  %2573 = sub i64 %2572, %146
  %2574 = and i64 %2570, 7
  %2575 = icmp eq i64 %2574, 0
  %2576 = icmp ult i64 %2568, 56
  %2577 = and i64 %2573, 8
  %2578 = icmp eq i64 %2577, 0
  %2579 = icmp ult i64 %2573, 8
  %2580 = getelementptr inbounds double, double* %145, i64 2
  br label %2643

; <label>:2581:                                   ; preds = %2562
  %2582 = getelementptr double, double* %147, i64 -2
  %2583 = ptrtoint double* %2582 to i64
  %2584 = sub i64 %2583, %146
  %2585 = and i64 %2584, 8
  %2586 = icmp eq i64 %2585, 0
  %2587 = icmp ult i64 %2584, 8
  %2588 = getelementptr inbounds double, double* %145, i64 2
  br label %2589

; <label>:2589:                                   ; preds = %2581, %2639
  %2590 = phi i32 [ %2640, %2639 ], [ %2560, %2581 ]
  %2591 = phi i32 [ %2641, %2639 ], [ 0, %2581 ]
  br i1 %2564, label %2639, label %2592

; <label>:2592:                                   ; preds = %2589
  br i1 %2586, label %2593, label %2604

; <label>:2593:                                   ; preds = %2592
  %2594 = load double, double* %2563, align 8, !tbaa !8
  br label %2595

; <label>:2595:                                   ; preds = %2600, %2593
  %2596 = phi double* [ %2597, %2600 ], [ %2563, %2593 ]
  %2597 = getelementptr inbounds double, double* %2596, i64 -1
  %2598 = load double, double* %2597, align 8, !tbaa !8
  %2599 = fcmp olt double %2594, %2598
  br i1 %2599, label %2600, label %2602

; <label>:2600:                                   ; preds = %2595
  store double %2598, double* %2596, align 8, !tbaa !8
  %2601 = icmp eq double* %2597, %145
  br i1 %2601, label %2602, label %2595

; <label>:2602:                                   ; preds = %2595, %2600
  %2603 = phi double* [ %145, %2600 ], [ %2596, %2595 ]
  store double %2594, double* %2603, align 8, !tbaa !8
  br label %2604

; <label>:2604:                                   ; preds = %2602, %2592
  %2605 = phi double* [ %2588, %2602 ], [ %2563, %2592 ]
  br i1 %2587, label %2624, label %2606

; <label>:2606:                                   ; preds = %2604
  br label %2607

; <label>:2607:                                   ; preds = %5108, %2606
  %2608 = phi double* [ %2605, %2606 ], [ %5110, %5108 ]
  %2609 = load double, double* %2608, align 8, !tbaa !8
  %2610 = icmp eq double* %2608, %145
  br i1 %2610, label %2619, label %2611

; <label>:2611:                                   ; preds = %2607
  br label %2612

; <label>:2612:                                   ; preds = %2611, %2617
  %2613 = phi double* [ %2614, %2617 ], [ %2608, %2611 ]
  %2614 = getelementptr inbounds double, double* %2613, i64 -1
  %2615 = load double, double* %2614, align 8, !tbaa !8
  %2616 = fcmp olt double %2609, %2615
  br i1 %2616, label %2617, label %2619

; <label>:2617:                                   ; preds = %2612
  store double %2615, double* %2613, align 8, !tbaa !8
  %2618 = icmp eq double* %2614, %145
  br i1 %2618, label %2619, label %2612

; <label>:2619:                                   ; preds = %2612, %2617, %2607
  %2620 = phi double* [ %145, %2607 ], [ %145, %2617 ], [ %2613, %2612 ]
  store double %2609, double* %2620, align 8, !tbaa !8
  %2621 = getelementptr inbounds double, double* %2608, i64 1
  %2622 = load double, double* %2621, align 8, !tbaa !8
  %2623 = icmp eq double* %2621, %145
  br i1 %2623, label %5108, label %5100

; <label>:2624:                                   ; preds = %5108, %2604
  br label %2625

; <label>:2625:                                   ; preds = %2624, %2632
  %2626 = phi double* [ %2628, %2632 ], [ %2563, %2624 ]
  %2627 = phi double* [ %2633, %2632 ], [ %145, %2624 ]
  %2628 = getelementptr inbounds double, double* %2626, i64 1
  %2629 = load double, double* %2626, align 8, !tbaa !8
  %2630 = load double, double* %2627, align 8, !tbaa !8
  %2631 = fcmp olt double %2629, %2630
  br i1 %2631, label %2635, label %2632

; <label>:2632:                                   ; preds = %2625
  %2633 = getelementptr inbounds double, double* %2627, i64 1
  %2634 = icmp eq double* %2628, %147
  br i1 %2634, label %2639, label %2625

; <label>:2635:                                   ; preds = %2625
  %2636 = load i32, i32* @current_test, align 4, !tbaa !6
  %2637 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %2636)
  %2638 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %2639

; <label>:2639:                                   ; preds = %2632, %2635, %2589
  %2640 = phi i32 [ %2590, %2589 ], [ %2638, %2635 ], [ %2590, %2632 ]
  %2641 = add nuw nsw i32 %2591, 1
  %2642 = icmp slt i32 %2641, %2640
  br i1 %2642, label %2589, label %2764

; <label>:2643:                                   ; preds = %2565, %2760
  %2644 = phi i32 [ %2761, %2760 ], [ %2560, %2565 ]
  %2645 = phi i32 [ %2762, %2760 ], [ 0, %2565 ]
  br i1 %2575, label %2662, label %2646

; <label>:2646:                                   ; preds = %2643
  br label %2647

; <label>:2647:                                   ; preds = %2647, %2646
  %2648 = phi i64 [ %146, %2646 ], [ %2656, %2647 ]
  %2649 = phi double* [ %1159, %2646 ], [ %2651, %2647 ]
  %2650 = phi i64 [ %2574, %2646 ], [ %2658, %2647 ]
  %2651 = getelementptr inbounds double, double* %2649, i64 1
  %2652 = bitcast double* %2649 to i64*
  %2653 = load i64, i64* %2652, align 8, !tbaa !8
  %2654 = inttoptr i64 %2648 to double*
  %2655 = getelementptr inbounds double, double* %2654, i64 1
  %2656 = ptrtoint double* %2655 to i64
  %2657 = inttoptr i64 %2648 to i64*
  store i64 %2653, i64* %2657, align 8, !tbaa !8
  %2658 = add i64 %2650, -1
  %2659 = icmp eq i64 %2658, 0
  br i1 %2659, label %2660, label %2647, !llvm.loop !82

; <label>:2660:                                   ; preds = %2647
  %2661 = ptrtoint double* %2655 to i64
  br label %2662

; <label>:2662:                                   ; preds = %2643, %2660
  %2663 = phi i64 [ %146, %2643 ], [ %2661, %2660 ]
  %2664 = phi double* [ %1159, %2643 ], [ %2651, %2660 ]
  br i1 %2576, label %2712, label %2665

; <label>:2665:                                   ; preds = %2662
  br label %2666

; <label>:2666:                                   ; preds = %2666, %2665
  %2667 = phi i64 [ %2663, %2665 ], [ %2709, %2666 ]
  %2668 = phi double* [ %2664, %2665 ], [ %2705, %2666 ]
  %2669 = getelementptr inbounds double, double* %2668, i64 1
  %2670 = bitcast double* %2668 to i64*
  %2671 = load i64, i64* %2670, align 8, !tbaa !8
  %2672 = inttoptr i64 %2667 to double*
  %2673 = getelementptr inbounds double, double* %2672, i64 1
  %2674 = inttoptr i64 %2667 to i64*
  store i64 %2671, i64* %2674, align 8, !tbaa !8
  %2675 = getelementptr inbounds double, double* %2668, i64 2
  %2676 = bitcast double* %2669 to i64*
  %2677 = load i64, i64* %2676, align 8, !tbaa !8
  %2678 = getelementptr inbounds double, double* %2672, i64 2
  %2679 = bitcast double* %2673 to i64*
  store i64 %2677, i64* %2679, align 8, !tbaa !8
  %2680 = getelementptr inbounds double, double* %2668, i64 3
  %2681 = bitcast double* %2675 to i64*
  %2682 = load i64, i64* %2681, align 8, !tbaa !8
  %2683 = getelementptr inbounds double, double* %2672, i64 3
  %2684 = bitcast double* %2678 to i64*
  store i64 %2682, i64* %2684, align 8, !tbaa !8
  %2685 = getelementptr inbounds double, double* %2668, i64 4
  %2686 = bitcast double* %2680 to i64*
  %2687 = load i64, i64* %2686, align 8, !tbaa !8
  %2688 = getelementptr inbounds double, double* %2672, i64 4
  %2689 = bitcast double* %2683 to i64*
  store i64 %2687, i64* %2689, align 8, !tbaa !8
  %2690 = getelementptr inbounds double, double* %2668, i64 5
  %2691 = bitcast double* %2685 to i64*
  %2692 = load i64, i64* %2691, align 8, !tbaa !8
  %2693 = getelementptr inbounds double, double* %2672, i64 5
  %2694 = bitcast double* %2688 to i64*
  store i64 %2692, i64* %2694, align 8, !tbaa !8
  %2695 = getelementptr inbounds double, double* %2668, i64 6
  %2696 = bitcast double* %2690 to i64*
  %2697 = load i64, i64* %2696, align 8, !tbaa !8
  %2698 = getelementptr inbounds double, double* %2672, i64 6
  %2699 = bitcast double* %2693 to i64*
  store i64 %2697, i64* %2699, align 8, !tbaa !8
  %2700 = getelementptr inbounds double, double* %2668, i64 7
  %2701 = bitcast double* %2695 to i64*
  %2702 = load i64, i64* %2701, align 8, !tbaa !8
  %2703 = getelementptr inbounds double, double* %2672, i64 7
  %2704 = bitcast double* %2698 to i64*
  store i64 %2702, i64* %2704, align 8, !tbaa !8
  %2705 = getelementptr inbounds double, double* %2668, i64 8
  %2706 = bitcast double* %2700 to i64*
  %2707 = load i64, i64* %2706, align 8, !tbaa !8
  %2708 = getelementptr inbounds double, double* %2672, i64 8
  %2709 = ptrtoint double* %2708 to i64
  %2710 = bitcast double* %2703 to i64*
  store i64 %2707, i64* %2710, align 8, !tbaa !8
  %2711 = icmp eq double* %2705, %1164
  br i1 %2711, label %2712, label %2666

; <label>:2712:                                   ; preds = %2666, %2662
  br i1 %2564, label %2760, label %2713

; <label>:2713:                                   ; preds = %2712
  br i1 %2578, label %2714, label %2725

; <label>:2714:                                   ; preds = %2713
  %2715 = load double, double* %2563, align 8, !tbaa !8
  br label %2716

; <label>:2716:                                   ; preds = %2721, %2714
  %2717 = phi double* [ %2718, %2721 ], [ %2563, %2714 ]
  %2718 = getelementptr inbounds double, double* %2717, i64 -1
  %2719 = load double, double* %2718, align 8, !tbaa !8
  %2720 = fcmp olt double %2715, %2719
  br i1 %2720, label %2721, label %2723

; <label>:2721:                                   ; preds = %2716
  store double %2719, double* %2717, align 8, !tbaa !8
  %2722 = icmp eq double* %2718, %145
  br i1 %2722, label %2723, label %2716

; <label>:2723:                                   ; preds = %2716, %2721
  %2724 = phi double* [ %145, %2721 ], [ %2717, %2716 ]
  store double %2715, double* %2724, align 8, !tbaa !8
  br label %2725

; <label>:2725:                                   ; preds = %2723, %2713
  %2726 = phi double* [ %2580, %2723 ], [ %2563, %2713 ]
  br i1 %2579, label %2745, label %2727

; <label>:2727:                                   ; preds = %2725
  br label %2728

; <label>:2728:                                   ; preds = %5120, %2727
  %2729 = phi double* [ %2726, %2727 ], [ %5122, %5120 ]
  %2730 = load double, double* %2729, align 8, !tbaa !8
  %2731 = icmp eq double* %2729, %145
  br i1 %2731, label %2740, label %2732

; <label>:2732:                                   ; preds = %2728
  br label %2733

; <label>:2733:                                   ; preds = %2732, %2738
  %2734 = phi double* [ %2735, %2738 ], [ %2729, %2732 ]
  %2735 = getelementptr inbounds double, double* %2734, i64 -1
  %2736 = load double, double* %2735, align 8, !tbaa !8
  %2737 = fcmp olt double %2730, %2736
  br i1 %2737, label %2738, label %2740

; <label>:2738:                                   ; preds = %2733
  store double %2736, double* %2734, align 8, !tbaa !8
  %2739 = icmp eq double* %2735, %145
  br i1 %2739, label %2740, label %2733

; <label>:2740:                                   ; preds = %2738, %2733, %2728
  %2741 = phi double* [ %145, %2728 ], [ %145, %2738 ], [ %2734, %2733 ]
  store double %2730, double* %2741, align 8, !tbaa !8
  %2742 = getelementptr inbounds double, double* %2729, i64 1
  %2743 = load double, double* %2742, align 8, !tbaa !8
  %2744 = icmp eq double* %2742, %145
  br i1 %2744, label %5120, label %5112

; <label>:2745:                                   ; preds = %5120, %2725
  br label %2749

; <label>:2746:                                   ; preds = %2749
  %2747 = getelementptr inbounds double, double* %2751, i64 1
  %2748 = icmp eq double* %2752, %147
  br i1 %2748, label %2760, label %2749

; <label>:2749:                                   ; preds = %2745, %2746
  %2750 = phi double* [ %2752, %2746 ], [ %2563, %2745 ]
  %2751 = phi double* [ %2747, %2746 ], [ %145, %2745 ]
  %2752 = getelementptr inbounds double, double* %2750, i64 1
  %2753 = load double, double* %2750, align 8, !tbaa !8
  %2754 = load double, double* %2751, align 8, !tbaa !8
  %2755 = fcmp olt double %2753, %2754
  br i1 %2755, label %2756, label %2746

; <label>:2756:                                   ; preds = %2749
  %2757 = load i32, i32* @current_test, align 4, !tbaa !6
  %2758 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %2757)
  %2759 = load i32, i32* @iterations, align 4, !tbaa !6
  br label %2760

; <label>:2760:                                   ; preds = %2746, %2756, %2712
  %2761 = phi i32 [ %2644, %2712 ], [ %2759, %2756 ], [ %2644, %2746 ]
  %2762 = add nuw nsw i32 %2645, 1
  %2763 = icmp slt i32 %2762, %2761
  br i1 %2763, label %2643, label %2764

; <label>:2764:                                   ; preds = %2760, %2639, %2138, %1496, %1820, %1172, %2354, %2559
  %2765 = phi i32 [ %1821, %1820 ], [ %1178, %1172 ], [ %2355, %2354 ], [ %2560, %2559 ], [ %1497, %1496 ], [ %2139, %2138 ], [ %2640, %2639 ], [ %2761, %2760 ]
  %2766 = shl nsw i32 %2765, 3
  store i32 %2766, i32* @iterations, align 4, !tbaa !6
  %2767 = load double*, double** @dMpb, align 8, !tbaa !2
  %2768 = load double*, double** @dMpe, align 8, !tbaa !2
  %2769 = load double*, double** @dpb, align 8, !tbaa !2
  %2770 = load double*, double** @dpe, align 8, !tbaa !2
  invoke void @_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc(double* %2767, double* %2768, double* %2769, double* %2770, double 0.000000e+00, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0))
          to label %2771 unwind label %5074

; <label>:2771:                                   ; preds = %2764
  %2772 = load double*, double** %1160, align 8, !tbaa !2
  %2773 = load double*, double** %964, align 8, !tbaa !2
  %2774 = load double*, double** %150, align 8, !tbaa !2
  %2775 = load double*, double** %140, align 8, !tbaa !2
  invoke void @_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(double* %2772, double* %2773, double* %2774, double* %2775, double 0.000000e+00, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0))
          to label %2776 unwind label %5074

; <label>:2776:                                   ; preds = %2771
  %2777 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator", %"class.std::reverse_iterator"* @rdMpb, i64 0, i32 0), align 8, !tbaa !21
  %2778 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator", %"class.std::reverse_iterator"* @rdMpe, i64 0, i32 0), align 8, !tbaa !21
  %2779 = ptrtoint double* %2778 to i64
  %2780 = load i64, i64* bitcast (%"class.std::reverse_iterator"* @rdpb to i64*), align 8, !tbaa !21
  %2781 = load i64, i64* bitcast (%"class.std::reverse_iterator"* @rdpe to i64*), align 8, !tbaa !21
  %2782 = bitcast %"class.std::reverse_iterator"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2782)
  %2783 = bitcast %"class.std::reverse_iterator"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2783)
  %2784 = load i32, i32* @iterations, align 4, !tbaa !6
  %2785 = icmp sgt i32 %2784, 0
  br i1 %2785, label %2786, label %3015

; <label>:2786:                                   ; preds = %2776
  %2787 = bitcast %"class.std::reverse_iterator"* %3 to i64*
  %2788 = bitcast %"class.std::reverse_iterator"* %4 to i64*
  %2789 = icmp eq double* %2777, %2778
  %2790 = inttoptr i64 %2780 to double*
  %2791 = inttoptr i64 %2780 to i8*
  %2792 = inttoptr i64 %2781 to double*
  %2793 = getelementptr inbounds double, double* %2790, i64 -1
  %2794 = icmp eq double* %2793, %2792
  br i1 %2789, label %2795, label %2819

; <label>:2795:                                   ; preds = %2786
  br label %2796

; <label>:2796:                                   ; preds = %2795, %2813
  %2797 = phi i32 [ %2814, %2813 ], [ 0, %2795 ]
  store i64 %2780, i64* %2787, align 8, !tbaa !21
  store i64 %2781, i64* %2788, align 8, !tbaa !21
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_(%"class.std::reverse_iterator"* nonnull %3, %"class.std::reverse_iterator"* nonnull %4)
          to label %2798 unwind label %2817

; <label>:2798:                                   ; preds = %2796
  br i1 %2794, label %2813, label %2799

; <label>:2799:                                   ; preds = %2798
  br label %2800

; <label>:2800:                                   ; preds = %2799, %2808
  %2801 = phi double* [ %2803, %2808 ], [ %2793, %2799 ]
  %2802 = phi double* [ %2805, %2808 ], [ %2790, %2799 ]
  %2803 = getelementptr inbounds double, double* %2801, i64 -1
  %2804 = load double, double* %2803, align 8, !tbaa !8
  %2805 = getelementptr inbounds double, double* %2802, i64 -1
  %2806 = load double, double* %2805, align 8, !tbaa !8
  %2807 = fcmp olt double %2804, %2806
  br i1 %2807, label %2810, label %2808

; <label>:2808:                                   ; preds = %2800
  %2809 = icmp eq double* %2803, %2792
  br i1 %2809, label %2813, label %2800

; <label>:2810:                                   ; preds = %2800
  %2811 = load i32, i32* @current_test, align 4, !tbaa !6
  %2812 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %2811)
  br label %2813

; <label>:2813:                                   ; preds = %2808, %2810, %2798
  %2814 = add nuw nsw i32 %2797, 1
  %2815 = load i32, i32* @iterations, align 4, !tbaa !6
  %2816 = icmp slt i32 %2814, %2815
  br i1 %2816, label %2796, label %3015

; <label>:2817:                                   ; preds = %2796
  %2818 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:2819:                                   ; preds = %2786
  %2820 = getelementptr double, double* %2777, i64 -1
  %2821 = ptrtoint double* %2820 to i64
  %2822 = sub i64 %2821, %2779
  %2823 = lshr i64 %2822, 3
  %2824 = add nuw nsw i64 %2823, 1
  %2825 = getelementptr double, double* %2777, i64 -1
  %2826 = ptrtoint double* %2825 to i64
  %2827 = sub i64 %2826, %2779
  %2828 = lshr i64 %2827, 3
  %2829 = xor i64 %2828, -1
  %2830 = getelementptr double, double* %2790, i64 %2829
  %2831 = getelementptr double, double* %2777, i64 %2829
  %2832 = bitcast double* %2831 to i8*
  %2833 = and i64 %2824, 3
  %2834 = add nsw i64 %2833, -1
  %2835 = sub nsw i64 %2834, %2823
  %2836 = and i64 %2824, 3
  %2837 = add nsw i64 %2836, -1
  %2838 = sub nsw i64 %2837, %2823
  %2839 = and i64 %2824, 4611686018427387900
  %2840 = add nsw i64 %2839, -4
  %2841 = lshr exact i64 %2840, 2
  %2842 = add nuw nsw i64 %2841, 1
  %2843 = icmp ult i64 %2824, 4
  %2844 = icmp ult double* %2830, %2777
  %2845 = icmp ult i8* %2832, %2791
  %2846 = and i1 %2844, %2845
  %2847 = and i64 %2824, 4611686018427387900
  %2848 = getelementptr double, double* %2790, i64 %2835
  %2849 = getelementptr double, double* %2777, i64 %2838
  %2850 = and i64 %2842, 1
  %2851 = icmp eq i64 %2840, 0
  %2852 = sub nsw i64 %2842, %2850
  %2853 = icmp eq i64 %2850, 0
  %2854 = icmp eq i64 %2824, %2847
  br label %2855

; <label>:2855:                                   ; preds = %3011, %2819
  %2856 = phi i32 [ 0, %2819 ], [ %3012, %3011 ]
  %2857 = or i1 %2843, %2846
  br i1 %2857, label %2924, label %2858

; <label>:2858:                                   ; preds = %2855
  br i1 %2851, label %2902, label %2859

; <label>:2859:                                   ; preds = %2858
  br label %2860

; <label>:2860:                                   ; preds = %2860, %2859
  %2861 = phi i64 [ 0, %2859 ], [ %2899, %2860 ]
  %2862 = phi i64 [ %2852, %2859 ], [ %2900, %2860 ]
  %2863 = sub i64 0, %2861
  %2864 = getelementptr double, double* %2790, i64 %2863
  %2865 = sub i64 0, %2861
  %2866 = getelementptr double, double* %2777, i64 %2865
  %2867 = getelementptr inbounds double, double* %2866, i64 -1
  %2868 = getelementptr double, double* %2867, i64 -1
  %2869 = bitcast double* %2868 to <2 x i64>*
  %2870 = load <2 x i64>, <2 x i64>* %2869, align 8, !tbaa !8, !alias.scope !83
  %2871 = getelementptr double, double* %2867, i64 -2
  %2872 = getelementptr double, double* %2871, i64 -1
  %2873 = bitcast double* %2872 to <2 x i64>*
  %2874 = load <2 x i64>, <2 x i64>* %2873, align 8, !tbaa !8, !alias.scope !83
  %2875 = getelementptr inbounds double, double* %2864, i64 -1
  %2876 = getelementptr double, double* %2875, i64 -1
  %2877 = bitcast double* %2876 to <2 x i64>*
  store <2 x i64> %2870, <2 x i64>* %2877, align 8, !tbaa !8, !alias.scope !86, !noalias !83
  %2878 = getelementptr double, double* %2875, i64 -2
  %2879 = getelementptr double, double* %2878, i64 -1
  %2880 = bitcast double* %2879 to <2 x i64>*
  store <2 x i64> %2874, <2 x i64>* %2880, align 8, !tbaa !8, !alias.scope !86, !noalias !83
  %2881 = sub i64 -4, %2861
  %2882 = getelementptr double, double* %2790, i64 %2881
  %2883 = sub i64 -4, %2861
  %2884 = getelementptr double, double* %2777, i64 %2883
  %2885 = getelementptr inbounds double, double* %2884, i64 -1
  %2886 = getelementptr double, double* %2885, i64 -1
  %2887 = bitcast double* %2886 to <2 x i64>*
  %2888 = load <2 x i64>, <2 x i64>* %2887, align 8, !tbaa !8, !alias.scope !83
  %2889 = getelementptr double, double* %2885, i64 -2
  %2890 = getelementptr double, double* %2889, i64 -1
  %2891 = bitcast double* %2890 to <2 x i64>*
  %2892 = load <2 x i64>, <2 x i64>* %2891, align 8, !tbaa !8, !alias.scope !83
  %2893 = getelementptr inbounds double, double* %2882, i64 -1
  %2894 = getelementptr double, double* %2893, i64 -1
  %2895 = bitcast double* %2894 to <2 x i64>*
  store <2 x i64> %2888, <2 x i64>* %2895, align 8, !tbaa !8, !alias.scope !86, !noalias !83
  %2896 = getelementptr double, double* %2893, i64 -2
  %2897 = getelementptr double, double* %2896, i64 -1
  %2898 = bitcast double* %2897 to <2 x i64>*
  store <2 x i64> %2892, <2 x i64>* %2898, align 8, !tbaa !8, !alias.scope !86, !noalias !83
  %2899 = add i64 %2861, 8
  %2900 = add i64 %2862, -2
  %2901 = icmp eq i64 %2900, 0
  br i1 %2901, label %2902, label %2860, !llvm.loop !88

; <label>:2902:                                   ; preds = %2860, %2858
  %2903 = phi i64 [ 0, %2858 ], [ %2899, %2860 ]
  br i1 %2853, label %2923, label %2904

; <label>:2904:                                   ; preds = %2902
  %2905 = sub i64 0, %2903
  %2906 = getelementptr double, double* %2790, i64 %2905
  %2907 = sub i64 0, %2903
  %2908 = getelementptr double, double* %2777, i64 %2907
  %2909 = getelementptr inbounds double, double* %2908, i64 -1
  %2910 = getelementptr double, double* %2909, i64 -1
  %2911 = bitcast double* %2910 to <2 x i64>*
  %2912 = load <2 x i64>, <2 x i64>* %2911, align 8, !tbaa !8, !alias.scope !83
  %2913 = getelementptr double, double* %2909, i64 -2
  %2914 = getelementptr double, double* %2913, i64 -1
  %2915 = bitcast double* %2914 to <2 x i64>*
  %2916 = load <2 x i64>, <2 x i64>* %2915, align 8, !tbaa !8, !alias.scope !83
  %2917 = getelementptr inbounds double, double* %2906, i64 -1
  %2918 = getelementptr double, double* %2917, i64 -1
  %2919 = bitcast double* %2918 to <2 x i64>*
  store <2 x i64> %2912, <2 x i64>* %2919, align 8, !tbaa !8, !alias.scope !86, !noalias !83
  %2920 = getelementptr double, double* %2917, i64 -2
  %2921 = getelementptr double, double* %2920, i64 -1
  %2922 = bitcast double* %2921 to <2 x i64>*
  store <2 x i64> %2916, <2 x i64>* %2922, align 8, !tbaa !8, !alias.scope !86, !noalias !83
  br label %2923

; <label>:2923:                                   ; preds = %2902, %2904
  br i1 %2854, label %2995, label %2924

; <label>:2924:                                   ; preds = %2855, %2923
  %2925 = phi double* [ %2790, %2855 ], [ %2848, %2923 ]
  %2926 = phi double* [ %2777, %2855 ], [ %2849, %2923 ]
  %2927 = getelementptr double, double* %2926, i64 -1
  %2928 = ptrtoint double* %2927 to i64
  %2929 = sub i64 %2928, %2779
  %2930 = lshr i64 %2929, 3
  %2931 = add nuw nsw i64 %2930, 1
  %2932 = and i64 %2931, 7
  %2933 = icmp eq i64 %2932, 0
  br i1 %2933, label %2946, label %2934

; <label>:2934:                                   ; preds = %2924
  br label %2935

; <label>:2935:                                   ; preds = %2935, %2934
  %2936 = phi double* [ %2942, %2935 ], [ %2925, %2934 ]
  %2937 = phi double* [ %2939, %2935 ], [ %2926, %2934 ]
  %2938 = phi i64 [ %2944, %2935 ], [ %2932, %2934 ]
  %2939 = getelementptr inbounds double, double* %2937, i64 -1
  %2940 = bitcast double* %2939 to i64*
  %2941 = load i64, i64* %2940, align 8, !tbaa !8
  %2942 = getelementptr inbounds double, double* %2936, i64 -1
  %2943 = bitcast double* %2942 to i64*
  store i64 %2941, i64* %2943, align 8, !tbaa !8
  %2944 = add i64 %2938, -1
  %2945 = icmp eq i64 %2944, 0
  br i1 %2945, label %2946, label %2935, !llvm.loop !89

; <label>:2946:                                   ; preds = %2935, %2924
  %2947 = phi double* [ %2925, %2924 ], [ %2942, %2935 ]
  %2948 = phi double* [ %2926, %2924 ], [ %2939, %2935 ]
  %2949 = icmp ult i64 %2929, 56
  br i1 %2949, label %2995, label %2950

; <label>:2950:                                   ; preds = %2946
  br label %2951

; <label>:2951:                                   ; preds = %2951, %2950
  %2952 = phi double* [ %2947, %2950 ], [ %2992, %2951 ]
  %2953 = phi double* [ %2948, %2950 ], [ %2989, %2951 ]
  %2954 = getelementptr inbounds double, double* %2953, i64 -1
  %2955 = bitcast double* %2954 to i64*
  %2956 = load i64, i64* %2955, align 8, !tbaa !8
  %2957 = getelementptr inbounds double, double* %2952, i64 -1
  %2958 = bitcast double* %2957 to i64*
  store i64 %2956, i64* %2958, align 8, !tbaa !8
  %2959 = getelementptr inbounds double, double* %2953, i64 -2
  %2960 = bitcast double* %2959 to i64*
  %2961 = load i64, i64* %2960, align 8, !tbaa !8
  %2962 = getelementptr inbounds double, double* %2952, i64 -2
  %2963 = bitcast double* %2962 to i64*
  store i64 %2961, i64* %2963, align 8, !tbaa !8
  %2964 = getelementptr inbounds double, double* %2953, i64 -3
  %2965 = bitcast double* %2964 to i64*
  %2966 = load i64, i64* %2965, align 8, !tbaa !8
  %2967 = getelementptr inbounds double, double* %2952, i64 -3
  %2968 = bitcast double* %2967 to i64*
  store i64 %2966, i64* %2968, align 8, !tbaa !8
  %2969 = getelementptr inbounds double, double* %2953, i64 -4
  %2970 = bitcast double* %2969 to i64*
  %2971 = load i64, i64* %2970, align 8, !tbaa !8
  %2972 = getelementptr inbounds double, double* %2952, i64 -4
  %2973 = bitcast double* %2972 to i64*
  store i64 %2971, i64* %2973, align 8, !tbaa !8
  %2974 = getelementptr inbounds double, double* %2953, i64 -5
  %2975 = bitcast double* %2974 to i64*
  %2976 = load i64, i64* %2975, align 8, !tbaa !8
  %2977 = getelementptr inbounds double, double* %2952, i64 -5
  %2978 = bitcast double* %2977 to i64*
  store i64 %2976, i64* %2978, align 8, !tbaa !8
  %2979 = getelementptr inbounds double, double* %2953, i64 -6
  %2980 = bitcast double* %2979 to i64*
  %2981 = load i64, i64* %2980, align 8, !tbaa !8
  %2982 = getelementptr inbounds double, double* %2952, i64 -6
  %2983 = bitcast double* %2982 to i64*
  store i64 %2981, i64* %2983, align 8, !tbaa !8
  %2984 = getelementptr inbounds double, double* %2953, i64 -7
  %2985 = bitcast double* %2984 to i64*
  %2986 = load i64, i64* %2985, align 8, !tbaa !8
  %2987 = getelementptr inbounds double, double* %2952, i64 -7
  %2988 = bitcast double* %2987 to i64*
  store i64 %2986, i64* %2988, align 8, !tbaa !8
  %2989 = getelementptr inbounds double, double* %2953, i64 -8
  %2990 = bitcast double* %2989 to i64*
  %2991 = load i64, i64* %2990, align 8, !tbaa !8
  %2992 = getelementptr inbounds double, double* %2952, i64 -8
  %2993 = bitcast double* %2992 to i64*
  store i64 %2991, i64* %2993, align 8, !tbaa !8
  %2994 = icmp eq double* %2989, %2778
  br i1 %2994, label %2995, label %2951, !llvm.loop !90

; <label>:2995:                                   ; preds = %2946, %2951, %2923
  store i64 %2780, i64* %2787, align 8, !tbaa !21
  store i64 %2781, i64* %2788, align 8, !tbaa !21
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_(%"class.std::reverse_iterator"* nonnull %3, %"class.std::reverse_iterator"* nonnull %4)
          to label %2996 unwind label %5072

; <label>:2996:                                   ; preds = %2995
  br i1 %2794, label %3011, label %2997

; <label>:2997:                                   ; preds = %2996
  br label %3000

; <label>:2998:                                   ; preds = %3000
  %2999 = icmp eq double* %3003, %2792
  br i1 %2999, label %3011, label %3000

; <label>:3000:                                   ; preds = %2997, %2998
  %3001 = phi double* [ %3003, %2998 ], [ %2793, %2997 ]
  %3002 = phi double* [ %3005, %2998 ], [ %2790, %2997 ]
  %3003 = getelementptr inbounds double, double* %3001, i64 -1
  %3004 = load double, double* %3003, align 8, !tbaa !8
  %3005 = getelementptr inbounds double, double* %3002, i64 -1
  %3006 = load double, double* %3005, align 8, !tbaa !8
  %3007 = fcmp olt double %3004, %3006
  br i1 %3007, label %3008, label %2998

; <label>:3008:                                   ; preds = %3000
  %3009 = load i32, i32* @current_test, align 4, !tbaa !6
  %3010 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %3009)
  br label %3011

; <label>:3011:                                   ; preds = %2998, %3008, %2996
  %3012 = add nuw nsw i32 %2856, 1
  %3013 = load i32, i32* @iterations, align 4, !tbaa !6
  %3014 = icmp slt i32 %3012, %3013
  br i1 %3014, label %2855, label %3015

; <label>:3015:                                   ; preds = %3011, %2813, %2776
  %3016 = phi i32 [ %2784, %2776 ], [ %2815, %2813 ], [ %3013, %3011 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2782)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2783)
  %3017 = load double*, double** %964, align 8, !tbaa !2, !noalias !91
  %3018 = load double*, double** %1160, align 8, !tbaa !2, !noalias !94
  %3019 = ptrtoint double* %3018 to i64
  %3020 = load i64, i64* %141, align 8, !tbaa !2, !noalias !97
  %3021 = load i64, i64* %142, align 8, !tbaa !2, !noalias !100
  %3022 = bitcast %"class.std::reverse_iterator.1"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3022)
  %3023 = bitcast %"class.std::reverse_iterator.1"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3023)
  %3024 = icmp sgt i32 %3016, 0
  br i1 %3024, label %3025, label %3254

; <label>:3025:                                   ; preds = %3015
  %3026 = bitcast %"class.std::reverse_iterator.1"* %5 to i64*
  %3027 = bitcast %"class.std::reverse_iterator.1"* %6 to i64*
  %3028 = icmp eq double* %3017, %3018
  %3029 = inttoptr i64 %3020 to double*
  %3030 = inttoptr i64 %3020 to i8*
  %3031 = inttoptr i64 %3021 to double*
  %3032 = getelementptr inbounds double, double* %3029, i64 -1
  %3033 = icmp eq double* %3032, %3031
  br i1 %3028, label %3034, label %3058

; <label>:3034:                                   ; preds = %3025
  br label %3035

; <label>:3035:                                   ; preds = %3034, %3052
  %3036 = phi i32 [ %3053, %3052 ], [ 0, %3034 ]
  store i64 %3020, i64* %3026, align 8, !tbaa !2
  store i64 %3021, i64* %3027, align 8, !tbaa !2
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* nonnull %5, %"class.std::reverse_iterator.1"* nonnull %6)
          to label %3037 unwind label %3056

; <label>:3037:                                   ; preds = %3035
  br i1 %3033, label %3052, label %3038

; <label>:3038:                                   ; preds = %3037
  br label %3039

; <label>:3039:                                   ; preds = %3038, %3047
  %3040 = phi double* [ %3042, %3047 ], [ %3032, %3038 ]
  %3041 = phi double* [ %3044, %3047 ], [ %3029, %3038 ]
  %3042 = getelementptr inbounds double, double* %3040, i64 -1
  %3043 = load double, double* %3042, align 8, !tbaa !8
  %3044 = getelementptr inbounds double, double* %3041, i64 -1
  %3045 = load double, double* %3044, align 8, !tbaa !8
  %3046 = fcmp olt double %3043, %3045
  br i1 %3046, label %3049, label %3047

; <label>:3047:                                   ; preds = %3039
  %3048 = icmp eq double* %3042, %3031
  br i1 %3048, label %3052, label %3039

; <label>:3049:                                   ; preds = %3039
  %3050 = load i32, i32* @current_test, align 4, !tbaa !6
  %3051 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %3050)
  br label %3052

; <label>:3052:                                   ; preds = %3047, %3049, %3037
  %3053 = add nuw nsw i32 %3036, 1
  %3054 = load i32, i32* @iterations, align 4, !tbaa !6
  %3055 = icmp slt i32 %3053, %3054
  br i1 %3055, label %3035, label %3254

; <label>:3056:                                   ; preds = %3035
  %3057 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:3058:                                   ; preds = %3025
  %3059 = getelementptr double, double* %3017, i64 -1
  %3060 = ptrtoint double* %3059 to i64
  %3061 = sub i64 %3060, %3019
  %3062 = lshr i64 %3061, 3
  %3063 = add nuw nsw i64 %3062, 1
  %3064 = getelementptr double, double* %3017, i64 -1
  %3065 = ptrtoint double* %3064 to i64
  %3066 = sub i64 %3065, %3019
  %3067 = lshr i64 %3066, 3
  %3068 = xor i64 %3067, -1
  %3069 = getelementptr double, double* %3029, i64 %3068
  %3070 = getelementptr double, double* %3017, i64 %3068
  %3071 = bitcast double* %3070 to i8*
  %3072 = and i64 %3063, 3
  %3073 = add nsw i64 %3072, -1
  %3074 = sub nsw i64 %3073, %3062
  %3075 = and i64 %3063, 3
  %3076 = add nsw i64 %3075, -1
  %3077 = sub nsw i64 %3076, %3062
  %3078 = and i64 %3063, 4611686018427387900
  %3079 = add nsw i64 %3078, -4
  %3080 = lshr exact i64 %3079, 2
  %3081 = add nuw nsw i64 %3080, 1
  %3082 = icmp ult i64 %3063, 4
  %3083 = icmp ult double* %3069, %3017
  %3084 = icmp ult i8* %3071, %3030
  %3085 = and i1 %3083, %3084
  %3086 = and i64 %3063, 4611686018427387900
  %3087 = getelementptr double, double* %3029, i64 %3074
  %3088 = getelementptr double, double* %3017, i64 %3077
  %3089 = and i64 %3081, 1
  %3090 = icmp eq i64 %3079, 0
  %3091 = sub nsw i64 %3081, %3089
  %3092 = icmp eq i64 %3089, 0
  %3093 = icmp eq i64 %3063, %3086
  br label %3094

; <label>:3094:                                   ; preds = %3250, %3058
  %3095 = phi i32 [ 0, %3058 ], [ %3251, %3250 ]
  %3096 = or i1 %3082, %3085
  br i1 %3096, label %3163, label %3097

; <label>:3097:                                   ; preds = %3094
  br i1 %3090, label %3141, label %3098

; <label>:3098:                                   ; preds = %3097
  br label %3099

; <label>:3099:                                   ; preds = %3099, %3098
  %3100 = phi i64 [ 0, %3098 ], [ %3138, %3099 ]
  %3101 = phi i64 [ %3091, %3098 ], [ %3139, %3099 ]
  %3102 = sub i64 0, %3100
  %3103 = getelementptr double, double* %3029, i64 %3102
  %3104 = sub i64 0, %3100
  %3105 = getelementptr double, double* %3017, i64 %3104
  %3106 = getelementptr inbounds double, double* %3105, i64 -1
  %3107 = getelementptr double, double* %3106, i64 -1
  %3108 = bitcast double* %3107 to <2 x i64>*
  %3109 = load <2 x i64>, <2 x i64>* %3108, align 8, !tbaa !8, !alias.scope !103
  %3110 = getelementptr double, double* %3106, i64 -2
  %3111 = getelementptr double, double* %3110, i64 -1
  %3112 = bitcast double* %3111 to <2 x i64>*
  %3113 = load <2 x i64>, <2 x i64>* %3112, align 8, !tbaa !8, !alias.scope !103
  %3114 = getelementptr inbounds double, double* %3103, i64 -1
  %3115 = getelementptr double, double* %3114, i64 -1
  %3116 = bitcast double* %3115 to <2 x i64>*
  store <2 x i64> %3109, <2 x i64>* %3116, align 8, !tbaa !8, !alias.scope !106, !noalias !103
  %3117 = getelementptr double, double* %3114, i64 -2
  %3118 = getelementptr double, double* %3117, i64 -1
  %3119 = bitcast double* %3118 to <2 x i64>*
  store <2 x i64> %3113, <2 x i64>* %3119, align 8, !tbaa !8, !alias.scope !106, !noalias !103
  %3120 = sub i64 -4, %3100
  %3121 = getelementptr double, double* %3029, i64 %3120
  %3122 = sub i64 -4, %3100
  %3123 = getelementptr double, double* %3017, i64 %3122
  %3124 = getelementptr inbounds double, double* %3123, i64 -1
  %3125 = getelementptr double, double* %3124, i64 -1
  %3126 = bitcast double* %3125 to <2 x i64>*
  %3127 = load <2 x i64>, <2 x i64>* %3126, align 8, !tbaa !8, !alias.scope !103
  %3128 = getelementptr double, double* %3124, i64 -2
  %3129 = getelementptr double, double* %3128, i64 -1
  %3130 = bitcast double* %3129 to <2 x i64>*
  %3131 = load <2 x i64>, <2 x i64>* %3130, align 8, !tbaa !8, !alias.scope !103
  %3132 = getelementptr inbounds double, double* %3121, i64 -1
  %3133 = getelementptr double, double* %3132, i64 -1
  %3134 = bitcast double* %3133 to <2 x i64>*
  store <2 x i64> %3127, <2 x i64>* %3134, align 8, !tbaa !8, !alias.scope !106, !noalias !103
  %3135 = getelementptr double, double* %3132, i64 -2
  %3136 = getelementptr double, double* %3135, i64 -1
  %3137 = bitcast double* %3136 to <2 x i64>*
  store <2 x i64> %3131, <2 x i64>* %3137, align 8, !tbaa !8, !alias.scope !106, !noalias !103
  %3138 = add i64 %3100, 8
  %3139 = add i64 %3101, -2
  %3140 = icmp eq i64 %3139, 0
  br i1 %3140, label %3141, label %3099, !llvm.loop !108

; <label>:3141:                                   ; preds = %3099, %3097
  %3142 = phi i64 [ 0, %3097 ], [ %3138, %3099 ]
  br i1 %3092, label %3162, label %3143

; <label>:3143:                                   ; preds = %3141
  %3144 = sub i64 0, %3142
  %3145 = getelementptr double, double* %3029, i64 %3144
  %3146 = sub i64 0, %3142
  %3147 = getelementptr double, double* %3017, i64 %3146
  %3148 = getelementptr inbounds double, double* %3147, i64 -1
  %3149 = getelementptr double, double* %3148, i64 -1
  %3150 = bitcast double* %3149 to <2 x i64>*
  %3151 = load <2 x i64>, <2 x i64>* %3150, align 8, !tbaa !8, !alias.scope !103
  %3152 = getelementptr double, double* %3148, i64 -2
  %3153 = getelementptr double, double* %3152, i64 -1
  %3154 = bitcast double* %3153 to <2 x i64>*
  %3155 = load <2 x i64>, <2 x i64>* %3154, align 8, !tbaa !8, !alias.scope !103
  %3156 = getelementptr inbounds double, double* %3145, i64 -1
  %3157 = getelementptr double, double* %3156, i64 -1
  %3158 = bitcast double* %3157 to <2 x i64>*
  store <2 x i64> %3151, <2 x i64>* %3158, align 8, !tbaa !8, !alias.scope !106, !noalias !103
  %3159 = getelementptr double, double* %3156, i64 -2
  %3160 = getelementptr double, double* %3159, i64 -1
  %3161 = bitcast double* %3160 to <2 x i64>*
  store <2 x i64> %3155, <2 x i64>* %3161, align 8, !tbaa !8, !alias.scope !106, !noalias !103
  br label %3162

; <label>:3162:                                   ; preds = %3141, %3143
  br i1 %3093, label %3234, label %3163

; <label>:3163:                                   ; preds = %3094, %3162
  %3164 = phi double* [ %3029, %3094 ], [ %3087, %3162 ]
  %3165 = phi double* [ %3017, %3094 ], [ %3088, %3162 ]
  %3166 = getelementptr double, double* %3165, i64 -1
  %3167 = ptrtoint double* %3166 to i64
  %3168 = sub i64 %3167, %3019
  %3169 = lshr i64 %3168, 3
  %3170 = add nuw nsw i64 %3169, 1
  %3171 = and i64 %3170, 7
  %3172 = icmp eq i64 %3171, 0
  br i1 %3172, label %3185, label %3173

; <label>:3173:                                   ; preds = %3163
  br label %3174

; <label>:3174:                                   ; preds = %3174, %3173
  %3175 = phi double* [ %3181, %3174 ], [ %3164, %3173 ]
  %3176 = phi double* [ %3178, %3174 ], [ %3165, %3173 ]
  %3177 = phi i64 [ %3183, %3174 ], [ %3171, %3173 ]
  %3178 = getelementptr inbounds double, double* %3176, i64 -1
  %3179 = bitcast double* %3178 to i64*
  %3180 = load i64, i64* %3179, align 8, !tbaa !8
  %3181 = getelementptr inbounds double, double* %3175, i64 -1
  %3182 = bitcast double* %3181 to i64*
  store i64 %3180, i64* %3182, align 8, !tbaa !8
  %3183 = add i64 %3177, -1
  %3184 = icmp eq i64 %3183, 0
  br i1 %3184, label %3185, label %3174, !llvm.loop !109

; <label>:3185:                                   ; preds = %3174, %3163
  %3186 = phi double* [ %3164, %3163 ], [ %3181, %3174 ]
  %3187 = phi double* [ %3165, %3163 ], [ %3178, %3174 ]
  %3188 = icmp ult i64 %3168, 56
  br i1 %3188, label %3234, label %3189

; <label>:3189:                                   ; preds = %3185
  br label %3190

; <label>:3190:                                   ; preds = %3190, %3189
  %3191 = phi double* [ %3186, %3189 ], [ %3231, %3190 ]
  %3192 = phi double* [ %3187, %3189 ], [ %3228, %3190 ]
  %3193 = getelementptr inbounds double, double* %3192, i64 -1
  %3194 = bitcast double* %3193 to i64*
  %3195 = load i64, i64* %3194, align 8, !tbaa !8
  %3196 = getelementptr inbounds double, double* %3191, i64 -1
  %3197 = bitcast double* %3196 to i64*
  store i64 %3195, i64* %3197, align 8, !tbaa !8
  %3198 = getelementptr inbounds double, double* %3192, i64 -2
  %3199 = bitcast double* %3198 to i64*
  %3200 = load i64, i64* %3199, align 8, !tbaa !8
  %3201 = getelementptr inbounds double, double* %3191, i64 -2
  %3202 = bitcast double* %3201 to i64*
  store i64 %3200, i64* %3202, align 8, !tbaa !8
  %3203 = getelementptr inbounds double, double* %3192, i64 -3
  %3204 = bitcast double* %3203 to i64*
  %3205 = load i64, i64* %3204, align 8, !tbaa !8
  %3206 = getelementptr inbounds double, double* %3191, i64 -3
  %3207 = bitcast double* %3206 to i64*
  store i64 %3205, i64* %3207, align 8, !tbaa !8
  %3208 = getelementptr inbounds double, double* %3192, i64 -4
  %3209 = bitcast double* %3208 to i64*
  %3210 = load i64, i64* %3209, align 8, !tbaa !8
  %3211 = getelementptr inbounds double, double* %3191, i64 -4
  %3212 = bitcast double* %3211 to i64*
  store i64 %3210, i64* %3212, align 8, !tbaa !8
  %3213 = getelementptr inbounds double, double* %3192, i64 -5
  %3214 = bitcast double* %3213 to i64*
  %3215 = load i64, i64* %3214, align 8, !tbaa !8
  %3216 = getelementptr inbounds double, double* %3191, i64 -5
  %3217 = bitcast double* %3216 to i64*
  store i64 %3215, i64* %3217, align 8, !tbaa !8
  %3218 = getelementptr inbounds double, double* %3192, i64 -6
  %3219 = bitcast double* %3218 to i64*
  %3220 = load i64, i64* %3219, align 8, !tbaa !8
  %3221 = getelementptr inbounds double, double* %3191, i64 -6
  %3222 = bitcast double* %3221 to i64*
  store i64 %3220, i64* %3222, align 8, !tbaa !8
  %3223 = getelementptr inbounds double, double* %3192, i64 -7
  %3224 = bitcast double* %3223 to i64*
  %3225 = load i64, i64* %3224, align 8, !tbaa !8
  %3226 = getelementptr inbounds double, double* %3191, i64 -7
  %3227 = bitcast double* %3226 to i64*
  store i64 %3225, i64* %3227, align 8, !tbaa !8
  %3228 = getelementptr inbounds double, double* %3192, i64 -8
  %3229 = bitcast double* %3228 to i64*
  %3230 = load i64, i64* %3229, align 8, !tbaa !8
  %3231 = getelementptr inbounds double, double* %3191, i64 -8
  %3232 = bitcast double* %3231 to i64*
  store i64 %3230, i64* %3232, align 8, !tbaa !8
  %3233 = icmp eq double* %3228, %3018
  br i1 %3233, label %3234, label %3190, !llvm.loop !110

; <label>:3234:                                   ; preds = %3185, %3190, %3162
  store i64 %3020, i64* %3026, align 8, !tbaa !2
  store i64 %3021, i64* %3027, align 8, !tbaa !2
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* nonnull %5, %"class.std::reverse_iterator.1"* nonnull %6)
          to label %3235 unwind label %5070

; <label>:3235:                                   ; preds = %3234
  br i1 %3033, label %3250, label %3236

; <label>:3236:                                   ; preds = %3235
  br label %3239

; <label>:3237:                                   ; preds = %3239
  %3238 = icmp eq double* %3242, %3031
  br i1 %3238, label %3250, label %3239

; <label>:3239:                                   ; preds = %3236, %3237
  %3240 = phi double* [ %3242, %3237 ], [ %3032, %3236 ]
  %3241 = phi double* [ %3244, %3237 ], [ %3029, %3236 ]
  %3242 = getelementptr inbounds double, double* %3240, i64 -1
  %3243 = load double, double* %3242, align 8, !tbaa !8
  %3244 = getelementptr inbounds double, double* %3241, i64 -1
  %3245 = load double, double* %3244, align 8, !tbaa !8
  %3246 = fcmp olt double %3243, %3245
  br i1 %3246, label %3247, label %3237

; <label>:3247:                                   ; preds = %3239
  %3248 = load i32, i32* @current_test, align 4, !tbaa !6
  %3249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %3248)
  br label %3250

; <label>:3250:                                   ; preds = %3237, %3247, %3235
  %3251 = add nuw nsw i32 %3095, 1
  %3252 = load i32, i32* @iterations, align 4, !tbaa !6
  %3253 = icmp slt i32 %3251, %3252
  br i1 %3253, label %3094, label %3254

; <label>:3254:                                   ; preds = %3250, %3052, %3015
  %3255 = phi i32 [ %3016, %3015 ], [ %3054, %3052 ], [ %3252, %3250 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3022)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3023)
  %3256 = bitcast %"class.std::reverse_iterator.1"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3256)
  %3257 = bitcast %"class.std::reverse_iterator.1"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3257)
  %3258 = icmp sgt i32 %3255, 0
  br i1 %3258, label %3259, label %3484

; <label>:3259:                                   ; preds = %3254
  %3260 = bitcast %"class.std::reverse_iterator.1"* %7 to i64*
  %3261 = bitcast %"class.std::reverse_iterator.1"* %8 to i64*
  %3262 = icmp eq double* %1164, %1159
  %3263 = getelementptr inbounds double, double* %147, i64 -1
  %3264 = icmp eq double* %3263, %145
  br i1 %3262, label %3265, label %3289

; <label>:3265:                                   ; preds = %3259
  br label %3266

; <label>:3266:                                   ; preds = %3265, %3283
  %3267 = phi i32 [ %3284, %3283 ], [ 0, %3265 ]
  store i64 %243, i64* %3260, align 8, !tbaa !2
  store i64 %146, i64* %3261, align 8, !tbaa !2
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* nonnull %7, %"class.std::reverse_iterator.1"* nonnull %8)
          to label %3268 unwind label %3287

; <label>:3268:                                   ; preds = %3266
  br i1 %3264, label %3283, label %3269

; <label>:3269:                                   ; preds = %3268
  br label %3270

; <label>:3270:                                   ; preds = %3269, %3278
  %3271 = phi double* [ %3273, %3278 ], [ %3263, %3269 ]
  %3272 = phi double* [ %3275, %3278 ], [ %147, %3269 ]
  %3273 = getelementptr inbounds double, double* %3271, i64 -1
  %3274 = load double, double* %3273, align 8, !tbaa !8
  %3275 = getelementptr inbounds double, double* %3272, i64 -1
  %3276 = load double, double* %3275, align 8, !tbaa !8
  %3277 = fcmp olt double %3274, %3276
  br i1 %3277, label %3280, label %3278

; <label>:3278:                                   ; preds = %3270
  %3279 = icmp eq double* %3273, %145
  br i1 %3279, label %3283, label %3270

; <label>:3280:                                   ; preds = %3270
  %3281 = load i32, i32* @current_test, align 4, !tbaa !6
  %3282 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %3281)
  br label %3283

; <label>:3283:                                   ; preds = %3278, %3280, %3268
  %3284 = add nuw nsw i32 %3267, 1
  %3285 = load i32, i32* @iterations, align 4, !tbaa !6
  %3286 = icmp slt i32 %3284, %3285
  br i1 %3286, label %3266, label %3484

; <label>:3287:                                   ; preds = %3266
  %3288 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:3289:                                   ; preds = %3259
  %3290 = getelementptr double, double* %1164, i64 -1
  %3291 = ptrtoint double* %3290 to i64
  %3292 = sub i64 %3291, %1163
  %3293 = lshr i64 %3292, 3
  %3294 = add nuw nsw i64 %3293, 1
  %3295 = getelementptr double, double* %1164, i64 -1
  %3296 = ptrtoint double* %3295 to i64
  %3297 = sub i64 %3296, %1163
  %3298 = lshr i64 %3297, 3
  %3299 = xor i64 %3298, -1
  %3300 = getelementptr double, double* %147, i64 %3299
  %3301 = getelementptr double, double* %1164, i64 %3299
  %3302 = and i64 %3294, 3
  %3303 = add nsw i64 %3302, -1
  %3304 = sub nsw i64 %3303, %3293
  %3305 = and i64 %3294, 3
  %3306 = add nsw i64 %3305, -1
  %3307 = sub nsw i64 %3306, %3293
  %3308 = and i64 %3294, 4611686018427387900
  %3309 = add nsw i64 %3308, -4
  %3310 = lshr exact i64 %3309, 2
  %3311 = add nuw nsw i64 %3310, 1
  %3312 = icmp ult i64 %3294, 4
  %3313 = icmp ult double* %3300, %1164
  %3314 = icmp ult double* %3301, %147
  %3315 = and i1 %3313, %3314
  %3316 = and i64 %3294, 4611686018427387900
  %3317 = getelementptr double, double* %147, i64 %3304
  %3318 = getelementptr double, double* %1164, i64 %3307
  %3319 = and i64 %3311, 1
  %3320 = icmp eq i64 %3309, 0
  %3321 = sub nsw i64 %3311, %3319
  %3322 = icmp eq i64 %3319, 0
  %3323 = icmp eq i64 %3294, %3316
  br label %3324

; <label>:3324:                                   ; preds = %3480, %3289
  %3325 = phi i32 [ 0, %3289 ], [ %3481, %3480 ]
  %3326 = or i1 %3312, %3315
  br i1 %3326, label %3393, label %3327

; <label>:3327:                                   ; preds = %3324
  br i1 %3320, label %3371, label %3328

; <label>:3328:                                   ; preds = %3327
  br label %3329

; <label>:3329:                                   ; preds = %3329, %3328
  %3330 = phi i64 [ 0, %3328 ], [ %3368, %3329 ]
  %3331 = phi i64 [ %3321, %3328 ], [ %3369, %3329 ]
  %3332 = sub i64 0, %3330
  %3333 = getelementptr double, double* %147, i64 %3332
  %3334 = sub i64 0, %3330
  %3335 = getelementptr double, double* %1164, i64 %3334
  %3336 = getelementptr inbounds double, double* %3335, i64 -1
  %3337 = getelementptr double, double* %3336, i64 -1
  %3338 = bitcast double* %3337 to <2 x i64>*
  %3339 = load <2 x i64>, <2 x i64>* %3338, align 8, !tbaa !8, !alias.scope !111
  %3340 = getelementptr double, double* %3336, i64 -2
  %3341 = getelementptr double, double* %3340, i64 -1
  %3342 = bitcast double* %3341 to <2 x i64>*
  %3343 = load <2 x i64>, <2 x i64>* %3342, align 8, !tbaa !8, !alias.scope !111
  %3344 = getelementptr inbounds double, double* %3333, i64 -1
  %3345 = getelementptr double, double* %3344, i64 -1
  %3346 = bitcast double* %3345 to <2 x i64>*
  store <2 x i64> %3339, <2 x i64>* %3346, align 8, !tbaa !8, !alias.scope !114, !noalias !111
  %3347 = getelementptr double, double* %3344, i64 -2
  %3348 = getelementptr double, double* %3347, i64 -1
  %3349 = bitcast double* %3348 to <2 x i64>*
  store <2 x i64> %3343, <2 x i64>* %3349, align 8, !tbaa !8, !alias.scope !114, !noalias !111
  %3350 = sub i64 -4, %3330
  %3351 = getelementptr double, double* %147, i64 %3350
  %3352 = sub i64 -4, %3330
  %3353 = getelementptr double, double* %1164, i64 %3352
  %3354 = getelementptr inbounds double, double* %3353, i64 -1
  %3355 = getelementptr double, double* %3354, i64 -1
  %3356 = bitcast double* %3355 to <2 x i64>*
  %3357 = load <2 x i64>, <2 x i64>* %3356, align 8, !tbaa !8, !alias.scope !111
  %3358 = getelementptr double, double* %3354, i64 -2
  %3359 = getelementptr double, double* %3358, i64 -1
  %3360 = bitcast double* %3359 to <2 x i64>*
  %3361 = load <2 x i64>, <2 x i64>* %3360, align 8, !tbaa !8, !alias.scope !111
  %3362 = getelementptr inbounds double, double* %3351, i64 -1
  %3363 = getelementptr double, double* %3362, i64 -1
  %3364 = bitcast double* %3363 to <2 x i64>*
  store <2 x i64> %3357, <2 x i64>* %3364, align 8, !tbaa !8, !alias.scope !114, !noalias !111
  %3365 = getelementptr double, double* %3362, i64 -2
  %3366 = getelementptr double, double* %3365, i64 -1
  %3367 = bitcast double* %3366 to <2 x i64>*
  store <2 x i64> %3361, <2 x i64>* %3367, align 8, !tbaa !8, !alias.scope !114, !noalias !111
  %3368 = add i64 %3330, 8
  %3369 = add i64 %3331, -2
  %3370 = icmp eq i64 %3369, 0
  br i1 %3370, label %3371, label %3329, !llvm.loop !116

; <label>:3371:                                   ; preds = %3329, %3327
  %3372 = phi i64 [ 0, %3327 ], [ %3368, %3329 ]
  br i1 %3322, label %3392, label %3373

; <label>:3373:                                   ; preds = %3371
  %3374 = sub i64 0, %3372
  %3375 = getelementptr double, double* %147, i64 %3374
  %3376 = sub i64 0, %3372
  %3377 = getelementptr double, double* %1164, i64 %3376
  %3378 = getelementptr inbounds double, double* %3377, i64 -1
  %3379 = getelementptr double, double* %3378, i64 -1
  %3380 = bitcast double* %3379 to <2 x i64>*
  %3381 = load <2 x i64>, <2 x i64>* %3380, align 8, !tbaa !8, !alias.scope !111
  %3382 = getelementptr double, double* %3378, i64 -2
  %3383 = getelementptr double, double* %3382, i64 -1
  %3384 = bitcast double* %3383 to <2 x i64>*
  %3385 = load <2 x i64>, <2 x i64>* %3384, align 8, !tbaa !8, !alias.scope !111
  %3386 = getelementptr inbounds double, double* %3375, i64 -1
  %3387 = getelementptr double, double* %3386, i64 -1
  %3388 = bitcast double* %3387 to <2 x i64>*
  store <2 x i64> %3381, <2 x i64>* %3388, align 8, !tbaa !8, !alias.scope !114, !noalias !111
  %3389 = getelementptr double, double* %3386, i64 -2
  %3390 = getelementptr double, double* %3389, i64 -1
  %3391 = bitcast double* %3390 to <2 x i64>*
  store <2 x i64> %3385, <2 x i64>* %3391, align 8, !tbaa !8, !alias.scope !114, !noalias !111
  br label %3392

; <label>:3392:                                   ; preds = %3371, %3373
  br i1 %3323, label %3464, label %3393

; <label>:3393:                                   ; preds = %3324, %3392
  %3394 = phi double* [ %147, %3324 ], [ %3317, %3392 ]
  %3395 = phi double* [ %1164, %3324 ], [ %3318, %3392 ]
  %3396 = getelementptr double, double* %3395, i64 -1
  %3397 = ptrtoint double* %3396 to i64
  %3398 = sub i64 %3397, %1163
  %3399 = lshr i64 %3398, 3
  %3400 = add nuw nsw i64 %3399, 1
  %3401 = and i64 %3400, 7
  %3402 = icmp eq i64 %3401, 0
  br i1 %3402, label %3415, label %3403

; <label>:3403:                                   ; preds = %3393
  br label %3404

; <label>:3404:                                   ; preds = %3404, %3403
  %3405 = phi double* [ %3411, %3404 ], [ %3394, %3403 ]
  %3406 = phi double* [ %3408, %3404 ], [ %3395, %3403 ]
  %3407 = phi i64 [ %3413, %3404 ], [ %3401, %3403 ]
  %3408 = getelementptr inbounds double, double* %3406, i64 -1
  %3409 = bitcast double* %3408 to i64*
  %3410 = load i64, i64* %3409, align 8, !tbaa !8
  %3411 = getelementptr inbounds double, double* %3405, i64 -1
  %3412 = bitcast double* %3411 to i64*
  store i64 %3410, i64* %3412, align 8, !tbaa !8
  %3413 = add i64 %3407, -1
  %3414 = icmp eq i64 %3413, 0
  br i1 %3414, label %3415, label %3404, !llvm.loop !117

; <label>:3415:                                   ; preds = %3404, %3393
  %3416 = phi double* [ %3394, %3393 ], [ %3411, %3404 ]
  %3417 = phi double* [ %3395, %3393 ], [ %3408, %3404 ]
  %3418 = icmp ult i64 %3398, 56
  br i1 %3418, label %3464, label %3419

; <label>:3419:                                   ; preds = %3415
  br label %3420

; <label>:3420:                                   ; preds = %3420, %3419
  %3421 = phi double* [ %3416, %3419 ], [ %3461, %3420 ]
  %3422 = phi double* [ %3417, %3419 ], [ %3458, %3420 ]
  %3423 = getelementptr inbounds double, double* %3422, i64 -1
  %3424 = bitcast double* %3423 to i64*
  %3425 = load i64, i64* %3424, align 8, !tbaa !8
  %3426 = getelementptr inbounds double, double* %3421, i64 -1
  %3427 = bitcast double* %3426 to i64*
  store i64 %3425, i64* %3427, align 8, !tbaa !8
  %3428 = getelementptr inbounds double, double* %3422, i64 -2
  %3429 = bitcast double* %3428 to i64*
  %3430 = load i64, i64* %3429, align 8, !tbaa !8
  %3431 = getelementptr inbounds double, double* %3421, i64 -2
  %3432 = bitcast double* %3431 to i64*
  store i64 %3430, i64* %3432, align 8, !tbaa !8
  %3433 = getelementptr inbounds double, double* %3422, i64 -3
  %3434 = bitcast double* %3433 to i64*
  %3435 = load i64, i64* %3434, align 8, !tbaa !8
  %3436 = getelementptr inbounds double, double* %3421, i64 -3
  %3437 = bitcast double* %3436 to i64*
  store i64 %3435, i64* %3437, align 8, !tbaa !8
  %3438 = getelementptr inbounds double, double* %3422, i64 -4
  %3439 = bitcast double* %3438 to i64*
  %3440 = load i64, i64* %3439, align 8, !tbaa !8
  %3441 = getelementptr inbounds double, double* %3421, i64 -4
  %3442 = bitcast double* %3441 to i64*
  store i64 %3440, i64* %3442, align 8, !tbaa !8
  %3443 = getelementptr inbounds double, double* %3422, i64 -5
  %3444 = bitcast double* %3443 to i64*
  %3445 = load i64, i64* %3444, align 8, !tbaa !8
  %3446 = getelementptr inbounds double, double* %3421, i64 -5
  %3447 = bitcast double* %3446 to i64*
  store i64 %3445, i64* %3447, align 8, !tbaa !8
  %3448 = getelementptr inbounds double, double* %3422, i64 -6
  %3449 = bitcast double* %3448 to i64*
  %3450 = load i64, i64* %3449, align 8, !tbaa !8
  %3451 = getelementptr inbounds double, double* %3421, i64 -6
  %3452 = bitcast double* %3451 to i64*
  store i64 %3450, i64* %3452, align 8, !tbaa !8
  %3453 = getelementptr inbounds double, double* %3422, i64 -7
  %3454 = bitcast double* %3453 to i64*
  %3455 = load i64, i64* %3454, align 8, !tbaa !8
  %3456 = getelementptr inbounds double, double* %3421, i64 -7
  %3457 = bitcast double* %3456 to i64*
  store i64 %3455, i64* %3457, align 8, !tbaa !8
  %3458 = getelementptr inbounds double, double* %3422, i64 -8
  %3459 = bitcast double* %3458 to i64*
  %3460 = load i64, i64* %3459, align 8, !tbaa !8
  %3461 = getelementptr inbounds double, double* %3421, i64 -8
  %3462 = bitcast double* %3461 to i64*
  store i64 %3460, i64* %3462, align 8, !tbaa !8
  %3463 = icmp eq double* %3458, %1159
  br i1 %3463, label %3464, label %3420, !llvm.loop !118

; <label>:3464:                                   ; preds = %3415, %3420, %3392
  store i64 %243, i64* %3260, align 8, !tbaa !2
  store i64 %146, i64* %3261, align 8, !tbaa !2
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* nonnull %7, %"class.std::reverse_iterator.1"* nonnull %8)
          to label %3465 unwind label %5068

; <label>:3465:                                   ; preds = %3464
  br i1 %3264, label %3480, label %3466

; <label>:3466:                                   ; preds = %3465
  br label %3469

; <label>:3467:                                   ; preds = %3469
  %3468 = icmp eq double* %3472, %145
  br i1 %3468, label %3480, label %3469

; <label>:3469:                                   ; preds = %3466, %3467
  %3470 = phi double* [ %3472, %3467 ], [ %3263, %3466 ]
  %3471 = phi double* [ %3474, %3467 ], [ %147, %3466 ]
  %3472 = getelementptr inbounds double, double* %3470, i64 -1
  %3473 = load double, double* %3472, align 8, !tbaa !8
  %3474 = getelementptr inbounds double, double* %3471, i64 -1
  %3475 = load double, double* %3474, align 8, !tbaa !8
  %3476 = fcmp olt double %3473, %3475
  br i1 %3476, label %3477, label %3467

; <label>:3477:                                   ; preds = %3469
  %3478 = load i32, i32* @current_test, align 4, !tbaa !6
  %3479 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %3478)
  br label %3480

; <label>:3480:                                   ; preds = %3467, %3477, %3465
  %3481 = add nuw nsw i32 %3325, 1
  %3482 = load i32, i32* @iterations, align 4, !tbaa !6
  %3483 = icmp slt i32 %3481, %3482
  br i1 %3483, label %3324, label %3484

; <label>:3484:                                   ; preds = %3480, %3283, %3254
  %3485 = phi i32 [ %3255, %3254 ], [ %3285, %3283 ], [ %3482, %3480 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3256)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3257)
  %3486 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* @rrdMpb, i64 0, i32 1, i32 0), align 8, !tbaa !21
  %3487 = ptrtoint double* %3486 to i64
  %3488 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* @rrdMpe, i64 0, i32 1, i32 0), align 8, !tbaa !21
  %3489 = load i64, i64* bitcast (%"class.std::reverse_iterator"* getelementptr inbounds (%"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* @rrdpb, i64 0, i32 1) to i64*), align 8, !tbaa !21
  %3490 = load i64, i64* bitcast (%"class.std::reverse_iterator"* getelementptr inbounds (%"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* @rrdpe, i64 0, i32 1) to i64*), align 8, !tbaa !21
  %3491 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %9, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3491)
  %3492 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %10, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3492)
  %3493 = icmp sgt i32 %3485, 0
  br i1 %3493, label %3494, label %3625

; <label>:3494:                                   ; preds = %3484
  %3495 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %9, i64 0, i32 1
  %3496 = bitcast %"class.std::reverse_iterator"* %3495 to i64*
  %3497 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %10, i64 0, i32 1
  %3498 = bitcast %"class.std::reverse_iterator"* %3497 to i64*
  %3499 = icmp eq double* %3486, %3488
  %3500 = inttoptr i64 %3489 to double*
  %3501 = inttoptr i64 %3490 to double*
  %3502 = getelementptr inbounds double, double* %3500, i64 1
  %3503 = icmp eq double* %3502, %3501
  br i1 %3499, label %3513, label %3504

; <label>:3504:                                   ; preds = %3494
  %3505 = getelementptr double, double* %3488, i64 -1
  %3506 = ptrtoint double* %3505 to i64
  %3507 = sub i64 %3506, %3487
  %3508 = lshr i64 %3507, 3
  %3509 = add nuw nsw i64 %3508, 1
  %3510 = and i64 %3509, 7
  %3511 = icmp eq i64 %3510, 0
  %3512 = icmp ult i64 %3507, 56
  br label %3537

; <label>:3513:                                   ; preds = %3494
  br label %3514

; <label>:3514:                                   ; preds = %3513, %3531
  %3515 = phi i32 [ %3532, %3531 ], [ 0, %3513 ]
  store i64 %3489, i64* %3496, align 8, !tbaa !21
  store i64 %3490, i64* %3498, align 8, !tbaa !21
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"* nonnull %9, %"class.std::reverse_iterator.0"* nonnull %10)
          to label %3516 unwind label %3535

; <label>:3516:                                   ; preds = %3514
  br i1 %3503, label %3531, label %3517

; <label>:3517:                                   ; preds = %3516
  br label %3518

; <label>:3518:                                   ; preds = %3517, %3525
  %3519 = phi double* [ %3521, %3525 ], [ %3502, %3517 ]
  %3520 = phi double* [ %3526, %3525 ], [ %3500, %3517 ]
  %3521 = getelementptr inbounds double, double* %3519, i64 1
  %3522 = load double, double* %3519, align 8, !tbaa !8
  %3523 = load double, double* %3520, align 8, !tbaa !8
  %3524 = fcmp olt double %3522, %3523
  br i1 %3524, label %3528, label %3525

; <label>:3525:                                   ; preds = %3518
  %3526 = getelementptr inbounds double, double* %3520, i64 1
  %3527 = icmp eq double* %3521, %3501
  br i1 %3527, label %3531, label %3518

; <label>:3528:                                   ; preds = %3518
  %3529 = load i32, i32* @current_test, align 4, !tbaa !6
  %3530 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %3529)
  br label %3531

; <label>:3531:                                   ; preds = %3525, %3528, %3516
  %3532 = add nuw nsw i32 %3515, 1
  %3533 = load i32, i32* @iterations, align 4, !tbaa !6
  %3534 = icmp slt i32 %3532, %3533
  br i1 %3534, label %3514, label %3625

; <label>:3535:                                   ; preds = %3514
  %3536 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:3537:                                   ; preds = %3504, %3621
  %3538 = phi i32 [ %3622, %3621 ], [ 0, %3504 ]
  br i1 %3511, label %3555, label %3539

; <label>:3539:                                   ; preds = %3537
  br label %3540

; <label>:3540:                                   ; preds = %3540, %3539
  %3541 = phi i64 [ %3489, %3539 ], [ %3549, %3540 ]
  %3542 = phi double* [ %3486, %3539 ], [ %3544, %3540 ]
  %3543 = phi i64 [ %3510, %3539 ], [ %3551, %3540 ]
  %3544 = getelementptr inbounds double, double* %3542, i64 1
  %3545 = bitcast double* %3542 to i64*
  %3546 = load i64, i64* %3545, align 8, !tbaa !8
  %3547 = inttoptr i64 %3541 to double*
  %3548 = getelementptr inbounds double, double* %3547, i64 1
  %3549 = ptrtoint double* %3548 to i64
  %3550 = inttoptr i64 %3541 to i64*
  store i64 %3546, i64* %3550, align 8, !tbaa !8
  %3551 = add i64 %3543, -1
  %3552 = icmp eq i64 %3551, 0
  br i1 %3552, label %3553, label %3540, !llvm.loop !119

; <label>:3553:                                   ; preds = %3540
  %3554 = ptrtoint double* %3548 to i64
  br label %3555

; <label>:3555:                                   ; preds = %3537, %3553
  %3556 = phi i64 [ %3489, %3537 ], [ %3554, %3553 ]
  %3557 = phi double* [ %3486, %3537 ], [ %3544, %3553 ]
  br i1 %3512, label %3605, label %3558

; <label>:3558:                                   ; preds = %3555
  br label %3559

; <label>:3559:                                   ; preds = %3559, %3558
  %3560 = phi i64 [ %3556, %3558 ], [ %3602, %3559 ]
  %3561 = phi double* [ %3557, %3558 ], [ %3598, %3559 ]
  %3562 = getelementptr inbounds double, double* %3561, i64 1
  %3563 = bitcast double* %3561 to i64*
  %3564 = load i64, i64* %3563, align 8, !tbaa !8
  %3565 = inttoptr i64 %3560 to double*
  %3566 = getelementptr inbounds double, double* %3565, i64 1
  %3567 = inttoptr i64 %3560 to i64*
  store i64 %3564, i64* %3567, align 8, !tbaa !8
  %3568 = getelementptr inbounds double, double* %3561, i64 2
  %3569 = bitcast double* %3562 to i64*
  %3570 = load i64, i64* %3569, align 8, !tbaa !8
  %3571 = getelementptr inbounds double, double* %3565, i64 2
  %3572 = bitcast double* %3566 to i64*
  store i64 %3570, i64* %3572, align 8, !tbaa !8
  %3573 = getelementptr inbounds double, double* %3561, i64 3
  %3574 = bitcast double* %3568 to i64*
  %3575 = load i64, i64* %3574, align 8, !tbaa !8
  %3576 = getelementptr inbounds double, double* %3565, i64 3
  %3577 = bitcast double* %3571 to i64*
  store i64 %3575, i64* %3577, align 8, !tbaa !8
  %3578 = getelementptr inbounds double, double* %3561, i64 4
  %3579 = bitcast double* %3573 to i64*
  %3580 = load i64, i64* %3579, align 8, !tbaa !8
  %3581 = getelementptr inbounds double, double* %3565, i64 4
  %3582 = bitcast double* %3576 to i64*
  store i64 %3580, i64* %3582, align 8, !tbaa !8
  %3583 = getelementptr inbounds double, double* %3561, i64 5
  %3584 = bitcast double* %3578 to i64*
  %3585 = load i64, i64* %3584, align 8, !tbaa !8
  %3586 = getelementptr inbounds double, double* %3565, i64 5
  %3587 = bitcast double* %3581 to i64*
  store i64 %3585, i64* %3587, align 8, !tbaa !8
  %3588 = getelementptr inbounds double, double* %3561, i64 6
  %3589 = bitcast double* %3583 to i64*
  %3590 = load i64, i64* %3589, align 8, !tbaa !8
  %3591 = getelementptr inbounds double, double* %3565, i64 6
  %3592 = bitcast double* %3586 to i64*
  store i64 %3590, i64* %3592, align 8, !tbaa !8
  %3593 = getelementptr inbounds double, double* %3561, i64 7
  %3594 = bitcast double* %3588 to i64*
  %3595 = load i64, i64* %3594, align 8, !tbaa !8
  %3596 = getelementptr inbounds double, double* %3565, i64 7
  %3597 = bitcast double* %3591 to i64*
  store i64 %3595, i64* %3597, align 8, !tbaa !8
  %3598 = getelementptr inbounds double, double* %3561, i64 8
  %3599 = bitcast double* %3593 to i64*
  %3600 = load i64, i64* %3599, align 8, !tbaa !8
  %3601 = getelementptr inbounds double, double* %3565, i64 8
  %3602 = ptrtoint double* %3601 to i64
  %3603 = bitcast double* %3596 to i64*
  store i64 %3600, i64* %3603, align 8, !tbaa !8
  %3604 = icmp eq double* %3598, %3488
  br i1 %3604, label %3605, label %3559

; <label>:3605:                                   ; preds = %3559, %3555
  store i64 %3489, i64* %3496, align 8, !tbaa !21
  store i64 %3490, i64* %3498, align 8, !tbaa !21
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"* nonnull %9, %"class.std::reverse_iterator.0"* nonnull %10)
          to label %3606 unwind label %5066

; <label>:3606:                                   ; preds = %3605
  br i1 %3503, label %3621, label %3607

; <label>:3607:                                   ; preds = %3606
  br label %3611

; <label>:3608:                                   ; preds = %3611
  %3609 = getelementptr inbounds double, double* %3613, i64 1
  %3610 = icmp eq double* %3614, %3501
  br i1 %3610, label %3621, label %3611

; <label>:3611:                                   ; preds = %3607, %3608
  %3612 = phi double* [ %3614, %3608 ], [ %3502, %3607 ]
  %3613 = phi double* [ %3609, %3608 ], [ %3500, %3607 ]
  %3614 = getelementptr inbounds double, double* %3612, i64 1
  %3615 = load double, double* %3612, align 8, !tbaa !8
  %3616 = load double, double* %3613, align 8, !tbaa !8
  %3617 = fcmp olt double %3615, %3616
  br i1 %3617, label %3618, label %3608

; <label>:3618:                                   ; preds = %3611
  %3619 = load i32, i32* @current_test, align 4, !tbaa !6
  %3620 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %3619)
  br label %3621

; <label>:3621:                                   ; preds = %3608, %3618, %3606
  %3622 = add nuw nsw i32 %3538, 1
  %3623 = load i32, i32* @iterations, align 4, !tbaa !6
  %3624 = icmp slt i32 %3622, %3623
  br i1 %3624, label %3537, label %3625

; <label>:3625:                                   ; preds = %3621, %3531, %3484
  %3626 = phi i32 [ %3485, %3484 ], [ %3533, %3531 ], [ %3623, %3621 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3491)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3492)
  %3627 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %11, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3627)
  %3628 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %12, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3628)
  %3629 = icmp sgt i32 %3626, 0
  br i1 %3629, label %3630, label %3759

; <label>:3630:                                   ; preds = %3625
  %3631 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %11, i64 0, i32 1
  %3632 = bitcast %"class.std::reverse_iterator.1"* %3631 to i64*
  %3633 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %12, i64 0, i32 1
  %3634 = bitcast %"class.std::reverse_iterator.1"* %3633 to i64*
  %3635 = icmp eq double* %1164, %1159
  %3636 = getelementptr inbounds double, double* %145, i64 1
  %3637 = icmp eq double* %3636, %147
  br i1 %3635, label %3647, label %3638

; <label>:3638:                                   ; preds = %3630
  %3639 = getelementptr double, double* %1164, i64 -1
  %3640 = ptrtoint double* %3639 to i64
  %3641 = sub i64 %3640, %1163
  %3642 = lshr i64 %3641, 3
  %3643 = add nuw nsw i64 %3642, 1
  %3644 = and i64 %3643, 7
  %3645 = icmp eq i64 %3644, 0
  %3646 = icmp ult i64 %3641, 56
  br label %3671

; <label>:3647:                                   ; preds = %3630
  br label %3648

; <label>:3648:                                   ; preds = %3647, %3665
  %3649 = phi i32 [ %3666, %3665 ], [ 0, %3647 ]
  store i64 %148, i64* %3632, align 8, !tbaa !2
  store i64 %149, i64* %3634, align 8, !tbaa !2
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* nonnull %11, %"class.std::reverse_iterator.2"* nonnull %12)
          to label %3650 unwind label %3669

; <label>:3650:                                   ; preds = %3648
  br i1 %3637, label %3665, label %3651

; <label>:3651:                                   ; preds = %3650
  br label %3652

; <label>:3652:                                   ; preds = %3651, %3659
  %3653 = phi double* [ %3655, %3659 ], [ %3636, %3651 ]
  %3654 = phi double* [ %3660, %3659 ], [ %145, %3651 ]
  %3655 = getelementptr inbounds double, double* %3653, i64 1
  %3656 = load double, double* %3653, align 8, !tbaa !8
  %3657 = load double, double* %3654, align 8, !tbaa !8
  %3658 = fcmp olt double %3656, %3657
  br i1 %3658, label %3662, label %3659

; <label>:3659:                                   ; preds = %3652
  %3660 = getelementptr inbounds double, double* %3654, i64 1
  %3661 = icmp eq double* %3655, %147
  br i1 %3661, label %3665, label %3652

; <label>:3662:                                   ; preds = %3652
  %3663 = load i32, i32* @current_test, align 4, !tbaa !6
  %3664 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %3663)
  br label %3665

; <label>:3665:                                   ; preds = %3659, %3662, %3650
  %3666 = add nuw nsw i32 %3649, 1
  %3667 = load i32, i32* @iterations, align 4, !tbaa !6
  %3668 = icmp slt i32 %3666, %3667
  br i1 %3668, label %3648, label %3759

; <label>:3669:                                   ; preds = %3648
  %3670 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:3671:                                   ; preds = %3638, %3755
  %3672 = phi i32 [ %3756, %3755 ], [ 0, %3638 ]
  br i1 %3645, label %3689, label %3673

; <label>:3673:                                   ; preds = %3671
  br label %3674

; <label>:3674:                                   ; preds = %3674, %3673
  %3675 = phi i64 [ %148, %3673 ], [ %3683, %3674 ]
  %3676 = phi double* [ %1159, %3673 ], [ %3678, %3674 ]
  %3677 = phi i64 [ %3644, %3673 ], [ %3685, %3674 ]
  %3678 = getelementptr inbounds double, double* %3676, i64 1
  %3679 = bitcast double* %3676 to i64*
  %3680 = load i64, i64* %3679, align 8, !tbaa !8
  %3681 = inttoptr i64 %3675 to double*
  %3682 = getelementptr inbounds double, double* %3681, i64 1
  %3683 = ptrtoint double* %3682 to i64
  %3684 = inttoptr i64 %3675 to i64*
  store i64 %3680, i64* %3684, align 8, !tbaa !8
  %3685 = add i64 %3677, -1
  %3686 = icmp eq i64 %3685, 0
  br i1 %3686, label %3687, label %3674, !llvm.loop !120

; <label>:3687:                                   ; preds = %3674
  %3688 = ptrtoint double* %3682 to i64
  br label %3689

; <label>:3689:                                   ; preds = %3671, %3687
  %3690 = phi i64 [ %148, %3671 ], [ %3688, %3687 ]
  %3691 = phi double* [ %1159, %3671 ], [ %3678, %3687 ]
  br i1 %3646, label %3739, label %3692

; <label>:3692:                                   ; preds = %3689
  br label %3693

; <label>:3693:                                   ; preds = %3693, %3692
  %3694 = phi i64 [ %3690, %3692 ], [ %3736, %3693 ]
  %3695 = phi double* [ %3691, %3692 ], [ %3732, %3693 ]
  %3696 = getelementptr inbounds double, double* %3695, i64 1
  %3697 = bitcast double* %3695 to i64*
  %3698 = load i64, i64* %3697, align 8, !tbaa !8
  %3699 = inttoptr i64 %3694 to double*
  %3700 = getelementptr inbounds double, double* %3699, i64 1
  %3701 = inttoptr i64 %3694 to i64*
  store i64 %3698, i64* %3701, align 8, !tbaa !8
  %3702 = getelementptr inbounds double, double* %3695, i64 2
  %3703 = bitcast double* %3696 to i64*
  %3704 = load i64, i64* %3703, align 8, !tbaa !8
  %3705 = getelementptr inbounds double, double* %3699, i64 2
  %3706 = bitcast double* %3700 to i64*
  store i64 %3704, i64* %3706, align 8, !tbaa !8
  %3707 = getelementptr inbounds double, double* %3695, i64 3
  %3708 = bitcast double* %3702 to i64*
  %3709 = load i64, i64* %3708, align 8, !tbaa !8
  %3710 = getelementptr inbounds double, double* %3699, i64 3
  %3711 = bitcast double* %3705 to i64*
  store i64 %3709, i64* %3711, align 8, !tbaa !8
  %3712 = getelementptr inbounds double, double* %3695, i64 4
  %3713 = bitcast double* %3707 to i64*
  %3714 = load i64, i64* %3713, align 8, !tbaa !8
  %3715 = getelementptr inbounds double, double* %3699, i64 4
  %3716 = bitcast double* %3710 to i64*
  store i64 %3714, i64* %3716, align 8, !tbaa !8
  %3717 = getelementptr inbounds double, double* %3695, i64 5
  %3718 = bitcast double* %3712 to i64*
  %3719 = load i64, i64* %3718, align 8, !tbaa !8
  %3720 = getelementptr inbounds double, double* %3699, i64 5
  %3721 = bitcast double* %3715 to i64*
  store i64 %3719, i64* %3721, align 8, !tbaa !8
  %3722 = getelementptr inbounds double, double* %3695, i64 6
  %3723 = bitcast double* %3717 to i64*
  %3724 = load i64, i64* %3723, align 8, !tbaa !8
  %3725 = getelementptr inbounds double, double* %3699, i64 6
  %3726 = bitcast double* %3720 to i64*
  store i64 %3724, i64* %3726, align 8, !tbaa !8
  %3727 = getelementptr inbounds double, double* %3695, i64 7
  %3728 = bitcast double* %3722 to i64*
  %3729 = load i64, i64* %3728, align 8, !tbaa !8
  %3730 = getelementptr inbounds double, double* %3699, i64 7
  %3731 = bitcast double* %3725 to i64*
  store i64 %3729, i64* %3731, align 8, !tbaa !8
  %3732 = getelementptr inbounds double, double* %3695, i64 8
  %3733 = bitcast double* %3727 to i64*
  %3734 = load i64, i64* %3733, align 8, !tbaa !8
  %3735 = getelementptr inbounds double, double* %3699, i64 8
  %3736 = ptrtoint double* %3735 to i64
  %3737 = bitcast double* %3730 to i64*
  store i64 %3734, i64* %3737, align 8, !tbaa !8
  %3738 = icmp eq double* %3732, %1164
  br i1 %3738, label %3739, label %3693

; <label>:3739:                                   ; preds = %3693, %3689
  store i64 %148, i64* %3632, align 8, !tbaa !2
  store i64 %149, i64* %3634, align 8, !tbaa !2
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* nonnull %11, %"class.std::reverse_iterator.2"* nonnull %12)
          to label %3740 unwind label %5064

; <label>:3740:                                   ; preds = %3739
  br i1 %3637, label %3755, label %3741

; <label>:3741:                                   ; preds = %3740
  br label %3745

; <label>:3742:                                   ; preds = %3745
  %3743 = getelementptr inbounds double, double* %3747, i64 1
  %3744 = icmp eq double* %3748, %147
  br i1 %3744, label %3755, label %3745

; <label>:3745:                                   ; preds = %3741, %3742
  %3746 = phi double* [ %3748, %3742 ], [ %3636, %3741 ]
  %3747 = phi double* [ %3743, %3742 ], [ %145, %3741 ]
  %3748 = getelementptr inbounds double, double* %3746, i64 1
  %3749 = load double, double* %3746, align 8, !tbaa !8
  %3750 = load double, double* %3747, align 8, !tbaa !8
  %3751 = fcmp olt double %3749, %3750
  br i1 %3751, label %3752, label %3742

; <label>:3752:                                   ; preds = %3745
  %3753 = load i32, i32* @current_test, align 4, !tbaa !6
  %3754 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %3753)
  br label %3755

; <label>:3755:                                   ; preds = %3742, %3752, %3740
  %3756 = add nuw nsw i32 %3672, 1
  %3757 = load i32, i32* @iterations, align 4, !tbaa !6
  %3758 = icmp slt i32 %3756, %3757
  br i1 %3758, label %3671, label %3759

; <label>:3759:                                   ; preds = %3755, %3665, %3625
  %3760 = phi i32 [ %3626, %3625 ], [ %3667, %3665 ], [ %3757, %3755 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3627)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3628)
  %3761 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %13, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3761)
  %3762 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %14, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3762)
  %3763 = icmp sgt i32 %3760, 0
  br i1 %3763, label %3764, label %3893

; <label>:3764:                                   ; preds = %3759
  %3765 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %13, i64 0, i32 1
  %3766 = bitcast %"class.std::reverse_iterator.1"* %3765 to i64*
  %3767 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %14, i64 0, i32 1
  %3768 = bitcast %"class.std::reverse_iterator.1"* %3767 to i64*
  %3769 = icmp eq double* %1159, %1164
  %3770 = getelementptr inbounds double, double* %145, i64 1
  %3771 = icmp eq double* %3770, %147
  br i1 %3769, label %3781, label %3772

; <label>:3772:                                   ; preds = %3764
  %3773 = getelementptr double, double* %1164, i64 -1
  %3774 = ptrtoint double* %3773 to i64
  %3775 = sub i64 %3774, %1163
  %3776 = lshr i64 %3775, 3
  %3777 = add nuw nsw i64 %3776, 1
  %3778 = and i64 %3777, 7
  %3779 = icmp eq i64 %3778, 0
  %3780 = icmp ult i64 %3775, 56
  br label %3805

; <label>:3781:                                   ; preds = %3764
  br label %3782

; <label>:3782:                                   ; preds = %3781, %3799
  %3783 = phi i32 [ %3800, %3799 ], [ 0, %3781 ]
  store i64 %146, i64* %3766, align 8, !tbaa !2
  store i64 %243, i64* %3768, align 8, !tbaa !2
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* nonnull %13, %"class.std::reverse_iterator.2"* nonnull %14)
          to label %3784 unwind label %3803

; <label>:3784:                                   ; preds = %3782
  br i1 %3771, label %3799, label %3785

; <label>:3785:                                   ; preds = %3784
  br label %3786

; <label>:3786:                                   ; preds = %3785, %3793
  %3787 = phi double* [ %3789, %3793 ], [ %3770, %3785 ]
  %3788 = phi double* [ %3794, %3793 ], [ %145, %3785 ]
  %3789 = getelementptr inbounds double, double* %3787, i64 1
  %3790 = load double, double* %3787, align 8, !tbaa !8
  %3791 = load double, double* %3788, align 8, !tbaa !8
  %3792 = fcmp olt double %3790, %3791
  br i1 %3792, label %3796, label %3793

; <label>:3793:                                   ; preds = %3786
  %3794 = getelementptr inbounds double, double* %3788, i64 1
  %3795 = icmp eq double* %3789, %147
  br i1 %3795, label %3799, label %3786

; <label>:3796:                                   ; preds = %3786
  %3797 = load i32, i32* @current_test, align 4, !tbaa !6
  %3798 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %3797)
  br label %3799

; <label>:3799:                                   ; preds = %3793, %3796, %3784
  %3800 = add nuw nsw i32 %3783, 1
  %3801 = load i32, i32* @iterations, align 4, !tbaa !6
  %3802 = icmp slt i32 %3800, %3801
  br i1 %3802, label %3782, label %3893

; <label>:3803:                                   ; preds = %3782
  %3804 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:3805:                                   ; preds = %3772, %3889
  %3806 = phi i32 [ %3890, %3889 ], [ 0, %3772 ]
  br i1 %3779, label %3823, label %3807

; <label>:3807:                                   ; preds = %3805
  br label %3808

; <label>:3808:                                   ; preds = %3808, %3807
  %3809 = phi i64 [ %146, %3807 ], [ %3817, %3808 ]
  %3810 = phi double* [ %1159, %3807 ], [ %3812, %3808 ]
  %3811 = phi i64 [ %3778, %3807 ], [ %3819, %3808 ]
  %3812 = getelementptr inbounds double, double* %3810, i64 1
  %3813 = bitcast double* %3810 to i64*
  %3814 = load i64, i64* %3813, align 8, !tbaa !8
  %3815 = inttoptr i64 %3809 to double*
  %3816 = getelementptr inbounds double, double* %3815, i64 1
  %3817 = ptrtoint double* %3816 to i64
  %3818 = inttoptr i64 %3809 to i64*
  store i64 %3814, i64* %3818, align 8, !tbaa !8
  %3819 = add i64 %3811, -1
  %3820 = icmp eq i64 %3819, 0
  br i1 %3820, label %3821, label %3808, !llvm.loop !121

; <label>:3821:                                   ; preds = %3808
  %3822 = ptrtoint double* %3816 to i64
  br label %3823

; <label>:3823:                                   ; preds = %3805, %3821
  %3824 = phi i64 [ %146, %3805 ], [ %3822, %3821 ]
  %3825 = phi double* [ %1159, %3805 ], [ %3812, %3821 ]
  br i1 %3780, label %3873, label %3826

; <label>:3826:                                   ; preds = %3823
  br label %3827

; <label>:3827:                                   ; preds = %3827, %3826
  %3828 = phi i64 [ %3824, %3826 ], [ %3870, %3827 ]
  %3829 = phi double* [ %3825, %3826 ], [ %3866, %3827 ]
  %3830 = getelementptr inbounds double, double* %3829, i64 1
  %3831 = bitcast double* %3829 to i64*
  %3832 = load i64, i64* %3831, align 8, !tbaa !8
  %3833 = inttoptr i64 %3828 to double*
  %3834 = getelementptr inbounds double, double* %3833, i64 1
  %3835 = inttoptr i64 %3828 to i64*
  store i64 %3832, i64* %3835, align 8, !tbaa !8
  %3836 = getelementptr inbounds double, double* %3829, i64 2
  %3837 = bitcast double* %3830 to i64*
  %3838 = load i64, i64* %3837, align 8, !tbaa !8
  %3839 = getelementptr inbounds double, double* %3833, i64 2
  %3840 = bitcast double* %3834 to i64*
  store i64 %3838, i64* %3840, align 8, !tbaa !8
  %3841 = getelementptr inbounds double, double* %3829, i64 3
  %3842 = bitcast double* %3836 to i64*
  %3843 = load i64, i64* %3842, align 8, !tbaa !8
  %3844 = getelementptr inbounds double, double* %3833, i64 3
  %3845 = bitcast double* %3839 to i64*
  store i64 %3843, i64* %3845, align 8, !tbaa !8
  %3846 = getelementptr inbounds double, double* %3829, i64 4
  %3847 = bitcast double* %3841 to i64*
  %3848 = load i64, i64* %3847, align 8, !tbaa !8
  %3849 = getelementptr inbounds double, double* %3833, i64 4
  %3850 = bitcast double* %3844 to i64*
  store i64 %3848, i64* %3850, align 8, !tbaa !8
  %3851 = getelementptr inbounds double, double* %3829, i64 5
  %3852 = bitcast double* %3846 to i64*
  %3853 = load i64, i64* %3852, align 8, !tbaa !8
  %3854 = getelementptr inbounds double, double* %3833, i64 5
  %3855 = bitcast double* %3849 to i64*
  store i64 %3853, i64* %3855, align 8, !tbaa !8
  %3856 = getelementptr inbounds double, double* %3829, i64 6
  %3857 = bitcast double* %3851 to i64*
  %3858 = load i64, i64* %3857, align 8, !tbaa !8
  %3859 = getelementptr inbounds double, double* %3833, i64 6
  %3860 = bitcast double* %3854 to i64*
  store i64 %3858, i64* %3860, align 8, !tbaa !8
  %3861 = getelementptr inbounds double, double* %3829, i64 7
  %3862 = bitcast double* %3856 to i64*
  %3863 = load i64, i64* %3862, align 8, !tbaa !8
  %3864 = getelementptr inbounds double, double* %3833, i64 7
  %3865 = bitcast double* %3859 to i64*
  store i64 %3863, i64* %3865, align 8, !tbaa !8
  %3866 = getelementptr inbounds double, double* %3829, i64 8
  %3867 = bitcast double* %3861 to i64*
  %3868 = load i64, i64* %3867, align 8, !tbaa !8
  %3869 = getelementptr inbounds double, double* %3833, i64 8
  %3870 = ptrtoint double* %3869 to i64
  %3871 = bitcast double* %3864 to i64*
  store i64 %3868, i64* %3871, align 8, !tbaa !8
  %3872 = icmp eq double* %3866, %1164
  br i1 %3872, label %3873, label %3827

; <label>:3873:                                   ; preds = %3827, %3823
  store i64 %146, i64* %3766, align 8, !tbaa !2
  store i64 %243, i64* %3768, align 8, !tbaa !2
  invoke void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* nonnull %13, %"class.std::reverse_iterator.2"* nonnull %14)
          to label %3874 unwind label %5062

; <label>:3874:                                   ; preds = %3873
  br i1 %3771, label %3889, label %3875

; <label>:3875:                                   ; preds = %3874
  br label %3879

; <label>:3876:                                   ; preds = %3879
  %3877 = getelementptr inbounds double, double* %3881, i64 1
  %3878 = icmp eq double* %3882, %147
  br i1 %3878, label %3889, label %3879

; <label>:3879:                                   ; preds = %3875, %3876
  %3880 = phi double* [ %3882, %3876 ], [ %3770, %3875 ]
  %3881 = phi double* [ %3877, %3876 ], [ %145, %3875 ]
  %3882 = getelementptr inbounds double, double* %3880, i64 1
  %3883 = load double, double* %3880, align 8, !tbaa !8
  %3884 = load double, double* %3881, align 8, !tbaa !8
  %3885 = fcmp olt double %3883, %3884
  br i1 %3885, label %3886, label %3876

; <label>:3886:                                   ; preds = %3879
  %3887 = load i32, i32* @current_test, align 4, !tbaa !6
  %3888 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %3887)
  br label %3889

; <label>:3889:                                   ; preds = %3876, %3886, %3874
  %3890 = add nuw nsw i32 %3806, 1
  %3891 = load i32, i32* @iterations, align 4, !tbaa !6
  %3892 = icmp slt i32 %3890, %3891
  br i1 %3892, label %3805, label %3893

; <label>:3893:                                   ; preds = %3889, %3799, %3759
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3761)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3762)
  %3894 = load double*, double** @dMpb, align 8, !tbaa !2
  %3895 = load double*, double** @dMpe, align 8, !tbaa !2
  %3896 = load double*, double** @dpb, align 8, !tbaa !2
  %3897 = load double*, double** @dpe, align 8, !tbaa !2
  invoke void @_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc(double* %3894, double* %3895, double* %3896, double* %3897, double 0.000000e+00, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i64 0, i64 0))
          to label %3898 unwind label %5074

; <label>:3898:                                   ; preds = %3893
  %3899 = load double*, double** %1160, align 8, !tbaa !2
  %3900 = load double*, double** %964, align 8, !tbaa !2
  %3901 = load double*, double** %150, align 8, !tbaa !2
  %3902 = load double*, double** %140, align 8, !tbaa !2
  invoke void @_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(double* %3899, double* %3900, double* %3901, double* %3902, double 0.000000e+00, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i64 0, i64 0))
          to label %3903 unwind label %5074

; <label>:3903:                                   ; preds = %3898
  %3904 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator", %"class.std::reverse_iterator"* @rdMpb, i64 0, i32 0), align 8, !tbaa !21
  %3905 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator", %"class.std::reverse_iterator"* @rdMpe, i64 0, i32 0), align 8, !tbaa !21
  %3906 = ptrtoint double* %3905 to i64
  %3907 = load i64, i64* bitcast (%"class.std::reverse_iterator"* @rdpb to i64*), align 8, !tbaa !21
  %3908 = load i64, i64* bitcast (%"class.std::reverse_iterator"* @rdpe to i64*), align 8, !tbaa !21
  %3909 = bitcast %"class.std::reverse_iterator"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3909)
  %3910 = bitcast %"class.std::reverse_iterator"* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3910)
  %3911 = load i32, i32* @iterations, align 4, !tbaa !6
  %3912 = icmp sgt i32 %3911, 0
  br i1 %3912, label %3913, label %4142

; <label>:3913:                                   ; preds = %3903
  %3914 = bitcast %"class.std::reverse_iterator"* %15 to i64*
  %3915 = bitcast %"class.std::reverse_iterator"* %16 to i64*
  %3916 = icmp eq double* %3904, %3905
  %3917 = inttoptr i64 %3907 to double*
  %3918 = inttoptr i64 %3907 to i8*
  %3919 = inttoptr i64 %3908 to double*
  %3920 = getelementptr inbounds double, double* %3917, i64 -1
  %3921 = icmp eq double* %3920, %3919
  br i1 %3916, label %3922, label %3946

; <label>:3922:                                   ; preds = %3913
  br label %3923

; <label>:3923:                                   ; preds = %3922, %3940
  %3924 = phi i32 [ %3941, %3940 ], [ 0, %3922 ]
  store i64 %3907, i64* %3914, align 8, !tbaa !21
  store i64 %3908, i64* %3915, align 8, !tbaa !21
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_(%"class.std::reverse_iterator"* nonnull %15, %"class.std::reverse_iterator"* nonnull %16)
          to label %3925 unwind label %3944

; <label>:3925:                                   ; preds = %3923
  br i1 %3921, label %3940, label %3926

; <label>:3926:                                   ; preds = %3925
  br label %3927

; <label>:3927:                                   ; preds = %3926, %3935
  %3928 = phi double* [ %3930, %3935 ], [ %3920, %3926 ]
  %3929 = phi double* [ %3932, %3935 ], [ %3917, %3926 ]
  %3930 = getelementptr inbounds double, double* %3928, i64 -1
  %3931 = load double, double* %3930, align 8, !tbaa !8
  %3932 = getelementptr inbounds double, double* %3929, i64 -1
  %3933 = load double, double* %3932, align 8, !tbaa !8
  %3934 = fcmp olt double %3931, %3933
  br i1 %3934, label %3937, label %3935

; <label>:3935:                                   ; preds = %3927
  %3936 = icmp eq double* %3930, %3919
  br i1 %3936, label %3940, label %3927

; <label>:3937:                                   ; preds = %3927
  %3938 = load i32, i32* @current_test, align 4, !tbaa !6
  %3939 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %3938)
  br label %3940

; <label>:3940:                                   ; preds = %3935, %3937, %3925
  %3941 = add nuw nsw i32 %3924, 1
  %3942 = load i32, i32* @iterations, align 4, !tbaa !6
  %3943 = icmp slt i32 %3941, %3942
  br i1 %3943, label %3923, label %4142

; <label>:3944:                                   ; preds = %3923
  %3945 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:3946:                                   ; preds = %3913
  %3947 = getelementptr double, double* %3904, i64 -1
  %3948 = ptrtoint double* %3947 to i64
  %3949 = sub i64 %3948, %3906
  %3950 = lshr i64 %3949, 3
  %3951 = add nuw nsw i64 %3950, 1
  %3952 = getelementptr double, double* %3904, i64 -1
  %3953 = ptrtoint double* %3952 to i64
  %3954 = sub i64 %3953, %3906
  %3955 = lshr i64 %3954, 3
  %3956 = xor i64 %3955, -1
  %3957 = getelementptr double, double* %3917, i64 %3956
  %3958 = getelementptr double, double* %3904, i64 %3956
  %3959 = bitcast double* %3958 to i8*
  %3960 = and i64 %3951, 3
  %3961 = add nsw i64 %3960, -1
  %3962 = sub nsw i64 %3961, %3950
  %3963 = and i64 %3951, 3
  %3964 = add nsw i64 %3963, -1
  %3965 = sub nsw i64 %3964, %3950
  %3966 = and i64 %3951, 4611686018427387900
  %3967 = add nsw i64 %3966, -4
  %3968 = lshr exact i64 %3967, 2
  %3969 = add nuw nsw i64 %3968, 1
  %3970 = icmp ult i64 %3951, 4
  %3971 = icmp ult double* %3957, %3904
  %3972 = icmp ult i8* %3959, %3918
  %3973 = and i1 %3971, %3972
  %3974 = and i64 %3951, 4611686018427387900
  %3975 = getelementptr double, double* %3917, i64 %3962
  %3976 = getelementptr double, double* %3904, i64 %3965
  %3977 = and i64 %3969, 1
  %3978 = icmp eq i64 %3967, 0
  %3979 = sub nsw i64 %3969, %3977
  %3980 = icmp eq i64 %3977, 0
  %3981 = icmp eq i64 %3951, %3974
  br label %3982

; <label>:3982:                                   ; preds = %4138, %3946
  %3983 = phi i32 [ 0, %3946 ], [ %4139, %4138 ]
  %3984 = or i1 %3970, %3973
  br i1 %3984, label %4051, label %3985

; <label>:3985:                                   ; preds = %3982
  br i1 %3978, label %4029, label %3986

; <label>:3986:                                   ; preds = %3985
  br label %3987

; <label>:3987:                                   ; preds = %3987, %3986
  %3988 = phi i64 [ 0, %3986 ], [ %4026, %3987 ]
  %3989 = phi i64 [ %3979, %3986 ], [ %4027, %3987 ]
  %3990 = sub i64 0, %3988
  %3991 = getelementptr double, double* %3917, i64 %3990
  %3992 = sub i64 0, %3988
  %3993 = getelementptr double, double* %3904, i64 %3992
  %3994 = getelementptr inbounds double, double* %3993, i64 -1
  %3995 = getelementptr double, double* %3994, i64 -1
  %3996 = bitcast double* %3995 to <2 x i64>*
  %3997 = load <2 x i64>, <2 x i64>* %3996, align 8, !tbaa !8, !alias.scope !122
  %3998 = getelementptr double, double* %3994, i64 -2
  %3999 = getelementptr double, double* %3998, i64 -1
  %4000 = bitcast double* %3999 to <2 x i64>*
  %4001 = load <2 x i64>, <2 x i64>* %4000, align 8, !tbaa !8, !alias.scope !122
  %4002 = getelementptr inbounds double, double* %3991, i64 -1
  %4003 = getelementptr double, double* %4002, i64 -1
  %4004 = bitcast double* %4003 to <2 x i64>*
  store <2 x i64> %3997, <2 x i64>* %4004, align 8, !tbaa !8, !alias.scope !125, !noalias !122
  %4005 = getelementptr double, double* %4002, i64 -2
  %4006 = getelementptr double, double* %4005, i64 -1
  %4007 = bitcast double* %4006 to <2 x i64>*
  store <2 x i64> %4001, <2 x i64>* %4007, align 8, !tbaa !8, !alias.scope !125, !noalias !122
  %4008 = sub i64 -4, %3988
  %4009 = getelementptr double, double* %3917, i64 %4008
  %4010 = sub i64 -4, %3988
  %4011 = getelementptr double, double* %3904, i64 %4010
  %4012 = getelementptr inbounds double, double* %4011, i64 -1
  %4013 = getelementptr double, double* %4012, i64 -1
  %4014 = bitcast double* %4013 to <2 x i64>*
  %4015 = load <2 x i64>, <2 x i64>* %4014, align 8, !tbaa !8, !alias.scope !122
  %4016 = getelementptr double, double* %4012, i64 -2
  %4017 = getelementptr double, double* %4016, i64 -1
  %4018 = bitcast double* %4017 to <2 x i64>*
  %4019 = load <2 x i64>, <2 x i64>* %4018, align 8, !tbaa !8, !alias.scope !122
  %4020 = getelementptr inbounds double, double* %4009, i64 -1
  %4021 = getelementptr double, double* %4020, i64 -1
  %4022 = bitcast double* %4021 to <2 x i64>*
  store <2 x i64> %4015, <2 x i64>* %4022, align 8, !tbaa !8, !alias.scope !125, !noalias !122
  %4023 = getelementptr double, double* %4020, i64 -2
  %4024 = getelementptr double, double* %4023, i64 -1
  %4025 = bitcast double* %4024 to <2 x i64>*
  store <2 x i64> %4019, <2 x i64>* %4025, align 8, !tbaa !8, !alias.scope !125, !noalias !122
  %4026 = add i64 %3988, 8
  %4027 = add i64 %3989, -2
  %4028 = icmp eq i64 %4027, 0
  br i1 %4028, label %4029, label %3987, !llvm.loop !127

; <label>:4029:                                   ; preds = %3987, %3985
  %4030 = phi i64 [ 0, %3985 ], [ %4026, %3987 ]
  br i1 %3980, label %4050, label %4031

; <label>:4031:                                   ; preds = %4029
  %4032 = sub i64 0, %4030
  %4033 = getelementptr double, double* %3917, i64 %4032
  %4034 = sub i64 0, %4030
  %4035 = getelementptr double, double* %3904, i64 %4034
  %4036 = getelementptr inbounds double, double* %4035, i64 -1
  %4037 = getelementptr double, double* %4036, i64 -1
  %4038 = bitcast double* %4037 to <2 x i64>*
  %4039 = load <2 x i64>, <2 x i64>* %4038, align 8, !tbaa !8, !alias.scope !122
  %4040 = getelementptr double, double* %4036, i64 -2
  %4041 = getelementptr double, double* %4040, i64 -1
  %4042 = bitcast double* %4041 to <2 x i64>*
  %4043 = load <2 x i64>, <2 x i64>* %4042, align 8, !tbaa !8, !alias.scope !122
  %4044 = getelementptr inbounds double, double* %4033, i64 -1
  %4045 = getelementptr double, double* %4044, i64 -1
  %4046 = bitcast double* %4045 to <2 x i64>*
  store <2 x i64> %4039, <2 x i64>* %4046, align 8, !tbaa !8, !alias.scope !125, !noalias !122
  %4047 = getelementptr double, double* %4044, i64 -2
  %4048 = getelementptr double, double* %4047, i64 -1
  %4049 = bitcast double* %4048 to <2 x i64>*
  store <2 x i64> %4043, <2 x i64>* %4049, align 8, !tbaa !8, !alias.scope !125, !noalias !122
  br label %4050

; <label>:4050:                                   ; preds = %4029, %4031
  br i1 %3981, label %4122, label %4051

; <label>:4051:                                   ; preds = %3982, %4050
  %4052 = phi double* [ %3917, %3982 ], [ %3975, %4050 ]
  %4053 = phi double* [ %3904, %3982 ], [ %3976, %4050 ]
  %4054 = getelementptr double, double* %4053, i64 -1
  %4055 = ptrtoint double* %4054 to i64
  %4056 = sub i64 %4055, %3906
  %4057 = lshr i64 %4056, 3
  %4058 = add nuw nsw i64 %4057, 1
  %4059 = and i64 %4058, 7
  %4060 = icmp eq i64 %4059, 0
  br i1 %4060, label %4073, label %4061

; <label>:4061:                                   ; preds = %4051
  br label %4062

; <label>:4062:                                   ; preds = %4062, %4061
  %4063 = phi double* [ %4069, %4062 ], [ %4052, %4061 ]
  %4064 = phi double* [ %4066, %4062 ], [ %4053, %4061 ]
  %4065 = phi i64 [ %4071, %4062 ], [ %4059, %4061 ]
  %4066 = getelementptr inbounds double, double* %4064, i64 -1
  %4067 = bitcast double* %4066 to i64*
  %4068 = load i64, i64* %4067, align 8, !tbaa !8
  %4069 = getelementptr inbounds double, double* %4063, i64 -1
  %4070 = bitcast double* %4069 to i64*
  store i64 %4068, i64* %4070, align 8, !tbaa !8
  %4071 = add i64 %4065, -1
  %4072 = icmp eq i64 %4071, 0
  br i1 %4072, label %4073, label %4062, !llvm.loop !128

; <label>:4073:                                   ; preds = %4062, %4051
  %4074 = phi double* [ %4052, %4051 ], [ %4069, %4062 ]
  %4075 = phi double* [ %4053, %4051 ], [ %4066, %4062 ]
  %4076 = icmp ult i64 %4056, 56
  br i1 %4076, label %4122, label %4077

; <label>:4077:                                   ; preds = %4073
  br label %4078

; <label>:4078:                                   ; preds = %4078, %4077
  %4079 = phi double* [ %4074, %4077 ], [ %4119, %4078 ]
  %4080 = phi double* [ %4075, %4077 ], [ %4116, %4078 ]
  %4081 = getelementptr inbounds double, double* %4080, i64 -1
  %4082 = bitcast double* %4081 to i64*
  %4083 = load i64, i64* %4082, align 8, !tbaa !8
  %4084 = getelementptr inbounds double, double* %4079, i64 -1
  %4085 = bitcast double* %4084 to i64*
  store i64 %4083, i64* %4085, align 8, !tbaa !8
  %4086 = getelementptr inbounds double, double* %4080, i64 -2
  %4087 = bitcast double* %4086 to i64*
  %4088 = load i64, i64* %4087, align 8, !tbaa !8
  %4089 = getelementptr inbounds double, double* %4079, i64 -2
  %4090 = bitcast double* %4089 to i64*
  store i64 %4088, i64* %4090, align 8, !tbaa !8
  %4091 = getelementptr inbounds double, double* %4080, i64 -3
  %4092 = bitcast double* %4091 to i64*
  %4093 = load i64, i64* %4092, align 8, !tbaa !8
  %4094 = getelementptr inbounds double, double* %4079, i64 -3
  %4095 = bitcast double* %4094 to i64*
  store i64 %4093, i64* %4095, align 8, !tbaa !8
  %4096 = getelementptr inbounds double, double* %4080, i64 -4
  %4097 = bitcast double* %4096 to i64*
  %4098 = load i64, i64* %4097, align 8, !tbaa !8
  %4099 = getelementptr inbounds double, double* %4079, i64 -4
  %4100 = bitcast double* %4099 to i64*
  store i64 %4098, i64* %4100, align 8, !tbaa !8
  %4101 = getelementptr inbounds double, double* %4080, i64 -5
  %4102 = bitcast double* %4101 to i64*
  %4103 = load i64, i64* %4102, align 8, !tbaa !8
  %4104 = getelementptr inbounds double, double* %4079, i64 -5
  %4105 = bitcast double* %4104 to i64*
  store i64 %4103, i64* %4105, align 8, !tbaa !8
  %4106 = getelementptr inbounds double, double* %4080, i64 -6
  %4107 = bitcast double* %4106 to i64*
  %4108 = load i64, i64* %4107, align 8, !tbaa !8
  %4109 = getelementptr inbounds double, double* %4079, i64 -6
  %4110 = bitcast double* %4109 to i64*
  store i64 %4108, i64* %4110, align 8, !tbaa !8
  %4111 = getelementptr inbounds double, double* %4080, i64 -7
  %4112 = bitcast double* %4111 to i64*
  %4113 = load i64, i64* %4112, align 8, !tbaa !8
  %4114 = getelementptr inbounds double, double* %4079, i64 -7
  %4115 = bitcast double* %4114 to i64*
  store i64 %4113, i64* %4115, align 8, !tbaa !8
  %4116 = getelementptr inbounds double, double* %4080, i64 -8
  %4117 = bitcast double* %4116 to i64*
  %4118 = load i64, i64* %4117, align 8, !tbaa !8
  %4119 = getelementptr inbounds double, double* %4079, i64 -8
  %4120 = bitcast double* %4119 to i64*
  store i64 %4118, i64* %4120, align 8, !tbaa !8
  %4121 = icmp eq double* %4116, %3905
  br i1 %4121, label %4122, label %4078, !llvm.loop !129

; <label>:4122:                                   ; preds = %4073, %4078, %4050
  store i64 %3907, i64* %3914, align 8, !tbaa !21
  store i64 %3908, i64* %3915, align 8, !tbaa !21
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_(%"class.std::reverse_iterator"* nonnull %15, %"class.std::reverse_iterator"* nonnull %16)
          to label %4123 unwind label %5060

; <label>:4123:                                   ; preds = %4122
  br i1 %3921, label %4138, label %4124

; <label>:4124:                                   ; preds = %4123
  br label %4127

; <label>:4125:                                   ; preds = %4127
  %4126 = icmp eq double* %4130, %3919
  br i1 %4126, label %4138, label %4127

; <label>:4127:                                   ; preds = %4124, %4125
  %4128 = phi double* [ %4130, %4125 ], [ %3920, %4124 ]
  %4129 = phi double* [ %4132, %4125 ], [ %3917, %4124 ]
  %4130 = getelementptr inbounds double, double* %4128, i64 -1
  %4131 = load double, double* %4130, align 8, !tbaa !8
  %4132 = getelementptr inbounds double, double* %4129, i64 -1
  %4133 = load double, double* %4132, align 8, !tbaa !8
  %4134 = fcmp olt double %4131, %4133
  br i1 %4134, label %4135, label %4125

; <label>:4135:                                   ; preds = %4127
  %4136 = load i32, i32* @current_test, align 4, !tbaa !6
  %4137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %4136)
  br label %4138

; <label>:4138:                                   ; preds = %4125, %4135, %4123
  %4139 = add nuw nsw i32 %3983, 1
  %4140 = load i32, i32* @iterations, align 4, !tbaa !6
  %4141 = icmp slt i32 %4139, %4140
  br i1 %4141, label %3982, label %4142

; <label>:4142:                                   ; preds = %4138, %3940, %3903
  %4143 = phi i32 [ %3911, %3903 ], [ %3942, %3940 ], [ %4140, %4138 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3909)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3910)
  %4144 = load double*, double** %964, align 8, !tbaa !2, !noalias !130
  %4145 = load double*, double** %1160, align 8, !tbaa !2, !noalias !133
  %4146 = ptrtoint double* %4145 to i64
  %4147 = load i64, i64* %141, align 8, !tbaa !2, !noalias !136
  %4148 = load i64, i64* %142, align 8, !tbaa !2, !noalias !139
  %4149 = bitcast %"class.std::reverse_iterator.1"* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4149)
  %4150 = bitcast %"class.std::reverse_iterator.1"* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4150)
  %4151 = icmp sgt i32 %4143, 0
  br i1 %4151, label %4152, label %4381

; <label>:4152:                                   ; preds = %4142
  %4153 = bitcast %"class.std::reverse_iterator.1"* %17 to i64*
  %4154 = bitcast %"class.std::reverse_iterator.1"* %18 to i64*
  %4155 = icmp eq double* %4144, %4145
  %4156 = inttoptr i64 %4147 to double*
  %4157 = inttoptr i64 %4147 to i8*
  %4158 = inttoptr i64 %4148 to double*
  %4159 = getelementptr inbounds double, double* %4156, i64 -1
  %4160 = icmp eq double* %4159, %4158
  br i1 %4155, label %4161, label %4185

; <label>:4161:                                   ; preds = %4152
  br label %4162

; <label>:4162:                                   ; preds = %4161, %4179
  %4163 = phi i32 [ %4180, %4179 ], [ 0, %4161 ]
  store i64 %4147, i64* %4153, align 8, !tbaa !2
  store i64 %4148, i64* %4154, align 8, !tbaa !2
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* nonnull %17, %"class.std::reverse_iterator.1"* nonnull %18)
          to label %4164 unwind label %4183

; <label>:4164:                                   ; preds = %4162
  br i1 %4160, label %4179, label %4165

; <label>:4165:                                   ; preds = %4164
  br label %4166

; <label>:4166:                                   ; preds = %4165, %4174
  %4167 = phi double* [ %4169, %4174 ], [ %4159, %4165 ]
  %4168 = phi double* [ %4171, %4174 ], [ %4156, %4165 ]
  %4169 = getelementptr inbounds double, double* %4167, i64 -1
  %4170 = load double, double* %4169, align 8, !tbaa !8
  %4171 = getelementptr inbounds double, double* %4168, i64 -1
  %4172 = load double, double* %4171, align 8, !tbaa !8
  %4173 = fcmp olt double %4170, %4172
  br i1 %4173, label %4176, label %4174

; <label>:4174:                                   ; preds = %4166
  %4175 = icmp eq double* %4169, %4158
  br i1 %4175, label %4179, label %4166

; <label>:4176:                                   ; preds = %4166
  %4177 = load i32, i32* @current_test, align 4, !tbaa !6
  %4178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %4177)
  br label %4179

; <label>:4179:                                   ; preds = %4174, %4176, %4164
  %4180 = add nuw nsw i32 %4163, 1
  %4181 = load i32, i32* @iterations, align 4, !tbaa !6
  %4182 = icmp slt i32 %4180, %4181
  br i1 %4182, label %4162, label %4381

; <label>:4183:                                   ; preds = %4162
  %4184 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:4185:                                   ; preds = %4152
  %4186 = getelementptr double, double* %4144, i64 -1
  %4187 = ptrtoint double* %4186 to i64
  %4188 = sub i64 %4187, %4146
  %4189 = lshr i64 %4188, 3
  %4190 = add nuw nsw i64 %4189, 1
  %4191 = getelementptr double, double* %4144, i64 -1
  %4192 = ptrtoint double* %4191 to i64
  %4193 = sub i64 %4192, %4146
  %4194 = lshr i64 %4193, 3
  %4195 = xor i64 %4194, -1
  %4196 = getelementptr double, double* %4156, i64 %4195
  %4197 = getelementptr double, double* %4144, i64 %4195
  %4198 = bitcast double* %4197 to i8*
  %4199 = and i64 %4190, 3
  %4200 = add nsw i64 %4199, -1
  %4201 = sub nsw i64 %4200, %4189
  %4202 = and i64 %4190, 3
  %4203 = add nsw i64 %4202, -1
  %4204 = sub nsw i64 %4203, %4189
  %4205 = and i64 %4190, 4611686018427387900
  %4206 = add nsw i64 %4205, -4
  %4207 = lshr exact i64 %4206, 2
  %4208 = add nuw nsw i64 %4207, 1
  %4209 = icmp ult i64 %4190, 4
  %4210 = icmp ult double* %4196, %4144
  %4211 = icmp ult i8* %4198, %4157
  %4212 = and i1 %4210, %4211
  %4213 = and i64 %4190, 4611686018427387900
  %4214 = getelementptr double, double* %4156, i64 %4201
  %4215 = getelementptr double, double* %4144, i64 %4204
  %4216 = and i64 %4208, 1
  %4217 = icmp eq i64 %4206, 0
  %4218 = sub nsw i64 %4208, %4216
  %4219 = icmp eq i64 %4216, 0
  %4220 = icmp eq i64 %4190, %4213
  br label %4221

; <label>:4221:                                   ; preds = %4377, %4185
  %4222 = phi i32 [ 0, %4185 ], [ %4378, %4377 ]
  %4223 = or i1 %4209, %4212
  br i1 %4223, label %4290, label %4224

; <label>:4224:                                   ; preds = %4221
  br i1 %4217, label %4268, label %4225

; <label>:4225:                                   ; preds = %4224
  br label %4226

; <label>:4226:                                   ; preds = %4226, %4225
  %4227 = phi i64 [ 0, %4225 ], [ %4265, %4226 ]
  %4228 = phi i64 [ %4218, %4225 ], [ %4266, %4226 ]
  %4229 = sub i64 0, %4227
  %4230 = getelementptr double, double* %4156, i64 %4229
  %4231 = sub i64 0, %4227
  %4232 = getelementptr double, double* %4144, i64 %4231
  %4233 = getelementptr inbounds double, double* %4232, i64 -1
  %4234 = getelementptr double, double* %4233, i64 -1
  %4235 = bitcast double* %4234 to <2 x i64>*
  %4236 = load <2 x i64>, <2 x i64>* %4235, align 8, !tbaa !8, !alias.scope !142
  %4237 = getelementptr double, double* %4233, i64 -2
  %4238 = getelementptr double, double* %4237, i64 -1
  %4239 = bitcast double* %4238 to <2 x i64>*
  %4240 = load <2 x i64>, <2 x i64>* %4239, align 8, !tbaa !8, !alias.scope !142
  %4241 = getelementptr inbounds double, double* %4230, i64 -1
  %4242 = getelementptr double, double* %4241, i64 -1
  %4243 = bitcast double* %4242 to <2 x i64>*
  store <2 x i64> %4236, <2 x i64>* %4243, align 8, !tbaa !8, !alias.scope !145, !noalias !142
  %4244 = getelementptr double, double* %4241, i64 -2
  %4245 = getelementptr double, double* %4244, i64 -1
  %4246 = bitcast double* %4245 to <2 x i64>*
  store <2 x i64> %4240, <2 x i64>* %4246, align 8, !tbaa !8, !alias.scope !145, !noalias !142
  %4247 = sub i64 -4, %4227
  %4248 = getelementptr double, double* %4156, i64 %4247
  %4249 = sub i64 -4, %4227
  %4250 = getelementptr double, double* %4144, i64 %4249
  %4251 = getelementptr inbounds double, double* %4250, i64 -1
  %4252 = getelementptr double, double* %4251, i64 -1
  %4253 = bitcast double* %4252 to <2 x i64>*
  %4254 = load <2 x i64>, <2 x i64>* %4253, align 8, !tbaa !8, !alias.scope !142
  %4255 = getelementptr double, double* %4251, i64 -2
  %4256 = getelementptr double, double* %4255, i64 -1
  %4257 = bitcast double* %4256 to <2 x i64>*
  %4258 = load <2 x i64>, <2 x i64>* %4257, align 8, !tbaa !8, !alias.scope !142
  %4259 = getelementptr inbounds double, double* %4248, i64 -1
  %4260 = getelementptr double, double* %4259, i64 -1
  %4261 = bitcast double* %4260 to <2 x i64>*
  store <2 x i64> %4254, <2 x i64>* %4261, align 8, !tbaa !8, !alias.scope !145, !noalias !142
  %4262 = getelementptr double, double* %4259, i64 -2
  %4263 = getelementptr double, double* %4262, i64 -1
  %4264 = bitcast double* %4263 to <2 x i64>*
  store <2 x i64> %4258, <2 x i64>* %4264, align 8, !tbaa !8, !alias.scope !145, !noalias !142
  %4265 = add i64 %4227, 8
  %4266 = add i64 %4228, -2
  %4267 = icmp eq i64 %4266, 0
  br i1 %4267, label %4268, label %4226, !llvm.loop !147

; <label>:4268:                                   ; preds = %4226, %4224
  %4269 = phi i64 [ 0, %4224 ], [ %4265, %4226 ]
  br i1 %4219, label %4289, label %4270

; <label>:4270:                                   ; preds = %4268
  %4271 = sub i64 0, %4269
  %4272 = getelementptr double, double* %4156, i64 %4271
  %4273 = sub i64 0, %4269
  %4274 = getelementptr double, double* %4144, i64 %4273
  %4275 = getelementptr inbounds double, double* %4274, i64 -1
  %4276 = getelementptr double, double* %4275, i64 -1
  %4277 = bitcast double* %4276 to <2 x i64>*
  %4278 = load <2 x i64>, <2 x i64>* %4277, align 8, !tbaa !8, !alias.scope !142
  %4279 = getelementptr double, double* %4275, i64 -2
  %4280 = getelementptr double, double* %4279, i64 -1
  %4281 = bitcast double* %4280 to <2 x i64>*
  %4282 = load <2 x i64>, <2 x i64>* %4281, align 8, !tbaa !8, !alias.scope !142
  %4283 = getelementptr inbounds double, double* %4272, i64 -1
  %4284 = getelementptr double, double* %4283, i64 -1
  %4285 = bitcast double* %4284 to <2 x i64>*
  store <2 x i64> %4278, <2 x i64>* %4285, align 8, !tbaa !8, !alias.scope !145, !noalias !142
  %4286 = getelementptr double, double* %4283, i64 -2
  %4287 = getelementptr double, double* %4286, i64 -1
  %4288 = bitcast double* %4287 to <2 x i64>*
  store <2 x i64> %4282, <2 x i64>* %4288, align 8, !tbaa !8, !alias.scope !145, !noalias !142
  br label %4289

; <label>:4289:                                   ; preds = %4268, %4270
  br i1 %4220, label %4361, label %4290

; <label>:4290:                                   ; preds = %4221, %4289
  %4291 = phi double* [ %4156, %4221 ], [ %4214, %4289 ]
  %4292 = phi double* [ %4144, %4221 ], [ %4215, %4289 ]
  %4293 = getelementptr double, double* %4292, i64 -1
  %4294 = ptrtoint double* %4293 to i64
  %4295 = sub i64 %4294, %4146
  %4296 = lshr i64 %4295, 3
  %4297 = add nuw nsw i64 %4296, 1
  %4298 = and i64 %4297, 7
  %4299 = icmp eq i64 %4298, 0
  br i1 %4299, label %4312, label %4300

; <label>:4300:                                   ; preds = %4290
  br label %4301

; <label>:4301:                                   ; preds = %4301, %4300
  %4302 = phi double* [ %4308, %4301 ], [ %4291, %4300 ]
  %4303 = phi double* [ %4305, %4301 ], [ %4292, %4300 ]
  %4304 = phi i64 [ %4310, %4301 ], [ %4298, %4300 ]
  %4305 = getelementptr inbounds double, double* %4303, i64 -1
  %4306 = bitcast double* %4305 to i64*
  %4307 = load i64, i64* %4306, align 8, !tbaa !8
  %4308 = getelementptr inbounds double, double* %4302, i64 -1
  %4309 = bitcast double* %4308 to i64*
  store i64 %4307, i64* %4309, align 8, !tbaa !8
  %4310 = add i64 %4304, -1
  %4311 = icmp eq i64 %4310, 0
  br i1 %4311, label %4312, label %4301, !llvm.loop !148

; <label>:4312:                                   ; preds = %4301, %4290
  %4313 = phi double* [ %4291, %4290 ], [ %4308, %4301 ]
  %4314 = phi double* [ %4292, %4290 ], [ %4305, %4301 ]
  %4315 = icmp ult i64 %4295, 56
  br i1 %4315, label %4361, label %4316

; <label>:4316:                                   ; preds = %4312
  br label %4317

; <label>:4317:                                   ; preds = %4317, %4316
  %4318 = phi double* [ %4313, %4316 ], [ %4358, %4317 ]
  %4319 = phi double* [ %4314, %4316 ], [ %4355, %4317 ]
  %4320 = getelementptr inbounds double, double* %4319, i64 -1
  %4321 = bitcast double* %4320 to i64*
  %4322 = load i64, i64* %4321, align 8, !tbaa !8
  %4323 = getelementptr inbounds double, double* %4318, i64 -1
  %4324 = bitcast double* %4323 to i64*
  store i64 %4322, i64* %4324, align 8, !tbaa !8
  %4325 = getelementptr inbounds double, double* %4319, i64 -2
  %4326 = bitcast double* %4325 to i64*
  %4327 = load i64, i64* %4326, align 8, !tbaa !8
  %4328 = getelementptr inbounds double, double* %4318, i64 -2
  %4329 = bitcast double* %4328 to i64*
  store i64 %4327, i64* %4329, align 8, !tbaa !8
  %4330 = getelementptr inbounds double, double* %4319, i64 -3
  %4331 = bitcast double* %4330 to i64*
  %4332 = load i64, i64* %4331, align 8, !tbaa !8
  %4333 = getelementptr inbounds double, double* %4318, i64 -3
  %4334 = bitcast double* %4333 to i64*
  store i64 %4332, i64* %4334, align 8, !tbaa !8
  %4335 = getelementptr inbounds double, double* %4319, i64 -4
  %4336 = bitcast double* %4335 to i64*
  %4337 = load i64, i64* %4336, align 8, !tbaa !8
  %4338 = getelementptr inbounds double, double* %4318, i64 -4
  %4339 = bitcast double* %4338 to i64*
  store i64 %4337, i64* %4339, align 8, !tbaa !8
  %4340 = getelementptr inbounds double, double* %4319, i64 -5
  %4341 = bitcast double* %4340 to i64*
  %4342 = load i64, i64* %4341, align 8, !tbaa !8
  %4343 = getelementptr inbounds double, double* %4318, i64 -5
  %4344 = bitcast double* %4343 to i64*
  store i64 %4342, i64* %4344, align 8, !tbaa !8
  %4345 = getelementptr inbounds double, double* %4319, i64 -6
  %4346 = bitcast double* %4345 to i64*
  %4347 = load i64, i64* %4346, align 8, !tbaa !8
  %4348 = getelementptr inbounds double, double* %4318, i64 -6
  %4349 = bitcast double* %4348 to i64*
  store i64 %4347, i64* %4349, align 8, !tbaa !8
  %4350 = getelementptr inbounds double, double* %4319, i64 -7
  %4351 = bitcast double* %4350 to i64*
  %4352 = load i64, i64* %4351, align 8, !tbaa !8
  %4353 = getelementptr inbounds double, double* %4318, i64 -7
  %4354 = bitcast double* %4353 to i64*
  store i64 %4352, i64* %4354, align 8, !tbaa !8
  %4355 = getelementptr inbounds double, double* %4319, i64 -8
  %4356 = bitcast double* %4355 to i64*
  %4357 = load i64, i64* %4356, align 8, !tbaa !8
  %4358 = getelementptr inbounds double, double* %4318, i64 -8
  %4359 = bitcast double* %4358 to i64*
  store i64 %4357, i64* %4359, align 8, !tbaa !8
  %4360 = icmp eq double* %4355, %4145
  br i1 %4360, label %4361, label %4317, !llvm.loop !149

; <label>:4361:                                   ; preds = %4312, %4317, %4289
  store i64 %4147, i64* %4153, align 8, !tbaa !2
  store i64 %4148, i64* %4154, align 8, !tbaa !2
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* nonnull %17, %"class.std::reverse_iterator.1"* nonnull %18)
          to label %4362 unwind label %5058

; <label>:4362:                                   ; preds = %4361
  br i1 %4160, label %4377, label %4363

; <label>:4363:                                   ; preds = %4362
  br label %4366

; <label>:4364:                                   ; preds = %4366
  %4365 = icmp eq double* %4369, %4158
  br i1 %4365, label %4377, label %4366

; <label>:4366:                                   ; preds = %4363, %4364
  %4367 = phi double* [ %4369, %4364 ], [ %4159, %4363 ]
  %4368 = phi double* [ %4371, %4364 ], [ %4156, %4363 ]
  %4369 = getelementptr inbounds double, double* %4367, i64 -1
  %4370 = load double, double* %4369, align 8, !tbaa !8
  %4371 = getelementptr inbounds double, double* %4368, i64 -1
  %4372 = load double, double* %4371, align 8, !tbaa !8
  %4373 = fcmp olt double %4370, %4372
  br i1 %4373, label %4374, label %4364

; <label>:4374:                                   ; preds = %4366
  %4375 = load i32, i32* @current_test, align 4, !tbaa !6
  %4376 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %4375)
  br label %4377

; <label>:4377:                                   ; preds = %4364, %4374, %4362
  %4378 = add nuw nsw i32 %4222, 1
  %4379 = load i32, i32* @iterations, align 4, !tbaa !6
  %4380 = icmp slt i32 %4378, %4379
  br i1 %4380, label %4221, label %4381

; <label>:4381:                                   ; preds = %4377, %4179, %4142
  %4382 = phi i32 [ %4143, %4142 ], [ %4181, %4179 ], [ %4379, %4377 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4149)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4150)
  %4383 = bitcast %"class.std::reverse_iterator.1"* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4383)
  %4384 = bitcast %"class.std::reverse_iterator.1"* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4384)
  %4385 = icmp sgt i32 %4382, 0
  br i1 %4385, label %4386, label %4611

; <label>:4386:                                   ; preds = %4381
  %4387 = bitcast %"class.std::reverse_iterator.1"* %19 to i64*
  %4388 = bitcast %"class.std::reverse_iterator.1"* %20 to i64*
  %4389 = icmp eq double* %1164, %1159
  %4390 = getelementptr inbounds double, double* %147, i64 -1
  %4391 = icmp eq double* %4390, %145
  br i1 %4389, label %4392, label %4416

; <label>:4392:                                   ; preds = %4386
  br label %4393

; <label>:4393:                                   ; preds = %4392, %4410
  %4394 = phi i32 [ %4411, %4410 ], [ 0, %4392 ]
  store i64 %243, i64* %4387, align 8, !tbaa !2
  store i64 %146, i64* %4388, align 8, !tbaa !2
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* nonnull %19, %"class.std::reverse_iterator.1"* nonnull %20)
          to label %4395 unwind label %4414

; <label>:4395:                                   ; preds = %4393
  br i1 %4391, label %4410, label %4396

; <label>:4396:                                   ; preds = %4395
  br label %4397

; <label>:4397:                                   ; preds = %4396, %4405
  %4398 = phi double* [ %4400, %4405 ], [ %4390, %4396 ]
  %4399 = phi double* [ %4402, %4405 ], [ %147, %4396 ]
  %4400 = getelementptr inbounds double, double* %4398, i64 -1
  %4401 = load double, double* %4400, align 8, !tbaa !8
  %4402 = getelementptr inbounds double, double* %4399, i64 -1
  %4403 = load double, double* %4402, align 8, !tbaa !8
  %4404 = fcmp olt double %4401, %4403
  br i1 %4404, label %4407, label %4405

; <label>:4405:                                   ; preds = %4397
  %4406 = icmp eq double* %4400, %145
  br i1 %4406, label %4410, label %4397

; <label>:4407:                                   ; preds = %4397
  %4408 = load i32, i32* @current_test, align 4, !tbaa !6
  %4409 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %4408)
  br label %4410

; <label>:4410:                                   ; preds = %4405, %4407, %4395
  %4411 = add nuw nsw i32 %4394, 1
  %4412 = load i32, i32* @iterations, align 4, !tbaa !6
  %4413 = icmp slt i32 %4411, %4412
  br i1 %4413, label %4393, label %4611

; <label>:4414:                                   ; preds = %4393
  %4415 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:4416:                                   ; preds = %4386
  %4417 = getelementptr double, double* %1164, i64 -1
  %4418 = ptrtoint double* %4417 to i64
  %4419 = sub i64 %4418, %1163
  %4420 = lshr i64 %4419, 3
  %4421 = add nuw nsw i64 %4420, 1
  %4422 = getelementptr double, double* %1164, i64 -1
  %4423 = ptrtoint double* %4422 to i64
  %4424 = sub i64 %4423, %1163
  %4425 = lshr i64 %4424, 3
  %4426 = xor i64 %4425, -1
  %4427 = getelementptr double, double* %147, i64 %4426
  %4428 = getelementptr double, double* %1164, i64 %4426
  %4429 = and i64 %4421, 3
  %4430 = add nsw i64 %4429, -1
  %4431 = sub nsw i64 %4430, %4420
  %4432 = and i64 %4421, 3
  %4433 = add nsw i64 %4432, -1
  %4434 = sub nsw i64 %4433, %4420
  %4435 = and i64 %4421, 4611686018427387900
  %4436 = add nsw i64 %4435, -4
  %4437 = lshr exact i64 %4436, 2
  %4438 = add nuw nsw i64 %4437, 1
  %4439 = icmp ult i64 %4421, 4
  %4440 = icmp ult double* %4427, %1164
  %4441 = icmp ult double* %4428, %147
  %4442 = and i1 %4440, %4441
  %4443 = and i64 %4421, 4611686018427387900
  %4444 = getelementptr double, double* %147, i64 %4431
  %4445 = getelementptr double, double* %1164, i64 %4434
  %4446 = and i64 %4438, 1
  %4447 = icmp eq i64 %4436, 0
  %4448 = sub nsw i64 %4438, %4446
  %4449 = icmp eq i64 %4446, 0
  %4450 = icmp eq i64 %4421, %4443
  br label %4451

; <label>:4451:                                   ; preds = %4607, %4416
  %4452 = phi i32 [ 0, %4416 ], [ %4608, %4607 ]
  %4453 = or i1 %4439, %4442
  br i1 %4453, label %4520, label %4454

; <label>:4454:                                   ; preds = %4451
  br i1 %4447, label %4498, label %4455

; <label>:4455:                                   ; preds = %4454
  br label %4456

; <label>:4456:                                   ; preds = %4456, %4455
  %4457 = phi i64 [ 0, %4455 ], [ %4495, %4456 ]
  %4458 = phi i64 [ %4448, %4455 ], [ %4496, %4456 ]
  %4459 = sub i64 0, %4457
  %4460 = getelementptr double, double* %147, i64 %4459
  %4461 = sub i64 0, %4457
  %4462 = getelementptr double, double* %1164, i64 %4461
  %4463 = getelementptr inbounds double, double* %4462, i64 -1
  %4464 = getelementptr double, double* %4463, i64 -1
  %4465 = bitcast double* %4464 to <2 x i64>*
  %4466 = load <2 x i64>, <2 x i64>* %4465, align 8, !tbaa !8, !alias.scope !150
  %4467 = getelementptr double, double* %4463, i64 -2
  %4468 = getelementptr double, double* %4467, i64 -1
  %4469 = bitcast double* %4468 to <2 x i64>*
  %4470 = load <2 x i64>, <2 x i64>* %4469, align 8, !tbaa !8, !alias.scope !150
  %4471 = getelementptr inbounds double, double* %4460, i64 -1
  %4472 = getelementptr double, double* %4471, i64 -1
  %4473 = bitcast double* %4472 to <2 x i64>*
  store <2 x i64> %4466, <2 x i64>* %4473, align 8, !tbaa !8, !alias.scope !153, !noalias !150
  %4474 = getelementptr double, double* %4471, i64 -2
  %4475 = getelementptr double, double* %4474, i64 -1
  %4476 = bitcast double* %4475 to <2 x i64>*
  store <2 x i64> %4470, <2 x i64>* %4476, align 8, !tbaa !8, !alias.scope !153, !noalias !150
  %4477 = sub i64 -4, %4457
  %4478 = getelementptr double, double* %147, i64 %4477
  %4479 = sub i64 -4, %4457
  %4480 = getelementptr double, double* %1164, i64 %4479
  %4481 = getelementptr inbounds double, double* %4480, i64 -1
  %4482 = getelementptr double, double* %4481, i64 -1
  %4483 = bitcast double* %4482 to <2 x i64>*
  %4484 = load <2 x i64>, <2 x i64>* %4483, align 8, !tbaa !8, !alias.scope !150
  %4485 = getelementptr double, double* %4481, i64 -2
  %4486 = getelementptr double, double* %4485, i64 -1
  %4487 = bitcast double* %4486 to <2 x i64>*
  %4488 = load <2 x i64>, <2 x i64>* %4487, align 8, !tbaa !8, !alias.scope !150
  %4489 = getelementptr inbounds double, double* %4478, i64 -1
  %4490 = getelementptr double, double* %4489, i64 -1
  %4491 = bitcast double* %4490 to <2 x i64>*
  store <2 x i64> %4484, <2 x i64>* %4491, align 8, !tbaa !8, !alias.scope !153, !noalias !150
  %4492 = getelementptr double, double* %4489, i64 -2
  %4493 = getelementptr double, double* %4492, i64 -1
  %4494 = bitcast double* %4493 to <2 x i64>*
  store <2 x i64> %4488, <2 x i64>* %4494, align 8, !tbaa !8, !alias.scope !153, !noalias !150
  %4495 = add i64 %4457, 8
  %4496 = add i64 %4458, -2
  %4497 = icmp eq i64 %4496, 0
  br i1 %4497, label %4498, label %4456, !llvm.loop !155

; <label>:4498:                                   ; preds = %4456, %4454
  %4499 = phi i64 [ 0, %4454 ], [ %4495, %4456 ]
  br i1 %4449, label %4519, label %4500

; <label>:4500:                                   ; preds = %4498
  %4501 = sub i64 0, %4499
  %4502 = getelementptr double, double* %147, i64 %4501
  %4503 = sub i64 0, %4499
  %4504 = getelementptr double, double* %1164, i64 %4503
  %4505 = getelementptr inbounds double, double* %4504, i64 -1
  %4506 = getelementptr double, double* %4505, i64 -1
  %4507 = bitcast double* %4506 to <2 x i64>*
  %4508 = load <2 x i64>, <2 x i64>* %4507, align 8, !tbaa !8, !alias.scope !150
  %4509 = getelementptr double, double* %4505, i64 -2
  %4510 = getelementptr double, double* %4509, i64 -1
  %4511 = bitcast double* %4510 to <2 x i64>*
  %4512 = load <2 x i64>, <2 x i64>* %4511, align 8, !tbaa !8, !alias.scope !150
  %4513 = getelementptr inbounds double, double* %4502, i64 -1
  %4514 = getelementptr double, double* %4513, i64 -1
  %4515 = bitcast double* %4514 to <2 x i64>*
  store <2 x i64> %4508, <2 x i64>* %4515, align 8, !tbaa !8, !alias.scope !153, !noalias !150
  %4516 = getelementptr double, double* %4513, i64 -2
  %4517 = getelementptr double, double* %4516, i64 -1
  %4518 = bitcast double* %4517 to <2 x i64>*
  store <2 x i64> %4512, <2 x i64>* %4518, align 8, !tbaa !8, !alias.scope !153, !noalias !150
  br label %4519

; <label>:4519:                                   ; preds = %4498, %4500
  br i1 %4450, label %4591, label %4520

; <label>:4520:                                   ; preds = %4451, %4519
  %4521 = phi double* [ %147, %4451 ], [ %4444, %4519 ]
  %4522 = phi double* [ %1164, %4451 ], [ %4445, %4519 ]
  %4523 = getelementptr double, double* %4522, i64 -1
  %4524 = ptrtoint double* %4523 to i64
  %4525 = sub i64 %4524, %1163
  %4526 = lshr i64 %4525, 3
  %4527 = add nuw nsw i64 %4526, 1
  %4528 = and i64 %4527, 7
  %4529 = icmp eq i64 %4528, 0
  br i1 %4529, label %4542, label %4530

; <label>:4530:                                   ; preds = %4520
  br label %4531

; <label>:4531:                                   ; preds = %4531, %4530
  %4532 = phi double* [ %4538, %4531 ], [ %4521, %4530 ]
  %4533 = phi double* [ %4535, %4531 ], [ %4522, %4530 ]
  %4534 = phi i64 [ %4540, %4531 ], [ %4528, %4530 ]
  %4535 = getelementptr inbounds double, double* %4533, i64 -1
  %4536 = bitcast double* %4535 to i64*
  %4537 = load i64, i64* %4536, align 8, !tbaa !8
  %4538 = getelementptr inbounds double, double* %4532, i64 -1
  %4539 = bitcast double* %4538 to i64*
  store i64 %4537, i64* %4539, align 8, !tbaa !8
  %4540 = add i64 %4534, -1
  %4541 = icmp eq i64 %4540, 0
  br i1 %4541, label %4542, label %4531, !llvm.loop !156

; <label>:4542:                                   ; preds = %4531, %4520
  %4543 = phi double* [ %4521, %4520 ], [ %4538, %4531 ]
  %4544 = phi double* [ %4522, %4520 ], [ %4535, %4531 ]
  %4545 = icmp ult i64 %4525, 56
  br i1 %4545, label %4591, label %4546

; <label>:4546:                                   ; preds = %4542
  br label %4547

; <label>:4547:                                   ; preds = %4547, %4546
  %4548 = phi double* [ %4543, %4546 ], [ %4588, %4547 ]
  %4549 = phi double* [ %4544, %4546 ], [ %4585, %4547 ]
  %4550 = getelementptr inbounds double, double* %4549, i64 -1
  %4551 = bitcast double* %4550 to i64*
  %4552 = load i64, i64* %4551, align 8, !tbaa !8
  %4553 = getelementptr inbounds double, double* %4548, i64 -1
  %4554 = bitcast double* %4553 to i64*
  store i64 %4552, i64* %4554, align 8, !tbaa !8
  %4555 = getelementptr inbounds double, double* %4549, i64 -2
  %4556 = bitcast double* %4555 to i64*
  %4557 = load i64, i64* %4556, align 8, !tbaa !8
  %4558 = getelementptr inbounds double, double* %4548, i64 -2
  %4559 = bitcast double* %4558 to i64*
  store i64 %4557, i64* %4559, align 8, !tbaa !8
  %4560 = getelementptr inbounds double, double* %4549, i64 -3
  %4561 = bitcast double* %4560 to i64*
  %4562 = load i64, i64* %4561, align 8, !tbaa !8
  %4563 = getelementptr inbounds double, double* %4548, i64 -3
  %4564 = bitcast double* %4563 to i64*
  store i64 %4562, i64* %4564, align 8, !tbaa !8
  %4565 = getelementptr inbounds double, double* %4549, i64 -4
  %4566 = bitcast double* %4565 to i64*
  %4567 = load i64, i64* %4566, align 8, !tbaa !8
  %4568 = getelementptr inbounds double, double* %4548, i64 -4
  %4569 = bitcast double* %4568 to i64*
  store i64 %4567, i64* %4569, align 8, !tbaa !8
  %4570 = getelementptr inbounds double, double* %4549, i64 -5
  %4571 = bitcast double* %4570 to i64*
  %4572 = load i64, i64* %4571, align 8, !tbaa !8
  %4573 = getelementptr inbounds double, double* %4548, i64 -5
  %4574 = bitcast double* %4573 to i64*
  store i64 %4572, i64* %4574, align 8, !tbaa !8
  %4575 = getelementptr inbounds double, double* %4549, i64 -6
  %4576 = bitcast double* %4575 to i64*
  %4577 = load i64, i64* %4576, align 8, !tbaa !8
  %4578 = getelementptr inbounds double, double* %4548, i64 -6
  %4579 = bitcast double* %4578 to i64*
  store i64 %4577, i64* %4579, align 8, !tbaa !8
  %4580 = getelementptr inbounds double, double* %4549, i64 -7
  %4581 = bitcast double* %4580 to i64*
  %4582 = load i64, i64* %4581, align 8, !tbaa !8
  %4583 = getelementptr inbounds double, double* %4548, i64 -7
  %4584 = bitcast double* %4583 to i64*
  store i64 %4582, i64* %4584, align 8, !tbaa !8
  %4585 = getelementptr inbounds double, double* %4549, i64 -8
  %4586 = bitcast double* %4585 to i64*
  %4587 = load i64, i64* %4586, align 8, !tbaa !8
  %4588 = getelementptr inbounds double, double* %4548, i64 -8
  %4589 = bitcast double* %4588 to i64*
  store i64 %4587, i64* %4589, align 8, !tbaa !8
  %4590 = icmp eq double* %4585, %1159
  br i1 %4590, label %4591, label %4547, !llvm.loop !157

; <label>:4591:                                   ; preds = %4542, %4547, %4519
  store i64 %243, i64* %4387, align 8, !tbaa !2
  store i64 %146, i64* %4388, align 8, !tbaa !2
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* nonnull %19, %"class.std::reverse_iterator.1"* nonnull %20)
          to label %4592 unwind label %5056

; <label>:4592:                                   ; preds = %4591
  br i1 %4391, label %4607, label %4593

; <label>:4593:                                   ; preds = %4592
  br label %4596

; <label>:4594:                                   ; preds = %4596
  %4595 = icmp eq double* %4599, %145
  br i1 %4595, label %4607, label %4596

; <label>:4596:                                   ; preds = %4593, %4594
  %4597 = phi double* [ %4599, %4594 ], [ %4390, %4593 ]
  %4598 = phi double* [ %4601, %4594 ], [ %147, %4593 ]
  %4599 = getelementptr inbounds double, double* %4597, i64 -1
  %4600 = load double, double* %4599, align 8, !tbaa !8
  %4601 = getelementptr inbounds double, double* %4598, i64 -1
  %4602 = load double, double* %4601, align 8, !tbaa !8
  %4603 = fcmp olt double %4600, %4602
  br i1 %4603, label %4604, label %4594

; <label>:4604:                                   ; preds = %4596
  %4605 = load i32, i32* @current_test, align 4, !tbaa !6
  %4606 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %4605)
  br label %4607

; <label>:4607:                                   ; preds = %4594, %4604, %4592
  %4608 = add nuw nsw i32 %4452, 1
  %4609 = load i32, i32* @iterations, align 4, !tbaa !6
  %4610 = icmp slt i32 %4608, %4609
  br i1 %4610, label %4451, label %4611

; <label>:4611:                                   ; preds = %4607, %4410, %4381
  %4612 = phi i32 [ %4382, %4381 ], [ %4412, %4410 ], [ %4609, %4607 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4383)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4384)
  %4613 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* @rrdMpb, i64 0, i32 1, i32 0), align 8, !tbaa !21
  %4614 = ptrtoint double* %4613 to i64
  %4615 = load double*, double** getelementptr inbounds (%"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* @rrdMpe, i64 0, i32 1, i32 0), align 8, !tbaa !21
  %4616 = load i64, i64* bitcast (%"class.std::reverse_iterator"* getelementptr inbounds (%"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* @rrdpb, i64 0, i32 1) to i64*), align 8, !tbaa !21
  %4617 = load i64, i64* bitcast (%"class.std::reverse_iterator"* getelementptr inbounds (%"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* @rrdpe, i64 0, i32 1) to i64*), align 8, !tbaa !21
  %4618 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %21, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4618)
  %4619 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %22, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4619)
  %4620 = icmp sgt i32 %4612, 0
  br i1 %4620, label %4621, label %4752

; <label>:4621:                                   ; preds = %4611
  %4622 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %21, i64 0, i32 1
  %4623 = bitcast %"class.std::reverse_iterator"* %4622 to i64*
  %4624 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %22, i64 0, i32 1
  %4625 = bitcast %"class.std::reverse_iterator"* %4624 to i64*
  %4626 = icmp eq double* %4613, %4615
  %4627 = inttoptr i64 %4616 to double*
  %4628 = inttoptr i64 %4617 to double*
  %4629 = getelementptr inbounds double, double* %4627, i64 1
  %4630 = icmp eq double* %4629, %4628
  br i1 %4626, label %4640, label %4631

; <label>:4631:                                   ; preds = %4621
  %4632 = getelementptr double, double* %4615, i64 -1
  %4633 = ptrtoint double* %4632 to i64
  %4634 = sub i64 %4633, %4614
  %4635 = lshr i64 %4634, 3
  %4636 = add nuw nsw i64 %4635, 1
  %4637 = and i64 %4636, 7
  %4638 = icmp eq i64 %4637, 0
  %4639 = icmp ult i64 %4634, 56
  br label %4664

; <label>:4640:                                   ; preds = %4621
  br label %4641

; <label>:4641:                                   ; preds = %4640, %4658
  %4642 = phi i32 [ %4659, %4658 ], [ 0, %4640 ]
  store i64 %4616, i64* %4623, align 8, !tbaa !21
  store i64 %4617, i64* %4625, align 8, !tbaa !21
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"* nonnull %21, %"class.std::reverse_iterator.0"* nonnull %22)
          to label %4643 unwind label %4662

; <label>:4643:                                   ; preds = %4641
  br i1 %4630, label %4658, label %4644

; <label>:4644:                                   ; preds = %4643
  br label %4645

; <label>:4645:                                   ; preds = %4644, %4652
  %4646 = phi double* [ %4648, %4652 ], [ %4629, %4644 ]
  %4647 = phi double* [ %4653, %4652 ], [ %4627, %4644 ]
  %4648 = getelementptr inbounds double, double* %4646, i64 1
  %4649 = load double, double* %4646, align 8, !tbaa !8
  %4650 = load double, double* %4647, align 8, !tbaa !8
  %4651 = fcmp olt double %4649, %4650
  br i1 %4651, label %4655, label %4652

; <label>:4652:                                   ; preds = %4645
  %4653 = getelementptr inbounds double, double* %4647, i64 1
  %4654 = icmp eq double* %4648, %4628
  br i1 %4654, label %4658, label %4645

; <label>:4655:                                   ; preds = %4645
  %4656 = load i32, i32* @current_test, align 4, !tbaa !6
  %4657 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %4656)
  br label %4658

; <label>:4658:                                   ; preds = %4652, %4655, %4643
  %4659 = add nuw nsw i32 %4642, 1
  %4660 = load i32, i32* @iterations, align 4, !tbaa !6
  %4661 = icmp slt i32 %4659, %4660
  br i1 %4661, label %4641, label %4752

; <label>:4662:                                   ; preds = %4641
  %4663 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:4664:                                   ; preds = %4631, %4748
  %4665 = phi i32 [ %4749, %4748 ], [ 0, %4631 ]
  br i1 %4638, label %4682, label %4666

; <label>:4666:                                   ; preds = %4664
  br label %4667

; <label>:4667:                                   ; preds = %4667, %4666
  %4668 = phi i64 [ %4616, %4666 ], [ %4676, %4667 ]
  %4669 = phi double* [ %4613, %4666 ], [ %4671, %4667 ]
  %4670 = phi i64 [ %4637, %4666 ], [ %4678, %4667 ]
  %4671 = getelementptr inbounds double, double* %4669, i64 1
  %4672 = bitcast double* %4669 to i64*
  %4673 = load i64, i64* %4672, align 8, !tbaa !8
  %4674 = inttoptr i64 %4668 to double*
  %4675 = getelementptr inbounds double, double* %4674, i64 1
  %4676 = ptrtoint double* %4675 to i64
  %4677 = inttoptr i64 %4668 to i64*
  store i64 %4673, i64* %4677, align 8, !tbaa !8
  %4678 = add i64 %4670, -1
  %4679 = icmp eq i64 %4678, 0
  br i1 %4679, label %4680, label %4667, !llvm.loop !158

; <label>:4680:                                   ; preds = %4667
  %4681 = ptrtoint double* %4675 to i64
  br label %4682

; <label>:4682:                                   ; preds = %4664, %4680
  %4683 = phi i64 [ %4616, %4664 ], [ %4681, %4680 ]
  %4684 = phi double* [ %4613, %4664 ], [ %4671, %4680 ]
  br i1 %4639, label %4732, label %4685

; <label>:4685:                                   ; preds = %4682
  br label %4686

; <label>:4686:                                   ; preds = %4686, %4685
  %4687 = phi i64 [ %4683, %4685 ], [ %4729, %4686 ]
  %4688 = phi double* [ %4684, %4685 ], [ %4725, %4686 ]
  %4689 = getelementptr inbounds double, double* %4688, i64 1
  %4690 = bitcast double* %4688 to i64*
  %4691 = load i64, i64* %4690, align 8, !tbaa !8
  %4692 = inttoptr i64 %4687 to double*
  %4693 = getelementptr inbounds double, double* %4692, i64 1
  %4694 = inttoptr i64 %4687 to i64*
  store i64 %4691, i64* %4694, align 8, !tbaa !8
  %4695 = getelementptr inbounds double, double* %4688, i64 2
  %4696 = bitcast double* %4689 to i64*
  %4697 = load i64, i64* %4696, align 8, !tbaa !8
  %4698 = getelementptr inbounds double, double* %4692, i64 2
  %4699 = bitcast double* %4693 to i64*
  store i64 %4697, i64* %4699, align 8, !tbaa !8
  %4700 = getelementptr inbounds double, double* %4688, i64 3
  %4701 = bitcast double* %4695 to i64*
  %4702 = load i64, i64* %4701, align 8, !tbaa !8
  %4703 = getelementptr inbounds double, double* %4692, i64 3
  %4704 = bitcast double* %4698 to i64*
  store i64 %4702, i64* %4704, align 8, !tbaa !8
  %4705 = getelementptr inbounds double, double* %4688, i64 4
  %4706 = bitcast double* %4700 to i64*
  %4707 = load i64, i64* %4706, align 8, !tbaa !8
  %4708 = getelementptr inbounds double, double* %4692, i64 4
  %4709 = bitcast double* %4703 to i64*
  store i64 %4707, i64* %4709, align 8, !tbaa !8
  %4710 = getelementptr inbounds double, double* %4688, i64 5
  %4711 = bitcast double* %4705 to i64*
  %4712 = load i64, i64* %4711, align 8, !tbaa !8
  %4713 = getelementptr inbounds double, double* %4692, i64 5
  %4714 = bitcast double* %4708 to i64*
  store i64 %4712, i64* %4714, align 8, !tbaa !8
  %4715 = getelementptr inbounds double, double* %4688, i64 6
  %4716 = bitcast double* %4710 to i64*
  %4717 = load i64, i64* %4716, align 8, !tbaa !8
  %4718 = getelementptr inbounds double, double* %4692, i64 6
  %4719 = bitcast double* %4713 to i64*
  store i64 %4717, i64* %4719, align 8, !tbaa !8
  %4720 = getelementptr inbounds double, double* %4688, i64 7
  %4721 = bitcast double* %4715 to i64*
  %4722 = load i64, i64* %4721, align 8, !tbaa !8
  %4723 = getelementptr inbounds double, double* %4692, i64 7
  %4724 = bitcast double* %4718 to i64*
  store i64 %4722, i64* %4724, align 8, !tbaa !8
  %4725 = getelementptr inbounds double, double* %4688, i64 8
  %4726 = bitcast double* %4720 to i64*
  %4727 = load i64, i64* %4726, align 8, !tbaa !8
  %4728 = getelementptr inbounds double, double* %4692, i64 8
  %4729 = ptrtoint double* %4728 to i64
  %4730 = bitcast double* %4723 to i64*
  store i64 %4727, i64* %4730, align 8, !tbaa !8
  %4731 = icmp eq double* %4725, %4615
  br i1 %4731, label %4732, label %4686

; <label>:4732:                                   ; preds = %4686, %4682
  store i64 %4616, i64* %4623, align 8, !tbaa !21
  store i64 %4617, i64* %4625, align 8, !tbaa !21
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"* nonnull %21, %"class.std::reverse_iterator.0"* nonnull %22)
          to label %4733 unwind label %5054

; <label>:4733:                                   ; preds = %4732
  br i1 %4630, label %4748, label %4734

; <label>:4734:                                   ; preds = %4733
  br label %4738

; <label>:4735:                                   ; preds = %4738
  %4736 = getelementptr inbounds double, double* %4740, i64 1
  %4737 = icmp eq double* %4741, %4628
  br i1 %4737, label %4748, label %4738

; <label>:4738:                                   ; preds = %4734, %4735
  %4739 = phi double* [ %4741, %4735 ], [ %4629, %4734 ]
  %4740 = phi double* [ %4736, %4735 ], [ %4627, %4734 ]
  %4741 = getelementptr inbounds double, double* %4739, i64 1
  %4742 = load double, double* %4739, align 8, !tbaa !8
  %4743 = load double, double* %4740, align 8, !tbaa !8
  %4744 = fcmp olt double %4742, %4743
  br i1 %4744, label %4745, label %4735

; <label>:4745:                                   ; preds = %4738
  %4746 = load i32, i32* @current_test, align 4, !tbaa !6
  %4747 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %4746)
  br label %4748

; <label>:4748:                                   ; preds = %4735, %4745, %4733
  %4749 = add nuw nsw i32 %4665, 1
  %4750 = load i32, i32* @iterations, align 4, !tbaa !6
  %4751 = icmp slt i32 %4749, %4750
  br i1 %4751, label %4664, label %4752

; <label>:4752:                                   ; preds = %4748, %4658, %4611
  %4753 = phi i32 [ %4612, %4611 ], [ %4660, %4658 ], [ %4750, %4748 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4618)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4619)
  %4754 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %23, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4754)
  %4755 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %24, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4755)
  %4756 = icmp sgt i32 %4753, 0
  br i1 %4756, label %4757, label %4886

; <label>:4757:                                   ; preds = %4752
  %4758 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %23, i64 0, i32 1
  %4759 = bitcast %"class.std::reverse_iterator.1"* %4758 to i64*
  %4760 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %24, i64 0, i32 1
  %4761 = bitcast %"class.std::reverse_iterator.1"* %4760 to i64*
  %4762 = icmp eq double* %1164, %1159
  %4763 = getelementptr inbounds double, double* %145, i64 1
  %4764 = icmp eq double* %4763, %147
  br i1 %4762, label %4774, label %4765

; <label>:4765:                                   ; preds = %4757
  %4766 = getelementptr double, double* %1164, i64 -1
  %4767 = ptrtoint double* %4766 to i64
  %4768 = sub i64 %4767, %1163
  %4769 = lshr i64 %4768, 3
  %4770 = add nuw nsw i64 %4769, 1
  %4771 = and i64 %4770, 7
  %4772 = icmp eq i64 %4771, 0
  %4773 = icmp ult i64 %4768, 56
  br label %4798

; <label>:4774:                                   ; preds = %4757
  br label %4775

; <label>:4775:                                   ; preds = %4774, %4792
  %4776 = phi i32 [ %4793, %4792 ], [ 0, %4774 ]
  store i64 %148, i64* %4759, align 8, !tbaa !2
  store i64 %149, i64* %4761, align 8, !tbaa !2
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* nonnull %23, %"class.std::reverse_iterator.2"* nonnull %24)
          to label %4777 unwind label %4796

; <label>:4777:                                   ; preds = %4775
  br i1 %4764, label %4792, label %4778

; <label>:4778:                                   ; preds = %4777
  br label %4779

; <label>:4779:                                   ; preds = %4778, %4786
  %4780 = phi double* [ %4782, %4786 ], [ %4763, %4778 ]
  %4781 = phi double* [ %4787, %4786 ], [ %145, %4778 ]
  %4782 = getelementptr inbounds double, double* %4780, i64 1
  %4783 = load double, double* %4780, align 8, !tbaa !8
  %4784 = load double, double* %4781, align 8, !tbaa !8
  %4785 = fcmp olt double %4783, %4784
  br i1 %4785, label %4789, label %4786

; <label>:4786:                                   ; preds = %4779
  %4787 = getelementptr inbounds double, double* %4781, i64 1
  %4788 = icmp eq double* %4782, %147
  br i1 %4788, label %4792, label %4779

; <label>:4789:                                   ; preds = %4779
  %4790 = load i32, i32* @current_test, align 4, !tbaa !6
  %4791 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %4790)
  br label %4792

; <label>:4792:                                   ; preds = %4786, %4789, %4777
  %4793 = add nuw nsw i32 %4776, 1
  %4794 = load i32, i32* @iterations, align 4, !tbaa !6
  %4795 = icmp slt i32 %4793, %4794
  br i1 %4795, label %4775, label %4886

; <label>:4796:                                   ; preds = %4775
  %4797 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:4798:                                   ; preds = %4765, %4882
  %4799 = phi i32 [ %4883, %4882 ], [ 0, %4765 ]
  br i1 %4772, label %4816, label %4800

; <label>:4800:                                   ; preds = %4798
  br label %4801

; <label>:4801:                                   ; preds = %4801, %4800
  %4802 = phi i64 [ %148, %4800 ], [ %4810, %4801 ]
  %4803 = phi double* [ %1159, %4800 ], [ %4805, %4801 ]
  %4804 = phi i64 [ %4771, %4800 ], [ %4812, %4801 ]
  %4805 = getelementptr inbounds double, double* %4803, i64 1
  %4806 = bitcast double* %4803 to i64*
  %4807 = load i64, i64* %4806, align 8, !tbaa !8
  %4808 = inttoptr i64 %4802 to double*
  %4809 = getelementptr inbounds double, double* %4808, i64 1
  %4810 = ptrtoint double* %4809 to i64
  %4811 = inttoptr i64 %4802 to i64*
  store i64 %4807, i64* %4811, align 8, !tbaa !8
  %4812 = add i64 %4804, -1
  %4813 = icmp eq i64 %4812, 0
  br i1 %4813, label %4814, label %4801, !llvm.loop !159

; <label>:4814:                                   ; preds = %4801
  %4815 = ptrtoint double* %4809 to i64
  br label %4816

; <label>:4816:                                   ; preds = %4798, %4814
  %4817 = phi i64 [ %148, %4798 ], [ %4815, %4814 ]
  %4818 = phi double* [ %1159, %4798 ], [ %4805, %4814 ]
  br i1 %4773, label %4866, label %4819

; <label>:4819:                                   ; preds = %4816
  br label %4820

; <label>:4820:                                   ; preds = %4820, %4819
  %4821 = phi i64 [ %4817, %4819 ], [ %4863, %4820 ]
  %4822 = phi double* [ %4818, %4819 ], [ %4859, %4820 ]
  %4823 = getelementptr inbounds double, double* %4822, i64 1
  %4824 = bitcast double* %4822 to i64*
  %4825 = load i64, i64* %4824, align 8, !tbaa !8
  %4826 = inttoptr i64 %4821 to double*
  %4827 = getelementptr inbounds double, double* %4826, i64 1
  %4828 = inttoptr i64 %4821 to i64*
  store i64 %4825, i64* %4828, align 8, !tbaa !8
  %4829 = getelementptr inbounds double, double* %4822, i64 2
  %4830 = bitcast double* %4823 to i64*
  %4831 = load i64, i64* %4830, align 8, !tbaa !8
  %4832 = getelementptr inbounds double, double* %4826, i64 2
  %4833 = bitcast double* %4827 to i64*
  store i64 %4831, i64* %4833, align 8, !tbaa !8
  %4834 = getelementptr inbounds double, double* %4822, i64 3
  %4835 = bitcast double* %4829 to i64*
  %4836 = load i64, i64* %4835, align 8, !tbaa !8
  %4837 = getelementptr inbounds double, double* %4826, i64 3
  %4838 = bitcast double* %4832 to i64*
  store i64 %4836, i64* %4838, align 8, !tbaa !8
  %4839 = getelementptr inbounds double, double* %4822, i64 4
  %4840 = bitcast double* %4834 to i64*
  %4841 = load i64, i64* %4840, align 8, !tbaa !8
  %4842 = getelementptr inbounds double, double* %4826, i64 4
  %4843 = bitcast double* %4837 to i64*
  store i64 %4841, i64* %4843, align 8, !tbaa !8
  %4844 = getelementptr inbounds double, double* %4822, i64 5
  %4845 = bitcast double* %4839 to i64*
  %4846 = load i64, i64* %4845, align 8, !tbaa !8
  %4847 = getelementptr inbounds double, double* %4826, i64 5
  %4848 = bitcast double* %4842 to i64*
  store i64 %4846, i64* %4848, align 8, !tbaa !8
  %4849 = getelementptr inbounds double, double* %4822, i64 6
  %4850 = bitcast double* %4844 to i64*
  %4851 = load i64, i64* %4850, align 8, !tbaa !8
  %4852 = getelementptr inbounds double, double* %4826, i64 6
  %4853 = bitcast double* %4847 to i64*
  store i64 %4851, i64* %4853, align 8, !tbaa !8
  %4854 = getelementptr inbounds double, double* %4822, i64 7
  %4855 = bitcast double* %4849 to i64*
  %4856 = load i64, i64* %4855, align 8, !tbaa !8
  %4857 = getelementptr inbounds double, double* %4826, i64 7
  %4858 = bitcast double* %4852 to i64*
  store i64 %4856, i64* %4858, align 8, !tbaa !8
  %4859 = getelementptr inbounds double, double* %4822, i64 8
  %4860 = bitcast double* %4854 to i64*
  %4861 = load i64, i64* %4860, align 8, !tbaa !8
  %4862 = getelementptr inbounds double, double* %4826, i64 8
  %4863 = ptrtoint double* %4862 to i64
  %4864 = bitcast double* %4857 to i64*
  store i64 %4861, i64* %4864, align 8, !tbaa !8
  %4865 = icmp eq double* %4859, %1164
  br i1 %4865, label %4866, label %4820

; <label>:4866:                                   ; preds = %4820, %4816
  store i64 %148, i64* %4759, align 8, !tbaa !2
  store i64 %149, i64* %4761, align 8, !tbaa !2
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* nonnull %23, %"class.std::reverse_iterator.2"* nonnull %24)
          to label %4867 unwind label %5052

; <label>:4867:                                   ; preds = %4866
  br i1 %4764, label %4882, label %4868

; <label>:4868:                                   ; preds = %4867
  br label %4872

; <label>:4869:                                   ; preds = %4872
  %4870 = getelementptr inbounds double, double* %4874, i64 1
  %4871 = icmp eq double* %4875, %147
  br i1 %4871, label %4882, label %4872

; <label>:4872:                                   ; preds = %4868, %4869
  %4873 = phi double* [ %4875, %4869 ], [ %4763, %4868 ]
  %4874 = phi double* [ %4870, %4869 ], [ %145, %4868 ]
  %4875 = getelementptr inbounds double, double* %4873, i64 1
  %4876 = load double, double* %4873, align 8, !tbaa !8
  %4877 = load double, double* %4874, align 8, !tbaa !8
  %4878 = fcmp olt double %4876, %4877
  br i1 %4878, label %4879, label %4869

; <label>:4879:                                   ; preds = %4872
  %4880 = load i32, i32* @current_test, align 4, !tbaa !6
  %4881 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %4880)
  br label %4882

; <label>:4882:                                   ; preds = %4869, %4879, %4867
  %4883 = add nuw nsw i32 %4799, 1
  %4884 = load i32, i32* @iterations, align 4, !tbaa !6
  %4885 = icmp slt i32 %4883, %4884
  br i1 %4885, label %4798, label %4886

; <label>:4886:                                   ; preds = %4882, %4792, %4752
  %4887 = phi i32 [ %4753, %4752 ], [ %4794, %4792 ], [ %4884, %4882 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4754)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4755)
  %4888 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %25, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4888)
  %4889 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %26, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4889)
  %4890 = icmp sgt i32 %4887, 0
  br i1 %4890, label %4891, label %5029

; <label>:4891:                                   ; preds = %4886
  %4892 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %25, i64 0, i32 1
  %4893 = bitcast %"class.std::reverse_iterator.1"* %4892 to i64*
  %4894 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %26, i64 0, i32 1
  %4895 = bitcast %"class.std::reverse_iterator.1"* %4894 to i64*
  %4896 = icmp eq double* %1159, %1164
  %4897 = getelementptr inbounds double, double* %145, i64 1
  %4898 = icmp eq double* %4897, %147
  br i1 %4896, label %4908, label %4899

; <label>:4899:                                   ; preds = %4891
  %4900 = getelementptr double, double* %1164, i64 -1
  %4901 = ptrtoint double* %4900 to i64
  %4902 = sub i64 %4901, %1163
  %4903 = lshr i64 %4902, 3
  %4904 = add nuw nsw i64 %4903, 1
  %4905 = and i64 %4904, 7
  %4906 = icmp eq i64 %4905, 0
  %4907 = icmp ult i64 %4902, 56
  br label %4941

; <label>:4908:                                   ; preds = %4891
  br i1 %4898, label %4910, label %4909

; <label>:4909:                                   ; preds = %4908
  br label %4919

; <label>:4910:                                   ; preds = %4908
  br label %4911

; <label>:4911:                                   ; preds = %4910, %4913
  %4912 = phi i32 [ %4914, %4913 ], [ 0, %4910 ]
  store i64 %146, i64* %4893, align 8, !tbaa !2
  store i64 %243, i64* %4895, align 8, !tbaa !2
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* nonnull %25, %"class.std::reverse_iterator.2"* nonnull %26)
          to label %4913 unwind label %4917

; <label>:4913:                                   ; preds = %4911
  %4914 = add nuw nsw i32 %4912, 1
  %4915 = load i32, i32* @iterations, align 4, !tbaa !6
  %4916 = icmp slt i32 %4914, %4915
  br i1 %4916, label %4911, label %5029

; <label>:4917:                                   ; preds = %4911
  %4918 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:4919:                                   ; preds = %4909, %4935
  %4920 = phi i32 [ %4936, %4935 ], [ 0, %4909 ]
  store i64 %146, i64* %4893, align 8, !tbaa !2
  store i64 %243, i64* %4895, align 8, !tbaa !2
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* nonnull %25, %"class.std::reverse_iterator.2"* nonnull %26)
          to label %4921 unwind label %4939

; <label>:4921:                                   ; preds = %4919
  br label %4922

; <label>:4922:                                   ; preds = %4921, %4929
  %4923 = phi double* [ %4925, %4929 ], [ %4897, %4921 ]
  %4924 = phi double* [ %4930, %4929 ], [ %145, %4921 ]
  %4925 = getelementptr inbounds double, double* %4923, i64 1
  %4926 = load double, double* %4923, align 8, !tbaa !8
  %4927 = load double, double* %4924, align 8, !tbaa !8
  %4928 = fcmp olt double %4926, %4927
  br i1 %4928, label %4932, label %4929

; <label>:4929:                                   ; preds = %4922
  %4930 = getelementptr inbounds double, double* %4924, i64 1
  %4931 = icmp eq double* %4925, %147
  br i1 %4931, label %4935, label %4922

; <label>:4932:                                   ; preds = %4922
  %4933 = load i32, i32* @current_test, align 4, !tbaa !6
  %4934 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %4933)
  br label %4935

; <label>:4935:                                   ; preds = %4929, %4932
  %4936 = add nuw nsw i32 %4920, 1
  %4937 = load i32, i32* @iterations, align 4, !tbaa !6
  %4938 = icmp slt i32 %4936, %4937
  br i1 %4938, label %4919, label %5029

; <label>:4939:                                   ; preds = %4919
  %4940 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:4941:                                   ; preds = %4899, %5025
  %4942 = phi i32 [ %5026, %5025 ], [ 0, %4899 ]
  br i1 %4906, label %4959, label %4943

; <label>:4943:                                   ; preds = %4941
  br label %4944

; <label>:4944:                                   ; preds = %4944, %4943
  %4945 = phi i64 [ %146, %4943 ], [ %4953, %4944 ]
  %4946 = phi double* [ %1159, %4943 ], [ %4948, %4944 ]
  %4947 = phi i64 [ %4905, %4943 ], [ %4955, %4944 ]
  %4948 = getelementptr inbounds double, double* %4946, i64 1
  %4949 = bitcast double* %4946 to i64*
  %4950 = load i64, i64* %4949, align 8, !tbaa !8
  %4951 = inttoptr i64 %4945 to double*
  %4952 = getelementptr inbounds double, double* %4951, i64 1
  %4953 = ptrtoint double* %4952 to i64
  %4954 = inttoptr i64 %4945 to i64*
  store i64 %4950, i64* %4954, align 8, !tbaa !8
  %4955 = add i64 %4947, -1
  %4956 = icmp eq i64 %4955, 0
  br i1 %4956, label %4957, label %4944, !llvm.loop !160

; <label>:4957:                                   ; preds = %4944
  %4958 = ptrtoint double* %4952 to i64
  br label %4959

; <label>:4959:                                   ; preds = %4941, %4957
  %4960 = phi i64 [ %146, %4941 ], [ %4958, %4957 ]
  %4961 = phi double* [ %1159, %4941 ], [ %4948, %4957 ]
  br i1 %4907, label %5009, label %4962

; <label>:4962:                                   ; preds = %4959
  br label %4963

; <label>:4963:                                   ; preds = %4963, %4962
  %4964 = phi i64 [ %4960, %4962 ], [ %5006, %4963 ]
  %4965 = phi double* [ %4961, %4962 ], [ %5002, %4963 ]
  %4966 = getelementptr inbounds double, double* %4965, i64 1
  %4967 = bitcast double* %4965 to i64*
  %4968 = load i64, i64* %4967, align 8, !tbaa !8
  %4969 = inttoptr i64 %4964 to double*
  %4970 = getelementptr inbounds double, double* %4969, i64 1
  %4971 = inttoptr i64 %4964 to i64*
  store i64 %4968, i64* %4971, align 8, !tbaa !8
  %4972 = getelementptr inbounds double, double* %4965, i64 2
  %4973 = bitcast double* %4966 to i64*
  %4974 = load i64, i64* %4973, align 8, !tbaa !8
  %4975 = getelementptr inbounds double, double* %4969, i64 2
  %4976 = bitcast double* %4970 to i64*
  store i64 %4974, i64* %4976, align 8, !tbaa !8
  %4977 = getelementptr inbounds double, double* %4965, i64 3
  %4978 = bitcast double* %4972 to i64*
  %4979 = load i64, i64* %4978, align 8, !tbaa !8
  %4980 = getelementptr inbounds double, double* %4969, i64 3
  %4981 = bitcast double* %4975 to i64*
  store i64 %4979, i64* %4981, align 8, !tbaa !8
  %4982 = getelementptr inbounds double, double* %4965, i64 4
  %4983 = bitcast double* %4977 to i64*
  %4984 = load i64, i64* %4983, align 8, !tbaa !8
  %4985 = getelementptr inbounds double, double* %4969, i64 4
  %4986 = bitcast double* %4980 to i64*
  store i64 %4984, i64* %4986, align 8, !tbaa !8
  %4987 = getelementptr inbounds double, double* %4965, i64 5
  %4988 = bitcast double* %4982 to i64*
  %4989 = load i64, i64* %4988, align 8, !tbaa !8
  %4990 = getelementptr inbounds double, double* %4969, i64 5
  %4991 = bitcast double* %4985 to i64*
  store i64 %4989, i64* %4991, align 8, !tbaa !8
  %4992 = getelementptr inbounds double, double* %4965, i64 6
  %4993 = bitcast double* %4987 to i64*
  %4994 = load i64, i64* %4993, align 8, !tbaa !8
  %4995 = getelementptr inbounds double, double* %4969, i64 6
  %4996 = bitcast double* %4990 to i64*
  store i64 %4994, i64* %4996, align 8, !tbaa !8
  %4997 = getelementptr inbounds double, double* %4965, i64 7
  %4998 = bitcast double* %4992 to i64*
  %4999 = load i64, i64* %4998, align 8, !tbaa !8
  %5000 = getelementptr inbounds double, double* %4969, i64 7
  %5001 = bitcast double* %4995 to i64*
  store i64 %4999, i64* %5001, align 8, !tbaa !8
  %5002 = getelementptr inbounds double, double* %4965, i64 8
  %5003 = bitcast double* %4997 to i64*
  %5004 = load i64, i64* %5003, align 8, !tbaa !8
  %5005 = getelementptr inbounds double, double* %4969, i64 8
  %5006 = ptrtoint double* %5005 to i64
  %5007 = bitcast double* %5000 to i64*
  store i64 %5004, i64* %5007, align 8, !tbaa !8
  %5008 = icmp eq double* %5002, %1164
  br i1 %5008, label %5009, label %4963

; <label>:5009:                                   ; preds = %4963, %4959
  store i64 %146, i64* %4893, align 8, !tbaa !2
  store i64 %243, i64* %4895, align 8, !tbaa !2
  invoke void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* nonnull %25, %"class.std::reverse_iterator.2"* nonnull %26)
          to label %5010 unwind label %5050

; <label>:5010:                                   ; preds = %5009
  br i1 %4898, label %5025, label %5011

; <label>:5011:                                   ; preds = %5010
  br label %5015

; <label>:5012:                                   ; preds = %5015
  %5013 = getelementptr inbounds double, double* %5017, i64 1
  %5014 = icmp eq double* %5018, %147
  br i1 %5014, label %5025, label %5015

; <label>:5015:                                   ; preds = %5011, %5012
  %5016 = phi double* [ %5018, %5012 ], [ %4897, %5011 ]
  %5017 = phi double* [ %5013, %5012 ], [ %145, %5011 ]
  %5018 = getelementptr inbounds double, double* %5016, i64 1
  %5019 = load double, double* %5016, align 8, !tbaa !8
  %5020 = load double, double* %5017, align 8, !tbaa !8
  %5021 = fcmp olt double %5019, %5020
  br i1 %5021, label %5022, label %5012

; <label>:5022:                                   ; preds = %5015
  %5023 = load i32, i32* @current_test, align 4, !tbaa !6
  %5024 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %5023)
  br label %5025

; <label>:5025:                                   ; preds = %5012, %5022, %5010
  %5026 = add nuw nsw i32 %4942, 1
  %5027 = load i32, i32* @iterations, align 4, !tbaa !6
  %5028 = icmp slt i32 %5026, %5027
  br i1 %5028, label %4941, label %5029

; <label>:5029:                                   ; preds = %5025, %4935, %4913, %4886
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4888)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4889)
  %5030 = load double*, double** %1160, align 8, !tbaa !161
  %5031 = icmp eq double* %5030, null
  br i1 %5031, label %5034, label %5032

; <label>:5032:                                   ; preds = %5029
  %5033 = bitcast double* %5030 to i8*
  call void @_ZdlPv(i8* %5033) #5
  br label %5034

; <label>:5034:                                   ; preds = %5029, %5032
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %963) #5
  %5035 = load double*, double** %150, align 8, !tbaa !161
  %5036 = icmp eq double* %5035, null
  br i1 %5036, label %5039, label %5037

; <label>:5037:                                   ; preds = %5034
  %5038 = bitcast double* %5035 to i8*
  call void @_ZdlPv(i8* %5038) #5
  br label %5039

; <label>:5039:                                   ; preds = %5034, %5037
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %139) #5
  ret i32 0

; <label>:5040:                                   ; preds = %138
  %5041 = landingpad { i8*, i32 }
          cleanup
  %5042 = extractvalue { i8*, i32 } %5041, 0
  %5043 = extractvalue { i8*, i32 } %5041, 1
  %5044 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %27, i64 0, i32 0, i32 0, i32 0
  br label %5089

; <label>:5045:                                   ; preds = %960
  %5046 = landingpad { i8*, i32 }
          cleanup
  %5047 = extractvalue { i8*, i32 } %5046, 0
  %5048 = extractvalue { i8*, i32 } %5046, 1
  %5049 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %28, i64 0, i32 0, i32 0, i32 0
  br label %5080

; <label>:5050:                                   ; preds = %5009
  %5051 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:5052:                                   ; preds = %4866
  %5053 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:5054:                                   ; preds = %4732
  %5055 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:5056:                                   ; preds = %4591
  %5057 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:5058:                                   ; preds = %4361
  %5059 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:5060:                                   ; preds = %4122
  %5061 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:5062:                                   ; preds = %3873
  %5063 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:5064:                                   ; preds = %3739
  %5065 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:5066:                                   ; preds = %3605
  %5067 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:5068:                                   ; preds = %3464
  %5069 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:5070:                                   ; preds = %3234
  %5071 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:5072:                                   ; preds = %2995
  %5073 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:5074:                                   ; preds = %1158, %1167, %2764, %2771, %3893, %3898
  %5075 = landingpad { i8*, i32 }
          cleanup
  br label %5076

; <label>:5076:                                   ; preds = %4796, %5052, %4414, %5056, %3944, %5060, %3669, %5064, %3287, %5068, %5074, %2817, %5072, %5070, %3056, %5066, %3535, %5062, %3803, %5058, %4183, %5054, %4662, %5050, %4917, %4939
  %5077 = phi { i8*, i32 } [ %5051, %5050 ], [ %4918, %4917 ], [ %4940, %4939 ], [ %4797, %4796 ], [ %5053, %5052 ], [ %4663, %4662 ], [ %5055, %5054 ], [ %4415, %4414 ], [ %5057, %5056 ], [ %4184, %4183 ], [ %5059, %5058 ], [ %3945, %3944 ], [ %5061, %5060 ], [ %3804, %3803 ], [ %5063, %5062 ], [ %3670, %3669 ], [ %5065, %5064 ], [ %3536, %3535 ], [ %5067, %5066 ], [ %3288, %3287 ], [ %5069, %5068 ], [ %3057, %3056 ], [ %5071, %5070 ], [ %5075, %5074 ], [ %2818, %2817 ], [ %5073, %5072 ]
  %5078 = extractvalue { i8*, i32 } %5077, 0
  %5079 = extractvalue { i8*, i32 } %5077, 1
  br label %5080

; <label>:5080:                                   ; preds = %5076, %5045
  %5081 = phi double** [ %1160, %5076 ], [ %5049, %5045 ]
  %5082 = phi i32 [ %5079, %5076 ], [ %5048, %5045 ]
  %5083 = phi i8* [ %5078, %5076 ], [ %5047, %5045 ]
  %5084 = load double*, double** %5081, align 8, !tbaa !161
  %5085 = icmp eq double* %5084, null
  br i1 %5085, label %5088, label %5086

; <label>:5086:                                   ; preds = %5080
  %5087 = bitcast double* %5084 to i8*
  call void @_ZdlPv(i8* %5087) #5
  br label %5088

; <label>:5088:                                   ; preds = %5080, %5086
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %963) #5
  br label %5089

; <label>:5089:                                   ; preds = %5088, %5040
  %5090 = phi double** [ %150, %5088 ], [ %5044, %5040 ]
  %5091 = phi i32 [ %5082, %5088 ], [ %5043, %5040 ]
  %5092 = phi i8* [ %5083, %5088 ], [ %5042, %5040 ]
  %5093 = load double*, double** %5090, align 8, !tbaa !161
  %5094 = icmp eq double* %5093, null
  br i1 %5094, label %5097, label %5095

; <label>:5095:                                   ; preds = %5089
  %5096 = bitcast double* %5093 to i8*
  call void @_ZdlPv(i8* %5096) #5
  br label %5097

; <label>:5097:                                   ; preds = %5089, %5095
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %139) #5
  %5098 = insertvalue { i8*, i32 } undef, i8* %5092, 0
  %5099 = insertvalue { i8*, i32 } %5098, i32 %5091, 1
  resume { i8*, i32 } %5099

; <label>:5100:                                   ; preds = %2619
  br label %5101

; <label>:5101:                                   ; preds = %5106, %5100
  %5102 = phi double* [ %5103, %5106 ], [ %2621, %5100 ]
  %5103 = getelementptr inbounds double, double* %5102, i64 -1
  %5104 = load double, double* %5103, align 8, !tbaa !8
  %5105 = fcmp olt double %2622, %5104
  br i1 %5105, label %5106, label %5108

; <label>:5106:                                   ; preds = %5101
  store double %5104, double* %5102, align 8, !tbaa !8
  %5107 = icmp eq double* %5103, %145
  br i1 %5107, label %5108, label %5101

; <label>:5108:                                   ; preds = %5101, %5106, %2619
  %5109 = phi double* [ %145, %2619 ], [ %145, %5106 ], [ %5102, %5101 ]
  store double %2622, double* %5109, align 8, !tbaa !8
  %5110 = getelementptr inbounds double, double* %2608, i64 2
  %5111 = icmp eq double* %5110, %147
  br i1 %5111, label %2624, label %2607

; <label>:5112:                                   ; preds = %2740
  br label %5113

; <label>:5113:                                   ; preds = %5118, %5112
  %5114 = phi double* [ %5115, %5118 ], [ %2742, %5112 ]
  %5115 = getelementptr inbounds double, double* %5114, i64 -1
  %5116 = load double, double* %5115, align 8, !tbaa !8
  %5117 = fcmp olt double %2743, %5116
  br i1 %5117, label %5118, label %5120

; <label>:5118:                                   ; preds = %5113
  store double %5116, double* %5114, align 8, !tbaa !8
  %5119 = icmp eq double* %5115, %145
  br i1 %5119, label %5120, label %5113

; <label>:5120:                                   ; preds = %5113, %5118, %2740
  %5121 = phi double* [ %145, %2740 ], [ %145, %5118 ], [ %5114, %5113 ]
  store double %2743, double* %5121, align 8, !tbaa !8
  %5122 = getelementptr inbounds double, double* %2729, i64 2
  %5123 = icmp eq double* %5122, %147
  br i1 %5123, label %2745, label %2728

; <label>:5124:                                   ; preds = %2414
  br label %5125

; <label>:5125:                                   ; preds = %5130, %5124
  %5126 = phi double* [ %5127, %5130 ], [ %2416, %5124 ]
  %5127 = getelementptr inbounds double, double* %5126, i64 -1
  %5128 = load double, double* %5127, align 8, !tbaa !8
  %5129 = fcmp olt double %2417, %5128
  br i1 %5129, label %5130, label %5132

; <label>:5130:                                   ; preds = %5125
  store double %5128, double* %5126, align 8, !tbaa !8
  %5131 = icmp eq double* %5127, %145
  br i1 %5131, label %5132, label %5125

; <label>:5132:                                   ; preds = %5125, %5130, %2414
  %5133 = phi double* [ %145, %2414 ], [ %145, %5130 ], [ %5126, %5125 ]
  store double %2417, double* %5133, align 8, !tbaa !8
  %5134 = getelementptr inbounds double, double* %2403, i64 2
  %5135 = icmp eq double* %5134, %147
  br i1 %5135, label %2419, label %2402

; <label>:5136:                                   ; preds = %2535
  br label %5137

; <label>:5137:                                   ; preds = %5142, %5136
  %5138 = phi double* [ %5139, %5142 ], [ %2537, %5136 ]
  %5139 = getelementptr inbounds double, double* %5138, i64 -1
  %5140 = load double, double* %5139, align 8, !tbaa !8
  %5141 = fcmp olt double %2538, %5140
  br i1 %5141, label %5142, label %5144

; <label>:5142:                                   ; preds = %5137
  store double %5140, double* %5138, align 8, !tbaa !8
  %5143 = icmp eq double* %5139, %145
  br i1 %5143, label %5144, label %5137

; <label>:5144:                                   ; preds = %5137, %5142, %2535
  %5145 = phi double* [ %145, %2535 ], [ %145, %5142 ], [ %5138, %5137 ]
  store double %2538, double* %5145, align 8, !tbaa !8
  %5146 = getelementptr inbounds double, double* %2524, i64 2
  %5147 = icmp eq double* %5146, %147
  br i1 %5147, label %2540, label %2523

; <label>:5148:                                   ; preds = %2209
  br label %5149

; <label>:5149:                                   ; preds = %5154, %5148
  %5150 = phi double* [ %5151, %5154 ], [ %2211, %5148 ]
  %5151 = getelementptr inbounds double, double* %5150, i64 -1
  %5152 = load double, double* %5151, align 8, !tbaa !8
  %5153 = fcmp olt double %2212, %5152
  br i1 %5153, label %5154, label %5156

; <label>:5154:                                   ; preds = %5149
  store double %5152, double* %5150, align 8, !tbaa !8
  %5155 = icmp eq double* %5151, %2148
  br i1 %5155, label %5156, label %5149

; <label>:5156:                                   ; preds = %5149, %5154, %2209
  %5157 = phi double* [ %2148, %2209 ], [ %2148, %5154 ], [ %5150, %5149 ]
  store double %2212, double* %5157, align 8, !tbaa !8
  %5158 = getelementptr inbounds double, double* %2198, i64 2
  %5159 = icmp eq double* %5158, %2144
  br i1 %5159, label %2214, label %2197

; <label>:5160:                                   ; preds = %2330
  br label %5161

; <label>:5161:                                   ; preds = %5166, %5160
  %5162 = phi double* [ %5163, %5166 ], [ %2332, %5160 ]
  %5163 = getelementptr inbounds double, double* %5162, i64 -1
  %5164 = load double, double* %5163, align 8, !tbaa !8
  %5165 = fcmp olt double %2333, %5164
  br i1 %5165, label %5166, label %5168

; <label>:5166:                                   ; preds = %5161
  store double %5164, double* %5162, align 8, !tbaa !8
  %5167 = icmp eq double* %5163, %2148
  br i1 %5167, label %5168, label %5161

; <label>:5168:                                   ; preds = %5161, %5166, %2330
  %5169 = phi double* [ %2148, %2330 ], [ %2148, %5166 ], [ %5162, %5161 ]
  store double %2333, double* %5169, align 8, !tbaa !8
  %5170 = getelementptr inbounds double, double* %2319, i64 2
  %5171 = icmp eq double* %5170, %2144
  br i1 %5171, label %2335, label %2318

; <label>:5172:                                   ; preds = %1872
  br label %5173

; <label>:5173:                                   ; preds = %5179, %5172
  %5174 = phi double* [ %5180, %5179 ], [ %1858, %5172 ]
  %5175 = load double, double* %5174, align 8, !tbaa !8
  %5176 = fcmp olt double %1875, %5175
  br i1 %5176, label %5179, label %5177

; <label>:5177:                                   ; preds = %5173
  %5178 = getelementptr inbounds double, double* %5174, i64 -1
  br label %5183

; <label>:5179:                                   ; preds = %5173
  %5180 = getelementptr inbounds double, double* %5174, i64 1
  %5181 = getelementptr inbounds double, double* %5174, i64 -1
  store double %5175, double* %5181, align 8, !tbaa !8
  %5182 = icmp eq double* %5180, %147
  br i1 %5182, label %5183, label %5173

; <label>:5183:                                   ; preds = %5179, %5177, %1872
  %5184 = phi double* [ %1825, %1872 ], [ %5178, %5177 ], [ %1825, %5179 ]
  store double %1875, double* %5184, align 8, !tbaa !8
  %5185 = icmp eq double* %1874, %145
  br i1 %5185, label %1877, label %1856

; <label>:5186:                                   ; preds = %2114
  br label %5187

; <label>:5187:                                   ; preds = %5193, %5186
  %5188 = phi double* [ %5194, %5193 ], [ %2100, %5186 ]
  %5189 = load double, double* %5188, align 8, !tbaa !8
  %5190 = fcmp olt double %2117, %5189
  br i1 %5190, label %5193, label %5191

; <label>:5191:                                   ; preds = %5187
  %5192 = getelementptr inbounds double, double* %5188, i64 -1
  br label %5197

; <label>:5193:                                   ; preds = %5187
  %5194 = getelementptr inbounds double, double* %5188, i64 1
  %5195 = getelementptr inbounds double, double* %5188, i64 -1
  store double %5189, double* %5195, align 8, !tbaa !8
  %5196 = icmp eq double* %5194, %147
  br i1 %5196, label %5197, label %5187

; <label>:5197:                                   ; preds = %5193, %5191, %2114
  %5198 = phi double* [ %1825, %2114 ], [ %5192, %5191 ], [ %1825, %5193 ]
  store double %2117, double* %5198, align 8, !tbaa !8
  %5199 = icmp eq double* %2116, %145
  br i1 %5199, label %2119, label %2098

; <label>:5200:                                   ; preds = %1554
  br label %5201

; <label>:5201:                                   ; preds = %5207, %5200
  %5202 = phi double* [ %5208, %5207 ], [ %1540, %5200 ]
  %5203 = load double, double* %5202, align 8, !tbaa !8
  %5204 = fcmp olt double %1557, %5203
  br i1 %5204, label %5207, label %5205

; <label>:5205:                                   ; preds = %5201
  %5206 = getelementptr inbounds double, double* %5202, i64 -1
  br label %5211

; <label>:5207:                                   ; preds = %5201
  %5208 = getelementptr inbounds double, double* %5202, i64 1
  %5209 = getelementptr inbounds double, double* %5202, i64 -1
  store double %5203, double* %5209, align 8, !tbaa !8
  %5210 = icmp eq double* %5208, %1505
  br i1 %5210, label %5211, label %5201

; <label>:5211:                                   ; preds = %5207, %5205, %1554
  %5212 = phi double* [ %1507, %1554 ], [ %5206, %5205 ], [ %1507, %5207 ]
  store double %1557, double* %5212, align 8, !tbaa !8
  %5213 = icmp eq double* %1556, %1501
  br i1 %5213, label %1559, label %1538

; <label>:5214:                                   ; preds = %1796
  br label %5215

; <label>:5215:                                   ; preds = %5221, %5214
  %5216 = phi double* [ %5222, %5221 ], [ %1782, %5214 ]
  %5217 = load double, double* %5216, align 8, !tbaa !8
  %5218 = fcmp olt double %1799, %5217
  br i1 %5218, label %5221, label %5219

; <label>:5219:                                   ; preds = %5215
  %5220 = getelementptr inbounds double, double* %5216, i64 -1
  br label %5225

; <label>:5221:                                   ; preds = %5215
  %5222 = getelementptr inbounds double, double* %5216, i64 1
  %5223 = getelementptr inbounds double, double* %5216, i64 -1
  store double %5217, double* %5223, align 8, !tbaa !8
  %5224 = icmp eq double* %5222, %1505
  br i1 %5224, label %5225, label %5215

; <label>:5225:                                   ; preds = %5221, %5219, %1796
  %5226 = phi double* [ %1507, %1796 ], [ %5220, %5219 ], [ %1507, %5221 ]
  store double %1799, double* %5226, align 8, !tbaa !8
  %5227 = icmp eq double* %1798, %1501
  br i1 %5227, label %1801, label %1780

; <label>:5228:                                   ; preds = %1230
  br label %5229

; <label>:5229:                                   ; preds = %5235, %5228
  %5230 = phi double* [ %5236, %5235 ], [ %1216, %5228 ]
  %5231 = load double, double* %5230, align 8, !tbaa !8
  %5232 = fcmp olt double %1233, %5231
  br i1 %5232, label %5235, label %5233

; <label>:5233:                                   ; preds = %5229
  %5234 = getelementptr inbounds double, double* %5230, i64 -1
  br label %5239

; <label>:5235:                                   ; preds = %5229
  %5236 = getelementptr inbounds double, double* %5230, i64 1
  %5237 = getelementptr inbounds double, double* %5230, i64 -1
  store double %5231, double* %5237, align 8, !tbaa !8
  %5238 = icmp eq double* %5236, %1181
  br i1 %5238, label %5239, label %5229

; <label>:5239:                                   ; preds = %5235, %5233, %1230
  %5240 = phi double* [ %1183, %1230 ], [ %5234, %5233 ], [ %1183, %5235 ]
  store double %1233, double* %5240, align 8, !tbaa !8
  %5241 = icmp eq double* %1232, %1176
  br i1 %5241, label %1235, label %1214

; <label>:5242:                                   ; preds = %1472
  br label %5243

; <label>:5243:                                   ; preds = %5249, %5242
  %5244 = phi double* [ %5250, %5249 ], [ %1458, %5242 ]
  %5245 = load double, double* %5244, align 8, !tbaa !8
  %5246 = fcmp olt double %1475, %5245
  br i1 %5246, label %5249, label %5247

; <label>:5247:                                   ; preds = %5243
  %5248 = getelementptr inbounds double, double* %5244, i64 -1
  br label %5253

; <label>:5249:                                   ; preds = %5243
  %5250 = getelementptr inbounds double, double* %5244, i64 1
  %5251 = getelementptr inbounds double, double* %5244, i64 -1
  store double %5245, double* %5251, align 8, !tbaa !8
  %5252 = icmp eq double* %5250, %1181
  br i1 %5252, label %5253, label %5243

; <label>:5253:                                   ; preds = %5249, %5247, %1472
  %5254 = phi double* [ %1183, %1472 ], [ %5248, %5247 ], [ %1183, %5249 ]
  store double %1475, double* %5254, align 8, !tbaa !8
  %5255 = icmp eq double* %1474, %1176
  br i1 %5255, label %1477, label %1456
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #0

; Function Attrs: nounwind
declare double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @srand(i32) local_unnamed_addr #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: uwtable
declare void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"*, i64) local_unnamed_addr #3 align 2

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #0

; Function Attrs: uwtable
declare void @_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc(double*, double*, double*, double*, double, i8*) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(double*, double*, double*, double*, double, i8*) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc(double*, double*, double*, double*, double, i8*) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(double*, double*, double*, double*, double, i8*) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_(%"class.std::reverse_iterator"*, %"class.std::reverse_iterator"*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: uwtable
declare void @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"*) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"*) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"*) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc(double*, double*, double*, double*, double, i8*) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(double*, double*, double*, double*, double, i8*) local_unnamed_addr #3

; Function Attrs: norecurse uwtable
declare void @_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_(%"class.std::reverse_iterator"*, %"class.std::reverse_iterator"*) local_unnamed_addr #1

; Function Attrs: norecurse uwtable
declare void @_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"*) local_unnamed_addr #1

; Function Attrs: norecurse uwtable
declare void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"*) local_unnamed_addr #1

; Function Attrs: norecurse uwtable
declare void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"*) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #4

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !15, !11}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !15, !11}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = !{!22, !3, i64 0}
!22 = !{!"_ZTSSt16reverse_iteratorIPdE", !3, i64 0}
!23 = distinct !{!23, !13}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZNSt6vectorIdSaIdEE6rbeginEv: argument 0"}
!26 = distinct !{!26, !"_ZNSt6vectorIdSaIdEE6rbeginEv"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNSt6vectorIdSaIdEE4rendEv: argument 0"}
!29 = distinct !{!29, !"_ZNSt6vectorIdSaIdEE4rendEv"}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !11}
!44 = !{!45}
!45 = distinct !{!45, !46}
!46 = distinct !{!46, !"LVerDomain"}
!47 = !{!48}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !11}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNSt6vectorIdSaIdEE6rbeginEv: argument 0"}
!54 = distinct !{!54, !"_ZNSt6vectorIdSaIdEE6rbeginEv"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNSt6vectorIdSaIdEE4rendEv: argument 0"}
!57 = distinct !{!57, !"_ZNSt6vectorIdSaIdEE4rendEv"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNSt6vectorIdSaIdEE4rendEv: argument 0"}
!60 = distinct !{!60, !"_ZNSt6vectorIdSaIdEE4rendEv"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZNSt6vectorIdSaIdEE6rbeginEv: argument 0"}
!63 = distinct !{!63, !"_ZNSt6vectorIdSaIdEE6rbeginEv"}
!64 = !{!65}
!65 = distinct !{!65, !66}
!66 = distinct !{!66, !"LVerDomain"}
!67 = !{!68}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !11}
!72 = !{!73}
!73 = distinct !{!73, !74}
!74 = distinct !{!74, !"LVerDomain"}
!75 = !{!76}
!76 = distinct !{!76, !74}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = !{!84}
!84 = distinct !{!84, !85}
!85 = distinct !{!85, !"LVerDomain"}
!86 = !{!87}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !11}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNSt6vectorIdSaIdEE6rbeginEv: argument 0"}
!93 = distinct !{!93, !"_ZNSt6vectorIdSaIdEE6rbeginEv"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNSt6vectorIdSaIdEE4rendEv: argument 0"}
!96 = distinct !{!96, !"_ZNSt6vectorIdSaIdEE4rendEv"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZNSt6vectorIdSaIdEE6rbeginEv: argument 0"}
!99 = distinct !{!99, !"_ZNSt6vectorIdSaIdEE6rbeginEv"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNSt6vectorIdSaIdEE4rendEv: argument 0"}
!102 = distinct !{!102, !"_ZNSt6vectorIdSaIdEE4rendEv"}
!103 = !{!104}
!104 = distinct !{!104, !105}
!105 = distinct !{!105, !"LVerDomain"}
!106 = !{!107}
!107 = distinct !{!107, !105}
!108 = distinct !{!108, !11}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !11}
!111 = !{!112}
!112 = distinct !{!112, !113}
!113 = distinct !{!113, !"LVerDomain"}
!114 = !{!115}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !11}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !11}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !11}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZNSt6vectorIdSaIdEE6rbeginEv: argument 0"}
!132 = distinct !{!132, !"_ZNSt6vectorIdSaIdEE6rbeginEv"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZNSt6vectorIdSaIdEE4rendEv: argument 0"}
!135 = distinct !{!135, !"_ZNSt6vectorIdSaIdEE4rendEv"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZNSt6vectorIdSaIdEE6rbeginEv: argument 0"}
!138 = distinct !{!138, !"_ZNSt6vectorIdSaIdEE6rbeginEv"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZNSt6vectorIdSaIdEE4rendEv: argument 0"}
!141 = distinct !{!141, !"_ZNSt6vectorIdSaIdEE4rendEv"}
!142 = !{!143}
!143 = distinct !{!143, !144}
!144 = distinct !{!144, !"LVerDomain"}
!145 = !{!146}
!146 = distinct !{!146, !144}
!147 = distinct !{!147, !11}
!148 = distinct !{!148, !13}
!149 = distinct !{!149, !11}
!150 = !{!151}
!151 = distinct !{!151, !152}
!152 = distinct !{!152, !"LVerDomain"}
!153 = !{!154}
!154 = distinct !{!154, !152}
!155 = distinct !{!155, !11}
!156 = distinct !{!156, !13}
!157 = distinct !{!157, !11}
!158 = distinct !{!158, !13}
!159 = distinct !{!159, !13}
!160 = distinct !{!160, !13}
!161 = !{!162, !3, i64 0}
!162 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !163, i64 0}
!163 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !3, i64 0, !3, i64 8, !3, i64 16}
