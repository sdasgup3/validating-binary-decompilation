; ModuleID = '_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.one_result = type { double, i8* }
%"class.std::reverse_iterator" = type { double* }
%"class.std::reverse_iterator.0" = type { [8 x i8], %"class.std::reverse_iterator" }

$_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc = comdat any

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
define weak_odr void @_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc(double*, double*, double*, double*, double, i8*) local_unnamed_addr #1 comdat {
  %7 = ptrtoint double* %2 to i64
  %8 = ptrtoint double* %0 to i64
  %9 = load i32, i32* @iterations, align 4, !tbaa !2
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %317

; <label>:11:                                     ; preds = %6
  %12 = icmp eq double* %0, %1
  %13 = getelementptr inbounds double, double* %2, i64 1
  %14 = icmp eq double* %13, %3
  br i1 %12, label %15, label %77

; <label>:15:                                     ; preds = %11
  %16 = getelementptr double, double* %3, i64 -2
  %17 = ptrtoint double* %16 to i64
  %18 = sub i64 %17, %7
  %19 = and i64 %18, 8
  %20 = icmp eq i64 %19, 0
  %21 = icmp ult i64 %18, 8
  %22 = getelementptr inbounds double, double* %2, i64 2
  br label %23

; <label>:23:                                     ; preds = %15, %73
  %24 = phi i32 [ %74, %73 ], [ %9, %15 ]
  %25 = phi i32 [ %75, %73 ], [ 0, %15 ]
  br i1 %14, label %73, label %26

; <label>:26:                                     ; preds = %23
  br i1 %20, label %27, label %38

; <label>:27:                                     ; preds = %26
  %28 = load double, double* %13, align 8, !tbaa !6
  br label %29

; <label>:29:                                     ; preds = %34, %27
  %30 = phi double* [ %31, %34 ], [ %13, %27 ]
  %31 = getelementptr inbounds double, double* %30, i64 -1
  %32 = load double, double* %31, align 8, !tbaa !6
  %33 = fcmp olt double %28, %32
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %29
  store double %32, double* %30, align 8, !tbaa !6
  %35 = icmp eq double* %31, %2
  br i1 %35, label %36, label %29

; <label>:36:                                     ; preds = %29, %34
  %37 = phi double* [ %30, %29 ], [ %2, %34 ]
  store double %28, double* %37, align 8, !tbaa !6
  br label %38

; <label>:38:                                     ; preds = %36, %26
  %39 = phi double* [ %22, %36 ], [ %13, %26 ]
  br i1 %21, label %58, label %40

; <label>:40:                                     ; preds = %38
  br label %41

; <label>:41:                                     ; preds = %326, %40
  %42 = phi double* [ %39, %40 ], [ %328, %326 ]
  %43 = load double, double* %42, align 8, !tbaa !6
  %44 = icmp eq double* %42, %2
  br i1 %44, label %53, label %45

; <label>:45:                                     ; preds = %41
  br label %46

; <label>:46:                                     ; preds = %45, %51
  %47 = phi double* [ %48, %51 ], [ %42, %45 ]
  %48 = getelementptr inbounds double, double* %47, i64 -1
  %49 = load double, double* %48, align 8, !tbaa !6
  %50 = fcmp olt double %43, %49
  br i1 %50, label %51, label %53

; <label>:51:                                     ; preds = %46
  store double %49, double* %47, align 8, !tbaa !6
  %52 = icmp eq double* %48, %2
  br i1 %52, label %53, label %46

; <label>:53:                                     ; preds = %46, %51, %41
  %54 = phi double* [ %2, %41 ], [ %47, %46 ], [ %2, %51 ]
  store double %43, double* %54, align 8, !tbaa !6
  %55 = getelementptr inbounds double, double* %42, i64 1
  %56 = load double, double* %55, align 8, !tbaa !6
  %57 = icmp eq double* %55, %2
  br i1 %57, label %326, label %318

