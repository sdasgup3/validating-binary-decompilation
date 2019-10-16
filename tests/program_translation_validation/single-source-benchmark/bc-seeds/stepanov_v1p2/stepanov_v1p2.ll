; ModuleID = 'stepanov_v1p2/stepanov_v1p2.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Double = type { double }
%struct.double_pointer = type { double* }
%struct.Double_pointer = type { %struct.Double* }
%struct.reverse_iterator.1 = type { %struct.double_pointer }
%struct.reverse_iterator.2 = type { %struct.Double_pointer }
%struct.reverse_iterator.5 = type { %struct.reverse_iterator.1 }
%struct.reverse_iterator.6 = type { %struct.reverse_iterator.2 }
%struct.anon = type { i8 }

$_ZN16reverse_iteratorIS_I14Double_pointer6DoubleES1_EC2ES2_ = comdat any

$_ZN16reverse_iteratorIS_I14double_pointerdEdEC2ES1_ = comdat any

$_ZN16reverse_iteratorIS_IP6DoubleS0_ES0_EC2ES2_ = comdat any

$_ZN16reverse_iteratorIS_IPddEdEC2ES1_ = comdat any

$_ZN16reverse_iteratorI14Double_pointer6DoubleEC2ES0_ = comdat any

$_ZN16reverse_iteratorI14double_pointerdEC2ES0_ = comdat any

$_ZN16reverse_iteratorIP6DoubleS0_EC2ES1_ = comdat any

$_ZN16reverse_iteratorIPddEC2ES0_ = comdat any

$_ZN14Double_pointerC2EP6Double = comdat any

$_ZN14double_pointerC2EPd = comdat any

$_ZN6DoubleC2ERKd = comdat any

$_ZN6DoubleC2Ev = comdat any

$_Z11start_timerv = comdat any

$_Z5checkd = comdat any

$_Z5timerv = comdat any

$_Z4fillIPddEvT_S1_T0_ = comdat any

$_Z4fillIP6DoubleS0_EvT_S2_T0_ = comdat any

$_Z4testIPddEvT_S1_T0_ = comdat any

$_Z4testIP6DoubleS0_EvT_S2_T0_ = comdat any

$_Z4testI14double_pointerdEvT_S1_T0_ = comdat any

$_Z4testI14Double_pointer6DoubleEvT_S2_T0_ = comdat any

$_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_ = comdat any

$_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_ = comdat any

$_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_ = comdat any

$_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_ = comdat any

$_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_ = comdat any

$_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_ = comdat any

$_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_ = comdat any

$_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_ = comdat any

$_Z10accumulateI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_ET0_T_S6_S5_ = comdat any

$_ZN6DoublecvdEv = comdat any

$_ZneI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_EEiRKT_S7_ = comdat any

$_ZN16reverse_iteratorIS_I14Double_pointer6DoubleES1_EppEi = comdat any

$_ZNK16reverse_iteratorIS_I14Double_pointer6DoubleES1_EdeEv = comdat any

$_ZplRK6DoubleS1_ = comdat any

$_ZN16reverse_iteratorI14Double_pointer6DoubleEmmEv = comdat any

$_ZNK16reverse_iteratorI14Double_pointer6DoubleEdeEv = comdat any

$_ZN14Double_pointermmEv = comdat any

$_ZNK14Double_pointerdeEv = comdat any

$_ZN14Double_pointerppEv = comdat any

$_ZN16reverse_iteratorIS_I14Double_pointer6DoubleES1_EppEv = comdat any

$_ZeqI16reverse_iteratorI14Double_pointer6DoubleES2_EiRKS0_IT_T0_ES8_ = comdat any

$_ZeqI14Double_pointer6DoubleEiRK16reverse_iteratorIT_T0_ES7_ = comdat any

$_ZeqRK14Double_pointerS1_ = comdat any

$_Z10accumulateI16reverse_iteratorIS0_I14double_pointerdEdEdET0_T_S5_S4_ = comdat any

$_ZneI16reverse_iteratorIS0_I14double_pointerdEdEEiRKT_S6_ = comdat any

$_ZN16reverse_iteratorIS_I14double_pointerdEdEppEi = comdat any

$_ZNK16reverse_iteratorIS_I14double_pointerdEdEdeEv = comdat any

$_ZN16reverse_iteratorI14double_pointerdEmmEv = comdat any

$_ZNK16reverse_iteratorI14double_pointerdEdeEv = comdat any

$_ZN14double_pointermmEv = comdat any

$_ZNK14double_pointerdeEv = comdat any

$_ZN14double_pointerppEv = comdat any

$_ZN16reverse_iteratorIS_I14double_pointerdEdEppEv = comdat any

$_ZeqI16reverse_iteratorI14double_pointerdEdEiRKS0_IT_T0_ES7_ = comdat any

$_ZeqI14double_pointerdEiRK16reverse_iteratorIT_T0_ES6_ = comdat any

$_ZeqRK14double_pointerS1_ = comdat any

$_Z10accumulateI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_ET0_T_S6_S5_ = comdat any

$_ZneI16reverse_iteratorIS0_IP6DoubleS1_ES1_EEiRKT_S7_ = comdat any

$_ZN16reverse_iteratorIS_IP6DoubleS0_ES0_EppEi = comdat any

$_ZNK16reverse_iteratorIS_IP6DoubleS0_ES0_EdeEv = comdat any

$_ZN16reverse_iteratorIP6DoubleS0_EmmEv = comdat any

$_ZNK16reverse_iteratorIP6DoubleS0_EdeEv = comdat any

$_ZN16reverse_iteratorIS_IP6DoubleS0_ES0_EppEv = comdat any

$_ZeqI16reverse_iteratorIP6DoubleS1_ES1_EiRKS0_IT_T0_ES8_ = comdat any

$_ZeqIP6DoubleS0_EiRK16reverse_iteratorIT_T0_ES7_ = comdat any

$_Z10accumulateI16reverse_iteratorIS0_IPddEdEdET0_T_S5_S4_ = comdat any

$_ZneI16reverse_iteratorIS0_IPddEdEEiRKT_S6_ = comdat any

$_ZN16reverse_iteratorIS_IPddEdEppEi = comdat any

$_ZNK16reverse_iteratorIS_IPddEdEdeEv = comdat any

$_ZN16reverse_iteratorIPddEmmEv = comdat any

$_ZNK16reverse_iteratorIPddEdeEv = comdat any

$_ZN16reverse_iteratorIS_IPddEdEppEv = comdat any

$_ZeqI16reverse_iteratorIPddEdEiRKS0_IT_T0_ES7_ = comdat any

$_ZeqIPddEiRK16reverse_iteratorIT_T0_ES6_ = comdat any

$_Z10accumulateI16reverse_iteratorI14Double_pointer6DoubleES2_ET0_T_S5_S4_ = comdat any

$_ZneI16reverse_iteratorI14Double_pointer6DoubleEEiRKT_S6_ = comdat any

$_ZN16reverse_iteratorI14Double_pointer6DoubleEppEi = comdat any

$_ZN16reverse_iteratorI14Double_pointer6DoubleEppEv = comdat any

$_Z10accumulateI16reverse_iteratorI14double_pointerdEdET0_T_S4_S3_ = comdat any

$_ZneI16reverse_iteratorI14double_pointerdEEiRKT_S5_ = comdat any

$_ZN16reverse_iteratorI14double_pointerdEppEi = comdat any

$_ZN16reverse_iteratorI14double_pointerdEppEv = comdat any

$_Z10accumulateI16reverse_iteratorIP6DoubleS1_ES1_ET0_T_S5_S4_ = comdat any

$_ZneI16reverse_iteratorIP6DoubleS1_EEiRKT_S6_ = comdat any

$_ZN16reverse_iteratorIP6DoubleS0_EppEi = comdat any

$_ZN16reverse_iteratorIP6DoubleS0_EppEv = comdat any

$_Z10accumulateI16reverse_iteratorIPddEdET0_T_S4_S3_ = comdat any

$_ZneI16reverse_iteratorIPddEEiRKT_S5_ = comdat any

$_ZN16reverse_iteratorIPddEppEi = comdat any

$_ZN16reverse_iteratorIPddEppEv = comdat any

$_Z10accumulateI14Double_pointer6DoubleET0_T_S3_S2_ = comdat any

$_ZneI14Double_pointerEiRKT_S3_ = comdat any

$_ZN14Double_pointerppEi = comdat any

$_Z10accumulateI14double_pointerdET0_T_S2_S1_ = comdat any

$_ZneI14double_pointerEiRKT_S3_ = comdat any

$_ZN14double_pointerppEi = comdat any

$_Z10accumulateIP6DoubleS0_ET0_T_S3_S2_ = comdat any

$_Z10accumulateIPddET0_T_S2_S1_ = comdat any

@iterations = global i32 250000, align 4
@current_test = global i32 0, align 4
@result_times = global [20 x double] zeroinitializer, align 16
@start_time = global i64 0, align 8
@end_time = global i64 0, align 8
@data = global [2000 x double] zeroinitializer, align 16
@Data = global [2000 x %struct.Double] zeroinitializer, align 16
@d = global double 0.000000e+00, align 8
@D = global %struct.Double zeroinitializer, align 8
@dpb = global double* getelementptr inbounds ([2000 x double], [2000 x double]* @data, i32 0, i32 0), align 8
@dpe = global double* bitcast (i8* getelementptr (i8, i8* bitcast ([2000 x double]* @data to i8*), i64 16000) to double*), align 8
@Dpb = global %struct.Double* getelementptr inbounds ([2000 x %struct.Double], [2000 x %struct.Double]* @Data, i32 0, i32 0), align 8
@Dpe = global %struct.Double* bitcast (i8* getelementptr (i8, i8* bitcast ([2000 x %struct.Double]* @Data to i8*), i64 16000) to %struct.Double*), align 8
@dPb = global %struct.double_pointer zeroinitializer, align 8
@dPe = global %struct.double_pointer zeroinitializer, align 8
@DPb = global %struct.Double_pointer zeroinitializer, align 8
@DPe = global %struct.Double_pointer zeroinitializer, align 8
@rdpb = global %struct.double_pointer zeroinitializer, align 8
@rdpe = global %struct.double_pointer zeroinitializer, align 8
@rDpb = global %struct.Double_pointer zeroinitializer, align 8
@rDpe = global %struct.Double_pointer zeroinitializer, align 8
@rdPb = global %struct.reverse_iterator.1 zeroinitializer, align 8
@rdPe = global %struct.reverse_iterator.1 zeroinitializer, align 8
@rDPb = global %struct.reverse_iterator.2 zeroinitializer, align 8
@rDPe = global %struct.reverse_iterator.2 zeroinitializer, align 8
@rrdpb = global %struct.reverse_iterator.1 zeroinitializer, align 8
@rrdpe = global %struct.reverse_iterator.1 zeroinitializer, align 8
@rrDpb = global %struct.reverse_iterator.2 zeroinitializer, align 8
@rrDpe = global %struct.reverse_iterator.2 zeroinitializer, align 8
@rrdPb = global %struct.reverse_iterator.5 zeroinitializer, align 8
@rrdPe = global %struct.reverse_iterator.5 zeroinitializer, align 8
@rrDPb = global %struct.reverse_iterator.6 zeroinitializer, align 8
@rrDPe = global %struct.reverse_iterator.6 zeroinitializer, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_stepanov_v1p2.cpp, i8* null }]
@.str = private unnamed_addr constant [49 x i8] c"\0Atest      absolute   additions      ratio with\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"number    time       per second     test0\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%2i       %5.2fsec    %5.2fM         %.2f\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"mean:    %5.2fsec    %5.2fM         %.2f\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\0ATotal absolute time: %.2f sec\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\0AAbstraction Penalty: %.2f\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"test %i failed\0A\00", align 1
@_ZL10init_value = internal constant double 3.000000e+00, align 8
@plus = internal global %struct.anon zeroinitializer, align 1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_stepanov_v1p2.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.6()
  call void @__cxx_global_var_init.7()
  call void @__cxx_global_var_init.8()
  call void @__cxx_global_var_init.9()
  call void @__cxx_global_var_init.10()
  call void @__cxx_global_var_init.11()
  call void @__cxx_global_var_init.12()
  call void @__cxx_global_var_init.13()
  call void @__cxx_global_var_init.14()
  call void @__cxx_global_var_init.15()
  call void @__cxx_global_var_init.16()
  call void @__cxx_global_var_init.17()
  call void @__cxx_global_var_init.18()
  call void @__cxx_global_var_init.19()
  call void @__cxx_global_var_init.20()
  call void @__cxx_global_var_init.21()
  call void @__cxx_global_var_init.22()
  call void @__cxx_global_var_init.23()
  call void @__cxx_global_var_init.24()
  call void @__cxx_global_var_init.25()
  call void @__cxx_global_var_init.26()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %arrayctor.loop, %entry
  %arrayctor.cur = phi %struct.Double* [ getelementptr inbounds ([2000 x %struct.Double], [2000 x %struct.Double]* @Data, i32 0, i32 0), %entry ], [ %arrayctor.next, %arrayctor.loop ]
  call void @_ZN6DoubleC2Ev(%struct.Double* %arrayctor.cur)
  %arrayctor.next = getelementptr inbounds %struct.Double, %struct.Double* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %struct.Double* %arrayctor.next, getelementptr inbounds (%struct.Double, %struct.Double* getelementptr inbounds ([2000 x %struct.Double], [2000 x %struct.Double]* @Data, i32 0, i32 0), i64 2000)
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %arrayctor.loop
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.6() #0 section ".text.startup" {
entry:
  %ref.tmp = alloca double, align 8
  store double 0.000000e+00, double* %ref.tmp, align 8
  call void @_ZN6DoubleC2ERKd(%struct.Double* @D, double* dereferenceable(8) %ref.tmp)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.7() #0 section ".text.startup" {
