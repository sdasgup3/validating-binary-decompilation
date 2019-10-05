; ModuleID = '_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.one_result = type { double, i8* }
%"class.std::reverse_iterator" = type { double* }
%"class.std::reverse_iterator.0" = type { [8 x i8], %"class.std::reverse_iterator" }

$_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc = comdat any

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

; Function Attrs: uwtable
define weak_odr void @_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc(double*, double*, double*, double*, double, i8*) local_unnamed_addr #1 comdat {
  %7 = ptrtoint double* %0 to i64
  %8 = load i32, i32* @iterations, align 4, !tbaa !2
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %240

; <label>:10:                                     ; preds = %6
  %11 = icmp eq double* %0, %1
  %12 = getelementptr inbounds double, double* %2, i64 1
  %13 = icmp eq double* %12, %3
  br i1 %11, label %14, label %41

; <label>:14:                                     ; preds = %10
  br i1 %13, label %16, label %15

; <label>:15:                                     ; preds = %14
  br label %22

; <label>:16:                                     ; preds = %14
  br label %17

; <label>:17:                                     ; preds = %16, %17
  %18 = phi i32 [ %19, %17 ], [ 0, %16 ]
  tail call void @_ZN9benchmark8heapsortIPddEEvT_S2_(double* %2, double* %3)
  %19 = add nuw nsw i32 %18, 1
  %20 = load i32, i32* @iterations, align 4, !tbaa !2
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %17, label %240

; <label>:22:                                     ; preds = %15, %37
  %23 = phi i32 [ %38, %37 ], [ 0, %15 ]
  tail call void @_ZN9benchmark8heapsortIPddEEvT_S2_(double* %2, double* %3)
  br label %24

; <label>:24:                                     ; preds = %30, %22
  %25 = phi double* [ %12, %22 ], [ %32, %30 ]
  %26 = phi double* [ %2, %22 ], [ %31, %30 ]
  %27 = load double, double* %25, align 8, !tbaa !6
  %28 = load double, double* %26, align 8, !tbaa !6
  %29 = fcmp olt double %27, %28
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds double, double* %26, i64 1
  %32 = getelementptr inbounds double, double* %25, i64 1
  %33 = icmp eq double* %32, %3
  br i1 %33, label %37, label %24

; <label>:34:                                     ; preds = %24
  %35 = load i32, i32* @current_test, align 4, !tbaa !2
  %36 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %35)
  br label %37

; <label>:37:                                     ; preds = %30, %34
  %38 = add nuw nsw i32 %23, 1
  %39 = load i32, i32* @iterations, align 4, !tbaa !2
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %22, label %240

; <label>:41:                                     ; preds = %10
  %42 = getelementptr double, double* %1, i64 -1
  %43 = ptrtoint double* %42 to i64
  %44 = sub i64 %43, %7
  %45 = lshr i64 %44, 3
  %46 = add nuw nsw i64 %45, 1
  %47 = getelementptr double, double* %1, i64 -1
  %48 = ptrtoint double* %47 to i64
  %49 = sub i64 %48, %7
  %50 = lshr i64 %49, 3
  %51 = add nuw nsw i64 %50, 1
  %52 = getelementptr double, double* %2, i64 %51
  %53 = getelementptr double, double* %0, i64 %51
  %54 = add nuw nsw i64 %45, 1
  %55 = and i64 %46, 3
  %56 = sub nsw i64 %54, %55
  %57 = and i64 %46, 3
  %58 = sub nsw i64 %54, %57
  %59 = and i64 %46, 4611686018427387900
  %60 = add nsw i64 %59, -4
  %61 = lshr exact i64 %60, 2
  %62 = add nuw nsw i64 %61, 1
  %63 = getelementptr double, double* %1, i64 -1
  %64 = icmp ult i64 %46, 4
  %65 = icmp ugt double* %53, %2
  %66 = icmp ugt double* %52, %0
  %67 = and i1 %65, %66
  %68 = ptrtoint double* %63 to i64
  %69 = and i64 %46, 4611686018427387900
  %70 = getelementptr double, double* %2, i64 %56
  %71 = getelementptr double, double* %0, i64 %58
  %72 = and i64 %62, 3
  %73 = icmp ult i64 %60, 12
  %74 = sub nsw i64 %62, %72
  %75 = icmp eq i64 %72, 0
  %76 = icmp eq i64 %46, %69
  br label %77