; <label>:58:                                     ; preds = %326, %38
  br label %59

; <label>:59:                                     ; preds = %58, %65
  %60 = phi double* [ %67, %65 ], [ %13, %58 ]
  %61 = phi double* [ %66, %65 ], [ %2, %58 ]
  %62 = load double, double* %60, align 8, !tbaa !6
  %63 = load double, double* %61, align 8, !tbaa !6
  %64 = fcmp olt double %62, %63
  br i1 %64, label %69, label %65

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds double, double* %61, i64 1
  %67 = getelementptr inbounds double, double* %60, i64 1
  %68 = icmp eq double* %67, %3
  br i1 %68, label %73, label %59

; <label>:69:                                     ; preds = %59
  %70 = load i32, i32* @current_test, align 4, !tbaa !2
  %71 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @iterations, align 4, !tbaa !2
  br label %73

; <label>:73:                                     ; preds = %65, %69, %23
  %74 = phi i32 [ %72, %69 ], [ %24, %23 ], [ %24, %65 ]
  %75 = add nuw nsw i32 %25, 1
  %76 = icmp slt i32 %75, %74
  br i1 %76, label %23, label %317

; <label>:77:                                     ; preds = %11
  %78 = getelementptr double, double* %1, i64 -1
  %79 = ptrtoint double* %78 to i64
  %80 = sub i64 %79, %8
  %81 = lshr i64 %80, 3
  %82 = add nuw nsw i64 %81, 1
  %83 = getelementptr double, double* %1, i64 -1
  %84 = ptrtoint double* %83 to i64
  %85 = sub i64 %84, %8
  %86 = lshr i64 %85, 3
  %87 = add nuw nsw i64 %86, 1
  %88 = getelementptr double, double* %2, i64 %87
  %89 = getelementptr double, double* %0, i64 %87
  %90 = add nuw nsw i64 %81, 1
  %91 = and i64 %82, 3
  %92 = sub nsw i64 %90, %91
  %93 = and i64 %82, 3
  %94 = sub nsw i64 %90, %93
  %95 = and i64 %82, 4611686018427387900
  %96 = add nsw i64 %95, -4
  %97 = lshr exact i64 %96, 2
  %98 = add nuw nsw i64 %97, 1
  %99 = getelementptr double, double* %1, i64 -1
  %100 = getelementptr double, double* %3, i64 -2
  %101 = ptrtoint double* %100 to i64
  %102 = sub i64 %101, %7
  %103 = icmp ult i64 %82, 4
  %104 = icmp ugt double* %89, %2
  %105 = icmp ugt double* %88, %0
  %106 = and i1 %104, %105
  %107 = ptrtoint double* %99 to i64
  %108 = and i64 %102, 8
  %109 = icmp eq i64 %108, 0
  %110 = and i64 %82, 4611686018427387900
  %111 = getelementptr double, double* %2, i64 %92
  %112 = getelementptr double, double* %0, i64 %94
  %113 = and i64 %98, 3
  %114 = icmp ult i64 %96, 12
  %115 = sub nsw i64 %98, %113
  %116 = icmp eq i64 %113, 0
  %117 = icmp ult i64 %102, 8
  %118 = icmp eq i64 %82, %110
  %119 = getelementptr inbounds double, double* %2, i64 2
  br label %120

; <label>:120:                                    ; preds = %77, %313
  %121 = phi i32 [ %9, %77 ], [ %314, %313 ]
  %122 = phi i32 [ 0, %77 ], [ %315, %313 ]
  %123 = or i1 %103, %106
  br i1 %123, label %195, label %124

; <label>:124:                                    ; preds = %120
  br i1 %114, label %175, label %125

; <label>:125:                                    ; preds = %124
  br label %126