entry:
  %0 = load double*, double** @dpb, align 8
  call void @_ZN14double_pointerC2EPd(%struct.double_pointer* @dPb, double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.8() #0 section ".text.startup" {
entry:
  %0 = load double*, double** @dpe, align 8
  call void @_ZN14double_pointerC2EPd(%struct.double_pointer* @dPe, double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.9() #0 section ".text.startup" {
entry:
  %0 = load %struct.Double*, %struct.Double** @Dpb, align 8
  call void @_ZN14Double_pointerC2EP6Double(%struct.Double_pointer* @DPb, %struct.Double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.10() #0 section ".text.startup" {
entry:
  %0 = load %struct.Double*, %struct.Double** @Dpe, align 8
  call void @_ZN14Double_pointerC2EP6Double(%struct.Double_pointer* @DPe, %struct.Double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.11() #0 section ".text.startup" {
entry:
  %0 = load double*, double** @dpe, align 8
  call void @_ZN16reverse_iteratorIPddEC2ES0_(%struct.double_pointer* @rdpb, double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.12() #0 section ".text.startup" {
entry:
  %0 = load double*, double** @dpb, align 8
  call void @_ZN16reverse_iteratorIPddEC2ES0_(%struct.double_pointer* @rdpe, double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.13() #0 section ".text.startup" {
entry:
  %0 = load %struct.Double*, %struct.Double** @Dpe, align 8
  call void @_ZN16reverse_iteratorIP6DoubleS0_EC2ES1_(%struct.Double_pointer* @rDpb, %struct.Double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.14() #0 section ".text.startup" {
entry:
  %0 = load %struct.Double*, %struct.Double** @Dpb, align 8
  call void @_ZN16reverse_iteratorIP6DoubleS0_EC2ES1_(%struct.Double_pointer* @rDpe, %struct.Double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.15() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %struct.double_pointer, align 8
  %0 = bitcast %struct.double_pointer* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.double_pointer* @dPe to i8*), i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %agg.tmp, i32 0, i32 0
  %1 = load double*, double** %coerce.dive, align 8
  call void @_ZN16reverse_iteratorI14double_pointerdEC2ES0_(%struct.reverse_iterator.1* @rdPb, double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.16() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %struct.double_pointer, align 8
  %0 = bitcast %struct.double_pointer* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.double_pointer* @dPb to i8*), i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %agg.tmp, i32 0, i32 0
  %1 = load double*, double** %coerce.dive, align 8
  call void @_ZN16reverse_iteratorI14double_pointerdEC2ES0_(%struct.reverse_iterator.1* @rdPe, double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.17() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %struct.Double_pointer, align 8
  %0 = bitcast %struct.Double_pointer* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.Double_pointer* @DPe to i8*), i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %agg.tmp, i32 0, i32 0
  %1 = load %struct.Double*, %struct.Double** %coerce.dive, align 8
  call void @_ZN16reverse_iteratorI14Double_pointer6DoubleEC2ES0_(%struct.reverse_iterator.2* @rDPb, %struct.Double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.18() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %struct.Double_pointer, align 8
  %0 = bitcast %struct.Double_pointer* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.Double_pointer* @DPb to i8*), i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %agg.tmp, i32 0, i32 0
  %1 = load %struct.Double*, %struct.Double** %coerce.dive, align 8
  call void @_ZN16reverse_iteratorI14Double_pointer6DoubleEC2ES0_(%struct.reverse_iterator.2* @rDPe, %struct.Double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.19() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %struct.double_pointer, align 8
  %0 = bitcast %struct.double_pointer* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.double_pointer* @rdpe to i8*), i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %agg.tmp, i32 0, i32 0
  %1 = load double*, double** %coerce.dive, align 8
  call void @_ZN16reverse_iteratorIS_IPddEdEC2ES1_(%struct.reverse_iterator.1* @rrdpb, double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.20() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %struct.double_pointer, align 8
  %0 = bitcast %struct.double_pointer* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.double_pointer* @rdpb to i8*), i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %agg.tmp, i32 0, i32 0
  %1 = load double*, double** %coerce.dive, align 8
  call void @_ZN16reverse_iteratorIS_IPddEdEC2ES1_(%struct.reverse_iterator.1* @rrdpe, double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.21() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %struct.Double_pointer, align 8
  %0 = bitcast %struct.Double_pointer* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.Double_pointer* @rDpe to i8*), i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %agg.tmp, i32 0, i32 0
  %1 = load %struct.Double*, %struct.Double** %coerce.dive, align 8
  call void @_ZN16reverse_iteratorIS_IP6DoubleS0_ES0_EC2ES2_(%struct.reverse_iterator.2* @rrDpb, %struct.Double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.22() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %struct.Double_pointer, align 8
  %0 = bitcast %struct.Double_pointer* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.Double_pointer* @rDpb to i8*), i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %agg.tmp, i32 0, i32 0
  %1 = load %struct.Double*, %struct.Double** %coerce.dive, align 8
  call void @_ZN16reverse_iteratorIS_IP6DoubleS0_ES0_EC2ES2_(%struct.reverse_iterator.2* @rrDpe, %struct.Double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.23() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %struct.reverse_iterator.1, align 8
  %0 = bitcast %struct.reverse_iterator.1* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.reverse_iterator.1* @rdPe to i8*), i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %agg.tmp, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive, i32 0, i32 0
  %1 = load double*, double** %coerce.dive1, align 8
  call void @_ZN16reverse_iteratorIS_I14double_pointerdEdEC2ES1_(%struct.reverse_iterator.5* @rrdPb, double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.24() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %struct.reverse_iterator.1, align 8
  %0 = bitcast %struct.reverse_iterator.1* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.reverse_iterator.1* @rdPb to i8*), i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %agg.tmp, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive, i32 0, i32 0
  %1 = load double*, double** %coerce.dive1, align 8
  call void @_ZN16reverse_iteratorIS_I14double_pointerdEdEC2ES1_(%struct.reverse_iterator.5* @rrdPe, double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.25() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %struct.reverse_iterator.2, align 8
  %0 = bitcast %struct.reverse_iterator.2* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.reverse_iterator.2* @rDPe to i8*), i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %agg.tmp, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive, i32 0, i32 0
  %1 = load %struct.Double*, %struct.Double** %coerce.dive1, align 8
  call void @_ZN16reverse_iteratorIS_I14Double_pointer6DoubleES1_EC2ES2_(%struct.reverse_iterator.6* @rrDPb, %struct.Double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.26() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %struct.reverse_iterator.2, align 8
  %0 = bitcast %struct.reverse_iterator.2* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.reverse_iterator.2* @rDPb to i8*), i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %agg.tmp, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive, i32 0, i32 0
  %1 = load %struct.Double*, %struct.Double** %coerce.dive1, align 8
  call void @_ZN16reverse_iteratorIS_I14Double_pointer6DoubleES1_EC2ES2_(%struct.reverse_iterator.6* @rrDPe, %struct.Double* %1)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN16reverse_iteratorIS_I14Double_pointer6DoubleES1_EC2ES2_(%struct.reverse_iterator.6* %this, %struct.Double* %x.coerce) unnamed_addr #2 comdat align 2 {
entry:
  %x = alloca %struct.reverse_iterator.2, align 8
  %this.addr = alloca %struct.reverse_iterator.6*, align 8
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %x, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive, i32 0, i32 0
  store %struct.Double* %x.coerce, %struct.Double** %coerce.dive1, align 8
  store %struct.reverse_iterator.6* %this, %struct.reverse_iterator.6** %this.addr, align 8
  %this2 = load %struct.reverse_iterator.6*, %struct.reverse_iterator.6** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.6, %struct.reverse_iterator.6* %this2, i32 0, i32 0
  %0 = bitcast %struct.reverse_iterator.2* %current to i8*
  %1 = bitcast %struct.reverse_iterator.2* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN16reverse_iteratorIS_I14double_pointerdEdEC2ES1_(%struct.reverse_iterator.5* %this, double* %x.coerce) unnamed_addr #2 comdat align 2 {
entry:
  %x = alloca %struct.reverse_iterator.1, align 8
  %this.addr = alloca %struct.reverse_iterator.5*, align 8
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %x, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive, i32 0, i32 0
  store double* %x.coerce, double** %coerce.dive1, align 8
  store %struct.reverse_iterator.5* %this, %struct.reverse_iterator.5** %this.addr, align 8
  %this2 = load %struct.reverse_iterator.5*, %struct.reverse_iterator.5** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.5, %struct.reverse_iterator.5* %this2, i32 0, i32 0
  %0 = bitcast %struct.reverse_iterator.1* %current to i8*
  %1 = bitcast %struct.reverse_iterator.1* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN16reverse_iteratorIS_IP6DoubleS0_ES0_EC2ES2_(%struct.reverse_iterator.2* %this, %struct.Double* %x.coerce) unnamed_addr #2 comdat align 2 {
entry:
  %x = alloca %struct.Double_pointer, align 8
  %this.addr = alloca %struct.reverse_iterator.2*, align 8
  %coerce.dive = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %x, i32 0, i32 0
  store %struct.Double* %x.coerce, %struct.Double** %coerce.dive, align 8
  store %struct.reverse_iterator.2* %this, %struct.reverse_iterator.2** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %this1, i32 0, i32 0
  %0 = bitcast %struct.Double_pointer* %current to i8*
  %1 = bitcast %struct.Double_pointer* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN16reverse_iteratorIS_IPddEdEC2ES1_(%struct.reverse_iterator.1* %this, double* %x.coerce) unnamed_addr #2 comdat align 2 {
entry:
  %x = alloca %struct.double_pointer, align 8
  %this.addr = alloca %struct.reverse_iterator.1*, align 8
  %coerce.dive = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %x, i32 0, i32 0
  store double* %x.coerce, double** %coerce.dive, align 8
  store %struct.reverse_iterator.1* %this, %struct.reverse_iterator.1** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %this1, i32 0, i32 0
  %0 = bitcast %struct.double_pointer* %current to i8*
  %1 = bitcast %struct.double_pointer* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN16reverse_iteratorI14Double_pointer6DoubleEC2ES0_(%struct.reverse_iterator.2* %this, %struct.Double* %x.coerce) unnamed_addr #2 comdat align 2 {
entry:
  %x = alloca %struct.Double_pointer, align 8
  %this.addr = alloca %struct.reverse_iterator.2*, align 8
  %coerce.dive = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %x, i32 0, i32 0
  store %struct.Double* %x.coerce, %struct.Double** %coerce.dive, align 8
  store %struct.reverse_iterator.2* %this, %struct.reverse_iterator.2** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %this1, i32 0, i32 0
  %0 = bitcast %struct.Double_pointer* %current to i8*
  %1 = bitcast %struct.Double_pointer* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN16reverse_iteratorI14double_pointerdEC2ES0_(%struct.reverse_iterator.1* %this, double* %x.coerce) unnamed_addr #2 comdat align 2 {
entry:
  %x = alloca %struct.double_pointer, align 8
  %this.addr = alloca %struct.reverse_iterator.1*, align 8
  %coerce.dive = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %x, i32 0, i32 0
  store double* %x.coerce, double** %coerce.dive, align 8
  store %struct.reverse_iterator.1* %this, %struct.reverse_iterator.1** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %this1, i32 0, i32 0
  %0 = bitcast %struct.double_pointer* %current to i8*
  %1 = bitcast %struct.double_pointer* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN16reverse_iteratorIP6DoubleS0_EC2ES1_(%struct.Double_pointer* %this, %struct.Double* %x) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Double_pointer*, align 8
  %x.addr = alloca %struct.Double*, align 8
  store %struct.Double_pointer* %this, %struct.Double_pointer** %this.addr, align 8
  store %struct.Double* %x, %struct.Double** %x.addr, align 8
  %this1 = load %struct.Double_pointer*, %struct.Double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %this1, i32 0, i32 0
  %0 = load %struct.Double*, %struct.Double** %x.addr, align 8
  store %struct.Double* %0, %struct.Double** %current, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN16reverse_iteratorIPddEC2ES0_(%struct.double_pointer* %this, double* %x) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.double_pointer*, align 8
  %x.addr = alloca double*, align 8
  store %struct.double_pointer* %this, %struct.double_pointer** %this.addr, align 8
  store double* %x, double** %x.addr, align 8
  %this1 = load %struct.double_pointer*, %struct.double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %this1, i32 0, i32 0
  %0 = load double*, double** %x.addr, align 8
  store double* %0, double** %current, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN14Double_pointerC2EP6Double(%struct.Double_pointer* %this, %struct.Double* %x) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Double_pointer*, align 8
  %x.addr = alloca %struct.Double*, align 8
  store %struct.Double_pointer* %this, %struct.Double_pointer** %this.addr, align 8
  store %struct.Double* %x, %struct.Double** %x.addr, align 8
  %this1 = load %struct.Double_pointer*, %struct.Double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %this1, i32 0, i32 0
  %0 = load %struct.Double*, %struct.Double** %x.addr, align 8
  store %struct.Double* %0, %struct.Double** %current, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN14double_pointerC2EPd(%struct.double_pointer* %this, double* %x) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.double_pointer*, align 8
  %x.addr = alloca double*, align 8
  store %struct.double_pointer* %this, %struct.double_pointer** %this.addr, align 8
  store double* %x, double** %x.addr, align 8
  %this1 = load %struct.double_pointer*, %struct.double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %this1, i32 0, i32 0
  %0 = load double*, double** %x.addr, align 8
  store double* %0, double** %current, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6DoubleC2ERKd(%struct.Double* %this, double* dereferenceable(8) %x) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Double*, align 8
  %x.addr = alloca double*, align 8
  store %struct.Double* %this, %struct.Double** %this.addr, align 8
  store double* %x, double** %x.addr, align 8
  %this1 = load %struct.Double*, %struct.Double** %this.addr, align 8
  %value = getelementptr inbounds %struct.Double, %struct.Double* %this1, i32 0, i32 0
  %0 = load double*, double** %x.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %value, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6DoubleC2Ev(%struct.Double* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Double*, align 8
  store %struct.Double* %this, %struct.Double** %this.addr, align 8
  %this1 = load %struct.Double*, %struct.Double** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @_Z9summarizev() #0 {
entry:
  %i = alloca i32, align 4
  %millions = alloca double, align 8
  %gmean_times = alloca double, align 8
  %total_absolute_times = alloca double, align 8
  %gmean_rate = alloca double, align 8
  %gmean_ratio = alloca double, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0))
  %0 = load i32, i32* @iterations, align 4
  %conv = sitofp i32 %0 to double
  %mul = fmul double 2.000000e+03, %conv
  %div = fdiv double %mul, 1.000000e+06
  store double %div, double* %millions, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @current_test, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %mul2 = fmul double %5, 1.000000e-07
  %6 = load double, double* %millions, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom3
  %8 = load double, double* %arrayidx4, align 8
  %div5 = fdiv double %6, %8
  %mul6 = fmul double %div5, 1.000000e-07
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom7
  %10 = load double, double* %arrayidx8, align 8
  %11 = load double, double* getelementptr inbounds ([20 x double], [20 x double]* @result_times, i64 0, i64 0), align 16
  %div9 = fdiv double %10, %11
  %mul10 = fmul double %div9, 1.000000e-07
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i32 %3, double %mul2, double %mul6, double %mul10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store double 0.000000e+00, double* %gmean_times, align 8
  store double 0.000000e+00, double* %total_absolute_times, align 8
  store double 0.000000e+00, double* %gmean_rate, align 8
  store double 0.000000e+00, double* %gmean_ratio, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc31, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* @current_test, align 4
  %cmp13 = icmp slt i32 %13, %14
  br i1 %cmp13, label %for.body14, label %for.end33

for.body14:                                       ; preds = %for.cond12
  %15 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom15
  %16 = load double, double* %arrayidx16, align 8
  %17 = load double, double* %total_absolute_times, align 8
  %add = fadd double %17, %16
  store double %add, double* %total_absolute_times, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom17
  %19 = load double, double* %arrayidx18, align 8
  %call19 = call double @log(double %19) #7
  %20 = load double, double* %gmean_times, align 8
  %add20 = fadd double %20, %call19
  store double %add20, double* %gmean_times, align 8
  %21 = load double, double* %millions, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom21
  %23 = load double, double* %arrayidx22, align 8
  %div23 = fdiv double %21, %23
  %call24 = call double @log(double %div23) #7
  %24 = load double, double* %gmean_rate, align 8
  %add25 = fadd double %24, %call24
  store double %add25, double* %gmean_rate, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom26
  %26 = load double, double* %arrayidx27, align 8
  %27 = load double, double* getelementptr inbounds ([20 x double], [20 x double]* @result_times, i64 0, i64 0), align 16
  %div28 = fdiv double %26, %27
  %call29 = call double @log(double %div28) #7
  %28 = load double, double* %gmean_ratio, align 8
  %add30 = fadd double %28, %call29
  store double %add30, double* %gmean_ratio, align 8
  br label %for.inc31

for.inc31:                                        ; preds = %for.body14
  %29 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %29, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond12

for.end33:                                        ; preds = %for.cond12
  %30 = load double, double* %gmean_times, align 8
  %31 = load i32, i32* @current_test, align 4
  %conv34 = sitofp i32 %31 to double
  %div35 = fdiv double %30, %conv34
  %call36 = call double @exp(double %div35) #7
  %mul37 = fmul double %call36, 1.000000e-07
  %32 = load double, double* %gmean_rate, align 8
  %33 = load i32, i32* @current_test, align 4
  %conv38 = sitofp i32 %33 to double
  %div39 = fdiv double %32, %conv38
  %call40 = call double @exp(double %div39) #7
  %mul41 = fmul double %call40, 1.000000e-07
  %34 = load double, double* %gmean_ratio, align 8
  %35 = load i32, i32* @current_test, align 4
  %conv42 = sitofp i32 %35 to double
  %div43 = fdiv double %34, %conv42
  %call44 = call double @exp(double %div43) #7
  %mul45 = fmul double %call44, 1.000000e-07
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), double %mul37, double %mul41, double %mul45)
  %36 = load double, double* %total_absolute_times, align 8
  %mul47 = fmul double %36, 1.000000e-07
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), double %mul47)
  %37 = load double, double* %gmean_ratio, align 8
  %38 = load i32, i32* @current_test, align 4
  %conv49 = sitofp i32 %38 to double
  %div50 = fdiv double %37, %conv49
  %call51 = call double @exp(double %div50) #7
  %mul52 = fmul double %call51, 1.000000e-07
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), double %mul52)
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: noinline uwtable
define void @_Z5test0PdS_(double* %first, double* %last) #0 {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %result = alloca double, align 8
  %n = alloca i32, align 4
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  call void @_Z11start_timerv()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %result, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %n, align 4
  %conv = sext i32 %2 to i64
  %3 = load double*, double** %last.addr, align 8
  %4 = load double*, double** %first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp2 = icmp slt i64 %conv, %sub.ptr.div
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %5 = load double*, double** %first.addr, align 8
  %6 = load i32, i32* %n, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  %7 = load double, double* %arrayidx, align 8
  %8 = load double, double* %result, align 8
  %add = fadd double %8, %7
  store double %add, double* %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %n, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %10 = load double, double* %result, align 8
  call void @_Z5checkd(double %10)
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end6:                                         ; preds = %for.cond
  %call = call double @_Z5timerv()
  %12 = load i32, i32* @current_test, align 4
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, i32* @current_test, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom8
  store double %call, double* %arrayidx9, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z11start_timerv() #2 comdat {
entry:
  %call = call i64 @clock() #7
  store i64 %call, i64* @start_time, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z5checkd(double %result) #0 comdat {
entry:
  %result.addr = alloca double, align 8
  store double %result, double* %result.addr, align 8
  %0 = load double, double* %result.addr, align 8
  %cmp = fcmp une double %0, 6.000000e+03
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @current_test, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double @_Z5timerv() #2 comdat {
entry:
  %call = call i64 @clock() #7
  store i64 %call, i64* @end_time, align 8
  %0 = load i64, i64* @end_time, align 8
  %1 = load i64, i64* @start_time, align 8
  %sub = sub nsw i64 %0, %1
  %conv = sitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  %add = fadd double 0x3E80000000000000, %div
  ret double %add
}