; <label>:77:                                     ; preds = %41, %236
  %78 = phi i32 [ 0, %41 ], [ %237, %236 ]
  %79 = or i1 %64, %67
  br i1 %79, label %151, label %80

; <label>:80:                                     ; preds = %77
  br i1 %73, label %131, label %81

; <label>:81:                                     ; preds = %80
  br label %82

; <label>:82:                                     ; preds = %82, %81
  %83 = phi i64 [ 0, %81 ], [ %128, %82 ]
  %84 = phi i64 [ %74, %81 ], [ %129, %82 ]
  %85 = getelementptr double, double* %2, i64 %83
  %86 = getelementptr double, double* %0, i64 %83
  %87 = bitcast double* %86 to <2 x i64>*
  %88 = load <2 x i64>, <2 x i64>* %87, align 8, !tbaa !6, !alias.scope !8
  %89 = getelementptr double, double* %86, i64 2
  %90 = bitcast double* %89 to <2 x i64>*
  %91 = load <2 x i64>, <2 x i64>* %90, align 8, !tbaa !6, !alias.scope !8
  %92 = bitcast double* %85 to <2 x i64>*
  store <2 x i64> %88, <2 x i64>* %92, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %93 = getelementptr double, double* %85, i64 2
  %94 = bitcast double* %93 to <2 x i64>*
  store <2 x i64> %91, <2 x i64>* %94, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %95 = or i64 %83, 4
  %96 = getelementptr double, double* %2, i64 %95
  %97 = getelementptr double, double* %0, i64 %95
  %98 = bitcast double* %97 to <2 x i64>*
  %99 = load <2 x i64>, <2 x i64>* %98, align 8, !tbaa !6, !alias.scope !8
  %100 = getelementptr double, double* %97, i64 2
  %101 = bitcast double* %100 to <2 x i64>*
  %102 = load <2 x i64>, <2 x i64>* %101, align 8, !tbaa !6, !alias.scope !8
  %103 = bitcast double* %96 to <2 x i64>*
  store <2 x i64> %99, <2 x i64>* %103, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %104 = getelementptr double, double* %96, i64 2
  %105 = bitcast double* %104 to <2 x i64>*
  store <2 x i64> %102, <2 x i64>* %105, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %106 = or i64 %83, 8
  %107 = getelementptr double, double* %2, i64 %106
  %108 = getelementptr double, double* %0, i64 %106
  %109 = bitcast double* %108 to <2 x i64>*
  %110 = load <2 x i64>, <2 x i64>* %109, align 8, !tbaa !6, !alias.scope !8
  %111 = getelementptr double, double* %108, i64 2
  %112 = bitcast double* %111 to <2 x i64>*
  %113 = load <2 x i64>, <2 x i64>* %112, align 8, !tbaa !6, !alias.scope !8
  %114 = bitcast double* %107 to <2 x i64>*
  store <2 x i64> %110, <2 x i64>* %114, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %115 = getelementptr double, double* %107, i64 2
  %116 = bitcast double* %115 to <2 x i64>*
  store <2 x i64> %113, <2 x i64>* %116, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %117 = or i64 %83, 12
  %118 = getelementptr double, double* %2, i64 %117
  %119 = getelementptr double, double* %0, i64 %117
  %120 = bitcast double* %119 to <2 x i64>*
  %121 = load <2 x i64>, <2 x i64>* %120, align 8, !tbaa !6, !alias.scope !8
  %122 = getelementptr double, double* %119, i64 2
  %123 = bitcast double* %122 to <2 x i64>*
  %124 = load <2 x i64>, <2 x i64>* %123, align 8, !tbaa !6, !alias.scope !8
  %125 = bitcast double* %118 to <2 x i64>*
  store <2 x i64> %121, <2 x i64>* %125, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %126 = getelementptr double, double* %118, i64 2
  %127 = bitcast double* %126 to <2 x i64>*
  store <2 x i64> %124, <2 x i64>* %127, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %128 = add i64 %83, 16
  %129 = add i64 %84, -4
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %82, !llvm.loop !13