; <label>:126:                                    ; preds = %126, %125
  %127 = phi i64 [ 0, %125 ], [ %172, %126 ]
  %128 = phi i64 [ %115, %125 ], [ %173, %126 ]
  %129 = getelementptr double, double* %2, i64 %127
  %130 = getelementptr double, double* %0, i64 %127
  %131 = bitcast double* %130 to <2 x i64>*
  %132 = load <2 x i64>, <2 x i64>* %131, align 8, !tbaa !6, !alias.scope !8
  %133 = getelementptr double, double* %130, i64 2
  %134 = bitcast double* %133 to <2 x i64>*
  %135 = load <2 x i64>, <2 x i64>* %134, align 8, !tbaa !6, !alias.scope !8
  %136 = bitcast double* %129 to <2 x i64>*
  store <2 x i64> %132, <2 x i64>* %136, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %137 = getelementptr double, double* %129, i64 2
  %138 = bitcast double* %137 to <2 x i64>*
  store <2 x i64> %135, <2 x i64>* %138, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %139 = or i64 %127, 4
  %140 = getelementptr double, double* %2, i64 %139
  %141 = getelementptr double, double* %0, i64 %139
  %142 = bitcast double* %141 to <2 x i64>*
  %143 = load <2 x i64>, <2 x i64>* %142, align 8, !tbaa !6, !alias.scope !8
  %144 = getelementptr double, double* %141, i64 2
  %145 = bitcast double* %144 to <2 x i64>*
  %146 = load <2 x i64>, <2 x i64>* %145, align 8, !tbaa !6, !alias.scope !8
  %147 = bitcast double* %140 to <2 x i64>*
  store <2 x i64> %143, <2 x i64>* %147, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %148 = getelementptr double, double* %140, i64 2
  %149 = bitcast double* %148 to <2 x i64>*
  store <2 x i64> %146, <2 x i64>* %149, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %150 = or i64 %127, 8
  %151 = getelementptr double, double* %2, i64 %150
  %152 = getelementptr double, double* %0, i64 %150
  %153 = bitcast double* %152 to <2 x i64>*
  %154 = load <2 x i64>, <2 x i64>* %153, align 8, !tbaa !6, !alias.scope !8
  %155 = getelementptr double, double* %152, i64 2
  %156 = bitcast double* %155 to <2 x i64>*
  %157 = load <2 x i64>, <2 x i64>* %156, align 8, !tbaa !6, !alias.scope !8
  %158 = bitcast double* %151 to <2 x i64>*
  store <2 x i64> %154, <2 x i64>* %158, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %159 = getelementptr double, double* %151, i64 2
  %160 = bitcast double* %159 to <2 x i64>*
  store <2 x i64> %157, <2 x i64>* %160, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %161 = or i64 %127, 12
  %162 = getelementptr double, double* %2, i64 %161
  %163 = getelementptr double, double* %0, i64 %161
  %164 = bitcast double* %163 to <2 x i64>*
  %165 = load <2 x i64>, <2 x i64>* %164, align 8, !tbaa !6, !alias.scope !8
  %166 = getelementptr double, double* %163, i64 2
  %167 = bitcast double* %166 to <2 x i64>*
  %168 = load <2 x i64>, <2 x i64>* %167, align 8, !tbaa !6, !alias.scope !8
  %169 = bitcast double* %162 to <2 x i64>*
  store <2 x i64> %165, <2 x i64>* %169, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %170 = getelementptr double, double* %162, i64 2
  %171 = bitcast double* %170 to <2 x i64>*
  store <2 x i64> %168, <2 x i64>* %171, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %172 = add i64 %127, 16
  %173 = add i64 %128, -4
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %126, !llvm.loop !13

; <label>:175:                                    ; preds = %126, %124
  %176 = phi i64 [ 0, %124 ], [ %172, %126 ]
  br i1 %116, label %194, label %177

; <label>:177:                                    ; preds = %175
  br label %178