; Function Attrs: nounwind
declare i64 @clock() #4

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argv, i8** %argc) #5 {
entry:
  %retval = alloca i32, align 4
  %argv.addr = alloca i32, align 4
  %argc.addr = alloca i8**, align 8
  %agg.tmp = alloca %struct.Double, align 8
  %agg.tmp1 = alloca %struct.Double, align 8
  %agg.tmp3 = alloca %struct.double_pointer, align 8
  %agg.tmp4 = alloca %struct.double_pointer, align 8
  %agg.tmp7 = alloca %struct.Double_pointer, align 8
  %agg.tmp8 = alloca %struct.Double_pointer, align 8
  %agg.tmp9 = alloca %struct.Double, align 8
  %agg.tmp13 = alloca %struct.double_pointer, align 8
  %agg.tmp14 = alloca %struct.double_pointer, align 8
  %agg.tmp17 = alloca %struct.Double_pointer, align 8
  %agg.tmp18 = alloca %struct.Double_pointer, align 8
  %agg.tmp19 = alloca %struct.Double, align 8
  %agg.tmp23 = alloca %struct.reverse_iterator.1, align 8
  %agg.tmp24 = alloca %struct.reverse_iterator.1, align 8
  %agg.tmp29 = alloca %struct.reverse_iterator.2, align 8
  %agg.tmp30 = alloca %struct.reverse_iterator.2, align 8
  %agg.tmp31 = alloca %struct.Double, align 8
  %agg.tmp37 = alloca %struct.reverse_iterator.1, align 8
  %agg.tmp38 = alloca %struct.reverse_iterator.1, align 8
  %agg.tmp43 = alloca %struct.reverse_iterator.2, align 8
  %agg.tmp44 = alloca %struct.reverse_iterator.2, align 8
  %agg.tmp45 = alloca %struct.Double, align 8
  %agg.tmp51 = alloca %struct.reverse_iterator.5, align 8
  %agg.tmp52 = alloca %struct.reverse_iterator.5, align 8
  %agg.tmp59 = alloca %struct.reverse_iterator.6, align 8
  %agg.tmp60 = alloca %struct.reverse_iterator.6, align 8
  %agg.tmp61 = alloca %struct.Double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argv, i32* %argv.addr, align 4
  store i8** %argc, i8*** %argc.addr, align 8
  %0 = load i32, i32* %argv.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argc.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #8
  store i32 %call, i32* @iterations, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load double*, double** @dpb, align 8
  %4 = load double*, double** @dpe, align 8
  call void @_Z4fillIPddEvT_S1_T0_(double* %3, double* %4, double 3.000000e+00)
  %5 = load %struct.Double*, %struct.Double** @Dpb, align 8
  %6 = load %struct.Double*, %struct.Double** @Dpe, align 8
  call void @_ZN6DoubleC2ERKd(%struct.Double* %agg.tmp, double* dereferenceable(8) @_ZL10init_value)
  %coerce.dive = getelementptr inbounds %struct.Double, %struct.Double* %agg.tmp, i32 0, i32 0
  %7 = load double, double* %coerce.dive, align 8
  call void @_Z4fillIP6DoubleS0_EvT_S2_T0_(%struct.Double* %5, %struct.Double* %6, double %7)
  %8 = load double*, double** @dpb, align 8
  %9 = load double*, double** @dpe, align 8
  call void @_Z5test0PdS_(double* %8, double* %9)
  %10 = load double*, double** @dpb, align 8
  %11 = load double*, double** @dpe, align 8
  %12 = load double, double* @d, align 8
  call void @_Z4testIPddEvT_S1_T0_(double* %10, double* %11, double %12)
  %13 = load %struct.Double*, %struct.Double** @Dpb, align 8
  %14 = load %struct.Double*, %struct.Double** @Dpe, align 8
  %15 = bitcast %struct.Double* %agg.tmp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast (%struct.Double* @D to i8*), i64 8, i32 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %struct.Double, %struct.Double* %agg.tmp1, i32 0, i32 0
  %16 = load double, double* %coerce.dive2, align 8
  call void @_Z4testIP6DoubleS0_EvT_S2_T0_(%struct.Double* %13, %struct.Double* %14, double %16)
  %17 = bitcast %struct.double_pointer* %agg.tmp3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast (%struct.double_pointer* @dPb to i8*), i64 8, i32 8, i1 false)
  %18 = bitcast %struct.double_pointer* %agg.tmp4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast (%struct.double_pointer* @dPe to i8*), i64 8, i32 8, i1 false)
  %19 = load double, double* @d, align 8
  %coerce.dive5 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %agg.tmp3, i32 0, i32 0
  %20 = load double*, double** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %agg.tmp4, i32 0, i32 0
  %21 = load double*, double** %coerce.dive6, align 8
  call void @_Z4testI14double_pointerdEvT_S1_T0_(double* %20, double* %21, double %19)
  %22 = bitcast %struct.Double_pointer* %agg.tmp7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* bitcast (%struct.Double_pointer* @DPb to i8*), i64 8, i32 8, i1 false)
  %23 = bitcast %struct.Double_pointer* %agg.tmp8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.Double_pointer* @DPe to i8*), i64 8, i32 8, i1 false)
  %24 = bitcast %struct.Double* %agg.tmp9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* bitcast (%struct.Double* @D to i8*), i64 8, i32 8, i1 false)
  %coerce.dive10 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %agg.tmp7, i32 0, i32 0
  %25 = load %struct.Double*, %struct.Double** %coerce.dive10, align 8
  %coerce.dive11 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %agg.tmp8, i32 0, i32 0
  %26 = load %struct.Double*, %struct.Double** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %struct.Double, %struct.Double* %agg.tmp9, i32 0, i32 0
  %27 = load double, double* %coerce.dive12, align 8
  call void @_Z4testI14Double_pointer6DoubleEvT_S2_T0_(%struct.Double* %25, %struct.Double* %26, double %27)
  %28 = bitcast %struct.double_pointer* %agg.tmp13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* bitcast (%struct.double_pointer* @rdpb to i8*), i64 8, i32 8, i1 false)
  %29 = bitcast %struct.double_pointer* %agg.tmp14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* bitcast (%struct.double_pointer* @rdpe to i8*), i64 8, i32 8, i1 false)
  %30 = load double, double* @d, align 8
  %coerce.dive15 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %agg.tmp13, i32 0, i32 0
  %31 = load double*, double** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %agg.tmp14, i32 0, i32 0
  %32 = load double*, double** %coerce.dive16, align 8
  call void @_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_(double* %31, double* %32, double %30)
  %33 = bitcast %struct.Double_pointer* %agg.tmp17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* bitcast (%struct.Double_pointer* @rDpb to i8*), i64 8, i32 8, i1 false)
  %34 = bitcast %struct.Double_pointer* %agg.tmp18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* bitcast (%struct.Double_pointer* @rDpe to i8*), i64 8, i32 8, i1 false)
  %35 = bitcast %struct.Double* %agg.tmp19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* bitcast (%struct.Double* @D to i8*), i64 8, i32 8, i1 false)
  %coerce.dive20 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %agg.tmp17, i32 0, i32 0
  %36 = load %struct.Double*, %struct.Double** %coerce.dive20, align 8
  %coerce.dive21 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %agg.tmp18, i32 0, i32 0
  %37 = load %struct.Double*, %struct.Double** %coerce.dive21, align 8
  %coerce.dive22 = getelementptr inbounds %struct.Double, %struct.Double* %agg.tmp19, i32 0, i32 0
  %38 = load double, double* %coerce.dive22, align 8
  call void @_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_(%struct.Double* %36, %struct.Double* %37, double %38)
  %39 = bitcast %struct.reverse_iterator.1* %agg.tmp23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* bitcast (%struct.reverse_iterator.1* @rdPb to i8*), i64 8, i32 8, i1 false)
  %40 = bitcast %struct.reverse_iterator.1* %agg.tmp24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* bitcast (%struct.reverse_iterator.1* @rdPe to i8*), i64 8, i32 8, i1 false)
  %41 = load double, double* @d, align 8
  %coerce.dive25 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %agg.tmp23, i32 0, i32 0
  %coerce.dive26 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive25, i32 0, i32 0
  %42 = load double*, double** %coerce.dive26, align 8
  %coerce.dive27 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %agg.tmp24, i32 0, i32 0
  %coerce.dive28 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive27, i32 0, i32 0
  %43 = load double*, double** %coerce.dive28, align 8
  call void @_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_(double* %42, double* %43, double %41)
  %44 = bitcast %struct.reverse_iterator.2* %agg.tmp29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* bitcast (%struct.reverse_iterator.2* @rDPb to i8*), i64 8, i32 8, i1 false)
  %45 = bitcast %struct.reverse_iterator.2* %agg.tmp30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* bitcast (%struct.reverse_iterator.2* @rDPe to i8*), i64 8, i32 8, i1 false)
  %46 = bitcast %struct.Double* %agg.tmp31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* bitcast (%struct.Double* @D to i8*), i64 8, i32 8, i1 false)
  %coerce.dive32 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %agg.tmp29, i32 0, i32 0
  %coerce.dive33 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive32, i32 0, i32 0
  %47 = load %struct.Double*, %struct.Double** %coerce.dive33, align 8
  %coerce.dive34 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %agg.tmp30, i32 0, i32 0
  %coerce.dive35 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive34, i32 0, i32 0
  %48 = load %struct.Double*, %struct.Double** %coerce.dive35, align 8
  %coerce.dive36 = getelementptr inbounds %struct.Double, %struct.Double* %agg.tmp31, i32 0, i32 0
  %49 = load double, double* %coerce.dive36, align 8
  call void @_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_(%struct.Double* %47, %struct.Double* %48, double %49)
  %50 = bitcast %struct.reverse_iterator.1* %agg.tmp37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* bitcast (%struct.reverse_iterator.1* @rrdpb to i8*), i64 8, i32 8, i1 false)
  %51 = bitcast %struct.reverse_iterator.1* %agg.tmp38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* bitcast (%struct.reverse_iterator.1* @rrdpe to i8*), i64 8, i32 8, i1 false)
  %52 = load double, double* @d, align 8
  %coerce.dive39 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %agg.tmp37, i32 0, i32 0
  %coerce.dive40 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive39, i32 0, i32 0
  %53 = load double*, double** %coerce.dive40, align 8
  %coerce.dive41 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %agg.tmp38, i32 0, i32 0
  %coerce.dive42 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive41, i32 0, i32 0
  %54 = load double*, double** %coerce.dive42, align 8
  call void @_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_(double* %53, double* %54, double %52)
  %55 = bitcast %struct.reverse_iterator.2* %agg.tmp43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* bitcast (%struct.reverse_iterator.2* @rrDpb to i8*), i64 8, i32 8, i1 false)
  %56 = bitcast %struct.reverse_iterator.2* %agg.tmp44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* bitcast (%struct.reverse_iterator.2* @rrDpe to i8*), i64 8, i32 8, i1 false)
  %57 = bitcast %struct.Double* %agg.tmp45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* bitcast (%struct.Double* @D to i8*), i64 8, i32 8, i1 false)
  %coerce.dive46 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %agg.tmp43, i32 0, i32 0
  %coerce.dive47 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive46, i32 0, i32 0
  %58 = load %struct.Double*, %struct.Double** %coerce.dive47, align 8
  %coerce.dive48 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %agg.tmp44, i32 0, i32 0
  %coerce.dive49 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive48, i32 0, i32 0
  %59 = load %struct.Double*, %struct.Double** %coerce.dive49, align 8
  %coerce.dive50 = getelementptr inbounds %struct.Double, %struct.Double* %agg.tmp45, i32 0, i32 0
  %60 = load double, double* %coerce.dive50, align 8
  call void @_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_(%struct.Double* %58, %struct.Double* %59, double %60)
  %61 = bitcast %struct.reverse_iterator.5* %agg.tmp51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* bitcast (%struct.reverse_iterator.5* @rrdPb to i8*), i64 8, i32 8, i1 false)
  %62 = bitcast %struct.reverse_iterator.5* %agg.tmp52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* bitcast (%struct.reverse_iterator.5* @rrdPe to i8*), i64 8, i32 8, i1 false)
  %63 = load double, double* @d, align 8
  %coerce.dive53 = getelementptr inbounds %struct.reverse_iterator.5, %struct.reverse_iterator.5* %agg.tmp51, i32 0, i32 0
  %coerce.dive54 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %coerce.dive53, i32 0, i32 0
  %coerce.dive55 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive54, i32 0, i32 0
  %64 = load double*, double** %coerce.dive55, align 8
  %coerce.dive56 = getelementptr inbounds %struct.reverse_iterator.5, %struct.reverse_iterator.5* %agg.tmp52, i32 0, i32 0
  %coerce.dive57 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %coerce.dive56, i32 0, i32 0
  %coerce.dive58 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive57, i32 0, i32 0
  %65 = load double*, double** %coerce.dive58, align 8
  call void @_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_(double* %64, double* %65, double %63)
  %66 = bitcast %struct.reverse_iterator.6* %agg.tmp59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* bitcast (%struct.reverse_iterator.6* @rrDPb to i8*), i64 8, i32 8, i1 false)
  %67 = bitcast %struct.reverse_iterator.6* %agg.tmp60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* bitcast (%struct.reverse_iterator.6* @rrDPe to i8*), i64 8, i32 8, i1 false)
  %68 = bitcast %struct.Double* %agg.tmp61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* bitcast (%struct.Double* @D to i8*), i64 8, i32 8, i1 false)
  %coerce.dive62 = getelementptr inbounds %struct.reverse_iterator.6, %struct.reverse_iterator.6* %agg.tmp59, i32 0, i32 0
  %coerce.dive63 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %coerce.dive62, i32 0, i32 0
  %coerce.dive64 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive63, i32 0, i32 0
  %69 = load %struct.Double*, %struct.Double** %coerce.dive64, align 8
  %coerce.dive65 = getelementptr inbounds %struct.reverse_iterator.6, %struct.reverse_iterator.6* %agg.tmp60, i32 0, i32 0
  %coerce.dive66 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %coerce.dive65, i32 0, i32 0
  %coerce.dive67 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive66, i32 0, i32 0
  %70 = load %struct.Double*, %struct.Double** %coerce.dive67, align 8
  %coerce.dive68 = getelementptr inbounds %struct.Double, %struct.Double* %agg.tmp61, i32 0, i32 0
  %71 = load double, double* %coerce.dive68, align 8
  call void @_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_(%struct.Double* %69, %struct.Double* %70, double %71)
  call void @_Z9summarizev()
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z4fillIPddEvT_S1_T0_(double* %first, double* %last, double %value) #2 comdat {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %value.addr = alloca double, align 8
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  store double %value, double* %value.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load double*, double** %first.addr, align 8
  %1 = load double*, double** %last.addr, align 8
  %cmp = icmp ne double* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load double, double* %value.addr, align 8
  %3 = load double*, double** %first.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %3, i32 1
  store double* %incdec.ptr, double** %first.addr, align 8
  store double %2, double* %3, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z4fillIP6DoubleS0_EvT_S2_T0_(%struct.Double* %first, %struct.Double* %last, double %value.coerce) #2 comdat {