; <label>:131:                                    ; preds = %82, %80
  %132 = phi i64 [ 0, %80 ], [ %128, %82 ]
  br i1 %75, label %150, label %133

; <label>:133:                                    ; preds = %131
  br label %134

; <label>:134:                                    ; preds = %134, %133
  %135 = phi i64 [ %132, %133 ], [ %147, %134 ]
  %136 = phi i64 [ %72, %133 ], [ %148, %134 ]
  %137 = getelementptr double, double* %2, i64 %135
  %138 = getelementptr double, double* %0, i64 %135
  %139 = bitcast double* %138 to <2 x i64>*
  %140 = load <2 x i64>, <2 x i64>* %139, align 8, !tbaa !6, !alias.scope !8
  %141 = getelementptr double, double* %138, i64 2
  %142 = bitcast double* %141 to <2 x i64>*
  %143 = load <2 x i64>, <2 x i64>* %142, align 8, !tbaa !6, !alias.scope !8
  %144 = bitcast double* %137 to <2 x i64>*
  store <2 x i64> %140, <2 x i64>* %144, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %145 = getelementptr double, double* %137, i64 2
  %146 = bitcast double* %145 to <2 x i64>*
  store <2 x i64> %143, <2 x i64>* %146, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %147 = add i64 %135, 4
  %148 = add i64 %136, -1
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %134, !llvm.loop !15

; <label>:150:                                    ; preds = %134, %131
  br i1 %76, label %221, label %151

; <label>:151:                                    ; preds = %77, %150
  %152 = phi double* [ %2, %77 ], [ %70, %150 ]
  %153 = phi double* [ %0, %77 ], [ %71, %150 ]
  %154 = ptrtoint double* %153 to i64
  %155 = sub i64 %68, %154
  %156 = lshr i64 %155, 3
  %157 = add nuw nsw i64 %156, 1
  %158 = and i64 %157, 7
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %172, label %160

; <label>:160:                                    ; preds = %151
  br label %161

; <label>:161:                                    ; preds = %161, %160
  %162 = phi double* [ %168, %161 ], [ %152, %160 ]
  %163 = phi double* [ %165, %161 ], [ %153, %160 ]
  %164 = phi i64 [ %170, %161 ], [ %158, %160 ]
  %165 = getelementptr inbounds double, double* %163, i64 1
  %166 = bitcast double* %163 to i64*
  %167 = load i64, i64* %166, align 8, !tbaa !6
  %168 = getelementptr inbounds double, double* %162, i64 1
  %169 = bitcast double* %162 to i64*
  store i64 %167, i64* %169, align 8, !tbaa !6
  %170 = add i64 %164, -1
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %161, !llvm.loop !17

; <label>:172:                                    ; preds = %161, %151
  %173 = phi double* [ %152, %151 ], [ %168, %161 ]
  %174 = phi double* [ %153, %151 ], [ %165, %161 ]
  %175 = icmp ult i64 %155, 56
  br i1 %175, label %221, label %176

; <label>:176:                                    ; preds = %172
  br label %177