; <label>:178:                                    ; preds = %178, %177
  %179 = phi i64 [ %176, %177 ], [ %191, %178 ]
  %180 = phi i64 [ %113, %177 ], [ %192, %178 ]
  %181 = getelementptr double, double* %2, i64 %179
  %182 = getelementptr double, double* %0, i64 %179
  %183 = bitcast double* %182 to <2 x i64>*
  %184 = load <2 x i64>, <2 x i64>* %183, align 8, !tbaa !6, !alias.scope !8
  %185 = getelementptr double, double* %182, i64 2
  %186 = bitcast double* %185 to <2 x i64>*
  %187 = load <2 x i64>, <2 x i64>* %186, align 8, !tbaa !6, !alias.scope !8
  %188 = bitcast double* %181 to <2 x i64>*
  store <2 x i64> %184, <2 x i64>* %188, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %189 = getelementptr double, double* %181, i64 2
  %190 = bitcast double* %189 to <2 x i64>*
  store <2 x i64> %187, <2 x i64>* %190, align 8, !tbaa !6, !alias.scope !11, !noalias !8
  %191 = add i64 %179, 4
  %192 = add i64 %180, -1
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %178, !llvm.loop !15

; <label>:194:                                    ; preds = %178, %175
  br i1 %118, label %265, label %195

; <label>:195:                                    ; preds = %120, %194
  %196 = phi double* [ %2, %120 ], [ %111, %194 ]
  %197 = phi double* [ %0, %120 ], [ %112, %194 ]
  %198 = ptrtoint double* %197 to i64
  %199 = sub i64 %107, %198
  %200 = lshr i64 %199, 3
  %201 = add nuw nsw i64 %200, 1
  %202 = and i64 %201, 7
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %216, label %204

; <label>:204:                                    ; preds = %195
  br label %205

; <label>:205:                                    ; preds = %205, %204
  %206 = phi double* [ %212, %205 ], [ %196, %204 ]
  %207 = phi double* [ %209, %205 ], [ %197, %204 ]
  %208 = phi i64 [ %214, %205 ], [ %202, %204 ]
  %209 = getelementptr inbounds double, double* %207, i64 1
  %210 = bitcast double* %207 to i64*
  %211 = load i64, i64* %210, align 8, !tbaa !6
  %212 = getelementptr inbounds double, double* %206, i64 1
  %213 = bitcast double* %206 to i64*
  store i64 %211, i64* %213, align 8, !tbaa !6
  %214 = add i64 %208, -1
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %205, !llvm.loop !17

; <label>:216:                                    ; preds = %205, %195
  %217 = phi double* [ %196, %195 ], [ %212, %205 ]
  %218 = phi double* [ %197, %195 ], [ %209, %205 ]
  %219 = icmp ult i64 %199, 56
  br i1 %219, label %265, label %220

; <label>:220:                                    ; preds = %216
  br label %221