entry:
  %value = alloca %struct.Double, align 8
  %first.addr = alloca %struct.Double*, align 8
  %last.addr = alloca %struct.Double*, align 8
  %coerce.dive = getelementptr inbounds %struct.Double, %struct.Double* %value, i32 0, i32 0
  store double %value.coerce, double* %coerce.dive, align 8
  store %struct.Double* %first, %struct.Double** %first.addr, align 8
  store %struct.Double* %last, %struct.Double** %last.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.Double*, %struct.Double** %first.addr, align 8
  %1 = load %struct.Double*, %struct.Double** %last.addr, align 8
  %cmp = icmp ne %struct.Double* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.Double*, %struct.Double** %first.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.Double, %struct.Double* %2, i32 1
  store %struct.Double* %incdec.ptr, %struct.Double** %first.addr, align 8
  %3 = bitcast %struct.Double* %2 to i8*
  %4 = bitcast %struct.Double* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z4testIPddEvT_S1_T0_(double* %first, double* %last, double %zero) #0 comdat {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %zero.addr = alloca double, align 8
  %i = alloca i32, align 4
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  store double %zero, double* %zero.addr, align 8
  call void @_Z11start_timerv()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double*, double** %first.addr, align 8
  %3 = load double*, double** %last.addr, align 8
  %4 = load double, double* %zero.addr, align 8
  %call = call double @_Z10accumulateIPddET0_T_S2_S1_(double* %2, double* %3, double %4)
  call void @_Z5checkd(double %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call1 = call double @_Z5timerv()
  %6 = load i32, i32* @current_test, align 4
  %inc2 = add nsw i32 %6, 1
  store i32 %inc2, i32* @current_test, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom
  store double %call1, double* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z4testIP6DoubleS0_EvT_S2_T0_(%struct.Double* %first, %struct.Double* %last, double %zero.coerce) #0 comdat {
entry:
  %zero = alloca %struct.Double, align 8
  %first.addr = alloca %struct.Double*, align 8
  %last.addr = alloca %struct.Double*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.Double, align 8
  %coerce = alloca %struct.Double, align 8
  %coerce.dive = getelementptr inbounds %struct.Double, %struct.Double* %zero, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive, align 8
  store %struct.Double* %first, %struct.Double** %first.addr, align 8
  store %struct.Double* %last, %struct.Double** %last.addr, align 8
  call void @_Z11start_timerv()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Double*, %struct.Double** %first.addr, align 8
  %3 = load %struct.Double*, %struct.Double** %last.addr, align 8
  %4 = bitcast %struct.Double* %agg.tmp to i8*
  %5 = bitcast %struct.Double* %zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %struct.Double, %struct.Double* %agg.tmp, i32 0, i32 0
  %6 = load double, double* %coerce.dive1, align 8
  %call = call double @_Z10accumulateIP6DoubleS0_ET0_T_S3_S2_(%struct.Double* %2, %struct.Double* %3, double %6)
  %coerce.dive2 = getelementptr inbounds %struct.Double, %struct.Double* %coerce, i32 0, i32 0
  store double %call, double* %coerce.dive2, align 8
  %call3 = call double @_ZN6DoublecvdEv(%struct.Double* %coerce)
  call void @_Z5checkd(double %call3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = call double @_Z5timerv()
  %8 = load i32, i32* @current_test, align 4
  %inc5 = add nsw i32 %8, 1
  store i32 %inc5, i32* @current_test, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom
  store double %call4, double* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z4testI14double_pointerdEvT_S1_T0_(double* %first.coerce, double* %last.coerce, double %zero) #0 comdat {
entry:
  %first = alloca %struct.double_pointer, align 8
  %last = alloca %struct.double_pointer, align 8
  %zero.addr = alloca double, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.double_pointer, align 8
  %agg.tmp2 = alloca %struct.double_pointer, align 8
  %coerce.dive = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %first, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %last, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive1, align 8
  store double %zero, double* %zero.addr, align 8
  call void @_Z11start_timerv()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.double_pointer* %agg.tmp to i8*
  %3 = bitcast %struct.double_pointer* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.double_pointer* %agg.tmp2 to i8*
  %5 = bitcast %struct.double_pointer* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load double, double* %zero.addr, align 8
  %coerce.dive3 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %agg.tmp, i32 0, i32 0
  %7 = load double*, double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %agg.tmp2, i32 0, i32 0
  %8 = load double*, double** %coerce.dive4, align 8
  %call = call double @_Z10accumulateI14double_pointerdET0_T_S2_S1_(double* %7, double* %8, double %6)
  call void @_Z5checkd(double %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call5 = call double @_Z5timerv()
  %10 = load i32, i32* @current_test, align 4
  %inc6 = add nsw i32 %10, 1
  store i32 %inc6, i32* @current_test, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom
  store double %call5, double* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z4testI14Double_pointer6DoubleEvT_S2_T0_(%struct.Double* %first.coerce, %struct.Double* %last.coerce, double %zero.coerce) #0 comdat {
entry:
  %first = alloca %struct.Double_pointer, align 8
  %last = alloca %struct.Double_pointer, align 8
  %zero = alloca %struct.Double, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.Double_pointer, align 8
  %agg.tmp3 = alloca %struct.Double_pointer, align 8
  %agg.tmp4 = alloca %struct.Double, align 8
  %coerce = alloca %struct.Double, align 8
  %coerce.dive = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %first, i32 0, i32 0
  store %struct.Double* %first.coerce, %struct.Double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %last, i32 0, i32 0
  store %struct.Double* %last.coerce, %struct.Double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.Double, %struct.Double* %zero, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive2, align 8
  call void @_Z11start_timerv()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.Double_pointer* %agg.tmp to i8*
  %3 = bitcast %struct.Double_pointer* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.Double_pointer* %agg.tmp3 to i8*
  %5 = bitcast %struct.Double_pointer* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.Double* %agg.tmp4 to i8*
  %7 = bitcast %struct.Double* %zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive5 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %agg.tmp, i32 0, i32 0
  %8 = load %struct.Double*, %struct.Double** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %agg.tmp3, i32 0, i32 0
  %9 = load %struct.Double*, %struct.Double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %struct.Double, %struct.Double* %agg.tmp4, i32 0, i32 0
  %10 = load double, double* %coerce.dive7, align 8
  %call = call double @_Z10accumulateI14Double_pointer6DoubleET0_T_S3_S2_(%struct.Double* %8, %struct.Double* %9, double %10)
  %coerce.dive8 = getelementptr inbounds %struct.Double, %struct.Double* %coerce, i32 0, i32 0
  store double %call, double* %coerce.dive8, align 8
  %call9 = call double @_ZN6DoublecvdEv(%struct.Double* %coerce)
  call void @_Z5checkd(double %call9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call10 = call double @_Z5timerv()
  %12 = load i32, i32* @current_test, align 4
  %inc11 = add nsw i32 %12, 1
  store i32 %inc11, i32* @current_test, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom
  store double %call10, double* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_(double* %first.coerce, double* %last.coerce, double %zero) #0 comdat {
entry:
  %first = alloca %struct.double_pointer, align 8
  %last = alloca %struct.double_pointer, align 8
  %zero.addr = alloca double, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.double_pointer, align 8
  %agg.tmp2 = alloca %struct.double_pointer, align 8
  %coerce.dive = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %first, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %last, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive1, align 8
  store double %zero, double* %zero.addr, align 8
  call void @_Z11start_timerv()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.double_pointer* %agg.tmp to i8*
  %3 = bitcast %struct.double_pointer* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.double_pointer* %agg.tmp2 to i8*
  %5 = bitcast %struct.double_pointer* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load double, double* %zero.addr, align 8
  %coerce.dive3 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %agg.tmp, i32 0, i32 0
  %7 = load double*, double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %agg.tmp2, i32 0, i32 0
  %8 = load double*, double** %coerce.dive4, align 8
  %call = call double @_Z10accumulateI16reverse_iteratorIPddEdET0_T_S4_S3_(double* %7, double* %8, double %6)
  call void @_Z5checkd(double %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call5 = call double @_Z5timerv()
  %10 = load i32, i32* @current_test, align 4
  %inc6 = add nsw i32 %10, 1
  store i32 %inc6, i32* @current_test, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom
  store double %call5, double* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_(%struct.Double* %first.coerce, %struct.Double* %last.coerce, double %zero.coerce) #0 comdat {
entry:
  %first = alloca %struct.Double_pointer, align 8
  %last = alloca %struct.Double_pointer, align 8
  %zero = alloca %struct.Double, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.Double_pointer, align 8
  %agg.tmp3 = alloca %struct.Double_pointer, align 8
  %agg.tmp4 = alloca %struct.Double, align 8
  %coerce = alloca %struct.Double, align 8
  %coerce.dive = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %first, i32 0, i32 0
  store %struct.Double* %first.coerce, %struct.Double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %last, i32 0, i32 0
  store %struct.Double* %last.coerce, %struct.Double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.Double, %struct.Double* %zero, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive2, align 8
  call void @_Z11start_timerv()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.Double_pointer* %agg.tmp to i8*
  %3 = bitcast %struct.Double_pointer* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.Double_pointer* %agg.tmp3 to i8*
  %5 = bitcast %struct.Double_pointer* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.Double* %agg.tmp4 to i8*
  %7 = bitcast %struct.Double* %zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive5 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %agg.tmp, i32 0, i32 0
  %8 = load %struct.Double*, %struct.Double** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %agg.tmp3, i32 0, i32 0
  %9 = load %struct.Double*, %struct.Double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %struct.Double, %struct.Double* %agg.tmp4, i32 0, i32 0
  %10 = load double, double* %coerce.dive7, align 8
  %call = call double @_Z10accumulateI16reverse_iteratorIP6DoubleS1_ES1_ET0_T_S5_S4_(%struct.Double* %8, %struct.Double* %9, double %10)
  %coerce.dive8 = getelementptr inbounds %struct.Double, %struct.Double* %coerce, i32 0, i32 0
  store double %call, double* %coerce.dive8, align 8
  %call9 = call double @_ZN6DoublecvdEv(%struct.Double* %coerce)
  call void @_Z5checkd(double %call9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call10 = call double @_Z5timerv()
  %12 = load i32, i32* @current_test, align 4
  %inc11 = add nsw i32 %12, 1
  store i32 %inc11, i32* @current_test, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom
  store double %call10, double* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_(double* %first.coerce, double* %last.coerce, double %zero) #0 comdat {
entry:
  %first = alloca %struct.reverse_iterator.1, align 8
  %last = alloca %struct.reverse_iterator.1, align 8
  %zero.addr = alloca double, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.reverse_iterator.1, align 8
  %agg.tmp4 = alloca %struct.reverse_iterator.1, align 8
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %first, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %last, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive2, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive3, align 8
  store double %zero, double* %zero.addr, align 8
  call void @_Z11start_timerv()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.reverse_iterator.1* %agg.tmp to i8*
  %3 = bitcast %struct.reverse_iterator.1* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.reverse_iterator.1* %agg.tmp4 to i8*
  %5 = bitcast %struct.reverse_iterator.1* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load double, double* %zero.addr, align 8
  %coerce.dive5 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %agg.tmp, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive5, i32 0, i32 0
  %7 = load double*, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %agg.tmp4, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive7, i32 0, i32 0
  %8 = load double*, double** %coerce.dive8, align 8
  %call = call double @_Z10accumulateI16reverse_iteratorI14double_pointerdEdET0_T_S4_S3_(double* %7, double* %8, double %6)
  call void @_Z5checkd(double %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call double @_Z5timerv()
  %10 = load i32, i32* @current_test, align 4
  %inc10 = add nsw i32 %10, 1
  store i32 %inc10, i32* @current_test, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom
  store double %call9, double* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_(%struct.Double* %first.coerce, %struct.Double* %last.coerce, double %zero.coerce) #0 comdat {
entry:
  %first = alloca %struct.reverse_iterator.2, align 8
  %last = alloca %struct.reverse_iterator.2, align 8
  %zero = alloca %struct.Double, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.reverse_iterator.2, align 8
  %agg.tmp5 = alloca %struct.reverse_iterator.2, align 8
  %agg.tmp6 = alloca %struct.Double, align 8
  %coerce = alloca %struct.Double, align 8
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %first, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive, i32 0, i32 0
  store %struct.Double* %first.coerce, %struct.Double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %last, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive2, i32 0, i32 0
  store %struct.Double* %last.coerce, %struct.Double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.Double, %struct.Double* %zero, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive4, align 8
  call void @_Z11start_timerv()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.reverse_iterator.2* %agg.tmp to i8*
  %3 = bitcast %struct.reverse_iterator.2* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.reverse_iterator.2* %agg.tmp5 to i8*
  %5 = bitcast %struct.reverse_iterator.2* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.Double* %agg.tmp6 to i8*
  %7 = bitcast %struct.Double* %zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive7 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %agg.tmp, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive7, i32 0, i32 0
  %8 = load %struct.Double*, %struct.Double** %coerce.dive8, align 8
  %coerce.dive9 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %agg.tmp5, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive9, i32 0, i32 0
  %9 = load %struct.Double*, %struct.Double** %coerce.dive10, align 8
  %coerce.dive11 = getelementptr inbounds %struct.Double, %struct.Double* %agg.tmp6, i32 0, i32 0
  %10 = load double, double* %coerce.dive11, align 8
  %call = call double @_Z10accumulateI16reverse_iteratorI14Double_pointer6DoubleES2_ET0_T_S5_S4_(%struct.Double* %8, %struct.Double* %9, double %10)
  %coerce.dive12 = getelementptr inbounds %struct.Double, %struct.Double* %coerce, i32 0, i32 0
  store double %call, double* %coerce.dive12, align 8
  %call13 = call double @_ZN6DoublecvdEv(%struct.Double* %coerce)
  call void @_Z5checkd(double %call13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call14 = call double @_Z5timerv()
  %12 = load i32, i32* @current_test, align 4
  %inc15 = add nsw i32 %12, 1
  store i32 %inc15, i32* @current_test, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom
  store double %call14, double* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_(double* %first.coerce, double* %last.coerce, double %zero) #0 comdat {
entry:
  %first = alloca %struct.reverse_iterator.1, align 8
  %last = alloca %struct.reverse_iterator.1, align 8
  %zero.addr = alloca double, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.reverse_iterator.1, align 8
  %agg.tmp4 = alloca %struct.reverse_iterator.1, align 8
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %first, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %last, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive2, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive3, align 8
  store double %zero, double* %zero.addr, align 8
  call void @_Z11start_timerv()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.reverse_iterator.1* %agg.tmp to i8*
  %3 = bitcast %struct.reverse_iterator.1* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.reverse_iterator.1* %agg.tmp4 to i8*
  %5 = bitcast %struct.reverse_iterator.1* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load double, double* %zero.addr, align 8
  %coerce.dive5 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %agg.tmp, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive5, i32 0, i32 0
  %7 = load double*, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %agg.tmp4, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive7, i32 0, i32 0
  %8 = load double*, double** %coerce.dive8, align 8
  %call = call double @_Z10accumulateI16reverse_iteratorIS0_IPddEdEdET0_T_S5_S4_(double* %7, double* %8, double %6)
  call void @_Z5checkd(double %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call double @_Z5timerv()
  %10 = load i32, i32* @current_test, align 4
  %inc10 = add nsw i32 %10, 1
  store i32 %inc10, i32* @current_test, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom
  store double %call9, double* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_(%struct.Double* %first.coerce, %struct.Double* %last.coerce, double %zero.coerce) #0 comdat {
entry:
  %first = alloca %struct.reverse_iterator.2, align 8
  %last = alloca %struct.reverse_iterator.2, align 8
  %zero = alloca %struct.Double, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.reverse_iterator.2, align 8
  %agg.tmp5 = alloca %struct.reverse_iterator.2, align 8
  %agg.tmp6 = alloca %struct.Double, align 8
  %coerce = alloca %struct.Double, align 8
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %first, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive, i32 0, i32 0
  store %struct.Double* %first.coerce, %struct.Double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %last, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive2, i32 0, i32 0
  store %struct.Double* %last.coerce, %struct.Double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.Double, %struct.Double* %zero, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive4, align 8
  call void @_Z11start_timerv()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.reverse_iterator.2* %agg.tmp to i8*
  %3 = bitcast %struct.reverse_iterator.2* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.reverse_iterator.2* %agg.tmp5 to i8*
  %5 = bitcast %struct.reverse_iterator.2* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.Double* %agg.tmp6 to i8*
  %7 = bitcast %struct.Double* %zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive7 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %agg.tmp, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive7, i32 0, i32 0
  %8 = load %struct.Double*, %struct.Double** %coerce.dive8, align 8
  %coerce.dive9 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %agg.tmp5, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive9, i32 0, i32 0
  %9 = load %struct.Double*, %struct.Double** %coerce.dive10, align 8
  %coerce.dive11 = getelementptr inbounds %struct.Double, %struct.Double* %agg.tmp6, i32 0, i32 0
  %10 = load double, double* %coerce.dive11, align 8
  %call = call double @_Z10accumulateI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_ET0_T_S6_S5_(%struct.Double* %8, %struct.Double* %9, double %10)
  %coerce.dive12 = getelementptr inbounds %struct.Double, %struct.Double* %coerce, i32 0, i32 0
  store double %call, double* %coerce.dive12, align 8
  %call13 = call double @_ZN6DoublecvdEv(%struct.Double* %coerce)
  call void @_Z5checkd(double %call13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call14 = call double @_Z5timerv()
  %12 = load i32, i32* @current_test, align 4
  %inc15 = add nsw i32 %12, 1
  store i32 %inc15, i32* @current_test, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom
  store double %call14, double* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_(double* %first.coerce, double* %last.coerce, double %zero) #0 comdat {
entry:
  %first = alloca %struct.reverse_iterator.5, align 8
  %last = alloca %struct.reverse_iterator.5, align 8
  %zero.addr = alloca double, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.reverse_iterator.5, align 8
  %agg.tmp6 = alloca %struct.reverse_iterator.5, align 8
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.5, %struct.reverse_iterator.5* %first, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive1, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %struct.reverse_iterator.5, %struct.reverse_iterator.5* %last, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive4, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive5, align 8
  store double %zero, double* %zero.addr, align 8
  call void @_Z11start_timerv()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.reverse_iterator.5* %agg.tmp to i8*
  %3 = bitcast %struct.reverse_iterator.5* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.reverse_iterator.5* %agg.tmp6 to i8*
  %5 = bitcast %struct.reverse_iterator.5* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load double, double* %zero.addr, align 8
  %coerce.dive7 = getelementptr inbounds %struct.reverse_iterator.5, %struct.reverse_iterator.5* %agg.tmp, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive8, i32 0, i32 0
  %7 = load double*, double** %coerce.dive9, align 8
  %coerce.dive10 = getelementptr inbounds %struct.reverse_iterator.5, %struct.reverse_iterator.5* %agg.tmp6, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %coerce.dive10, i32 0, i32 0
  %coerce.dive12 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive11, i32 0, i32 0
  %8 = load double*, double** %coerce.dive12, align 8
  %call = call double @_Z10accumulateI16reverse_iteratorIS0_I14double_pointerdEdEdET0_T_S5_S4_(double* %7, double* %8, double %6)
  call void @_Z5checkd(double %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call13 = call double @_Z5timerv()
  %10 = load i32, i32* @current_test, align 4
  %inc14 = add nsw i32 %10, 1
  store i32 %inc14, i32* @current_test, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom
  store double %call13, double* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_(%struct.Double* %first.coerce, %struct.Double* %last.coerce, double %zero.coerce) #0 comdat {
entry:
  %first = alloca %struct.reverse_iterator.6, align 8
  %last = alloca %struct.reverse_iterator.6, align 8
  %zero = alloca %struct.Double, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.reverse_iterator.6, align 8
  %agg.tmp7 = alloca %struct.reverse_iterator.6, align 8
  %agg.tmp8 = alloca %struct.Double, align 8
  %coerce = alloca %struct.Double, align 8
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.6, %struct.reverse_iterator.6* %first, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive1, i32 0, i32 0
  store %struct.Double* %first.coerce, %struct.Double** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %struct.reverse_iterator.6, %struct.reverse_iterator.6* %last, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive4, i32 0, i32 0
  store %struct.Double* %last.coerce, %struct.Double** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %struct.Double, %struct.Double* %zero, i32 0, i32 0
  store double %zero.coerce, double* %coerce.dive6, align 8
  call void @_Z11start_timerv()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.reverse_iterator.6* %agg.tmp to i8*
  %3 = bitcast %struct.reverse_iterator.6* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %struct.reverse_iterator.6* %agg.tmp7 to i8*
  %5 = bitcast %struct.reverse_iterator.6* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %struct.Double* %agg.tmp8 to i8*
  %7 = bitcast %struct.Double* %zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive9 = getelementptr inbounds %struct.reverse_iterator.6, %struct.reverse_iterator.6* %agg.tmp, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %coerce.dive9, i32 0, i32 0
  %coerce.dive11 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive10, i32 0, i32 0
  %8 = load %struct.Double*, %struct.Double** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %struct.reverse_iterator.6, %struct.reverse_iterator.6* %agg.tmp7, i32 0, i32 0
  %coerce.dive13 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %coerce.dive12, i32 0, i32 0
  %coerce.dive14 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive13, i32 0, i32 0
  %9 = load %struct.Double*, %struct.Double** %coerce.dive14, align 8
  %coerce.dive15 = getelementptr inbounds %struct.Double, %struct.Double* %agg.tmp8, i32 0, i32 0
  %10 = load double, double* %coerce.dive15, align 8
  %call = call double @_Z10accumulateI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_ET0_T_S6_S5_(%struct.Double* %8, %struct.Double* %9, double %10)
  %coerce.dive16 = getelementptr inbounds %struct.Double, %struct.Double* %coerce, i32 0, i32 0
  store double %call, double* %coerce.dive16, align 8
  %call17 = call double @_ZN6DoublecvdEv(%struct.Double* %coerce)
  call void @_Z5checkd(double %call17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call18 = call double @_Z5timerv()
  %12 = load i32, i32* @current_test, align 4
  %inc19 = add nsw i32 %12, 1
  store i32 %inc19, i32* @current_test, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @result_times, i64 0, i64 %idxprom
  store double %call18, double* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_Z10accumulateI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_ET0_T_S6_S5_(%struct.Double* %first.coerce, %struct.Double* %last.coerce, double %result.coerce) #0 comdat {
entry:
  %retval = alloca %struct.Double, align 8
  %first = alloca %struct.reverse_iterator.6, align 8
  %last = alloca %struct.reverse_iterator.6, align 8
  %result = alloca %struct.Double, align 8
  %ref.tmp = alloca %struct.Double, align 8
  %coerce = alloca %struct.reverse_iterator.6, align 8
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.6, %struct.reverse_iterator.6* %first, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive1, i32 0, i32 0
  store %struct.Double* %first.coerce, %struct.Double** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %struct.reverse_iterator.6, %struct.reverse_iterator.6* %last, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive4, i32 0, i32 0
  store %struct.Double* %last.coerce, %struct.Double** %coerce.dive5, align 8
  %coerce.dive6 = getelementptr inbounds %struct.Double, %struct.Double* %result, i32 0, i32 0
  store double %result.coerce, double* %coerce.dive6, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @_ZneI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_EEiRKT_S7_(%struct.reverse_iterator.6* dereferenceable(8) %first, %struct.reverse_iterator.6* dereferenceable(8) %last)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call7 = call %struct.Double* @_ZN16reverse_iteratorIS_I14Double_pointer6DoubleES1_EppEi(%struct.reverse_iterator.6* %first, i32 0)
  %coerce.dive8 = getelementptr inbounds %struct.reverse_iterator.6, %struct.reverse_iterator.6* %coerce, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %coerce.dive8, i32 0, i32 0
  %coerce.dive10 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive9, i32 0, i32 0
  store %struct.Double* %call7, %struct.Double** %coerce.dive10, align 8
  %call11 = call dereferenceable(8) %struct.Double* @_ZNK16reverse_iteratorIS_I14Double_pointer6DoubleES1_EdeEv(%struct.reverse_iterator.6* %coerce)
  %call12 = call double @"_ZN3$_0clERK6DoubleS2_"(%struct.anon* @plus, %struct.Double* dereferenceable(8) %result, %struct.Double* dereferenceable(8) %call11)
  %coerce.dive13 = getelementptr inbounds %struct.Double, %struct.Double* %ref.tmp, i32 0, i32 0
  store double %call12, double* %coerce.dive13, align 8
  %0 = bitcast %struct.Double* %result to i8*
  %1 = bitcast %struct.Double* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = bitcast %struct.Double* %retval to i8*
  %3 = bitcast %struct.Double* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive14 = getelementptr inbounds %struct.Double, %struct.Double* %retval, i32 0, i32 0
  %4 = load double, double* %coerce.dive14, align 8
  ret double %4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double @_ZN6DoublecvdEv(%struct.Double* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Double*, align 8
  store %struct.Double* %this, %struct.Double** %this.addr, align 8
  %this1 = load %struct.Double*, %struct.Double** %this.addr, align 8
  %value = getelementptr inbounds %struct.Double, %struct.Double* %this1, i32 0, i32 0
  %0 = load double, double* %value, align 8
  ret double %0
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZneI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_EEiRKT_S7_(%struct.reverse_iterator.6* dereferenceable(8) %x, %struct.reverse_iterator.6* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.reverse_iterator.6*, align 8
  %y.addr = alloca %struct.reverse_iterator.6*, align 8
  store %struct.reverse_iterator.6* %x, %struct.reverse_iterator.6** %x.addr, align 8
  store %struct.reverse_iterator.6* %y, %struct.reverse_iterator.6** %y.addr, align 8
  %0 = load %struct.reverse_iterator.6*, %struct.reverse_iterator.6** %x.addr, align 8
  %1 = load %struct.reverse_iterator.6*, %struct.reverse_iterator.6** %y.addr, align 8
  %call = call i32 @_ZeqI16reverse_iteratorI14Double_pointer6DoubleES2_EiRKS0_IT_T0_ES8_(%struct.reverse_iterator.6* dereferenceable(8) %0, %struct.reverse_iterator.6* dereferenceable(8) %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %conv = zext i1 %lnot to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define linkonce_odr %struct.Double* @_ZN16reverse_iteratorIS_I14Double_pointer6DoubleES1_EppEi(%struct.reverse_iterator.6* %this, i32) #0 comdat align 2 {
entry:
  %retval = alloca %struct.reverse_iterator.6, align 8
  %this.addr = alloca %struct.reverse_iterator.6*, align 8
  %.addr = alloca i32, align 4
  store %struct.reverse_iterator.6* %this, %struct.reverse_iterator.6** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %struct.reverse_iterator.6*, %struct.reverse_iterator.6** %this.addr, align 8
  %1 = bitcast %struct.reverse_iterator.6* %retval to i8*
  %2 = bitcast %struct.reverse_iterator.6* %this1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.reverse_iterator.6* @_ZN16reverse_iteratorIS_I14Double_pointer6DoubleES1_EppEv(%struct.reverse_iterator.6* %this1)
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.6, %struct.reverse_iterator.6* %retval, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %coerce.dive, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive2, i32 0, i32 0
  %3 = load %struct.Double*, %struct.Double** %coerce.dive3, align 8
  ret %struct.Double* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.Double* @_ZNK16reverse_iteratorIS_I14Double_pointer6DoubleES1_EdeEv(%struct.reverse_iterator.6* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.reverse_iterator.6*, align 8
  %tmp = alloca %struct.reverse_iterator.2, align 8
  store %struct.reverse_iterator.6* %this, %struct.reverse_iterator.6** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.6*, %struct.reverse_iterator.6** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.6, %struct.reverse_iterator.6* %this1, i32 0, i32 0
  %0 = bitcast %struct.reverse_iterator.2* %tmp to i8*
  %1 = bitcast %struct.reverse_iterator.2* %current to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.reverse_iterator.2* @_ZN16reverse_iteratorI14Double_pointer6DoubleEmmEv(%struct.reverse_iterator.2* %tmp)
  %call2 = call dereferenceable(8) %struct.Double* @_ZNK16reverse_iteratorI14Double_pointer6DoubleEdeEv(%struct.reverse_iterator.2* %call)
  ret %struct.Double* %call2
}

; Function Attrs: noinline uwtable
define internal double @"_ZN3$_0clERK6DoubleS2_"(%struct.anon* %this, %struct.Double* dereferenceable(8) %x, %struct.Double* dereferenceable(8) %y) #0 align 2 {
entry:
  %retval = alloca %struct.Double, align 8
  %this.addr = alloca %struct.anon*, align 8
  %x.addr = alloca %struct.Double*, align 8
  %y.addr = alloca %struct.Double*, align 8
  store %struct.anon* %this, %struct.anon** %this.addr, align 8
  store %struct.Double* %x, %struct.Double** %x.addr, align 8
  store %struct.Double* %y, %struct.Double** %y.addr, align 8
  %this1 = load %struct.anon*, %struct.anon** %this.addr, align 8
  %0 = load %struct.Double*, %struct.Double** %x.addr, align 8
  %1 = load %struct.Double*, %struct.Double** %y.addr, align 8
  %call = call double @_ZplRK6DoubleS1_(%struct.Double* dereferenceable(8) %0, %struct.Double* dereferenceable(8) %1)
  %coerce.dive = getelementptr inbounds %struct.Double, %struct.Double* %retval, i32 0, i32 0
  store double %call, double* %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %struct.Double, %struct.Double* %retval, i32 0, i32 0
  %2 = load double, double* %coerce.dive2, align 8
  ret double %2
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZplRK6DoubleS1_(%struct.Double* dereferenceable(8) %x, %struct.Double* dereferenceable(8) %y) #0 comdat {
entry:
  %retval = alloca %struct.Double, align 8
  %x.addr = alloca %struct.Double*, align 8
  %y.addr = alloca %struct.Double*, align 8
  %ref.tmp = alloca double, align 8
  store %struct.Double* %x, %struct.Double** %x.addr, align 8
  store %struct.Double* %y, %struct.Double** %y.addr, align 8
  %0 = load %struct.Double*, %struct.Double** %x.addr, align 8
  %value = getelementptr inbounds %struct.Double, %struct.Double* %0, i32 0, i32 0
  %1 = load double, double* %value, align 8
  %2 = load %struct.Double*, %struct.Double** %y.addr, align 8
  %value1 = getelementptr inbounds %struct.Double, %struct.Double* %2, i32 0, i32 0
  %3 = load double, double* %value1, align 8
  %add = fadd double %1, %3
  store double %add, double* %ref.tmp, align 8
  call void @_ZN6DoubleC2ERKd(%struct.Double* %retval, double* dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %struct.Double, %struct.Double* %retval, i32 0, i32 0
  %4 = load double, double* %coerce.dive, align 8
  ret double %4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.reverse_iterator.2* @_ZN16reverse_iteratorI14Double_pointer6DoubleEmmEv(%struct.reverse_iterator.2* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.reverse_iterator.2*, align 8
  store %struct.reverse_iterator.2* %this, %struct.reverse_iterator.2** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %struct.Double_pointer* @_ZN14Double_pointerppEv(%struct.Double_pointer* %current)
  ret %struct.reverse_iterator.2* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.Double* @_ZNK16reverse_iteratorI14Double_pointer6DoubleEdeEv(%struct.reverse_iterator.2* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.reverse_iterator.2*, align 8
  %tmp = alloca %struct.Double_pointer, align 8
  store %struct.reverse_iterator.2* %this, %struct.reverse_iterator.2** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %this1, i32 0, i32 0
  %0 = bitcast %struct.Double_pointer* %tmp to i8*
  %1 = bitcast %struct.Double_pointer* %current to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.Double_pointer* @_ZN14Double_pointermmEv(%struct.Double_pointer* %tmp)
  %call2 = call dereferenceable(8) %struct.Double* @_ZNK14Double_pointerdeEv(%struct.Double_pointer* %call)
  ret %struct.Double* %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.Double_pointer* @_ZN14Double_pointermmEv(%struct.Double_pointer* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Double_pointer*, align 8
  store %struct.Double_pointer* %this, %struct.Double_pointer** %this.addr, align 8
  %this1 = load %struct.Double_pointer*, %struct.Double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %this1, i32 0, i32 0
  %0 = load %struct.Double*, %struct.Double** %current, align 8
  %incdec.ptr = getelementptr inbounds %struct.Double, %struct.Double* %0, i32 -1
  store %struct.Double* %incdec.ptr, %struct.Double** %current, align 8
  ret %struct.Double_pointer* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.Double* @_ZNK14Double_pointerdeEv(%struct.Double_pointer* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Double_pointer*, align 8
  store %struct.Double_pointer* %this, %struct.Double_pointer** %this.addr, align 8
  %this1 = load %struct.Double_pointer*, %struct.Double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %this1, i32 0, i32 0
  %0 = load %struct.Double*, %struct.Double** %current, align 8
  ret %struct.Double* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.Double_pointer* @_ZN14Double_pointerppEv(%struct.Double_pointer* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Double_pointer*, align 8
  store %struct.Double_pointer* %this, %struct.Double_pointer** %this.addr, align 8
  %this1 = load %struct.Double_pointer*, %struct.Double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %this1, i32 0, i32 0
  %0 = load %struct.Double*, %struct.Double** %current, align 8
  %incdec.ptr = getelementptr inbounds %struct.Double, %struct.Double* %0, i32 1
  store %struct.Double* %incdec.ptr, %struct.Double** %current, align 8
  ret %struct.Double_pointer* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) %struct.reverse_iterator.6* @_ZN16reverse_iteratorIS_I14Double_pointer6DoubleES1_EppEv(%struct.reverse_iterator.6* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.reverse_iterator.6*, align 8
  store %struct.reverse_iterator.6* %this, %struct.reverse_iterator.6** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.6*, %struct.reverse_iterator.6** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.6, %struct.reverse_iterator.6* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %struct.reverse_iterator.2* @_ZN16reverse_iteratorI14Double_pointer6DoubleEmmEv(%struct.reverse_iterator.2* %current)
  ret %struct.reverse_iterator.6* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZeqI16reverse_iteratorI14Double_pointer6DoubleES2_EiRKS0_IT_T0_ES8_(%struct.reverse_iterator.6* dereferenceable(8) %x, %struct.reverse_iterator.6* dereferenceable(8) %y) #2 comdat {
entry:
  %x.addr = alloca %struct.reverse_iterator.6*, align 8
  %y.addr = alloca %struct.reverse_iterator.6*, align 8
  store %struct.reverse_iterator.6* %x, %struct.reverse_iterator.6** %x.addr, align 8
  store %struct.reverse_iterator.6* %y, %struct.reverse_iterator.6** %y.addr, align 8
  %0 = load %struct.reverse_iterator.6*, %struct.reverse_iterator.6** %x.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.6, %struct.reverse_iterator.6* %0, i32 0, i32 0
  %1 = load %struct.reverse_iterator.6*, %struct.reverse_iterator.6** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.reverse_iterator.6, %struct.reverse_iterator.6* %1, i32 0, i32 0
  %call = call i32 @_ZeqI14Double_pointer6DoubleEiRK16reverse_iteratorIT_T0_ES7_(%struct.reverse_iterator.2* dereferenceable(8) %current, %struct.reverse_iterator.2* dereferenceable(8) %current1)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZeqI14Double_pointer6DoubleEiRK16reverse_iteratorIT_T0_ES7_(%struct.reverse_iterator.2* dereferenceable(8) %x, %struct.reverse_iterator.2* dereferenceable(8) %y) #2 comdat {
entry:
  %x.addr = alloca %struct.reverse_iterator.2*, align 8
  %y.addr = alloca %struct.reverse_iterator.2*, align 8
  store %struct.reverse_iterator.2* %x, %struct.reverse_iterator.2** %x.addr, align 8
  store %struct.reverse_iterator.2* %y, %struct.reverse_iterator.2** %y.addr, align 8
  %0 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %x.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %0, i32 0, i32 0
  %1 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %1, i32 0, i32 0
  %call = call i32 @_ZeqRK14Double_pointerS1_(%struct.Double_pointer* dereferenceable(8) %current, %struct.Double_pointer* dereferenceable(8) %current1)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZeqRK14Double_pointerS1_(%struct.Double_pointer* dereferenceable(8) %x, %struct.Double_pointer* dereferenceable(8) %y) #2 comdat {
entry:
  %x.addr = alloca %struct.Double_pointer*, align 8
  %y.addr = alloca %struct.Double_pointer*, align 8
  store %struct.Double_pointer* %x, %struct.Double_pointer** %x.addr, align 8
  store %struct.Double_pointer* %y, %struct.Double_pointer** %y.addr, align 8
  %0 = load %struct.Double_pointer*, %struct.Double_pointer** %x.addr, align 8
  %current = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %0, i32 0, i32 0
  %1 = load %struct.Double*, %struct.Double** %current, align 8
  %2 = load %struct.Double_pointer*, %struct.Double_pointer** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %2, i32 0, i32 0
  %3 = load %struct.Double*, %struct.Double** %current1, align 8
  %cmp = icmp eq %struct.Double* %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_Z10accumulateI16reverse_iteratorIS0_I14double_pointerdEdEdET0_T_S5_S4_(double* %first.coerce, double* %last.coerce, double %result) #0 comdat {
entry:
  %first = alloca %struct.reverse_iterator.5, align 8
  %last = alloca %struct.reverse_iterator.5, align 8
  %result.addr = alloca double, align 8
  %coerce = alloca %struct.reverse_iterator.5, align 8
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.5, %struct.reverse_iterator.5* %first, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive1, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %struct.reverse_iterator.5, %struct.reverse_iterator.5* %last, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %coerce.dive3, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive4, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive5, align 8
  store double %result, double* %result.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @_ZneI16reverse_iteratorIS0_I14double_pointerdEdEEiRKT_S6_(%struct.reverse_iterator.5* dereferenceable(8) %first, %struct.reverse_iterator.5* dereferenceable(8) %last)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call6 = call double* @_ZN16reverse_iteratorIS_I14double_pointerdEdEppEi(%struct.reverse_iterator.5* %first, i32 0)
  %coerce.dive7 = getelementptr inbounds %struct.reverse_iterator.5, %struct.reverse_iterator.5* %coerce, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %coerce.dive7, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive8, i32 0, i32 0
  store double* %call6, double** %coerce.dive9, align 8
  %call10 = call dereferenceable(8) double* @_ZNK16reverse_iteratorIS_I14double_pointerdEdEdeEv(%struct.reverse_iterator.5* %coerce)
  %call11 = call double @"_ZN3$_0clERKdS1_"(%struct.anon* @plus, double* dereferenceable(8) %result.addr, double* dereferenceable(8) %call10)
  store double %call11, double* %result.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %0 = load double, double* %result.addr, align 8
  ret double %0
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZneI16reverse_iteratorIS0_I14double_pointerdEdEEiRKT_S6_(%struct.reverse_iterator.5* dereferenceable(8) %x, %struct.reverse_iterator.5* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.reverse_iterator.5*, align 8
  %y.addr = alloca %struct.reverse_iterator.5*, align 8
  store %struct.reverse_iterator.5* %x, %struct.reverse_iterator.5** %x.addr, align 8
  store %struct.reverse_iterator.5* %y, %struct.reverse_iterator.5** %y.addr, align 8
  %0 = load %struct.reverse_iterator.5*, %struct.reverse_iterator.5** %x.addr, align 8
  %1 = load %struct.reverse_iterator.5*, %struct.reverse_iterator.5** %y.addr, align 8
  %call = call i32 @_ZeqI16reverse_iteratorI14double_pointerdEdEiRKS0_IT_T0_ES7_(%struct.reverse_iterator.5* dereferenceable(8) %0, %struct.reverse_iterator.5* dereferenceable(8) %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %conv = zext i1 %lnot to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZN16reverse_iteratorIS_I14double_pointerdEdEppEi(%struct.reverse_iterator.5* %this, i32) #0 comdat align 2 {
entry:
  %retval = alloca %struct.reverse_iterator.5, align 8
  %this.addr = alloca %struct.reverse_iterator.5*, align 8
  %.addr = alloca i32, align 4
  store %struct.reverse_iterator.5* %this, %struct.reverse_iterator.5** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %struct.reverse_iterator.5*, %struct.reverse_iterator.5** %this.addr, align 8
  %1 = bitcast %struct.reverse_iterator.5* %retval to i8*
  %2 = bitcast %struct.reverse_iterator.5* %this1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.reverse_iterator.5* @_ZN16reverse_iteratorIS_I14double_pointerdEdEppEv(%struct.reverse_iterator.5* %this1)
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.5, %struct.reverse_iterator.5* %retval, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %coerce.dive, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive2, i32 0, i32 0
  %3 = load double*, double** %coerce.dive3, align 8
  ret double* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNK16reverse_iteratorIS_I14double_pointerdEdEdeEv(%struct.reverse_iterator.5* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.reverse_iterator.5*, align 8
  %tmp = alloca %struct.reverse_iterator.1, align 8
  store %struct.reverse_iterator.5* %this, %struct.reverse_iterator.5** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.5*, %struct.reverse_iterator.5** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.5, %struct.reverse_iterator.5* %this1, i32 0, i32 0
  %0 = bitcast %struct.reverse_iterator.1* %tmp to i8*
  %1 = bitcast %struct.reverse_iterator.1* %current to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.reverse_iterator.1* @_ZN16reverse_iteratorI14double_pointerdEmmEv(%struct.reverse_iterator.1* %tmp)
  %call2 = call dereferenceable(8) double* @_ZNK16reverse_iteratorI14double_pointerdEdeEv(%struct.reverse_iterator.1* %call)
  ret double* %call2
}

; Function Attrs: noinline nounwind uwtable
define internal double @"_ZN3$_0clERKdS1_"(%struct.anon* %this, double* dereferenceable(8) %x, double* dereferenceable(8) %y) #2 align 2 {
entry:
  %this.addr = alloca %struct.anon*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  store %struct.anon* %this, %struct.anon** %this.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  %this1 = load %struct.anon*, %struct.anon** %this.addr, align 8
  %0 = load double*, double** %x.addr, align 8
  %1 = load double, double* %0, align 8
  %2 = load double*, double** %y.addr, align 8
  %3 = load double, double* %2, align 8
  %add = fadd double %1, %3
  ret double %add
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.reverse_iterator.1* @_ZN16reverse_iteratorI14double_pointerdEmmEv(%struct.reverse_iterator.1* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.reverse_iterator.1*, align 8
  store %struct.reverse_iterator.1* %this, %struct.reverse_iterator.1** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %struct.double_pointer* @_ZN14double_pointerppEv(%struct.double_pointer* %current)
  ret %struct.reverse_iterator.1* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNK16reverse_iteratorI14double_pointerdEdeEv(%struct.reverse_iterator.1* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.reverse_iterator.1*, align 8
  %tmp = alloca %struct.double_pointer, align 8
  store %struct.reverse_iterator.1* %this, %struct.reverse_iterator.1** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %this1, i32 0, i32 0
  %0 = bitcast %struct.double_pointer* %tmp to i8*
  %1 = bitcast %struct.double_pointer* %current to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.double_pointer* @_ZN14double_pointermmEv(%struct.double_pointer* %tmp)
  %call2 = call dereferenceable(8) double* @_ZNK14double_pointerdeEv(%struct.double_pointer* %call)
  ret double* %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.double_pointer* @_ZN14double_pointermmEv(%struct.double_pointer* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.double_pointer*, align 8
  store %struct.double_pointer* %this, %struct.double_pointer** %this.addr, align 8
  %this1 = load %struct.double_pointer*, %struct.double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %this1, i32 0, i32 0
  %0 = load double*, double** %current, align 8
  %incdec.ptr = getelementptr inbounds double, double* %0, i32 -1
  store double* %incdec.ptr, double** %current, align 8
  ret %struct.double_pointer* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNK14double_pointerdeEv(%struct.double_pointer* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.double_pointer*, align 8
  store %struct.double_pointer* %this, %struct.double_pointer** %this.addr, align 8
  %this1 = load %struct.double_pointer*, %struct.double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %this1, i32 0, i32 0
  %0 = load double*, double** %current, align 8
  ret double* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.double_pointer* @_ZN14double_pointerppEv(%struct.double_pointer* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.double_pointer*, align 8
  store %struct.double_pointer* %this, %struct.double_pointer** %this.addr, align 8
  %this1 = load %struct.double_pointer*, %struct.double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %this1, i32 0, i32 0
  %0 = load double*, double** %current, align 8
  %incdec.ptr = getelementptr inbounds double, double* %0, i32 1
  store double* %incdec.ptr, double** %current, align 8
  ret %struct.double_pointer* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) %struct.reverse_iterator.5* @_ZN16reverse_iteratorIS_I14double_pointerdEdEppEv(%struct.reverse_iterator.5* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.reverse_iterator.5*, align 8
  store %struct.reverse_iterator.5* %this, %struct.reverse_iterator.5** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.5*, %struct.reverse_iterator.5** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.5, %struct.reverse_iterator.5* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %struct.reverse_iterator.1* @_ZN16reverse_iteratorI14double_pointerdEmmEv(%struct.reverse_iterator.1* %current)
  ret %struct.reverse_iterator.5* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZeqI16reverse_iteratorI14double_pointerdEdEiRKS0_IT_T0_ES7_(%struct.reverse_iterator.5* dereferenceable(8) %x, %struct.reverse_iterator.5* dereferenceable(8) %y) #2 comdat {
entry:
  %x.addr = alloca %struct.reverse_iterator.5*, align 8
  %y.addr = alloca %struct.reverse_iterator.5*, align 8
  store %struct.reverse_iterator.5* %x, %struct.reverse_iterator.5** %x.addr, align 8
  store %struct.reverse_iterator.5* %y, %struct.reverse_iterator.5** %y.addr, align 8
  %0 = load %struct.reverse_iterator.5*, %struct.reverse_iterator.5** %x.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.5, %struct.reverse_iterator.5* %0, i32 0, i32 0
  %1 = load %struct.reverse_iterator.5*, %struct.reverse_iterator.5** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.reverse_iterator.5, %struct.reverse_iterator.5* %1, i32 0, i32 0
  %call = call i32 @_ZeqI14double_pointerdEiRK16reverse_iteratorIT_T0_ES6_(%struct.reverse_iterator.1* dereferenceable(8) %current, %struct.reverse_iterator.1* dereferenceable(8) %current1)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZeqI14double_pointerdEiRK16reverse_iteratorIT_T0_ES6_(%struct.reverse_iterator.1* dereferenceable(8) %x, %struct.reverse_iterator.1* dereferenceable(8) %y) #2 comdat {
entry:
  %x.addr = alloca %struct.reverse_iterator.1*, align 8
  %y.addr = alloca %struct.reverse_iterator.1*, align 8
  store %struct.reverse_iterator.1* %x, %struct.reverse_iterator.1** %x.addr, align 8
  store %struct.reverse_iterator.1* %y, %struct.reverse_iterator.1** %y.addr, align 8
  %0 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %x.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %0, i32 0, i32 0
  %1 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %1, i32 0, i32 0
  %call = call i32 @_ZeqRK14double_pointerS1_(%struct.double_pointer* dereferenceable(8) %current, %struct.double_pointer* dereferenceable(8) %current1)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZeqRK14double_pointerS1_(%struct.double_pointer* dereferenceable(8) %x, %struct.double_pointer* dereferenceable(8) %y) #2 comdat {
entry:
  %x.addr = alloca %struct.double_pointer*, align 8
  %y.addr = alloca %struct.double_pointer*, align 8
  store %struct.double_pointer* %x, %struct.double_pointer** %x.addr, align 8
  store %struct.double_pointer* %y, %struct.double_pointer** %y.addr, align 8
  %0 = load %struct.double_pointer*, %struct.double_pointer** %x.addr, align 8
  %current = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %0, i32 0, i32 0
  %1 = load double*, double** %current, align 8
  %2 = load %struct.double_pointer*, %struct.double_pointer** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %2, i32 0, i32 0
  %3 = load double*, double** %current1, align 8
  %cmp = icmp eq double* %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_Z10accumulateI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_ET0_T_S6_S5_(%struct.Double* %first.coerce, %struct.Double* %last.coerce, double %result.coerce) #0 comdat {
entry:
  %retval = alloca %struct.Double, align 8
  %first = alloca %struct.reverse_iterator.2, align 8
  %last = alloca %struct.reverse_iterator.2, align 8
  %result = alloca %struct.Double, align 8
  %ref.tmp = alloca %struct.Double, align 8
  %coerce = alloca %struct.reverse_iterator.2, align 8
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %first, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive, i32 0, i32 0
  store %struct.Double* %first.coerce, %struct.Double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %last, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive2, i32 0, i32 0
  store %struct.Double* %last.coerce, %struct.Double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.Double, %struct.Double* %result, i32 0, i32 0
  store double %result.coerce, double* %coerce.dive4, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @_ZneI16reverse_iteratorIS0_IP6DoubleS1_ES1_EEiRKT_S7_(%struct.reverse_iterator.2* dereferenceable(8) %first, %struct.reverse_iterator.2* dereferenceable(8) %last)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call5 = call %struct.Double* @_ZN16reverse_iteratorIS_IP6DoubleS0_ES0_EppEi(%struct.reverse_iterator.2* %first, i32 0)
  %coerce.dive6 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %coerce, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive6, i32 0, i32 0
  store %struct.Double* %call5, %struct.Double** %coerce.dive7, align 8
  %call8 = call dereferenceable(8) %struct.Double* @_ZNK16reverse_iteratorIS_IP6DoubleS0_ES0_EdeEv(%struct.reverse_iterator.2* %coerce)
  %call9 = call double @"_ZN3$_0clERK6DoubleS2_"(%struct.anon* @plus, %struct.Double* dereferenceable(8) %result, %struct.Double* dereferenceable(8) %call8)
  %coerce.dive10 = getelementptr inbounds %struct.Double, %struct.Double* %ref.tmp, i32 0, i32 0
  store double %call9, double* %coerce.dive10, align 8
  %0 = bitcast %struct.Double* %result to i8*
  %1 = bitcast %struct.Double* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = bitcast %struct.Double* %retval to i8*
  %3 = bitcast %struct.Double* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive11 = getelementptr inbounds %struct.Double, %struct.Double* %retval, i32 0, i32 0
  %4 = load double, double* %coerce.dive11, align 8
  ret double %4
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZneI16reverse_iteratorIS0_IP6DoubleS1_ES1_EEiRKT_S7_(%struct.reverse_iterator.2* dereferenceable(8) %x, %struct.reverse_iterator.2* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.reverse_iterator.2*, align 8
  %y.addr = alloca %struct.reverse_iterator.2*, align 8
  store %struct.reverse_iterator.2* %x, %struct.reverse_iterator.2** %x.addr, align 8
  store %struct.reverse_iterator.2* %y, %struct.reverse_iterator.2** %y.addr, align 8
  %0 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %x.addr, align 8
  %1 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %y.addr, align 8
  %call = call i32 @_ZeqI16reverse_iteratorIP6DoubleS1_ES1_EiRKS0_IT_T0_ES8_(%struct.reverse_iterator.2* dereferenceable(8) %0, %struct.reverse_iterator.2* dereferenceable(8) %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %conv = zext i1 %lnot to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define linkonce_odr %struct.Double* @_ZN16reverse_iteratorIS_IP6DoubleS0_ES0_EppEi(%struct.reverse_iterator.2* %this, i32) #0 comdat align 2 {
entry:
  %retval = alloca %struct.reverse_iterator.2, align 8
  %this.addr = alloca %struct.reverse_iterator.2*, align 8
  %.addr = alloca i32, align 4
  store %struct.reverse_iterator.2* %this, %struct.reverse_iterator.2** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %this.addr, align 8
  %1 = bitcast %struct.reverse_iterator.2* %retval to i8*
  %2 = bitcast %struct.reverse_iterator.2* %this1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.reverse_iterator.2* @_ZN16reverse_iteratorIS_IP6DoubleS0_ES0_EppEv(%struct.reverse_iterator.2* %this1)
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %retval, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive, i32 0, i32 0
  %3 = load %struct.Double*, %struct.Double** %coerce.dive2, align 8
  ret %struct.Double* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.Double* @_ZNK16reverse_iteratorIS_IP6DoubleS0_ES0_EdeEv(%struct.reverse_iterator.2* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.reverse_iterator.2*, align 8
  %tmp = alloca %struct.Double_pointer, align 8
  store %struct.reverse_iterator.2* %this, %struct.reverse_iterator.2** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %this1, i32 0, i32 0
  %0 = bitcast %struct.Double_pointer* %tmp to i8*
  %1 = bitcast %struct.Double_pointer* %current to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.Double_pointer* @_ZN16reverse_iteratorIP6DoubleS0_EmmEv(%struct.Double_pointer* %tmp)
  %call2 = call dereferenceable(8) %struct.Double* @_ZNK16reverse_iteratorIP6DoubleS0_EdeEv(%struct.Double_pointer* %call)
  ret %struct.Double* %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.Double_pointer* @_ZN16reverse_iteratorIP6DoubleS0_EmmEv(%struct.Double_pointer* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Double_pointer*, align 8
  store %struct.Double_pointer* %this, %struct.Double_pointer** %this.addr, align 8
  %this1 = load %struct.Double_pointer*, %struct.Double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %this1, i32 0, i32 0
  %0 = load %struct.Double*, %struct.Double** %current, align 8
  %incdec.ptr = getelementptr inbounds %struct.Double, %struct.Double* %0, i32 1
  store %struct.Double* %incdec.ptr, %struct.Double** %current, align 8
  ret %struct.Double_pointer* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.Double* @_ZNK16reverse_iteratorIP6DoubleS0_EdeEv(%struct.Double_pointer* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Double_pointer*, align 8
  %tmp = alloca %struct.Double*, align 8
  store %struct.Double_pointer* %this, %struct.Double_pointer** %this.addr, align 8
  %this1 = load %struct.Double_pointer*, %struct.Double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %this1, i32 0, i32 0
  %0 = load %struct.Double*, %struct.Double** %current, align 8
  store %struct.Double* %0, %struct.Double** %tmp, align 8
  %1 = load %struct.Double*, %struct.Double** %tmp, align 8
  %incdec.ptr = getelementptr inbounds %struct.Double, %struct.Double* %1, i32 -1
  store %struct.Double* %incdec.ptr, %struct.Double** %tmp, align 8
  ret %struct.Double* %incdec.ptr
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) %struct.reverse_iterator.2* @_ZN16reverse_iteratorIS_IP6DoubleS0_ES0_EppEv(%struct.reverse_iterator.2* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.reverse_iterator.2*, align 8
  store %struct.reverse_iterator.2* %this, %struct.reverse_iterator.2** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %struct.Double_pointer* @_ZN16reverse_iteratorIP6DoubleS0_EmmEv(%struct.Double_pointer* %current)
  ret %struct.reverse_iterator.2* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZeqI16reverse_iteratorIP6DoubleS1_ES1_EiRKS0_IT_T0_ES8_(%struct.reverse_iterator.2* dereferenceable(8) %x, %struct.reverse_iterator.2* dereferenceable(8) %y) #2 comdat {
entry:
  %x.addr = alloca %struct.reverse_iterator.2*, align 8
  %y.addr = alloca %struct.reverse_iterator.2*, align 8
  store %struct.reverse_iterator.2* %x, %struct.reverse_iterator.2** %x.addr, align 8
  store %struct.reverse_iterator.2* %y, %struct.reverse_iterator.2** %y.addr, align 8
  %0 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %x.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %0, i32 0, i32 0
  %1 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %1, i32 0, i32 0
  %call = call i32 @_ZeqIP6DoubleS0_EiRK16reverse_iteratorIT_T0_ES7_(%struct.Double_pointer* dereferenceable(8) %current, %struct.Double_pointer* dereferenceable(8) %current1)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZeqIP6DoubleS0_EiRK16reverse_iteratorIT_T0_ES7_(%struct.Double_pointer* dereferenceable(8) %x, %struct.Double_pointer* dereferenceable(8) %y) #2 comdat {
entry:
  %x.addr = alloca %struct.Double_pointer*, align 8
  %y.addr = alloca %struct.Double_pointer*, align 8
  store %struct.Double_pointer* %x, %struct.Double_pointer** %x.addr, align 8
  store %struct.Double_pointer* %y, %struct.Double_pointer** %y.addr, align 8
  %0 = load %struct.Double_pointer*, %struct.Double_pointer** %x.addr, align 8
  %current = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %0, i32 0, i32 0
  %1 = load %struct.Double*, %struct.Double** %current, align 8
  %2 = load %struct.Double_pointer*, %struct.Double_pointer** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %2, i32 0, i32 0
  %3 = load %struct.Double*, %struct.Double** %current1, align 8
  %cmp = icmp eq %struct.Double* %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_Z10accumulateI16reverse_iteratorIS0_IPddEdEdET0_T_S5_S4_(double* %first.coerce, double* %last.coerce, double %result) #0 comdat {
entry:
  %first = alloca %struct.reverse_iterator.1, align 8
  %last = alloca %struct.reverse_iterator.1, align 8
  %result.addr = alloca double, align 8
  %coerce = alloca %struct.reverse_iterator.1, align 8
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %first, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %last, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive2, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive3, align 8
  store double %result, double* %result.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @_ZneI16reverse_iteratorIS0_IPddEdEEiRKT_S6_(%struct.reverse_iterator.1* dereferenceable(8) %first, %struct.reverse_iterator.1* dereferenceable(8) %last)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call double* @_ZN16reverse_iteratorIS_IPddEdEppEi(%struct.reverse_iterator.1* %first, i32 0)
  %coerce.dive5 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %coerce, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive5, i32 0, i32 0
  store double* %call4, double** %coerce.dive6, align 8
  %call7 = call dereferenceable(8) double* @_ZNK16reverse_iteratorIS_IPddEdEdeEv(%struct.reverse_iterator.1* %coerce)
  %call8 = call double @"_ZN3$_0clERKdS1_"(%struct.anon* @plus, double* dereferenceable(8) %result.addr, double* dereferenceable(8) %call7)
  store double %call8, double* %result.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %0 = load double, double* %result.addr, align 8
  ret double %0
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZneI16reverse_iteratorIS0_IPddEdEEiRKT_S6_(%struct.reverse_iterator.1* dereferenceable(8) %x, %struct.reverse_iterator.1* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.reverse_iterator.1*, align 8
  %y.addr = alloca %struct.reverse_iterator.1*, align 8
  store %struct.reverse_iterator.1* %x, %struct.reverse_iterator.1** %x.addr, align 8
  store %struct.reverse_iterator.1* %y, %struct.reverse_iterator.1** %y.addr, align 8
  %0 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %x.addr, align 8
  %1 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %y.addr, align 8
  %call = call i32 @_ZeqI16reverse_iteratorIPddEdEiRKS0_IT_T0_ES7_(%struct.reverse_iterator.1* dereferenceable(8) %0, %struct.reverse_iterator.1* dereferenceable(8) %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %conv = zext i1 %lnot to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZN16reverse_iteratorIS_IPddEdEppEi(%struct.reverse_iterator.1* %this, i32) #0 comdat align 2 {
entry:
  %retval = alloca %struct.reverse_iterator.1, align 8
  %this.addr = alloca %struct.reverse_iterator.1*, align 8
  %.addr = alloca i32, align 4
  store %struct.reverse_iterator.1* %this, %struct.reverse_iterator.1** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %this.addr, align 8
  %1 = bitcast %struct.reverse_iterator.1* %retval to i8*
  %2 = bitcast %struct.reverse_iterator.1* %this1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.reverse_iterator.1* @_ZN16reverse_iteratorIS_IPddEdEppEv(%struct.reverse_iterator.1* %this1)
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %retval, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive, i32 0, i32 0
  %3 = load double*, double** %coerce.dive2, align 8
  ret double* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNK16reverse_iteratorIS_IPddEdEdeEv(%struct.reverse_iterator.1* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.reverse_iterator.1*, align 8
  %tmp = alloca %struct.double_pointer, align 8
  store %struct.reverse_iterator.1* %this, %struct.reverse_iterator.1** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %this1, i32 0, i32 0
  %0 = bitcast %struct.double_pointer* %tmp to i8*
  %1 = bitcast %struct.double_pointer* %current to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.double_pointer* @_ZN16reverse_iteratorIPddEmmEv(%struct.double_pointer* %tmp)
  %call2 = call dereferenceable(8) double* @_ZNK16reverse_iteratorIPddEdeEv(%struct.double_pointer* %call)
  ret double* %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.double_pointer* @_ZN16reverse_iteratorIPddEmmEv(%struct.double_pointer* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.double_pointer*, align 8
  store %struct.double_pointer* %this, %struct.double_pointer** %this.addr, align 8
  %this1 = load %struct.double_pointer*, %struct.double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %this1, i32 0, i32 0
  %0 = load double*, double** %current, align 8
  %incdec.ptr = getelementptr inbounds double, double* %0, i32 1
  store double* %incdec.ptr, double** %current, align 8
  ret %struct.double_pointer* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNK16reverse_iteratorIPddEdeEv(%struct.double_pointer* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.double_pointer*, align 8
  %tmp = alloca double*, align 8
  store %struct.double_pointer* %this, %struct.double_pointer** %this.addr, align 8
  %this1 = load %struct.double_pointer*, %struct.double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %this1, i32 0, i32 0
  %0 = load double*, double** %current, align 8
  store double* %0, double** %tmp, align 8
  %1 = load double*, double** %tmp, align 8
  %incdec.ptr = getelementptr inbounds double, double* %1, i32 -1
  store double* %incdec.ptr, double** %tmp, align 8
  ret double* %incdec.ptr
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) %struct.reverse_iterator.1* @_ZN16reverse_iteratorIS_IPddEdEppEv(%struct.reverse_iterator.1* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.reverse_iterator.1*, align 8
  store %struct.reverse_iterator.1* %this, %struct.reverse_iterator.1** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %struct.double_pointer* @_ZN16reverse_iteratorIPddEmmEv(%struct.double_pointer* %current)
  ret %struct.reverse_iterator.1* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZeqI16reverse_iteratorIPddEdEiRKS0_IT_T0_ES7_(%struct.reverse_iterator.1* dereferenceable(8) %x, %struct.reverse_iterator.1* dereferenceable(8) %y) #2 comdat {
entry:
  %x.addr = alloca %struct.reverse_iterator.1*, align 8
  %y.addr = alloca %struct.reverse_iterator.1*, align 8
  store %struct.reverse_iterator.1* %x, %struct.reverse_iterator.1** %x.addr, align 8
  store %struct.reverse_iterator.1* %y, %struct.reverse_iterator.1** %y.addr, align 8
  %0 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %x.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %0, i32 0, i32 0
  %1 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %1, i32 0, i32 0
  %call = call i32 @_ZeqIPddEiRK16reverse_iteratorIT_T0_ES6_(%struct.double_pointer* dereferenceable(8) %current, %struct.double_pointer* dereferenceable(8) %current1)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZeqIPddEiRK16reverse_iteratorIT_T0_ES6_(%struct.double_pointer* dereferenceable(8) %x, %struct.double_pointer* dereferenceable(8) %y) #2 comdat {
entry:
  %x.addr = alloca %struct.double_pointer*, align 8
  %y.addr = alloca %struct.double_pointer*, align 8
  store %struct.double_pointer* %x, %struct.double_pointer** %x.addr, align 8
  store %struct.double_pointer* %y, %struct.double_pointer** %y.addr, align 8
  %0 = load %struct.double_pointer*, %struct.double_pointer** %x.addr, align 8
  %current = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %0, i32 0, i32 0
  %1 = load double*, double** %current, align 8
  %2 = load %struct.double_pointer*, %struct.double_pointer** %y.addr, align 8
  %current1 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %2, i32 0, i32 0
  %3 = load double*, double** %current1, align 8
  %cmp = icmp eq double* %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_Z10accumulateI16reverse_iteratorI14Double_pointer6DoubleES2_ET0_T_S5_S4_(%struct.Double* %first.coerce, %struct.Double* %last.coerce, double %result.coerce) #0 comdat {
entry:
  %retval = alloca %struct.Double, align 8
  %first = alloca %struct.reverse_iterator.2, align 8
  %last = alloca %struct.reverse_iterator.2, align 8
  %result = alloca %struct.Double, align 8
  %ref.tmp = alloca %struct.Double, align 8
  %coerce = alloca %struct.reverse_iterator.2, align 8
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %first, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive, i32 0, i32 0
  store %struct.Double* %first.coerce, %struct.Double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %last, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive2, i32 0, i32 0
  store %struct.Double* %last.coerce, %struct.Double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %struct.Double, %struct.Double* %result, i32 0, i32 0
  store double %result.coerce, double* %coerce.dive4, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @_ZneI16reverse_iteratorI14Double_pointer6DoubleEEiRKT_S6_(%struct.reverse_iterator.2* dereferenceable(8) %first, %struct.reverse_iterator.2* dereferenceable(8) %last)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call5 = call %struct.Double* @_ZN16reverse_iteratorI14Double_pointer6DoubleEppEi(%struct.reverse_iterator.2* %first, i32 0)
  %coerce.dive6 = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %coerce, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive6, i32 0, i32 0
  store %struct.Double* %call5, %struct.Double** %coerce.dive7, align 8
  %call8 = call dereferenceable(8) %struct.Double* @_ZNK16reverse_iteratorI14Double_pointer6DoubleEdeEv(%struct.reverse_iterator.2* %coerce)
  %call9 = call double @"_ZN3$_0clERK6DoubleS2_"(%struct.anon* @plus, %struct.Double* dereferenceable(8) %result, %struct.Double* dereferenceable(8) %call8)
  %coerce.dive10 = getelementptr inbounds %struct.Double, %struct.Double* %ref.tmp, i32 0, i32 0
  store double %call9, double* %coerce.dive10, align 8
  %0 = bitcast %struct.Double* %result to i8*
  %1 = bitcast %struct.Double* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = bitcast %struct.Double* %retval to i8*
  %3 = bitcast %struct.Double* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive11 = getelementptr inbounds %struct.Double, %struct.Double* %retval, i32 0, i32 0
  %4 = load double, double* %coerce.dive11, align 8
  ret double %4
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZneI16reverse_iteratorI14Double_pointer6DoubleEEiRKT_S6_(%struct.reverse_iterator.2* dereferenceable(8) %x, %struct.reverse_iterator.2* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.reverse_iterator.2*, align 8
  %y.addr = alloca %struct.reverse_iterator.2*, align 8
  store %struct.reverse_iterator.2* %x, %struct.reverse_iterator.2** %x.addr, align 8
  store %struct.reverse_iterator.2* %y, %struct.reverse_iterator.2** %y.addr, align 8
  %0 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %x.addr, align 8
  %1 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %y.addr, align 8
  %call = call i32 @_ZeqI14Double_pointer6DoubleEiRK16reverse_iteratorIT_T0_ES7_(%struct.reverse_iterator.2* dereferenceable(8) %0, %struct.reverse_iterator.2* dereferenceable(8) %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %conv = zext i1 %lnot to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define linkonce_odr %struct.Double* @_ZN16reverse_iteratorI14Double_pointer6DoubleEppEi(%struct.reverse_iterator.2* %this, i32) #0 comdat align 2 {
entry:
  %retval = alloca %struct.reverse_iterator.2, align 8
  %this.addr = alloca %struct.reverse_iterator.2*, align 8
  %.addr = alloca i32, align 4
  store %struct.reverse_iterator.2* %this, %struct.reverse_iterator.2** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %this.addr, align 8
  %1 = bitcast %struct.reverse_iterator.2* %retval to i8*
  %2 = bitcast %struct.reverse_iterator.2* %this1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.reverse_iterator.2* @_ZN16reverse_iteratorI14Double_pointer6DoubleEppEv(%struct.reverse_iterator.2* %this1)
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %retval, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce.dive, i32 0, i32 0
  %3 = load %struct.Double*, %struct.Double** %coerce.dive2, align 8
  ret %struct.Double* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) %struct.reverse_iterator.2* @_ZN16reverse_iteratorI14Double_pointer6DoubleEppEv(%struct.reverse_iterator.2* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.reverse_iterator.2*, align 8
  store %struct.reverse_iterator.2* %this, %struct.reverse_iterator.2** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.2*, %struct.reverse_iterator.2** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.2, %struct.reverse_iterator.2* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %struct.Double_pointer* @_ZN14Double_pointermmEv(%struct.Double_pointer* %current)
  ret %struct.reverse_iterator.2* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_Z10accumulateI16reverse_iteratorI14double_pointerdEdET0_T_S4_S3_(double* %first.coerce, double* %last.coerce, double %result) #0 comdat {
entry:
  %first = alloca %struct.reverse_iterator.1, align 8
  %last = alloca %struct.reverse_iterator.1, align 8
  %result.addr = alloca double, align 8
  %coerce = alloca %struct.reverse_iterator.1, align 8
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %first, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %last, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive2, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive3, align 8
  store double %result, double* %result.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @_ZneI16reverse_iteratorI14double_pointerdEEiRKT_S5_(%struct.reverse_iterator.1* dereferenceable(8) %first, %struct.reverse_iterator.1* dereferenceable(8) %last)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call double* @_ZN16reverse_iteratorI14double_pointerdEppEi(%struct.reverse_iterator.1* %first, i32 0)
  %coerce.dive5 = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %coerce, i32 0, i32 0
  %coerce.dive6 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive5, i32 0, i32 0
  store double* %call4, double** %coerce.dive6, align 8
  %call7 = call dereferenceable(8) double* @_ZNK16reverse_iteratorI14double_pointerdEdeEv(%struct.reverse_iterator.1* %coerce)
  %call8 = call double @"_ZN3$_0clERKdS1_"(%struct.anon* @plus, double* dereferenceable(8) %result.addr, double* dereferenceable(8) %call7)
  store double %call8, double* %result.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %0 = load double, double* %result.addr, align 8
  ret double %0
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZneI16reverse_iteratorI14double_pointerdEEiRKT_S5_(%struct.reverse_iterator.1* dereferenceable(8) %x, %struct.reverse_iterator.1* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.reverse_iterator.1*, align 8
  %y.addr = alloca %struct.reverse_iterator.1*, align 8
  store %struct.reverse_iterator.1* %x, %struct.reverse_iterator.1** %x.addr, align 8
  store %struct.reverse_iterator.1* %y, %struct.reverse_iterator.1** %y.addr, align 8
  %0 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %x.addr, align 8
  %1 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %y.addr, align 8
  %call = call i32 @_ZeqI14double_pointerdEiRK16reverse_iteratorIT_T0_ES6_(%struct.reverse_iterator.1* dereferenceable(8) %0, %struct.reverse_iterator.1* dereferenceable(8) %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %conv = zext i1 %lnot to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZN16reverse_iteratorI14double_pointerdEppEi(%struct.reverse_iterator.1* %this, i32) #0 comdat align 2 {
entry:
  %retval = alloca %struct.reverse_iterator.1, align 8
  %this.addr = alloca %struct.reverse_iterator.1*, align 8
  %.addr = alloca i32, align 4
  store %struct.reverse_iterator.1* %this, %struct.reverse_iterator.1** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %this.addr, align 8
  %1 = bitcast %struct.reverse_iterator.1* %retval to i8*
  %2 = bitcast %struct.reverse_iterator.1* %this1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.reverse_iterator.1* @_ZN16reverse_iteratorI14double_pointerdEppEv(%struct.reverse_iterator.1* %this1)
  %coerce.dive = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %retval, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce.dive, i32 0, i32 0
  %3 = load double*, double** %coerce.dive2, align 8
  ret double* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) %struct.reverse_iterator.1* @_ZN16reverse_iteratorI14double_pointerdEppEv(%struct.reverse_iterator.1* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.reverse_iterator.1*, align 8
  store %struct.reverse_iterator.1* %this, %struct.reverse_iterator.1** %this.addr, align 8
  %this1 = load %struct.reverse_iterator.1*, %struct.reverse_iterator.1** %this.addr, align 8
  %current = getelementptr inbounds %struct.reverse_iterator.1, %struct.reverse_iterator.1* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %struct.double_pointer* @_ZN14double_pointermmEv(%struct.double_pointer* %current)
  ret %struct.reverse_iterator.1* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_Z10accumulateI16reverse_iteratorIP6DoubleS1_ES1_ET0_T_S5_S4_(%struct.Double* %first.coerce, %struct.Double* %last.coerce, double %result.coerce) #0 comdat {
entry:
  %retval = alloca %struct.Double, align 8
  %first = alloca %struct.Double_pointer, align 8
  %last = alloca %struct.Double_pointer, align 8
  %result = alloca %struct.Double, align 8
  %ref.tmp = alloca %struct.Double, align 8
  %coerce = alloca %struct.Double_pointer, align 8
  %coerce.dive = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %first, i32 0, i32 0
  store %struct.Double* %first.coerce, %struct.Double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %last, i32 0, i32 0
  store %struct.Double* %last.coerce, %struct.Double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.Double, %struct.Double* %result, i32 0, i32 0
  store double %result.coerce, double* %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @_ZneI16reverse_iteratorIP6DoubleS1_EEiRKT_S6_(%struct.Double_pointer* dereferenceable(8) %first, %struct.Double_pointer* dereferenceable(8) %last)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call %struct.Double* @_ZN16reverse_iteratorIP6DoubleS0_EppEi(%struct.Double_pointer* %first, i32 0)
  %coerce.dive4 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce, i32 0, i32 0
  store %struct.Double* %call3, %struct.Double** %coerce.dive4, align 8
  %call5 = call dereferenceable(8) %struct.Double* @_ZNK16reverse_iteratorIP6DoubleS0_EdeEv(%struct.Double_pointer* %coerce)
  %call6 = call double @"_ZN3$_0clERK6DoubleS2_"(%struct.anon* @plus, %struct.Double* dereferenceable(8) %result, %struct.Double* dereferenceable(8) %call5)
  %coerce.dive7 = getelementptr inbounds %struct.Double, %struct.Double* %ref.tmp, i32 0, i32 0
  store double %call6, double* %coerce.dive7, align 8
  %0 = bitcast %struct.Double* %result to i8*
  %1 = bitcast %struct.Double* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = bitcast %struct.Double* %retval to i8*
  %3 = bitcast %struct.Double* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive8 = getelementptr inbounds %struct.Double, %struct.Double* %retval, i32 0, i32 0
  %4 = load double, double* %coerce.dive8, align 8
  ret double %4
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZneI16reverse_iteratorIP6DoubleS1_EEiRKT_S6_(%struct.Double_pointer* dereferenceable(8) %x, %struct.Double_pointer* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.Double_pointer*, align 8
  %y.addr = alloca %struct.Double_pointer*, align 8
  store %struct.Double_pointer* %x, %struct.Double_pointer** %x.addr, align 8
  store %struct.Double_pointer* %y, %struct.Double_pointer** %y.addr, align 8
  %0 = load %struct.Double_pointer*, %struct.Double_pointer** %x.addr, align 8
  %1 = load %struct.Double_pointer*, %struct.Double_pointer** %y.addr, align 8
  %call = call i32 @_ZeqIP6DoubleS0_EiRK16reverse_iteratorIT_T0_ES7_(%struct.Double_pointer* dereferenceable(8) %0, %struct.Double_pointer* dereferenceable(8) %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %conv = zext i1 %lnot to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define linkonce_odr %struct.Double* @_ZN16reverse_iteratorIP6DoubleS0_EppEi(%struct.Double_pointer* %this, i32) #0 comdat align 2 {
entry:
  %retval = alloca %struct.Double_pointer, align 8
  %this.addr = alloca %struct.Double_pointer*, align 8
  %.addr = alloca i32, align 4
  store %struct.Double_pointer* %this, %struct.Double_pointer** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %struct.Double_pointer*, %struct.Double_pointer** %this.addr, align 8
  %1 = bitcast %struct.Double_pointer* %retval to i8*
  %2 = bitcast %struct.Double_pointer* %this1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.Double_pointer* @_ZN16reverse_iteratorIP6DoubleS0_EppEv(%struct.Double_pointer* %this1)
  %coerce.dive = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %retval, i32 0, i32 0
  %3 = load %struct.Double*, %struct.Double** %coerce.dive, align 8
  ret %struct.Double* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.Double_pointer* @_ZN16reverse_iteratorIP6DoubleS0_EppEv(%struct.Double_pointer* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Double_pointer*, align 8
  store %struct.Double_pointer* %this, %struct.Double_pointer** %this.addr, align 8
  %this1 = load %struct.Double_pointer*, %struct.Double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %this1, i32 0, i32 0
  %0 = load %struct.Double*, %struct.Double** %current, align 8
  %incdec.ptr = getelementptr inbounds %struct.Double, %struct.Double* %0, i32 -1
  store %struct.Double* %incdec.ptr, %struct.Double** %current, align 8
  ret %struct.Double_pointer* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_Z10accumulateI16reverse_iteratorIPddEdET0_T_S4_S3_(double* %first.coerce, double* %last.coerce, double %result) #0 comdat {
entry:
  %first = alloca %struct.double_pointer, align 8
  %last = alloca %struct.double_pointer, align 8
  %result.addr = alloca double, align 8
  %coerce = alloca %struct.double_pointer, align 8
  %coerce.dive = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %first, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %last, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive1, align 8
  store double %result, double* %result.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @_ZneI16reverse_iteratorIPddEEiRKT_S5_(%struct.double_pointer* dereferenceable(8) %first, %struct.double_pointer* dereferenceable(8) %last)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call double* @_ZN16reverse_iteratorIPddEppEi(%struct.double_pointer* %first, i32 0)
  %coerce.dive3 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce, i32 0, i32 0
  store double* %call2, double** %coerce.dive3, align 8
  %call4 = call dereferenceable(8) double* @_ZNK16reverse_iteratorIPddEdeEv(%struct.double_pointer* %coerce)
  %call5 = call double @"_ZN3$_0clERKdS1_"(%struct.anon* @plus, double* dereferenceable(8) %result.addr, double* dereferenceable(8) %call4)
  store double %call5, double* %result.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %0 = load double, double* %result.addr, align 8
  ret double %0
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZneI16reverse_iteratorIPddEEiRKT_S5_(%struct.double_pointer* dereferenceable(8) %x, %struct.double_pointer* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.double_pointer*, align 8
  %y.addr = alloca %struct.double_pointer*, align 8
  store %struct.double_pointer* %x, %struct.double_pointer** %x.addr, align 8
  store %struct.double_pointer* %y, %struct.double_pointer** %y.addr, align 8
  %0 = load %struct.double_pointer*, %struct.double_pointer** %x.addr, align 8
  %1 = load %struct.double_pointer*, %struct.double_pointer** %y.addr, align 8
  %call = call i32 @_ZeqIPddEiRK16reverse_iteratorIT_T0_ES6_(%struct.double_pointer* dereferenceable(8) %0, %struct.double_pointer* dereferenceable(8) %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %conv = zext i1 %lnot to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZN16reverse_iteratorIPddEppEi(%struct.double_pointer* %this, i32) #0 comdat align 2 {
entry:
  %retval = alloca %struct.double_pointer, align 8
  %this.addr = alloca %struct.double_pointer*, align 8
  %.addr = alloca i32, align 4
  store %struct.double_pointer* %this, %struct.double_pointer** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %struct.double_pointer*, %struct.double_pointer** %this.addr, align 8
  %1 = bitcast %struct.double_pointer* %retval to i8*
  %2 = bitcast %struct.double_pointer* %this1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.double_pointer* @_ZN16reverse_iteratorIPddEppEv(%struct.double_pointer* %this1)
  %coerce.dive = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %retval, i32 0, i32 0
  %3 = load double*, double** %coerce.dive, align 8
  ret double* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.double_pointer* @_ZN16reverse_iteratorIPddEppEv(%struct.double_pointer* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.double_pointer*, align 8
  store %struct.double_pointer* %this, %struct.double_pointer** %this.addr, align 8
  %this1 = load %struct.double_pointer*, %struct.double_pointer** %this.addr, align 8
  %current = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %this1, i32 0, i32 0
  %0 = load double*, double** %current, align 8
  %incdec.ptr = getelementptr inbounds double, double* %0, i32 -1
  store double* %incdec.ptr, double** %current, align 8
  ret %struct.double_pointer* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_Z10accumulateI14Double_pointer6DoubleET0_T_S3_S2_(%struct.Double* %first.coerce, %struct.Double* %last.coerce, double %result.coerce) #0 comdat {
entry:
  %retval = alloca %struct.Double, align 8
  %first = alloca %struct.Double_pointer, align 8
  %last = alloca %struct.Double_pointer, align 8
  %result = alloca %struct.Double, align 8
  %ref.tmp = alloca %struct.Double, align 8
  %coerce = alloca %struct.Double_pointer, align 8
  %coerce.dive = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %first, i32 0, i32 0
  store %struct.Double* %first.coerce, %struct.Double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %last, i32 0, i32 0
  store %struct.Double* %last.coerce, %struct.Double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %struct.Double, %struct.Double* %result, i32 0, i32 0
  store double %result.coerce, double* %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @_ZneI14Double_pointerEiRKT_S3_(%struct.Double_pointer* dereferenceable(8) %first, %struct.Double_pointer* dereferenceable(8) %last)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call %struct.Double* @_ZN14Double_pointerppEi(%struct.Double_pointer* %first, i32 0)
  %coerce.dive4 = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %coerce, i32 0, i32 0
  store %struct.Double* %call3, %struct.Double** %coerce.dive4, align 8
  %call5 = call dereferenceable(8) %struct.Double* @_ZNK14Double_pointerdeEv(%struct.Double_pointer* %coerce)
  %call6 = call double @"_ZN3$_0clERK6DoubleS2_"(%struct.anon* @plus, %struct.Double* dereferenceable(8) %result, %struct.Double* dereferenceable(8) %call5)
  %coerce.dive7 = getelementptr inbounds %struct.Double, %struct.Double* %ref.tmp, i32 0, i32 0
  store double %call6, double* %coerce.dive7, align 8
  %0 = bitcast %struct.Double* %result to i8*
  %1 = bitcast %struct.Double* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = bitcast %struct.Double* %retval to i8*
  %3 = bitcast %struct.Double* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive8 = getelementptr inbounds %struct.Double, %struct.Double* %retval, i32 0, i32 0
  %4 = load double, double* %coerce.dive8, align 8
  ret double %4
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZneI14Double_pointerEiRKT_S3_(%struct.Double_pointer* dereferenceable(8) %x, %struct.Double_pointer* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.Double_pointer*, align 8
  %y.addr = alloca %struct.Double_pointer*, align 8
  store %struct.Double_pointer* %x, %struct.Double_pointer** %x.addr, align 8
  store %struct.Double_pointer* %y, %struct.Double_pointer** %y.addr, align 8
  %0 = load %struct.Double_pointer*, %struct.Double_pointer** %x.addr, align 8
  %1 = load %struct.Double_pointer*, %struct.Double_pointer** %y.addr, align 8
  %call = call i32 @_ZeqRK14Double_pointerS1_(%struct.Double_pointer* dereferenceable(8) %0, %struct.Double_pointer* dereferenceable(8) %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %conv = zext i1 %lnot to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define linkonce_odr %struct.Double* @_ZN14Double_pointerppEi(%struct.Double_pointer* %this, i32) #0 comdat align 2 {
entry:
  %retval = alloca %struct.Double_pointer, align 8
  %this.addr = alloca %struct.Double_pointer*, align 8
  %.addr = alloca i32, align 4
  store %struct.Double_pointer* %this, %struct.Double_pointer** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %struct.Double_pointer*, %struct.Double_pointer** %this.addr, align 8
  %1 = bitcast %struct.Double_pointer* %retval to i8*
  %2 = bitcast %struct.Double_pointer* %this1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.Double_pointer* @_ZN14Double_pointerppEv(%struct.Double_pointer* %this1)
  %coerce.dive = getelementptr inbounds %struct.Double_pointer, %struct.Double_pointer* %retval, i32 0, i32 0
  %3 = load %struct.Double*, %struct.Double** %coerce.dive, align 8
  ret %struct.Double* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_Z10accumulateI14double_pointerdET0_T_S2_S1_(double* %first.coerce, double* %last.coerce, double %result) #0 comdat {
entry:
  %first = alloca %struct.double_pointer, align 8
  %last = alloca %struct.double_pointer, align 8
  %result.addr = alloca double, align 8
  %coerce = alloca %struct.double_pointer, align 8
  %coerce.dive = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %first, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %last, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive1, align 8
  store double %result, double* %result.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @_ZneI14double_pointerEiRKT_S3_(%struct.double_pointer* dereferenceable(8) %first, %struct.double_pointer* dereferenceable(8) %last)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call double* @_ZN14double_pointerppEi(%struct.double_pointer* %first, i32 0)
  %coerce.dive3 = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %coerce, i32 0, i32 0
  store double* %call2, double** %coerce.dive3, align 8
  %call4 = call dereferenceable(8) double* @_ZNK14double_pointerdeEv(%struct.double_pointer* %coerce)
  %call5 = call double @"_ZN3$_0clERKdS1_"(%struct.anon* @plus, double* dereferenceable(8) %result.addr, double* dereferenceable(8) %call4)
  store double %call5, double* %result.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %0 = load double, double* %result.addr, align 8
  ret double %0
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZneI14double_pointerEiRKT_S3_(%struct.double_pointer* dereferenceable(8) %x, %struct.double_pointer* dereferenceable(8) %y) #0 comdat {
entry:
  %x.addr = alloca %struct.double_pointer*, align 8
  %y.addr = alloca %struct.double_pointer*, align 8
  store %struct.double_pointer* %x, %struct.double_pointer** %x.addr, align 8
  store %struct.double_pointer* %y, %struct.double_pointer** %y.addr, align 8
  %0 = load %struct.double_pointer*, %struct.double_pointer** %x.addr, align 8
  %1 = load %struct.double_pointer*, %struct.double_pointer** %y.addr, align 8
  %call = call i32 @_ZeqRK14double_pointerS1_(%struct.double_pointer* dereferenceable(8) %0, %struct.double_pointer* dereferenceable(8) %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %conv = zext i1 %lnot to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZN14double_pointerppEi(%struct.double_pointer* %this, i32) #0 comdat align 2 {
entry:
  %retval = alloca %struct.double_pointer, align 8
  %this.addr = alloca %struct.double_pointer*, align 8
  %.addr = alloca i32, align 4
  store %struct.double_pointer* %this, %struct.double_pointer** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %struct.double_pointer*, %struct.double_pointer** %this.addr, align 8
  %1 = bitcast %struct.double_pointer* %retval to i8*
  %2 = bitcast %struct.double_pointer* %this1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %struct.double_pointer* @_ZN14double_pointerppEv(%struct.double_pointer* %this1)
  %coerce.dive = getelementptr inbounds %struct.double_pointer, %struct.double_pointer* %retval, i32 0, i32 0
  %3 = load double*, double** %coerce.dive, align 8
  ret double* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_Z10accumulateIP6DoubleS0_ET0_T_S3_S2_(%struct.Double* %first, %struct.Double* %last, double %result.coerce) #0 comdat {
entry:
  %retval = alloca %struct.Double, align 8
  %result = alloca %struct.Double, align 8
  %first.addr = alloca %struct.Double*, align 8
  %last.addr = alloca %struct.Double*, align 8
  %ref.tmp = alloca %struct.Double, align 8
  %coerce.dive = getelementptr inbounds %struct.Double, %struct.Double* %result, i32 0, i32 0
  store double %result.coerce, double* %coerce.dive, align 8
  store %struct.Double* %first, %struct.Double** %first.addr, align 8
  store %struct.Double* %last, %struct.Double** %last.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.Double*, %struct.Double** %first.addr, align 8
  %1 = load %struct.Double*, %struct.Double** %last.addr, align 8
  %cmp = icmp ne %struct.Double* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.Double*, %struct.Double** %first.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.Double, %struct.Double* %2, i32 1
  store %struct.Double* %incdec.ptr, %struct.Double** %first.addr, align 8
  %call = call double @"_ZN3$_0clERK6DoubleS2_"(%struct.anon* @plus, %struct.Double* dereferenceable(8) %result, %struct.Double* dereferenceable(8) %2)
  %coerce.dive1 = getelementptr inbounds %struct.Double, %struct.Double* %ref.tmp, i32 0, i32 0
  store double %call, double* %coerce.dive1, align 8
  %3 = bitcast %struct.Double* %result to i8*
  %4 = bitcast %struct.Double* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = bitcast %struct.Double* %retval to i8*
  %6 = bitcast %struct.Double* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %struct.Double, %struct.Double* %retval, i32 0, i32 0
  %7 = load double, double* %coerce.dive2, align 8
  ret double %7
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_Z10accumulateIPddET0_T_S2_S1_(double* %first, double* %last, double %result) #0 comdat {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %result.addr = alloca double, align 8
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  store double %result, double* %result.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load double*, double** %first.addr, align 8
  %1 = load double*, double** %last.addr, align 8
  %cmp = icmp ne double* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load double*, double** %first.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %2, i32 1
  store double* %incdec.ptr, double** %first.addr, align 8
  %call = call double @"_ZN3$_0clERKdS1_"(%struct.anon* @plus, double* dereferenceable(8) %result.addr, double* dereferenceable(8) %2)
  store double %call, double* %result.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load double, double* %result.addr, align 8
  ret double %3
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