; <label>:177:                                    ; preds = %177, %176
  %178 = phi double* [ %173, %176 ], [ %218, %177 ]
  %179 = phi double* [ %174, %176 ], [ %215, %177 ]
  %180 = getelementptr inbounds double, double* %179, i64 1
  %181 = bitcast double* %179 to i64*
  %182 = load i64, i64* %181, align 8, !tbaa !6
  %183 = getelementptr inbounds double, double* %178, i64 1
  %184 = bitcast double* %178 to i64*
  store i64 %182, i64* %184, align 8, !tbaa !6
  %185 = getelementptr inbounds double, double* %179, i64 2
  %186 = bitcast double* %180 to i64*
  %187 = load i64, i64* %186, align 8, !tbaa !6
  %188 = getelementptr inbounds double, double* %178, i64 2
  %189 = bitcast double* %183 to i64*
  store i64 %187, i64* %189, align 8, !tbaa !6
  %190 = getelementptr inbounds double, double* %179, i64 3
  %191 = bitcast double* %185 to i64*
  %192 = load i64, i64* %191, align 8, !tbaa !6
  %193 = getelementptr inbounds double, double* %178, i64 3
  %194 = bitcast double* %188 to i64*
  store i64 %192, i64* %194, align 8, !tbaa !6
  %195 = getelementptr inbounds double, double* %179, i64 4
  %196 = bitcast double* %190 to i64*
  %197 = load i64, i64* %196, align 8, !tbaa !6
  %198 = getelementptr inbounds double, double* %178, i64 4
  %199 = bitcast double* %193 to i64*
  store i64 %197, i64* %199, align 8, !tbaa !6
  %200 = getelementptr inbounds double, double* %179, i64 5
  %201 = bitcast double* %195 to i64*
  %202 = load i64, i64* %201, align 8, !tbaa !6
  %203 = getelementptr inbounds double, double* %178, i64 5
  %204 = bitcast double* %198 to i64*
  store i64 %202, i64* %204, align 8, !tbaa !6
  %205 = getelementptr inbounds double, double* %179, i64 6
  %206 = bitcast double* %200 to i64*
  %207 = load i64, i64* %206, align 8, !tbaa !6
  %208 = getelementptr inbounds double, double* %178, i64 6
  %209 = bitcast double* %203 to i64*
  store i64 %207, i64* %209, align 8, !tbaa !6
  %210 = getelementptr inbounds double, double* %179, i64 7
  %211 = bitcast double* %205 to i64*
  %212 = load i64, i64* %211, align 8, !tbaa !6
  %213 = getelementptr inbounds double, double* %178, i64 7
  %214 = bitcast double* %208 to i64*
  store i64 %212, i64* %214, align 8, !tbaa !6
  %215 = getelementptr inbounds double, double* %179, i64 8
  %216 = bitcast double* %210 to i64*
  %217 = load i64, i64* %216, align 8, !tbaa !6
  %218 = getelementptr inbounds double, double* %178, i64 8
  %219 = bitcast double* %213 to i64*
  store i64 %217, i64* %219, align 8, !tbaa !6
  %220 = icmp eq double* %215, %1
  br i1 %220, label %221, label %177, !llvm.loop !18

; <label>:221:                                    ; preds = %172, %177, %150
  tail call void @_ZN9benchmark8heapsortIPddEEvT_S2_(double* %2, double* %3)
  br i1 %13, label %236, label %222

; <label>:222:                                    ; preds = %221
  br label %227

; <label>:223:                                    ; preds = %227
  %224 = getelementptr inbounds double, double* %229, i64 1
  %225 = getelementptr inbounds double, double* %228, i64 1
  %226 = icmp eq double* %225, %3
  br i1 %226, label %236, label %227

; <label>:227:                                    ; preds = %222, %223
  %228 = phi double* [ %225, %223 ], [ %12, %222 ]
  %229 = phi double* [ %224, %223 ], [ %2, %222 ]
  %230 = load double, double* %228, align 8, !tbaa !6
  %231 = load double, double* %229, align 8, !tbaa !6
  %232 = fcmp olt double %230, %231
  br i1 %232, label %233, label %223

; <label>:233:                                    ; preds = %227
  %234 = load i32, i32* @current_test, align 4, !tbaa !2
  %235 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %234)
  br label %236

; <label>:236:                                    ; preds = %223, %221, %233
  %237 = add nuw nsw i32 %78, 1
  %238 = load i32, i32* @iterations, align 4, !tbaa !2
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %77, label %240

; <label>:240:                                    ; preds = %236, %37, %17, %6
  ret void
}

; Function Attrs: norecurse uwtable
declare void @_ZN9benchmark8heapsortIPddEEvT_S2_(double*, double*) local_unnamed_addr #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = !{!9}
!9 = distinct !{!9, !10}
!10 = distinct !{!10, !"LVerDomain"}
!11 = !{!12}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !14}