; <label>:221:                                    ; preds = %221, %220
  %222 = phi double* [ %217, %220 ], [ %262, %221 ]
  %223 = phi double* [ %218, %220 ], [ %259, %221 ]
  %224 = getelementptr inbounds double, double* %223, i64 1
  %225 = bitcast double* %223 to i64*
  %226 = load i64, i64* %225, align 8, !tbaa !6
  %227 = getelementptr inbounds double, double* %222, i64 1
  %228 = bitcast double* %222 to i64*
  store i64 %226, i64* %228, align 8, !tbaa !6
  %229 = getelementptr inbounds double, double* %223, i64 2
  %230 = bitcast double* %224 to i64*
  %231 = load i64, i64* %230, align 8, !tbaa !6
  %232 = getelementptr inbounds double, double* %222, i64 2
  %233 = bitcast double* %227 to i64*
  store i64 %231, i64* %233, align 8, !tbaa !6
  %234 = getelementptr inbounds double, double* %223, i64 3
  %235 = bitcast double* %229 to i64*
  %236 = load i64, i64* %235, align 8, !tbaa !6
  %237 = getelementptr inbounds double, double* %222, i64 3
  %238 = bitcast double* %232 to i64*
  store i64 %236, i64* %238, align 8, !tbaa !6
  %239 = getelementptr inbounds double, double* %223, i64 4
  %240 = bitcast double* %234 to i64*
  %241 = load i64, i64* %240, align 8, !tbaa !6
  %242 = getelementptr inbounds double, double* %222, i64 4
  %243 = bitcast double* %237 to i64*
  store i64 %241, i64* %243, align 8, !tbaa !6
  %244 = getelementptr inbounds double, double* %223, i64 5
  %245 = bitcast double* %239 to i64*
  %246 = load i64, i64* %245, align 8, !tbaa !6
  %247 = getelementptr inbounds double, double* %222, i64 5
  %248 = bitcast double* %242 to i64*
  store i64 %246, i64* %248, align 8, !tbaa !6
  %249 = getelementptr inbounds double, double* %223, i64 6
  %250 = bitcast double* %244 to i64*
  %251 = load i64, i64* %250, align 8, !tbaa !6
  %252 = getelementptr inbounds double, double* %222, i64 6
  %253 = bitcast double* %247 to i64*
  store i64 %251, i64* %253, align 8, !tbaa !6
  %254 = getelementptr inbounds double, double* %223, i64 7
  %255 = bitcast double* %249 to i64*
  %256 = load i64, i64* %255, align 8, !tbaa !6
  %257 = getelementptr inbounds double, double* %222, i64 7
  %258 = bitcast double* %252 to i64*
  store i64 %256, i64* %258, align 8, !tbaa !6
  %259 = getelementptr inbounds double, double* %223, i64 8
  %260 = bitcast double* %254 to i64*
  %261 = load i64, i64* %260, align 8, !tbaa !6
  %262 = getelementptr inbounds double, double* %222, i64 8
  %263 = bitcast double* %257 to i64*
  store i64 %261, i64* %263, align 8, !tbaa !6
  %264 = icmp eq double* %259, %1
  br i1 %264, label %265, label %221, !llvm.loop !18

; <label>:265:                                    ; preds = %216, %221, %194
  br i1 %14, label %313, label %266

; <label>:266:                                    ; preds = %265
  br i1 %109, label %267, label %278

; <label>:267:                                    ; preds = %266
  %268 = load double, double* %13, align 8, !tbaa !6
  br label %269

; <label>:269:                                    ; preds = %274, %267
  %270 = phi double* [ %271, %274 ], [ %13, %267 ]
  %271 = getelementptr inbounds double, double* %270, i64 -1
  %272 = load double, double* %271, align 8, !tbaa !6
  %273 = fcmp olt double %268, %272
  br i1 %273, label %274, label %276

; <label>:274:                                    ; preds = %269
  store double %272, double* %270, align 8, !tbaa !6
  %275 = icmp eq double* %271, %2
  br i1 %275, label %276, label %269

; <label>:276:                                    ; preds = %269, %274
  %277 = phi double* [ %270, %269 ], [ %2, %274 ]
  store double %268, double* %277, align 8, !tbaa !6
  br label %278

; <label>:278:                                    ; preds = %276, %266
  %279 = phi double* [ %119, %276 ], [ %13, %266 ]
  br i1 %117, label %298, label %280

; <label>:280:                                    ; preds = %278
  br label %281

; <label>:281:                                    ; preds = %338, %280
  %282 = phi double* [ %279, %280 ], [ %340, %338 ]
  %283 = load double, double* %282, align 8, !tbaa !6
  %284 = icmp eq double* %282, %2
  br i1 %284, label %293, label %285

; <label>:285:                                    ; preds = %281
  br label %286

; <label>:286:                                    ; preds = %285, %291
  %287 = phi double* [ %288, %291 ], [ %282, %285 ]
  %288 = getelementptr inbounds double, double* %287, i64 -1
  %289 = load double, double* %288, align 8, !tbaa !6
  %290 = fcmp olt double %283, %289
  br i1 %290, label %291, label %293

; <label>:291:                                    ; preds = %286
  store double %289, double* %287, align 8, !tbaa !6
  %292 = icmp eq double* %288, %2
  br i1 %292, label %293, label %286

; <label>:293:                                    ; preds = %291, %286, %281
  %294 = phi double* [ %2, %281 ], [ %287, %286 ], [ %2, %291 ]
  store double %283, double* %294, align 8, !tbaa !6
  %295 = getelementptr inbounds double, double* %282, i64 1
  %296 = load double, double* %295, align 8, !tbaa !6
  %297 = icmp eq double* %295, %2
  br i1 %297, label %338, label %330

; <label>:298:                                    ; preds = %338, %278
  br label %303

; <label>:299:                                    ; preds = %303
  %300 = getelementptr inbounds double, double* %305, i64 1
  %301 = getelementptr inbounds double, double* %304, i64 1
  %302 = icmp eq double* %301, %3
  br i1 %302, label %313, label %303

; <label>:303:                                    ; preds = %298, %299
  %304 = phi double* [ %301, %299 ], [ %13, %298 ]
  %305 = phi double* [ %300, %299 ], [ %2, %298 ]
  %306 = load double, double* %304, align 8, !tbaa !6
  %307 = load double, double* %305, align 8, !tbaa !6
  %308 = fcmp olt double %306, %307
  br i1 %308, label %309, label %299

; <label>:309:                                    ; preds = %303
  %310 = load i32, i32* @current_test, align 4, !tbaa !2
  %311 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %310)
  %312 = load i32, i32* @iterations, align 4, !tbaa !2
  br label %313

; <label>:313:                                    ; preds = %299, %265, %309
  %314 = phi i32 [ %121, %265 ], [ %312, %309 ], [ %121, %299 ]
  %315 = add nuw nsw i32 %122, 1
  %316 = icmp slt i32 %315, %314
  br i1 %316, label %120, label %317

; <label>:317:                                    ; preds = %313, %73, %6
  ret void

; <label>:318:                                    ; preds = %53
  br label %319

; <label>:319:                                    ; preds = %324, %318
  %320 = phi double* [ %321, %324 ], [ %55, %318 ]
  %321 = getelementptr inbounds double, double* %320, i64 -1
  %322 = load double, double* %321, align 8, !tbaa !6
  %323 = fcmp olt double %56, %322
  br i1 %323, label %324, label %326

; <label>:324:                                    ; preds = %319
  store double %322, double* %320, align 8, !tbaa !6
  %325 = icmp eq double* %321, %2
  br i1 %325, label %326, label %319

; <label>:326:                                    ; preds = %319, %324, %53
  %327 = phi double* [ %2, %53 ], [ %320, %319 ], [ %2, %324 ]
  store double %56, double* %327, align 8, !tbaa !6
  %328 = getelementptr inbounds double, double* %42, i64 2
  %329 = icmp eq double* %328, %3
  br i1 %329, label %58, label %41

; <label>:330:                                    ; preds = %293
  br label %331

; <label>:331:                                    ; preds = %336, %330
  %332 = phi double* [ %333, %336 ], [ %295, %330 ]
  %333 = getelementptr inbounds double, double* %332, i64 -1
  %334 = load double, double* %333, align 8, !tbaa !6
  %335 = fcmp olt double %296, %334
  br i1 %335, label %336, label %338

; <label>:336:                                    ; preds = %331
  store double %334, double* %332, align 8, !tbaa !6
  %337 = icmp eq double* %333, %2
  br i1 %337, label %338, label %331

; <label>:338:                                    ; preds = %331, %336, %293
  %339 = phi double* [ %2, %293 ], [ %332, %331 ], [ %2, %336 ]
  store double %296, double* %339, align 8, !tbaa !6
  %340 = getelementptr inbounds double, double* %282, i64 2
  %341 = icmp eq double* %340, %3
  br i1 %341, label %298, label %281
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
